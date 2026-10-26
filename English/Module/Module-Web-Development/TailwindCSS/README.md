# Web Module 3: Introduction to Tailwind CSS

Tailwind CSS is a utility-first CSS framework. Rather than authoring bespoke CSS rules for every component, you compose atomic utility classes directly on HTML elements. It functions like applying standardized building blocks for spacing, typography, layout, borders, and colors.

## Basic Theory

Example snippet:

```html
<article class="rounded-xl bg-white p-6 shadow-md">
  <h2 class="text-xl font-bold">Practical Lab Rooms</h2>
</article>
```

- `class`: HTML attribute containing space-separated utility class names.
- `rounded-xl`: Applies an extra-large border radius to corners.
- `bg-white`: Sets the background color to pure white.
- `p-6`: Applies standardized padding along Tailwind's spacing scale (1.5rem / 24px).
- `shadow-md`: Applies a medium drop shadow elevation.
- `text-xl`: Applies an extra-large typography scale size with proportional line-height.
- `font-bold`: Sets font weight to bold (700).

Responsive breakpoint prefixes such as `md:` apply styles conditionally when the viewport width reaches or exceeds medium screens. For instance, `md:flex` enables `display: flex` starting at medium viewports. Utility classes keep styling tightly coupled with markup for rapid iteration, though long class lists should be formatted cleanly for readability. The included [index.html](./index.html) uses a browser CDN for demonstration purposes; production applications should always use the official Node/Vite build pipeline to purge unused classes and optimize bundle sizes.

## Tools and Lab Preparation

- A modern code editor and web browser.
- An active internet connection for the CDN script demonstration.
- For production workflows: Node.js and a build bundler (follow official Tailwind documentation for your selected version).

## Hands-on Learning Steps

1. Open [index.html](./index.html) and inspect the CDN script in `<head>`. A `<script>` tag fetches the Tailwind runtime script; internet access is required for classes to resolve.
2. Inspect the utility classes on `<body>`, `<main>`, and `<article>`. Each token represents an isolated CSS declaration.
3. Add the `md:` breakpoint prefix to restructure cards on wider displays and observe changes across viewport resizes.
4. Modify color palettes or padding scales one class at a time, observing immediate visual feedback.
5. In production settings, install Tailwind via the official CLI/PostCSS pipeline; the browser CDN is intended strictly for rapid learning exercises.

## Module Assignment

Create a laboratory service card featuring a category badge, title, descriptive summary, an accessible decorative icon, and a call-to-action button. Use responsive utilities, ensure WCAG color contrast compliance, format multi-line class lists neatly, and explain why CDN deployments are unsuitable for production environments.

## References

- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Tailwind CSS: Installation Guide](https://tailwindcss.com/docs/installation)
