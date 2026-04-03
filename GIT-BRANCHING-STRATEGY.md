# GIT-BRANCHING-STRATEGY.md — Multi-Agent Workflow

## Branch Structure

```
master (production)
├── feature/musakhar (مسخّر's work)
├── feature/burhan (برهان's work)
├── feature/cj (CJ's work)
├── feature/samraa (سمرا's work)
├── feature/warda (وردة's work)
├── feature/wolf (ذئب's work)
├── feature/shaheen (شاهين's work)
├── task/comment-monitor (Instagram task)
├── task/weekly-report (reporting task)
└── hotfix/urgent-bug (emergency fixes)
```

## Workflow

### Start New Task (for any agent)
```bash
git pull origin master
git checkout -b task/[task-id]
# Do work
git add -A
git commit -m "Task [task-id]: description"
git push origin task/[task-id]
# Then create Pull Request on GitHub
```

### Agent Personal Branch (long-lived)
```bash
git checkout feature/[agent-name]
git pull origin feature/[agent-name]
# Work for multiple days
git add -A
git commit -m "Work in progress: description"
git push origin feature/[agent-name]
# Merge to master when stable
```

### Merge to Master
```bash
# When task/feature is ready:
git checkout master
git pull origin master
git merge --no-ff feature/[agent-name]
git push origin master
# Delete branch: git push origin --delete feature/[agent-name]
```

## Rules

1. **Never commit to master directly** — Always use branches
2. **One agent = one primary branch** (feature/[name])
3. **One task = one task branch** (task/[id])
4. **Pull before push** — Avoid conflicts
5. **Descriptive commits** — `Task X: what changed`
6. **Merge via PR** — Review before master

## Sync Flow

```
Agent 1: feature/musakhar
    ↓ (pull/push)
GitHub (origin)
    ↓ (auto-sync)
OpenClaw (master)
    ↑ (monitor)
Agent 2: feature/burhan
```

## Example Timeline

```
09:00 - Musakhar: git checkout -b task/instagram-monitor
        (works on Instagram task)
        
10:30 - Burhan: git checkout feature/burhan
        (works on general tasks)
        
11:00 - Cron sync pulls all branches
        Master stays stable
        
14:00 - Musakhar: task/instagram-monitor ready
        Creates PR → OpenClaw reviews
        
14:15 - OpenClaw merges to master
        (auto-synced to GitHub)
        
All agents can pull latest version
```

## Git Commands (Quick Ref)

```bash
# List all branches
git branch -a

# Create feature branch
git checkout -b feature/musakhar

# Create task branch
git checkout -b task/001-instagram-monitor

# Push new branch
git push -u origin feature/musakhar

# See branch status
git log --oneline feature/musakhar

# Merge and delete
git checkout master
git merge feature/musakhar
git push origin master
git push origin --delete feature/musakhar
```

## GitHub PR Template (auto-sync)

When creating PR, use this:
```
## Task
Closes #[task-id]

## Changes
- Change 1
- Change 2

## Testing
- [ ] Local tested
- [ ] Synced with MEMORY.md
- [ ] No conflicts

## Author
@[agent-name]
```

---

**Result: 100% multi-agent sync with conflict resolution** ✅
