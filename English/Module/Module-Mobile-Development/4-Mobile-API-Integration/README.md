# Mobile Module 4: API Integration

In this module, our mobile application retrieves dynamic data from a remote REST API. We will examine the complete lifecycle of network requests: dispatching HTTP requests, parsing JSON responses, handling loading states, rendering data collections, and gracefully recovering from network disconnects.

## Basic Theory

Web APIs accept HTTP requests and return status codes alongside structured payloads (predominantly JSON). In mobile engineering:
- `async`: Flags functions containing asynchronous computations that execute without blocking the main rendering isolate.
- `await`: Suspends function execution until the target `Future` resolves.
- `Future`: A Dart type representing a potential value or error that will become available in the future.

Never assume client devices enjoy persistent connectivity, and never hardcode private API keys or database secrets in client application binaries.

Dissecting [services.dart](./services.dart):
- `import 'dart:convert';`: Loads JSON encoding and decoding utilities from the Dart core SDK.
- `import 'package:http/http.dart' as http;`: Imports the community HTTP package with the alias `http`.
- `Future<List<String>>`: Declares an asynchronous return signature resolving to a list of strings.
- `Uri.parse(...)`: Validates and instantiates an immutable URI reference.
- `await http.get(uri)`: Dispatches an HTTP `GET` request and awaits the `Response`.
- `response.statusCode < 200 || response.statusCode >= 300`: Validates HTTP status code bounds using logical operators.
- `throw Exception(...)`: Explicitly propagates failures to calling functions for display in UI error banners.
- `jsonDecode(response.body) as List<dynamic>`: Parses raw JSON strings into dynamic Dart lists.
- `.take(5).map(...).toList()`: Selects five sample items, maps each record into a string title, and returns a concrete Dart `List<String>`.

## Tools and Lab Preparation

- Flutter SDK and active internet connection.
- Add the `http` package to your Flutter project: `flutter pub add http` (`flutter` runs the CLI, `pub add` resolves and injects the dependency into `pubspec.yaml`, and `http` is the package name).
- Review endpoint terms of use and work strictly with public test data.

## Hands-on Learning Steps

1. Integrate the `loadServices` helper into your Flutter project.
2. Render a `CircularProgressIndicator` while the asynchronous request is pending.
3. Validate the HTTP response status code before attempting to access the response body.
4. Transform deserialized JSON into typed Dart models or structured lists.
5. Catch network exceptions and present informative error messages with a retry button.
6. Test in both online and airplane/offline modes; verify that sensitive tokens are never emitted to debug logs.

## Module Assignment

Build a mobile service directory screen backed by a public API or local mock server. Gracefully handle all four application states: loading spinner, successful data list, empty query notification, and network failure dialog. Submit your code accompanied by an explanation of `async`, `await`, `Future`, status validation, and client privacy best practices.

## References

- [Flutter: Fetch Data from the Internet](https://docs.flutter.dev/cookbook/networking/fetch-data)
- [Dart: Asynchronous Programming Guide](https://dart.dev/language/async)
- [Dart http Package Documentation](https://pub.dev/packages/http)
