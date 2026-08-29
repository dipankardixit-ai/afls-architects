#!/usr/bin/env bash
# Create the public GitHub repo, push main, and enable GitHub Pages.
# Run this in Terminal.app (not the Cursor sandbox): ./publish.sh
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
export GIT_DIR="$ROOT/git-store"
export GIT_WORK_TREE="$ROOT"

OWNER="$(gh api user --jq .login)"
REPO="afls-architects"
REMOTE="https://github.com/${OWNER}/${REPO}.git"

if gh repo view "${OWNER}/${REPO}" >/dev/null 2>&1; then
  echo "Repo already exists: ${REMOTE}"
else
  gh repo create "${REPO}" --public --source=. --remote=origin --push \
    --description "AFLS Architects Team — LSC Delivery Architect agent skill. Prototype-first Solution Plans, Salesforce-grounded HTML prototypes, and implementation-ready user stories for Life Sciences Cloud." \
    || {
      git remote get-url origin >/dev/null 2>&1 || git remote add origin "${REMOTE}"
      git push -u origin main
    }
fi

git remote get-url origin >/dev/null 2>&1 || git remote add origin "${REMOTE}"
git push -u origin main

gh api -X POST "repos/${OWNER}/${REPO}/pages" \
  -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 \
  || gh api -X PUT "repos/${OWNER}/${REPO}/pages" \
       -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 \
  || true

echo
echo "Repo:  https://github.com/${OWNER}/${REPO}"
echo "Pages: https://${OWNER}.github.io/${REPO}/"
echo "If Pages 404s for a minute, wait for GitHub to finish publishing."
