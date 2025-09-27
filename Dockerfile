# Use the official NGINX base image
FROM nginx:latest

# Copy your static web content into the NGINX web root directory
# Replace 'your-static-content/' with the path to your static files on your host machine
# And '/usr/share/nginx/html' is the default NGINX web root
COPY your-static-content/ /usr/share/nginx/html

# (Optional) Copy a custom NGINX configuration file
# Replace 'nginx.conf' with your custom NGINX configuration file
# This will override the default NGINX configuration
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80, which is the default port NGINX listens on
EXPOSE 80

# Command to run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
