FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com> 

RUN apk --update add nginx

RUN mkdir -p /usr/share/nginx/html && \
  mkdir -p /run/nginx

COPY default.conf /etc/nginx/conf.d/

COPY 2048 /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
