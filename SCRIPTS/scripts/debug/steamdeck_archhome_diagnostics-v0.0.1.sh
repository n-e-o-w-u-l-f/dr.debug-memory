#!/usr/bin/env bash
# Dr. Debug Script: steamdeck_archhome_diagnostics
# Version: v0.0.1
# Category: debug
# Component: steamdeck_archhome
# Task: diagnose Steam Deck ArchHome/chroot state
# Safety: diagnostic-only
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== Steam Deck ArchHome diagnostics =="

printf '%s
' "-- system --"
uname -a
if [ -r /etc/os-release ]; then
  cat /etc/os-release
fi

printf '%s
' "-- command resolution --"
for c in pacman steam-pacman makepkg yay paru arch-chroot bwrap distrobox; do
  if command -v "$c" >/dev/null 2>&1; then
    printf 'OK   %-14s %s
' "$c" "$(command -v "$c")"
  else
    printf 'MISS %-14s
' "$c"
  fi
done

printf '%s
' "-- expected paths --"
for p in \
  "$HOME/.local/chroot" \
  "$HOME/.local/bin/pacman" \
  "$HOME/.local/bin/steam-pacman" \
  "$HOME/.local/etc" \
  "$HOME/.local/var" \
  "$HOME/.var/ollama-model-backups"
do
  if [ -e "$p" ]; then
    printf 'OK   %s
' "$p"
  else
    printf 'MISS %s
' "$p"
  fi
done

printf '%s
' "-- pacman versions --"
pacman --version 2>/dev/null | head -n 3 || printf '%s
' "WARN: pacman unavailable"
if command -v steam-pacman >/dev/null 2>&1; then
  steam-pacman --version 2>/dev/null | head -n 3 || true
fi

printf '%s
' "== Done. No files were changed. =="
