import 'dart:convert';
import 'package:http/http.dart' as http;

// Future<List<String>> berarti fungsi akan menghasilkan daftar teks nanti.
Future<List<String>> loadServices() async {
  // Uri.parse mengubah alamat teks menjadi objek URI untuk request.
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  // await menunggu respons tanpa menghentikan event loop antarmuka.
  final response = await http.get(uri);

  // Status selain 2xx bukan hasil sukses untuk latihan ini.
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw Exception('Layanan memberi status ${response.statusCode}');
  }

  // JSON dapat memuat data terstruktur; decode mengubah string menjadi objek.
  final decoded = jsonDecode(response.body) as List<dynamic>;

  // Ambil beberapa judul contoh; cast menjadikan tipe lebih jelas.
  return decoded
      .take(5)
      .map((item) => item['title'] as String)
      .toList();
}
