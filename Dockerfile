FROM nginx:alpine
RUN apk update && apk add bash
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]