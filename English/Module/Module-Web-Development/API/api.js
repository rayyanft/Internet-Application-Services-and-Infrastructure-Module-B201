// An async function allows us to await asynchronous network operations cleanly.
async function loadExamplePost() {
  try {
    // The demonstration endpoint serves public mock data without storing personal information.
    const response = await fetch("https://jsonplaceholder.typicode.com/posts/1");

    // fetch does not reject promises on HTTP error status codes (e.g. 404 or 500); check response.ok.
    if (!response.ok) {
      throw new Error(`Network request failed with status ${response.status}`);
    }

    // Parse the JSON response body into a native JavaScript object.
    const post = await response.json();
    console.log("Sample title:", post.title);
  } catch (error) {
    // Surface descriptive error information when requests fail.
    console.error("Failed to load sample data:", error.message);
  }
}

// Initiate the data fetching workflow.
loadExamplePost();
