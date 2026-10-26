// Retrieve DOM elements using their unique id attributes.
const statusText = document.getElementById("status");
const statusButton = document.getElementById("status-button");

// Attach a click event listener to handle user interactions dynamically.
statusButton.addEventListener("click", () => {
  // Update the paragraph content in place without reloading the entire page.
  statusText.textContent = "Please consult the official laboratory operating schedule.";
});
