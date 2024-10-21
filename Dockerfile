# استخدام صورة Node.js الأساسية
FROM node:14

# إعداد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملف package.json و package-lock.json (إن وجد) لتثبيت التبعيات
COPY package*.json ./

# تثبيت التبعيات
RUN npm install

# نسخ بقية ملفات المشروع
COPY . .

# تعيين المنفذ الذي سيتم استخدامه في الحاوية
EXPOSE 3000

# الأمر الذي سيتم تشغيله عند بدء تشغيل الحاوية
CMD ["node", "app.js"]
