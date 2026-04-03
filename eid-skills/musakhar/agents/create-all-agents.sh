#!/bin/bash

echo "🚀 إنشاء ملفات جميع أعضاء الفريق..."

# قائمة الأعضاء
agents=("cj" "samra" "warda" "theeb-alshamal" "shaheen")
roles=("تنفيذ تقني" "تنفيذ ميداني" "تجربة العملاء" "تسويق ونمو" "قانون ومالية")

# إنشاء الملفات لكل عضو
for i in ${!agents[@]}; do
    agent=${agents[$i]}
    role=${roles[$i]}
    
    echo "📝 إنشاء ملفات $agent..."
    
    # إنشاء الملفات الستة
    cat > "agents/$agent/MEMORY.md" << EOF
# ذاكرة $agent - $role

## معلومات أساسية
- **الدور:** $role
- **رئيسي المباشر:** $([ "$agent" = "cj" ] && echo "شام" || echo "برهان")

## سجل المهام
_(يُحدَّث مع كل إنجاز)_
EOF

    cat > "agents/$agent/SOUL.md" << EOF
# روح $agent

## شخصيتي
- متخصص في $role
- ملتزم بالجودة والمواعيد
- أعمل بروح الفريق

## قيمي الأساسية
- الإتقان في العمل
- التعاون مع الزملاء
- التطور المستمر
EOF

    cat > "agents/$agent/SKILLS.md" << EOF
# مهارات $agent

## التخصص الرئيسي
- $role

## المهارات المكتسبة
- تُحدث حسب التطور
EOF

    cat > "agents/$agent/TOOLS.md" << EOF
# أدوات $agent

## الأدوات الأساسية
- حسب التخصص في $role
EOF

    cat > "agents/$agent/ABOUTME.md" << EOF
# عن $agent

متخصص في $role ضمن فريق عيدية تمعّن.
EOF

    cat > "agents/$agent/ROLES.md" << EOF
# أدوار ومسؤوليات $agent

## الدور الأساسي
$role

## المسؤوليات
- حسب طبيعة الدور
EOF

done

echo "✅ تم إنشاء ملفات جميع أعضاء الفريق!"
echo "📊 العدد الكلي: ${#agents[@]} عضو"