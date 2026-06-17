#!/usr/bin/env bash
# Dr.Debug safe triage helper: systemd status=203/EXEC
#
# Purpose:
#   Read-only diagnosis for systemd service units that fail with
#   "code=exited, status=203/EXEC" or "Failed at step EXEC spawning".
#
# Target:
#   Linux with systemd. No destructive actions. No root requirement.
#
# Usage:
#   ./systemd_203_exec_triage.sh <unit>
#
# Exit codes:
#   0 = triage completed
#   2 = usage error or unsupported environment
#
# Safety:
#   - Does not edit unit files.
#   - Does not restart services.
#   - Redacts common token/password-like values from displayed output.

set -u

UNIT="${1:-}"

redact() {
  sed -E \
    -e 's/([Pp]ass(word)?|TOKEN|Token|token|SECRET|Secret|secret|API[_-]?KEY|Api[_-]?Key)([=: ][^[:space:]]+)/\1=/g' \
    -e 's/[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}//g' \
    -e 's#(https?://)[^/@[:space:]]+:[^/@[:space:]]+@#\1@#g'
}

say() { printf '\n== %s ==\n' "$1"; }
need_cmd() { command -v "$1" >/dev/null 2>&1; }

if [ -z "$UNIT" ] || [ "$UNIT" = "-h" ] || [ "$UNIT" = "--help" ]; then
  cat <<'HELP'
Usage: systemd_203_exec_triage.sh <unit>

This script is read-only. It collects systemd unit state, journal snippets
and path checks for ExecStart-related 203/EXEC failures.
HELP
  exit 2
fi

if ! need_cmd systemctl; then
  echo "ERROR: systemctl not found. This host does not look like a systemd target." >&2
  exit 2
fi

say "context"
{
  echo "date_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ 2>/dev/null || true)"
  echo "kernel=$(uname -a 2>/dev/null || true)"
  echo "user=$(id 2>/dev/null || true)"
  if [ -r /etc/os-release ]; then
    grep -E '^(NAME|VERSION|ID|VERSION_ID)=' /etc/os-release || true
  fi
  ps -p 1 -o comm= 2>/dev/null | sed 's/^/pid1=/'
  systemctl --version 2>/dev/null | head -n 1 || true
} | redact

say "unit status"
systemctl status "$UNIT" --no-pager 2>&1 | redact || true

say "unit properties"
systemctl show "$UNIT" \
  -p Id -p Names -p LoadState -p ActiveState -p SubState -p Result \
  -p FragmentPath -p DropInPaths -p User -p Group -p WorkingDirectory \
  -p ExecStart -p ExecStartPre -p ExecStartPost -p ExecCondition \
  --no-pager 2>&1 | redact || true

say "unit file"
systemctl cat "$UNIT" --no-pager 2>&1 | redact || true

say "recent journal"
if need_cmd journalctl; then
  journalctl -u "$UNIT" -n 120 --no-pager 2>&1 | redact || true
else
  echo "journalctl not found"
fi

say "exec path heuristic"
EXEC_LINE="$(systemctl show "$UNIT" -p ExecStart --value 2>/dev/null | head -n 1 || true)"
if [ -z "$EXEC_LINE" ]; then
  echo "No ExecStart value found via systemctl show."
else
  printf 'raw_execstart=%s\n' "$EXEC_LINE" | redact
  # Best-effort extraction: systemd escapes are complex; this is only a heuristic.
  CANDIDATE="$(printf '%s\n' "$EXEC_LINE" | sed -E 's/.*path=([^ ;]+).*/\1/' | head -n 1)"
  if [ -n "$CANDIDATE" ] && [ "$CANDIDATE" != "$EXEC_LINE" ]; then
    printf 'candidate_path=%s\n' "$CANDIDATE" | redact
    if [ -e "$CANDIDATE" ]; then
      ls -ld "$CANDIDATE" 2>&1 | redact || true
      if [ -f "$CANDIDATE" ]; then
        head -n 1 "$CANDIDATE" 2>/dev/null | sed 's/^/first_line=/' | redact || true
        [ -x "$CANDIDATE" ] && echo "executable_bit=yes" || echo "executable_bit=no"
      fi
    else
      echo "candidate_path_exists=no"
    fi
  else
    echo "Could not safely extract a single ExecStart path. Inspect unit file manually."
  fi
fi

say "mount flags"
if need_cmd findmnt; then
  findmnt -no TARGET,OPTIONS / 2>/dev/null | redact || true
  if [ -n "${CANDIDATE:-}" ] && [ -e "${CANDIDATE:-}" ]; then
    findmnt -T "$CANDIDATE" -no TARGET,OPTIONS 2>/dev/null | redact || true
  fi
else
  echo "findmnt not found"
fi

say "next safe checks"
cat <<'NEXT'
- Verify ExecStart uses an absolute path or an explicit interpreter.
- Verify the target exists and is executable.
- Verify script shebang points to an existing interpreter.
- Verify User= can traverse parent directories and read/execute the target.
- Verify mount options do not include noexec for the executable location.
- Do not edit/restart yet on remote/production systems without backup and rollback.
NEXT
