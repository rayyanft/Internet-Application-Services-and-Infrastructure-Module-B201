# Image resmi Nginx ringan menjadi dasar penyajian halaman statis.
FROM nginx:alpine

# Salin halaman lokal ke direktori dokumen default Nginx.
COPY index.html /usr/share/nginx/html/index.html

# Catatan port layanan dalam container; port host dipetakan saat docker run.
EXPOSE 80
