# GraphQL

GraphQL is a query language for APIs and a server-side execution model. A client requests specific fields through a schema, and the server resolves those fields. It is not a database and does not automatically make an API faster.

Consider GraphQL when multiple clients need different combinations of related data and a team can maintain the schema, resolvers, authorization, and query limits. REST may be simpler for predictable resource operations, HTTP caching, and small services. GraphQL requires particular care with authorization at field/resolver boundaries and expensive nested queries.

Official site: [GraphQL](https://graphql.org/).
