# TOOLS.md — شام

## المهارات المتاحة لك

### tmux
- تشغيل ومراقبة العمليات في الخلفية
- إدارة جلسات العمل التقنية لـ CJ

### GitHub (github + gh-issues)
- تتبع المهام والـ issues في المشاريع
- مراجعة حالة الـ PRs والـ builds

### سجلات الجلسات (session-logs)
- مراجعة سجل العمل اليومي
- كشف أي تعطّل في التواصل بين الأعضاء

### واتساب (wacli)
- تنسيق مع أعضاء الفريق الميداني

## ملاحظات
- مسؤول عن: CJ يرفع إليك، وأنت ترفع لبرهان
- المشاريع التقنية: taamun-mvp, city-of-meaning

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك للداشبورد في أي وقت
- عند إنهاء مهمة: أرسل {"type":"task","id":X,"status":"done","owner":"...","title":"..."}
- عند بدء نشاط: أرسل {"type":"activity","agent":"...","action":"...","activityType":"..."}
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update

### Magic — 21st.dev (magic)
- توليد مكونات UI احترافية (React/Tailwind) من وصف نصي
- استخدمها لبناء واجهات سريعة أو توليد أفكار تصميم
- راجع skills/magic/SKILL.md للتفاصيل

### AI Daily Manager (ai-daily-manager)
- مدير مشروع ذكي يعمل تلقائياً
- يحلل المهام ويعطي توصيات وينقل المهام بين الأعمدة
- التشغيل: bash ~/.openclaw/skills/ai-daily-manager/run.sh [morning|midday|evening]
- morning = تفعيل المهام المُسندة
- midday = تحديث التقدم + كشف الجامد
- evening = إغلاق المكتمل + تقرير نهاية اليوم

### Full AI Operator (full-ai-operator)
- مشغّل المشروع الذكي الكامل — يدير كل شيء تلقائياً
- الأمر: python3 ~/.openclaw/skills/full-ai-operator/operator.py project_name="عيدية تمعن"
- المراحل: setup | morning | midday | evening | all
- يضيف المهام، يتابع التقدم، يكشف المشاكل، يعطي توصيات AI

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard (activity + alert)
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"
