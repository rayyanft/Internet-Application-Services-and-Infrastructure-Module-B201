import { useState } from "react";

// Komponen menerima judul dan deskripsi sebagai props.
function ServiceCard({ title, description }) {
  return (
    <article>
      <h2>{title}</h2>
      <p>{description}</p>
    </article>
  );
}

// App adalah komponen utama yang dirender oleh proyek React.
export default function App() {
  // useState menyimpan nilai yang berubah saat tombol ditekan.
  const [visits, setVisits] = useState(0);

  return (
    <main>
      <h1>Portal Laboratorium</h1>
      <ServiceCard
        title="Ruang Praktikum"
        description="Periksa jadwal sebelum menggunakan ruang."
      />
      <p>Jumlah latihan dibuka: {visits}</p>
      <button type="button" onClick={() => setVisits(visits + 1)}>
        Tambah hitungan
      </button>
    </main>
  );
}
