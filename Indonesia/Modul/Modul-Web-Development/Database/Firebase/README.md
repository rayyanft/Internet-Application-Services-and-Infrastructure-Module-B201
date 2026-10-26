# Firebase

Firebase adalah platform pengembangan aplikasi dari Google, bukan satu database. Pilihan database Firebase yang umum adalah Cloud Firestore, database dokumen dengan query dan listener realtime, serta Realtime Database, pohon JSON dengan sinkronisasi realtime.

Pertimbangkan Firebase jika proyek web atau mobile terbantu oleh SDK client terkelola, pembaruan realtime, dan integrasi dengan layanan Firebase lainnya. Firestore sering menjadi titik awal untuk data berorientasi dokumen; Realtime Database dapat cocok untuk pola sinkronisasi sederhana berlatensi rendah. Untuk data dengan banyak join relasional dan kebutuhan laporan SQL, PostgreSQL atau MySQL mungkin lebih alami. Supabase menawarkan pendekatan terkelola berbeda yang berbasis PostgreSQL relasional.

Pilih produk Firebase dengan sengaja, rancang operasi baca/tulis dengan mempertimbangkan harga dan batas query, serta atur Security Rules sebelum data dibuka ke client. Dokumentasi resmi: [Firebase Documentation](https://firebase.google.com/docs).
