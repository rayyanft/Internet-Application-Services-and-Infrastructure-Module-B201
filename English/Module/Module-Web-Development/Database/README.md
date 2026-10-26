# Supplementary Web Module: Relational Databases and SQL Fundamentals

Relational databases organize and store structured records persistently. In this module, we construct a sample schema using SQLite and query datasets using Structured Query Language (SQL).

## Basic Theory

Database tables function like structured spreadsheets: columns define attribute schemas and data types, while rows store individual records. In [schema.sql](./schema.sql):
- `CREATE TABLE services`: Defines a new table named `services`.
- `id INTEGER PRIMARY KEY`: Designates an auto-incrementing integer as the unique primary identifier.
- `TEXT`: Specifies string text data storage.
- `NOT NULL`: Constraint preventing empty or null entries.
- `DEFAULT 1`: Automatically assigns a fallback value when a field is omitted during insertion.

Inserting and querying data:
- `INSERT INTO services (name, description, is_available) VALUES (...)`: Appends new records. The column list defines property order, which must align with provided values.
- `SELECT id, name FROM services`: Retrieves specified columns from the specified table.
- `WHERE is_available = 1`: Filters rows matching the predicate condition.

In real applications, relationships between tables are modeled using Foreign Keys. Always use parameterized queries (prepared statements) when binding user inputs into SQL commands; never concatenate unsanitized user strings directly into query statements to eliminate SQL Injection vulnerabilities.

## Tools and Lab Preparation

- The SQLite command-line tool (`sqlite3`) or a database GUI from trusted official sources.
- A terminal and code editor.
- Use strictly fictitious mock data in exercise scripts.

## Hands-on Learning Steps

1. Inspect `schema.sql`; observe the execution sequence: `DROP`, `CREATE`, `INSERT`, and `SELECT`.
2. Execute the script in terminal: `sqlite3 practice.db < schema.sql`. Here `sqlite3` launches the CLI, `practice.db` specifies the local file database, and `<` pipes the SQL file into standard input.
3. Inspect the resulting query output.
4. Author a custom query using a `WHERE` condition to filter and retrieve a specific service record.
5. Rerun the script and note that `DROP TABLE IF EXISTS` safely purges previous mock tables before recreation; never use teardown scripts on production databases.

## Module Assignment

Create a laboratory schedule table containing columns for `id`, `service_name`, `day_of_week`, and `time_slot`. Insert three sample rows, then author a query retrieving all scheduled sessions for a particular service. Provide written explanations for each data type, primary keys, `INSERT`, `SELECT`, and `WHERE` clauses.

## References

- [SQLite Documentation](https://www.sqlite.org/docs.html)
- [SQLite: SELECT Syntax](https://www.sqlite.org/lang_select.html)
- [OWASP: SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)

## Choosing a Database

| Option | What it is | A good fit when |
| --- | --- | --- |
| [SQL fundamentals and SQLite](./README.md) | Relational tables and SQL, practiced locally with a lightweight file-based database. | Learning schema design and queries, or prototyping a small local application. |
| [MySQL](./MySQL/README.md) | A widely used relational database server with broad hosting and tooling support. | A conventional relational web application needs a familiar server database and its hosting environment supports MySQL. |
| [PostgreSQL](./PostgreSQL/README.md) | A feature-rich relational database with strong SQL support and advanced data types. | The application needs complex queries, strict relational integrity, or PostgreSQL-specific capabilities. |
| [Supabase](./Supabase/README.md) | A hosted application platform built around PostgreSQL, with services such as authentication and APIs. | A project wants managed PostgreSQL plus ready-made backend services and accepts the platform's deployment model. |
| [Firebase](./Firebase/README.md) | Google's application platform, commonly using the document-oriented Cloud Firestore or Realtime Database. | A mobile or web application needs managed realtime/document data and Firebase's client SDK and ecosystem suit the project. |

Choose based on data relationships, query needs, consistency, team familiarity, hosting, cost, and migration requirements. Supabase is not a separate relational database engine from PostgreSQL; Firebase is a platform with multiple products, not a synonym for one database. Review pricing, data location, access rules, backup, and vendor lock-in before production use.
