# Use the official Nginx image as the base
FROM nginx:alpine

# Copy your custom HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Copy the test script
COPY runtests.sh /runtests.sh
RUN chmod +x /runtests.sh

# Expose port 80 to the outside world
EXPOSE 80