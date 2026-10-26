# Modul Web 1: Pengenalan dan Dasar-Dasar HTML

Selamat datang di modul HTML! HTML (*HyperText Markup Language*) menyusun struktur dan makna halaman web. Kita akan memulai dari kerangka kosong hingga halaman informasi yang dapat dibaca browser dan teknologi bantu.

## Teori Dasar

Bayangkan website sebagai bangunan dengan tiga unsur: **HTML adalah kerangka**, **CSS adalah tampilan dan tata ruang**, dan **JavaScript adalah mekanisme interaktif**. HTML bukan bahasa pemrograman untuk menghitung, melainkan bahasa markah yang menandai peran setiap konten.

### Anatomi elemen

```html
<p class="pesan">Halo!</p>
```

- `<p`: kurung sudut buka diikuti nama elemen `p`, singkatan paragraf.
- `class="pesan"`: atribut `class` memberi nama kelompok untuk styling atau pemilihan dari JavaScript; nilai atribut dibungkus tanda kutip.
- `>`: mengakhiri tag pembuka.
- `Halo!`: konten yang akan ditampilkan.
- `</p>`: tag penutup; garis miring menunjukkan akhir elemen.

Elemen lengkap mencakup tag pembuka, isi, dan tag penutup. Sebagian elemen kosong (*void*) seperti `img` tidak memiliki penutup terpisah. Komentar `<!-- catatan -->` membantu pengembang dan tidak tampil sebagai teks halaman.

### Struktur halaman

```html
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Latihan HTML</title>
</head>
<body>
  <h1>Portal Laboratorium</h1>
</body>
</html>
```

- `<!DOCTYPE html>` memberi tahu browser bahwa dokumen memakai standar HTML modern.
- `<html lang="id">` adalah elemen akar; atribut `lang` menyatakan bahasa konten utama agar alat bantu dan mesin pencari memahami bahasa.
- `<head>` berisi informasi dokumen yang bukan konten utama yang terlihat.
- `meta charset="UTF-8"` mendukung karakter Unicode, termasuk aksara Bahasa Indonesia.
- `meta name="viewport"...` membuat lebar layout mengikuti perangkat dan skala awal 1.
- `<title>` menetapkan judul tab browser.
- `<body>` membungkus konten yang tampil pada halaman.
- `<h1>` adalah judul utama; `h2` hingga `h6` membentuk subjudul berjenjang, bukan sekadar ukuran huruf.

### Konten, tautan, gambar, dan semantik

`<p>` menandai paragraf; `<a href="...">` membuat tautan; `href` berisi alamat tujuan. `ul` dan `ol` membungkus daftar tak berurut/berurut, sedangkan setiap butir menggunakan `li`. Gambar memakai `<img src="foto.jpg" alt="Deskripsi foto">`: `src` menunjukkan berkas, `alt` menyediakan pengganti tekstual bagi pengguna pembaca layar atau saat gambar gagal dimuat.

Tabel (`table`, `thead`, `tbody`, `tr`, `th`, `td`) tepat untuk data tabular, bukan untuk mengatur seluruh layout. Elemen semantik `header`, `nav`, `main`, `section`, `article`, dan `footer` menyampaikan fungsi bagian halaman. `div` adalah wadah umum bila belum ada elemen semantik yang cocok; `span` adalah wadah inline untuk sebagian kecil teks.

## Alat dan Persiapan Praktikum

- VS Code atau editor teks lain.
- Chrome, Firefox, atau Edge.
- Buat folder latihan, lalu buat `index.html`; ekstensi `.html` memberi tahu editor bahwa berkas berisi HTML.
- Live Server boleh digunakan untuk menyegarkan halaman otomatis, tetapi membuka berkas langsung di browser juga cukup untuk contoh ini.

## Langkah-Langkah Praktikum (Hands-on)

1. Buka [index.html](./index.html), ketik kerangka HTML, simpan dengan UTF-8, lalu buka di browser.
2. Tambahkan `header`, `nav`, `main`, minimal dua `section`, dan `footer`; gunakan satu `h1` yang menggambarkan topik halaman.
3. Buat daftar layanan dengan `ul`/`li` dan tautan kontak dengan teks tautan yang menjelaskan tujuannya.
4. Tambahkan tabel jadwal contoh menggunakan `thead` untuk kepala kolom dan `tbody` untuk data. Gunakan `th` sebagai sel judul serta `td` untuk isi.
5. Tambahkan gambar hanya jika tersedia; tulis `alt` yang bermakna, atau `alt=""` bila gambar dekoratif.
6. Buka Developer Tools dan periksa pohon elemen. Perbaiki elemen yang lupa ditutup atau hierarki heading yang melompat tanpa alasan.

## Tugas Modul

Buat `tugas-modul1.html` berisi struktur HTML lengkap, header/nav/dua section/footer, kartu profil di dalam `div`, gambar dengan `alt`, tabel keahlian tiga baris, daftar hobi, daftar langkah belajar, tautan GitHub milik Anda, satu iframe dari sumber yang diizinkan, dan minimal dua komentar. Gunakan data yang nyaman dipublikasikan dan uji halaman tanpa CSS.

## Referensi

- [MDN: HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [WHATWG HTML Living Standard](https://html.spec.whatwg.org/)
- [W3C WAI: Images](https://www.w3.org/WAI/tutorials/images/)
