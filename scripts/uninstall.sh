#!/usr/bin/env bash
set -euo pipefail
TARGET="${HOME}/.claude/skills/architect-apprentice"
if [[ ! -e "$TARGET" && ! -L "$TARGET" ]]; then
  echo "Nothing installed at $TARGET"
  exit 0
fi
printf 'Remove %s? [y/N] ' "$TARGET"
read -r ans
case "$ans" in
  y|Y|yes|YES) rm -rf -- "$TARGET"; echo "Removed $TARGET" ;;
  *) echo "Cancelled" ;;
esac
