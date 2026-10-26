# Modul Mobile 4: Integrasi API

Pada modul ini aplikasi mobile meminta data dari API. Kita akan melihat alur request, respons JSON, keadaan memuat, hasil, dan error tanpa menampilkan data secara keliru ketika jaringan gagal.

## Teori Dasar

API web menerima request HTTP dan membalas dengan status serta data (sering berupa JSON). `async` menandai fungsi yang dapat menunggu operasi asinkron; `await` menunggu hasil tanpa membekukan antarmuka. `Future` mewakili nilai yang baru tersedia nanti. Jangan menganggap jaringan selalu tersedia dan jangan menaruh API secret di aplikasi klien.

Dalam contoh, paket `http` mengirim `GET`; `response.statusCode` adalah kode HTTP dan `jsonDecode` mengubah teks JSON menjadi objek Dart. `try/catch` menangkap error agar halaman dapat menampilkan pesan gagal.

Pembacaan contoh `services.dart`: `import 'dart:convert'` memuat fungsi konversi JSON dari Dart SDK; `import 'package:http/http.dart' as http` memuat paket HTTP dan memberi nama pendek `http`. `Future<List<String>>` berarti fungsi menghasilkan, pada masa mendatang, daftar string. `loadServices()` adalah deklarasi fungsi tanpa parameter; `async` mengizinkan `await`. `final uri` adalah variabel yang hanya dapat diberi nilai sekali, dan `Uri.parse(...)` memvalidasi/membentuk alamat. `http.get(uri)` mengirim GET. `final response` menyimpan objek balasan. Kondisi `statusCode < 200 || statusCode >= 300` memakai operator kurang-dari, lebih-dari-sama-dengan, serta OR (`||`) untuk menolak semua respons di luar rentang sukses. `throw Exception(...)` membuat kegagalan terlihat pada pemanggil. `jsonDecode(response.body)` mengurai body JSON; `as List<dynamic>` memberi tahu Dart bahwa hasil diharapkan berupa daftar, tetapi tipe ini tetap perlu divalidasi dalam aplikasi produksi. `take(5)` membatasi contoh ke lima item; `map((item) => ...)` mengubah tiap item menjadi judul; `toList()` mengumpulkan hasil menjadi daftar.

## Alat dan Persiapan Praktikum

- Flutter SDK dan koneksi internet.
- Tambahkan dependensi `http` dengan petunjuk resmi paket Flutter: `flutter pub add http`. `flutter` memanggil alat, `pub add` menambahkan pustaka ke konfigurasi, dan `http` nama paket.
- Periksa kebijakan endpoint demonstrasi dan gunakan data publik.

## Langkah-Langkah Praktikum (Hands-on)

1. Tambahkan contoh fungsi `loadServices` pada aplikasi Flutter.
2. Tampilkan indikator memuat saat request sedang berlangsung.
3. Periksa status respons sebelum membaca body.
4. Ubah JSON menjadi model atau daftar data yang digunakan layar.
5. Tangani error koneksi dan tampilkan pesan serta tombol coba lagi.
6. Uji dengan koneksi aktif dan kondisi offline; jangan mencatat token atau data sensitif ke log.

## Tugas Modul

Buat layar daftar layanan dari endpoint publik atau mock lokal. Tangani status loading, sukses dengan daftar, hasil kosong, dan error jaringan. Jelaskan fungsi `async`, `await`, `Future`, pemeriksaan status, dan strategi privasi yang dipakai.

## Referensi

- [Flutter: Fetch data from the internet](https://docs.flutter.dev/cookbook/networking/fetch-data)
- [Dart: Asynchronous programming](https://dart.dev/language/async)
- [http package](https://pub.dev/packages/http)
