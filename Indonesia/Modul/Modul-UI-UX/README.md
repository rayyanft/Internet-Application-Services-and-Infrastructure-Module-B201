# Modul: Perancangan UI/UX dengan Figma

Selamat datang di modul UI/UX! Sebelum menulis kode, kita akan belajar memahami tujuan pengguna, merancang alur, dan menguji rancangan agar aplikasi tidak hanya menarik, tetapi juga mudah digunakan.

## Teori Dasar

**UI (User Interface)** adalah bagian yang dilihat dan disentuh: tombol, teks, warna, ikon, dan menu. **UX (User Experience)** adalah keseluruhan pengalaman saat seseorang mencoba mencapai tujuan. UI yang cantik tetapi membingungkan ibarat pintu berdekorasi indah tanpa pegangan.

Alur desain pemula:

1. **Masalah pengguna**: kebutuhan yang ingin dibantu, bukan langsung ide fitur.
2. **Persona**: ringkasan pengguna sasaran berdasarkan temuan, bukan stereotip.
3. **User flow**: urutan langkah untuk mencapai tujuan.
4. **Wireframe**: sketsa tata letak, seperti denah rumah sebelum memilih warna cat.
5. **Prototipe**: simulasi klik untuk menguji alur tanpa membuat aplikasi sungguhan.
6. **Uji kegunaan**: amati orang mencoba tugas tanpa membimbing, lalu perbaiki hambatan.

Di Figma, **Frame** adalah bidang layar; **Text** menampilkan tulisan; **Shape** membuat bentuk; **Component** adalah elemen yang dapat digunakan ulang; **Prototype connection** menghubungkan satu frame ke frame lain. Nama layer yang jelas membantu rekan memahami rancangan, seperti label pada laci.

## Alat dan Persiapan Praktikum

- Komputer dan browser modern.
- Akun Figma dari situs resminya; gunakan berkas pribadi atau tim laboratorium sesuai kebijakan.
- Pilih masalah latihan, contohnya mahasiswa kesulitan menemukan jadwal layanan.
- Gunakan data fiktif. Jangan mencatat nama, foto, kontak, atau informasi pribadi responden tanpa persetujuan.

## Langkah-Langkah Praktikum (Hands-on)

1. Tulis masalah dalam format: “Pengguna membutuhkan ___ karena ___.” Hindari memasukkan solusi ke kalimat masalah.
2. Tentukan satu tugas yang hendak dilakukan pengguna, misalnya “menemukan waktu layanan laboratorium”.
3. Buat alur langkah dari awal hingga selesai. Setiap kotak mewakili satu layar atau keputusan.
4. Buat frame ponsel dan gambar wireframe dengan judul, navigasi, isi jadwal, serta tombol.
5. Tambahkan gaya visual: pilih ukuran teks yang hierarkis, kontras yang terbaca, dan jarak antar elemen yang konsisten.
6. Buat koneksi prototipe dari tombol ke frame tujuan. Nama frame dan layer dengan arti yang jelas.
7. Minta rekan mencoba tugas. Instruksi harus netral; catat bagian yang ragu atau salah dipahami, bukan hanya komentar “suka/tidak suka”.
8. Perbaiki satu masalah terpenting dan ulangi uji singkat. Simpan alasan perubahan.

## Tugas Modul

Buat prototipe aplikasi informasi laboratorium yang berisi beranda, detail jadwal, dan kontak. Serahkan ringkasan masalah, alur, wireframe, tautan prototipe, tiga keputusan desain beserta alasan, serta satu perubahan hasil uji kegunaan. Atur akses tautan hanya untuk pihak yang perlu meninjau.

## Referensi

- [Figma Learn](https://help.figma.com/hc/en-us/categories/360002051613-Get-started)
- [Nielsen Norman Group: Usability 101](https://www.nngroup.com/articles/usability-101-introduction-to-usability/)
- [W3C: Web Accessibility Initiative](https://www.w3.org/WAI/fundamentals/)

## Workspace Figma: Dashboard dan Alat

Nama dan posisi alat Figma dapat berubah seiring pembaruan produk; beberapa kontrol juga bergantung pada objek yang dipilih atau paket akun. Panduan ini mencakup bagian umum editor desain. Jika tampilan berbeda, gunakan tooltip yang muncul saat kursor diarahkan ke alat dan bantuan resmi Figma.

### Dashboard utama Figma

Sebelum membuka file, layar beranda/pengelola file umumnya menyediakan **Home/Recents** untuk kembali ke pekerjaan terbaru, **Drafts** untuk file pribadi, **Teams/Projects** untuk file bersama, pencarian, serta tindakan membuat/mengimpor file. **Community** menyediakan resource yang dipublikasikan komunitas seperti file, plugin, dan widget. Navigasi serta tindakan yang tersedia dapat berbeda bergantung akun dan pembaruan produk. Periksa lokasi file dan izin berbagi sebelum menambahkan pekerjaan ke project tim.

### Bagian utama editor

| Bagian | Kegunaan |
| --- | --- |
| **Bilah atas** | Menampilkan nama file dan tindakan file umum. Biasanya terdapat undo/redo, kolaborasi dan berbagi, serta tombol **Present** untuk melihat pratinjau prototipe. |
| **Panel Pages dan Layers** | **Pages** membagi file menjadi area kerja (misalnya riset, wireframe, dan UI final). **Layers** menampilkan objek pada halaman aktif beserta urutan tumpukannya. Ganti nama, atur urutan, sembunyikan, kunci, atau kelompokkan layer di sini. |
| **Panel Assets** | Menampilkan komponen dan style yang dapat digunakan ulang dari file atau library tim. Seret asset ke canvas untuk membuat instance. |
| **Canvas** | Ruang kerja untuk menyusun halaman, frame, dan objek. Geser tampilan, ubah zoom, dan pilih objek di sini. Objek di luar frame bisa berupa draf atau asset; konten di dalam frame mewakili layar. |
| **Toolbar** | Menyediakan alat untuk memilih/memindah atau mengubah skala, membuat section atau frame, menggambar rectangle/line/shape, memakai pen atau pencil, menambah teks, memasukkan resource, memberi komentar, dan menggeser canvas. Beberapa alat berada dalam dropdown; arahkan kursor untuk membaca tooltip. |
| **Panel properti kanan** | Isinya mengikuti objek terpilih. Pada **Design**, atur posisi, ukuran, perataan, layout/Auto Layout, grid, fill, stroke, efek, dan ekspor. Pada **Prototype**, atur pemicu, aksi, tujuan, dan transisi. **Inspect/Dev Mode** membantu developer memeriksa properti implementasi jika tersedia. |
| **Komentar dan kolaborasi** | Komentar menempel pada lokasi tertentu. Avatar/kursor menunjukkan rekan kolaborator; gunakan komentar dan version history untuk meninjau perubahan tanpa menimpa pekerjaan orang lain diam-diam. |
| **Zoom dan pratinjau** | Kontrol zoom membantu memeriksa detail; **Present** menampilkan alur interaktif pada ukuran layar yang realistis. Periksa prototipe pada zoom 100% dan ukuran perangkat sasaran. |

### Elemen desain yang umum

- **Section** mengelompokkan pekerjaan terkait di canvas, seperti alur atau eksplorasi desain. Section adalah wadah pengorganisasian, bukan biasanya layar yang dilihat pengguna.
- **Frame** mewakili layar atau wadah dengan ukuran tertentu (ponsel, tablet, desktop, atau ukuran khusus). Frame dapat memotong konten dan menjadi tujuan prototipe.
- **Text** membuat label, judul, paragraf, dan teks tombol. Atur font, ukuran, tinggi baris, perataan, dan warna agar mudah dibaca melalui panel properti.
- **Shape** (rectangle, line, ellipse, polygon, dan lainnya) membuat latar, pemisah, ikon, dan ilustrasi sederhana. Shape adalah unsur visual, bukan pengganti label yang bermakna.
- **Pen/vector** menggambar path dan ikon khusus. Jaga path tetap sederhana dan pastikan ikon mudah dikenali pada ukuran tampilnya.
- **Image/media** menempatkan aset visual dalam rancangan. Gunakan aset berlisensi atau buatan sendiri, atur crop dengan sengaja, dan sediakan teks alternatif pada produk yang diimplementasikan.
- **Component dan instance**: component adalah elemen sumber yang dapat digunakan ulang (misalnya tombol); instance adalah salinan yang terhubung. Perubahan sumber dapat diterapkan pada salinan bersama; gunakan variant untuk status seperti default, hover, atau disabled.
- **Auto Layout** menyusun child secara baris, kolom, atau wrapping dengan jarak, padding, dan perataan. Fitur ini membantu komponen menyesuaikan ukuran ketika teks atau konten berubah.
- **Constraints dan resizing** menentukan perilaku objek ketika frame induknya berubah. Gunakan agar margin, perataan, atau posisi proporsional tetap sesuai.
- **Interaksi Prototype** menghubungkan pemicu (sering kali tombol) dengan aksi dan tujuan, misalnya berpindah ke frame lain atau membuka overlay. Ini mensimulasikan alur, bukan membuat backend sungguhan.
- **Styles dan variables** menyimpan pilihan bersama seperti warna, tipografi, jarak, atau mode jika tersedia. Pilihan ini memudahkan pembaruan konsisten.

### Membuat UI sederhana di Figma

1. Buat design file dan tambahkan halaman seperti `Riset`, `Wireframe`, dan `UI`.
2. Pada halaman UI, buat **Frame** seukuran perangkat dan beri nama layer yang jelas, misalnya `Beranda / Mobile`.
3. Tambahkan **Section** untuk mengelompokkan layar terkait bila membantu. Buat header dari teks dan shape sederhana, lalu pisahkan konten dan kontrol menjadi layer dengan nama yang jelas.
4. Pilih layer terkait dan terapkan **Auto Layout** agar jarak serta padding menyesuaikan konten. Atur text style, fill, dan stroke pada properti Design.
5. Ubah elemen berulang (misalnya tombol utama) menjadi **Component**. Buat variant untuk status yang perlu dikenali pengguna, lalu gunakan instance untuk tombol berulang.
6. Duplikasi atau buat frame kedua untuk layar berikutnya. Pada **Prototype**, hubungkan tombol ke frame tujuan, pilih pemicu dan transisi yang sesuai, lalu uji melalui **Present**.
7. Minta reviewer menyelesaikan tugas netral seperti “temukan jadwal lab paling dekat”. Catat keraguan, perbaiki masalah terpenting, lalu uji lagi.
8. Beri nama Pages, frames, dan layers secara bermakna; tambahkan komentar untuk pertanyaan yang belum terselesaikan; bagikan tautan hanya-lihat kecuali akses edit memang dibutuhkan.

Figma adalah alat desain dan kolaborasi, bukan jaminan bahwa UI sudah mudah digunakan atau aksesibel. Periksa kontras, keterbacaan teks, status fokus dan error, ukuran target sentuh, perilaku keyboard, serta semantik screen reader pada implementasi akhirnya.
