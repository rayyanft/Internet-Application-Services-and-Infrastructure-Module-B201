# Web Module 7: API and HTTP Fundamentals

Web APIs allow client applications and servers to communicate across networks. Frontend clients dispatch structured HTTP requests to API endpoints, and servers respond with HTTP status codes and payloads, commonly formatted as JSON.

## Basic Theory

As illustrated in [api.js](./api.js), browsers and modern Node.js runtimes utilize `fetch` to request data over HTTP:

```js
const response = await fetch("https://example.test/items");
if (!response.ok) throw new Error("Request failed");
const items = await response.json();
```

- `const response`: Variable binding holding the resolved HTTP `Response` object.
- `await`: Pauses execution inside an `async` function until the `Promise` settles, while permitting other event loop tasks to continue.
- `fetch(url)`: Initiates an asynchronous HTTP request over the network, returning a `Promise<Response>`.
- `response.ok`: Boolean flag indicating whether the HTTP status code falls within the successful range (200–299).
- `throw new Error(...)`: Throws an explicit error object, routing execution to the enclosing `catch` handler.
- `response.json()`: Reads and deserializes the JSON response body into a native JavaScript object/array (also an asynchronous operation returning a Promise).

HTTP operations rely on standard methods: `GET` to retrieve records, `POST` to create resources, `PUT`/`PATCH` to update data, and `DELETE` to remove entries. Status codes (e.g., 200 OK, 404 Not Found, 500 Internal Server Error) provide standardized semantic context. JSON supports objects (`{}`), arrays (`[]`), strings, numbers, booleans, and `null`; JSON strictly prohibits comments and functions.

## Tools and Lab Preparation

- Node.js LTS or a modern web browser, a code editor, and active internet connectivity.
- Exercises use JSONPlaceholder public mock endpoints for demonstration; never send real personal credentials or student records to external testing endpoints.
- If your institutional network blocks external endpoints, use local mock servers or static JSON fixtures.

## Hands-on Learning Steps

1. Inspect the URL and `loadExamplePost` function inside `api.js`.
2. Run `node api.js` in your terminal to execute the script with Node.js.
3. Observe how the script awaits `fetch` and inspects `response.ok` prior to parsing the body.
4. Verify the fetched title logged in your terminal or browser console.
5. Test invalid endpoints (e.g., `/posts/999999`) to confirm errors are cleanly caught and displayed rather than masked with falsified success states.
6. Validate response schemas before rendering incoming fields directly to user interfaces.

## Module Assignment

Build a data retrieval client that comprehensively handles all real-world conditions: successful responses, non-2xx HTTP status codes, malformed JSON schemas, and abrupt network disconnects. Present only necessary data fields, and submit a written explanation detailing the roles of `async`, `await`, `Promise`, `try/catch`, and HTTP status codes.

## References

- [MDN: Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [MDN: HTTP Request Methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)
- [JSONPlaceholder Guide](https://jsonplaceholder.typicode.com/guide/)

## API Approaches: Differences and When to Use Them

An API is a contract that lets software communicate; REST, GraphQL, and SOAP describe different API approaches, while FastAPI is a Python framework that can implement an API.

| Option | What it is | Consider it when |
| --- | --- | --- |
| [Basic HTTP API example](./README.md) | A client calls an endpoint with `fetch` and handles its response. | Learning requests, responses, JSON, and HTTP errors before choosing a server framework. |
| [REST](./REST/README.md) | An architectural style commonly using HTTP resources and standard methods. | Resource-based operations, broad compatibility, and simple HTTP caching are important. |
| [FastAPI](./FastAPI/README.md) | A Python framework with typed models and generated OpenAPI documentation. | The team uses Python and wants validation and API docs integrated into a service. |
| [GraphQL](./GraphQL/README.md) | A schema-based query language and execution model for APIs. | Different clients need different selections of related fields and the team can manage its complexity. |
| [SOAP](./SOAP/README.md) | A structured messaging protocol commonly using XML and formal contracts. | An existing partner or enterprise system specifically requires SOAP/WSDL. |

REST and GraphQL are API design approaches; FastAPI is implementation tooling, so they are not direct alternatives in every sense. A FastAPI service can expose REST-style endpoints. For a small conventional web service, start with REST; select GraphQL for demonstrated client data-shaping needs, or SOAP for a compatibility requirement. Always consider team skills, operational cost, versioning, authentication, authorization, and input validation.
