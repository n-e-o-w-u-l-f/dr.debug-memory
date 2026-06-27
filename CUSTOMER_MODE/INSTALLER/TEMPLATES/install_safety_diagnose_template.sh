#!/usr/bin/env sh
# name: install_safety_diagnose_template.sh
# version: 0.1.0
# status: PROPOSAL_ONLY
# purpose: read-only installer diagnosis template for Dr.Debug-generated installers
# platform: Linux/macOS POSIX shell baseline; app-specific installers must extend per OS
# risk: LOW read-only when used as-is
# root required: false
# network required: false
# destructive: false
# backup: not required for read-only mode
# rollback: no mutation performed
# validation: run `sh -n install_safety_diagnose_template.sh`

set -eu

APP="${APP:-}"
PACKAGE_NAME="${PACKAGE_NAME:-$APP}"
APP_LAUNCHER="${APP_LAUNCHER:-$APP}"
APP_USER="${APP_USER:-$APP}"

if [ -z "$APP" ]; then
  printf 'ERROR: APP is required. Example: APP=myapp sh %s\n' "$0" >&2
  exit 2
fi

printf '== Dr.Debug installer diagnosis: read-only ==\n'
printf 'App: %s\n' "$APP"
printf 'Package: %s\n' "$PACKAGE_NAME"
printf 'Launcher: %s\n' "$APP_LAUNCHER"
printf 'Candidate service user: %s\n' "$APP_USER"
printf 'User: %s\n' "$(id -un 2>/dev/null || printf unknown)"
printf 'UID: %s\n' "$(id -u 2>/dev/null || printf unknown)"
printf 'Groups: %s\n' "$(id -Gn 2>/dev/null || printf unknown)"
printf 'PWD: %s\n' "$(pwd -P 2>/dev/null || pwd)"
printf 'Kernel: %s\n' "$(uname -a 2>/dev/null || printf unknown)"

if [ -r /etc/os-release ]; then
  # shellcheck disable=SC1091
  . /etc/os-release
  printf 'OS: %s\n' "${PRETTY_NAME:-${NAME:-unknown}}"
  printf 'OS ID: %s\n' "${ID:-unknown}"
  printf 'OS VERSION_ID: %s\n' "${VERSION_ID:-unknown}"
  printf 'OS ID_LIKE: %s\n' "${ID_LIKE:-unknown}"
fi

printf 'Init/PID1: %s\n' "$(ps -p 1 -o comm= 2>/dev/null || printf unknown)"
printf 'Hostname: %s\n' "$(hostname 2>/dev/null || printf unknown)"
printf 'IP candidates: %s\n' "$(hostname -I 2>/dev/null || ip -brief addr 2>/dev/null || ifconfig 2>/dev/null | awk '/inet / {print $2}' | tr '\n' ' ' || printf unknown)"

printf '\n== Existing command candidates ==\n'
command -v "$APP_LAUNCHER" 2>/dev/null || true
command -v "$APP" 2>/dev/null || true

printf '\n== Existing user/group candidates ==\n'
if command -v getent >/dev/null 2>&1; then
  getent passwd "$APP_USER" || true
  getent group "$APP_USER" || true
fi

printf '\n== Existing service candidates ==\n'
if command -v systemctl >/dev/null 2>&1; then
  systemctl list-unit-files --type=service --no-pager 2>/dev/null | grep -i -- "$APP" || true
  systemctl list-units --type=service --all --no-pager 2>/dev/null | grep -i -- "$APP" || true
fi

printf '\n== Existing package candidates ==\n'
if command -v dpkg >/dev/null 2>&1; then dpkg -l | grep -i -- "$PACKAGE_NAME" || true; fi
if command -v rpm >/dev/null 2>&1; then rpm -qa | grep -i -- "$PACKAGE_NAME" || true; fi
if command -v pacman >/dev/null 2>&1; then pacman -Qs "$PACKAGE_NAME" || true; fi
if command -v flatpak >/dev/null 2>&1; then flatpak list | grep -i -- "$APP" || true; fi
if command -v snap >/dev/null 2>&1; then snap list | grep -i -- "$APP" || true; fi

printf '\n== Existing path candidates, maxdepth 4 ==\n'
for base in "$HOME" /opt /usr/local /etc /var/lib /var/log /srv; do
  [ -d "$base" ] || continue
  find "$base" -maxdepth 4 \( -iname "*$APP*" -o -iname "*$APP_LAUNCHER*" -o -iname "*$PACKAGE_NAME*" \) -print 2>/dev/null || true
done

printf '\nDiagnosis complete. No changes were made.\n'
printf 'Next step: review findings, classify risk, then generate dry-run/apply/rollback separately.\n'
