FROM nginx:alpine

# Copy initial HTML into Nginx’s web root
# (during development, docker-compose will mount ./html over this)
COPY html/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
