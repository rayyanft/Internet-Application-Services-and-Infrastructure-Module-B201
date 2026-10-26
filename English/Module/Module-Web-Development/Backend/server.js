// Express simplifies HTTP web server creation and routing in Node.js.
import express from "express";

const app = express();
const port = 3000;

// In-memory mock data so beginners can practice without database setup.
const services = [
  { id: 1, name: "Practical Lab Rooms", available: true },
  { id: 2, name: "Consultation Hours", available: false },
];

// This GET route returns the collection of services serialized as JSON.
app.get("/api/services", (request, response) => {
  response.json(services);
});

// Bind listener strictly to loopback interface (127.0.0.1) for safe local practice.
app.listen(port, "127.0.0.1", () => {
  console.log(`Development server running at http://127.0.0.1:${port}`);
});
