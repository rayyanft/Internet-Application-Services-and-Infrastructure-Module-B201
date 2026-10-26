# Infrastructure 3: Containerization with Docker

Docker packages applications and their complete runtime dependencies into standardized, immutable container images. A container is an isolated user-space process instantiated from a container image.
Analogy: An image is a precise culinary recipe and packaged ingredients, while a container is the actual prepared dish being served in a dedicated bowl.

## Basic Theory

A `Dockerfile` contains a sequential set of declarative instructions for assembling a container image:
- `FROM`: Specifies the foundational parent base image (e.g. `nginx:alpine`).
- `COPY`: Copies local files from the build context into the container filesystem.
- `EXPOSE`: Documents which network ports the service process intends to listen on inside the container (does not expose ports to host networks automatically).

```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

- `FROM nginx:alpine`: Adopts the lightweight Alpine Linux distribution variant of Nginx as the foundational layer.
- `COPY source destination`: Copies assets from the build host into the image filesystem.
- `EXPOSE 80`: Informational metadata stating the containerized server listens on port 80.

Containers are not complete virtual machines with separate hypervisors; they share the host OS kernel through Linux cgroups and namespaces. Consequently, always audit base images for security vulnerabilities, enforce non-root permissions in production, and never embed private credentials or API keys directly into Dockerfiles.

## Tools and Lab Preparation

- Docker Engine or Docker Desktop downloaded from official sources.
- A terminal, the practice `Dockerfile`, and static `index.html`.
- Never execute unverified third-party container images with root privileges, and avoid baking secrets into build layers.

## Hands-on Learning Steps

1. Place [Dockerfile](./Dockerfile) and [index.html](./index.html) in the same directory.
2. Build the container image: `docker build -t lab-web:practice .` (`docker` calls the engine CLI, `build` compiles the image layers, `-t` tags the image, and `.` sets the current directory as the build context).
3. Run the container: `docker run --rm -p 8080:80 lab-web:practice` (`run` instantiates a container, `--rm` purges container state upon termination, and `-p` forwards host port 8080 to container port 80).
4. Open `http://localhost:8080` in your browser and verify the rendered greeting.
5. Press `Ctrl+C` in your terminal to shut down the foreground container process and verify that no orphaned containers remain running.

## Module Assignment

Build a custom Docker image hosting your practice project pages, run the container mapped to an alternate non-default host port, and document the complete build and execution output. Provide a written explanation contrasting container images with running containers, and articulate why sensitive credentials must never be included in image layers.

## References

- [Docker Get Started Guide](https://docs.docker.com/get-started/)
- [Dockerfile Reference Documentation](https://docs.docker.com/reference/dockerfile/)
