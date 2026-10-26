# Mobile Module 3: State Management

State management governs how an application stores, mutates, and propagates reactive data across views. We begin with local component state in Flutter before examining when and how data must be elevated and shared across broader widget subtrees.

## Basic Theory

Think of application state as a stadium scoreboard: when an event occurs, the underlying numerical score changes and the visual display must promptly reflect the updated value. In Flutter, `StatefulWidget` instances delegate mutable state to a persistent `State` object. Calling `setState` signals the Flutter framework that internal variables have changed, causing the framework to schedule a rebuild of that widget's `build()` tree.

When data is isolated to a single component view, local state is typically the most clean and performant strategy. When disparate screens must synchronize identical datasets, broader architectural patterns (such as `ChangeNotifier`, Provider, Riverpod, or BLoC) become appropriate.

```dart
int count = 0;
setState(() { count = count + 1; });
```

- `int`: Signed 64-bit integer numeric data type in Dart.
- `count`: Name of the counter variable identifier.
- `= 0`: Assigns an initial zero value during state initialization.
- `setState(...)`: Synchronous callback that flags the widget subtree as "dirty," queueing a UI re-render.
- `() { ... }`: An anonymous closure function passed as an argument.
- `count = count + 1`: Evaluates the current count, increments it by one, and assigns the result back to `count`.

In [main.dart](./main.dart):
- `void main() => runApp(const CounterApp());`: Employs Dart's concise arrow function syntax (`=>`) for single-expression function bodies.
- `CounterPage extends StatefulWidget`: Associates a configuration widget with its mutable companion state class.
- `createState()`: Instantiates `_CounterPageState`. The leading underscore (`_`) marks the class as library-private in Dart.
- `Column`: Lays out children in a vertical arrangement; `mainAxisSize: MainAxisSize.min` shrinks the column to fit its contents tightly rather than expanding across the full screen height.

## Tools and Lab Preparation

- Flutter SDK and an emulator or physical device as prepared in Module 1.
- A basic Flutter project template.
- Review Flutter's official state management documentation before adopting external third-party state libraries.

## Hands-on Learning Steps

1. Create a `StatefulWidget` subclass named `CounterPage`.
2. Declare `int count = 0;` as an instance member of the `_CounterPageState` class (never inside the `build` method).
3. Add an `ElevatedButton` providing an `onPressed` callback.
4. Inside the button handler, wrap the increment operation inside `setState(() { count++; });`.
5. Display the count within a `Text('Completed sessions: $count')` widget using Dart string interpolation.
6. Add a secondary reset button setting `count = 0` inside `setState`. Verify that both actions update the screen immediately.

## Module Assignment

Develop a mock equipment reservation counter with increment, decrement, and reset controls. Submit your code alongside a written explanation answering: what explicitly triggers `setState`, which components are rebuilt during the cycle, and why mutable state variables must reside in the `State` class rather than inside the `build()` method.

## References

- [Flutter: Introduction to State Management](https://docs.flutter.dev/data-and-backend/state-mgmt/intro)
- [Flutter: StatefulWidget Class API Reference](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)
