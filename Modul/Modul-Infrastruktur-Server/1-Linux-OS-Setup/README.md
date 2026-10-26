# Infrastruktur 1: Persiapan Linux Server

Modul ini mengenalkan terminal dan pemeriksaan dasar Ubuntu Linux dalam mesin virtual. Kita tidak mengubah partisi komputer utama dan tidak menjalankan perintah berhak istimewa tanpa memahami akibatnya.

## Teori Dasar

Sistem operasi mengatur proses dan sumber daya. Terminal adalah cara mengetik perintah; shell membaca perintah dan menjalankannya. `pwd` menunjukkan direktori saat ini, `ls` menampilkan isi direktori, dan `whoami` menunjukkan akun aktif. `sudo` meminta hak administrator untuk satu perintah; hak tersebut harus digunakan seperlunya.

Contoh:

```bash
pwd
whoami
df -h
```

- `pwd`: singkatan *print working directory*, mencetak lokasi folder sekarang.
- `whoami`: mencetak nama pengguna efektif yang menjalankan shell.
- `df`: menampilkan penggunaan ruang filesystem; `-h` membuat ukuran mudah dibaca manusia seperti GB.
- Baris baru berarti perintah terpisah; ketik dan amati hasil satu per satu.

## Alat dan Persiapan Praktikum

- VirtualBox, UTM, atau platform virtualisasi yang disetujui serta ISO Ubuntu Server resmi.
- Cadangkan pekerjaan sebelum membuat mesin virtual; jangan pilih disk fisik utama sebagai target instalasi.
- Gunakan jaringan virtual NAT selama latihan awal.
- Dokumentasi Ubuntu Server dan akses terminal ke mesin virtual.

## Langkah-Langkah Praktikum (Hands-on)

1. Buat VM baru dengan nama yang jelas dan alokasi sumber daya yang cukup untuk lab.
2. Pasang ISO Ubuntu resmi sebagai media boot virtual.
3. Ikuti installer dan pastikan disk target adalah disk virtual yang baru dibuat.
4. Buat akun praktikum dengan kata sandi kuat; jangan gunakan ulang kata sandi pribadi.
5. Setelah masuk, jalankan `uname -a`, `whoami`, `pwd`, `df -h`, dan `free -h`.
6. Pelajari `sudo apt update`: `sudo` meminta izin administrator, `apt` pengelola paket Ubuntu, dan `update` menyegarkan indeks paket—bukan memasang semua pembaruan aplikasi.
7. Catat keluaran yang relevan, lalu matikan VM secara normal dari sistem operasi.

## Tugas Modul

Buat catatan inventaris VM yang berisi versi OS, pengguna, ruang disk, memori, dan langkah shutdown. Jelaskan setiap perintah yang digunakan dan bedakan akun biasa dari hak administrator.

## Referensi

- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
- [Ubuntu installation tutorial](https://ubuntu.com/tutorials/install-ubuntu-server)
