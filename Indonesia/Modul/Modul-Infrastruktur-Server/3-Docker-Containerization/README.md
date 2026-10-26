# Infrastruktur 3: Container dengan Docker

Docker mengemas aplikasi dan dependensinya menjadi image; container adalah proses terisolasi yang berjalan dari image tersebut. Analogi: image adalah resep dan bahan, container adalah hidangan yang sedang disajikan.

## Teori Dasar

Dockerfile berisi instruksi untuk membangun image. `FROM` memilih image dasar, `COPY` menyalin berkas, dan `CMD` menetapkan proses utama. Container bukan mesin virtual penuh; ia berbagi kernel host, sehingga tetap perlu memperhatikan sumber image, izin, port, dan rahasia.

```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

- `FROM nginx:alpine`: memilih image Nginx varian Alpine sebagai dasar.
- `COPY sumber tujuan`: menyalin berkas dari folder build ke filesystem image.
- `EXPOSE 80`: dokumentasi bahwa layanan dalam container menggunakan port 80; instruksi ini sendiri tidak menerbitkan port ke host.

## Alat dan Persiapan Praktikum

- Docker Engine/Desktop dari sumber resmi.
- Terminal, Dockerfile, dan halaman HTML statis latihan.
- Jangan menjalankan image tidak dikenal dengan akses istimewa atau memasukkan kredensial ke Dockerfile.

## Langkah-Langkah Praktikum (Hands-on)

1. Simpan Dockerfile bersama `index.html`.
2. Bangun image dengan `docker build -t lab-web:latihan .`. `docker` adalah CLI, `build` membangun image, `-t` memberi tag, dan titik berarti konteks build folder aktif.
3. Jalankan `docker run --rm -p 8080:80 lab-web:latihan`. `run` membuat container, `--rm` membuang container saat berhenti, `-p` memetakan port host 8080 ke port container 80.
4. Buka `http://localhost:8080` dan periksa halaman.
5. Tekan `Ctrl+C` untuk menghentikan container foreground dan pastikan container latihan tidak lagi berjalan.

## Tugas Modul

Buat image halaman proyek, jalankan pada port lokal yang berbeda, dan dokumentasikan build serta run. Jelaskan perbedaan image dengan container dan mengapa rahasia tidak ditulis dalam Dockerfile.

## Referensi

- [Docker Get Started](https://docs.docker.com/get-started/)
- [Dockerfile reference](https://docs.docker.com/reference/dockerfile/)
