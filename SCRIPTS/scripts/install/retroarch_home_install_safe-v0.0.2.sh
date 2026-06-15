#!/usr/bin/env bash
# ============================================================
# DrDebug: RetroArch Home Install Safe v0.0.2
# Deutscher Kommentar:
# Installiert RetroArch AppImage in einen abgefragten HOME-Ordner.
# Quelle: install_retroarch_home.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "RetroArch Home Install Safe" "$@"; then
  drdebug_log "Laedt RetroArch.AppImage in einen HOME-Ordner und macht es ausfuehrbar."
  exit 0
fi

if ! drdebug_have curl && ! drdebug_have wget; then
  drdebug_error "curl oder wget wird benoetigt."
  exit 1
fi

drdebug_prompt RETROARCH_DIR "RetroArch Zielordner" "$HOME/.retroarch"
drdebug_prompt RETROARCH_URL "RetroArch AppImage URL" "https://buildbot.libretro.com/stable/RetroArch/latest/linux/RetroArch.AppImage"

mkdir -p "$RETROARCH_DIR"
TARGET="$RETROARCH_DIR/RetroArch.AppImage"
PART="$TARGET.part"

drdebug_header "Geplante Installation"
echo "Ziel: $TARGET"
echo "URL:  $RETROARCH_URL"

if ! drdebug_confirm_exact "INSTALL_RETROARCH_APPIMAGE"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

if drdebug_have curl; then
  curl -fL --retry 3 --connect-timeout 20 -o "$PART" "$RETROARCH_URL"
else
  wget -O "$PART" "$RETROARCH_URL"
fi
status=$?
[ "$status" -eq 0 ] || { drdebug_error "Download fehlgeschlagen."; rm -f "$PART"; exit "$status"; }
mv -f "$PART" "$TARGET"
chmod 0755 "$TARGET"

drdebug_log "OK: $TARGET"
drdebug_log "Start: $TARGET"
