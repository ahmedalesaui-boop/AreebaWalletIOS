# Areeba Wallet iOS

هذا المشروع يحوّل واجهة مشروع Areeba/Node.js الموجود لديك إلى تطبيق iOS باستخدام SwiftUI + WKWebView.

## مهم
- ملف `server.js` لا يعمل داخل IPA. يجب تشغيله على خادم HTTPS.
- عدّل `AreebaWalletIOS/Config.swift` وضع رابط مشروعك HTTPS بدل:
  `https://YOUR-DOMAIN.example`
- لا تضع مفاتيح Areeba السرية داخل تطبيق iPhone. تبقى في متغيرات البيئة على الخادم.
- بيانات البطاقة يجب أن تبقى ضمن نموذج الدفع/الـ hosted fields المدعوم من بوابة الدفع، ولا تخزن رقم البطاقة أو CVC في التطبيق.

## بناء IPA
1. افتح المشروع في Xcode على Mac أو استخدم خدمة بناء تدعم Xcode.
2. افتح `Signing & Capabilities`.
3. اختر Apple Developer Team الخاص بك.
4. غيّر Bundle Identifier إذا لزم.
5. نفّذ Archive.
6. من Organizer اختر Distribute App ثم طريقة التوزيع المناسبة.

## من iPhone فقط
يمكنك رفع المشروع إلى GitHub من iPhone ثم استخدام بيئة بناء macOS مثل GitHub Actions أو Xcode Cloud، لكن إنشاء IPA قابل للتثبيت/التوزيع يحتاج توقيع Apple صالح.

## ربط المشروع الحقيقي
استخدم رابط HTTPS للمشروع الذي يحتوي:
- `server.js`
- `public/index.html`
- إعدادات Areeba في متغيرات البيئة

لا تضع مفاتيح API السرية داخل `index.html` أو Swift.
