# AGENT-SYNC-CHECKLIST.md — Daily Protocol

Every agent must follow this for 100% sync.

## Morning (عند بدء الجلسة)

- [ ] `git pull origin master` — أحدّث الكود
- [ ] اقرأ MEMORY.md — تفقّد الحالة الحالية
- [ ] اقرأ delivery-queue — قائمة المهام الجديدة
- [ ] حدّث MEMORY.md: أضيف اسمك تحت "## Current Tasks"

## During Work (أثناء العمل)

- [ ] اقرأ الـ task بالكامل
- [ ] اسأل أسئلة (بدل تخمين)
- [ ] كتب النتائج في notes file
- [ ] اكتب معك في MEMORY.md: حالتك (in-progress)

## End of Task (نهاية المهمة)

- [ ] `git add -A`
- [ ] `git commit -m "Task: [description]"`
- [ ] `git push origin master`
- [ ] حدّث MEMORY.md: نتيجة + وقت التنفيذ
- [ ] انقل الـ task من to-openclaw/ إلى done/ (إن أمكن)

## If Blocked (لو عالق)

1. اكتب "🚫 BLOCKED:" في MEMORY.md
2. اكتب السبب بالتفصيل
3. أرسل رسالة للـ agent اللي فوقك (burhan or musakhar)
4. ما تنتظر — اشتغل على حاجة ثانية

## If Urgent (لو مستعجل)

1. اكتب "⚠️ URGENT:" في MEMORY.md
2. أرسل رسالة + رابط لـ MEMORY.md
3. انتظر reply (max 15 دقيقة)

---

## Git Commands (Quick Reference)

```bash
# Pull latest
git pull origin master

# Check status
git status

# Stage all changes
git add -A

# Commit with message
git commit -m "Task: Instagram monitor setup"

# Push to remote
git push origin master

# View history
git log --oneline -10
```

---

## MEMORY.md Format

```markdown
## Current Tasks
- [musakhar-001] Instagram comment monitor — in-progress (50%)
- [burhan-002] Weekly report — blocked (waiting for data)

## Completed
- [samraa-001] Database migration — done (2h)
```

---

## Questions?
- Check CLAUDE-CODE-PROTOCOL.md (for Claude Code)
- Ask in MEMORY.md: add "❓ QUESTION: ..." and OpenClaw will see it
- Direct message if critical

**Remember:** Git is your safety net. Every commit is a checkpoint.
