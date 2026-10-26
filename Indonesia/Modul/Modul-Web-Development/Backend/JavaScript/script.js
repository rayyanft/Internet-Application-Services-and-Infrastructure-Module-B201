// Ambil elemen dari HTML menggunakan id yang sudah ditentukan.
const statusText = document.getElementById("status");
const statusButton = document.getElementById("status-button");

// Dengarkan klik agar halaman dapat memberi respons kepada pengguna.
statusButton.addEventListener("click", () => {
  // Ubah isi paragraf tanpa memuat ulang seluruh halaman.
  statusText.textContent = "Silakan periksa jadwal resmi laboratorium.";
});
