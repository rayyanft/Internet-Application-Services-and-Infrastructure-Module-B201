# Modul Mobile 2: React Native Dasar

Di modul ini kita membuat antarmuka mobile menggunakan React Native dan Expo. React Native menerjemahkan komponen JavaScript menjadi elemen antarmuka native, bukan halaman HTML browser.

## Teori Dasar

Komponen adalah fungsi yang mengembalikan tampilan. `View` menjadi wadah, `Text` menampilkan teks, dan `Button` menyediakan kontrol tekan. JSX adalah sintaks deklaratif mirip XML di dalam JavaScript. Props merupakan masukan yang diberikan ke komponen; state adalah nilai yang dapat berubah.

```jsx
export default function App() {
  return (
    <View>
      <Text>Portal Laboratorium</Text>
    </View>
  );
}
```

- `export default`: menjadikan `App` ekspor utama yang dapat dipakai proyek.
- `function App()`: mendefinisikan fungsi komponen bernama `App`; tanda kurung menampung parameter (di sini belum ada).
- `return`: mengembalikan tampilan yang harus dirender.
- `<View>`: membuat wadah layout; komponen ditutup dengan `</View>`.
- `<Text>`: komponen teks khusus React Native. Teks biasa harus berada di dalam `Text`.
- `()`: membungkus JSX beberapa baris agar sintaks JavaScript tetap rapi.

Pada contoh `App.js`, `import { StyleSheet, Text, View } from "react-native";` mengambil tiga ekspor bernama dari paket. Kurung kurawal pada import berarti hanya nama yang disebut yang diambil. `ServiceCard({ title, description })` menggunakan destructuring parameter untuk membaca props. Objek `styles` dibuat oleh `StyleSheet.create`; `flex: 1` meminta container mengisi ruang, `padding` mengatur jarak dalam, dan `fontSize`/`fontWeight` mengatur tampilan teks. Properti bernilai string seperti `"bold"` adalah nilai style, bukan variabel.

## Alat dan Persiapan Praktikum

- Pasang Node.js versi LTS, editor, dan aplikasi Expo Go di perangkat uji (atau siapkan emulator).
- Ikuti [panduan Expo](https://docs.expo.dev/get-started/create-a-project/).
- Jangan menggunakan perangkat atau jaringan yang tidak Anda miliki izin untuk menguji.

## Langkah-Langkah Praktikum (Hands-on)

1. Buat proyek melalui `npx create-expo-app@latest portal-mobile`. `npx` menjalankan alat paket tanpa perlu instalasi global, perintah berikut nama generator, dan argumen terakhir nama proyek.
2. Pindah folder dengan `cd portal-mobile`.
3. Mulai server pengembangan dengan `npx expo start`; baca kode QR hanya dari perangkat Anda sendiri.
4. Buka file layar awal dan buat komponen `View`, `Text`, serta `Button`.
5. Tambahkan gaya menggunakan `StyleSheet.create`, yang mengelompokkan aturan layout.
6. Uji di emulator atau Expo Go dan amati log jika ada error.

## Tugas Modul

Buat halaman React Native yang menampilkan nama laboratorium, dua layanan, dan tombol aksi. Gunakan komponen terpisah untuk kartu layanan dan kirim judul melalui props. Jelaskan perbedaan `View` dengan `Text`, serta tangkap layar hasil uji.

## Referensi

- [React Native: Core Components](https://reactnative.dev/docs/components-and-apis)
- [Expo: Create a project](https://docs.expo.dev/get-started/create-a-project/)
