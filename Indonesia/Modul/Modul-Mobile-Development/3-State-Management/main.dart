import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

// StatefulWidget dipakai karena angka pada layar berubah saat tombol ditekan.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

// Objek State menyimpan nilai yang bertahan antar-render.
class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penghitung Latihan')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Interpolasi $count memasukkan angka ke dalam teks.
            Text('Jumlah latihan: $count'),
            ElevatedButton(
              // setState memberi tahu Flutter untuk memperbarui UI.
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              child: const Text('Tambah'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Atur ulang'),
            ),
          ],
        ),
      ),
    );
  }
}
