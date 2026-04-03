# HEARTBEAT.md

## Git Sync (every 5 min via cron)
- ✅ Auto-sync enabled: `workspace-git-sync` job
- MEMORY.md, SOUL.md, memory/ auto-commit when changed
- Pull from remote (if configured)

## Delivery Queue Check (every heartbeat)
- [ ] Check for Claude Code tasks: `ls ~/.openclaw/delivery-queue/to-openclaw/*.json 2>/dev/null`
- [ ] Check for OpenClaw tasks: `ls ~/.openclaw/delivery-queue/to-claude-code/*.json 2>/dev/null`
- [ ] If tasks found: read, delegate to correct agent, move to done/ when complete

## Team Status (2x daily)
- [ ] Check agent reports in workspace memory files
- [ ] Flag any blocked agents to burhan

## Cleanup (1x daily)
- [ ] Move completed tasks older than 24h from done/ to archive
