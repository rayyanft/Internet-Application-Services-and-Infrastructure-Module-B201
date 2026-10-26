# Web Module 1: HTML — Structure, Content, and Semantics

HTML (*HyperText Markup Language*) describes the structure and meaning of web content. A browser reads HTML elements and builds the DOM (*Document Object Model*); CSS controls presentation, and JavaScript can change the page or respond to interaction. HTML itself is not a language for calculations or program logic.

## Learning Objectives

By the end of this module, learners will be able to:

- explain the anatomy of elements, tags, attributes, and document structure;
- choose semantic elements that match the purpose of content;
- create links, lists, data tables, images, and simple forms;
- make names and relationships clear so pages are easier to navigate with a keyboard and screen reader;
- inspect a page in a browser and correct structural mistakes.

## 1. Element and Attribute Anatomy

```html
<p class="message">Hello, world!</p>
```

- `<p>` is the **start tag**; `p` is the paragraph element name.
- `class="message"` is an **attribute**. Its name is `class` and its value is `message`; a class can be shared by elements for CSS or DOM selection.
- `>` ends the start tag.
- `Hello, world!` is the text content.
- `</p>` is the **end tag**. The slash marks the end of the element.
- The start tag, content, and end tag together form an **element**.

Elements can be nested. Close the inner element before the outer one: `<p>Learn <strong>HTML</strong>.</p>`. Void elements do not wrap content and do not have end tags, for example `img`, `br`, `hr`, `input`, `meta`, and `link`. Write comments as `<!-- developer note -->`; comments are not displayed as page content. Indentation does not change HTML meaning, but makes the structure easier to read.

Common global attributes:

- `id`: a unique identifier in a document, often the destination of a link such as `href="#contact"`.
- `class`: one or more reusable group names.
- `lang`: the language of content, such as `lang="en"`; mark text in another language on its relevant element.
- `title`: extra information that may appear as a tooltip; do not make it the only place for important instructions.
- `hidden`: hides an element from display and the accessibility tree.
- `data-*`: stores custom data, for example `data-id="12"`, that JavaScript can read.

Attribute values are usually quoted. Boolean attributes such as `required`, `disabled`, and `checked` are enabled by their presence: `<input required>`. Do not reuse an `id` more than once.

## 2. Document Skeleton

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laboratory Portal</title>
  </head>
  <body>
    <h1>Laboratory Portal</h1>
    <p>Information about laboratory activities and services.</p>
  </body>
</html>
```

- `<!doctype html>` asks the browser to use modern HTML standards mode; it is a declaration, not an HTML element.
- `<html>` is the root element. `lang="en"` tells screen readers and other tools the main language.
- `<head>` contains metadata, the document title, and resource references; its content is generally not the page's main content.
- `<meta charset="utf-8">` sets character encoding so letters and symbols render correctly.
- `<meta name="viewport">` gives the browser the device viewport size so the page can use a responsive layout.
- `<title>` sets the tab/window title and the document name in bookmarks or search results.
- `<body>` contains the document content intended for users.

## 3. Text and Content Grouping

| Element | Purpose and use |
| --- | --- |
| `h1`–`h6` | Headings and subheadings in a hierarchy. Choose them by topic structure, not font size. Usually use one main `h1` per page; do not skip levels without reason. |
| `p` | A paragraph of text. Browsers add default paragraph spacing. |
| `strong` | Marks strong importance or urgency; usually rendered bold. |
| `em` | Adds stress or emphasis to a word; usually rendered italic. |
| `b`, `i` | Draw attention or distinguish a voice/term without the importance or stress of `strong`/`em`. Choose by meaning, not appearance. |
| `mark` | Highlights content relevant in context, such as a search result. |
| `small` | Side comments or fine print, such as copyright; it is not a general way to shrink text. |
| `br` | Starts a new line within text that needs line breaks, such as an address or poem; do not use it to create spacing between sections. |
| `hr` | Marks a thematic transition between sections, usually rendered as a line. |
| `blockquote` | A longer quotation from another source; `cite` can point to the source URL. For a short inline quotation, use `q`. |
| `pre` and `code` | `code` marks a code fragment; `pre` preserves spaces and line breaks, useful for code blocks: `<pre><code>...</code></pre>`. |
| `abbr` | An abbreviation; `title` can provide its expansion, for example `<abbr title="HyperText Markup Language">HTML</abbr>`. |
| `time` | A machine-readable date/time, for example `<time datetime="2026-10-26">October 26, 2026</time>`. |
| `div` and `span` | Generic containers without special semantic meaning. `div` groups flow content; `span` wraps a small piece of text. Use them when no more meaningful element fits. |

## 4. Links and Navigation

```html
<a href="https://developer.mozilla.org/">HTML documentation on MDN</a>
<a href="#contact">Go to the contact section</a>
<a href="mailto:lab@example.org">Email the laboratory</a>
```

`a` (*anchor*) creates a link. `href` contains a URL, email address, or an `id` fragment destination. Link text should describe its destination without relying on surrounding sentences; avoid vague text such as “click here.” A link is different from a button: a link navigates to a destination, while a button performs an action.

`nav` wraps a group of important navigation links. If a page has multiple navigation areas, distinguish them with `aria-label`, for example `aria-label="Main navigation"`. `target="_blank"` opens a new tab/window; use it only when that behavior is intended and let users know. Modern browsers protect `_blank` by default, but `rel="noopener"` may still be written explicitly.

## 5. Lists

- `ul` wraps a list whose order does not matter.
- `ol` wraps a list whose order matters; `start` can set its first number and `reversed` reverses the count.
- `li` is one item in a `ul` or `ol`.
- `dl` wraps term-and-description pairs; `dt` is the term and `dd` is its description.

```html
<ol>
  <li>Open the editor.</li>
  <li>Create an HTML file.</li>
</ol>
<dl>
  <dt>HTML</dt>
  <dd>A markup language for structuring web content.</dd>
</dl>
```

Lists can be nested when sub-items truly belong to a parent item. Do not use lists only to get indentation or bullet styling.

## 6. Images and Media

```html
<img src="images/laboratory.jpg" alt="Students working in a computer laboratory" width="800" height="450">
```

`img` embeds an image. `src` is the file location; `alt` is its text alternative. Write brief alt text that conveys the image's important information. For a decorative image that adds no information, use `alt=""`. `width` and `height` help the browser reserve space before the image loads. Use a relative path such as `images/photo.jpg` for project files and check filename capitalization.

`figure` groups media or an illustration referenced by the text, while `figcaption` provides its caption. Use `audio` with `controls` so users can play, pause, and adjust volume; `source` specifies a file and media type. For video, `video` can also use `controls`, `width`, `poster`, and `source`. Provide captions using `track kind="captions"` when available. Do not autoplay media with sound.

`iframe` embeds another page in the current page. Give it a `title` that describes its content, use only trusted/allowed sources, and remember that the target site may block embedding. An embed is not a replacement for a regular link.

## 7. Tables for Tabular Data

```html
<table>
  <caption>Lab schedule</caption>
  <thead>
    <tr><th scope="col">Day</th><th scope="col">Activity</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">Monday</th><td>HTML fundamentals</td></tr>
  </tbody>
</table>
```

- `table` wraps data with row-and-column relationships; do not use tables for page layout.
- `caption` gives the table a title or context.
- `thead` groups header rows, `tbody` the main data rows, and `tfoot` a summary/footer when needed.
- `tr` is a table row.
- `th` is a header cell. `scope="col"` marks a column header; `scope="row"` marks a row header.
- `td` is a regular data cell.

Use clear headers so cell relationships can be understood. Avoid empty cells or complex merged cells when a simpler structure works.

## 8. Semantics and Page Landmarks

```html
<header>
  <h1>Laboratory Portal</h1>
  <nav aria-label="Main navigation">...</nav>
</header>
<main>
  <section aria-labelledby="services-title">
    <h2 id="services-title">Services</h2>
    <p>...</p>
  </section>
  <article>...</article>
</main>
<footer>...</footer>
```

- `header` contains introductory content or navigation aids for a page or section. There can be more than one when they belong to distinct section contexts.
- `nav` is a major navigation block.
- `main` wraps the unique primary content; generally one visible `main` element is used per page.
- `section` groups a topic and usually has a heading.
- `article` is self-contained content that can make sense on its own or be syndicated, such as a news story or post.
- `aside` contains complementary material, such as a note or related links.
- `footer` contains closing information for a page or section, such as contact details and copyright.
- `address` contains contact information for the page/article owner, not any arbitrary location address.

Semantic elements help assistive technology navigation and make structural intent clearer. Do not choose an element only for its default appearance; CSS can control appearance without changing meaning.

## 9. Forms and Inputs

```html
<form action="/registration" method="post">
  <label for="name">Full name</label>
  <input id="name" name="name" type="text" autocomplete="name" required>

  <label for="email">Email</label>
  <input id="email" name="email" type="email" autocomplete="email" required>

  <label for="message">Reason for contact</label>
  <textarea id="message" name="message" rows="4"></textarea>

  <button type="submit">Submit registration</button>
</form>
```

- `form` wraps controls that are submitted together. `action` sets the submission destination and `method` sets how data is sent; `get` puts simple data in the URL, while `post` sends it in the request body. The server must still validate the data.
- `label` names a control. Pair `for` with the control's `id` so the label can be clicked and is read correctly.
- `input` is a void control; `type` selects a kind such as `text`, `email`, `password`, `number`, `date`, `checkbox`, `radio`, `file`, or `submit`.
- `name` is the key used when the control value is submitted. Without `name`, a control's value is generally not sent.
- `required` makes a value mandatory; `placeholder` is only a brief example and does not replace a label.
- `textarea` accepts multi-line text.
- `select` wraps choices, `option` is one choice, and `optgroup` groups related choices.
- `button` creates a button. Use `type="submit"` to submit a form, `type="reset"` to clear fields, or `type="button"` for an action handled by JavaScript. Inside a form, always specify `type` explicitly.
- `fieldset` groups related controls and `legend` names the group, useful for radio choices.
- `output` displays a calculation/interaction result; `progress` shows task progress; `meter` shows a value within a measured range.

Use HTML validation such as `type="email"`, `min`, `max`, `minlength`, and `required` to help users. Browser validation does not replace server-side validation. Do not request or submit real personal data in practice exercises.

## 10. Accessibility and Good Practices

- Use headings in an order that reflects topic structure, and semantic landmarks for major page areas.
- Ensure links and controls can be reached by keyboard; use native elements (`a`, `button`, `input`) instead of generic elements that imitate their behavior.
- Give every form control a visible label. Do not rely on a placeholder alone.
- Write `alt` text according to the image's purpose, not just its filename.
- Use descriptive link text and clear table headings.
- Avoid obsolete elements such as `font`, `center`, and old presentation attributes; control appearance with CSS.
- Do not put secrets or personal data in HTML: page contents can be inspected in a browser.

## Tools and Lab Preparation

- A code editor such as VS Code and a modern browser.
- Create an exercise folder and save the page as `index.html` using UTF-8. Live Server is optional; the file can also be opened directly in a browser.
- For images, save the file inside the project and use the correct path.

## Hands-on Practice

1. Open [index.html](./index.html) and identify `doctype`, `html`, `head`, `meta`, `title`, and `body`.
2. Create a laboratory information page with `header`, `nav`, `main`, two `section` elements, and `footer`.
3. Add an internal link to an element with an `id`, a services list, and an `article` containing an announcement.
4. Create a schedule table with `caption`, `thead`, `tbody`, `th`, and `td`.
5. Create a practice contact form with labels, name/email inputs, a textarea, and a submit button. Do not submit real data.
6. Add a local image with appropriate alt text, then test with images disabled or inspect the alt text.
7. Navigate the page with a keyboard and inspect its element tree in Developer Tools.

## Module Assignment

Create `module1-assignment.html` as a laboratory profile. Include a complete document skeleton; header, navigation, main, at least two sections, and footer; hierarchical headings; a services list; a schedule table with row/column headers; an image with appropriate alt text; descriptive contact links; and a simple registration form with labels and built-in validation. Add comments explaining two important parts. Ensure there are no duplicate `id` values and all controls remain understandable without CSS.

## References

- [MDN: HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)
- [MDN: HTML elements reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- [WHATWG HTML Living Standard](https://html.spec.whatwg.org/)
- [W3C WAI: Images Tutorial](https://www.w3.org/WAI/tutorials/images/)
