#!/usr/bin/env bash
# ============================================================
# DrDebug: JournalGPT Collect Safe v0.0.2
# Deutscher Kommentar:
# Sammelt lokale und optionale Remote-Journale in einen gewaehlten Ordner.
# Keine Systemaenderung. Remote nur BatchMode/Key, keine Passwortschleife.
# Quelle: journalgpt_collect.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

drdebug_prompt OUTPUT_DIR "Ausgabeordner" "$HOME/Documents"
drdebug_prompt SSH_KEY_PATH "SSH-Key fuer Remote, leer = Standard-SSH" "$HOME/.ssh/id_ed25519_journalgpt"
drdebug_prompt SSH_TARGETS "Remote-Ziele komma-getrennt, leer = keine" ""

mkdir -p "$OUTPUT_DIR"
chmod 700 "$OUTPUT_DIR" 2>/dev/null || true
LOGFILE="$OUTPUT_DIR/JournalGPT_collector_controller.log"
LOCKFILE="${XDG_RUNTIME_DIR:-/tmp}/journalgpt_collect_safe.lock"

log() { printf '[%s] %s\n' "$(date '+%Y-%m-%dT%H:%M:%S')" "$*" | tee -a "$LOGFILE" >&2; }
sanitize_name() { printf '%s' "$1" | tr -c 'A-Za-z0-9._-' '_'; }

dedupe_journal() {
  local input_file="$1" output_file="$2"
  awk '
    function trim_error(x) { sub(/^[^:]+:[[:space:]]*/, "", x); return x }
    {
      line=$0; first=line; sub(/[[:space:]].*$/, "", first)
      ts=first; sub(/[+-][0-9][0-9][0-9][0-9]$/, "", ts); sub(/[.,][0-9]+$/, "", ts)
      rest=line; sub(/^[^[:space:]]+[[:space:]]+/, "", rest)
      host=rest; sub(/[[:space:]].*$/, "", host)
      procmsg=rest; sub(/^[^[:space:]]+[[:space:]]+/, "", procmsg)
      if (ts !~ /^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]$/ || host == "" || procmsg == "") next
      err=trim_error(procmsg); key=host "\034" err
      if (!(key in seen)) { seen[key]=1; print ts " " host " " procmsg }
    }' "$input_file" > "$output_file"
}

collect_local() {
  local hostname_safe stamp tmp out
  hostname_safe="$(sanitize_name "$(hostname -s 2>/dev/null || hostname || echo local)")"
  stamp="$(date '+%d-%m-%Y-%H-%M-%S')"
  tmp="$(mktemp)"
  out="$OUTPUT_DIR/JournalGPT_${hostname_safe}_${stamp}.txt"
  log "Sammle lokales journalctl von $hostname_safe ..."
  if sudo -n true >/dev/null 2>&1; then
    sudo -n journalctl --no-pager --all --quiet -o short-iso > "$tmp" 2>>"$LOGFILE"
  else
    journalctl --no-pager --all --quiet -o short-iso > "$tmp" 2>>"$LOGFILE"
  fi
  dedupe_journal "$tmp" "$out"
  rm -f "$tmp"
  log "Fertig: $out"
}

ssh_base() {
  local args=(-T -o BatchMode=yes -o IdentitiesOnly=yes -o PreferredAuthentications=publickey -o PasswordAuthentication=no -o KbdInteractiveAuthentication=no -o NumberOfPasswordPrompts=0 -o StrictHostKeyChecking=accept-new -o ConnectTimeout=8 -o ConnectionAttempts=1 -o ServerAliveInterval=5 -o ServerAliveCountMax=1)
  if [ -n "$SSH_KEY_PATH" ] && [ -f "$SSH_KEY_PATH" ]; then
    args=(-i "$SSH_KEY_PATH" "${args[@]}")
  fi
  ssh "${args[@]}" "$@"
}

collect_remote() {
  local ssh_target="$1" remote_host hostname_safe stamp tmp out
  [ -n "$ssh_target" ] || return 0
  log "Pruefe SSH: $ssh_target"
  if ! timeout 25s ssh_base "$ssh_target" true >/dev/null 2>&1; then
    log "FEHLER: SSH BatchMode fehlgeschlagen fuer $ssh_target"
    return 0
  fi
  remote_host="$(timeout 25s ssh_base "$ssh_target" 'hostname -s 2>/dev/null || hostname 2>/dev/null || echo remote' 2>/dev/null | head -n 1)"
  hostname_safe="$(sanitize_name "${remote_host:-remote}")"
  stamp="$(date '+%d-%m-%Y-%H-%M-%S')"
  tmp="$(mktemp)"
  out="$OUTPUT_DIR/JournalGPT_${hostname_safe}_${stamp}.txt"
  log "Sammle remote journalctl von $hostname_safe ..."
  timeout 900s ssh_base "$ssh_target" 'if sudo -n true >/dev/null 2>&1; then sudo -n journalctl --no-pager --all --quiet -o short-iso; else journalctl --no-pager --all --quiet -o short-iso; fi' > "$tmp"
  if [ "$?" -ne 0 ]; then
    log "FEHLER: journalctl-Abruf fehlgeschlagen fuer $ssh_target"
    rm -f "$tmp"
    return 0
  fi
  dedupe_journal "$tmp" "$out"
  rm -f "$tmp"
  log "Fertig: $out"
}

exec 9>"$LOCKFILE"
if ! flock -n 9; then
  log "Abbruch: Collector laeuft bereits."
  exit 0
fi

log "JournalGPT Sammlung gestartet"
collect_local
IFS=',' read -r -a targets <<< "$SSH_TARGETS"
for t in "${targets[@]}"; do collect_remote "$t"; done
log "JournalGPT Sammlung beendet"
