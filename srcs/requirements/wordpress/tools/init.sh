#!/bin/sh

# if [ ! -d /var/www/wordpress/admin ]; then

# wp-administrator user creation
wp core install --path=/var/www/wordpress --title=Inception_dcolucci --admin_user=dcolucci --admin_password=pippo --admin_email=sample@mail.it --url=www.dcolucci.42.fr

# wp-user creation
wp user create "${WP_USERNAME}" sample2@mail.it --path=/var/www/wordpress --role=author --user_pass="${WP_USER_PASS}"

# fi

php-fpm81 --nodaemonize