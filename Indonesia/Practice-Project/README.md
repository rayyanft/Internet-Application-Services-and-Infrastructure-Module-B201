# Practice Project: Portal Informasi Laboratorium

Proyek praktik menyatukan materi kurikulum menjadi sebuah produk kecil: portal responsif yang membantu mahasiswa menemukan informasi layanan laboratorium. Kerjakan dari kebutuhan pengguna hingga publikasi; setiap tahap memiliki hasil yang dapat ditinjau.

## Teori Dasar

Produk bukan hanya kode. Kita mulai dari masalah pengguna, buat rancangan, membangun antarmuka, menghubungkan data, lalu menjalankan layanan dengan aman. Untuk pemula, fitur awal sengaja dibatasi: informasi publik dan jadwal contoh. Login, data pribadi, pembayaran, serta administrasi belum termasuk ruang lingkup.

Alur data dapat dibayangkan sebagai percakapan: browser menampilkan halaman; ketika perlu data, frontend mengirim request HTTP ke API; backend memeriksa permintaan dan membaca sumber data; server mengirim JSON kembali; frontend mengubah hasil menjadi tampilan. Jika salah satu tahap gagal, pengguna harus menerima pesan yang jujur—bukan data palsu yang tampak berhasil.

## Alat dan Persiapan Praktikum

- Editor kode, browser, Git, dan terminal.
- Figma untuk prototipe, Node.js/npm untuk frontend web, serta alat tambahan sesuai pilihan framework.
- SQLite atau sumber data fiktif pada tahap awal; akun server hanya setelah mendapat izin pembimbing.
- Buat repositori dengan README, `.gitignore`, dan data contoh. Jangan simpan token, kata sandi, private key, alamat pribadi, atau data mahasiswa.
- Sebelum memakai layanan cloud, pastikan akun disetujui dan pahami batas gratis serta potensi biaya.

## Langkah-Langkah Praktikum (Hands-on)

### Tahap 1 — Masalah dan rancangan

1. Rumuskan masalah pengguna dalam satu kalimat dan tetapkan ruang lingkup versi awal.
2. Buat user flow untuk menemukan layanan dan melihat jadwal.
3. Buat wireframe serta prototipe Figma. Uji tugas dengan teman dan catat hambatan.

### Tahap 2 — Halaman web

4. Gunakan HTML semantik: `header`, `nav`, `main`, `section`, dan `footer`.
5. Tambahkan styling CSS yang responsif dan dapat dibaca dengan keyboard.
6. Gunakan JavaScript untuk filter daftar. Validasi bahwa pesan hasil kosong dan error mudah dipahami.
7. Bila melanjutkan dengan React, pecah UI menjadi komponen, kirim data melalui props, dan simpan interaksi yang berubah pada state.

### Tahap 3 — Data dan layanan

8. Tentukan bentuk data dengan contoh seperti `{ id, name, description, schedule }`. `id` mengidentifikasi entri; properti lain menyimpan informasi tampilan. Jangan menaruh data rahasia di frontend.
9. Tambahkan backend Node.js/API hanya bila diperlukan. Mulai dengan endpoint GET baca-saja dan data fiktif.
10. Simpan data latihan di database lokal bila sesuai. Gunakan query parameterized bila input pengguna digunakan dalam SQL.
11. Uji sukses, data kosong, input tidak valid, server gagal, dan koneksi terputus.

### Tahap 4 — Mobile dan publikasi

12. Implementasikan satu layar mobile dengan Flutter atau React Native sebagai latihan tambahan.
13. Uji layar kecil, navigasi keyboard pada web, label, kontras, dan pesan status.
14. Pilih deployment dengan persetujuan: preview Vercel untuk frontend, container Docker untuk kemasan, atau VPS Ubuntu yang dikelola laboratorium.
15. Verifikasi URL, HTTPS, log, dan prosedur rollback. Setelah latihan, hentikan atau hapus resource cloud sesuai arahan.

## Tugas Modul

Serahkan prototipe, tautan repositori, README cara menjalankan, hasil pengujian, dan tautan preview/deployment yang telah disetujui. Sertakan:

- Diagram arsitektur dan alur data.
- Daftar fitur yang selesai serta batasan yang diketahui.
- Bukti pengujian untuk ukuran ponsel/desktop dan kondisi jaringan gagal.
- Tiga keputusan desain/teknis beserta alasannya.
- Runbook deployment, cara memeriksa log, cara rollback, dan bukti bahwa tidak ada rahasia ter-commit.
- Refleksi: tiga hal yang dipelajari, kendala tersulit, dan langkah peningkatan berikutnya.

## Referensi

- [MDN Web Docs](https://developer.mozilla.org/)
- [React Learn](https://react.dev/learn)
- [Express Documentation](https://expressjs.com/)
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Docker Documentation](https://docs.docker.com/)
- [Vercel Documentation](https://vercel.com/docs)
