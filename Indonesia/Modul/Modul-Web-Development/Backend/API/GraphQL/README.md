# GraphQL

GraphQL adalah bahasa query untuk API sekaligus model eksekusi di sisi server. Client meminta field tertentu melalui schema, lalu server mengambil nilai field tersebut. GraphQL bukan database dan tidak otomatis membuat API lebih cepat.

Pertimbangkan GraphQL jika beberapa client membutuhkan kombinasi data terkait yang berbeda-beda dan tim mampu merawat schema, resolver, otorisasi, serta batas query. REST sering lebih sederhana untuk operasi resource yang mudah diprediksi, cache HTTP, dan layanan kecil. GraphQL memerlukan perhatian khusus pada otorisasi di setiap field/resolver dan query bertingkat yang mahal.

Situs resmi: [GraphQL](https://graphql.org/).
