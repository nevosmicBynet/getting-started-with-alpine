FROM alpine:latest
RUN apk add nginx

CMD echo 'Hello World'