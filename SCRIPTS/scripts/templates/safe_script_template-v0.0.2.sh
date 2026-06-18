#!/usr/bin/env bash
# ============================================================
# DrDebug Safe Script Template v0.0.2
# Deutscher Kommentar:
# Vorlage fuer neue sichere Shellskripte.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Mein DrDebug Skript" "$@"; then
  drdebug_log "Beschreibe hier, was das Skript tun wuerde."
  exit 0
fi

drdebug_prompt TARGET_DIR "Zielordner" "$HOME/Projekte/example"

if ! drdebug_confirm_exact "RUN_MY_DRDEBUG_SCRIPT"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

# Deutscher Kommentar: Ab hier Aenderungen ausfuehren.
mkdir -p "$TARGET_DIR"
drdebug_log "OK: $TARGET_DIR"
