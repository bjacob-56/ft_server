<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'my_db' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'my_user' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'password' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'K/K.Jp,O8fmF. r)b$_!3iv/Y3(O_=q$<DZDj1x*6|0F8,{IBRyDrg#<|H#o2{_6' );
define( 'SECURE_AUTH_KEY',  'yc-^^6v4|J-vd6cA+,R51M&cv_G^gn]Y!sTT4f&%PY@|El+MuIJJh<g}(+Ns<$+|' );
define( 'LOGGED_IN_KEY',    ',Y aP?4^[vlR+US{7sDbtFP(oKjls[ FaMLc)haO/`)`/7#j0BCJ<QN~94 )+:!-' );
define( 'NONCE_KEY',        '~=UMZ6NA,B`3~HURhe7@N&tN+]WK-(.~M|,+(VTGR|n&2lj-R5JY!ZT:dlA573U;' );
define( 'AUTH_SALT',        'gRivtt=3Y/F_AZ8Sh-y9Mqi|f#NI4fWg%XPf}8jN=F2sZ?*H=!gP%rnEloSg3_U`' );
define( 'SECURE_AUTH_SALT', 'Fm@]|b->(Q/zTdZQeo|*FHwr0P8W/q!TY7Ecai|c+V-%ZWQL+SzYFsL*]2h`g~#4' );
define( 'LOGGED_IN_SALT',   '0i|R7nZIw,E86a0Cs$@KXP!Yx5u&/B31]]3&V3t@Wq|jIi$9yeE7Usq)=PR-cJ [' );
define( 'NONCE_SALT',       'Uv|&Mj/`;i{-)<pB23k4fMJ(6|lh*Vh:TLvW|v-_Io$/jp@+PZ=rZoJ{&f,#2_n~' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );