#!/usr/bin/env bash
# Install the LSC Delivery Architect skill into a Cursor project.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-}"
if [[ -z "$TARGET" ]]; then
  echo "Usage: ./install.sh /path/to/your-cursor-project"
  exit 1
fi
mkdir -p "$TARGET/.cursor/skills" "$TARGET/.cursor/rules"
cp -R "$ROOT/skills/lsc-delivery-architect" "$TARGET/.cursor/skills/"
cp "$ROOT/rules/use-lsc-delivery-architect.mdc" "$TARGET/.cursor/rules/"
echo "Installed LSC Delivery Architect into $TARGET/.cursor/"
echo "Reload the Cursor window, then try: Plan and prototype a test capability — no stories yet"
