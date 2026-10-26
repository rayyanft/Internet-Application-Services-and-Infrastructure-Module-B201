# Modul Web 2: Dasar CSS dan Layout Responsif

CSS (*Cascading Style Sheets*) mengatur tampilan halaman HTML. Jika HTML adalah kerangka rumah, CSS adalah pilihan cat, jarak, dan susunan furnitur yang membuat rumah nyaman ditempati.

## Teori Dasar

Aturan CSS umumnya berbentuk `selector { property: value; }`.

```css
.kartu {
  padding: 16px;
  color: #1f2937;
}
```

- `.kartu`: selector class; titik berarti memilih elemen HTML yang atribut `class`-nya mencakup `kartu`.
- `{` dan `}`: membatasi deklarasi gaya untuk selector tersebut.
- `padding`: properti ruang di dalam batas elemen; `16px` adalah nilai dengan satuan piksel CSS.
- `color`: properti warna teks; `#1f2937` adalah notasi warna heksadesimal.
- `;`: mengakhiri satu deklarasi agar aturan berikutnya terpisah jelas.

**Cascade** berarti beberapa aturan dapat cocok pada elemen dan browser menentukan aturan yang berlaku berdasarkan asal, kepentingan, kekhususan, dan urutan. **Box model** terdiri dari content, padding, border, serta margin. `box-sizing: border-box` membuat lebar yang ditentukan mencakup padding dan border, sehingga layout lebih mudah dihitung.

Flexbox cocok untuk menyusun satu baris atau kolom; Grid cocok untuk susunan dua dimensi. Media query seperti `@media (max-width: 40rem)` menerapkan aturan pada viewport kecil. Ukuran `rem` relatif terhadap ukuran font akar sehingga lebih mudah diskalakan.

## Alat dan Persiapan Praktikum

- Editor kode dan browser dengan Developer Tools.
- Gunakan [index.html](./index.html) serta [style.css](./style.css) yang berada pada folder sama.
- HTML memuat CSS melalui `<link rel="stylesheet" href="style.css">`. `rel` menjelaskan relasi sebagai stylesheet; `href` adalah alamat berkas.

## Langkah-Langkah Praktikum (Hands-on)

1. Buka contoh HTML dan pastikan elemen `link` berada di dalam `head`.
2. Di CSS, ubah `body` untuk margin, warna, font, dan `line-height`. `line-height` mengatur jarak vertikal antarbaris teks.
3. Atur `.content` dengan `max-width` agar baris tidak terlalu panjang; `margin: auto` dapat memusatkan blok dengan lebar terbatas.
4. Gaya `.service-card` memakai padding, radius, dan warna latar untuk memberi batas visual.
5. Tambahkan Flexbox/Grid bila ada beberapa kartu, kemudian buat media query untuk layar sempit.
6. Uji dengan keyboard, zoom, dan ukuran browser berbeda. Periksa fokus, kontras, serta scroll horizontal tak sengaja.

## Tugas Modul

Rancang tampilan portal laboratorium dengan header, navigasi, tiga kartu layanan, dan footer. Gunakan eksternal stylesheet, class dengan nama bermakna, layout responsif, serta fokus keyboard yang tampak. Jelaskan bagaimana box model memengaruhi ukuran kartu.

## Referensi

- [MDN: CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [MDN: CSS box model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)
- [web.dev: Learn CSS](https://web.dev/learn/css/)
