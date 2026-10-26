# Module: Mobile Application Development

This module guides beginners from introductory Flutter and React Native UI widgets to complete API integration. Each section is structured as a dedicated submodule; progress sequentially and test code only on emulators or physical test devices you control.

## Basic Theory

Mobile applications run on handheld devices characterized by diverse screen dimensions, varying application lifecycles, and intermittent network connectivity. Both Flutter and React Native provide cross-platform capabilities to build native user experiences from a unified codebase, but employ differing programming languages (Dart vs JavaScript/TypeScript) and architectural paradigms. State describes dynamic values currently displayed on screen; APIs empower applications to retrieve and synchronize data with remote services.

Explore the four learning stages:
- [1-Flutter-Basics](./1-Flutter-Basics/README.md)
- [2-React-Native-Basics](./2-React-Native-Basics/README.md)
- [3-State-Management](./3-State-Management/README.md)
- [4-Mobile-API-Integration](./4-Mobile-API-Integration/README.md)

Analogy: Widgets and components are modular furniture pieces, state is the dynamic inventory log of the room, and APIs are couriers retrieving information from external departments.

## Tools and Lab Preparation

- A workstation with an editor such as VS Code.
- Flutter SDK for the Flutter submodules; Node.js LTS and Expo for React Native.
- Android Emulator, iOS Simulator, or a personal physical test device paired with network connectivity.
- Consult official platform documentation for installation and software licensing requirements. Note that mobile emulators require adequate disk space and system memory.
- Never hardcode authentication tokens, passwords, or personal identity information into mobile repositories.

## Hands-on Learning Steps

1. Complete the Flutter introduction and verify that the demonstration application runs smoothly.
2. Scaffold a React Native project using Expo and compare its component architecture against Flutter widgets.
3. Introduce local state for an interactive counter button, observing when UI elements re-render.
4. Complete the State Management submodule before lifting state up into shared application providers.
5. Follow the API integration guide; thoroughly test loading, success, and error states.
6. Document target test devices, SDK versions, executed terminal commands, and test logs.

## Module Assignment

Develop a mobile laboratory portal prototype featuring a service listing screen, visual loading indicators, and error banners when network requests fail. Implement the interface using either Flutter or React Native, articulate your state management rationale, and operate strictly with public or mock datasets.

## References

- [Flutter Documentation](https://docs.flutter.dev/)
- [React Native Documentation](https://reactnative.dev/docs/getting-started)
- [Expo Documentation](https://docs.expo.dev/)
