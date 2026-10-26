# Infrastructure 4: Deployment Strategies

This module evaluates three major deployment pathways: an Ubuntu Virtual Private Server (VPS), Vercel serverless edge hosting, and Docker container virtualization. The goal is to understand architectural trade-offs, operational requirements, and deployment lifecycles before publishing services.

## Basic Theory

Deployment transitions software from local development environments to infrastructure accessible by end users.
- **Ubuntu VPS**: Delivers complete operating system control and root shell access, but requires ongoing system administration, security hardening, firewall maintenance, and patch management.
- **Vercel**: Streamlines modern frontend application hosting with automated CI/CD pipelines, global edge CDN distribution, and managed SSL certificates, while abstracting low-level server operations.
- **Docker**: Provides portable, identical application environments across development, staging, and production hosts, but requires container orchestration and infrastructure management.

Domain Name System (DNS) maps human-readable domain names to server IP addresses, while TLS/HTTPS encrypts client-server communication channels.

Common VPS commands:

```bash
ssh username@server-address
sudo systemctl status nginx
```

- `ssh`: *Secure Shell* client establishing an encrypted terminal session to an authenticated remote host.
- `username@server-address`: Target user account and IP address/hostname assigned by your lab administrator.
- `sudo`: Executes commands with elevated root authority when granted in the sudoers policy.
- `systemctl status nginx`: Inspects the operational health of the Nginx daemon without altering configurations.

File transfer with `scp`:
`scp -r dist username@server-address:~/portal-lab` securely transfers the local `dist` build folder over SSH into the remote user's home directory. `scp` is secure copy, `-r` recursively copies directories, the colon (`:`) separates host and destination paths, and `~` resolves to the remote home directory.

Running a containerized service:
`docker run -p 8080:80 image` starts a container from `image`, forwarding host port 8080 to container port 80. During local practice, restrict bindings to loopback (`127.0.0.1:8080:80`) to prevent unauthenticated access across local networks.

## Tools and Lab Preparation

- A clean Git repository with build commands documented in `README.md` and zero committed secrets.
- For VPS: Authorized credentials and host addresses provided by lab mentors, a private SSH key with restricted permissions (`chmod 600`), and billing authorization.
- For Vercel: An authorized account and an integrated GitHub repository free of sensitive credentials.
- For Docker: Docker Engine running on your local machine or a designated lab host.
- Domain registrations and TLS certificates must be administered solely by designated lab managers.

## Hands-on Learning Steps

### A. Ubuntu VPS Deployment

1. Obtain designated sandbox credentials and IP addresses from your lab instructor.
2. Establish a connection: `ssh username@server-address`. Inspect and verify host key fingerprints on the first connection.
3. Review active web services: `sudo systemctl status nginx`. Never alter production services without explicit approval.
4. Transfer build artifacts to your assigned home directory: `scp -r dist username@server-address:~/portal-lab`.
5. Follow lab runbooks to sync build files to the document root, validate configuration syntax with `sudo nginx -t`, and apply changes with `sudo systemctl reload nginx`.
6. Verify live site responses via browser or curl, review access logs in `/var/log/nginx/access.log`, and terminate your remote session with `exit`.

### B. Vercel Frontend Deployment

1. Ensure your frontend application builds successfully in local environments via `npm run build`.
2. Connect your repository to the approved Vercel dashboard or utilize the official CLI: `npm install --global vercel`, then run `vercel` for preview builds or `vercel --prod` for production.
3. Configure framework presets, build commands, output directories (`dist`), and non-secret public environment variables.
4. Never expose private API keys or database connection strings to client-side code; sensitive logic belongs in serverless functions.
5. Review generated preview URLs, verify responsive navigation, and solicit mentor review before triggering production releases.

### C. Docker Deployment

1. Build an optimized container image with unambiguous version tags: `docker build -t lab-portal:v1.0 .`.
2. Run locally on the loopback interface: `docker run --rm -p 127.0.0.1:8080:80 lab-portal:v1.0`.
3. Verify the deployment at `http://localhost:8080`, then stop the container using `Ctrl+C`.
4. On lab servers, push images strictly to authorized internal container registries following lab governance rules.

## Module Assignment

Author a comparative analysis table evaluating Ubuntu VPS, Vercel, and Docker across five key dimensions: degree of control, operational maintenance burden, developer velocity, security risks, and cost considerations. Select the ideal deployment pathway for your practice project and author a comprehensive runbook detailing deployment prerequisites, smoke testing steps, access log inspection, rollback procedures, and resource decommissioning.

## References

- [OpenSSH Manual](https://man.openbsd.org/ssh)
- [systemctl Manual](https://man.freedesktop.org/software/systemd/man/latest/systemctl.html)
- [Vercel Documentation](https://vercel.com/docs)
- [Docker Run Reference](https://docs.docker.com/reference/cli/docker/container/run/)
- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
