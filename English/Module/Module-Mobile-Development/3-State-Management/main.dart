import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

// StatefulWidget is required because dynamic counter values on the screen change when buttons are pressed.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

// The State object holds mutable data that persists across widget rebuilds.
class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise Counter')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Variable interpolation ($count) formats numbers dynamically into text strings.
            Text('Completed sessions: $count'),
            const SizedBox(height: 12),
            ElevatedButton(
              // setState notifies the Flutter runtime that state has mutated, triggering a rebuild.
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              child: const Text('Increment'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
