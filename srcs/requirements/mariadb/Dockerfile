FROM alpine:3.17

RUN apk update \
	&& apk add mariadb mariadb-client

RUN mkdir -p /run/mysqld/; \
	mkdir -p /var/log/mysql/;

RUN chown -R mysql:mysql /run/mysqld/; \
	chown -R mysql:mysql /var/log/mysql/; \
	chown -R mysql:mysql /var/lib/mysql/;

COPY ./conf/my.cnf /etc/my.cnf.d/dcolucci.cnf

RUN mariadb-install-db

CMD ["mariadbd-safe", "--defaults-file=/etc/my.cnf.d/dcolucci.cnf"]