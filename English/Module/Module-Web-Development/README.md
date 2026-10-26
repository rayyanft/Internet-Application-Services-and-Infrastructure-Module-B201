# Web Development Module

This module introduces how a web application is divided into browser interfaces, server-side logic, APIs, and persistent data. The topics are grouped by responsibility so it is easier to find a starting point and understand how the parts fit together.

## Folder Guide

```text
Module-Web-Development/
├── Backend/
│   ├── API/
│   ├── Backend/
│   ├── JavaScript/
│   └── Node.js/
├── Frontend/
│   ├── CSS/
│   ├── Frontend/
│   ├── HTML/
│   ├── React.js/
│   └── TailwindCSS/
└── Database/
    ├── Firebase/
    ├── MySQL/
    ├── PostgreSQL/
    ├── Supabase/
    └── schema.sql
```

### Backend

The backend runs application rules and handles requests away from the user's browser. [API](./Backend/API/README.md) covers client-server communication and API styles; [Backend](./Backend/Backend/README.md) introduces server routes; [JavaScript](./Backend/JavaScript/README.md) teaches the language used in browser and server environments; [Node.js](./Backend/Node.js/README.md) runs JavaScript outside the browser.

### Frontend

The frontend is the part rendered and used in the browser. [HTML](./Frontend/HTML/README.md) gives content its structure, [CSS](./Frontend/CSS/README.md) styles and lays it out, [Tailwind CSS](./Frontend/TailwindCSS/README.md) provides utility classes, [React.js](./Frontend/React.js/README.md) builds interfaces from components, and [Frontend](./Frontend/Frontend/README.md) brings browser-side concepts together.

### Database

Databases store and retrieve application data. Start with [SQL and SQLite fundamentals](./Database/README.md), then compare [MySQL](./Database/MySQL/README.md), [PostgreSQL](./Database/PostgreSQL/README.md), [Supabase](./Database/Supabase/README.md), and [Firebase](./Database/Firebase/README.md).

## Suggested Learning Order

1. Learn HTML, CSS, and JavaScript in the Frontend section.
2. Build a small responsive page; then explore React.js and Tailwind CSS as needed.
3. Learn server-side JavaScript and Node.js, then follow the Backend module.
4. Study HTTP and the API options before connecting a frontend to a backend.
5. Learn relational data and SQL, then choose a database based on the project's requirements.
6. Build a small end-to-end project and document how its browser, API, server, and data store communicate.

## Tech Stack & Roadmap: Static vs. Dynamic Websites

To provide a practical overview of how the modules above are combined, here are the differences in the development paths (*roadmap*) and technologies (*tech stack*) used to build the two main types of websites:

### 1. Static Website
A static website displays the exact same content to every visitor. It is highly suitable for a Personal Portfolio, Landing Page, or Company Profile.
*   **Tech Stack (Frontend Only):** 
    *   **Basics:** HTML, CSS, JavaScript.
    *   **Rapid Styling:** Tailwind CSS.
    *   **Hosting:** GitHub Pages or Vercel.
*   **Development Roadmap:**
    1. Structure the information and text framework using **HTML**.
    2. Beautify the layout and ensure mobile responsiveness using **CSS** or **Tailwind CSS**.
    3. Add light interactions (*scroll* effects, *hover* animations, *toggle menus*) using basic **JavaScript**.
    4. *Deploy* (Release) directly to the internet via **GitHub Pages** or **Vercel**.

### 2. Dynamic Website
A dynamic website loads data that changes based on user logins, interactions, or a database. It is suitable for a Hospital Management System, E-Commerce, or an Inventory Dashboard.
*   **Tech Stack (Full-Stack):**
    *   **Frontend:** React.js, Tailwind CSS.
    *   **Backend:** Node.js, Express.js (as an API provider).
    *   **Database:** PostgreSQL / MySQL, or BaaS (*Backend-as-a-Service*) like Supabase / Firebase.
    *   **Hosting:** Vercel (for Frontend) & Render / Railway (for Backend & Database).
*   **Development Roadmap:**
    1. Build the user interface and interactive components using **React.js** and **Tailwind CSS**.
    2. Design the data storage structure (*schema*) within the **Database**.
    3. Build the server logic and provide **API** routes using **Node.js**.
    4. *Fetch* (retrieve) data from the API into React.js so that server data is displayed in the user's browser.
    5. *Deploy* the Frontend and Backend separately so the system can be accessed publicly.

---

The groups describe responsibilities, not rigid boundaries. JavaScript, for example, runs in both browsers and Node.js. Folder readmes explain each topic's focus, differences, and when to use it. Use fictional data in exercises and never commit credentials or private keys.
