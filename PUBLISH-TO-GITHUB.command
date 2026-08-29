#!/bin/bash
# Double-click or run this file to publish the AFLS Architects repo to GitHub.
cd "$(dirname "$0")" || exit 1

echo "=== AFLS Architects → GitHub ==="
echo

if ! gh auth status >/dev/null 2>&1; then
  echo "GitHub login needed. A browser window will open."
  gh auth login --hostname github.com --git-protocol https --web || exit 1
fi

./publish.sh
STATUS=$?

echo
if [ $STATUS -eq 0 ]; then
  echo "Published. You can close this window."
else
  echo "Failed (exit $STATUS). Copy the errors above back into Cursor."
fi
