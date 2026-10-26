# REST APIs

REST is an architectural style for networked applications, commonly implemented over HTTP with resource-oriented URLs and methods such as `GET`, `POST`, `PUT`/`PATCH`, and `DELETE`. REST is a design approach, not a programming language or server framework; services written in many languages can follow it.

Choose REST for resource-based CRUD operations, broad client compatibility, and straightforward HTTP caching and tooling. Prefer a different design when clients need highly tailored nested queries (consider GraphQL) or an established integration requires a formal SOAP contract. Keep endpoints consistent, validate input, and document status codes and data shapes.

Reference: [MDN HTTP request methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods).
