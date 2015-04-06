<?php

// ** Cache settings ** //
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/data/www/wd-openleaf-ws/htdocs/test1/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager

// ** MySQL settings ** //
/** The name of the database for WordPress */
define('DB_NAME', 'test1_7wc_wp');

/** MySQL database username */
define('DB_USER', 'wp_6mo9h');

/** MySQL database password */
define('DB_PASSWORD', 'JGWowD6RfSgBvOdbh0c0G2F');

/** MySQL hostname */
#define('DB_HOST', 'localhost:/var/run/mysqld/mysqld.sock');
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',         '$U|E|0zmIe-kY:!$C(I<y%!<+*!1Ur*>=+o[DMQ/4Cdz2&@-14Z)yq_/Yn!-|~-O');
define('SECURE_AUTH_KEY',  'uMf1q;)s n:<[H:XV)MqA:6*0r&]^K7|[O1a|o}vojltcY|sP+o.UP%:-{vu_^~,');
define('LOGGED_IN_KEY',    'h)*cQAG<GIar ik@gNav]2VT>d(G)8GFh>($eU:2@trw|uDN5>z4iroQ9btIB|[W');
define('NONCE_KEY',        '+IGHQLPsg)UuGb=}R3WBVpw+4*UrURS`*9x}+PY0pUz{4{:-{;u+! X2D+sAErmS');
define('AUTH_SALT',        'sm[jI<p?7Y/tSk&t%=NmD[(maH4<i!3^yR0sFC<` 8n}wu;+SG:v?Eq#+;#:cW 3');
define('SECURE_AUTH_SALT', 'L-g/%&^UsA[Bw4)x$SEb@!!DlS.= 8uULTuhiu]r;Y}td#1;M)T! WViXd%sZ.3g');
define('LOGGED_IN_SALT',   'Z*+LJO qYX.2Uao>zaiP?U<6Z1FW,m4zZV0K=B@I~k>Nlv?NVtrkq3&14F+p};We');
define('NONCE_SALT',       'Sx dp~oW!*1LHOQ,TeWRRx8bvbJ0KRi>+MG#pnK:2^oc;V6s/@T23~-I!qS^0LO!');


$table_prefix = 'wp_';


/** Force SSL Logins and SSL Admin Admin Access */
define('FORCE_SSL_ADMIN', false);


/** WordPress Debug mode */
define('WP_DEBUG', false);
define('WP_DEBUG_LOG', false);
define('WP_DEBUG_DISPLAY', false);
@ini_set('display_errors',0);


/** Relocate Switch for use when moving the site URL */
define('RELOCATE', true); // change this once the site is configured


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
