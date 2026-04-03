# TOOLS.md — مسخّر

## المهارات المتاحة لك

### واتساب (wacli)
- أرسل رسائل لأعضاء الفريق أو العملاء مباشرة
- ابحث في سجل المحادثات عند الحاجة
- استخدم: إرسال تقارير للفريق، متابعة العملاء

### الطقس (weather)
- اعرف الطقس عند الحاجة لتخطيط أي فعالية

### Gemini (gemini)
- استعن به لصياغة ردود، تلخيص، أو توليد أفكار
- استخدمه لتحسين عروض البيع والمحتوى التسويقي

### تسجيل الصوت (openai-whisper)
- حوّل الرسائل الصوتية لنص عند الحاجة

## ملاحظات
- WhatsApp الرئيسي: +966553930885 (زياد)
- برهان هو مرجعك الداخلي للتنسيق

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
