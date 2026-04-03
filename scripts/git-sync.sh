#!/bin/bash
# Git Sync Script — Pull + Commit + Monitor

cd /Users/ziyadalziyadi/.openclaw/workspace

# Step 1: Pull latest from remote
echo "🔄 Pulling from git..."
git pull origin master 2>/dev/null || echo "⚠️ Pull failed (no remote?)"

# Step 2: Commit any changes
echo "📝 Checking for changes..."
git add -A

if [[ -n $(git diff --cached --name-only) ]]; then
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  FILES=$(git diff --cached --name-only | tr '\n' ', ' | sed 's/,$//')
  git commit -m "Auto-sync ($TIMESTAMP): $FILES"
  echo "✅ Committed: $FILES"
  
  # Step 3: Push to remote
  git push origin master 2>/dev/null || echo "⚠️ Push failed"
else
  echo "✅ No changes"
fi

# Step 4: Monitor delivery queue
echo "📮 Checking delivery queue..."
QUEUE_COUNT=$(find ~/.openclaw/delivery-queue/to-openclaw -name "*.json" 2>/dev/null | wc -l)
if [[ $QUEUE_COUNT -gt 0 ]]; then
  echo "🔔 Tasks waiting: $QUEUE_COUNT"
else
  echo "✅ Queue empty"
fi

echo "Done at $(date '+%H:%M:%S')"
