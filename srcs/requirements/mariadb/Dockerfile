FROM alpine:3.17

RUN apk update && apk add mariadb mariadb-client

RUN mkdir -p /run/mysqld/

RUN chown -R mysql:mysql /run/mysqld

RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf/my.cnf /etc/my.cnf.d/dcolucci.cnf

RUN mariadb-install-db

CMD ["mariadbd-safe"]