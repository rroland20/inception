<?php

define( 'WP_CACHE_KEY_SALT', 'rroland.42.fr');
define('WP_CACHE', true);

define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'rroland' );

/** MySQL database password */
define( 'DB_PASSWORD', 'rroland' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
