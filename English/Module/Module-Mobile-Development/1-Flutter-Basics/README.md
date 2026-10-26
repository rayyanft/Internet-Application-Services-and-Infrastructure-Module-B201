# Mobile Module 1: Flutter Fundamentals

Welcome to Flutter! Flutter is Google's multi-platform UI framework powered by the Dart language. In this module, we construct our first mobile screen and explore how widgets form the fundamental building blocks of Flutter user interfaces.

## Basic Theory

Envision a mobile screen as an assemblage of interlocking modular blocks. In Flutter, every piece of text, button, layout column, padding container, and even the page itself is a **Widget**.
- **`StatelessWidget`**: Suitable for screens or components that do not mutate their visual presentation internally once rendered.
- **`StatefulWidget`**: Employed when the interface must dynamically re-render in response to mutable state changes.
- **`Scaffold`**: Implements the standard Material visual layout structure, providing out-of-the-box slots for app bars, drawers, floating action buttons, and body content.

Core example:

```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab Portal')),
      body: const Center(child: Text('Hello, students!')),
    );
  }
}
```

Line-by-line breakdown:
- `class HomePage extends StatelessWidget`: Declares a custom widget class named `HomePage` inheriting base behavior from `StatelessWidget`.
- `const HomePage({super.key});`: Constructor initializing the widget; `const` allows compile-time canonicalization, and `super.key` forwards an optional identifier key to the superclass.
- `@override`: Informs the Dart compiler that the following method overrides a superclass definition.
- `Widget build(BuildContext context)`: Mandatory build method returning the widget subtree. `context` provides handle access to the widget's location in the element tree (used for themes, media queries, and navigation).
- `return Scaffold(...)`: Returns the Material layout shell.
- `AppBar(...)`: Renders the top application bar; `title` accepts a child widget (typically `Text`).
- `body`: The primary content area; `Center` centers its single child within available screen bounds.
- `child`: Connects a child widget into the hierarchy; `Text` displays formatted typography.

In [main.dart](./main.dart):
- `import 'package:flutter/material.dart';`: Imports the standard Material design library from the Flutter framework package.
- `void main() { ... }`: The entry point function that returns no value (`void`).
- `runApp(const LabApp())`: Mounts the root widget to the rendering pipeline.

## Tools and Lab Preparation

- Install the Flutter SDK and VS Code according to the [official installation guide](https://docs.flutter.dev/get-started/install).
- Execute `flutter doctor` in your terminal to verify SDK binaries, editor plugins, and mobile emulator toolchains; resolve any flagged issues.
- Launch an Android Emulator, iOS Simulator, or connect a personal test device.

## Hands-on Learning Steps

1. Scaffold a project via `flutter create portal_lab` (`flutter` invokes the CLI, `create` scaffolds the template, and `portal_lab` names the target folder).
2. Navigate into the directory: `cd portal_lab`.
3. With an emulator running, launch the app using `flutter run`. This compiles and installs the application.
4. Open `lib/main.dart` and locate the top-level `main()` function and `MaterialApp` widget.
5. Author a `HomePage` widget following the example above and assign it to `MaterialApp.home`.
6. Edit display strings, save the file, and observe instant hot reload feedback in your emulator.

## Module Assignment

Build a standalone laboratory overview screen featuring an `AppBar`, a welcoming banner, a vertical list of three laboratory services, and an action button. Employ descriptive naming conventions, explain the role of each widget in your tree, test on an emulator, and document tested screen dimensions.

## References

- [Flutter: Get Started](https://docs.flutter.dev/get-started)
- [Dart Language Tour](https://dart.dev/language)
