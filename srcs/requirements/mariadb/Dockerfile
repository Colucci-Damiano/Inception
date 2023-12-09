FROM alpine:3.17

RUN apk update; \
 	apk add \
	mariadb \
	mariadb-client

RUN mkdir -p /run/mysqld/; \
	mkdir -p /var/log/mysql/;

RUN chown -R mysql:mysql /run/mysqld/; \
	chown -R mysql:mysql /var/log/mysql/; \
	chown -R mysql:mysql /var/lib/mysql/;

COPY ./conf/my.cnf /etc/my.cnf.d/dcolucci.cnf
COPY ./tools/install_db.sh /install_db.sh
COPY ./tools/install_wordpress_db.sh /install_wordpress_db.sh

# Script install_db.sh: init the database if not exists
# Script install_wordpress_db.sh: create wordpress database, admin user and normal user if not exist.
RUN	sh /install_db.sh
RUN rm /install_db.sh
RUN sh /install_wordpress_db.sh
RUN rm install_wordpress_db.sh 

CMD ["mariadbd-safe --defaults-file=/etc/my.cnf.d/dcolucci.cnf"]