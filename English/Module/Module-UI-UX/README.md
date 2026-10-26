# Module: UI/UX Design with Figma

Welcome to the UI/UX module! Before writing code, we will learn how to identify user needs, map user journeys, and validate design prototypes to ensure our applications are not only visually appealing, but also intuitive, accessible, and practical to use.

## Basic Theory

**UI (User Interface)** refers to the visual and interactive elements users see and touch: buttons, typography, color palettes, icons, and navigation bars. **UX (User Experience)** encompasses the overall feeling and efficiency a user experiences when attempting to achieve a goal. A gorgeous interface that is confusing to navigate is like an intricately carved door without a handle.

Beginner design workflow:

1. **User Problem**: Clarify the specific need or friction point to solve, rather than immediately jumping to feature ideas.
2. **Persona**: A synthesized profile of the target audience grounded in real research findings rather than assumptions.
3. **User Flow**: The step-by-step path a user takes across screens to complete a task.
4. **Wireframe**: Low-fidelity structural blueprints, comparable to architectural floor plans before choosing interior paint colors.
5. **Interactive Prototype**: Clickable simulations that validate interaction flows without writing production code.
6. **Usability Testing**: Observing real users attempting tasks without prompting or leading them, uncovering friction points for iteration.

In Figma:
- **Frame**: Represents a screen viewport or artboard.
- **Text**: Renders typographic elements.
- **Shape**: Constructs geometric forms and visual dividers.
- **Component**: Reusable UI elements that maintain consistency across design systems.
- **Prototype Connection**: Interactive wires connecting a trigger element on one frame to a destination frame.

Maintaining descriptive layer names helps team members collaborate smoothly, like labels on a filing system.

## Tools and Lab Preparation

- A modern web browser and computer.
- A free Figma account from the official website; use personal workspaces or lab team folders per laboratory guidelines.
- Select a focused exercise problem (e.g., students struggling to discover lab service schedules).
- Use strictly fictitious data. Never record real names, personal photos, phone numbers, or private student information without explicit consent.

## Hands-on Learning Steps

1. Frame the problem using the format: "Users need ___ because ___." Avoid embedding premature solutions into the problem statement.
2. Define a single primary user task, such as "finding available laboratory open hours."
3. Draft a step-by-step user flow from start to completion. Each box represents a distinct screen or decision point.
4. Create a mobile frame and sketch wireframes with clear hierarchy: header, navigation, schedule listing, and call-to-action buttons.
5. Apply visual styling: select hierarchical typography scales, ensure sufficient color contrast, and maintain consistent spacing.
6. Establish prototype connections from action buttons to target frames. Use meaningful frame and layer identifiers.
7. Conduct usability testing with a peer. Provide neutral instructions; note points of hesitation or confusion rather than subjective "like/dislike" opinions.
8. Resolve the most impactful usability issue and re-test briefly. Document the rationale behind every modification.

## Module Assignment

Build a Figma prototype for a laboratory information portal comprising a home screen, schedule details, and a contact screen. Submit your problem statement, user flow diagram, wireframes, viewable prototype link, three design decisions with clear justifications, and one improvement derived from usability testing. Configure link permissions strictly for authorized reviewers.

## References

- [Figma Learn](https://help.figma.com/hc/en-us/categories/360002051613-Get-started)
- [Nielsen Norman Group: Usability 101](https://www.nngroup.com/articles/usability-101-introduction-to-usability/)
- [W3C: Web Accessibility Initiative](https://www.w3.org/WAI/fundamentals/)

## Figma Workspace: Dashboard and Tools

Figma's labels and tool placement can change as the product evolves, and some controls depend on the selected object or account plan. The following guide covers the common design-editor areas; use the visible tooltip and official help when your interface differs.

### Figma home dashboard

Before opening a file, the home screen/file browser commonly provides **Home/Recents** to return to recent work, **Drafts** for personal files, **Teams/Projects** for shared files, search, and a create/import action. **Community** provides community-published resources such as files, plugins, and widgets. The exact navigation and available actions can vary by account and product updates. Check the file location and sharing permissions before adding work to a team project.

### Main areas of the editor

| Area | What it does |
| --- | --- |
| **Top bar** | Shows the file name and common file actions. It commonly includes undo/redo, collaboration and sharing controls, and the **Present** button for previewing a prototype. |
| **Pages and Layers panel** | **Pages** divide a file into work areas (for example, research, wireframes, and final UI). **Layers** list objects on the current page in stacking order. Rename, reorder, hide, lock, and group layers here. |
| **Assets panel** | Lists reusable components and styles available to the file or team library. Drag an asset onto the canvas to create an instance. |
| **Canvas** | The open workspace where pages, frames, and objects are arranged. Pan around it, zoom in/out, and select objects. Objects outside a frame may be drafts or reusable assets; only the frame contents represent that screen. |
| **Toolbar** | Provides tools for selecting/moving or scaling, creating sections or frames, drawing rectangles/lines/shapes, using pen or pencil paths, adding text, inserting resources, commenting, and panning. Some tools are grouped in dropdowns; hover to read a tooltip. |
| **Right properties panel** | Changes with the selected object. In **Design**, adjust position, size, alignment, layout/Auto Layout, grids, fill, stroke, effects, and export. In **Prototype**, set triggers, actions, destinations, and transitions. **Inspect/Dev Mode** helps developers examine implementation properties when available. |
| **Comments and collaboration** | Comments pin feedback to a location. Avatars/cursors show collaborators; use comments and version history to review changes rather than silently overwriting another person's work. |
| **Zoom and preview** | Zoom controls help inspect details; **Present** previews the interactive flow at a realistic screen size. Check the prototype at 100% and at target device sizes. |

### Common design elements

- **Section** groups related canvas work, such as a flow or design exploration; it is an organizational container, not usually a user-facing screen.
- **Frame** represents a screen or container with a defined size (phone, tablet, desktop, or custom). It clips contents when configured to do so and can be a prototype destination.
- **Text** creates labels, headings, paragraphs, and button text. Set readable font, size, line height, alignment, and color in the properties panel.
- **Shapes** (rectangle, line, ellipse, polygon, etc.) make backgrounds, dividers, icons, and simple illustrations. Use shapes as visual building blocks, not as a substitute for meaningful labels.
- **Pen/vector** draws custom paths and icons. Keep paths simple and ensure icons remain understandable at their displayed size.
- **Image/media** places visual assets inside the design. Use licensed or original assets, crop them intentionally, and provide an accessible text alternative in the implemented product.
- **Component and instance**: a component is a reusable source element (such as a button); an instance is a linked copy. Edit the source to propagate shared changes, and use variants for deliberate states such as default, hover, or disabled.
- **Auto Layout** arranges children in a row, column, or wrapping layout with spacing, padding, and alignment. It helps components resize when text or content changes.
- **Constraints and resizing** define how an object behaves when its parent frame changes. Use them to keep margins, alignment, or proportional placement intentional.
- **Prototype interaction** connects a trigger (often a button) to an action and destination, such as navigating to another frame or opening an overlay. It simulates flow; it does not implement a real backend.
- **Styles and variables** store shared choices such as colors, typography, spacing, or modes where supported. They make consistent updates easier across a design.

### Create a small UI in Figma

1. Create a design file and add pages such as `Research`, `Wireframes`, and `UI`.
2. On the UI page, create a device-sized **Frame** and give it a clear layer name such as `Home / Mobile`.
3. Add a **Section** around related screens if helpful. Create a header from text and simple shapes, then add content and controls as separate, clearly named layers.
4. Select related layers and apply **Auto Layout** so the spacing and padding respond to content. Set text styles, fills, and strokes in the Design properties.
5. Turn repeated items (for example, a primary button) into a **Component**. Make variants for states users need to recognize, and use instances for repeated buttons.
6. Duplicate or create a second frame for the next screen. In **Prototype**, connect a button to that frame, select a sensible trigger and transition, then use **Present** to try the flow.
7. Ask a reviewer to complete a neutral task, such as “find the next available lab session.” Record hesitation, fix the most important issue, and test again.
8. Keep pages, frames, and layers meaningfully named; add comments for unresolved questions; share a view-only link unless edit access is needed.

Figma is a design and collaboration tool, not a guarantee of usable or accessible UI. Check contrast, readable text, focus and error states, touch target size, keyboard behavior, and screen-reader semantics in the eventual implementation.
