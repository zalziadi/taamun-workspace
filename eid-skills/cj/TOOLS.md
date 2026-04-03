# TOOLS.md — CJ

## المهارات المتاحة لك

### وكيل البرمجة (coding-agent)
- فوّض مهام البناء لـ Claude Code أو Codex
- استخدم: بناء features، مراجعة كود، refactoring

### GitHub (github + gh-issues)
- افتح وأغلق issues، راجع PRs، تتبع CI
- المستودعات: taamun-mvp.vercel.app، city-of-meaning

### tmux
- شغّل عمليات طويلة في الخلفية
- راقب build logs وserver processes

### peekaboo
- أتمتة واجهات macOS عند الحاجة
- تصوير screenshots للتوثيق

### تسجيل الفيديو (video-frames)
- استخرج frames من فيديوهات للتوثيق التقني

## ملاحظات
- ترفع لشام — شام يرفع لبرهان
- المشاريع الرئيسية: taamun-next، face-harmony-app، city-of-meaning

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك للداشبورد في أي وقت
- عند إنهاء مهمة: أرسل {"type":"task","id":X,"status":"done","owner":"...","title":"..."}
- عند بدء نشاط: أرسل {"type":"activity","agent":"...","action":"...","activityType":"..."}
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update

### Magic — 21st.dev (magic)
- توليد مكونات UI احترافية (React/Tailwind) من وصف نصي
- استخدمها لبناء واجهات سريعة أو توليد أفكار تصميم
- راجع skills/magic/SKILL.md للتفاصيل

### Full AI Operator (full-ai-operator)
- مشغّل المشروع الذكي الكامل — يدير كل شيء تلقائياً
- الأمر: python3 ~/.openclaw/skills/full-ai-operator/operator.py project_name="عيدية تمعن"
- المراحل: setup | morning | midday | evening | all
- يضيف المهام، يتابع التقدم، يكشف المشاكل، يعطي توصيات AI

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard (activity + alert)
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"
