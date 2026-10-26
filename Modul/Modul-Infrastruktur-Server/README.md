# Modul: Infrastruktur Server dan Deployment

Modul ini mengenalkan sistem operasi server, web server, container, dan cara publikasi. Mulai dari mesin virtual lokal; jangan mengubah server bersama atau membuka layanan ke internet tanpa izin pengelola.

## Teori Dasar

Server adalah komputer atau layanan yang menanggapi permintaan klien. Linux menyediakan proses, berkas, pengguna, dan jaringan. Nginx dapat menerima koneksi HTTP dan meneruskan atau menyajikan konten; Docker mengemas aplikasi agar lingkungan lebih konsisten; deployment memindahkan aplikasi ke lingkungan yang dapat diakses pengguna.

Empat submodul: [1-Linux-OS-Setup](./1-Linux-OS-Setup/README.md), [2-Web-Server-Nginx](./2-Web-Server-Nginx/README.md), [3-Docker-Containerization](./3-Docker-Containerization/README.md), dan [4-Deployment-Methods](./4-Deployment-Methods/README.md). Analogi: Linux adalah lahan dan bangunan, Nginx adalah meja penerima tamu, container adalah kotak kemasan aplikasi, dan deployment adalah membuka layanan pada alamat yang benar.

## Alat dan Persiapan Praktikum

- Komputer dengan terminal; gunakan mesin virtual Ubuntu untuk latihan OS.
- Akses administrator hanya pada mesin yang Anda miliki atau yang diberikan untuk praktikum.
- Docker Desktop atau Docker Engine untuk latihan container.
- Akun layanan deployment yang disetujui pembimbing. Periksa biaya dan kebijakan sebelum membuat resource.
- Buat cadangan; jangan publikasikan private key, kata sandi, token, atau konfigurasi rahasia.

## Langkah-Langkah Praktikum (Hands-on)

1. Ikuti modul Linux untuk memeriksa sistem dan memahami pengguna serta izin.
2. Jalankan server web lokal dan baca konfigurasi Nginx sebelum mengubahnya.
3. Buat image container dari aplikasi contoh dan uji pada komputer lokal.
4. Bandingkan deployment ke VPS Ubuntu, Vercel, dan Docker menggunakan panduan submodul.
5. Verifikasi halaman, HTTPS, log, dan prosedur penghentian atau pemulihan.
6. Hapus resource cloud latihan setelah sesi berakhir agar tidak menimbulkan biaya.

## Tugas Modul

Tulis runbook deployment aplikasi praktik: diagram permintaan, prasyarat, langkah publikasi, pemeriksaan log, pembaruan, dan pemulihan versi. Bandingkan VPS, Vercel, dan container dari sisi kontrol, perawatan, dan biaya; jangan lakukan publikasi publik tanpa persetujuan.

## Referensi

- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
- [Dokumentasi Nginx](https://nginx.org/en/docs/)
- [Dokumentasi Docker](https://docs.docker.com/)
- [Dokumentasi Vercel](https://vercel.com/docs)
