FROM nginx:alpine

# Copy the HTML files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80