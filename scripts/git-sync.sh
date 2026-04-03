#!/bin/bash
# Git Sync Script — Pull + Commit Changes

cd /Users/ziyadalziyadi/.openclaw/workspace

# Pull latest from remote (if exists)
git pull origin master 2>/dev/null || true

# Stage and commit any changes
git add -A
DIFF=$(git diff --cached --quiet)
if [[ $? -ne 0 ]]; then
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  git commit -m "Auto-sync: $TIMESTAMP"
  echo "✅ Synced at $TIMESTAMP"
else
  echo "No changes to sync"
fi
