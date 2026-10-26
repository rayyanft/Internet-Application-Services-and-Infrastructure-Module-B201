# Official lightweight Nginx Alpine base image for serving static content.
FROM nginx:alpine

# Copy local index.html into Nginx's default public document root.
COPY index.html /usr/share/nginx/html/index.html

# Metadata documentation indicating the container listens on port 80 at runtime.
EXPOSE 80
