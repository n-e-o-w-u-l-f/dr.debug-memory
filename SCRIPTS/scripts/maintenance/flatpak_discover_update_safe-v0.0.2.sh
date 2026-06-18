#!/usr/bin/env bash
# ============================================================
# DrDebug: Flatpak/Discover Update Safe v0.0.2
# Deutscher Kommentar:
# Aktualisiert Flatpak-Appstream und Pakete nur nach --apply + Bestaetigung.
# Quelle: install_discover_flatpak.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Flatpak/Discover Update Safe" "$@"; then
  if drdebug_have flatpak; then
    flatpak --version || true
    flatpak remote-ls --updates 2>&1 | sed -n '1,120p'
  fi
  exit 0
fi

drdebug_require_cmds flatpak || exit 1

drdebug_header "Flatpak Updates"
flatpak remote-ls --updates 2>&1 | sed -n '1,200p'

if ! drdebug_confirm_exact "UPDATE_FLATPAK_NOW"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

flatpak update --appstream -y || flatpak update --appstream || true
flatpak update -y
update_status=$?
flatpak uninstall --unused -y || true

drdebug_log "Discover-Hinweis: Discover danach schliessen und neu oeffnen, falls alte Updates angezeigt werden."
exit "$update_status"
