# Web Module 2: CSS Fundamentals and Responsive Layout

CSS (*Cascading Style Sheets*) governs the visual presentation and formatting of HTML documents. If HTML is the architectural framing of a house, CSS represents the paint colors, spatial proportions, and interior furnishings that make the space functional and welcoming.

## Basic Theory

CSS rules typically take the form `selector { property: value; }`.

```css
.card {
  padding: 16px;
  color: #1f2937;
}
```

- `.card`: Class selector; the dot prefix matches any HTML element whose `class` attribute includes `card`.
- `{` and `}`: Braces delimit the declaration block applied to the matched elements.
- `padding`: Defines internal spacing within the element boundary; `16px` specifies a value in CSS pixels.
- `color`: Specifies the typographic text color; `#1f2937` represents a hexadecimal color notation.
- `;`: Semicolon terminates each declaration so subsequent rules are clearly separated.

**The Cascade** means multiple style rules can match an element; the browser determines which rule takes precedence based on origin, importance, specificity, and source order. **The Box Model** consists of content, padding, border, and margin. Declaring `box-sizing: border-box` ensures declared dimensions include padding and borders, simplifying layout calculations.

Flexbox is ideal for one-dimensional distribution (single rows or columns), whereas CSS Grid excels at two-dimensional grid layouts. Media queries like `@media (max-width: 40rem)` apply responsive overrides when viewport widths fall below specific thresholds. Units like `rem` scale relative to the root font size, facilitating fluid accessibility scaling.

## Tools and Lab Preparation

- A modern code editor and browser equipped with Developer Tools.
- Use [index.html](./index.html) and [style.css](./style.css) residing in the same directory.
- HTML imports CSS via `<link rel="stylesheet" href="style.css">`. The `rel` attribute establishes the stylesheet relationship, while `href` specifies the relative path.

## Hands-on Learning Steps

1. Open the HTML file and ensure the `<link>` element is correctly nested within `<head>`.
2. In CSS, style `body` for base margin resets, text color, typography, and `line-height`. `line-height` establishes vertical cadence between lines of text.
3. Configure `.content` with `max-width` to prevent text lines from becoming uncomfortably wide; `margin: auto` centers horizontally constrained blocks.
4. Style `.service-card` using internal padding, border-radius, and background colors to establish clear component boundaries.
5. Introduce Flexbox or Grid when displaying multiple cards, then construct media queries targeting mobile screens.
6. Test using keyboard navigation, browser zoom, and varying viewport widths. Inspect focus rings, color contrast, and unintended horizontal overflow.

## Module Assignment

Design a laboratory portal layout featuring a site header, navigation bar, three service cards, and a footer. Use an external stylesheet, semantically meaningful class names, a responsive grid/flex layout, and clear visible keyboard focus indicators. Include a brief explanation of how the CSS box model impacts card dimensions.

## References

- [MDN: CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [MDN: The CSS Box Model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)
- [web.dev: Learn CSS](https://web.dev/learn/css/)
