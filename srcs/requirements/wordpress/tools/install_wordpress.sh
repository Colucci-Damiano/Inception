#!/bin/sh

cd /var/www/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz

if [ ! -f /var/www/wordpress/wp-config.php ]; then

cat << EOF > /var/www/wordpress/wp-config.php
<?php

define( 'DB_NAME', '$DB_NAME' );
define( 'DB_USER', '$DB_USERNAME' );
define( 'DB_PASSWORD', '$DB_USER_PASS' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );

\$table_prefix = 'wp_';

define( 'WP_DEBUG', false );
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
EOF
fi