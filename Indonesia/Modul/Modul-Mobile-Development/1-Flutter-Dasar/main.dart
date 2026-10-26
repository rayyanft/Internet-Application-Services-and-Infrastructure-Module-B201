import 'package:flutter/material.dart';

// Fungsi main adalah titik awal saat aplikasi Flutter dijalankan.
void main() {
  // runApp memasang widget akar aplikasi ke layar.
  runApp(const LabApp());
}

// LabApp adalah widget tanpa state lokal yang berubah.
class LabApp extends StatelessWidget {
  const LabApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp menyediakan tema dan kerangka aplikasi Material.
    return MaterialApp(
      title: 'Portal Laboratorium',
      // Scaffold adalah struktur dasar satu layar.
      home: Scaffold(
        appBar: AppBar(title: const Text('Laboratorium')),
        // Center meletakkan anaknya di tengah ruang yang tersedia.
        body: const Center(
          // Text menampilkan string kepada pengguna.
          child: Text('Selamat datang di praktikum!'),
        ),
      ),
    );
  }
}
