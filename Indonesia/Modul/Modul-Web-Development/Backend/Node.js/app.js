// process.argv berisi argumen yang diberikan saat menjalankan program.
// Dua elemen pertama digunakan Node untuk informasi runtime dan berkas.
const serviceName = process.argv[2];

// Beri petunjuk yang jelas jika pengguna belum memasukkan nama layanan.
if (!serviceName) {
  console.log("Cara pakai: node app.js <nama-layanan>");
} else {
  // Template literal menyisipkan nilai variabel ke dalam kalimat.
  console.log(`Informasi untuk layanan ${serviceName} tersedia di portal laboratorium.`);
}
