#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql" ]; then
	mariadb-install-db --defaults-file=/etc/my.cnf.d/dcolucci.cnf
fi
