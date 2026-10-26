# Module: Server Infrastructure and Deployment

This module introduces server operating systems, HTTP web servers, containerization, and modern deployment pipelines. Always begin experimentation inside local virtual machines; never alter shared servers or open services to the public internet without explicit administrative authorization.

## Basic Theory

A server is a dedicated computer or software daemon that fulfills client requests over a network. Linux manages processes, filesystems, users, permissions, and network sockets. Nginx listens for HTTP connections, routes traffic, and serves static web assets. Docker encapsulates applications and runtime dependencies into immutable containers for environment consistency. Deployment orchestrates releasing an application into an environment accessible by end users.

Explore the four submodules:
- [1-Linux-OS-Setup](./1-Linux-OS-Setup/README.md)
- [2-Web-Server-Nginx](./2-Web-Server-Nginx/README.md)
- [3-Docker-Containerization](./3-Docker-Containerization/README.md)
- [4-Deployment-Methods](./4-Deployment-Methods/README.md)

Analogy: Linux provides the foundation and physical real estate, Nginx acts as the front reception desk directing visitors, Docker containers are standardized moving crates enclosing specific equipment, and deployment is opening the facility at an accessible public address.

## Tools and Lab Preparation

- A computer with a terminal; use an Ubuntu virtual machine for operating system exercises.
- Administrator (`sudo`) privileges strictly on personal VMs or sandbox instances assigned for practical training.
- Docker Desktop or Docker Engine for container exercises.
- Accounts on approved deployment platforms authorized by lab instructors. Understand billing policies and free-tier quotas before provisioning cloud resources.
- Back up configuration files regularly; never commit private SSH keys, passwords, or secrets to repositories.

## Hands-on Learning Steps

1. Complete the Linux module to inspect system states and master user accounts and permission boundaries.
2. Run a local Nginx web server and review its configuration directives before making modifications.
3. Build a container image from a sample web application and test execution locally.
4. Compare deployments across an Ubuntu VPS, Vercel, and Docker container hosts using the submodules.
5. Verify page access, HTTPS certificates, server access logs, and rollback procedures.
6. Decommission or shut down all cloud resources after lab sessions to prevent unnecessary cloud expenditure.

## Module Assignment

Draft an operational deployment runbook for your practice application: include request architecture diagrams, infrastructure prerequisites, publication steps, log inspection commands, zero-downtime update steps, and rollback protocols. Compare VPS, Vercel, and container deployments across maintenance, control, and cost vectors; never deploy publicly without supervisor approval.

## References

- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
- [Nginx Official Documentation](https://nginx.org/en/docs/)
- [Docker Documentation](https://docs.docker.com/)
- [Vercel Documentation](https://vercel.com/docs)
