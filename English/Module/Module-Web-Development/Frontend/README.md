# Supplementary Web Module: Frontend Fundamentals

The frontend is the client-facing layer executed directly on user devices. This module demonstrates how structural markup, user interaction, and accessible feedback mechanisms integrate seamlessly in browser applications.

## Basic Theory

The included [index.html](./index.html) implementation features semantic `<form>`, `<input>`, `<button>`, and list elements. Explicit `id` associations link `<label for="...">` elements directly to their corresponding input fields, enabling screen readers to announce control purposes accurately. The attribute `aria-live="polite"` instructs assistive technologies to announce dynamic status updates without cutting off ongoing speech.

The `showServices(items)` helper function accepts an array of strings:
- `replaceChildren()` efficiently empties existing child nodes before re-rendering.
- `items.length` checks whether results exist; an empty state notice is displayed if no items match.
- `forEach()` iterates over matching entries, creating a new `<li>` via `document.createElement`.
- Assigning values through `textContent` is secure against Cross-Site Scripting (XSS) because it treats inputs strictly as text rather than parsing arbitrary HTML tags.

Inside the form `submit` handler:
- `event.preventDefault()` suppresses default browser behavior that triggers a full page refresh upon form submission.
- `trim()` strips extraneous surrounding whitespace from search inputs.
- `toLowerCase()` normalizes casing for case-insensitive comparisons.
- `filter()` generates a new subset array containing items whose names satisfy `includes(query)`.

## Tools and Lab Preparation

- A modern web browser and text editor.
- Open the local [index.html](./index.html) file directly in your browser; this exercise requires no external build tools or server dependencies.
- Use Developer Tools to inspect DOM changes, review the Console, and debug JavaScript execution.

## Hands-on Learning Steps

1. Open the page in your browser and verify the initial dataset rendered by `showServices(services)`.
2. Enter a search keyword and press either the submit button or the Enter key; both trigger the form `submit` event.
3. Test edge cases: mixed capitalization, leading/trailing whitespace, and non-matching queries.
4. Verify accessibility: use Tab to navigate between the input and button, and press Enter to trigger form submission.
5. Trace `showServices` line by line to understand how data arrays are converted into DOM elements.

## Module Assignment

Extend the application by introducing categories and combined multi-criteria filtering. Maintain explicit form labels, helpful empty state messages, and complete keyboard accessibility. Submit your code alongside an explanation of variables, event lifecycles, and how using `textContent` mitigates script injection risks.

## References

- [MDN: Web Forms](https://developer.mozilla.org/en-US/docs/Learn_web_development/Extensions/Forms)
- [MDN: Document Object Model (DOM)](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
- [W3C WAI: Forms Tutorial](https://www.w3.org/WAI/tutorials/forms/)
