# Infrastructure 2: Nginx Web Server

Nginx is a high-performance HTTP web server and reverse proxy capable of serving static files efficiently and proxying incoming client traffic to upstream application servers. In this exercise, we configure Nginx to host a static web page locally on an Ubuntu VM.

## Basic Theory

HTTP clients (such as web browsers or curl) send requests over TCP to an IP and port. Nginx inspects incoming request headers, matches them against configured `server` blocks, and resolves file paths using nested `location` blocks.
- `root`: Establishes the filesystem directory where Nginx locates static document assets.
- `index`: Specifies default fallback files when a request targets a directory rather than a specific file.

Configuration example:

```nginx
server {
    listen 8080;
    server_name localhost;
    root /var/www/html;
    index index.html;
}
```

- `server { ... }`: Delimits an individual virtual host configuration block.
- `listen 8080;`: Binds the server to accept connections on port 8080.
- `server_name localhost;`: Specifies hostnames matched by this virtual server.
- `root /var/www/html;`: The document root directory.
- `index index.html;`: The default filename served when the URL path points to a directory.
- Semicolons (`;`) terminate every directive.

In [nginx.conf](./nginx.conf), `location /` handles requests originating at the root path; `$uri` is an internal Nginx variable containing the normalized request URI, `$uri/` tests whether a corresponding directory exists, and `=404` returns an HTTP 404 Not Found error if neither is resolved. The `try_files` directive checks candidate paths sequentially.

Essential terminal commands:
- `sudo systemctl status nginx`: Inspects the active operational state of the Nginx systemd daemon service.
- `sudo nginx -t`: Validates configuration syntax and test parses all included files; always run this before reloading to avoid bringing down active services due to typo errors.

## Tools and Lab Preparation

- An Ubuntu VM configured from the Linux setup module or a local development workstation.
- The standard `nginx` package installed from the distribution repository.
- Sudo administrative access and a text editor.

## Hands-on Learning Steps

1. Install Nginx inside the VM: `sudo apt install nginx`.
2. Inspect the service daemon: `sudo systemctl status nginx`.
3. Place your practice HTML page in the configured document root (e.g. `/var/www/html/index.html`), ensuring file permissions grant read access to the web server process.
4. Validate configuration integrity using `sudo nginx -t`.
5. Access the page from a browser or curl targeting `http://localhost:8080`.
6. Inspect access logs in `/var/log/nginx/access.log`, and halt the service when practice concludes: `sudo systemctl stop nginx`.

## Module Assignment

Author a custom server block configuration for a non-privileged development port on your VM. Document syntax verification output (`nginx -t`), provide curl response headers showing successful HTTP 200 delivery, and explain the roles of `listen`, `server_name`, `root`, and `index`. Keep all firewalls closed to public networks.

## References

- [Nginx Beginner's Guide](https://nginx.org/en/docs/beginners_guide.html)
- [Ubuntu Server Guide: Web Servers](https://ubuntu.com/server/docs)
