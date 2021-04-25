<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '$^xX2$l:iX-EY1|54HR|Psabsi x4w9=Skv!%_!-zc!g}/[Oc.@}Ml.-u<)[o|{+');
define('SECURE_AUTH_KEY',  'fWQ8g(y!;w-.v4p43@]V>(3kSa&a6I+xlTzK`VHD1%>J4; vF~<ap<|cr9Cc*uPG');
define('LOGGED_IN_KEY',    'NC3:jLdKJFpD(H)lx$yee>G1:^[~,pKhah*fSqoh5+?9nws$]TMuQ:+F1H-Z30&m');
define('NONCE_KEY',        '7+0R+,!(LWx4JMwq(Om+koW_>feHKD0i7h![6*|i|b[$N5&@LsZq~+UAI8`E571%');
define('AUTH_SALT',        'O*e G:QMwY=U96/t8|C$:?:?Q*91|,|BonW0#->x2j0i{t1BJ) }Vz[2_Q!,F1=I');
define('SECURE_AUTH_SALT', 'iJD*ekt&Zp6bU-Qjmbv -vE;w},W-@kesghZ$>o@;`x%Sm5t4,N2bzT&ebqiRx4|');
define('LOGGED_IN_SALT',   'g|&^O-]cq{Y7(Vb2YqEaJ|[Z #g(#mHv]5Wr-y)76k6t)h|d#E5kJ -`vByLDNsF');
define('NONCE_SALT',       ';DnF3zm]aj21(hQ=JVjg$wMBrF-i,m(?S?!#`s}LmB~?%o,k5&,6 k +O+?xqVRf');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';