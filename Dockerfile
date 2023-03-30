FROM nginx:1.23.3-alpine

# Update packages to fix OpenSSL vulnerability
RUN apk update && apk upgrade --no-cache openssl

# Install the updated version of curl
#RUN apk add curl=7.87.0-r2 --no-cache --force
# Upgrade tiff package to version 4.4.0-r2
#RUN apk add tiff=4.4.0-r2 --no-cache --force

# Install Bash if needed
RUN apk add bash

# Copy the index.html file to the Nginx default document root
COPY ./index.html /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
