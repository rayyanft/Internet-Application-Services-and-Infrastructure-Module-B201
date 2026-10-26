# Firebase

Firebase is Google's application development platform, not one database. Common database choices in Firebase are Cloud Firestore, a document database with queries and realtime listeners, and the Realtime Database, a JSON tree with realtime synchronization.

Consider Firebase when a web or mobile project benefits from managed client SDKs, realtime updates, and integration with other Firebase services. Firestore is often a starting point for document-oriented data; Realtime Database can fit simple low-latency synchronization patterns. For data with many relational joins and SQL reporting needs, PostgreSQL or MySQL may be a more natural fit. Supabase offers a different managed approach built on relational PostgreSQL.

Choose the Firebase product deliberately, model reads and writes around its pricing and query limits, and configure Security Rules before exposing data to clients. Official documentation: [Firebase Documentation](https://firebase.google.com/docs).
