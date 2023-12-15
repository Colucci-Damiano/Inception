FROM alpine:3.17

ARG DOMAIN_NAME
ARG DB_NAME
ARG DB_USERNAME
ARG DB_USER_PASS
ARG WP_USERNAME
ARG WP_USER_PASS
ARG WP_ADMIN
ARG WP_PASS

RUN apk update \
	&& apk add \
	curl \
	wget \
	php81 \
	php81-fpm \
	php81-mysqli \
	php81-phar \
	php81-mbstring

RUN mkdir -p /var/www/

COPY ./conf/www.conf /etc/php81/php-fpm.d/www.dcolucci.42.fr.conf

COPY ./tools/install_wordpress.sh /install_wordpress.sh

COPY ./tools/init.sh /init.sh

RUN sh /install_wordpress.sh && rm /install_wordpress.sh

ENTRYPOINT ["sh", "/init.sh"]