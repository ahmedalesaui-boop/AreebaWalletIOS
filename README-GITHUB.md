# AreebaWalletIOS — GitHub

## رفع المشروع من iPhone

1. أنشئ Repository جديد في GitHub.
2. فك ضغط هذا المشروع على جهازك، ثم ارفع **محتويات** المجلد إلى Repository.
3. تأكد أن `AreebaWalletIOS.xcodeproj` موجود في جذر Repository.
4. افتح:
   `.github/workflows/ios-build.yml`
5. من GitHub اختر **Actions → iOS Build → Run workflow**.

## قبل البناء

افتح:
`AreebaWalletIOS/Config.swift`

وغيّر:

`https://YOUR-DOMAIN.example`

إلى رابط HTTPS لمشروع Node.js/Areeba الحقيقي.

## ملاحظة عن IPA

الـworkflow الموجود هنا يبني نسخة iOS غير موقعة للاختبار/الفحص. للحصول على IPA قابل للتثبيت على iPhone، تحتاج توقيع Apple (Developer Team + شهادة/Provisioning Profile أو طريقة توزيع مناسبة).

ولا تضع مفاتيح Areeba السرية داخل GitHub أو التطبيق. ضعها كـSecrets/Environment Variables على الخادم.
