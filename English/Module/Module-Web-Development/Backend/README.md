# Supplementary Web Module: Backend Fundamentals with Express

The backend service receives client requests, applies application business logic, and returns structured responses. This module demonstrates running a lightweight API server locally on your machine.

## Basic Theory

Routes pair HTTP methods and URL paths with specific handler functions. In [server.js](./server.js), `app.get("/api/services", handler)` handles incoming GET requests directed to that path. The `request` parameter supplies metadata about the incoming request; the `response` parameter provides helper methods to construct the HTTP response. `response.json(services)` automatically serializes native JavaScript objects into JSON format and sets the `Content-Type: application/json` header.

In code:
- `import express from "express"`: Imports the Express framework.
- `const app = express()`: Instantiates the Express application.
- `const port = 3000`: Allocates the network port for incoming connections.
- `const services`: In-memory array storing sample resource objects `{ id, name, available }`.
- `app.listen(port, "127.0.0.1", callback)`: Binds the server strictly to the loopback interface (`127.0.0.1`), ensuring it is accessible only from the host machine rather than the open network.

## Tools and Lab Preparation

- Node.js LTS, npm, a terminal, and a code editor.
- Initialize a local project via `npm init -y`, and install Express via `npm install express`.
- To enable ES module `import` syntax, ensure `"type": "module"` is configured in `package.json`.

## Hands-on Learning Steps

1. Save the code as `server.js`.
2. Start the server using `node server.js`. The terminal will print the active loopback address.
3. Open `http://127.0.0.1:3000/api/services` in your browser. The HTTP scheme, loopback host, port, and endpoint path collectively resolve to your route handler.
4. Observe the serialized JSON output rendered in the browser.
5. Terminate the server process using `Ctrl+C` in the terminal.

## Module Assignment

Extend the server by implementing a GET endpoint retrieving an individual service by its unique `id` (`/api/services/:id`). Return an appropriate HTTP 404 status code with an informative error message if the ID is not found, and validate that the route parameter is a valid integer. Submit your route handler code alongside an explanation of parameters, status codes, and security reasons why developmental servers should never be exposed directly to public internet networks.

## References

- [Express: Getting Started](https://expressjs.com/en/starter/installing.html)
- [Express: Routing Guide](https://expressjs.com/en/guide/routing.html)
- [Node.js Documentation](https://nodejs.org/docs/latest/api/)
