FROM alpine:3.17

RUN apk update && apk add \
	wget \
	php81 \
	php81-mysqli \
	php81-session \
	php81-pdo \
	php81-pdo_mysql

RUN mkdir -p /var/www/adminer

WORKDIR /var/www/adminer

EXPOSE 8080

RUN wget -O index.php https://www.adminer.org/latest.php

CMD	[ "php", "-S", "[::]:8080", "-t", "/var/www/adminer" ]