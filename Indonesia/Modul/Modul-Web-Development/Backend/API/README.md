# Modul Web 7: Dasar API dan HTTP

API web memungkinkan aplikasi bertukar informasi. Frontend mengirim request ke endpoint; server mengembalikan status dan data, sering kali dalam JSON.

## Teori Dasar

Pada contoh [api.js](./api.js), browser/Node menggunakan `fetch` untuk meminta data:

```js
const response = await fetch("https://example.test/items");
if (!response.ok) throw new Error("Permintaan gagal");
const items = await response.json();
```

- `const response`: binding untuk objek respons.
- `await`: menunggu Promise selesai di dalam fungsi `async`; kode lain pada event loop tetap dapat berjalan.
- `fetch(url)`: mengirim request jaringan ke alamat URL dan menghasilkan Promise.
- `response.ok`: boolean bernilai benar untuk status HTTP sukses, biasanya 200–299.
- `throw new Error(...)`: membuat error eksplisit agar jalur penanganan gagal dijalankan.
- `response.json()`: membaca body dan mengubah JSON menjadi nilai JavaScript; ini juga operasi asinkron.

HTTP menggunakan metode seperti `GET` untuk membaca, `POST` untuk mengirim, `PUT/PATCH` untuk mengubah, dan `DELETE` untuk menghapus. Status seperti 200, 404, dan 500 memberi konteks hasil. JSON memiliki objek `{}`, array `[]`, string, angka, boolean, dan `null`; JSON tidak mengizinkan komentar atau fungsi.

## Alat dan Persiapan Praktikum

- Node.js LTS atau browser modern, editor, dan akses internet.
- Contoh menggunakan endpoint publik JSONPlaceholder untuk data demonstrasi; jangan mengirim data pribadi.
- Jika jaringan kampus membatasi endpoint, gunakan mock response lokal.

## Langkah-Langkah Praktikum (Hands-on)

1. Baca URL dan fungsi `loadExamplePost` di `api.js`.
2. Jalankan `node api.js`; `node` memulai runtime dan `api.js` adalah file yang dieksekusi.
3. Amati respons setelah `await fetch`; periksa `response.ok` sebelum mengurai body.
4. Buka Developer Tools atau terminal dan amati judul yang dicetak.
5. Coba URL yang tidak tersedia, lalu pastikan error disampaikan; jangan menggantinya dengan data palsu yang tampak sukses.
6. Tambahkan pengecekan bentuk data sebelum menggunakannya dalam UI.

## Tugas Modul

Buat pemanggil API baca yang menangani sukses, status HTTP gagal, JSON tidak sesuai bentuk, dan gangguan jaringan. Tampilkan hanya data yang diperlukan dan jelaskan peran `async`, `await`, `Promise`, `try/catch`, serta status HTTP.

## Referensi

- [MDN: Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [MDN: HTTP request methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
- [JSONPlaceholder](https://jsonplaceholder.typicode.com/guide/)

## Pendekatan API: Perbedaan dan Kapan Digunakan

API adalah kontrak agar perangkat lunak dapat berkomunikasi; REST, GraphQL, dan SOAP menjelaskan pendekatan API yang berbeda, sedangkan FastAPI adalah framework Python yang dapat digunakan untuk membuat API.

| Pilihan | Apa itu | Pertimbangkan ketika |
| --- | --- | --- |
| [Contoh dasar API HTTP](./README.md) | Client memanggil endpoint dengan `fetch` dan menangani responsnya. | Belajar request, respons, JSON, dan error HTTP sebelum memilih framework server. |
| [REST](./REST/README.md) | Gaya arsitektur yang umumnya memakai resource HTTP dan metode standar. | Operasi berbasis resource, kompatibilitas luas, dan cache HTTP sederhana dibutuhkan. |
| [FastAPI](./FastAPI/README.md) | Framework Python dengan model bertipe dan dokumentasi OpenAPI otomatis. | Tim memakai Python dan ingin validasi serta dokumentasi API terintegrasi di layanan. |
| [GraphQL](./GraphQL/README.md) | Bahasa query berbasis schema dan model eksekusi untuk API. | Client yang berbeda memerlukan pilihan field terkait yang berbeda dan tim mampu mengelola kompleksitasnya. |
| [SOAP](./SOAP/README.md) | Protokol pesan terstruktur yang umumnya menggunakan XML dan kontrak formal. | Sistem mitra atau enterprise yang sudah ada secara khusus mengharuskan SOAP/WSDL. |

REST dan GraphQL adalah pendekatan desain API; FastAPI adalah alat implementasi, jadi semuanya tidak selalu saling menggantikan. Layanan FastAPI dapat menyediakan endpoint bergaya REST. Untuk layanan web konvensional kecil, mulailah dengan REST; pilih GraphQL jika kebutuhan pemilihan data client terbukti, atau SOAP jika ada kewajiban kompatibilitas. Selalu pertimbangkan keahlian tim, biaya operasional, versioning, autentikasi, otorisasi, dan validasi masukan.
