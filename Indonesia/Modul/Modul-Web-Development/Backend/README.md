# Modul Web Tambahan: Dasar Backend dengan Express

Backend menerima request, menerapkan aturan aplikasi, dan memberi respons. Modul ini menjalankan server contoh hanya pada komputer lokal.

## Teori Dasar

Route memasangkan metode dan path dengan fungsi penangan. Pada [server.js](./server.js), `app.get("/api/services", handler)` menangani request GET ke path tersebut. `request` memberi informasi request masuk; `response` digunakan untuk menyusun balasan. `response.json(services)` mengubah data JavaScript menjadi respons JSON.

Di kode, `import express from "express"` memuat pustaka; `const app = express()` membuat aplikasi Express; `const port = 3000` menyimpan nomor port; array `services` memuat objek contoh. Setiap objek `{ id, name, available }` memiliki properti data. `app.listen(port, "127.0.0.1", callback)` mulai mendengar koneksi lokal; callback dijalankan setelah server siap. Bind ke `127.0.0.1` membuatnya hanya dapat dijangkau dari komputer itu sendiri.

## Alat dan Persiapan Praktikum

- Node.js LTS, npm, terminal, dan editor.
- Inisialisasi proyek dengan `npm init -y`, lalu pasang Express memakai `npm install express`; kedua langkah mengubah berkas dependensi, jadi tinjau `package.json` dan lockfile.
- Jika menggunakan `import`, atur proyek sebagai ES module melalui `"type": "module"` di `package.json`.

## Langkah-Langkah Praktikum (Hands-on)

1. Simpan kode sebagai `server.js`.
2. Jalankan `node server.js`. Terminal menunjukkan alamat lokal saat server siap.
3. Buka `http://127.0.0.1:3000/api/services`. Protokol HTTP, host loopback, port, dan path bersama-sama menentukan tujuan request.
4. Amati JSON yang dikembalikan. Tambahkan route 404 untuk path lain hanya setelah memahami middleware dan urutan route Express.
5. Hentikan dengan `Ctrl+C`; perintah ini mengirim sinyal penghentian pada proses foreground.

## Tugas Modul

Tambahkan route GET untuk satu layanan berdasarkan id, respons 404 bila tidak ditemukan, dan validasi parameter id. Jelaskan input, route, callback, status respons, dan mengapa latihan ini tidak boleh langsung dipublikasikan ke internet.

## Referensi

- [Express: Getting started](https://expressjs.com/en/starter/installing.html)
- [Express: Routing](https://expressjs.com/en/guide/routing.html)
- [Node.js Documentation](https://nodejs.org/docs/latest/api/)
