# Web Module 4: JavaScript Fundamentals for the Browser

JavaScript introduces dynamic behavior to web documents. While HTML organizes structural content and CSS dictates visual styling, JavaScript responds to user interactions and manipulates the Document Object Model (DOM) in real time.

## Basic Theory

Variables store references to values. `const` creates an immutable binding that cannot be reassigned; `let` is used when a variable identifier must point to different values over time. Objects stored inside `const` bindings can still have their internal properties mutated. Functions encapsulate callable sequences of instructions. The DOM is an object-oriented representation of the web page that scripts can inspect and modify.

Example:

```js
const button = document.getElementById("status-button");
button.addEventListener("click", () => {
  document.getElementById("status").textContent = "Operating schedule is active";
});
```

- `const button`: Declares an immutable identifier named `button`; `const` prevents reassignment to a different value.
- `=`: Assignment operator during variable initialization.
- `document`: Built-in global browser object representing the loaded document.
- `.getElementById(...)`: DOM method retrieving the element with the matching `id` attribute; text within quotes is a string literal.
- `.`: Property and method member access operator.
- `button.addEventListener`: Registers an event handler function invoked whenever the specified event fires.
- `"click"`: The target click event identifier.
- `() => { ... }`: An arrow function with no input parameters; `=>` separates parameter declarations from the function body.
- `.textContent`: DOM property setting or reading plain text content; using plain text prevents untrusted strings from being parsed as vulnerable HTML markup.
- `;`: Terminates JavaScript statements.

Event listeners register actions that execute only when interactions occur, not when the function is first declared. The browser executes callbacks asynchronously after user triggers. The `defer` attribute on `<script>` tags instructs the browser to parse the HTML document completely before executing the script file.

## Tools and Lab Preparation

- A modern code editor, web browser, and browser Developer Tools.
- Open [index.html](./index.html) and [script.js](./script.js) located within the same directory.
- Verify that the HTML includes `<script src="script.js" defer></script>`; `src` identifies the script file, while `defer` coordinates execution timing.

## Hands-on Learning Steps

1. Inspect the `id` attributes assigned to the paragraph and button elements in HTML.
2. Verify that those exact `id` strings match the arguments passed to `getElementById` in JavaScript (casing is sensitive).
3. Open the document in your browser and click the button. The callback updates the paragraph text via `.textContent`.
4. Open the **Console** tab in Developer Tools. Read runtime errors from top to bottom; line numbers point directly to problem origins.
5. Experiment with custom messages and re-test. Implement simple conditional branching using `if/else` statements.

## Module Assignment

Build a client-side search filter for a list of lab services. Use cleanly named variables, attach a `submit` event listener, call `preventDefault()` to prevent unwanted page reloads, and present a helpful message when query matches yield no results. Explain the purpose of each variable, callback function, and the lifecycle sequence from user keystroke to DOM update.

## References

- [MDN: JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [MDN: DOM Scripting](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting)
- [JavaScript.info](https://javascript.info/)
