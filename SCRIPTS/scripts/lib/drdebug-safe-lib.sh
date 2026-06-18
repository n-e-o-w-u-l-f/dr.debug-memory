#!/usr/bin/env bash
# ============================================================
# DrDebug Safe Shell Library v0.0.2
# Deutscher Kommentar:
# Gemeinsame Hilfsfunktionen fuer sichere DrDebug-Skripte.
# Keine Funktion fuehrt ohne expliziten Aufruf gefaehrliche Aktionen aus.
# ============================================================

set +e

DRDEBUG_LIB_VERSION="0.0.2"

_drdebug_ts() { date '+%Y-%m-%dT%H:%M:%S%z' 2>/dev/null || date; }
drdebug_log() { printf '[%s] %s\n' "$(_drdebug_ts)" "$*"; }
drdebug_warn() { printf '[%s] WARNUNG: %s\n' "$(_drdebug_ts)" "$*" >&2; }
drdebug_error() { printf '[%s] FEHLER: %s\n' "$(_drdebug_ts)" "$*" >&2; }
drdebug_have() { command -v "$1" >/dev/null 2>&1; }

drdebug_header() {
  printf '\n============================================================\n'
  printf ' %s\n' "$*"
  printf '============================================================\n'
}

drdebug_prompt() {
  # Deutscher Kommentar: Fragt einen Wert interaktiv ab und nutzt sonst einen Default.
  local var_name="$1"
  local label="$2"
  local default_value="${3:-}"
  local current_value="${!var_name:-}"
  local answer=""

  if [ -n "$current_value" ]; then
    printf '%s=%s\n' "$var_name" "$current_value"
    return 0
  fi

  if [ -t 0 ]; then
    if [ -n "$default_value" ]; then
      printf '%s [%s]: ' "$label" "$default_value"
    else
      printf '%s: ' "$label"
    fi
    IFS= read -r answer
  fi

  if [ -z "$answer" ]; then
    answer="$default_value"
  fi

  printf -v "$var_name" '%s' "$answer"
  export "$var_name"
}

drdebug_confirm_exact() {
  # Deutscher Kommentar: Erfordert eine exakte Eingabe, damit keine Aktion versehentlich startet.
  local token="$1"
  local answer=""
  printf '\nZum Fortfahren exakt eingeben: %s\n> ' "$token"
  IFS= read -r answer
  [ "$answer" = "$token" ]
}

drdebug_apply_gate() {
  # Deutscher Kommentar: Standard ist trockener Lauf. Aenderungen nur mit --apply oder DRDEBUG_APPLY=1.
  local title="$1"
  shift || true

  case "${1:-}" in
    --apply)
      DRDEBUG_APPLY=1
      shift
      ;;
    --dry-run|-n|'')
      :
      ;;
  esac

  export DRDEBUG_REMAINING_ARGS="$*"

  if [ "${DRDEBUG_APPLY:-0}" != "1" ]; then
    drdebug_header "$title"
    drdebug_log "Trockener Lauf: Es wird nichts veraendert."
    drdebug_log "Zum Anwenden: DRDEBUG_APPLY=1 bash $0 --apply"
    return 1
  fi

  return 0
}

drdebug_backup_file() {
  # Deutscher Kommentar: Sichert eine vorhandene Datei in einen State-Backupordner.
  local file="$1"
  local stamp backup_dir
  stamp="$(date +%Y%m%d-%H%M%S 2>/dev/null || echo now)"
  backup_dir="${DRDEBUG_BACKUP_DIR:-$HOME/.local/state/drdebug/backups/$stamp}"
  if [ -e "$file" ] || [ -L "$file" ]; then
    mkdir -p "$backup_dir/$(dirname "$file")" 2>/dev/null || return 1
    cp -a "$file" "$backup_dir/$file" 2>/dev/null || cp -a "$file" "$backup_dir/" 2>/dev/null || return 1
    drdebug_log "Backup: $file -> $backup_dir"
  fi
}

drdebug_run() {
  # Deutscher Kommentar: Fuehrt Kommandos aus oder zeigt sie im Dry-Run nur an.
  if [ "${DRDEBUG_DRY_RUN:-0}" = "1" ]; then
    printf '[DRY-RUN]'
    printf ' %q' "$@"
    printf '\n'
    return 0
  fi
  "$@"
}

drdebug_require_cmds() {
  local missing=0 c
  for c in "$@"; do
    if ! drdebug_have "$c"; then
      drdebug_error "Kommando fehlt: $c"
      missing=1
    fi
  done
  [ "$missing" -eq 0 ]
}

drdebug_resolve_home_for_user() {
  local user_name="${1:-$(id -un)}"
  local home_dir=""
  if command -v getent >/dev/null 2>&1; then
    home_dir="$(getent passwd "$user_name" 2>/dev/null | cut -d: -f6)"
  fi
  if [ -z "$home_dir" ] || [ ! -d "$home_dir" ]; then
    home_dir="$HOME"
  fi
  printf '%s' "$home_dir"
}
