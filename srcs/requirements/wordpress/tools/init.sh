#!/bin/sh

if ! wp --path=/var/www/wordpress user list --field=user_login | /bin/grep -q "${DB_USERNAME}"; then

wp core install --path=/var/www/wordpress --title=Inception_dcolucci --admin_user="${WP_ADMIN}" --admin_password="${WP_PASS}" --admin_email=sample@mail.it --url=www.dcolucci.42.fr

wp user create "${WP_USERNAME}" sample2@mail.it --path=/var/www/wordpress --role=author --user_pass="${WP_USER_PASS}"

wp plugin install wp-redis --activate --path=/var/www/wordpress

fi

php-fpm81 --nodaemonize