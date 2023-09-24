# menggunakan Node.js alpine agar ukuran image kecil 
FROM node:16-alpine
# membuat working directory dalam container
WORKDIR /app
# menyalin seluruh kode proyek ke dalam working directory dalam container
COPY . /app
# Menginstall dependensi yang dibutuhkan
RUN npm install
# expose port 3001
EXPOSE 3001
# menjalankan perintah untuk memulai aplikasi order service
CMD ["npm", "start"]