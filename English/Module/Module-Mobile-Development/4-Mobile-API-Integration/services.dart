import 'dart:convert';
import 'package:http/http.dart' as http;

// Future<List<String>> indicates this asynchronous function resolves to a list of strings.
Future<List<String>> loadServices() async {
  // Uri.parse validates and constructs a URI object representing the target endpoint.
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  // await pauses execution until the HTTP response arrives, without blocking the UI event loop.
  final response = await http.get(uri);

  // Non-2xx status codes are handled as failures for the purposes of this exercise.
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw Exception('API service responded with error status ${response.statusCode}');
  }

  // jsonDecode deserializes the raw string body into dynamic Dart collections.
  final decoded = jsonDecode(response.body) as List<dynamic>;

  // Extract a sample subset of titles, casting each item explicitly.
  return decoded
      .take(5)
      .map((item) => item['title'] as String)
      .toList();
}
