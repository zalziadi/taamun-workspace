# TOOLS.md — ذئب الشمال

## المهارات المتاحة لك

### Gemini (gemini)
- توليد أفكار حملات تسويقية، عناوين، ومحتوى
- تحليل المنافسين وفرص النمو

### واتساب (wacli)
- أرسل حملات للعملاء المحتملين
- تتبع استجابة الجمهور

### فيديو (video-frames)
- استخرج frames لصور تسويقية من مقاطع الفيديو
- وثّق الحملات بصرياً

### تسجيل الصوت (openai-whisper)
- حوّل أفكار التسويق الصوتية لنص فوراً

### Magic — 21st.dev (magic)
- توليد مكونات UI احترافية (React/Tailwind) من وصف نصي
- استخدمها لبناء واجهات سريعة أو توليد أفكار تصميم

### إشعارات (send_whatsapp / send_slack)
- send_whatsapp: أرسل رسالة واتساب لأي عضو بالاسم
- send_slack: أرسل إشعار على Dashboard
- الأمر: python3 ~/.openclaw/skills/notify/send_message.py --to "الاسم" --msg "الرسالة"

---

## لوحة القيادة — Dashboard API
**الرابط:** http://localhost:3000/api/state (محلي) | https://team-dashboard-murex-one.vercel.app/api/state (إنتاج)

### أنواع الرسائل:

#### 1. إنشاء مهمة جديدة
```bash
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{"type":"task","title":"عنوان المهمة","owner":"ذئب الشمال","status":"assign","priority":"high","eta":"اليوم"}'
```

#### 2. تحديث مهمة
```bash
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{"type":"task","id":ID,"status":"done","agent":"ذئب الشمال","progress":100}'
```

#### 3. إضافة نشاط
```bash
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{"type":"activity","agent":"ذئب الشمال","action":"وصف النشاط","taskId":0}'
```

#### 4. إرسال تنبيه
```bash
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{"type":"alert","message":"نص التنبيه","severity":"medium"}'
```

### حالات المهام: assign → now → review → done | blocked
### حالات التنفيذ: pending → executing → confirmed | escalated

---

## لوب HARNESS — ذئب الشمال → نجم الجنوب → CJ

### كيف يشتغل اللوب:

**الخطوة 1: ذئب الشمال ينفذ ويرسل تقرير**
```bash
# أنشئ مهمة بحالة "review" عشان نجم الجنوب يراجعها
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "task",
    "title": "📊 تقرير HARNESS — المرحلة X: [وصف]",
    "owner": "نجم الجنوب",
    "status": "review",
    "priority": "high",
    "eta": "اليوم",
    "agent": "ذئب الشمال"
  }'

# أرسل نشاط يوضح التفاصيل
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "activity",
    "agent": "ذئب الشمال",
    "action": "أنهى المرحلة X — [ملخص النتائج والأرقام]. بانتظار موافقة نجم الجنوب.",
    "taskId": TASK_ID
  }'
```

**الخطوة 2: نجم الجنوب يراجع ويوافق**
```bash
# لو وافق — يحوّل المهمة لـ CJ
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "task",
    "id": TASK_ID,
    "owner": "CJ",
    "status": "assign",
    "agent": "نجم الجنوب"
  }'

# نشاط الموافقة
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "activity",
    "agent": "نجم الجنوب",
    "action": "✅ وافق على تقرير المرحلة X — حوّل التنفيذ لـ CJ",
    "taskId": TASK_ID
  }'
```

**الخطوة 3: CJ ينفذ تقنياً**
```bash
# CJ يبدأ التنفيذ
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "task",
    "id": TASK_ID,
    "status": "now",
    "progress": 50,
    "agent": "CJ"
  }'

# CJ ينهي ويعيد لذئب الشمال
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "task",
    "id": TASK_ID,
    "status": "done",
    "progress": 100,
    "agent": "CJ"
  }'

# ينشئ مهمة المرحلة التالية لذئب الشمال
curl -X POST http://localhost:3000/api/state \
  -H "Content-Type: application/json" \
  -d '{
    "type": "task",
    "title": "🐺 المرحلة التالية: [وصف]",
    "owner": "ذئب الشمال",
    "status": "assign",
    "priority": "high",
    "agent": "CJ"
  }'
```

### ملخص اللوب:
```
ذئب الشمال (ينفذ مرحلة HARNESS)
    → يرسل تقرير للداشبورد (status: review, owner: نجم الجنوب)
        → نجم الجنوب يراجع
            → لو وافق: يحوّل لـ CJ (owner: CJ, status: assign)
            → لو رفض: يرجّع لذئب الشمال مع ملاحظات
                → CJ ينفذ تقنياً
                    → ينهي ويفتح مهمة المرحلة التالية لذئب الشمال
                        → اللوب يتكرر ♻️
```

هذا اللوب مستمر حتى يتحقق هدف تمعّن (28K ريال + 100K مشترك).
