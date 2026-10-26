# Internet Application Services and Infrastructure

Repositori ini adalah kurikulum magang laboratorium untuk mahasiswa yang memulai dari nol. Materi menuntun peserta dari rancangan pengalaman pengguna, pembuatan web dan aplikasi mobile, sampai memahami cara layanan internet dijalankan dan dirawat.

## Teori Dasar

Sebuah aplikasi internet merupakan kerja sama beberapa bagian. UI/UX membantu kita memahami kebutuhan pengguna; frontend menampilkan konten dan menerima interaksi; API menghubungkan frontend dengan backend; database menyimpan informasi; infrastruktur menyediakan komputer dan jaringan untuk menjalankan semua komponen.

Analogi sederhana: HTML adalah kerangka bangunan, CSS adalah tata ruang dan warna, JavaScript adalah mekanisme yang bergerak, backend adalah petugas di ruang operasional, database adalah lemari arsip, dan server adalah lokasi tempat layanan berjalan. Komponen tersebut saling berhubungan, tetapi masing-masing memiliki tugas yang berbeda.

Struktur materi:

```text
.
├── README.md
├── Modul/
│   ├── Modul-UI-UX/
│   ├── Modul-Web-Development/
│   │   ├── Backend/ (API, Backend, JavaScript, Node.js)
│   │   ├── Frontend/ (CSS, Frontend, HTML, React.js, TailwindCSS)
│   │   └── Database/ (SQLite/SQL, MySQL, PostgreSQL, Supabase, Firebase)
│   ├── Modul-Mobile-Development/
│   │   ├── 1-Flutter-Dasar/
│   │   ├── 2-React-Native-Dasar/
│   │   ├── 3-State-Management/
│   │   └── 4-Mobile-API-Integration/
│   └── Modul-Infrastruktur-Server/
│       ├── 1-Linux-OS-Setup/
│       ├── 2-Web-Server-Nginx/
│       ├── 3-Docker-Containerization/
│       └── 4-Deployment-Methods/
└── Practice-Project/
```

- `├──` dan `└──` adalah cara menggambar pohon folder; nama berakhiran `/` menunjukkan direktori.
- Buka [README Modul Web Development](./Modul/Modul-Web-Development/README.md) untuk penjelasan perbedaan dan kegunaan tiap folder.
- Berkas `README.md` berisi petunjuk belajar; berkas contoh di subfolder menunjukkan materi yang dapat dijalankan.

## Alat dan Persiapan Praktikum

- Komputer dengan ruang penyimpanan cukup, editor kode, browser modern, dan terminal.
- Git untuk mengelola versi proyek. Jangan masukkan kata sandi, token, atau private key ke Git.
- Instal bahasa dan runtime saat modul memerlukannya: Node.js, Flutter/Dart, atau Docker. Gunakan dokumentasi resmi yang sesuai dengan sistem operasi.
- Buat direktori kerja khusus dan gunakan data fiktif saat berlatih.
- Untuk mesin virtual atau cloud, minta persetujuan pembimbing dan periksa biaya serta aturan akses terlebih dahulu.

## Langkah-Langkah Praktikum (Hands-on)

1. Mulai dengan [Modul UI/UX](./Modul/Modul-UI-UX/README.md) untuk merumuskan masalah serta membuat wireframe.
2. Ikuti [Modul Web Development](./Modul/Modul-Web-Development/README.md): mulai dari HTML, CSS, dan JavaScript; lanjutkan ke React.js/TailwindCSS, Node.js, API, dan database sesuai kebutuhan latihan.
3. Pelajari [Modul Mobile](./Modul/Modul-Mobile-Development/README.md), kemudian pilih Flutter atau React Native dan lanjutkan ke state serta API.
4. Pelajari [Modul Infrastruktur](./Modul/Modul-Infrastruktur-Server/README.md) pada VM lokal sebelum mencoba deployment.
5. Kerjakan [Practice Project](./Practice-Project/README.md) paralel: tambahkan fitur setelah konsepnya dipelajari.
6. Uji setiap perubahan, simpan catatan, dan minta umpan balik dari rekan atau pembimbing.

Saat membaca contoh, perhatikan setiap kata kunci, nama variabel, nilai masukan, dan hasilnya. Ketik ulang kode, jangan hanya menyalin. Bila hasil berbeda, baca pesan error, periksa ejaan nama berkas, lalu uji satu perubahan pada satu waktu.

## Tugas Modul

Sebelum memulai praktik, tulis rencana belajar pribadi berisi urutan modul, alat yang perlu disiapkan, dan jadwal tinjauan mingguan. Pada akhir kurikulum, serahkan proyek yang dapat dijalankan, dokumentasi, hasil pengujian, dan refleksi tentang hal yang masih perlu dipelajari.

## Referensi

- [MDN Web Docs](https://developer.mozilla.org/)
- [Git Documentation](https://git-scm.com/doc)
- [Dokumentasi Flutter](https://docs.flutter.dev/)
- [Dokumentasi React Native](https://reactnative.dev/docs/getting-started)
- [Dokumentasi Ubuntu Server](https://ubuntu.com/server/docs)
- [Dokumentasi Docker](https://docs.docker.com/)
