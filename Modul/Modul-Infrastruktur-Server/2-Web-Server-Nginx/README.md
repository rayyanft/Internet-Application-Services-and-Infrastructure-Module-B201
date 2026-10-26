# Infrastruktur 2: Web Server Nginx

Nginx adalah web server yang dapat menyajikan berkas statis dan meneruskan request ke aplikasi. Dalam latihan ini kita menyajikan satu halaman lokal pada VM.

## Teori Dasar

Klien seperti browser meminta URL melalui HTTP; server mencari konfigurasi yang cocok lalu mengirim respons. Nginx membaca blok `server`, mencocokkan port dan nama host, kemudian memilih `location`. `root` menyatakan folder sumber berkas, sedangkan `index` menentukan berkas awal.

Contoh konfigurasi:

```nginx
server {
    listen 8080;
    server_name localhost;
    root /var/www/html;
    index index.html;
}
```

- `server { ... }`: mendefinisikan satu konfigurasi virtual server; kurung kurawal membatasi direktif di dalamnya.
- `listen 8080;`: menerima koneksi pada port 8080; angka port harus cocok dengan URL.
- `server_name localhost;`: nama host untuk pencocokan; `localhost` hanya menunjuk komputer yang sama.
- `root /var/www/html;`: folder tempat Nginx mencari konten.
- `index index.html;`: berkas awal ketika URL meminta folder.
- Titik koma mengakhiri setiap direktif.

Di contoh konfigurasi, `location /` memilih path mulai akar; `$uri` adalah variabel Nginx berisi URI, `$uri/` mencoba direktori yang cocok, dan `=404` mengembalikan status tidak ditemukan jika keduanya tidak tersedia. `try_files` memeriksa kandidat berkas dalam urutan yang ditulis. Dalam perintah terminal, `sudo systemctl status nginx` terdiri atas `sudo` (izin administrator), `systemctl` (pengelola layanan systemd), `status` (aksi baca kondisi), dan `nginx` (nama unit layanan). `sudo nginx -t` menguji sintaks konfigurasi; selalu lakukan sebelum reload agar konfigurasi yang salah tidak memutus layanan.

## Alat dan Persiapan Praktikum

- VM Ubuntu dari modul Linux atau mesin lokal untuk demonstrasi.
- Paket Nginx dari repositori resmi distribusi.
- Hak administrator pada VM milik sendiri dan editor teks.

## Langkah-Langkah Praktikum (Hands-on)

1. Instal Nginx dalam VM sesuai panduan Ubuntu; pahami bahwa `sudo apt install nginx` meminta hak admin, `apt` mengelola paket, dan `install` memasang paket bernama `nginx`.
2. Periksa layanan dengan `systemctl status nginx`. `systemctl` mengelola unit layanan, `status` menampilkan kondisinya.
3. Letakkan halaman latihan di document root yang sesuai dan pastikan izin berkas hanya memberi akses yang diperlukan.
4. Validasi konfigurasi menggunakan `sudo nginx -t` sebelum reload; `-t` menguji sintaks konfigurasi.
5. Muat halaman dari browser pada host/port latihan yang diizinkan.
6. Periksa log dan hentikan layanan setelah latihan bila tidak diperlukan.

## Tugas Modul

Buat halaman statis satu halaman dan konfigurasi server untuk port nonproduksi di VM. Tunjukkan hasil tes konfigurasi dan halaman, jelaskan peran `listen`, `server_name`, `root`, dan `index`; jangan membuka firewall publik.

## Referensi

- [Nginx Beginner's Guide](https://nginx.org/en/docs/beginners_guide.html)
- [Ubuntu Server: Web servers](https://ubuntu.com/server/docs)
