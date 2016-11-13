<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'H3-cours02');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ';2XJYMl0wHU O2?U.8@R!Pzn#^Ge;P}b7.J+7(NSLj-yjj14)H-_d[F&&QHJzhVa');
define('SECURE_AUTH_KEY',  ',  w1Y9`&|]ww>5VR0j~3pR&p%@U=_1}3a*2_pg0S<7$k-%K`?^@g[4bK$-.c1]4');
define('LOGGED_IN_KEY',    'I~+zKchSMR>_;PD!^<k(ZY,_>zHl&}DF6c@$f^5CX`iDa~={Qvq&,<xx]ZIRLG0j');
define('NONCE_KEY',        '/e,zaQbKhyT^Bae>;((=MoP:OM 9J_ =_a7ZC[]LRT#,8SEaP]5yb$*7+_^Gw6]_');
define('AUTH_SALT',        '%a|M]jN8n{@@g;BFt99lZWJV:Y:QE+iJ(#pyjcPoC-j};]%2bZ+?Uz!H[IUmcJ;/');
define('SECURE_AUTH_SALT', '2knZ[DR 7Ly6/+N;S6SQITsl-sH2NqiBHgHp~uvKaRyvI*E-D7.D#Nj/hcTz~{!2');
define('LOGGED_IN_SALT',   '$?,n@q(ExldlQ94w+ Jy;^y&MKd{4_HtPiyl^xexeGPc`ak_C4n:TEgh]=KmL>kL');
define('NONCE_SALT',       '[y+[bSe6# $Wc^Y2e@9?86XVn yB]c_deTPno`*zr_QXQRM;wz?>c3~@exUMkONW');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'jafar_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d'information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');