#!/usr/bin/env bash
# Dr. Debug Script: bash_prompt_safe_reset
# Version: v0.0.1
# Category: fix
# Component: bash_prompt
# Task: backup bash dotfiles and install minimal guarded prompt snippet
# Safety: manual-review-required
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== Bash prompt safe reset =="
printf '%s
' "This script creates backups and writes a minimal prompt snippet only after confirmation."

home="${HOME:?}"
stamp="$(date +%Y%m%d-%H%M%S)"
backup_dir="$home/.dr-debug-backups/bash-prompt-$stamp"

printf 'Backup directory: %s
' "$backup_dir"
printf '%s
' "Files considered: ~/.bashrc ~/.bash_profile ~/.profile"

printf '%s' "Continue with backup and minimal prompt append? Type YES: "
read -r answer
if [ "$answer" = "YES" ]; then
  mkdir -p "$backup_dir"
  for f in "$home/.bashrc" "$home/.bash_profile" "$home/.profile"; do
    if [ -f "$f" ]; then
      cp -p "$f" "$backup_dir/"
      printf 'BACKUP %s
' "$f"
    fi
  done

  snippet="$home/.dr-debug-prompt-minimal.sh"
  cat > "$snippet" <<'SH'
# Dr. Debug minimal guarded prompt
# Source manually from ~/.bashrc after review:
# [ -r "$HOME/.dr-debug-prompt-minimal.sh" ] && . "$HOME/.dr-debug-prompt-minimal.sh"
case "$-" in
  *i*) PS1='(\u@\h \w) \$ ' ;;
esac
SH
  printf 'OK wrote %s
' "$snippet"
  printf '%s
' "No shell startup file was modified automatically."
else
  printf '%s
' "ABORTED by user. No files changed."
fi

printf '%s
' "== Done. =="
