#!/usr/bin/env bash
# ============================================================
# DrDebug Guarded Import v0.0.2: UnrealIRCd + Anope Arch Install Guarded
# Deutscher Kommentar:
# Dieses Skript enthaelt eine geschuetzte, importierte Fassung von install_unrealircd_legion_v2.sh.
# Standard ist Dry-Run. Ausfuehrung nur mit --apply und exakter Bestaetigung.
# ============================================================
set +e
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
# shellcheck source=../lib/drdebug-safe-lib.sh
. "$SCRIPT_DIR/../lib/drdebug-safe-lib.sh"

case "${1:-}" in
  --apply)
    export DRDEBUG_APPLY=1
    shift
    ;;
  --dry-run|-n|"")
    :
    ;;
esac

if [ "${DRDEBUG_APPLY:-0}" != "1" ]; then
  drdebug_header "UnrealIRCd + Anope Arch Install Guarded"
  drdebug_log "Trockener Lauf: importierte Logik wird nicht gestartet."
  drdebug_log "Quelle: references/original_uploads/install_unrealircd_legion_v2.sh.txt"
  drdebug_log "Anwenden: DRDEBUG_APPLY=1 bash $0 --apply"
  exit 0
fi

drdebug_prompt IRC_NETWORK_NAME "IRC Netzwerkname" "LegionNet"
drdebug_prompt IRC_DOMAIN "IRC Domain" "legion.lan"
drdebug_prompt IRC_ADMIN_NAME "IRC Admin Name" "Andreas"
drdebug_prompt IRC_ADMIN_EMAIL "IRC Admin Email" "admin@legion.lan"
drdebug_prompt IRC_OPER_NAME "IRC Oper Name" "andreas"

cat <<'DRDEBUG_OVERVIEW'
Aenderungen laut Ursprungsskript: UnrealIRCd + Anope auf Arch/Legion, systemd Services, /etc/unrealircd, /opt/anope, lokale Ports 6667/6697/7000. Nicht auf SteamOS ausfuehren, ausser bewusst mit ALLOW_STEAMOS=1.
DRDEBUG_OVERVIEW

if ! drdebug_confirm_exact "RUN_UNREALIRCD_ANOPE_IMPORT"; then
  drdebug_warn "Abbruch: Bestaetigung nicht erhalten."
  exit 0
fi

# ============================================================
# Importierte Ursprungsversion ab hier
# ============================================================
#!/usr/bin/env bash
set -Eeuo pipefail

# ============================================================
# install_unrealircd_legion_v2.sh
# ============================================================
# Ziel:
#   Arch Linux auf Legion
#
# Installiert/Konfiguriert:
#   - UnrealIRCd aus Arch extra
#   - Anope 2.0.20 Stable aus Source
#   - NickServ / ChanServ / OperServ / MemoServ / BotServ / HostServ
#   - IRC Port 6667
#   - TLS Port 6697
#   - lokaler Services-Link-Port 7000 nur auf __YOUR__IPV4__HERE__
#   - systemd Service für Anope
#   - Backups und Credentials-Datei
#
# Wichtig:
#   Dieses Script bricht auf SteamOS standardmäßig ab.
#   Falls du es bewusst trotzdem auf SteamOS testen willst:
#     ALLOW_STEAMOS=1 ./install_unrealircd_legion_v2.sh
#
# Beispiel:
#   IRC_NETWORK_NAME="LegionNet" \
#   IRC_DOMAIN="legion.lan" \
#   IRC_ADMIN_NAME="Andreas" \
#   IRC_ADMIN_EMAIL="admin@legion.lan" \
#   IRC_OPER_NAME="andreas" \
#   ./install_unrealircd_legion_v2.sh
# ============================================================

SCRIPT_NAME="install_unrealircd_legion_v2.sh"

RUN_USER="${SUDO_USER:-$USER}"
RUN_HOME="$(getent passwd "$RUN_USER" | cut -d: -f6 || true)"
[[ -n "$RUN_HOME" && -d "$RUN_HOME" ]] || RUN_HOME="$HOME"

TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
STATE_DIR="${RUN_HOME}/.local/state/unrealircd-legion"
BACKUP_DIR="${STATE_DIR}/backup-${TIMESTAMP}"
BUILD_DIR="/var/tmp/unrealircd-legion-build-${TIMESTAMP}"
LOG="${STATE_DIR}/install-${TIMESTAMP}.log"

NETWORK_NAME="${IRC_NETWORK_NAME:-LegionNet}"
IRC_DOMAIN="${IRC_DOMAIN:-legion.lan}"
SERVER_NAME="${IRC_SERVER_NAME:-irc.${IRC_DOMAIN}}"
SERVICES_NAME="${IRC_SERVICES_NAME:-services.${IRC_DOMAIN}}"
ADMIN_NAME="${IRC_ADMIN_NAME:-Andreas}"
ADMIN_EMAIL="${IRC_ADMIN_EMAIL:-admin@${IRC_DOMAIN}}"
OPER_NAME="${IRC_OPER_NAME:-andreas}"
CLOAK_PREFIX="${IRC_CLOAK_PREFIX:-Legion}"

CLIENT_PORT="${IRC_CLIENT_PORT:-6667}"
TLS_PORT="${IRC_TLS_PORT:-6697}"
SERVER_LINK_PORT="${IRC_SERVER_LINK_PORT:-7000}"

ANOPE_VERSION="${ANOPE_VERSION:-2.0.20}"
ANOPE_SHA256="${ANOPE_SHA256:-646cc6d24dea62fac54285780ebb05ad794a3dbabe6aca1ae6c69a939b0a0734}"
ANOPE_URL="${ANOPE_URL:-https://github.com/anope/anope/archive/refs/tags/${ANOPE_VERSION}.tar.gz}"
ANOPE_PREFIX="${ANOPE_PREFIX:-/opt/anope}"

UNREAL_CONF="/etc/unrealircd/unrealircd.conf"
UNREAL_TLS_DIR="/etc/unrealircd/tls"
UNREAL_CERT="${UNREAL_TLS_DIR}/server.cert.pem"
UNREAL_KEY="${UNREAL_TLS_DIR}/server.key.pem"

CREDENTIALS_FILE="${RUN_HOME}/unrealircd-legion-credentials.txt"

IRCD_USER=""
IRCD_GROUP=""
UNREAL_CLI=""
ANOPE_BIN=""

mkdir -p "$STATE_DIR" "$BACKUP_DIR"

log() {
  printf '%s\n' "$*" | tee -a "$LOG"
}

warn() {
  printf 'WARNUNG: %s\n' "$*" | tee -a "$LOG" >&2
}

fail() {
  printf 'FEHLER: %s\n' "$*" | tee -a "$LOG" >&2
  exit 1
}

have() {
  command -v "$1" >/dev/null 2>&1
}

run_root() {
  if [[ "${EUID}" -eq 0 ]]; then
    "$@"
  else
    sudo "$@"
  fi
}

as_user() {
  local user="$1"
  shift

  if have sudo; then
    sudo -u "$user" -H "$@"
  elif [[ "${EUID}" -eq 0 ]] && have runuser; then
    runuser -u "$user" -- "$@"
  else
    fail "Kann Befehl nicht als User '$user' ausführen. sudo oder root+runuser nötig."
  fi
}

backup_path() {
  local src="$1"

  if [[ -e "$src" || -L "$src" ]]; then
    mkdir -p "${BACKUP_DIR}$(dirname "$src")"
    run_root cp -a "$src" "${BACKUP_DIR}${src}"
    log "Backup: $src -> ${BACKUP_DIR}${src}"
  fi
}

safe_write_root_file() {
  local target="$1"
  local mode="${2:-0644}"
  local tmp
  tmp="$(mktemp)"
  cat > "$tmp"
  run_root install -D -m "$mode" "$tmp" "$target"
  rm -f "$tmp"
}

safe_write_user_file() {
  local target="$1"
  local mode="${2:-0600}"
  local tmp
  tmp="$(mktemp)"
  cat > "$tmp"
  install -D -m "$mode" "$tmp" "$target"
  rm -f "$tmp"
}

rand_alnum() {
  local n="${1:-64}"
  local out=""

  while [[ "${#out}" -lt "$n" ]]; do
    out="${out}$(openssl rand -base64 96 | tr -dc 'A-Za-z0-9' || true)"
  done

  printf '%s' "${out:0:$n}"
}

print_header() {
  log "============================================================"
  log " UnrealIRCd + Anope Installer v2 für Legion / Arch Linux"
  log "============================================================"
  log "Run-User:             $RUN_USER"
  log "State:                $STATE_DIR"
  log "Backup:               $BACKUP_DIR"
  log "Build:                $BUILD_DIR"
  log "Log:                  $LOG"
  log
  log "Netzwerkname:         $NETWORK_NAME"
  log "Domain:               $IRC_DOMAIN"
  log "IRCd-Servername:      $SERVER_NAME"
  log "Services-Servername:  $SERVICES_NAME"
  log "Admin:                $ADMIN_NAME <$ADMIN_EMAIL>"
  log "Oper-Name:            $OPER_NAME"
  log "Client-Port:          $CLIENT_PORT"
  log "TLS-Port:             $TLS_PORT"
  log "Services-Link-Port:   __YOUR__IPV4__HERE__:${SERVER_LINK_PORT}"
  log "Anope-Version:        $ANOPE_VERSION"
  log "Anope-Prefix:         $ANOPE_PREFIX"
  log
}

preflight() {
  log "===== Vorprüfung ====="

  if [[ ! -r /etc/os-release ]]; then
    fail "/etc/os-release nicht lesbar."
  fi

  # shellcheck disable=SC1091
  . /etc/os-release

  log "OS: ${PRETTY_NAME:-unknown}"
  log "Hostname: $(hostname 2>/dev/null || echo unknown)"
  log

  if [[ "${ID:-}" == "steamos" && "${ALLOW_STEAMOS:-0}" != "1" ]]; then
    fail "SteamOS erkannt. Abbruch, weil dieses Script für Legion/Arch gedacht ist. Auf SteamOS nur bewusst mit ALLOW_STEAMOS=1 starten."
  fi

  if [[ "${ID:-}" != "arch" && "${ID_LIKE:-}" != *"arch"* && "${ALLOW_NON_ARCH:-0}" != "1" ]]; then
    fail "Kein Arch Linux erkannt. Für anderes System bewusst starten mit ALLOW_NON_ARCH=1."
  fi

  if ! have pacman; then
    fail "pacman nicht gefunden."
  fi

  if [[ "${EUID}" -ne 0 ]] && ! have sudo; then
    fail "sudo fehlt und Script läuft nicht als root."
  fi

  run_root true

  mkdir -p "$BUILD_DIR"
  run_root chmod 0755 "$BUILD_DIR"

  log "OK: Vorprüfung abgeschlossen."
  log
}

install_packages() {
  log "===== Pakete installieren ====="

  local packages=(
    base-devel
    cmake
    git
    wget
    tar
    gzip
    openssl
    perl
    python
    pkgconf
    gettext
    unrealircd
  )

  run_root pacman -Syu --needed --noconfirm "${packages[@]}"

  log "OK: Pakete installiert."
  log
}

detect_unreal_user_and_cli() {
  log "===== UnrealIRCd User und CLI erkennen ====="

  if id ircd >/dev/null 2>&1; then
    IRCD_USER="ircd"
    IRCD_GROUP="$(id -gn ircd)"
  elif id unrealircd >/dev/null 2>&1; then
    IRCD_USER="unrealircd"
    IRCD_GROUP="$(id -gn unrealircd)"
  else
    warn "Kein ircd/unrealircd User gefunden. Erzeuge fallback User ircd."
    run_root useradd -r -d /var/lib/unrealircd -s /usr/bin/nologin ircd
    IRCD_USER="ircd"
    IRCD_GROUP="ircd"
  fi

  # SteamOS/ältere Pakete melden manchmal:
  # "Please run the SCRIPT instead: /usr/unrealircd"
  # Deshalb zuerst diesen Wrapper testen.
  local candidates=(
    "/usr/unrealircd"
    "/usr/bin/unrealircd"
    "/usr/bin/unrealircdctl"
  )

  local c
  for c in "${candidates[@]}"; do
    if [[ -x "$c" ]]; then
      UNREAL_CLI="$c"
      break
    fi
  done

  [[ -n "$UNREAL_CLI" ]] || fail "Kein UnrealIRCd CLI/Wrapper gefunden."

  log "IRCd-User:  $IRCD_USER"
  log "IRCd-Group: $IRCD_GROUP"
  log "Unreal CLI: $UNREAL_CLI"
  log

  run_root install -d -o "$IRCD_USER" -g "$IRCD_GROUP" -m 0750 /var/lib/unrealircd /var/log/unrealircd /var/cache/unrealircd
}

stop_existing_services() {
  log "===== Vorhandene Services stoppen ====="

  run_root systemctl stop anope.service 2>/dev/null || true
  run_root systemctl stop unrealircd.service 2>/dev/null || true

  log "OK: Services gestoppt oder waren nicht aktiv."
  log
}

generate_unreal_config() {
  log "===== UnrealIRCd konfigurieren ====="

  local link_password oper_password cloak1 cloak2 cloak3

  link_password="$(rand_alnum 48)"
  oper_password="$(rand_alnum 32)"
  cloak1="$(rand_alnum 80)"
  cloak2="$(rand_alnum 80)"
  cloak3="$(rand_alnum 80)"

  run_root install -d -m 0700 "$BUILD_DIR/secrets"

  cat > "${BUILD_DIR}/secrets/generated.env" <<SECRETS
LINK_PASSWORD='$link_password'
OPER_PASSWORD='$oper_password'
CLOAK_KEY_1='$cloak1'
CLOAK_KEY_2='$cloak2'
CLOAK_KEY_3='$cloak3'
SECRETS
  run_root chmod 0600 "${BUILD_DIR}/secrets/generated.env"

  backup_path "$UNREAL_CONF"
  backup_path "$UNREAL_CERT"
  backup_path "$UNREAL_KEY"

  run_root install -d -o "$IRCD_USER" -g "$IRCD_GROUP" -m 0750 "$UNREAL_TLS_DIR"

  log "Erzeuge TLS-Zertifikat: $UNREAL_CERT"
  run_root openssl req \
    -x509 \
    -newkey rsa:4096 \
    -sha256 \
    -days 825 \
    -nodes \
    -subj "/CN=${SERVER_NAME}/O=${NETWORK_NAME}/OU=IRC" \
    -keyout "$UNREAL_KEY" \
    -out "$UNREAL_CERT" >/dev/null 2>&1

  run_root chown "$IRCD_USER:$IRCD_GROUP" "$UNREAL_CERT" "$UNREAL_KEY"
  run_root chmod 0644 "$UNREAL_CERT"
  run_root chmod 0640 "$UNREAL_KEY"

  safe_write_root_file "$UNREAL_CONF" 0640 <<UNREAL_CONF_EOF
/*
 * ============================================================
 * UnrealIRCd-Konfiguration
 * Generiert durch ${SCRIPT_NAME}
 * Zeitpunkt: ${TIMESTAMP}
 * ============================================================
 */

include "modules.default.conf";
include "operclass.default.conf";
include "snomasks.default.conf";
include "aliases/anope.conf";

me {
	name "${SERVER_NAME}";
	info "${NETWORK_NAME} IRC Server on Legion";
	sid 001;
};

admin {
	"${ADMIN_NAME}";
	"${ADMIN_EMAIL}";
};

class clients {
	pingfreq 90;
	maxclients 1000;
	sendq 200k;
	recvq 8000;
};

class opers {
	pingfreq 90;
	maxclients 50;
	sendq 1M;
	recvq 8000;
};

class servers {
	pingfreq 60;
	connfreq 15;
	maxclients 10;
	sendq 20M;
};

allow {
	mask *;
	class clients;
	maxperip 8;
};

listen {
	ip *;
	port ${CLIENT_PORT};
	options {
		clientsonly;
	}
};

listen {
	ip *;
	port ${TLS_PORT};
	options {
		tls;
		clientsonly;
	}
};

listen {
	ip __YOUR__IPV4__HERE__;
	port ${SERVER_LINK_PORT};
	options {
		serversonly;
	}
};

oper ${OPER_NAME} {
	class opers;
	mask *;
	password "${oper_password}";
	operclass netadmin;
	swhois "Network Administrator";
	vhost "oper.${IRC_DOMAIN}";
};

link ${SERVICES_NAME} {
	incoming {
		mask { ip __YOUR__IPV4__HERE__; }
	}
	password "${link_password}";
	class servers;
};

ulines {
	${SERVICES_NAME};
};

set {
	kline-address "${ADMIN_EMAIL}";
	gline-address "${ADMIN_EMAIL}";

	network-name "${NETWORK_NAME}";
	default-server "${SERVER_NAME}";
	services-server "${SERVICES_NAME}";
	stats-server "${SERVER_NAME}";
	help-channel "#help";

	modes-on-connect "+ixw";
	modes-on-oper "+xwgs";
	snomask-on-oper "+bBcdfkqsSoOx";
	modes-on-join "+nt";

	cloak-prefix "${CLOAK_PREFIX}";
	cloak-keys {
		"${cloak1}";
		"${cloak2}";
		"${cloak3}";
	};

	tls {
		certificate "${UNREAL_CERT}";
		key "${UNREAL_KEY}";
		protocols "All,-TLSv1,-TLSv1.1";
	};

	plaintext-policy {
		user allow;
		oper warn;
		server allow;
	};

	outdated-tls-policy {
		user warn;
		oper warn;
		server warn;
	};
};
UNREAL_CONF_EOF

  run_root chown "root:${IRCD_GROUP}" "$UNREAL_CONF"
  run_root chmod 0640 "$UNREAL_CONF"

  safe_write_user_file "$CREDENTIALS_FILE" 0600 <<CREDS_EOF
============================================================
UnrealIRCd + Anope Credentials / Legion
============================================================

Zeitpunkt:
  ${TIMESTAMP}

IRC Netzwerk:
  ${NETWORK_NAME}

Server:
  ${SERVER_NAME}

Services:
  ${SERVICES_NAME}

Lokale Verbindung:
  Plain IRC:
    /server __YOUR__IPV4__HERE__ ${CLIENT_PORT}

  TLS IRC:
    /server -ssl __YOUR__IPV4__HERE__ ${TLS_PORT}

LAN-Verbindung:
  Plain IRC:
    /server <LEGION-IP> ${CLIENT_PORT}

  TLS IRC:
    /server -ssl <LEGION-IP> ${TLS_PORT}

IRC Operator:
  Name:
    ${OPER_NAME}

  Passwort:
    ${oper_password}

  Befehl:
    /oper ${OPER_NAME} ${oper_password}

Anope Link:
  Services-Name:
    ${SERVICES_NAME}

  Link-Passwort:
    ${link_password}

NickServ:
  Nick registrieren:
    /msg NickServ REGISTER <passwort> <email>

  Nick identifizieren:
    /msg NickServ IDENTIFY <passwort>

ChanServ:
  Channel registrieren:
    /join #legion
    /msg ChanServ REGISTER #legion Legion Hauptkanal

Status:
  sudo systemctl status unrealircd anope --no-pager

Logs:
  sudo journalctl -u unrealircd -u anope -f

Configtest:
  sudo irc-configtest

Dateien:
  UnrealIRCd:
    ${UNREAL_CONF}

  Anope:
    ${ANOPE_PREFIX}/conf/services.conf

  Dieses Credential-File:
    ${CREDENTIALS_FILE}

============================================================
CREDS_EOF

  chown "$RUN_USER":"$RUN_USER" "$CREDENTIALS_FILE" 2>/dev/null || true
  chmod 0600 "$CREDENTIALS_FILE"

  log "OK: UnrealIRCd-Konfiguration geschrieben."
  log "Credentials: $CREDENTIALS_FILE"
  log
}

unreal_configtest() {
  log "===== UnrealIRCd Configtest ====="

  local candidates=(
    "/usr/unrealircd"
    "/usr/bin/unrealircd"
    "/usr/bin/unrealircdctl"
  )

  local c out rc
  local binary_warning_seen=0

  for c in "${candidates[@]}"; do
    [[ -x "$c" ]] || continue

    log "Teste: $c configtest"

    set +e
    out="$(as_user "$IRCD_USER" "$c" configtest 2>&1)"
    rc=$?
    set -e

    printf '%s\n' "$out" | tee -a "$LOG"

    if [[ "$rc" -eq 0 ]]; then
      UNREAL_CLI="$c"
      log "OK: Configtest erfolgreich mit: $UNREAL_CLI"
      log
      return 0
    fi

    if printf '%s\n' "$out" | grep -q "End-users should NOT call this binary directly"; then
      binary_warning_seen=1
      warn "$c ist offenbar der Binary, nicht der Wrapper. Nächster Kandidat..."
      continue
    fi
  done

  if [[ "$binary_warning_seen" -eq 1 ]]; then
    fail "UnrealIRCd Configtest fehlgeschlagen: Nur Binary erwischt oder Wrapper fehlt. Prüfe: ls -l /usr/unrealircd /usr/bin/unrealircd /usr/bin/unrealircdctl"
  fi

  fail "UnrealIRCd Configtest fehlgeschlagen. Siehe Log: $LOG"
}

prepare_anope_user() {
  log "===== Anope User vorbereiten ====="

  if ! id anope >/dev/null 2>&1; then
    run_root useradd -r -m -d /var/lib/anope -s /usr/bin/nologin anope
  fi

  run_root install -d -o anope -g anope -m 0750 /var/lib/anope "$ANOPE_PREFIX" /var/log/anope
  run_root chown -R anope:anope "$ANOPE_PREFIX" /var/lib/anope /var/log/anope

  log "OK: User anope vorbereitet."
  log
}

download_and_build_anope() {
  log "===== Anope ${ANOPE_VERSION} herunterladen und bauen ====="

  local tarball="${BUILD_DIR}/anope-${ANOPE_VERSION}.tar.gz"
  local srcdir="${BUILD_DIR}/anope-${ANOPE_VERSION}"

  run_root mkdir -p "$BUILD_DIR"
  run_root chmod 0755 "$BUILD_DIR"

  log "Download: $ANOPE_URL"
  run_root wget -O "$tarball" "$ANOPE_URL"

  log "Prüfe SHA256..."
  printf '%s  %s\n' "$ANOPE_SHA256" "$tarball" | run_root sha256sum -c -

  log "Entpacke Anope..."
  run_root tar -xzf "$tarball" -C "$BUILD_DIR"

  if [[ ! -d "$srcdir" ]]; then
    srcdir="$(find "$BUILD_DIR" -maxdepth 1 -type d -name 'anope-*' | head -n 1 || true)"
  fi

  [[ -n "$srcdir" && -d "$srcdir" ]] || fail "Anope-Source-Verzeichnis nicht gefunden."

  run_root chown -R anope:anope "$srcdir" "$ANOPE_PREFIX"

  log "Erzeuge Anope config.cache für nicht-interaktives Build."
  run_root sudo -u anope -H bash -c "cat > '$srcdir/config.cache'" <<ANOPE_CACHE_EOF
INSTDIR="${ANOPE_PREFIX}"
RUNGROUP="anope"
UMASK=007
DEBUG="no"
USE_PCH="no"
EXTRA_INCLUDE_DIRS=""
EXTRA_LIB_DIRS=""
EXTRA_CONFIG_ARGS=""
ANOPE_CACHE_EOF

  log "Konfiguriere Anope via ./Config -quick..."
  as_user anope bash -c "cd '$srcdir' && ./Config -quick" 2>&1 | tee -a "$LOG"

  log "Kompiliere Anope..."
  as_user anope bash -c "cd '$srcdir/build' && make -j'$(nproc)'" 2>&1 | tee -a "$LOG"

  log "Installiere Anope nach ${ANOPE_PREFIX}..."
  as_user anope bash -c "cd '$srcdir/build' && make install" 2>&1 | tee -a "$LOG"

  run_root chown -R anope:anope "$ANOPE_PREFIX"
  run_root chmod 0750 "$ANOPE_PREFIX"

  if [[ -x "${ANOPE_PREFIX}/bin/services" ]]; then
    ANOPE_BIN="${ANOPE_PREFIX}/bin/services"
  elif [[ -x "${ANOPE_PREFIX}/bin/anope" ]]; then
    ANOPE_BIN="${ANOPE_PREFIX}/bin/anope"
  else
    fail "Anope-Binary nicht gefunden unter ${ANOPE_PREFIX}/bin/services oder ${ANOPE_PREFIX}/bin/anope"
  fi

  log "Anope-Binary: $ANOPE_BIN"
  log "OK: Anope gebaut und installiert."
  log
}

configure_anope() {
  log "===== Anope konfigurieren ====="

  local generated_env="${BUILD_DIR}/secrets/generated.env"
  # shellcheck disable=SC1090
  source "$generated_env"

  local example_conf="${ANOPE_PREFIX}/conf/example.conf"
  local services_conf="${ANOPE_PREFIX}/conf/services.conf"

  [[ -f "$example_conf" ]] || fail "Anope example.conf fehlt: $example_conf"

  backup_path "$services_conf"

  run_root cp -a "$example_conf" "$services_conf"
  run_root chown anope:anope "$services_conf"
  run_root chmod 0640 "$services_conf"

  log "Patch services.conf für UnrealIRCd + Anope-Link."

  run_root python - "$services_conf" <<PY_EOF
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
text = path.read_text()

SERVICES_NAME = "${SERVICES_NAME}"
LINK_PASSWORD = "${LINK_PASSWORD}"
SERVER_LINK_PORT = "${SERVER_LINK_PORT}"
NETWORK_NAME = "${NETWORK_NAME}"
OPER_NAME = "${OPER_NAME}"

def find_named_block(src: str, name: str, startpos: int = 0):
    m = re.search(r'(?m)^\\s*' + re.escape(name) + r'\\s*\\{', src[startpos:])
    if not m:
        return None

    start = startpos + m.start()
    brace = src.find('{', start)
    depth = 0
    i = brace
    in_quote = False
    escape = False

    while i < len(src):
        ch = src[i]

        if in_quote:
            if escape:
                escape = False
            elif ch == '\\\\':
                escape = True
            elif ch == '"':
                in_quote = False
        else:
            if ch == '"':
                in_quote = True
            elif ch == '{':
                depth += 1
            elif ch == '}':
                depth -= 1
                if depth == 0:
                    return start, i + 1, src[start:i + 1]

        i += 1

    return None

def replace_assignment(block: str, key: str, value: str):
    pattern = re.compile(r'(?m)^(\\s*)#?\\s*' + re.escape(key) + r'\\s*=\\s*.*$')
    repl = r'\\1' + key + ' = ' + value

    if pattern.search(block):
        return pattern.sub(repl, block, count=1)

    insert = block.rfind('}')
    if insert == -1:
        return block

    return block[:insert] + f'\\t{key} = {value}\\n' + block[insert:]

def replace_block(src: str, name: str, replacements: dict, startpos: int = 0):
    found = find_named_block(src, name, startpos)
    if not found:
        raise SystemExit(f"Block nicht gefunden: {name}")

    start, end, block = found
    newblock = block

    for key, value in replacements.items():
        newblock = replace_assignment(newblock, key, value)

    return src[:start] + newblock + src[end:], start + len(newblock)

define_re = re.compile(
    r'(define\\s*\\{\\s*name\\s*=\\s*"services\\.host"\\s*value\\s*=\\s*")[^"]+(")',
    re.S,
)
text, n = define_re.subn(r'\\1' + SERVICES_NAME + r'\\2', text, count=1)
if n != 1:
    raise SystemExit('define services.host konnte nicht gepatcht werden.')

text, _ = replace_block(text, "uplink", {
    "host": f'"__YOUR__IPV4__HERE__"',
    "ipv6": "no",
    "ssl": "no",
    "port": str(SERVER_LINK_PORT),
    "password": f'"{LINK_PASSWORD}"',
})

text, _ = replace_block(text, "serverinfo", {
    "name": f'"{SERVICES_NAME}"',
    "description": f'"Services for {NETWORK_NAME}"',
    "id": '"00A"',
})

text, n = re.subn(
    r'(module\\s*\\{\\s*name\\s*=\\s*")[^"]+(")',
    r'\\1unreal4\\2',
    text,
    count=1,
    flags=re.S,
)
if n != 1:
    raise SystemExit('Protocol-module konnte nicht auf unreal4 gesetzt werden.')

try:
    text, _ = replace_block(text, "options", {
        "user": '"anope"',
        "group": '"anope"',
    })
except SystemExit:
    pass

try:
    text, _ = replace_block(text, "oper", {
        "name": f'"{OPER_NAME}"',
        "type": '"Services Root"',
        "require_oper": "yes",
    })
except SystemExit:
    pass

path.write_text(text)
PY_EOF

  run_root chown anope:anope "$services_conf"
  run_root chmod 0640 "$services_conf"

  log "OK: Anope-Konfiguration geschrieben."
  log
}

install_anope_systemd() {
  log "===== systemd-Service für Anope installieren ====="

  [[ -n "$ANOPE_BIN" && -x "$ANOPE_BIN" ]] || fail "ANOPE_BIN ungültig: $ANOPE_BIN"

  safe_write_root_file /etc/systemd/system/anope.service 0644 <<SYSTEMD_EOF
[Unit]
Description=Anope IRC Services
After=network-online.target unrealircd.service
Wants=network-online.target
Requires=unrealircd.service

[Service]
Type=simple
User=anope
Group=anope
WorkingDirectory=${ANOPE_PREFIX}
ExecStart=${ANOPE_BIN} --nofork
ExecReload=/bin/kill -HUP \$MAINPID
Restart=on-failure
RestartSec=5
UMask=0007
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=full
ProtectHome=true
ReadWritePaths=${ANOPE_PREFIX} /var/lib/anope /var/log/anope

[Install]
WantedBy=multi-user.target
SYSTEMD_EOF

  run_root systemctl daemon-reload

  log "OK: anope.service installiert."
  log
}

enable_and_start_services() {
  log "===== Services aktivieren und starten ====="

  run_root systemctl enable unrealircd.service
  run_root systemctl restart unrealircd.service

  sleep 2

  run_root systemctl enable anope.service
  run_root systemctl restart anope.service

  sleep 5

  log "===== Status ====="
  run_root systemctl --no-pager --full status unrealircd.service anope.service 2>&1 | tee -a "$LOG" || true

  log
  log "===== Listening Ports ====="
  if have ss; then
    ss -ltnp 2>/dev/null | grep -E ":(${CLIENT_PORT}|${TLS_PORT}|${SERVER_LINK_PORT})\\b" | tee -a "$LOG" || true
  else
    warn "ss nicht gefunden."
  fi

  log
}

write_helper_scripts() {
  log "===== Helper-Scripts installieren ====="

  run_root install -d -m 0755 /usr/local/sbin

  safe_write_root_file /usr/local/sbin/irc-status 0755 <<'IRC_STATUS_EOF'
#!/usr/bin/env bash
set -Eeuo pipefail
systemctl --no-pager --full status unrealircd.service anope.service || true
echo
ss -ltnp 2>/dev/null | grep -E ':(6667|6697|7000)\b' || true
echo
echo "Logs live:"
echo "  sudo journalctl -u unrealircd -u anope -f"
IRC_STATUS_EOF

  safe_write_root_file /usr/local/sbin/irc-logs 0755 <<'IRC_LOGS_EOF'
#!/usr/bin/env bash
set -Eeuo pipefail
journalctl -u unrealircd -u anope -f
IRC_LOGS_EOF

  safe_write_root_file /usr/local/sbin/irc-configtest 0755 <<IRC_TEST_EOF
#!/usr/bin/env bash
set -Eeuo pipefail

if [[ -x /usr/unrealircd ]]; then
  sudo -u "$IRCD_USER" /usr/unrealircd configtest
elif [[ -x /usr/bin/unrealircd ]]; then
  sudo -u "$IRCD_USER" /usr/bin/unrealircd configtest
elif [[ -x /usr/bin/unrealircdctl ]]; then
  sudo -u "$IRCD_USER" /usr/bin/unrealircdctl configtest
else
  echo "Kein UnrealIRCd CLI gefunden." >&2
  exit 1
fi
IRC_TEST_EOF

  safe_write_root_file /usr/local/sbin/irc-restart 0755 <<'IRC_RESTART_EOF'
#!/usr/bin/env bash
set -Eeuo pipefail
sudo systemctl restart unrealircd.service
sudo systemctl restart anope.service
sudo systemctl --no-pager --full status unrealircd.service anope.service || true
IRC_RESTART_EOF

  log "Installiert:"
  log "  /usr/local/sbin/irc-status"
  log "  /usr/local/sbin/irc-logs"
  log "  /usr/local/sbin/irc-configtest"
  log "  /usr/local/sbin/irc-restart"
  log
}

firewall_hint() {
  log "===== Firewall-Hinweis ====="

  if systemctl is-active --quiet firewalld 2>/dev/null && have firewall-cmd; then
    warn "firewalld ist aktiv. Öffne Ports ${CLIENT_PORT}/tcp und ${TLS_PORT}/tcp bei Bedarf:"
    warn "  sudo firewall-cmd --permanent --add-port=${CLIENT_PORT}/tcp"
    warn "  sudo firewall-cmd --permanent --add-port=${TLS_PORT}/tcp"
    warn "  sudo firewall-cmd --reload"
  elif have ufw && ufw status 2>/dev/null | grep -qi active; then
    warn "ufw ist aktiv. Öffne Ports ${CLIENT_PORT}/tcp und ${TLS_PORT}/tcp bei Bedarf:"
    warn "  sudo ufw allow ${CLIENT_PORT}/tcp"
    warn "  sudo ufw allow ${TLS_PORT}/tcp"
  else
    log "Keine aktive firewalld/ufw-Konfiguration erkannt."
  fi

  log
}

final_summary() {
  log "============================================================"
  log " Installation abgeschlossen"
  log "============================================================"
  log
  log "Credentials:"
  log "  $CREDENTIALS_FILE"
  log
  log "Verbinden lokal:"
  log "  /server __YOUR__IPV4__HERE__ ${CLIENT_PORT}"
  log "  /server -ssl __YOUR__IPV4__HERE__ ${TLS_PORT}"
  log
  log "IRCOp werden:"
  log "  Passwort steht in:"
  log "  $CREDENTIALS_FILE"
  log
  log "NickServ registrieren:"
  log "  /msg NickServ REGISTER <passwort> <email>"
  log
  log "ChanServ registrieren:"
  log "  /join #legion"
  log "  /msg ChanServ REGISTER #legion Legion Hauptkanal"
  log
  log "Status:"
  log "  irc-status"
  log
  log "Logs:"
  log "  irc-logs"
  log
  log "Configtest:"
  log "  irc-configtest"
  log
  log "Neustart:"
  log "  irc-restart"
  log
  log "Backup:"
  log "  $BACKUP_DIR"
  log
  log "Log:"
  log "  $LOG"
  log "============================================================"
}

main() {
  print_header
  preflight
  install_packages
  detect_unreal_user_and_cli
  stop_existing_services
  generate_unreal_config
  unreal_configtest
  prepare_anope_user
  download_and_build_anope
  configure_anope
  install_anope_systemd
  enable_and_start_services
  write_helper_scripts
  firewall_hint
  final_summary
}

main "$@"
