#!/usr/bin/env bash
# ============================================================
# DrDebug: Arch Home proot Install Safe v0.0.2
# Deutscher Kommentar:
# Sichere Variante der alten proot-Idee. Keine festen /home/deck-Pfade.
# Laedt Bootstrap nur nach --apply und bestaetigtem Zielordner.
# Quelle: install_arch_proot.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "Arch Home proot Install Safe" "$@"; then
  drdebug_log "Bereitet Arch Bootstrap unter HOME vor. Empfehlung: chroot-Skript bevorzugen, wenn sudo moeglich ist."
  exit 0
fi

drdebug_require_cmds tar || exit 1
if ! drdebug_have curl && ! drdebug_have wget; then
  drdebug_error "curl oder wget wird benoetigt."
  exit 1
fi

drdebug_prompt BASE_DIR "Basisordner" "$HOME/.local/arch-proot"
drdebug_prompt ARCH_BOOTSTRAP_URL "Arch bootstrap tarball URL" "https://geo.mirror.pkgbuild.com/iso/latest/archlinux-bootstrap-x86_64.tar.zst"

ROOT="$BASE_DIR/root"
DOWNLOADS="$BASE_DIR/downloads"
ARCHIVE="$DOWNLOADS/archlinux-bootstrap-x86_64.tar.zst"

cat <<OVERVIEW
Ziel:
  BASE: $BASE_DIR
  ROOT: $ROOT
  Download: $ARCHIVE

Aenderungen nur unter BASE_DIR.
OVERVIEW

if ! drdebug_confirm_exact "INSTALL_ARCH_PROOT_HOME"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

mkdir -p "$ROOT" "$DOWNLOADS" "$BASE_DIR/bin" "$BASE_DIR/tmp"
if [ ! -s "$ARCHIVE" ]; then
  if drdebug_have curl; then
    curl -fL --retry 3 -o "$ARCHIVE.part" "$ARCH_BOOTSTRAP_URL"
  else
    wget -O "$ARCHIVE.part" "$ARCH_BOOTSTRAP_URL"
  fi
  [ "$?" -eq 0 ] || { rm -f "$ARCHIVE.part"; exit 1; }
  mv -f "$ARCHIVE.part" "$ARCHIVE"
fi

if ! drdebug_have bsdtar && ! tar --help 2>/dev/null | grep -q zstd; then
  drdebug_warn "Dein tar kann zstd evtl. nicht entpacken. Installiere bsdtar/libarchive oder zstd-support."
fi

tar --numeric-owner --xattrs --acls -xpf "$ARCHIVE" -C "$ROOT" --strip-components=1
status=$?
[ "$status" -eq 0 ] || exit "$status"

cat > "$BASE_DIR/arch-proot-enter" <<EOF
#!/usr/bin/env bash
exec proot -R "$ROOT" -b /dev -b /proc -b /sys -b "$HOME:/host-home" /usr/bin/env -i HOME=/root TERM="\${TERM:-xterm-256color}" PATH=/usr/bin:/bin /bin/bash -l
EOF
chmod 0755 "$BASE_DIR/arch-proot-enter"

drdebug_log "Fertig. Start nach Installation von proot: $BASE_DIR/arch-proot-enter"
