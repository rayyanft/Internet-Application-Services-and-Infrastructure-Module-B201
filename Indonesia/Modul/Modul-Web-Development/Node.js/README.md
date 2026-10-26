# Modul Web 5: Dasar Node.js

Node.js adalah runtime yang menjalankan JavaScript di luar browser—misalnya pada terminal atau server. Browser menyediakan `document`; program Node.js tidak otomatis memiliki DOM browser.

## Teori Dasar

Contoh [app.js](./app.js):

```js
const serviceName = process.argv[2];

if (!serviceName) {
  console.log("Cara pakai: node app.js <nama-layanan>");
} else {
  console.log(`Informasi untuk layanan ${serviceName} tersedia.`);
}
```

- `const serviceName`: membuat binding untuk nama layanan.
- `process`: objek global Node.js yang memberi informasi proses saat ini.
- `.argv`: array argumen command line; indeks `0` umumnya lokasi Node, indeks `1` lokasi berkas, dan indeks `2` argumen pertama pengguna.
- `[2]`: mengambil elemen array pada indeks 2; indeks JavaScript dimulai dari nol.
- `if (...)`: menjalankan blok pertama hanya bila kondisi benar.
- `!serviceName`: operator `!` membalik nilai truthy/falsy; string kosong atau `undefined` dianggap tidak ada.
- `console.log(...)`: mencetak informasi ke terminal.
- Backtick membentuk template literal; `${serviceName}` menyisipkan nilai variabel.
- `else`: memilih blok lain ketika kondisi `if` salah.

Node.js juga memiliki modul bawaan dan ekosistem npm. `package.json` mendeskripsikan proyek dan dependensi. Sebelum memasang paket, periksa tujuan, lisensi, serta kebutuhan paket tersebut.

## Alat dan Persiapan Praktikum

- Pasang Node.js LTS dari [situs resmi](https://nodejs.org/).
- Periksa dengan `node --version`: `node` menjalankan executable, `--version` meminta nomor versi.
- Buat folder, buka terminal pada folder tersebut, dan simpan kode sebagai `app.js`.

## Langkah-Langkah Praktikum (Hands-on)

1. Jalankan `node app.js` untuk melihat petunjuk ketika argumen kosong.
2. Jalankan `node app.js "Ruang Praktikum"`; Node menjalankan file, teks sesudahnya menjadi argumen pertama pengguna, dan tanda kutip mempertahankan spasi sebagai satu argumen.
3. Ubah pesan, jalankan ulang, lalu bandingkan hasil.
4. Jika membuat proyek paket, gunakan `npm init -y`. `npm` adalah pengelola paket, `init` membuat metadata proyek, `-y` menerima nilai awal yang disarankan; periksa `package.json` sesudahnya.
5. Catat versi Node yang dipakai agar rekan dapat mereproduksi hasil.

## Tugas Modul

Buat skrip CLI yang menerima nama layanan dan mengeluarkan ringkasan. Tangani input kosong, jelaskan `process.argv`, `if/else`, dan template literal. Jangan mencetak token, kata sandi, atau informasi pribadi.

## Referensi

- [Node.js Documentation](https://nodejs.org/docs/latest/api/)
- [Node.js: Running scripts](https://nodejs.org/en/learn/command-line/run-nodejs-scripts-from-the-command-line)
- [npm Documentation](https://docs.npmjs.com/)
