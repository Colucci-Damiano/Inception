#!/bin/sh

if [ ! -d /var/www/wordpress/admin ]; then

# clean installation
rm -rf /var/www/wordpress

# wp-cli installation
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
mv ./wp-cli.phar /usr/local/bin/wp
chmod +x /usr/local/bin/wp

# mbstring module
sed -i 's/;extension=mbstring/extension=mbstring/' /etc/php81/php.ini

# wordpress download
mkdir -p /var/www/wordpress
cd /var/www/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm -rf latest.tar.gz

# wp-config.php configuration file creation
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
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
EOF
fi
