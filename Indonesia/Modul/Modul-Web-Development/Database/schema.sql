-- Hapus tabel latihan lama agar berkas dapat dijalankan ulang.
DROP TABLE IF EXISTS services;

-- Setiap layanan mendapat id unik sebagai primary key.
CREATE TABLE services (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  is_available INTEGER NOT NULL DEFAULT 1
);

-- Data fiktif untuk praktik query; bukan jadwal operasional sungguhan.
INSERT INTO services (name, description, is_available) VALUES
  ('Ruang Praktikum', 'Ruang latihan komputer berdasarkan jadwal.', 1),
  ('Konsultasi', 'Sesi tanya jawab dengan asisten laboratorium.', 1);

-- Tampilkan layanan yang tersedia saja.
SELECT id, name, description
FROM services
WHERE is_available = 1;
