# REST API

REST adalah gaya arsitektur untuk aplikasi jaringan, yang umumnya diterapkan di atas HTTP menggunakan URL berorientasi resource dan metode seperti `GET`, `POST`, `PUT`/`PATCH`, serta `DELETE`. REST adalah pendekatan desain, bukan bahasa pemrograman atau framework server; layanan dari berbagai bahasa dapat mengikuti pendekatan ini.

Pilih REST untuk operasi CRUD berbasis resource, kompatibilitas luas dengan client, serta dukungan cache dan alat HTTP yang sederhana. Pertimbangkan desain lain jika client membutuhkan query bertingkat yang sangat spesifik (misalnya GraphQL) atau integrasi yang sudah ada memerlukan kontrak SOAP formal. Buat endpoint konsisten, validasi masukan, dan dokumentasikan status serta bentuk data.

Referensi: [Metode request HTTP MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods).
