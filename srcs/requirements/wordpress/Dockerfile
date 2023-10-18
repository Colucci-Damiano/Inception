FROM alpine:3.17
RUN apk update && apk add wget php81 php81-fpm php81-mysqli
RUN mkdir -p /var/www/
WORKDIR /var/www/
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz
CMD ["php-fpm81", "--nodaemonize"]
