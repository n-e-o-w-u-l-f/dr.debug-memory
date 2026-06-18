#!/usr/bin/env bash
# ============================================================
# DrDebug: JournalGPT SSH Keys Fix Safe v0.0.2
# Deutscher Kommentar:
# Erstellt optional einen SSH-Key und richtet Zielhosts ein.
# Targets werden abgefragt, nicht hart verdrahtet.
# Quelle: fix_journalgpt_ssh_keys.sh, safe neu strukturiert.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

if ! drdebug_apply_gate "JournalGPT SSH Keys Fix Safe" "$@"; then
  drdebug_log "Dieses Skript erstellt optional ~/.ssh/id_ed25519_journalgpt und kann Public Keys kopieren."
  exit 0
fi

drdebug_require_cmds ssh ssh-keygen || exit 1

drdebug_prompt SSH_KEY_PATH "SSH-Key-Pfad" "$HOME/.ssh/id_ed25519_journalgpt"
drdebug_prompt SSH_TARGETS "Ziele komma-getrennt, z.B. __YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__,__YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__" "__YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__,__YOUR__USERNAME__HERE__@__YOUR__IPV4__HERE__"
drdebug_prompt SSH_ALIASES "Aliases komma-getrennt passend zu Zielen" "journalgpt-archlinux,journalgpt-debian"

PUB="${SSH_KEY_PATH}.pub"
mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"

if [ ! -f "$SSH_KEY_PATH" ]; then
  drdebug_header "SSH-Key fehlt"
  echo "Key: $SSH_KEY_PATH"
  if drdebug_confirm_exact "CREATE_JOURNALGPT_KEY"; then
    ssh-keygen -t ed25519 -f "$SSH_KEY_PATH" -N "" -C "JournalGPT $(hostname)-$(date '+%Y-%m-%d')"
  else
    drdebug_warn "Key-Erstellung uebersprungen."
  fi
fi

[ -f "$SSH_KEY_PATH" ] || { drdebug_error "Private Key fehlt: $SSH_KEY_PATH"; exit 1; }
chmod 600 "$SSH_KEY_PATH"
[ -f "$PUB" ] && chmod 644 "$PUB"

CONFIG="$HOME/.ssh/config"
touch "$CONFIG"
chmod 600 "$CONFIG"

IFS=',' read -r -a targets <<< "$SSH_TARGETS"
IFS=',' read -r -a aliases <<< "$SSH_ALIASES"

idx=0
for target in "${targets[@]}"; do
  alias_name="${aliases[$idx]:-journalgpt-$idx}"
  host_name="${target#*@}"
  user_name="${target%@*}"
  [ "$host_name" = "$target" ] && user_name="$(id -un)"

  if ! grep -qE "^Host[[:space:]]+$alias_name$" "$CONFIG" 2>/dev/null; then
    drdebug_backup_file "$CONFIG"
    cat >> "$CONFIG" <<CONFIGBLOCK

Host $alias_name
    HostName $host_name
    User $user_name
    IdentityFile $SSH_KEY_PATH
    IdentitiesOnly yes
    ServerAliveInterval 10
    ServerAliveCountMax 2
CONFIGBLOCK
    drdebug_log "SSH Config ergaenzt: $alias_name -> $target"
  fi

  drdebug_header "SSH Test: $target"
  ssh -i "$SSH_KEY_PATH" -o BatchMode=yes -o ConnectTimeout=8 "$target" true >/dev/null 2>&1
  if [ "$?" -eq 0 ]; then
    drdebug_log "OK: Passwortloser Login funktioniert bereits."
  else
    drdebug_warn "Passwortloser Login funktioniert noch nicht fuer $target."
    if [ -f "$PUB" ] && drdebug_confirm_exact "COPY_KEY_TO_${idx}"; then
      if drdebug_have ssh-copy-id; then
        ssh-copy-id -i "$PUB" "$target"
      else
        cat "$PUB" | ssh "$target" 'mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh" && touch "$HOME/.ssh/authorized_keys" && chmod 600 "$HOME/.ssh/authorized_keys" && cat >> "$HOME/.ssh/authorized_keys" && sort -u "$HOME/.ssh/authorized_keys" -o "$HOME/.ssh/authorized_keys"'
      fi
    fi
  fi
  idx=$((idx + 1))
done

drdebug_log "Fertig."
