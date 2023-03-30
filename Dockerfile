FROM nginx:1.23.3-alpine

# Upgrade packages to fix OpenSSL vulnerability
RUN apk update && apk upgrade --no-cache && \
    apk add openssl=3.0.8-r1 --no-cache --force && \
    apk add curl=7.87.0-r2 --no-cache --force && \
    apk add tiff=4.4.0-r2 --no-cache --force && \
    apk add bash && \
    rm -rf /var/cache/apk/*

# Copy the index.html file to the Nginx default document root
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]