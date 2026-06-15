#!/usr/bin/env bash
# ============================================================
# DrDebug: Steam Deck Desktop Reboot Tools Safe v0.0.2
# Deutscher Kommentar:
# Installiert Desktop-Starter und lokale Wrapper ohne Rootfs-Aenderung.
# Quelle: install_steamdeck_desktop_reboot_tools.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Steam Deck Desktop Reboot Tools Safe" "$@"; then
  drdebug_log "Installiert lokale Starter fuer Reboot/Desktop/Gaming Mode. Keine Rootfs-Aenderung."
  exit 0
fi

drdebug_prompt INSTALL_BIN "Installationsordner fuer Befehle" "$HOME/.local/bin"
drdebug_prompt DESKTOP_DIR "Desktop-Starter-Ordner" "$HOME/Desktop"
STATE_DIR="$HOME/.local/state/steamdeck-desktop-reboot-tools"
mkdir -p "$INSTALL_BIN" "$DESKTOP_DIR" "$STATE_DIR"

if ! drdebug_confirm_exact "INSTALL_STEAMDECK_REBOOT_TOOLS"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

write_cmd() { local p="$1"; shift; [ -e "$p" ] && drdebug_backup_file "$p"; cat > "$p"; chmod 0755 "$p"; drdebug_log "Installiert: $p"; }

write_cmd "$INSTALL_BIN/reboot-to-desktop-mode" <<'SCRIPT'
#!/usr/bin/env bash
set +e
echo "Setze naechsten Start auf Desktop Mode und reboot..."
if command -v steamos-session-select >/dev/null 2>&1; then
  steamos-session-select plasma-persistent
else
  echo "WARNUNG: steamos-session-select nicht gefunden."
fi
systemctl reboot
SCRIPT

write_cmd "$INSTALL_BIN/boot-gaming-mode-default" <<'SCRIPT'
#!/usr/bin/env bash
set +e
echo "Setze Gaming Mode als Standard, falls SteamOS-Befehl vorhanden ist..."
if command -v steamos-session-select >/dev/null 2>&1; then
  steamos-session-select gamescope
else
  echo "WARNUNG: steamos-session-select nicht gefunden."
fi
SCRIPT

write_cmd "$INSTALL_BIN/return-to-gaming-mode" <<'SCRIPT'
#!/usr/bin/env bash
set +e
echo "Rueckkehr in Gaming Mode..."
if command -v qdbus6 >/dev/null 2>&1; then
  qdbus6 org.kde.Shutdown /Shutdown org.kde.Shutdown.logoutAndReboot || true
elif command -v qdbus >/dev/null 2>&1; then
  qdbus org.kde.Shutdown /Shutdown org.kde.Shutdown.logoutAndReboot || true
fi
if command -v steamos-session-select >/dev/null 2>&1; then
  steamos-session-select gamescope
fi
systemctl reboot
SCRIPT

cat > "$DESKTOP_DIR/Reboot to Desktop Mode.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Reboot to Desktop Mode
Exec=$INSTALL_BIN/reboot-to-desktop-mode
Terminal=true
Categories=System;
EOF
chmod 0755 "$DESKTOP_DIR/Reboot to Desktop Mode.desktop"

cat > "$DESKTOP_DIR/Boot Gaming Mode Default.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Boot Gaming Mode Default
Exec=$INSTALL_BIN/boot-gaming-mode-default
Terminal=true
Categories=System;
EOF
chmod 0755 "$DESKTOP_DIR/Boot Gaming Mode Default.desktop"

cat > "$DESKTOP_DIR/Return to Gaming Mode.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Return to Gaming Mode
Exec=$INSTALL_BIN/return-to-gaming-mode
Terminal=true
Categories=System;
EOF
chmod 0755 "$DESKTOP_DIR/Return to Gaming Mode.desktop"

drdebug_log "Fertig."
