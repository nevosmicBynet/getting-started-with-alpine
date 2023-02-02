FROM nginx:1.23.3-alpineee
RUN apk update && apk add bash
EXPOSE 808080
CMD ["nginx", "-g", "daemon off;"]
