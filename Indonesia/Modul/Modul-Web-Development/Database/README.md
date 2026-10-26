# Modul Web Tambahan: Dasar Database Relasional dan SQL

Database menyimpan informasi terstruktur. Kita akan membuat tabel contoh dengan SQLite dan membaca data menggunakan SQL.

## Teori Dasar

Tabel seperti lembar kerja: kolom mendefinisikan jenis atribut dan baris menyimpan satu rekaman. Pada [schema.sql](./schema.sql), `CREATE TABLE services` membuat tabel. `id INTEGER PRIMARY KEY` menetapkan angka unik sebagai identitas; `TEXT` menyimpan teks; `NOT NULL` melarang nilai kosong; `DEFAULT 1` memberi nilai bila kolom tidak diisi.

`INSERT INTO services (name, description, is_available) VALUES (...)` menambahkan baris: nama tabel disebut sesudah `INTO`, daftar kolom menentukan urutan, dan nilai `VALUES` harus berpasangan dengan kolom. `SELECT id, name FROM services` mengambil kolom terpilih; `FROM` menentukan sumber tabel; `WHERE is_available = 1` memfilter baris. SQL tidak peka huruf besar/kecil untuk kata kunci, tetapi kapitalisasi membantu pembacaan.

Relasi antar tabel biasanya memakai foreign key. Dalam aplikasi, masukan harus diparameterisasi; jangan menyusun SQL mentah dengan menggabungkan teks pengguna karena dapat mengubah arti query.

## Alat dan Persiapan Praktikum

- SQLite CLI atau aplikasi database tepercaya dari sumber resmi.
- Terminal dan editor.
- Gunakan hanya data fiktif dalam file latihan.

## Langkah-Langkah Praktikum (Hands-on)

1. Baca `schema.sql`; perhatikan urutan `DROP`, `CREATE`, `INSERT`, dan `SELECT`.
2. Jalankan `sqlite3 latihan.db < schema.sql`. `sqlite3` menjalankan CLI, `latihan.db` adalah file database lokal, `<` mengalirkan isi SQL sebagai input.
3. Periksa hasil query. Bila SQLite belum tersedia, jalankan perintah melalui alat yang direkomendasikan laboratorium.
4. Tulis query dengan kondisi `WHERE` untuk menampilkan satu layanan.
5. Jalankan ulang berkas dan amati bahwa `DROP TABLE IF EXISTS` menghapus tabel contoh sebelumnya sebelum membuat ulang; jangan gunakan pola penghapusan tersebut pada database penting.

## Tugas Modul

Buat tabel jadwal dengan id, nama layanan, hari, dan jam contoh. Tambahkan tiga baris fiktif, lalu tulis query untuk mencari jadwal berdasarkan layanan. Jelaskan setiap tipe kolom, primary key, `INSERT`, `SELECT`, dan `WHERE`.

## Referensi

- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [SQLite: SELECT](https://www.sqlite.org/lang_select.html)
- [OWASP: SQL Injection Prevention](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)

## Memilih Database

| Pilihan | Apa itu | Cocok digunakan ketika |
| --- | --- | --- |
| [Dasar SQL dan SQLite](./README.md) | Tabel relasional dan SQL yang dipraktikkan secara lokal dengan database ringan berbasis file. | Belajar merancang skema dan query atau membuat prototipe aplikasi lokal kecil. |
| [MySQL](./MySQL/README.md) | Server database relasional yang banyak digunakan dan didukung berbagai layanan hosting serta alat. | Aplikasi web relasional biasa membutuhkan database server yang umum dan lingkungan hosting mendukung MySQL. |
| [PostgreSQL](./PostgreSQL/README.md) | Database relasional kaya fitur dengan dukungan SQL dan tipe data lanjutan. | Aplikasi membutuhkan query kompleks, integritas relasional kuat, atau fitur khusus PostgreSQL. |
| [Supabase](./Supabase/README.md) | Platform aplikasi terkelola berbasis PostgreSQL, dengan layanan seperti autentikasi dan API. | Proyek membutuhkan PostgreSQL terkelola beserta layanan backend siap pakai dan menerima model deployment platform tersebut. |
| [Firebase](./Firebase/README.md) | Platform aplikasi Google yang umumnya memakai Cloud Firestore berorientasi dokumen atau Realtime Database. | Aplikasi web atau mobile membutuhkan data realtime/dokumen terkelola dan SDK serta ekosistem Firebase sesuai kebutuhan. |

Pilih berdasarkan relasi data, kebutuhan query, konsistensi, keahlian tim, hosting, biaya, dan kebutuhan migrasi. Supabase bukan mesin database relasional yang terpisah dari PostgreSQL; Firebase adalah platform dengan beberapa produk, bukan nama lain untuk satu database. Periksa harga, lokasi data, aturan akses, pencadangan, dan ketergantungan vendor sebelum digunakan di produksi.
