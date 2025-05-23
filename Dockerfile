# docker-compose.yml
# =====================================
# Single port mapping to avoid duplicates.
# Adjust "75:80" to any free host port you prefer.

version: '3.8'

services:
  static-site:
    # Build from the local Dockerfile
    build:
      context: .
      dockerfile: Dockerfile
    image: kaelnoer:latest

    # Mount local HTML directory for live-reload
    volumes:
      - ./html:/usr/share/nginx/html:ro

    # Map host port 75 to container port 80. Only one mapping to avoid duplicates.
    ports:
      - "75:80"

    restart: always

# Usage:
# 1. Ensure this compose file and Dockerfile are in the same directory in your repo.
# 2. If deploying via Portainer (Repository), set the Compose file path to this file’s location.
# 3. Deploy the stack; Portainer will build and start the container on host port 75.
# 4. Browse to http://<host-ip>:75 to see your site.
# 5. On HTML changes (./html), simply: docker-compose restart static-site
