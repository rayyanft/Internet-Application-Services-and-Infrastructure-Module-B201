# Modul Mobile 3: State Management

State management adalah cara aplikasi menyimpan dan membagikan data yang dapat berubah. Kita mulai dengan state lokal Flutter, lalu mengenali kapan state perlu dibagikan lebih luas.

## Teori Dasar

State mirip papan skor: nilainya berubah setelah suatu aksi dan layar perlu menampilkan angka terbaru. `StatefulWidget` menyediakan objek `State`; `setState` memberi tahu Flutter agar membangun ulang tampilan yang bergantung pada data tersebut. Untuk nilai yang hanya digunakan satu widget, state lokal sering cukup. Jika banyak layar berbagi data, pola seperti `ChangeNotifier`, Provider, atau solusi lain dapat membantu.

```dart
int count = 0;
setState(() { count = count + 1; });
```

- `int`: tipe data bilangan bulat.
- `count`: nama variabel penghitung.
- `= 0`: memberi nilai awal nol.
- `setState(...)`: menandai state berubah agar Flutter menjadwalkan render ulang.
- `() { ... }`: fungsi anonim yang menjadi argumen; kurung kurawal membatasi isi fungsi.
- `count = count + 1`: baca nilai saat ini, tambah satu, lalu simpan kembali.

Pada contoh lengkap, `void main() => runApp(const CounterApp());` memakai **arrow function body** Dart: `=>` menggantikan blok `{ return ...; }` untuk satu ekspresi. `CounterPage extends StatefulWidget` menandai widget yang memasangkan konfigurasi dengan objek `State`; metode `createState()` membuat `_CounterPageState`. Garis bawah awal pada `_CounterPageState` menandakan nama privat dalam library Dart tersebut. `Column` menyusun anak secara vertikal; `mainAxisSize: MainAxisSize.min` membatasi tinggi kolom pada kebutuhan kontennya. `children: [...]` adalah daftar widget. `onPressed` menerima callback, dan `ElevatedButton`/`TextButton` menentukan tampilan tombol.

## Alat dan Persiapan Praktikum

- Flutter SDK dan emulator sebagaimana modul Flutter dasar.
- Proyek latihan Flutter sederhana.
- Baca dokumentasi state Flutter sebelum memilih pustaka tambahan.

## Langkah-Langkah Praktikum (Hands-on)

1. Buat `StatefulWidget` bernama penghitung praktikum.
2. Deklarasikan `int count = 0` pada kelas State, bukan di dalam `build`.
3. Tambahkan tombol dengan callback `onPressed`.
4. Di callback, panggil `setState` untuk menaikkan `count`.
5. Tampilkan nilai melalui `Text('$count')`; `$count` menyisipkan nilai variabel ke dalam string Dart.
6. Tambahkan tombol reset. Periksa bahwa kedua tombol mengubah state dengan benar.

## Tugas Modul

Buat penghitung peminjaman fiktif dengan tombol tambah dan reset. Jelaskan apa yang memicu `setState`, apa yang dirender ulang, dan mengapa variabel state tidak dideklarasikan ulang pada setiap pemanggilan `build`.

## Referensi

- [Flutter: State management](https://docs.flutter.dev/data-and-backend/state-mgmt/intro)
- [Flutter: Stateful widgets](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)
