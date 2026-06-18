#!/usr/bin/env bash
# ============================================================
# DrDebug: Bash Syntax Check All v0.0.2
# Deutscher Kommentar:
# Prueft alle Shellskripte im Bundle mit bash -n.
# ============================================================
set +e
ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)"
status=0
while IFS= read -r -d '' f; do
  echo "== bash -n: ${f#$ROOT_DIR/} =="
  bash -n "$f"
  rc=$?
  if [ "$rc" -ne 0 ]; then
    status=$rc
  fi
done < <(find "$ROOT_DIR/scripts" -type f -name '*.sh' -print0 | sort -z)
exit "$status"
