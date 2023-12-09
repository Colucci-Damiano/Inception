#!/bin/sh

if [ ! -d "/var/lib/mysql/wordpress" ]; then

echo "DB_ROOT_PASS: $DB_ROOT_PASS"
echo "DB_NAME: $DB_NAME"
echo "DB_USERNAME: $DB_USERNAME"
echo "DB_USER_PASS: $DB_USER_PASS"

cat << EOF > /file.sql
USE mysql;
FLUSH PRIVILEGES;
DELETE FROM mysql.user WHERE User='';
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USERNAME'@'%' IDENTIFIED BY '$DB_USER_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USERNAME'@'%';
FLUSH PRIVILEGES;
EOF
mariadbd --defaults-file=/etc/my.cnf.d/dcolucci.cnf --bootstrap < /file.sql
fi