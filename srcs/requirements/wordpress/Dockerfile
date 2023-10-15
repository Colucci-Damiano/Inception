FROM alpine:3.17
RUN apk update && apk add wget php81 php81-fpm
RUN mkdir -p /var/www/localhost/htdocs/ && cd /var/www/localhost/htdocs
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz
