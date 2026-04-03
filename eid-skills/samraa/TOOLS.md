# TOOLS.md — سمرا

## المهارات المتاحة لك

### واتساب (wacli)
- أرسل رسائل متابعة للعملاء
- ابحثي في سجل محادثات العملاء
- تواصلي مع الفريق الميداني

### الطقس (weather)
- تحقق من الطقس لتخطيط الفعاليات الميدانية

### تسجيل الصوت (openai-whisper)
- حوّلي الرسائل الصوتية لنص لتوثيقها

## ملاحظات
- ترفعين تقاريرك لبرهان مباشرة
- عند استلام إيصال — أبلغي مسخّر فوراً عبر برهان

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك للداشبورد في أي وقت
- عند إنهاء مهمة: أرسل {"type":"task","id":X,"status":"done","owner":"...","title":"..."}
- عند بدء نشاط: أرسل {"type":"activity","agent":"...","action":"...","activityType":"..."}
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard (activity + alert)
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"
