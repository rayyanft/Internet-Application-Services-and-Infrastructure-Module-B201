# Modul Mobile 1: Flutter Dasar

Selamat datang di Flutter! Flutter adalah toolkit antarmuka dari Google yang menggunakan bahasa Dart. Di modul ini kita membangun layar pertama dan mengenal widget sebagai bagian penyusun tampilan.

## Teori Dasar

Bayangkan layar aplikasi seperti papan yang dirakit dari balok. Setiap teks, tombol, kolom, bahkan seluruh halaman adalah **widget**. `StatelessWidget` cocok untuk tampilan yang tidak menyimpan perubahan sendiri; `StatefulWidget` digunakan jika tampilan berubah berdasarkan state. `Scaffold` menyediakan kerangka halaman Material seperti app bar dan body.

Contoh inti:

```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portal Lab')),
      body: const Center(child: Text('Halo, mahasiswa!')),
    );
  }
}
```

Penjelasan baris demi baris:

- `class HomePage extends StatelessWidget`: mendefinisikan komponen bernama `HomePage`; `extends` berarti mewarisi perilaku widget tanpa state lokal yang berubah.
- `const HomePage({super.key});`: konstruktor membuat widget. `const` menandai nilai tetap; `super.key` meneruskan identitas opsional ke kelas induk.
- `@override`: memberi tahu Dart bahwa metode berikut mengganti metode dari kelas induk.
- `Widget build(BuildContext context)`: fungsi yang menggambar tampilan dan mengembalikan sebuah widget. `context` berisi lokasi widget dalam pohon UI dan dapat dipakai untuk tema atau navigasi.
- `return Scaffold(...)`: mengembalikan kerangka layar.
- `AppBar(...)`: membuat bar atas; `title` berisi widget teks.
- `body`: area isi utama; `Center` menempatkan anaknya di tengah.
- `child`: menghubungkan satu widget anak; `Text` menampilkan tulisan.

Di berkas latihan, `import 'package:flutter/material.dart';` mengimpor pustaka widget Material; `package:` berarti pustaka berasal dari dependensi Flutter, bukan file lokal. `void main() { ... }` mendeklarasikan fungsi awal yang tidak mengembalikan nilai (`void`). `runApp(const LabApp())` memasang widget akar. `const` membuat objek widget yang nilainya tetap selama pembuatan tersebut; `()` memanggil konstruktor.

## Alat dan Persiapan Praktikum

- Pasang Flutter SDK dan editor sesuai [panduan resmi](https://docs.flutter.dev/get-started/install).
- Jalankan `flutter doctor` untuk memeriksa SDK, editor, dan emulator; baca pesan yang perlu diperbaiki.
- Gunakan emulator atau perangkat sendiri dengan izin; tidak perlu memasang aplikasi ke perangkat orang lain.

## Langkah-Langkah Praktikum (Hands-on)

1. Buat proyek dengan `flutter create portal_lab` (`flutter` menjalankan CLI, `create` membuat proyek, `portal_lab` nama folder).
2. Masuk ke folder dengan `cd portal_lab` (`cd` berarti berpindah direktori).
3. Jalankan `flutter run` setelah emulator menyala. Perintah ini membangun lalu menjalankan aplikasi.
4. Buka `lib/main.dart`, temukan `main()`—titik awal program—dan widget `MaterialApp`.
5. Buat widget `HomePage` seperti contoh dan jadikan `home` pada `MaterialApp`.
6. Ubah teks, simpan, lalu amati hot reload. Bandingkan hasil pada ukuran layar berbeda.

## Tugas Modul

Buat satu layar informasi laboratorium yang memiliki AppBar, pesan sambutan, tiga layanan, dan tombol. Beri nama variabel secara deskriptif, jelaskan widget yang dipakai, uji di emulator dan sertakan catatan ukuran layar yang dicoba.

## Referensi

- [Flutter: Get started](https://docs.flutter.dev/get-started)
- [Dart language tour](https://dart.dev/language)
