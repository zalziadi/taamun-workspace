#!/bin/bash

echo "🚀 إعداد Obsidian لمشروع عيدية تمعّن"

# التحقق من نظام التشغيل
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "📱 نظام macOS - بدء التثبيت..."
    
    # التحقق من Homebrew
    if ! command -v brew &> /dev/null; then
        echo "❌ Homebrew غير مثبت. يرجى تثبيته أولاً من: https://brew.sh"
        exit 1
    fi
    
    # تثبيت Obsidian
    echo "📦 تثبيت Obsidian..."
    brew install --cask obsidian
    
else
    echo "💻 يرجى تحميل Obsidian من: https://obsidian.md/download"
    exit 0
fi

# إنشاء مجلد Vault
VAULT_PATH="$HOME/Documents/عيدية-تمعن-vault"
echo "📁 إنشاء مجلد المشروع في: $VAULT_PATH"

mkdir -p "$VAULT_PATH"/{الإدارة,التقنية,العملاء,التحليلات}
mkdir -p "$VAULT_PATH/الإدارة"/{تقارير-يومية,خطط-أسبوعية,قرارات}
mkdir -p "$VAULT_PATH/التقنية"/{مواصفات,أكواد,حلول}
mkdir -p "$VAULT_PATH/العملاء"/{ملاحظات,طلبات,متابعات}
mkdir -p "$VAULT_PATH/التحليلات"/{أداء,مبيعات,توقعات}

# إنشاء ملف README
cat > "$VAULT_PATH/README.md" << EOF
# عيدية تمعّن - مركز المعرفة

## البداية السريعة
1. افتح Obsidian
2. اختر "Open folder as vault"
3. حدد هذا المجلد

## الهيكل التنظيمي
- **الإدارة:** التقارير والخطط والقرارات
- **التقنية:** المواصفات والأكواد والحلول
- **العملاء:** الملاحظات والطلبات والمتابعات
- **التحليلات:** الأداء والمبيعات والتوقعات

## القوالب المتاحة
يمكنك إضافة قوالب في مجلد Templates/
EOF

# إنشاء قالب للتقرير اليومي
mkdir -p "$VAULT_PATH/Templates"
cat > "$VAULT_PATH/Templates/تقرير-يومي.md" << EOF
# تقرير يومي - {{date}}

## الإنجازات
- [ ] 

## التحديات
- 

## خطة الغد
- [ ] 

## ملاحظات
EOF

echo "✅ تم إعداد Obsidian بنجاح!"
echo "📂 المسار: $VAULT_PATH"
echo ""
echo "📝 الخطوات التالية:"
echo "1. افتح Obsidian"
echo "2. اختر 'Open folder as vault'"
echo "3. حدد المجلد: $VAULT_PATH"
echo "4. ابدأ التوثيق!"