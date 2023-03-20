FROM nginx:1.23.3-alpine
RUN apk update && apk add bash
EXPOSE 8080
COPY ./index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
