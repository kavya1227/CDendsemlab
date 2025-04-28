# Use the official Nginx image
FROM nginx:latest

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into nginx's default directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
