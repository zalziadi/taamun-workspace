#!/bin/bash
# Delivery Queue Monitor — Auto-detect and log new tasks

QUEUE_DIR=~/.openclaw/delivery-queue/to-openclaw
STATE_FILE=~/.openclaw/delivery-queue/.last-check
WORKSPACE=/Users/ziyadalziyadi/.openclaw/workspace

# Create state file if missing
touch "$STATE_FILE"

# Find new tasks (modified after last check)
NEW_TASKS=$(find "$QUEUE_DIR" -name "*.json" -newer "$STATE_FILE" 2>/dev/null)

if [[ -n "$NEW_TASKS" ]]; then
  echo "🔔 New delivery queue tasks detected:"
  while IFS= read -r task; do
    TASK_ID=$(basename "$task" .json)
    echo "   - $TASK_ID"
    
    # Log to MEMORY.md
    echo "
## Task Alert: $TASK_ID
- **Time:** $(date '+%Y-%m-%d %H:%M:%S')
- **Source:** delivery-queue
- **File:** $task
- **Status:** Pending delegation
" >> "$WORKSPACE/memory/delivery-alerts.md"
  done <<< "$NEW_TASKS"
  
  # Update state file
  touch "$STATE_FILE"
else
  echo "✅ No new delivery queue tasks"
fi
