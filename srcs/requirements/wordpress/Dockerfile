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

WORKDIR /var/www/

RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& rm latest.tar.gz

COPY ./conf/wp-config.php ./wordpress/

CMD ["php-fpm81", "--nodaemonize"]