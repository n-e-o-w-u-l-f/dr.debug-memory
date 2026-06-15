#!/usr/bin/env bash
# ============================================================
# DrDebug: Flatpak/Flathub Setup Safe v0.0.2
# Deutscher Kommentar:
# Fuegt Flathub nur nach --apply und exakter Bestaetigung hinzu.
# Quelle: 01_flatpak_setup.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Flatpak/Flathub Setup Safe" "$@"; then
  exit 0
fi

drdebug_require_cmds flatpak || exit 1

drdebug_prompt FLATPAK_REMOTE_NAME "Flatpak Remote-Name" "flathub"
drdebug_prompt FLATPAK_REMOTE_URL "Flatpak Remote-URL" "https://flathub.org/repo/flathub.flatpakrepo"

drdebug_header "Geplante Aenderung"
echo "Remote: $FLATPAK_REMOTE_NAME"
echo "URL:    $FLATPAK_REMOTE_URL"

if ! drdebug_confirm_exact "ADD_FLATHUB_REMOTE"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

flatpak remote-add --if-not-exists "$FLATPAK_REMOTE_NAME" "$FLATPAK_REMOTE_URL"
status=$?
if [ "$status" -eq 0 ]; then
  drdebug_log "OK: Flatpak Remote ist eingerichtet."
else
  drdebug_error "flatpak remote-add meldete Status $status."
fi
exit "$status"
