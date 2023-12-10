FROM alpine:3.17

ARG DB_NAME
ARG DB_USERNAME
ARG DB_USER_PASS

RUN apk update \
	&& apk add \
	wget \
	php81 \
	php81-fpm \
	php81-mysqli

RUN mkdir -p /var/www/

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.dcolucci.42.fr.conf

COPY ./tools/install_wordpress.sh /install_wordpress.sh

RUN sh /install_wordpress.sh && rm /install_wordpress.sh

CMD ["php-fpm81", "--nodaemonize"]