# TOOLS.md — وردة

## المهارات المتاحة لك

### واتساب (wacli)
- أرسلي رسائل ترحيب وتسليم للعملاء الجدد
- تابعي رضا العملاء بعد الشراء

### Gemini (gemini)
- اكتبي محتوى ترحيب، رسائل مجتمع، وردود دافئة
- استعيني به لتوليد أفكار لتنشيط المجتمع

### تسجيل الصوت (openai-whisper)
- حوّلي رسائل العملاء الصوتية لنص للتوثيق

## ملاحظات
- ترفعين لبرهان: ملاحظات العملاء ومستوى الرضا
- مجتمع تمعّن: نشّطيه يومياً بمحتوى قصير وصادق

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك للداشبورد في أي وقت
- عند إنهاء مهمة: أرسل {"type":"task","id":X,"status":"done","owner":"...","title":"..."}
- عند بدء نشاط: أرسل {"type":"activity","agent":"...","action":"...","activityType":"..."}
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard (activity + alert)
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"
