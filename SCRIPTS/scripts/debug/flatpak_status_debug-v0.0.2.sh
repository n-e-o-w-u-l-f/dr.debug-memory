#!/usr/bin/env bash
# ============================================================
# DrDebug: Flatpak Status Debug v0.0.2
# Deutscher Kommentar:
# Reine Diagnose fuer Flatpak/Flathub/Discover. Veraendert nichts.
# Quelle: 01_flatpak_setup.sh + install_discover_flatpak.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

drdebug_header "Flatpak Status Debug"

drdebug_log "User: $(id -un)"
drdebug_log "HOME: $HOME"

if ! drdebug_have flatpak; then
  drdebug_warn "flatpak ist nicht installiert oder nicht im PATH."
  exit 0
fi

drdebug_header "Flatpak Version"
flatpak --version 2>&1

drdebug_header "Remotes"
flatpak remotes --columns=name,options,url 2>&1

drdebug_header "Installierte Flatpaks"
flatpak list --app --columns=application,branch,origin,installation 2>&1 | sed -n '1,120p'

drdebug_header "Verfuegbare Updates"
flatpak remote-ls --updates 2>&1 | sed -n '1,160p'

drdebug_log "Fertig: Diagnose ohne Aenderungen."
