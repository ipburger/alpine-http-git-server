FROM nginx:stable-alpine

MAINTAINER Vitor Boufleur "vboufleur@ipburger.com"

RUN apk add --no-cache git-daemon fcgiwrap spawn-fcgi

COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/git"]

EXPOSE 80

CMD spawn-fcgi -s /run/fcgi.sock /usr/bin/fcgiwrap && \
    nginx -g "daemon off;"
