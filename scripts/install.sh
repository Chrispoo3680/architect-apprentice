#!/usr/bin/env bash
set -euo pipefail

MODE="symlink"
if [[ "${1:-}" == "--copy" ]]; then MODE="copy"; shift; fi
if [[ $# -gt 0 ]]; then echo "usage: $0 [--copy]" >&2; exit 2; fi

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd -P)"
TARGET="${HOME}/.claude/skills/architect-apprentice"
mkdir -p "$(dirname -- "$TARGET")"

if [[ -e "$TARGET" || -L "$TARGET" ]]; then
  echo "Refusing to overwrite existing $TARGET" >&2
  exit 1
fi

if [[ "$MODE" == "copy" ]]; then
  cp -a "$ROOT" "$TARGET"
  rm -rf "$TARGET/.git" 2>/dev/null || true
  echo "Installed copy at $TARGET"
else
  ln -s "$ROOT" "$TARGET"
  echo "Installed symlink $TARGET -> $ROOT"
fi
