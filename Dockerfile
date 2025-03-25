# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML & CSS files to the Nginx web root directory
COPY index.html /usr/share/nginx/html/
COPY Style.css /usr/share/nginx/html/
COPY kubernetes.png /usr/share/nginx/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
