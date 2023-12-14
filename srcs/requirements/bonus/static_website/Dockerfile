FROM alpine:3.17

RUN apk update && apk add nginx

RUN mkdir -p /var/www/html

COPY ./html/index.html /var/www/html/index.html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]