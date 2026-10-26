# Internet Application Services and Infrastructure

This repository is a laboratory internship curriculum designed for students starting from scratch. The curriculum guides learners from user experience design, web and mobile application development, to understanding how modern internet services are deployed, operated, and maintained.

## Basic Theory

An internet application is the collaborative result of multiple interconnected components. UI/UX helps us understand user needs; the frontend presents content and receives interactions; APIs connect the frontend with the backend; databases store information persistently; and infrastructure provides the computing resources and networking to run all components reliably.

A simple analogy: HTML is the building framework, CSS is the interior layout and styling, JavaScript is the moving mechanics, the backend is the operational staff in the back office, the database is the filing cabinet, and the server is the physical location where services run. These components are interconnected, yet each has distinct responsibilities.

Curriculum Structure:

```text
.
├── README.md
├── Module/
│   ├── Module-UI-UX/
│   ├── Module-Web-Development/
│   │   ├── HTML/ CSS/ TailwindCSS/ JavaScript/
│   │   ├── Node.js/ React.js/ API/
│   │   ├── Backend/ Frontend/ Database/
│   ├── Module-Mobile-Development/
│   │   ├── 1-Flutter-Basics/
│   │   ├── 2-React-Native-Basics/
│   │   ├── 3-State-Management/
│   │   └── 4-Mobile-API-Integration/
│   └── Module-Server-Infrastructure/
│       ├── 1-Linux-OS-Setup/
│       ├── 2-Web-Server-Nginx/
│       ├── 3-Docker-Containerization/
│       └── 4-Deployment-Methods/
└── Practice-Project/
```

- `├──` and `└──` illustrate the directory tree structure; names ending with `/` indicate directories.
- Web subfolders are grouped together for brevity; each name represents an individual learning module.
- Each `README.md` file contains learning instructions, while example files in each subfolder demonstrate runnable code.

## Tools and Lab Preparation

- A computer with adequate storage, a modern code editor (e.g., VS Code), a modern web browser, and a terminal.
- Git for project version control. Never commit passwords, API tokens, or private keys to Git.
- Install programming languages and runtimes as required by the modules: Node.js, Flutter/Dart, or Docker. Follow the official documentation appropriate for your operating system.
- Create a dedicated working directory and use mock/fictitious data during exercises.
- For virtual machines or cloud environments, obtain supervisor approval and verify costs and access policies beforehand.

## Hands-on Learning Steps

1. Begin with the [UI/UX Module](./Module/Module-UI-UX/README.md) to define problem statements and create wireframes.
2. Follow the web modules sequentially: HTML, CSS, TailwindCSS, JavaScript, Node.js, React.js, and API. The Backend, Frontend, and Database folders provide supplementary practice.
3. Explore the [Mobile Module](./Module/Module-Mobile-Development/README.md), choose either Flutter or React Native, and proceed to state management and API integration.
4. Study the [Infrastructure Module](./Module/Module-Server-Infrastructure/README.md) on a local VM before attempting remote deployment.
5. Work on the [Practice Project](./Practice-Project/README.md) in parallel: implement features as corresponding concepts are learned.
6. Test every change, document your findings, and solicit feedback from peers or mentors.

When reading code examples, pay attention to every keyword, variable name, input value, and output. Type out the code manually instead of merely copying and pasting. If results differ, read error messages carefully, verify file naming and spelling, and test one modification at a time.

## Module Assignment

Before beginning hands-on practice, draft a personal study plan detailing the module sequence, required tooling setup, and a weekly review schedule. At the conclusion of the curriculum, submit a functioning project, documentation, test results, and a reflection on concepts to explore further.

## References

- [MDN Web Docs](https://developer.mozilla.org/)
- [Git Documentation](https://git-scm.com/doc)
- [Flutter Documentation](https://docs.flutter.dev/)
- [React Native Documentation](https://reactnative.dev/docs/getting-started)
- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
- [Docker Documentation](https://docs.docker.com/)
