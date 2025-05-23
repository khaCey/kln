FROM nginx:alpine

# Copy the HTML files into the container
COPY . /usr/share/nginx/html

# Expose port 75
EXPOSE 75