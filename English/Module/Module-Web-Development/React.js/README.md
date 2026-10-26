# Web Module 6: Introduction to React.js

React is a popular declarative JavaScript library for composing modern user interfaces out of reusable components. Instead of authoring monolithic HTML pages, we architect modular, testable, and maintainable units that manage their own state.

## Basic Theory

Component breakdown from [App.jsx](./App.jsx):

```jsx
function ServiceCard({ title, description }) {
  return <article><h2>{title}</h2><p>{description}</p></article>;
}
```

- `function ServiceCard(...)`: Defines a functional component named `ServiceCard`. React enforces PascalCase naming conventions to distinguish custom components from native HTML elements.
- `{ title, description }`: Object destructuring directly extracts expected named properties from the incoming `props` object.
- **Props**: Immutable input data passed down from parent components; child components must treat props as strictly read-only.
- `return`: Returns the JSX template to be evaluated and rendered into the Virtual DOM.
- `<article>`, `<h2>`, `<p>`: Semantic JSX tags mimicking HTML syntax.
- `{title}`: Curly braces in JSX interpolate dynamic JavaScript expressions into the markup.

`useState(0)` initializes a state variable and its corresponding updater function. The argument `0` sets the initial state value; invoking the updater function alerts React that internal data has mutated, triggering a scheduled component re-render. The arrow function `() => setVisits(visits + 1)` serves as an inline event callback executed upon user click; `=>` represents function arrow syntax rather than an assignment or comparison operator.

JSX closely resembles HTML, but is compiled down to standard JavaScript function calls. React event attributes use camelCase notation (such as `onClick`), and their values must be function references or callbacks, never string representations.

## Tools and Lab Preparation

- Node.js LTS, npm, a code editor, and a modern browser.
- Scaffold a fresh Vite project using `npm create vite@latest react-lab -- --template react`. `npm` executes the package manager, `create vite@latest` invokes the latest Vite project generator, `react-lab` denotes the directory name, and `--template react` selects the React template preset.
- Follow terminal prompts to install dependencies and run the local development server.

## Hands-on Learning Steps

1. Inspect `src/App.jsx` and locate the root `App` component function.
2. Build a modular `ServiceCard` child component, and render it using `<ServiceCard title="..." description="..." />`.
3. Verify that the passed `title` and `description` attributes are cleanly received inside the component's props argument.
4. Declare state using array destructuring: `const [visits, setVisits] = useState(0)`.
5. Attach the state updater to a button: `onClick={() => setVisits(visits + 1)}`. Ensure the callback executes on click, rather than evaluating prematurely during render.
6. Run the Vite development server, click the button, and check the browser Console for any runtime warnings.

## Module Assignment

Build a React application featuring at least two service cards populated dynamically from props, a stateful counter tracking user engagement, and a reset button. Provide a concise written explanation covering components, props, JSX syntax, `useState`, event callbacks, and the conditions that trigger component re-renders.

## References

- [React: Getting Started](https://react.dev/learn)
- [React: Built-in Hooks API](https://react.dev/reference/react)
- [Vite Official Guide](https://vite.dev/guide/)
