# Modul Web 6: Pengenalan React.js

React adalah pustaka JavaScript untuk membangun antarmuka dari komponen. Daripada menulis satu halaman panjang, kita menyusun bagian kecil yang dapat diuji dan digunakan kembali.

## Teori Dasar

Komponen React pada contoh [App.jsx](./App.jsx):

```jsx
function ServiceCard({ title, description }) {
  return <article><h2>{title}</h2><p>{description}</p></article>;
}
```

- `function ServiceCard(...)`: mendefinisikan komponen bernama `ServiceCard`. React memakai nama berawalan huruf kapital untuk membedakannya dari elemen HTML.
- `{ title, description }`: destructuring mengambil properti bernama tersebut dari objek props.
- Props adalah data masukan dari komponen induk; komponen sebaiknya memperlakukannya sebagai read-only.
- `return`: mengembalikan JSX yang akan dirender.
- `<article>`, `<h2>`, `<p>`: elemen semantik yang tampak seperti HTML.
- `{title}`: kurung kurawal di JSX menyisipkan ekspresi JavaScript ke markup.

`useState(0)` membuat pasangan nilai state dan fungsi pengubahnya. Nilai `0` adalah keadaan awal; fungsi pengubah meminta React merender ulang ketika nilai berubah. Arrow function `() => setVisits(visits + 1)` adalah callback tanpa argumen yang menjalankan pembaruan saat tombol diklik. `=>` bukan tanda sama dengan; ia membentuk fungsi.

JSX menyerupai HTML, tetapi merupakan sintaks JavaScript yang dikompilasi. Atribut event React ditulis camelCase seperti `onClick`; nilai callback adalah fungsi, bukan string nama fungsi.

## Alat dan Persiapan Praktikum

- Node.js LTS, npm, editor, dan browser.
- Buat proyek Vite dengan `npm create vite@latest latihan-react -- --template react`. `npm` menjalankan pengelola paket; `create vite@latest` mengambil generator Vite terbaru; nama setelahnya nama folder; `--template react` memilih template React.
- Ikuti instruksi terminal untuk memasang dependensi dan menjalankan development server.

## Langkah-Langkah Praktikum (Hands-on)

1. Buka `src/App.jsx` dan temukan fungsi `App`.
2. Buat komponen layanan kecil, lalu panggil dengan JSX `<ServiceCard title="..." description="..." />`.
3. Amati bahwa atribut `title` dan `description` masuk sebagai props.
4. Tambahkan `const [visits, setVisits] = useState(0)`. Kurung siku mendestruktur pasangan array yang dikembalikan hook.
5. Hubungkan tombol ke `onClick={() => setVisits(visits + 1)}`; callback memastikan perubahan terjadi saat klik, bukan saat render.
6. Jalankan proyek, uji tombol, dan periksa Console bila muncul warning.

## Tugas Modul

Buat halaman React dengan dua kartu layanan dari data props, state penghitung, dan tombol reset. Jelaskan komponen, props, JSX, `useState`, callback, serta kapan render ulang terjadi.

## Referensi

- [React: Learn](https://react.dev/learn)
- [React: Built-in Hooks](https://react.dev/reference/react)
- [Vite Guide](https://vite.dev/guide/)
