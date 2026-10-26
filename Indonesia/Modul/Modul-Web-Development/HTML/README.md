# Modul Web 1: HTML — Struktur, Konten, dan Semantik

HTML (*HyperText Markup Language*) menjelaskan struktur dan makna konten web. Browser membaca elemen HTML lalu membentuk DOM (*Document Object Model*); CSS mengatur tampilannya dan JavaScript dapat mengubah atau menanggapi interaksi. HTML sendiri bukan bahasa untuk perhitungan atau logika program.

## Tujuan Pembelajaran

Setelah menyelesaikan modul ini, peserta dapat:

- menjelaskan anatomi elemen, tag, atribut, dan struktur dokumen;
- memilih elemen semantik sesuai fungsi konten;
- membuat tautan, daftar, tabel data, gambar, dan formulir sederhana;
- memberi nama dan hubungan yang jelas agar dokumen mudah dinavigasi dengan keyboard dan pembaca layar;
- memeriksa hasil dokumen di browser dan memperbaiki struktur yang keliru.

## 1. Anatomi Elemen dan Atribut

```html
<p class="pesan">Halo, dunia!</p>
```

- `<p>` adalah **tag pembuka**; `p` merupakan nama elemen paragraf.
- `class="pesan"` adalah **atribut**. Nama atributnya `class`, nilainya `pesan`; class dapat dipakai bersama oleh beberapa elemen untuk CSS atau pemilihan DOM.
- `>` mengakhiri tag pembuka.
- `Halo, dunia!` adalah konten teks.
- `</p>` adalah **tag penutup**. Garis miring menandai akhir elemen.
- Keseluruhan tag pembuka, isi, dan tag penutup disebut **elemen**.

Elemen dapat bersarang. Tutup elemen bagian dalam sebelum elemen luar: `<p>Belajar <strong>HTML</strong>.</p>`. Elemen kosong (*void*) tidak membungkus isi dan tidak memakai tag penutup, misalnya `img`, `br`, `hr`, `input`, `meta`, dan `link`. Tulis komentar sebagai `<!-- catatan untuk pengembang -->`; komentar tidak ditampilkan sebagai konten halaman. Indentasi tidak mengubah makna HTML, tetapi membantu membaca struktur.

Atribut global yang sering digunakan:

- `id`: pengenal unik dalam satu dokumen, sering menjadi tujuan tautan seperti `href="#kontak"`.
- `class`: satu atau beberapa nama kelompok yang dapat dipakai berulang.
- `lang`: bahasa konten, misalnya `lang="id"`; pada teks berbahasa berbeda, bahasa dapat ditandai lagi pada elemen terkait.
- `title`: informasi tambahan yang biasanya muncul sebagai tooltip; jangan jadikan satu-satunya tempat menyimpan instruksi penting.
- `hidden`: menyembunyikan elemen dari tampilan dan pohon aksesibilitas.
- `data-*`: menyimpan data khusus, misalnya `data-id="12"`, yang dapat dibaca JavaScript.

Nilai atribut umumnya ditulis dalam tanda kutip. Atribut boolean seperti `required`, `disabled`, dan `checked` aktif jika atributnya dicantumkan: `<input required>`. Jangan memakai `id` yang sama lebih dari sekali.

## 2. Kerangka Dokumen

```html
<!doctype html>
<html lang="id">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Portal Laboratorium</title>
  </head>
  <body>
    <h1>Portal Laboratorium</h1>
    <p>Informasi kegiatan dan layanan laboratorium.</p>
  </body>
</html>
```

- `<!doctype html>` meminta browser memakai mode standar HTML modern; ini deklarasi, bukan elemen HTML.
- `<html>` adalah elemen akar dokumen. `lang="id"` memberi tahu bahasa utama kepada pembaca layar dan alat lain.
- `<head>` memuat metadata, judul, dan referensi sumber daya; isinya umumnya tidak menjadi konten utama halaman.
- `<meta charset="utf-8">` menetapkan pengodean karakter agar huruf dan simbol tampil benar.
- `<meta name="viewport">` memberi browser ukuran viewport perangkat sehingga halaman dapat ditata responsif.
- `<title>` menetapkan judul tab/jendela dan nama dokumen pada bookmark atau hasil pencarian.
- `<body>` memuat konten dokumen yang ditujukan kepada pengguna.

## 3. Teks dan Pengelompokan Konten

| Elemen | Fungsi dan penggunaan |
| --- | --- |
| `h1`–`h6` | Judul dan subjudul dalam hierarki. Gunakan sesuai struktur topik, bukan untuk memilih ukuran huruf. Biasanya satu `h1` utama per halaman; jangan melompat tingkat tanpa alasan. |
| `p` | Paragraf teks. Browser memberi jarak paragraf secara bawaan. |
| `strong` | Menandai kepentingan/urgensi yang kuat; biasanya tampil tebal. |
| `em` | Memberi tekanan atau penekanan pada kata; biasanya tampil miring. |
| `b`, `i` | Menarik perhatian atau membedakan suara/istilah tanpa makna penting atau tekanan yang sama seperti `strong`/`em`. Pilih berdasarkan makna, bukan tampilannya. |
| `mark` | Menandai bagian yang relevan dalam konteks, seperti hasil pencarian. |
| `small` | Catatan samping atau keterangan kecil, misalnya hak cipta; bukan cara umum mengecilkan teks. |
| `br` | Pindah baris di dalam satuan teks yang memang perlu baris, seperti alamat atau puisi; jangan dipakai untuk membuat jarak antarbagian. |
| `hr` | Peralihan tematik antarbagian, biasanya digambar sebagai garis. |
| `blockquote` | Kutipan panjang dari sumber lain; `cite` dapat menunjuk URL sumber. Untuk kutipan singkat di kalimat, gunakan `q`. |
| `pre` dan `code` | `code` menandai potongan kode; `pre` mempertahankan spasi dan baris, cocok untuk blok kode: `<pre><code>...</code></pre>`. |
| `abbr` | Singkatan; `title` dapat memberi kepanjangannya, misalnya `<abbr title="HyperText Markup Language">HTML</abbr>`. |
| `time` | Waktu/tanggal yang dapat dibaca mesin, misalnya `<time datetime="2026-10-26">26 Oktober 2026</time>`. |
| `div` dan `span` | Wadah generik tanpa makna semantik khusus. `div` untuk pengelompokan alur blok; `span` untuk bagian kecil dalam teks. Gunakan jika elemen yang lebih bermakna tidak sesuai. |

## 4. Tautan dan Navigasi

```html
<a href="https://developer.mozilla.org/">Dokumentasi HTML di MDN</a>
<a href="#kontak">Lihat bagian kontak</a>
<a href="mailto:lab@example.org">Kirim email ke laboratorium</a>
```

`a` (*anchor*) membuat tautan. `href` berisi URL, alamat email, atau fragmen `id` tujuan. Teks tautan harus menjelaskan tujuan tanpa bergantung pada kalimat di sekitarnya; hindari teks samar seperti “klik di sini”. Tautan berbeda dari tombol: tautan berpindah ke tujuan, sedangkan tombol menjalankan aksi.

`nav` membungkus kelompok tautan navigasi utama. Jika ada beberapa navigasi, beri nama yang berbeda dengan `aria-label`, misalnya `aria-label="Navigasi utama"`. `target="_blank"` membuka tab/jendela baru; gunakan hanya jika perilakunya memang diinginkan dan beri tahu pengguna. Browser modern melindungi `_blank` secara bawaan, tetapi `rel="noopener"` masih dapat ditulis eksplisit.

## 5. Daftar

- `ul` membungkus daftar yang urutannya tidak penting.
- `ol` membungkus daftar yang urutannya penting; atribut `start` dapat menentukan nomor awal dan `reversed` membalik hitungan.
- `li` adalah satu butir dalam `ul` atau `ol`.
- `dl` membungkus daftar pasangan istilah dan uraian; `dt` adalah istilah dan `dd` adalah uraian.

```html
<ol>
  <li>Buka editor.</li>
  <li>Buat berkas HTML.</li>
</ol>
<dl>
  <dt>HTML</dt>
  <dd>Bahasa markah untuk menyusun konten web.</dd>
</dl>
```

Daftar dapat bersarang jika subbutir memang bagian dari butir induk. Jangan menggunakan daftar hanya untuk mendapatkan indentasi atau bullet visual.

## 6. Gambar dan Media

```html
<img src="images/laboratorium.jpg" alt="Mahasiswa bekerja di laboratorium komputer" width="800" height="450">
```

`img` menyematkan gambar. `src` adalah lokasi file; `alt` adalah pengganti tekstual. Tulis alt singkat yang menyampaikan informasi penting gambar. Untuk gambar dekoratif yang tidak menambah informasi, gunakan `alt=""`. Dimensi `width` dan `height` membantu browser menyediakan ruang sebelum gambar selesai dimuat. Gunakan path relatif seperti `images/foto.jpg` untuk file proyek; periksa kapitalisasi nama file.

`figure` mengelompokkan media atau ilustrasi yang dirujuk dari teks, sedangkan `figcaption` memberi keterangannya. Untuk audio gunakan `audio` dengan `controls` agar pengguna dapat memutar, menjeda, dan mengatur volume; `source` menentukan file dan tipe media. Untuk video, `video` juga dapat memakai `controls`, `width`, `poster`, dan `source`. Sediakan subtitle melalui `track kind="captions"` jika tersedia. Jangan memutar media otomatis dengan suara.

`iframe` menyematkan halaman lain dalam konteks halaman saat ini. Beri `title` yang menjelaskan kontennya, gunakan hanya sumber yang tepercaya/diizinkan, dan pahami bahwa situs tujuan dapat menolak penyematan. Penyematan bukan pengganti tautan biasa.

## 7. Tabel untuk Data Tabular

```html
<table>
  <caption>Jadwal praktikum</caption>
  <thead>
    <tr><th scope="col">Hari</th><th scope="col">Kegiatan</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">Senin</th><td>Dasar HTML</td></tr>
  </tbody>
</table>
```

- `table` membungkus data yang memiliki hubungan baris dan kolom; jangan gunakan tabel untuk layout halaman.
- `caption` memberi judul atau konteks tabel.
- `thead` mengelompokkan baris kepala, `tbody` baris data utama, dan `tfoot` ringkasan/kaki bila diperlukan.
- `tr` adalah baris tabel.
- `th` adalah sel kepala. `scope="col"` menandai kepala kolom, `scope="row"` kepala baris.
- `td` adalah sel data biasa.

Gunakan header yang jelas agar hubungan sel dapat dipahami. Hindari tabel dengan sel kosong atau gabungan kompleks jika susunan sederhana cukup.

## 8. Semantik dan Landmark Halaman

```html
<header>
  <h1>Portal Laboratorium</h1>
  <nav aria-label="Navigasi utama">...</nav>
</header>
<main>
  <section aria-labelledby="layanan-title">
    <h2 id="layanan-title">Layanan</h2>
    <p>...</p>
  </section>
  <article>...</article>
</main>
<footer>...</footer>
```

- `header` berisi pengantar atau alat bantu navigasi untuk halaman atau bagian. Bisa ada lebih dari satu jika berada dalam konteks bagian yang berbeda.
- `nav` adalah blok navigasi penting.
- `main` membungkus konten utama yang unik; umumnya satu elemen `main` terlihat per halaman.
- `section` mengelompokkan topik yang biasanya memiliki judul.
- `article` adalah konten mandiri yang dapat dipahami/disindikasikan sendiri, seperti berita atau kiriman.
- `aside` berisi materi pelengkap terkait, seperti catatan atau tautan terkait.
- `footer` berisi informasi penutup untuk halaman atau bagian, misalnya kontak dan hak cipta.
- `address` memuat informasi kontak untuk pemilik halaman/artikel, bukan sembarang alamat lokasi.

Elemen semantik membantu navigasi teknologi bantu dan membuat maksud struktur lebih jelas. Jangan memilih elemen hanya karena tampilan bawaan browser; CSS dapat mengatur tampilan tanpa mengubah makna.

## 9. Formulir dan Input

```html
<form action="/pendaftaran" method="post">
  <label for="nama">Nama lengkap</label>
  <input id="nama" name="nama" type="text" autocomplete="name" required>

  <label for="email">Email</label>
  <input id="email" name="email" type="email" autocomplete="email" required>

  <label for="pesan">Keperluan</label>
  <textarea id="pesan" name="pesan" rows="4"></textarea>

  <button type="submit">Kirim pendaftaran</button>
</form>
```

- `form` membungkus kontrol yang dikirim bersama. `action` menentukan tujuan pengiriman dan `method` cara kirim; `get` menaruh data sederhana di URL, sedangkan `post` mengirimkannya pada badan permintaan. Server tetap perlu memvalidasi data.
- `label` memberi nama kontrol. Pasangkan `for` dengan `id` kontrol agar label dapat diklik dan dibaca dengan benar.
- `input` adalah kontrol kosong; `type` memilih jenis kontrol seperti `text`, `email`, `password`, `number`, `date`, `checkbox`, `radio`, `file`, atau `submit`.
- `name` adalah kunci data yang dikirim. Tanpa `name`, nilai kontrol biasanya tidak ikut terkirim.
- `required` mewajibkan nilai; `placeholder` hanya contoh singkat dan tidak menggantikan label.
- `textarea` menerima teks beberapa baris.
- `select` membungkus pilihan, `option` adalah pilihan, dan `optgroup` mengelompokkan pilihan terkait.
- `button` membuat tombol. Gunakan `type="submit"` untuk mengirim form, `type="reset"` untuk mengosongkan isian, atau `type="button"` untuk aksi yang ditangani JavaScript. Di dalam form, tentukan `type` secara eksplisit.
- `fieldset` mengelompokkan kontrol terkait dan `legend` memberi nama kelompoknya, berguna misalnya untuk pilihan radio.
- `output` menampilkan hasil perhitungan/interaksi; `progress` menunjukkan kemajuan tugas; `meter` menunjukkan nilai dalam rentang terukur.

Gunakan validasi HTML seperti `type="email"`, `min`, `max`, `minlength`, dan `required` untuk membantu pengguna. Validasi browser tidak menggantikan validasi di server. Jangan meminta atau mengirim data pribadi sungguhan pada latihan.

## 10. Aksesibilitas dan Kebiasaan Baik

- Gunakan heading dalam urutan yang mencerminkan susunan topik, dan landmark semantik untuk area utama.
- Pastikan semua tautan dan kontrol dapat dijangkau dengan keyboard; gunakan elemen asli (`a`, `button`, `input`) alih-alih elemen generik yang meniru perilakunya.
- Beri label yang terlihat pada setiap kontrol formulir. Jangan mengandalkan placeholder saja.
- Tulis `alt` menurut tujuan gambar, bukan sekadar mengulang nama file.
- Gunakan teks tautan yang deskriptif dan judul tabel yang jelas.
- Hindari atribut usang seperti `font`, `center`, dan atribut presentasi lama; atur tampilan dengan CSS.
- Jangan menaruh rahasia atau data pribadi dalam HTML: isi halaman dapat dilihat melalui browser.

## Alat dan Persiapan Praktikum

- Editor kode seperti VS Code dan browser modern.
- Buat folder latihan dan simpan halaman sebagai `index.html` dengan UTF-8. Live Server opsional; file juga dapat dibuka langsung di browser.
- Untuk gambar, simpan file dalam subfolder proyek dan gunakan path yang benar.

## Praktikum

1. Buka [index.html](./index.html) dan identifikasi `doctype`, `html`, `head`, `meta`, `title`, dan `body`.
2. Buat halaman informasi laboratorium dengan `header`, `nav`, `main`, dua `section`, dan `footer`.
3. Tambahkan tautan internal menuju bagian dengan `id`, daftar layanan, dan satu `article` berisi pengumuman.
4. Buat tabel jadwal dengan `caption`, `thead`, `tbody`, `th`, dan `td`.
5. Buat form kontak latihan dengan label, input nama/email, textarea, dan tombol kirim. Jangan mengirim data sungguhan.
6. Tambahkan gambar lokal dengan alt yang sesuai, lalu uji halaman dengan gambar dinonaktifkan atau periksa teks alt.
7. Navigasikan halaman dengan keyboard dan periksa pohon elemen melalui Developer Tools.

## Tugas Modul

Buat `tugas-modul1.html` sebagai profil laboratorium. Sertakan struktur dokumen lengkap; header, navigasi, main, setidaknya dua section, dan footer; heading berjenjang; daftar layanan; tabel jadwal dengan kepala baris/kolom; gambar dengan alt yang tepat; tautan kontak yang deskriptif; serta form pendaftaran sederhana dengan label dan validasi bawaan. Tambahkan komentar untuk menjelaskan dua bagian yang penting. Pastikan tidak ada `id` ganda dan semua kontrol dapat dipahami tanpa CSS.

## Referensi

- [MDN: HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [MDN: HTML elements reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- [WHATWG HTML Living Standard](https://html.spec.whatwg.org/)
- [W3C WAI: Images Tutorial](https://www.w3.org/WAI/tutorials/images/)
