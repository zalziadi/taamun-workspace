# TOOLS.md — المستشار

## المهارات المتاحة لك

### لوحة القيادة (update-dashboard)
- أرسل تحديثاتك مباشرة للداشبورد
- الرابط: https://team-dashboard-murex-one.vercel.app/api/update
- اقرأ الحالة: https://team-dashboard-murex-one.vercel.app/api/data
- اقرأ التحليل: https://team-dashboard-murex-one.vercel.app/api/insights

### Full AI Operator (full-ai-operator)
- تشغيل دورة يوم العمل كاملة
- python3 ~/.openclaw/skills/full-ai-operator/operator.py project_name="عيدية تمعن"

### AI Daily Manager (ai-daily-manager)
- تقرير نهاية اليوم + توصيات
- bash ~/.openclaw/skills/ai-daily-manager/run.sh evening

### واتساب (wacli)
- إرسال رسائل للفريق عند الحاجة

### Gemini (gemini)
- صياغة محتوى، تقارير، ردود

## ملاحظات
- أنت AI agent — تنفّذ المهام بنفسك لا تنتظر أحد
- أي مهمة stuck > 30 دقيقة → تولّاها أنت
- سجّل كل عمل كـ activity على Dashboard

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard (activity + alert)
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"
