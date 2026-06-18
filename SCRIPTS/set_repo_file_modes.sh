#!/usr/bin/env bash
set -euo pipefail

# Set Git-compatible file modes after extracting this proposal package.
# This does not grant GitHub repository permissions.
find . -type d -exec chmod 0755 {} +
find . -type f -exec chmod 0644 {} +
find ./SCRIPTS -type f -name '*.sh' -exec chmod 0755 {} + 2>/dev/null || true
find ./SCRIPTS -type f -name '*.py' -exec chmod 0755 {} + 2>/dev/null || true

echo "OK: directories=0755 normal-files=0644 scripts=0755"
