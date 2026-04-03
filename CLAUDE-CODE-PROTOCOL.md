# CLAUDE-CODE-PROTOCOL.md — 100% Sync Protocol

## Rule #1: Git is Truth
**After every task, commit your changes:**
```bash
cd /Users/ziyadalziyadi/.openclaw/workspace
git add -A
git commit -m "Task: [description]"
git push origin master
```

**Never:**
- Work without git
- Forget to commit/push
- Leave changes staged

## Rule #2: Update MEMORY.md First
**Before starting any task:**
1. Read MEMORY.md
2. Add task to `## Current Tasks`
3. When done, move to `## Completed`

**Format:**
```markdown
## Current Tasks
- [task-id] description — status (in-progress/blocked/ready)

## Completed
- [task-id] description — result
```

## Rule #3: Delivery Queue is Your Input
**Every heartbeat, check:**
```bash
ls ~/.openclaw/delivery-queue/to-openclaw/*.json
```

**When you find a task:**
1. Read it
2. Write to MEMORY.md: `## Current Tasks`
3. Work on it
4. Commit to git
5. Move file to `done/` (manual, for now)

## Rule #4: Write Everything Down
- Code changes → Git commit
- Status updates → MEMORY.md
- Blockers → Flag in MEMORY.md → Tell OpenClaw

## Sync Timing
- **Pull:** Start of session (git pull)
- **Commit:** End of task (git commit)
- **Push:** After every commit (git push)

---

## Current Workspace Structure
```
/Users/ziyadalziyadi/.openclaw/workspace/
├── MEMORY.md (shared — DO NOT DELETE)
├── SOUL.md (team structure)
├── HEARTBEAT.md (checklist)
├── eid-skills/ (agent workspaces)
├── delivery-queue/ (tasks from agents)
└── scripts/git-sync.sh (auto-sync helper)
```

## Questions?
Ask OpenClaw main session — it reads git history + MEMORY.md.
