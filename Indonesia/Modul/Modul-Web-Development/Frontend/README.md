# Modul Web Tambahan: Dasar Frontend

Frontend adalah bagian aplikasi yang berjalan pada perangkat pengguna. Modul ini menggabungkan struktur, interaksi, dan umpan balik yang jelas.

## Teori Dasar

Contoh [index.html](./index.html) memakai `form`, `input`, `button`, dan daftar. `id` menghubungkan label serta skrip ke elemen tertentu; `for` pada label harus sama dengan `id` input. `aria-live="polite"` meminta teknologi bantu mengumumkan perubahan pesan tanpa memotong pengumuman yang sedang berlangsung.

Fungsi `showServices(items)` menerima array `items`; `replaceChildren()` mengosongkan hasil sebelumnya; `items.length` menghitung jumlah item; `textContent` menyampaikan pesan kosong; `forEach` menjalankan callback untuk setiap layanan. Callback membuat `li` dengan `document.createElement`, mengisi `textContent`, lalu `append` menambahkannya ke daftar. Menggunakan `textContent` lebih aman daripada mem-parsing teks masukan sebagai HTML.

Pada `submit` handler, `event` adalah objek kejadian; `preventDefault()` mencegah aksi default form yang memuat ulang halaman; `trim()` menghapus spasi tepi; `toLowerCase()` menormalisasi kapitalisasi; `filter()` menghasilkan array baru yang cocok. `includes(query)` memeriksa apakah nama mengandung teks pencarian.

## Alat dan Persiapan Praktikum

- Editor teks dan browser modern.
- Buka berkas lokal [index.html](./index.html); contoh tidak memerlukan server atau dependensi.
- Developer Tools membantu melihat DOM, Console, dan error JavaScript.

## Langkah-Langkah Praktikum (Hands-on)

1. Buka halaman dan lihat semua layanan yang ditampilkan pertama kali oleh `showServices(services)`.
2. Masukkan kata kunci dan tekan tombol atau Enter. Keduanya mengirim event `submit`.
3. Uji pencarian dengan huruf besar, spasi di awal, dan kata yang tidak cocok.
4. Gunakan Tab untuk mencapai input/tombol serta Enter untuk mengirim form.
5. Baca fungsi `showServices` dari atas ke bawah dan jelaskan bagaimana array diubah menjadi elemen daftar.

## Tugas Modul

Tambahkan kategori dan filter gabungan pada daftar. Pertahankan label form, pesan hasil kosong yang jelas, dan dukungan keyboard. Jelaskan variabel, fungsi, event, dan cara mencegah masukan pengguna diperlakukan sebagai markup.

## Referensi

- [MDN: Forms](https://developer.mozilla.org/en-US/docs/Learn_web_development/Extensions/Forms)
- [MDN: DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
- [W3C WAI: Forms Tutorial](https://www.w3.org/WAI/tutorials/forms/)
