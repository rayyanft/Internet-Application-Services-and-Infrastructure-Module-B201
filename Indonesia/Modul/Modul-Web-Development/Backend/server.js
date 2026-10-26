// Express membantu kita membuat server dan route HTTP dengan ringkas.
import express from "express";

const app = express();
const port = 3000;

// Data contoh berada di memori agar latihan tidak memerlukan database.
const services = [
  { id: 1, name: "Ruang Praktikum", available: true },
  { id: 2, name: "Konsultasi", available: false },
];

// Route GET ini mengirim daftar informasi dalam format JSON.
app.get("/api/services", (request, response) => {
  response.json(services);
});

// Mulai mendengarkan hanya pada komputer lokal untuk latihan pemula.
app.listen(port, "127.0.0.1", () => {
  console.log(`Server latihan berjalan di http://127.0.0.1:${port}`);
});
