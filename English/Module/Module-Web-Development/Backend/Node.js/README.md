# Web Module 5: Node.js Fundamentals

Node.js is an asynchronous runtime environment that executes JavaScript outside the web browser—such as in command-line terminals or on backend servers. While browsers provide global web APIs like `window` and `document`, Node.js programs do not inherently possess a browser DOM; instead, they have access to operating system APIs, file systems, and network sockets.

## Basic Theory

Example from [app.js](./app.js):

```js
const serviceName = process.argv[2];

if (!serviceName) {
  console.log("Usage: node app.js <service-name>");
} else {
  console.log(`Information for service "${serviceName}" is available on the laboratory portal.`);
}
```

- `const serviceName`: Creates an identifier binding for the extracted service name argument.
- `process`: Global Node.js object providing information and control over the current execution process.
- `.argv`: An array of command-line arguments; index `0` typically holds the Node binary path, index `1` holds the executed script path, and index `2` represents the user's first custom argument.
- `[2]`: Accesses array elements by index (JavaScript arrays are zero-indexed).
- `if (...)`: Evaluates conditions and executes the corresponding block only when the statement is truthy.
- `!serviceName`: Logical NOT operator negating truthy/falsy values; empty strings (`""`) or `undefined` evaluate to falsy.
- `console.log(...)`: Writes formatted output messages to the terminal standard output (`stdout`).
- Backticks (`` ` ``) denote template literals; `${serviceName}` interpolates variable expressions directly into strings.
- `else`: Declares an alternate branch executed when the `if` condition evaluates to false.

Node.js also features a rich built-in standard library and the npm package registry. `package.json` manifests document project metadata, scripts, and runtime dependencies.

## Tools and Lab Preparation

- Install Node.js LTS from the [official website](https://nodejs.org/).
- Verify installation via `node --version`: `node` invokes the binary, while `--version` returns the active version number.
- Open your terminal in this directory and inspect `app.js`.

## Hands-on Learning Steps

1. Run `node app.js` without parameters to observe the fallback usage message when arguments are omitted.
2. Run `node app.js "Practical Lab Rooms"`; Node executes the script, passing the quoted text as the first user argument while preserving internal whitespace.
3. Modify the output message, rerun the command, and observe the terminal output.
4. Experiment with package initialization via `npm init -y`. `npm` is the package manager, `init` creates project metadata, and `-y` accepts sensible defaults; examine the generated `package.json`.
5. Document your Node version to ensure teammates can reproduce identical execution environments.

## Module Assignment

Develop a CLI utility script that accepts a laboratory service identifier and outputs a formatted operational summary. Gracefully validate and handle missing arguments, and provide a clear written explanation of `process.argv`, conditional control flow, and template literals. Never output passwords, auth tokens, or private credentials.

## References

- [Node.js Documentation](https://nodejs.org/docs/latest/api/)
- [Node.js: Running Scripts from the Command Line](https://nodejs.org/en/learn/command-line/run-nodejs-scripts-from-the-command-line)
- [npm Documentation](https://docs.npmjs.com/)
