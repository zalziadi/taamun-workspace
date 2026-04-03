# TOOLS.md — برهان

## المهارات المتاحة لك

### سجلات الجلسات (session-logs)
- راجع المحادثات السابقة للفريق والعملاء
- استخدم: تحليل الأداء، كشف الأنماط، إعداد التقارير

### استخدام الموديلات (model-usage)
- تتبع تكاليف الذكاء الاصطناعي وأداء الموديلات
- استخدم: تقارير الكفاءة لمسخّر

### Gemini (gemini)
- توليد التحليلات، الملخصات، والتوصيات
- استخدم: تعزيز تقاريرك قبل رفعها لمسخّر

### واتساب (wacli)
- تواصل مع أعضاء الفريق
- أرسل الملخصات والتوصيات لمسخّر

### tmux
- راقب العمليات الجارية على الجهاز
- تتبع مهام الفريق التقنية عبر شام

## ملاحظات
- رفع التقارير: مسخّر أولاً، ثم توثيق في الملفات
- جدول التقارير: يومي 9 ص — ملخص أداء الفريق

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك للداشبورد في أي وقت
- عند إنهاء مهمة: أرسل {"type":"task","id":X,"status":"done","owner":"...","title":"..."}
- عند بدء نشاط: أرسل {"type":"activity","agent":"...","action":"...","activityType":"..."}
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update

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
