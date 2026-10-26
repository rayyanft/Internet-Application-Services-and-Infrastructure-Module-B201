// process.argv contains command-line arguments passed when invoking the program.
// The first two elements are reserved by Node for the runtime path and executed file path.
const serviceName = process.argv[2];

// Provide clear usage instructions if no service name argument was supplied.
if (!serviceName) {
  console.log("Usage: node app.js <service-name>");
} else {
  // Template literals interpolate dynamic variable values into formatted output strings.
  console.log(`Information for service "${serviceName}" is available on the laboratory portal.`);
}
