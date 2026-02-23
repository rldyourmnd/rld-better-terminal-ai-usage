#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$SCRIPT_DIR/linux/$(basename "$0")"

if [[ ! -x "$TARGET" ]]; then
  echo "[ERROR] Missing Linux script target: $TARGET"
  exit 1
fi

exec "$TARGET" "$@"
