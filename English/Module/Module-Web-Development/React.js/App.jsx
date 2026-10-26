import { useState } from "react";

// ServiceCard is an independent, reusable component displaying service information.
function ServiceCard({ title, description }) {
  // title and description are received as props passed from the parent component.
  return (
    <article>
      <h2>{title}</h2>
      <p>{description}</p>
    </article>
  );
}

// App serves as the root component rendered by the React application.
export default function App() {
  // useState maintains stateful values across component re-renders.
  const [visits, setVisits] = useState(0);

  return (
    <main>
      <h1>Laboratory Portal</h1>
      <ServiceCard
        title="Practical Lab Rooms"
        description="Always verify scheduled room availability before arriving."
      />
      <p>Lab sessions viewed: {visits}</p>
      <button type="button" onClick={() => setVisits(visits + 1)}>
        Increment Views
      </button>
    </main>
  );
}
