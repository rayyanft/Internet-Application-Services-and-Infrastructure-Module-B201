# Modul Web Development

Modul ini mengenalkan pembagian aplikasi web menjadi antarmuka browser, logika server, API, dan penyimpanan data. Materi dikelompokkan berdasarkan tanggung jawab agar mudah menemukan titik awal serta memahami hubungan antarbagian.

## Panduan Folder

```text
Modul-Web-Development/
├── Backend/
│   ├── API/
│   ├── Backend/
│   ├── JavaScript/
│   └── Node.js/
├── Frontend/
│   ├── CSS/
│   ├── Frontend/
│   ├── HTML/
│   ├── React.js/
│   └── TailwindCSS/
└── Database/
    ├── Firebase/
    ├── MySQL/
    ├── PostgreSQL/
    ├── Supabase/
    └── schema.sql
```

### Backend

Backend menjalankan aturan aplikasi dan menangani request di luar browser pengguna. [API](./Backend/API/README.md) membahas komunikasi client-server dan gaya API; [Backend](./Backend/Backend/README.md) mengenalkan route server; [JavaScript](./Backend/JavaScript/README.md) mengajarkan bahasa yang digunakan pada browser maupun server; [Node.js](./Backend/Node.js/README.md) menjalankan JavaScript di luar browser.

### Frontend

Frontend adalah bagian yang ditampilkan dan digunakan melalui browser. [HTML](./Frontend/HTML/README.md) menyusun struktur konten, [CSS](./Frontend/CSS/README.md) mengatur gaya dan tata letak, [Tailwind CSS](./Frontend/TailwindCSS/README.md) menyediakan utility class, [React.js](./Frontend/React.js/README.md) membangun antarmuka dari komponen, dan [Frontend](./Frontend/Frontend/README.md) menggabungkan konsep sisi browser.

### Database

Database menyimpan dan mengambil data aplikasi. Mulai dari [dasar SQL dan SQLite](./Database/README.md), lalu bandingkan [MySQL](./Database/MySQL/README.md), [PostgreSQL](./Database/PostgreSQL/README.md), [Supabase](./Database/Supabase/README.md), dan [Firebase](./Database/Firebase/README.md).

## Urutan Belajar yang Disarankan

1. Pelajari HTML, CSS, dan JavaScript pada bagian Frontend.
2. Buat halaman kecil yang responsif; kemudian pelajari React.js dan Tailwind CSS sesuai kebutuhan.
3. Pelajari JavaScript sisi server dan Node.js, lalu lanjutkan ke modul Backend.
4. Pelajari HTTP dan pilihan API sebelum menghubungkan frontend dengan backend.
5. Pelajari data relasional dan SQL, lalu pilih database sesuai kebutuhan proyek.
6. Buat proyek kecil dari awal hingga akhir dan dokumentasikan komunikasi browser, API, server, dan penyimpanan data.

## Tech Stack & Roadmap: Website Statis vs Dinamis

Untuk memberikan gambaran praktis tentang bagaimana modul-modul di atas digabungkan, berikut adalah perbedaan jalur pengembangan (*roadmap*) dan teknologi (*tech stack*) untuk membangun dua jenis website utama:

### 1. Website Statis (Static Website)
Website statis menampilkan konten yang sama persis kepada setiap pengunjung. Sangat cocok untuk *Personal Portfolio*, *Landing Page*, atau Profil Perusahaan.
*   **Tech Stack (Hanya Frontend):** 
    *   **Dasar:** HTML, CSS, JavaScript.
    *   **Styling Cepat:** Tailwind CSS.
    *   **Hosting:** GitHub Pages atau Vercel.
*   **Roadmap Pembuatan:**
    1. Susun kerangka informasi dan teks menggunakan **HTML**.
    2. Percantik tampilan dan pastikan responsif di HP menggunakan **CSS** atau **Tailwind CSS**.
    3. Tambahkan interaksi ringan (efek *scroll*, animasi *hover*, *toggle menu*) menggunakan **JavaScript** dasar.
    4. *Deploy* (Rilis) langsung ke internet melalui **GitHub Pages** atau **Vercel**.

### 2. Website Dinamis (Dynamic Website)
Website dinamis memuat data yang berubah-ubah bergantung pada pengguna yang *login*, interaksi, atau basis data. Cocok untuk Sistem Manajemen Rumah Sakit, *E-Commerce*, atau Dashboard Inventaris.
*   **Tech Stack (Full-Stack):**
    *   **Frontend:** React.js, Tailwind CSS.
    *   **Backend:** Node.js, Express.js (sebagai penyedia API).
    *   **Database:** PostgreSQL / MySQL, atau BaaS (*Backend-as-a-Service*) seperti Supabase / Firebase.
    *   **Hosting:** Vercel (untuk Frontend) & Render / Railway (untuk Backend & Database).
*   **Roadmap Pembuatan:**
    1. Bangun antarmuka dan komponen interaktif menggunakan **React.js** dan **Tailwind CSS**.
    2. Rancang struktur penyimpanan data (*schema*) di dalam **Database**.
    3. Bangun logika server dan sediakan rute **API** menggunakan **Node.js**.
    4. Lakukan *Fetch* (pengambilan data) dari API ke dalam React.js agar data dari server tampil di browser pengguna.
    5. *Deploy* Frontend dan Backend secara terpisah agar sistem dapat diakses secara publik.

---

Pengelompokan ini menjelaskan tanggung jawab, bukan batasan mutlak. JavaScript, misalnya, berjalan di browser maupun Node.js. README setiap folder menjelaskan fokus, perbedaan, dan kapan teknologi digunakan. Gunakan data fiktif saat latihan dan jangan pernah memasukkan kredensial atau private key ke Git.
