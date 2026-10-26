import 'package:flutter/material.dart';

// The main function is the mandatory entry point when executing a Flutter application.
void main() {
  // runApp attaches the root widget of the application tree to the screen.
  runApp(const LabApp());
}

// LabApp is an immutable widget that manages no mutable local state.
class LabApp extends StatelessWidget {
  const LabApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides Material design theming and top-level routing conventions.
    return MaterialApp(
      title: 'Laboratory Portal',
      // Scaffold implements the fundamental visual layout structure for a screen.
      home: Scaffold(
        appBar: AppBar(title: const Text('Laboratory')),
        // Center aligns its child widget directly in the middle of available space.
        body: const Center(
          // Text renders a string of text with customizable styling.
          child: Text('Welcome to the practical lab!'),
        ),
      ),
    );
  }
}
