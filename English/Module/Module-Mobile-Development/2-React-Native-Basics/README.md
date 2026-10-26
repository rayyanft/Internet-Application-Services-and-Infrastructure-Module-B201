# Mobile Module 2: React Native Fundamentals

In this module, we construct cross-platform mobile interfaces using React Native and Expo. Rather than compiling to a web browser DOM, React Native translates JavaScript components directly into native iOS and Android interface primitives.

## Basic Theory

Components are functions that return renderable interface specifications.
- `<View>`: Serves as the fundamental layout container (analogous to a `<div>` on the web, backed by native view nodes).
- `<Text>`: Dedicated text-rendering component; raw strings must strictly reside within a `<Text>` wrapper.
- `<Button>`: Provides pre-styled native button controls.
- **Props**: Read-only input data supplied by parent components.
- **State**: Mutable values that dictate dynamic component re-rendering.

```jsx
export default function App() {
  return (
    <View>
      <Text>Laboratory Portal</Text>
    </View>
  );
}
```

- `export default`: Designates `App` as the primary module export consumed by the Expo runtime.
- `function App()`: Defines the root functional component.
- `return`: Returns the JSX elements to be mounted on screen.
- `<View>`: Establishes the layout boundary.
- `<Text>`: Renders text strings on native mobile platforms.
- `()`: Delimits multi-line JSX syntax cleanly.

In [App.js](./App.js):
- `import { StyleSheet, Text, View } from "react-native";`: Imports named primitives from the core React Native framework package.
- `ServiceCard({ title, description })`: Uses parameter destructuring to read incoming props.
- `StyleSheet.create`: Optimizes layout rules into an immutable style sheet reference; `flex: 1` instructs the container to expand across available viewport space, while `padding` configures internal margins.

## Tools and Lab Preparation

- Install Node.js LTS, a modern code editor, and the Expo Go client app on a physical test device (or configure local iOS/Android emulators).
- Follow the official [Expo Getting Started guide](https://docs.expo.dev/get-started/create-a-project/).
- Only test on hardware and networks you are authorized to operate.

## Hands-on Learning Steps

1. Scaffold an Expo project: `npx create-expo-app@latest portal-mobile` (`npx` executes the generator without global installation, and `portal-mobile` specifies the project directory).
2. Change into the project directory: `cd portal-mobile`.
3. Start the development server: `npx expo start`. Scan the resulting terminal QR code using the Expo Go camera on your test device.
4. Open the root app file and construct `View`, `Text`, and `Button` components.
5. Author styling rules using `StyleSheet.create`.
6. Inspect real-time console logs and error overlays on your device during live editing.

## Module Assignment

Develop a React Native screen that displays the laboratory title, two modular service cards, and an interactive action button. Extract the service card into an independent component receiving props from the parent. Provide a written summary contrasting `<View>` with `<Text>`, and include mobile screenshots from your testing session.

## References

- [React Native: Core Components and APIs](https://reactnative.dev/docs/components-and-apis)
- [Expo: Create a Project](https://docs.expo.dev/get-started/create-a-project/)
