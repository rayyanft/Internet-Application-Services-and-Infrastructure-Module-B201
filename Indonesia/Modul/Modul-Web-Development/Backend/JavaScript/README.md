# Modul Web 4: Dasar JavaScript untuk Browser

JavaScript menambahkan perilaku pada halaman web. HTML menyusun konten, CSS menata tampilannya, sedangkan JavaScript merespons tindakan pengguna dan memperbarui DOM.

## Teori Dasar

Variabel menyimpan nilai. `const` membuat nama binding yang tidak dapat ditetapkan ulang; `let` dipakai bila binding perlu berubah. Nilai yang disimpan masih dapat berupa objek yang properti internalnya berubah. Fungsi adalah kumpulan instruksi yang dapat dipanggil. DOM adalah representasi dokumen yang dapat dibaca dan diubah skrip.

Contoh:

```js
const button = document.getElementById("status-button");
button.addEventListener("click", () => {
  document.getElementById("status").textContent = "Jadwal tersedia";
});
```

- `const button`: deklarasi binding bernama `button`; `const` mencegah binding diarahkan ke nilai lain.
- `=`: operator penugasan saat inisialisasi.
- `document`: objek browser yang mewakili halaman.
- `.getElementById(...)`: metode mencari elemen dengan nilai atribut `id`; teks dalam tanda kutip adalah string.
- `.`: operator akses properti/metode.
- `button.addEventListener`: mendaftarkan fungsi yang dipanggil saat event terjadi.
- `"click"`: nama event klik.
- `() => { ... }`: arrow function tanpa parameter; `=>` memisahkan parameter dan tubuh fungsi.
- `.textContent`: properti teks elemen; memakai teks biasa menghindari menafsirkan string sebagai HTML.
- `;`: akhir pernyataan JavaScript.

Event listener bekerja saat interaksi terjadi, bukan ketika fungsi pertama kali dideklarasikan. Browser mengeksekusi callback setelah klik. `defer` pada tag `script` meminta browser menjalankan berkas setelah HTML selesai dibaca.

## Alat dan Persiapan Praktikum

- Editor kode, browser, dan Developer Tools.
- Buka [index.html](./index.html) dan [script.js](./script.js) dalam folder yang sama.
- Pastikan HTML memuat `<script src="script.js" defer></script>`; `src` menunjuk berkas dan `defer` mengatur waktu eksekusi.

## Langkah-Langkah Praktikum (Hands-on)

1. Baca `id` pada elemen paragraf dan tombol di HTML.
2. Cocokkan nilai id itu dengan string pada `getElementById` di JavaScript; ejaan harus sama.
3. Jalankan halaman dan tekan tombol. Callback mengubah teks paragraf melalui `textContent`.
4. Buka tab Console pada Developer Tools. Baca error dari atas ke bawah; nomor baris membantu menemukan sumber.
5. Ubah pesan dan uji ulang. Tambahkan kondisi sederhana dengan `if` bila tugas memerlukan cabang keputusan.

## Tugas Modul

Buat pencarian daftar layanan. Gunakan variabel bernama jelas, event `submit`, `preventDefault()` agar halaman tidak reload, dan tampilkan pesan saat tidak ada hasil. Jelaskan fungsi tiap variabel, callback, serta alur dari aksi pengguna sampai DOM diperbarui.

## Referensi

- [MDN: JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [MDN: DOM scripting](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting)
- [JavaScript.info](https://javascript.info/)
