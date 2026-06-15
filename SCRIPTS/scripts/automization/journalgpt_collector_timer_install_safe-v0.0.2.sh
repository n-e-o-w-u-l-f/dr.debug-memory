#!/usr/bin/env bash
# ============================================================
# DrDebug: JournalGPT Collector Timer Install Safe v0.0.2
# Deutscher Kommentar:
# Installiert den sicheren Collector als systemd-User-Timer.
# Quelle: install_journalgpt_collector.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "JournalGPT Collector Timer Install Safe" "$@"; then
  drdebug_log "Installiert: ~/.local/bin/journalgpt_collect_safe und systemd --user Timer."
  exit 0
fi

drdebug_require_cmds systemctl || exit 1

drdebug_prompt OUTPUT_DIR "Journal-Ausgabeordner" "$HOME/Documents"
drdebug_prompt TIMER_INTERVAL "Timer-Intervall, z.B. 24h oder 6h" "24h"
drdebug_prompt SSH_TARGETS "Remote-Ziele comma-getrennt, leer = keine" "__YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__,__YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__"
drdebug_prompt SSH_KEY_PATH "SSH-Key fuer Remote" "$HOME/.ssh/id_ed25519_journalgpt"

BIN_DIR="$HOME/.local/bin"
SYSTEMD_USER_DIR="$HOME/.config/systemd/user"
RUNNER="$BIN_DIR/journalgpt_collect_safe"
SERVICE_FILE="$SYSTEMD_USER_DIR/journalgpt-collect-safe.service"
TIMER_FILE="$SYSTEMD_USER_DIR/journalgpt-collect-safe.timer"
SOURCE_RUNNER="$SCRIPT_DIR/../collect/journalgpt_collect_safe-v0.0.2.sh"

mkdir -p "$BIN_DIR" "$SYSTEMD_USER_DIR" "$OUTPUT_DIR"

if ! drdebug_confirm_exact "INSTALL_JOURNALGPT_TIMER"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

if [ -e "$RUNNER" ]; then
  drdebug_backup_file "$RUNNER"
fi
cp "$SOURCE_RUNNER" "$RUNNER"
chmod 0755 "$RUNNER"

cat > "$SERVICE_FILE" <<EOF
[Unit]
Description=DrDebug JournalGPT safe journalctl collector

[Service]
Type=oneshot
Environment=OUTPUT_DIR=$OUTPUT_DIR
Environment=SSH_TARGETS=$SSH_TARGETS
Environment=SSH_KEY_PATH=$SSH_KEY_PATH
ExecStart=$RUNNER
EOF

cat > "$TIMER_FILE" <<EOF
[Unit]
Description=Run DrDebug JournalGPT collector every $TIMER_INTERVAL

[Timer]
OnBootSec=5min
OnUnitActiveSec=$TIMER_INTERVAL
Persistent=true
AccuracySec=1min
Unit=journalgpt-collect-safe.service

[Install]
WantedBy=timers.target
EOF

systemctl --user daemon-reload
systemctl --user enable --now journalgpt-collect-safe.timer
systemctl --user list-timers journalgpt-collect-safe.timer --no-pager || true

drdebug_log "Installiert: $RUNNER"
drdebug_log "Timer: journalgpt-collect-safe.timer"
