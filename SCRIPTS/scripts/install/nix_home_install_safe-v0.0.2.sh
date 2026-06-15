#!/usr/bin/env bash
# ============================================================
# DrDebug: Nix Home Install Safe v0.0.2
# Deutscher Kommentar:
# Startet den offiziellen Nix Single-User Installer nur nach Bestaetigung.
# Zielpfad wird abgefragt, nicht hart auf /home/deck gesetzt.
# Quelle: install_nix_home.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Nix Home Install Safe" "$@"; then
  drdebug_log "Laedt den offiziellen Nix Installer per curl/wget und installiert single-user."
  exit 0
fi

if ! drdebug_have curl && ! drdebug_have wget; then
  drdebug_error "curl oder wget wird benoetigt."
  exit 1
fi

drdebug_prompt NIX_DIR "Nix Zielordner" "$HOME/.nix"
drdebug_prompt NIX_INSTALL_URL "Nix Installer URL" "https://nixos.org/nix/install"

mkdir -p "$NIX_DIR"

drdebug_header "Geplante Nix Installation"
echo "Ziel: $NIX_DIR"
echo "URL:  $NIX_INSTALL_URL"
echo "Hinweis: Der offizielle Installer kann Profil-Dateien anpassen."

if ! drdebug_confirm_exact "INSTALL_NIX_SINGLE_USER"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

if drdebug_have curl; then
  curl -L "$NIX_INSTALL_URL" | sh -s -- --no-daemon --install-dir "$NIX_DIR"
else
  tmp="$(mktemp)"
  wget -O "$tmp" "$NIX_INSTALL_URL" && sh "$tmp" --no-daemon --install-dir "$NIX_DIR"
  rm -f "$tmp"
fi
status=$?

drdebug_log "PATH-Hinweis: export PATH=\"$NIX_DIR/bin:\$PATH\""
exit "$status"
