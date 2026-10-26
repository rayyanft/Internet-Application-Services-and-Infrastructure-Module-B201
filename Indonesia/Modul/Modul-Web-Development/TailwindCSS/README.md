# Modul Web 3: Pengenalan Tailwind CSS

Tailwind CSS adalah framework CSS utility-first. Alih-alih menulis aturan untuk setiap komponen, kita menyusun utility class pada elemen. Ini seperti menggunakan label instruksi kecil untuk jarak, warna, layout, dan tipografi.

## Teori Dasar

Contoh:

```html
<article class="rounded-xl bg-white p-6 shadow-md">
  <h2 class="text-xl font-bold">Ruang Praktikum</h2>
</article>
```

- `class`: atribut HTML yang memuat nama class satu atau lebih, dipisahkan spasi.
- `rounded-xl`: memberi radius sudut besar.
- `bg-white`: mengatur warna latar menjadi putih.
- `p-6`: memberi padding sesuai skala spacing Tailwind.
- `shadow-md`: memberi bayangan tingkat sedang.
- `text-xl`: memilih ukuran teks ekstra besar relatif terhadap skala framework.
- `font-bold`: memilih bobot huruf tebal.

Prefix breakpoint seperti `md:` menerapkan utility ketika viewport memenuhi breakpoint medium. Contoh: `md:flex` berarti `display: flex` mulai ukuran medium. Utility membuat gaya dekat dengan markup sehingga perubahan cepat, tetapi class yang panjang harus diformat agar tetap terbaca. Contoh [index.html](./index.html) memakai CDN untuk demonstrasi; proyek produksi sebaiknya memakai proses instalasi/build resmi supaya versi dan keluaran CSS dapat dikendalikan.

## Alat dan Persiapan Praktikum

- Editor kode dan browser.
- Koneksi internet untuk contoh CDN.
- Untuk proyek nyata, Node.js dan build tool proyek; ikuti panduan resmi Tailwind sesuai versi yang dipakai.

## Langkah-Langkah Praktikum (Hands-on)

1. Buka `index.html` dan amati script CDN di `head`. Tag `script` memuat JavaScript dari sumber eksternal; internet dibutuhkan agar class tersedia.
2. Periksa class pada `body`, `main`, dan `article`. Setiap token class adalah utility berbeda.
3. Tambahkan `md:` untuk mengubah susunan di layar lebih lebar dan uji ukuran layar.
4. Ubah warna atau jarak satu class pada satu waktu, lalu bandingkan hasilnya.
5. Untuk proyek produksi, pasang Tailwind melalui build tool resmi; CDN demo tidak menggantikan proses tersebut.

## Tugas Modul

Buat kartu layanan dengan judul, deskripsi, ikon dekoratif yang tidak menghalangi aksesibilitas, dan tautan aksi. Gunakan utilities responsif, jaga kontras, format class per baris bila panjang, dan jelaskan mengapa versi CDN hanya dipakai untuk latihan.

## Referensi

- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Tailwind CSS: Installation](https://tailwindcss.com/docs/installation)
