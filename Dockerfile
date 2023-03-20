FROM nginx:1.23.3-alpine
RUN apk update && apk add bash
# Install the updated version of curl
RUN apk add curl=7.87.0-r2 --no-cache --force
EXPOSE 8080
# Copy the index.html file to the Nginx default document root
COPY ./index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
