# Infrastruktur 4: Metode Deployment

Modul ini membandingkan tiga jalur publikasi: VPS Ubuntu, Vercel, dan Docker. Tujuannya memahami prasyarat dan alur, bukan menyalin perintah ke server publik tanpa izin.

## Teori Dasar

Deployment menempatkan aplikasi pada lingkungan yang dapat diakses pengguna. VPS memberi kontrol atas sistem operasi dan memerlukan pemeliharaan; Vercel menyederhanakan publikasi proyek frontend; Docker menyamakan kemasan aplikasi tetapi tetap membutuhkan host dan pengelolaan. DNS menghubungkan nama domain ke layanan, sementara HTTPS melindungi komunikasi browser-server.

Contoh perintah VPS:

```bash
ssh nama-pengguna@alamat-server
sudo systemctl status nginx
```

- `ssh`: klien *Secure Shell* untuk membuat sesi terminal terenkripsi ke host yang sah.
- `nama-pengguna`: akun yang memang dibuat untuk Anda; jangan gunakan akun orang lain.
- `alamat-server`: nama atau IP server yang disediakan pengelola.
- `sudo`: meminta hak administrator untuk satu perintah jika akun diizinkan.
- `systemctl`: berinteraksi dengan layanan yang dikelola systemd.
- `status nginx`: membaca kondisi layanan Nginx, bukan mengubah konfigurasinya.

Untuk container, `docker run -p 8080:80 image` menjalankan proses dari image dan memetakan port host 8080 ke port container 80. `run` membuat container baru; `-p` menerbitkan port; nama image memilih paket aplikasi. Pemetaan publik berisiko bila host terbuka—untuk latihan gunakan localhost dan firewall yang disetujui.

Perintah contoh lain `scp -r dist nama-pengguna@alamat-server:~/portal-lab` menyalin direktori `dist` melalui SSH ke folder `portal-lab` di home pengguna remote. `scp` adalah program salin aman; `-r` menyalin direktori secara rekursif; `dist` adalah folder hasil build; bagian setelah `@` menunjukkan host; titik dua memisahkan host dari path tujuan; `~` berarti home akun remote. Gunakan hanya host/path yang diizinkan.

## Alat dan Persiapan Praktikum

- Proyek Git dengan README, build command, dan tanpa rahasia.
- Untuk VPS: akun dan alamat dari pembimbing, SSH key pribadi yang dijaga, serta persetujuan biaya.
- Untuk Vercel: akun yang disetujui dan repositori yang tidak mengandung kredensial.
- Untuk Docker: Docker Engine pada komputer atau host lab.
- Domain dan sertifikat hanya dikelola oleh pemilik/administrator yang berwenang.

## Langkah-Langkah Praktikum (Hands-on)

### A. VPS Ubuntu

1. Minta host uji serta akun dari administrator. Verifikasi nama host melalui kanal resmi.
2. Hubungkan dengan `ssh nama-pengguna@alamat-server`; `ssh` membuka sesi aman, `@` memisahkan akun dan host. Jangan mengabaikan peringatan identitas host.
3. Setelah masuk, cek layanan menggunakan `sudo systemctl status nginx`. Jangan mengubah layanan bersama tanpa persetujuan.
4. Salin build ke home akun yang disediakan, misalnya dengan `scp -r dist nama-pengguna@alamat-server:~/portal-lab`. Jangan menyalin ke folder sistem atau mengubah izin tanpa runbook administrator.
5. Minta administrator atau ikuti runbook lab untuk memasang build pada document root, memeriksa konfigurasi dengan `sudo nginx -t`, lalu memuat ulang layanan memakai `sudo systemctl reload nginx`. `nginx -t` menguji sintaks; `systemctl reload nginx` meminta layanan membaca ulang konfigurasi. `sudo` meminta hak administrator untuk perintah tersebut.
6. Buka halaman dan periksa log sesuai instruksi pengelola; keluar dari sesi remote dengan `exit`.

### B. Vercel

1. Pastikan proyek frontend bisa dibangun secara lokal dan README menjelaskan perintah build.
2. Hubungkan repositori ke dashboard Vercel yang telah disetujui atau gunakan CLI resmi. Contoh alur CLI sesuai dokumentasi versi yang dipakai: `npm install --global vercel` memasang CLI (`npm` pengelola paket, `install` aksi pemasangan, `--global` membuat perintah tersedia bagi pengguna, `vercel` nama paket); `vercel` memulai setup/deployment preview; `vercel --prod` meminta deployment produksi. Tinjau target dan konfigurasi sebelum menjalankan, karena opsi CLI dapat berubah antarversi.
3. Periksa framework, build command, output directory, dan environment variables sebelum men-deploy.
4. Jangan mengirim secret pada kode klien. Nilai yang perlu dirahasiakan hanya boleh dipakai pada fungsi server sesuai panduan layanan.
5. Buka URL preview, uji navigasi, lalu minta tinjauan sebelum publikasi produksi.

### C. Docker

1. Bangun image dari Dockerfile dengan tag versi yang jelas.
2. Jalankan lokal memakai `docker run --rm -p 127.0.0.1:8080:80 nama-image:tag`. `docker` memanggil CLI; `run` membuat dan memulai container; `--rm` membuang container saat berhenti; `-p` memetakan port; `127.0.0.1` membatasi port host ke komputer sendiri; `8080` port host; `80` port container; `nama-image:tag` memilih image beserta label versinya.
3. Uji `http://localhost:8080`, lalu hentikan dengan `Ctrl+C`.
4. Untuk server lab, minta prosedur registry dan deployment resmi; jangan mengirim image atau membuka port tanpa izin.

## Tugas Modul

Buat tabel perbandingan VPS Ubuntu, Vercel, dan Docker: tingkat kontrol, kebutuhan perawatan, kelebihan, risiko, dan biaya yang perlu diperiksa. Pilih metode untuk proyek praktik dan tulis runbook verifikasi, log, rollback, serta penghapusan resource. Lakukan deployment publik hanya setelah persetujuan.

## Referensi

- [OpenSSH Manual](https://man.openbsd.org/ssh)
- [systemctl Manual](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html)
- [Vercel Documentation](https://vercel.com/docs)
- [Docker run reference](https://docs.docker.com/reference/cli/docker/container/run/)
- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
