# Practice Project: Laboratory Information Portal

This practice project brings together concepts across the entire curriculum into a unified, functional product: a responsive portal that helps students find information about laboratory services and schedules. Work through the project from user requirements all the way to deployment; every stage produces reviewable deliverables.

## Basic Theory

A software product is more than just code. We start from real user problems, create design specifications, construct the user interface, integrate dynamic data, and safely deploy the service. For beginners, initial scope is deliberately constrained: focus on public information and sample schedules. User authentication, personal data storage, payment processing, and administrative panels are deferred to later iterations.

Data flow can be understood as a client-server conversation:
1. The browser renders the user interface.
2. When data is needed, the frontend dispatches an HTTP request to an API endpoint.
3. The backend validates the request and queries the data source.
4. The server returns structured JSON back to the client.
5. The frontend parses the response and updates the DOM.

If any stage fails, users must receive transparent, clear error messages rather than fictitious data masquerading as a successful response.

## Tools and Lab Preparation

- A code editor, modern web browser, Git, and terminal.
- Figma for UI prototyping; Node.js/npm for web frontend; additional tooling matching your framework choice.
- SQLite or mock in-memory data for initial phases; server access only upon mentor approval.
- Initialize a Git repository with a `README.md`, `.gitignore`, and mock seed data. Never commit tokens, passwords, private keys, personal addresses, or confidential student records.
- Before utilizing cloud hosting services, ensure your account is authorized and understand free tier boundaries and billing limits.

## Hands-on Project Phases

### Phase 1 — Problem Definition & Design

1. Define the user problem in a single clear statement and establish scope boundaries for version 1.0.
2. Map out a user flow for discovering laboratory services and viewing schedule information.
3. Construct wireframes and an interactive prototype in Figma. Conduct usability testing with a peer and document points of friction.

### Phase 2 — Web Pages & User Interface

4. Build semantic HTML structures using `<header>`, `<nav>`, `<main>`, `<section>`, and `<footer>`.
5. Apply responsive CSS styling that supports keyboard accessibility and adequate color contrast.
6. Implement JavaScript for client-side search and filtering. Verify that empty state messages and error feedback are intuitive.
7. If transitioning to React, decompose the UI into modular components, pass data via props, and manage dynamic interactions in component state.

### Phase 3 — Data & Backend Services

8. Define the data model schema with attributes such as `{ id, name, description, schedule }`. The `id` uniquely identifies each entry, while other properties provide display metadata. Never expose sensitive secrets to the frontend client.
9. Implement a Node.js/Express API service if required. Begin with read-only `GET` endpoints and structured mock data.
10. Store persistent exercise data in a local SQLite database when appropriate. Always use parameterized queries when incorporating user input into SQL commands.
11. Test and handle diverse conditions: success responses, empty datasets, invalid query inputs, server exceptions, and network disconnections.

### Phase 4 — Mobile & Deployment

12. Implement a mobile companion screen using Flutter or React Native as an extension exercise.
13. Test across small screen sizes, web keyboard navigation, accessibility labels, contrast ratios, and network status notifications.
14. Choose a deployment method with supervisor approval: Vercel preview for frontend builds, Docker containers for portable packaging, or a lab-managed Ubuntu VPS.
15. Verify HTTPS configuration, custom domain/URL routing, access logs, and rollback procedures. Following lab sessions, shut down or decommission cloud resources according to guidelines.

## Module Assignment

Submit your prototype, repository link, setup and run instructions in `README.md`, testing evidence, and an approved preview/deployment link. Include:

- Architecture diagrams and data flow specifications.
- List of completed features alongside documented limitations.
- Verification evidence covering mobile and desktop viewports, as well as offline/network failure scenarios.
- Three major technical or design decisions with their rationale.
- Deployment runbook, log inspection commands, rollback protocol, and verification that no secrets were committed.
- Personal reflection: three core takeaways, the most challenging obstacle encountered, and planned future improvements.

## References

- [MDN Web Docs](https://developer.mozilla.org/)
- [React Learn](https://react.dev/learn)
- [Express Documentation](https://expressjs.com/)
- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Docker Documentation](https://docs.docker.com/)
- [Vercel Documentation](https://vercel.com/docs)
