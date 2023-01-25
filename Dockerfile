FROM nginx:alpine
RUN apk update && apk add bash
EXPOSE 8080
EXPOSE 443
VOLUME /usr/local/share/ca-certificates
CMD ["nginx", "-g", "daemon off;"]