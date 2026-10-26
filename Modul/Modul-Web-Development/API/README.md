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
