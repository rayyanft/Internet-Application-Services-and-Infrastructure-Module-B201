// Fungsi async memungkinkan kita menunggu hasil permintaan jaringan.
async function loadExamplePost() {
  try {
    // Endpoint demonstrasi berisi data publik, bukan data pengguna.
    const response = await fetch("https://jsonplaceholder.typicode.com/posts/1");

    // fetch tidak otomatis gagal hanya karena server memberi status error.
    if (!response.ok) {
      throw new Error(`Permintaan gagal dengan status ${response.status}`);
    }

    // Ubah isi JSON menjadi objek JavaScript.
    const post = await response.json();
    console.log("Judul contoh:", post.title);
  } catch (error) {
    // Tampilkan masalah agar pengguna tahu bahwa data belum berhasil dimuat.
    console.error("Data contoh tidak dapat dimuat:", error.message);
  }
}

// Mulai proses pengambilan data.
loadExamplePost();
