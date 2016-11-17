-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mer 16 Novembre 2016 à 17:37
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `H3-cours02`
--

-- --------------------------------------------------------

--
-- Structure de la table `jafar_commentmeta`
--

CREATE TABLE `jafar_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jafar_comments`
--

CREATE TABLE `jafar_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_comments`
--

INSERT INTO `jafar_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-06 14:39:07', '2016-11-06 13:39:07', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jafar_links`
--

CREATE TABLE `jafar_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jafar_options`
--

CREATE TABLE `jafar_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_options`
--

INSERT INTO `jafar_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/H3/jafar-WP/wordpress', 'yes'),
(2, 'home', 'http://localhost/H3/jafar-WP/wordpress', 'yes'),
(3, 'blogname', 'Jafar', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexandra.cossid@orange.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:132:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"annonce/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"annonce/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"annonce/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"annonce/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"annonce/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"annonce/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"annonce/([^/]+)/embed/?$";s:40:"index.php?annonce=$matches[1]&embed=true";s:28:"annonce/([^/]+)/trackback/?$";s:34:"index.php?annonce=$matches[1]&tb=1";s:36:"annonce/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?annonce=$matches[1]&paged=$matches[2]";s:43:"annonce/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?annonce=$matches[1]&cpage=$matches[2]";s:32:"annonce/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?annonce=$matches[1]&page=$matches[2]";s:24:"annonce/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"annonce/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"annonce/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"annonce/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"annonce/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"annonce/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"categorie-annonce/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?categorie-annonce=$matches[1]&feed=$matches[2]";s:53:"categorie-annonce/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?categorie-annonce=$matches[1]&feed=$matches[2]";s:34:"categorie-annonce/([^/]+)/embed/?$";s:50:"index.php?categorie-annonce=$matches[1]&embed=true";s:46:"categorie-annonce/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?categorie-annonce=$matches[1]&paged=$matches[2]";s:28:"categorie-annonce/([^/]+)/?$";s:39:"index.php?categorie-annonce=$matches[1]";s:57:"mot-cles-annonce/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?mot-cles-annonce=$matches[1]&feed=$matches[2]";s:52:"mot-cles-annonce/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?mot-cles-annonce=$matches[1]&feed=$matches[2]";s:33:"mot-cles-annonce/([^/]+)/embed/?$";s:49:"index.php?mot-cles-annonce=$matches[1]&embed=true";s:45:"mot-cles-annonce/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?mot-cles-annonce=$matches[1]&paged=$matches[2]";s:27:"mot-cles-annonce/([^/]+)/?$";s:38:"index.php?mot-cles-annonce=$matches[1]";s:33:"slide/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"slide/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"slide/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"slide/([^/]+)/embed/?$";s:38:"index.php?slide=$matches[1]&embed=true";s:26:"slide/([^/]+)/trackback/?$";s:32:"index.php?slide=$matches[1]&tb=1";s:34:"slide/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&paged=$matches[2]";s:41:"slide/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&cpage=$matches[2]";s:30:"slide/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?slide=$matches[1]&page=$matches[2]";s:22:"slide/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"slide/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"slide/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=13&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:112:"/Applications/MAMP/htdocs/H3/jafar-WP/wordpress/wp-content/plugins/acf-front-end-editor/acf-front-end-editor.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'jafar', 'yes'),
(41, 'stylesheet', 'jafar', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '13', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'jafar_user_roles', 'a:6:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:13:"edit_annonces";b:1;s:12:"edit_annonce";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:18:"after_switch_theme";a:2:{s:4:"name";s:15:"create_new_role";s:12:"capabilities";a:0:{}}}', 'yes'),
(93, 'WPLANG', 'fr_FR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1479346748;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1479389989;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1479390007;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, '_site_transient_timeout_browser_0dcda6d560216d247d11fdbbd3c4ea6f', '1479044364', 'no'),
(115, '_site_transient_browser_0dcda6d560216d247d11fdbbd3c4ea6f', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(116, 'can_compress_scripts', '1', 'no'),
(126, 'current_theme', '', 'yes'),
(127, 'theme_mods_byunbaek', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1478786296;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(169, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1478786305;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(170, 'theme_mods_jafar', 'a:1:{i:0;b:0;}', 'yes'),
(172, '_transient_timeout_plugin_slugs', '1479046860', 'no'),
(173, '_transient_plugin_slugs', 'a:5:{i:0;s:45:"acf-front-end-editor/acf-front-end-editor.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:9:"hello.php";i:4;s:84:"quick-and-easy-post-creation-for-acf-relationship-fields/acf-relationship-create.php";}', 'no'),
(174, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1478829607', 'no'),
(175, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: cURL error 6: name lookup timed out</p></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: cURL error 6: name lookup timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(184, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1479303561;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(185, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1479303563;s:7:"checked";a:4:{s:5:"jafar";s:0:"";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(189, 'recently_activated', 'a:2:{s:84:"quick-and-easy-post-creation-for-acf-relationship-fields/acf-relationship-create.php";i:1478960460;s:45:"acf-front-end-editor/acf-front-end-editor.php";i:1478960458;}', 'yes'),
(190, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1478970968', 'no'),
(191, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6088";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3759";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3727";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3228";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2870";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2538";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2271";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2153";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2098";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2097";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2035";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2000";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1960";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1927";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1760";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1643";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1611";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1467";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1367";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1291";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1148";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1133";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1076";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1022";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1011";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"960";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"959";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"956";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"926";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"926";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"925";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"857";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"848";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"837";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"818";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"797";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"789";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"780";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"773";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"758";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"751";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"732";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"730";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"729";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"721";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"712";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"706";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"705";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"653";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"648";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"638";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"631";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"623";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"614";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"612";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"611";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"599";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"582";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"582";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"582";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"579";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"566";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"550";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"547";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"545";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"538";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"538";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"533";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"533";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"517";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"504";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"499";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"481";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"470";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"466";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"464";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"457";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"445";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"444";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"438";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"436";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"433";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"432";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"428";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"423";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"421";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"416";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"415";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"411";}}', 'no'),
(199, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1479303563;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:45:"acf-front-end-editor/acf-front-end-editor.php";O:8:"stdClass":6:{s:2:"id";s:5:"75731";s:4:"slug";s:20:"acf-front-end-editor";s:6:"plugin";s:45:"acf-front-end-editor/acf-front-end-editor.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:51:"https://wordpress.org/plugins/acf-front-end-editor/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/acf-front-end-editor.zip";}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:84:"quick-and-easy-post-creation-for-acf-relationship-fields/acf-relationship-create.php";O:8:"stdClass":6:{s:2:"id";s:5:"73940";s:4:"slug";s:56:"quick-and-easy-post-creation-for-acf-relationship-fields";s:6:"plugin";s:84:"quick-and-easy-post-creation-for-acf-relationship-fields/acf-relationship-create.php";s:11:"new_version";s:3:"2.2";s:3:"url";s:87:"https://wordpress.org/plugins/quick-and-easy-post-creation-for-acf-relationship-fields/";s:7:"package";s:99:"https://downloads.wordpress.org/plugin/quick-and-easy-post-creation-for-acf-relationship-fields.zip";}}}', 'no'),
(200, 'acf_version', '4.4.11', 'yes'),
(284, '_site_transient_timeout_theme_roots', '1479304956', 'no'),
(285, '_site_transient_theme_roots', 'a:4:{s:5:"jafar";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(288, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `jafar_postmeta`
--

CREATE TABLE `jafar_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_postmeta`
--

INSERT INTO `jafar_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1478439555:1'),
(4, 4, '_wp_trash_meta_status', 'publish'),
(5, 4, '_wp_trash_meta_time', '1478439699'),
(6, 4, '_wp_desired_post_slug', 'jafar-predident'),
(7, 2, '_edit_lock', '1478439600:1'),
(8, 2, '_edit_last', '1'),
(9, 6, '_edit_last', '1'),
(10, 6, '_edit_lock', '1479132997:1'),
(11, 6, '_wp_page_template', 'page-templates/programme.php'),
(12, 8, '_edit_last', '1'),
(13, 8, '_wp_page_template', 'default'),
(14, 8, '_edit_lock', '1478439655:1'),
(15, 11, '_edit_last', '1'),
(16, 11, '_wp_page_template', 'page-templates/a-propos.php'),
(17, 11, '_edit_lock', '1479058577:1'),
(18, 13, '_edit_last', '1'),
(19, 13, '_edit_lock', '1479137789:1'),
(20, 13, '_wp_page_template', 'page-templates/accueil-jafar.php'),
(21, 8, '_wp_trash_meta_status', 'publish'),
(22, 8, '_wp_trash_meta_time', '1478956355'),
(23, 8, '_wp_desired_post_slug', 'a-propos'),
(24, 17, '_edit_last', '1'),
(25, 17, 'field_58272560fc7c0', 'a:14:{s:3:"key";s:19:"field_58272560fc7c0";s:5:"label";s:4:"type";s:4:"name";s:4:"type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:10:"Actualité";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(26, 17, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"annonce";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(27, 17, 'position', 'normal'),
(28, 17, 'layout', 'no_box'),
(29, 17, 'hide_on_screen', ''),
(30, 17, '_edit_lock', '1478960370:1'),
(31, 18, '_edit_last', '1'),
(32, 18, '_edit_lock', '1479309098:1'),
(33, 18, 'type', 'Actualité'),
(34, 18, '_type', 'field_58272560fc7c0'),
(35, 19, '_edit_last', '1'),
(36, 19, '_edit_lock', '1479308649:1'),
(37, 19, 'type', 'Article'),
(38, 19, '_type', 'field_58272560fc7c0'),
(39, 20, '_edit_last', '1'),
(40, 20, '_edit_lock', '1479309025:1'),
(41, 20, 'type', 'Boutique'),
(42, 20, '_type', 'field_58272560fc7c0'),
(43, 25, '_edit_last', '1'),
(44, 25, 'field_5828be0b68f97', 'a:15:{s:3:"key";s:19:"field_5828be0b68f97";s:5:"label";s:3:"num";s:4:"name";s:3:"num";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(45, 25, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(46, 25, 'position', 'normal'),
(47, 25, 'layout', 'no_box'),
(48, 25, 'hide_on_screen', ''),
(49, 25, '_edit_lock', '1479065043:1'),
(50, 26, '_edit_last', '1'),
(51, 26, '_edit_lock', '1479134617:1'),
(56, 28, 'num', '1'),
(57, 28, '_num', 'field_5828be0b68f97'),
(58, 26, 'num', '1'),
(59, 26, '_num', 'field_5828be0b68f97'),
(60, 29, '_edit_last', '1'),
(61, 29, '_edit_lock', '1479133292:1'),
(66, 31, 'num', '2'),
(67, 31, '_num', 'field_5828be0b68f97'),
(68, 29, 'num', '2'),
(69, 29, '_num', 'field_5828be0b68f97'),
(70, 32, '_edit_last', '1'),
(71, 32, '_edit_lock', '1479134666:1'),
(76, 34, 'num', '3'),
(77, 34, '_num', 'field_5828be0b68f97'),
(78, 32, 'num', '3'),
(79, 32, '_num', 'field_5828be0b68f97'),
(80, 35, '_edit_last', '1'),
(81, 35, '_edit_lock', '1479133276:1'),
(86, 37, 'num', '4'),
(87, 37, '_num', 'field_5828be0b68f97'),
(88, 35, 'num', '4'),
(89, 35, '_num', 'field_5828be0b68f97'),
(90, 38, '_edit_last', '1'),
(91, 38, '_edit_lock', '1479137118:1'),
(96, 40, 'num', '5'),
(97, 40, '_num', 'field_5828be0b68f97'),
(98, 38, 'num', '5'),
(99, 38, '_num', 'field_5828be0b68f97'),
(100, 41, '_edit_last', '1'),
(101, 41, '_edit_lock', '1479133260:1'),
(106, 43, 'num', '6'),
(107, 43, '_num', 'field_5828be0b68f97'),
(108, 41, 'num', '6'),
(109, 41, '_num', 'field_5828be0b68f97'),
(111, 1, '_wp_trash_meta_status', 'publish'),
(112, 1, '_wp_trash_meta_time', '1479066874'),
(113, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(114, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(146, 53, 'num', '1'),
(147, 53, '_num', 'field_5828be0b68f97'),
(149, 54, 'num', '6'),
(150, 54, '_num', 'field_5828be0b68f97'),
(152, 55, 'num', '5'),
(153, 55, '_num', 'field_5828be0b68f97'),
(155, 56, 'num', '4'),
(156, 56, '_num', 'field_5828be0b68f97'),
(158, 57, 'num', '3'),
(159, 57, '_num', 'field_5828be0b68f97'),
(161, 58, 'num', '2'),
(162, 58, '_num', 'field_5828be0b68f97'),
(165, 26, '_thumbnail_id', '95'),
(167, 60, '_wp_attached_file', '2016/11/kebab.jpg'),
(168, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:510;s:6:"height";i:650;s:4:"file";s:17:"2016/11/kebab.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"kebab-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"kebab-235x300.jpg";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"thumbnail_annonce";a:4:{s:4:"file";s:17:"kebab-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:17:"kebab-471x600.jpg";s:5:"width";i:471;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:17:"kebab-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(169, 29, '_thumbnail_id', '60'),
(173, 32, '_thumbnail_id', '97'),
(175, 62, '_wp_attached_file', '2016/11/poi.jpg'),
(176, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:510;s:6:"height";i:650;s:4:"file";s:15:"2016/11/poi.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"poi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"poi-235x300.jpg";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"thumbnail_annonce";a:4:{s:4:"file";s:15:"poi-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:15:"poi-471x600.jpg";s:5:"width";i:471;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:15:"poi-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 35, '_thumbnail_id', '62'),
(183, 64, '_wp_attached_file', '2016/11/mob.jpg'),
(184, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:510;s:6:"height";i:650;s:4:"file";s:15:"2016/11/mob.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"mob-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"mob-235x300.jpg";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"thumbnail_annonce";a:4:{s:4:"file";s:15:"mob-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:15:"mob-471x600.jpg";s:5:"width";i:471;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:15:"mob-510x600.jpg";s:5:"width";i:510;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(185, 41, '_thumbnail_id', '64'),
(188, 65, 'num', '2'),
(189, 65, '_num', 'field_5828be0b68f97'),
(191, 66, 'num', '3'),
(192, 66, '_num', 'field_5828be0b68f97'),
(194, 67, 'num', '3'),
(195, 67, '_num', 'field_5828be0b68f97'),
(202, 68, '_edit_last', '1'),
(203, 68, '_edit_lock', '1479154139:1'),
(204, 69, '_wp_attached_file', '2016/11/reine.jpg'),
(205, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:17:"2016/11/reine.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"reine-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"reine-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:17:"reine-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:17:"reine-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:17:"reine-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(206, 68, '_thumbnail_id', '69'),
(208, 70, 'num', ''),
(209, 70, '_num', 'field_5828be0b68f97'),
(210, 68, 'num', ''),
(211, 68, '_num', 'field_5828be0b68f97'),
(212, 71, '_edit_last', '1'),
(213, 71, '_edit_lock', '1479303049:1'),
(214, 72, '_wp_attached_file', '2016/11/crochet.jpg'),
(215, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:19:"2016/11/crochet.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"crochet-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"crochet-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:19:"crochet-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:19:"crochet-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:19:"crochet-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 71, '_thumbnail_id', '72'),
(218, 73, 'num', ''),
(219, 73, '_num', 'field_5828be0b68f97'),
(220, 71, 'num', ''),
(221, 71, '_num', 'field_5828be0b68f97'),
(222, 74, '_edit_last', '1'),
(223, 74, '_edit_lock', '1479154176:1'),
(224, 75, '_wp_attached_file', '2016/11/malefique.jpg'),
(225, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:21:"2016/11/malefique.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"malefique-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"malefique-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:21:"malefique-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:21:"malefique-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:21:"malefique-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 74, '_thumbnail_id', '75'),
(228, 76, 'num', ''),
(229, 76, '_num', 'field_5828be0b68f97'),
(230, 74, 'num', ''),
(231, 74, '_num', 'field_5828be0b68f97'),
(232, 77, '_edit_last', '1'),
(233, 77, '_edit_lock', '1479154196:1'),
(234, 78, '_wp_attached_file', '2016/11/ursula.jpg'),
(235, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:18:"2016/11/ursula.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ursula-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ursula-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:18:"ursula-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"ursula-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:18:"ursula-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(236, 77, '_thumbnail_id', '78'),
(238, 79, 'num', ''),
(239, 79, '_num', 'field_5828be0b68f97'),
(240, 77, 'num', ''),
(241, 77, '_num', 'field_5828be0b68f97'),
(242, 80, '_edit_last', '1'),
(243, 80, '_edit_lock', '1479154207:1'),
(244, 81, '_wp_attached_file', '2016/11/gothel.jpg'),
(245, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:675;s:6:"height";i:900;s:4:"file";s:18:"2016/11/gothel.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"gothel-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"gothel-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:18:"gothel-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"gothel-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:18:"gothel-675x600.jpg";s:5:"width";i:675;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(246, 80, '_thumbnail_id', '81'),
(248, 82, 'num', ''),
(249, 82, '_num', 'field_5828be0b68f97'),
(250, 80, 'num', ''),
(251, 80, '_num', 'field_5828be0b68f97'),
(252, 83, '_edit_last', '1'),
(253, 83, '_edit_lock', '1479154218:1'),
(254, 84, '_wp_attached_file', '2016/11/12195782-1204798959537190-2957068035381381874-n.jpg'),
(255, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:59:"2016/11/12195782-1204798959537190-2957068035381381874-n.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"12195782-1204798959537190-2957068035381381874-n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"12195782-1204798959537190-2957068035381381874-n-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:59:"12195782-1204798959537190-2957068035381381874-n-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:59:"12195782-1204798959537190-2957068035381381874-n-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:59:"12195782-1204798959537190-2957068035381381874-n-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(256, 83, '_thumbnail_id', '84'),
(258, 85, 'num', ''),
(259, 85, '_num', 'field_5828be0b68f97'),
(260, 83, 'num', ''),
(261, 83, '_num', 'field_5828be0b68f97'),
(262, 86, '_edit_last', '1'),
(263, 86, '_edit_lock', '1479154237:1'),
(264, 87, '_wp_attached_file', '2016/11/cruela.jpg'),
(265, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:675;s:6:"height";i:900;s:4:"file";s:18:"2016/11/cruela.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"cruela-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"cruela-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:18:"cruela-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"cruela-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:18:"cruela-675x600.jpg";s:5:"width";i:675;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 86, '_thumbnail_id', '87'),
(268, 88, 'num', ''),
(269, 88, '_num', 'field_5828be0b68f97'),
(270, 86, 'num', ''),
(271, 86, '_num', 'field_5828be0b68f97'),
(272, 89, '_edit_last', '1'),
(273, 89, '_edit_lock', '1479154249:1'),
(274, 90, '_wp_attached_file', '2016/11/frollo.jpg'),
(275, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:675;s:6:"height";i:900;s:4:"file";s:18:"2016/11/frollo.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"frollo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"frollo-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:18:"frollo-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"frollo-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:18:"frollo-675x600.jpg";s:5:"width";i:675;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(276, 89, '_thumbnail_id', '90'),
(278, 91, 'num', ''),
(279, 91, '_num', 'field_5828be0b68f97'),
(280, 89, 'num', ''),
(281, 89, '_num', 'field_5828be0b68f97'),
(282, 92, '_edit_last', '1'),
(283, 92, '_edit_lock', '1479303050:1'),
(284, 93, '_wp_attached_file', '2016/11/Gaston.jpg'),
(285, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:18:"2016/11/Gaston.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Gaston-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Gaston-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:18:"Gaston-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"Gaston-450x600.jpg";s:5:"width";i:450;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:18:"Gaston-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(286, 92, '_thumbnail_id', '93'),
(288, 94, 'num', ''),
(289, 94, '_num', 'field_5828be0b68f97'),
(290, 92, 'num', ''),
(291, 92, '_num', 'field_5828be0b68f97'),
(292, 95, '_wp_attached_file', '2016/11/Sans-titre.png'),
(293, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:497;s:6:"height";i:650;s:4:"file";s:22:"2016/11/Sans-titre.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Sans-titre-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"Sans-titre-229x300.png";s:5:"width";i:229;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:22:"Sans-titre-300x392.png";s:5:"width";i:300;s:6:"height";i:392;s:9:"mime-type";s:9:"image/png";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:22:"Sans-titre-459x600.png";s:5:"width";i:459;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:22:"Sans-titre-497x600.png";s:5:"width";i:497;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(297, 97, '_wp_attached_file', '2016/11/Sans-titre2.png'),
(298, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:503;s:6:"height";i:650;s:4:"file";s:23:"2016/11/Sans-titre2.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Sans-titre2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Sans-titre2-232x300.png";s:5:"width";i:232;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:23:"Sans-titre2-300x388.png";s:5:"width";i:300;s:6:"height";i:388;s:9:"mime-type";s:9:"image/png";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:23:"Sans-titre2-464x600.png";s:5:"width";i:464;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:23:"Sans-titre2-503x600.png";s:5:"width";i:503;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(300, 98, '_wp_attached_file', '2016/11/Sans-titre3.png'),
(301, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:506;s:6:"height";i:650;s:4:"file";s:23:"2016/11/Sans-titre3.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Sans-titre3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Sans-titre3-234x300.png";s:5:"width";i:234;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:23:"Sans-titre3-300x385.png";s:5:"width";i:300;s:6:"height";i:385;s:9:"mime-type";s:9:"image/png";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:23:"Sans-titre3-467x600.png";s:5:"width";i:467;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:23:"Sans-titre3-506x600.png";s:5:"width";i:506;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(302, 38, '_thumbnail_id', '98'),
(305, 99, 'num', ''),
(306, 99, '_num', 'field_5828be0b68f97'),
(307, 100, '_edit_last', '1'),
(308, 100, '_edit_lock', '1479310446:1'),
(309, 100, 'type', 'Article'),
(310, 100, '_type', 'field_58272560fc7c0'),
(311, 101, '_edit_last', '1'),
(312, 101, '_edit_lock', '1479308569:1'),
(313, 101, 'type', 'Actualité'),
(314, 101, '_type', 'field_58272560fc7c0'),
(315, 102, '_edit_last', '1'),
(316, 102, 'type', 'Santé'),
(317, 102, '_type', 'field_58272560fc7c0'),
(318, 102, '_edit_lock', '1479310529:1'),
(319, 103, '_edit_last', '1'),
(320, 103, 'type', 'Actualité'),
(321, 103, '_type', 'field_58272560fc7c0'),
(322, 103, '_edit_lock', '1479308696:1'),
(323, 104, '_edit_last', '1'),
(324, 104, 'type', 'Article'),
(325, 104, '_type', 'field_58272560fc7c0'),
(326, 104, '_edit_lock', '1479310566:1'),
(327, 105, '_edit_last', '1'),
(328, 105, '_edit_lock', '1479308510:1'),
(329, 105, 'type', 'Actualité'),
(330, 105, '_type', 'field_58272560fc7c0'),
(332, 106, 'num', ''),
(333, 106, '_num', 'field_5828be0b68f97'),
(335, 107, 'num', ''),
(336, 107, '_num', 'field_5828be0b68f97'),
(338, 108, 'num', ''),
(339, 108, '_num', 'field_5828be0b68f97'),
(341, 109, 'num', ''),
(342, 109, '_num', 'field_5828be0b68f97'),
(344, 110, 'num', ''),
(345, 110, '_num', 'field_5828be0b68f97'),
(347, 111, 'num', ''),
(348, 111, '_num', 'field_5828be0b68f97'),
(350, 112, 'num', ''),
(351, 112, '_num', 'field_5828be0b68f97'),
(353, 113, 'num', ''),
(354, 113, '_num', 'field_5828be0b68f97'),
(356, 114, 'num', ''),
(357, 114, '_num', 'field_5828be0b68f97'),
(359, 115, 'num', ''),
(360, 115, '_num', 'field_5828be0b68f97'),
(362, 116, 'num', ''),
(363, 116, '_num', 'field_5828be0b68f97'),
(364, 117, '_edit_last', '1'),
(365, 117, '_edit_lock', '1479304758:1'),
(367, 118, 'num', ''),
(368, 118, '_num', 'field_5828be0b68f97'),
(369, 117, 'num', ''),
(370, 117, '_num', 'field_5828be0b68f97'),
(371, 119, '_edit_last', '1'),
(372, 119, '_edit_lock', '1479304781:1'),
(374, 120, 'num', ''),
(375, 120, '_num', 'field_5828be0b68f97'),
(376, 119, 'num', ''),
(377, 119, '_num', 'field_5828be0b68f97'),
(378, 121, '_edit_last', '1'),
(379, 121, '_edit_lock', '1479304805:1'),
(381, 122, 'num', ''),
(382, 122, '_num', 'field_5828be0b68f97'),
(383, 121, 'num', ''),
(384, 121, '_num', 'field_5828be0b68f97'),
(385, 123, '_edit_last', '1'),
(387, 124, 'num', ''),
(388, 124, '_num', 'field_5828be0b68f97'),
(389, 123, 'num', ''),
(390, 123, '_num', 'field_5828be0b68f97'),
(391, 123, '_edit_lock', '1479308278:1'),
(392, 125, '_wp_attached_file', '2016/11/Drapeau-Europe-e1479308620177.jpg'),
(393, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:349;s:4:"file";s:41:"2016/11/Drapeau-Europe-e1479308620177.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:41:"Drapeau-Europe-e1479308620177-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:41:"Drapeau-Europe-e1479308620177-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"Drapeau-Europe-768x575.jpg";s:5:"width";i:768;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"Drapeau-Europe-1024x767.jpg";s:5:"width";i:1024;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:41:"Drapeau-Europe-e1479308620177-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:26:"Drapeau-Europe-802x600.jpg";s:5:"width";i:802;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:27:"Drapeau-Europe-1026x600.jpg";s:5:"width";i:1026;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(394, 125, '_wp_attachment_backup_sizes', 'a:10:{s:9:"full-orig";a:3:{s:5:"width";i:1026;s:6:"height";i:768;s:4:"file";s:18:"Drapeau-Europe.jpg";}s:18:"full-1479308485283";a:3:{s:5:"width";i:468;s:6:"height";i:350;s:4:"file";s:33:"Drapeau-Europe-e1479308467172.jpg";}s:18:"full-1479308620177";a:3:{s:5:"width";i:468;s:6:"height";i:350;s:4:"file";s:33:"Drapeau-Europe-e1479308485283.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:26:"Drapeau-Europe-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:26:"Drapeau-Europe-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:26:"Drapeau-Europe-768x575.jpg";s:5:"width";i:768;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:27:"Drapeau-Europe-1024x767.jpg";s:5:"width";i:1024;s:6:"height";i:767;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:26:"Drapeau-Europe-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:26:"Drapeau-Europe-802x600.jpg";s:5:"width";i:802;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:27:"Drapeau-Europe-1026x600.jpg";s:5:"width";i:1026;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(395, 105, '_thumbnail_id', '125'),
(396, 126, '_wp_attached_file', '2016/11/marketing-professionnel-dossier-sante-e1479308570841.jpg'),
(397, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:64:"2016/11/marketing-professionnel-dossier-sante-e1479308570841.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"marketing-professionnel-dossier-sante-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"marketing-professionnel-dossier-sante-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:49:"marketing-professionnel-dossier-sante-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:49:"marketing-professionnel-dossier-sante-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:49:"marketing-professionnel-dossier-sante-630x600.jpg";s:5:"width";i:630;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(398, 126, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:630;s:6:"height";i:630;s:4:"file";s:41:"marketing-professionnel-dossier-sante.jpg";}}'),
(399, 102, '_thumbnail_id', '126'),
(400, 127, '_wp_attached_file', '2016/11/palette-peintures-e1479308693974.jpg'),
(401, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:349;s:4:"file";s:44:"2016/11/palette-peintures-e1479308693974.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"palette-peintures-e1479308693974-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"palette-peintures-e1479308693974-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"palette-peintures-768x519.jpg";s:5:"width";i:768;s:6:"height";i:519;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"palette-peintures-1024x692.jpg";s:5:"width";i:1024;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:44:"palette-peintures-e1479308693974-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:29:"palette-peintures-888x600.jpg";s:5:"width";i:888;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:30:"palette-peintures-1500x600.jpg";s:5:"width";i:1500;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"10";s:6:"credit";s:26:"bittedankeschön - Fotolia";s:6:"camera";s:14:"Canon EOS 550D";s:7:"caption";s:40:"malerei-utensilien - palette mit pinseln";s:17:"created_timestamp";s:10:"1303316473";s:9:"copyright";s:26:"bittedankeschön - Fotolia";s:12:"focal_length";s:2:"21";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:19:"palette mit pinseln";s:11:"orientation";s:1:"1";s:8:"keywords";a:64:{i:0;s:7:"malerei";i:1;s:5:"kunst";i:2;s:11:"kunstschule";i:3;s:10:"ausbildung";i:4;s:4:"kurs";i:5;s:6:"arbeit";i:6;s:5:"hobby";i:7;s:3:"öl";i:8;s:9:"ölfarben";i:9;s:5:"acryl";i:10;s:11:"acrylfarben";i:11;s:5:"farbe";i:12;s:6:"farben";i:13;s:6:"farbig";i:14;s:6:"textur";i:15;s:11:"hintergrund";i:16;s:10:"ausschnitt";i:17;s:7:"atelier";i:18;s:4:"gelb";i:19;s:4:"pink";i:20;s:7:"magenta";i:21;s:5:"malen";i:22;s:6:"pinsel";i:23;s:3:"rot";i:24;s:7:"palette";i:25;s:6:"orange";i:26;s:3:"nah";i:27;s:7:"mischen";i:28;s:10:"ölmalerei";i:29;s:13:"borstenpinsel";i:30;s:9:"kunstkurs";i:31;s:4:"bunt";i:32;s:7:"palette";i:33;s:6:"pinsel";i:34;s:9:"ölfarben";i:35;s:6:"farben";i:36;s:7:"atelier";i:37;s:7:"malerei";i:38;s:5:"kunst";i:39;s:11:"kunstschule";i:40;s:10:"ausbildung";i:41;s:4:"kurs";i:42;s:6:"arbeit";i:43;s:5:"hobby";i:44;s:3:"öl";i:45;s:5:"acryl";i:46;s:11:"acrylfarben";i:47;s:5:"farbe";i:48;s:6:"farbig";i:49;s:6:"textur";i:50;s:11:"hintergrund";i:51;s:10:"ausschnitt";i:52;s:4:"gelb";i:53;s:4:"pink";i:54;s:7:"magenta";i:55;s:5:"malen";i:56;s:3:"rot";i:57;s:6:"orange";i:58;s:3:"nah";i:59;s:7:"mischen";i:60;s:10:"ölmalerei";i:61;s:13:"borstenpinsel";i:62;s:9:"kunstkurs";i:63;s:4:"bunt";}}}'),
(402, 127, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";i:2341;s:6:"height";i:1581;s:4:"file";s:21:"palette-peintures.jpg";}s:18:"full-1479308693974";a:3:{s:5:"width";i:518;s:6:"height";i:350;s:4:"file";s:36:"palette-peintures-e1479308675692.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:29:"palette-peintures-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:29:"palette-peintures-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:29:"palette-peintures-768x519.jpg";s:5:"width";i:768;s:6:"height";i:519;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:30:"palette-peintures-1024x692.jpg";s:5:"width";i:1024;s:6:"height";i:692;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:29:"palette-peintures-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:29:"palette-peintures-888x600.jpg";s:5:"width";i:888;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:30:"palette-peintures-1500x600.jpg";s:5:"width";i:1500;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(403, 101, '_thumbnail_id', '127'),
(404, 128, '_wp_attached_file', '2016/11/visite_tour_eiffel_2-e1479308769642.jpg'),
(405, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:47:"2016/11/visite_tour_eiffel_2-e1479308769642.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"visite_tour_eiffel_2-e1479308769642-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"visite_tour_eiffel_2-e1479308769642-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"visite_tour_eiffel_2-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:47:"visite_tour_eiffel_2-e1479308769642-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:33:"visite_tour_eiffel_2-1200x600.jpg";s:5:"width";i:1200;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(406, 128, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:24:"visite_tour_eiffel_2.jpg";}s:18:"full-1479308769642";a:3:{s:5:"width";i:467;s:6:"height";i:350;s:4:"file";s:39:"visite_tour_eiffel_2-e1479308750925.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:33:"visite_tour_eiffel_2-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:32:"visite_tour_eiffel_2-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:33:"visite_tour_eiffel_2-1200x600.jpg";s:5:"width";i:1200;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(407, 19, '_thumbnail_id', '128'),
(408, 129, '_wp_attached_file', '2016/11/argent-e1479308831594.jpg'),
(409, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:33:"2016/11/argent-e1479308831594.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"argent-e1479308831594-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"argent-e1479308831594-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"argent-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"argent-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:33:"argent-e1479308831594-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:18:"argent-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:19:"argent-1500x600.jpg";s:5:"width";i:1500;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.8";s:6:"credit";s:16:"ElenaR - Fotolia";s:6:"camera";s:5:"E4200";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1188149212";s:9:"copyright";s:16:"ElenaR - Fotolia";s:12:"focal_length";s:3:"7.8";s:3:"iso";s:2:"79";s:13:"shutter_speed";s:15:"0.0045045045045";s:5:"title";s:5:"Money";s:11:"orientation";s:1:"1";s:8:"keywords";a:17:{i:0;s:5:"money";i:1;s:7:"capital";i:2;s:4:"euro";i:3;s:10:"calculator";i:4;s:7:"finance";i:5;s:4:"note";i:6;s:4:"bond";i:7;s:4:"cash";i:8;s:7:"payment";i:9;s:4:"cost";i:10;s:4:"coin";i:11;s:6:"income";i:12;s:6:"profit";i:13;s:5:"prize";i:14;s:6:"credit";i:15;s:4:"bank";i:16;s:8:"business";}}}'),
(410, 129, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";i:2362;s:6:"height";i:1772;s:4:"file";s:10:"argent.jpg";}s:18:"full-1479308831594";a:3:{s:5:"width";i:467;s:6:"height";i:350;s:4:"file";s:25:"argent-e1479308808654.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:18:"argent-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:18:"argent-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:18:"argent-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:19:"argent-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:18:"argent-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:18:"argent-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:19:"argent-1500x600.jpg";s:5:"width";i:1500;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(411, 103, '_thumbnail_id', '129'),
(412, 130, '_wp_attached_file', '2016/11/child-labour-4-810x539-e1479308950301.jpg'),
(413, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:349;s:4:"file";s:49:"2016/11/child-labour-4-810x539-e1479308950301.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"child-labour-4-810x539-e1479308950301-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"child-labour-4-810x539-e1479308950301-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"child-labour-4-810x539-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:49:"child-labour-4-810x539-e1479308950301-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1236791658";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0005";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(414, 130, '_wp_attachment_backup_sizes', 'a:6:{s:9:"full-orig";a:3:{s:5:"width";i:810;s:6:"height";i:539;s:4:"file";s:26:"child-labour-4-810x539.jpg";}s:18:"full-1479308950301";a:3:{s:5:"width";i:526;s:6:"height";i:350;s:4:"file";s:41:"child-labour-4-810x539-e1479308934568.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:34:"child-labour-4-810x539-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:34:"child-labour-4-810x539-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:34:"child-labour-4-810x539-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:34:"child-labour-4-810x539-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}'),
(415, 104, '_thumbnail_id', '130'),
(418, 132, '_wp_attached_file', '2016/11/herpes-preservatif-e1479309161907.jpg'),
(419, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:349;s:6:"height";i:349;s:4:"file";s:45:"2016/11/herpes-preservatif-e1479309161907.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"herpes-preservatif-e1479309161907-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"herpes-preservatif-e1479309161907-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:45:"herpes-preservatif-e1479309161907-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(420, 132, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:600;s:6:"height";i:366;s:4:"file";s:22:"herpes-preservatif.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:30:"herpes-preservatif-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:30:"herpes-preservatif-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:30:"herpes-preservatif-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}}'),
(421, 20, '_thumbnail_id', '132'),
(422, 133, '_wp_attached_file', '2016/11/incendie_plisson_sdis56-e1479309236637.jpg'),
(423, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:50:"2016/11/incendie_plisson_sdis56-e1479309236637.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"incendie_plisson_sdis56-e1479309236637-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"incendie_plisson_sdis56-e1479309236637-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"incendie_plisson_sdis56-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:50:"incendie_plisson_sdis56-e1479309236637-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-900x600.jpg";s:5:"width";i:900;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:36:"incendie_plisson_sdis56-1152x600.jpg";s:5:"width";i:1152;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:11:"PENTAX K10D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1284893752";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:15:"0.0111111111111";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(424, 133, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";i:1152;s:6:"height";i:768;s:4:"file";s:27:"incendie_plisson_sdis56.jpg";}s:18:"full-1479309236637";a:3:{s:5:"width";i:525;s:6:"height";i:350;s:4:"file";s:42:"incendie_plisson_sdis56-e1479309216718.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:36:"incendie_plisson_sdis56-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:35:"incendie_plisson_sdis56-900x600.jpg";s:5:"width";i:900;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:36:"incendie_plisson_sdis56-1152x600.jpg";s:5:"width";i:1152;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}'),
(425, 18, '_thumbnail_id', '133'),
(426, 134, '_wp_attached_file', '2016/11/Sans-titre-1-e1479309309113.png');
INSERT INTO `jafar_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(427, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:39:"2016/11/Sans-titre-1-e1479309309113.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Sans-titre-1-e1479309309113-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"Sans-titre-1-e1479309309113-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"thumbnail_annonces";a:4:{s:4:"file";s:39:"Sans-titre-1-e1479309309113-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:22:"thumbnail_annonce_full";a:4:{s:4:"file";s:24:"Sans-titre-1-459x600.png";s:5:"width";i:459;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:15:"thumbnail_slide";a:4:{s:4:"file";s:24:"Sans-titre-1-497x600.png";s:5:"width";i:497;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(428, 134, '_wp_attachment_backup_sizes', 'a:7:{s:9:"full-orig";a:3:{s:5:"width";i:497;s:6:"height";i:650;s:4:"file";s:16:"Sans-titre-1.png";}s:18:"full-1479309309113";a:3:{s:5:"width";i:350;s:6:"height";i:458;s:4:"file";s:31:"Sans-titre-1-e1479309287712.png";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:24:"Sans-titre-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:11:"medium-orig";a:4:{s:4:"file";s:24:"Sans-titre-1-229x300.png";s:5:"width";i:229;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:23:"thumbnail_annonces-orig";a:4:{s:4:"file";s:24:"Sans-titre-1-300x392.png";s:5:"width";i:300;s:6:"height";i:392;s:9:"mime-type";s:9:"image/png";}s:27:"thumbnail_annonce_full-orig";a:4:{s:4:"file";s:24:"Sans-titre-1-459x600.png";s:5:"width";i:459;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:20:"thumbnail_slide-orig";a:4:{s:4:"file";s:24:"Sans-titre-1-497x600.png";s:5:"width";i:497;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}'),
(429, 100, '_thumbnail_id', '134');

-- --------------------------------------------------------

--
-- Structure de la table `jafar_posts`
--

CREATE TABLE `jafar_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_posts`
--

INSERT INTO `jafar_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-06 14:39:07', '2016-11-06 13:39:07', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2016-11-13 20:54:34', '2016-11-13 19:54:34', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-06 14:39:07', '2016-11-06 13:39:07', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme ça :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/H3/jafar-WP/wordpress/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'ACTUALITES', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2016-11-06 14:42:23', '2016-11-06 13:42:23', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-11-06 14:40:18', '2016-11-06 13:40:18', 'vgubhinjo,pkl', 'jafar predident', '', 'trash', 'open', 'closed', '', 'jafar-predident__trashed', '', '', '2016-11-06 14:41:39', '2016-11-06 13:41:39', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=4', 0, 'annonce', '', 0),
(5, 1, '2016-11-06 14:42:23', '2016-11-06 13:42:23', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme ça :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/H3/jafar-WP/wordpress/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'ACTUALITES', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-11-06 14:42:23', '2016-11-06 13:42:23', '', 2, 'http://localhost/H3/jafar-WP/wordpress/2016/11/06/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-11-06 14:42:42', '2016-11-06 13:42:42', '', 'PROGRAMME', '', 'publish', 'closed', 'closed', '', 'programme', '', '', '2016-11-13 22:09:13', '2016-11-13 21:09:13', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-11-06 14:42:42', '2016-11-06 13:42:42', '', 'PROGRAMME', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-11-06 14:42:42', '2016-11-06 13:42:42', '', 6, 'http://localhost/H3/jafar-WP/wordpress/2016/11/06/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-11-06 14:42:50', '2016-11-06 13:42:50', '', 'BOUTIQUE', '', 'trash', 'closed', 'closed', '', 'a-propos__trashed', '', '', '2016-11-12 14:12:35', '2016-11-12 13:12:35', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-06 14:42:50', '2016-11-06 13:42:50', '', 'A PROPOS', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-06 14:42:50', '2016-11-06 13:42:50', '', 8, 'http://localhost/H3/jafar-WP/wordpress/2016/11/06/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-11-06 14:43:00', '2016-11-06 13:43:00', '', 'BOUTIQUE', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-06 14:43:00', '2016-11-06 13:43:00', '', 8, 'http://localhost/H3/jafar-WP/wordpress/2016/11/06/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-11-06 14:43:26', '2016-11-06 13:43:26', '', 'A PROPOS', '', 'publish', 'closed', 'closed', '', 'a-propos-2', '', '', '2016-11-13 18:38:02', '2016-11-13 17:38:02', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-11-06 14:43:26', '2016-11-06 13:43:26', '', 'A PROPOS', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-11-06 14:43:26', '2016-11-06 13:43:26', '', 11, 'http://localhost/H3/jafar-WP/wordpress/2016/11/06/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-11-12 14:04:37', '2016-11-12 13:04:37', '', 'Jafar', '', 'publish', 'closed', 'closed', '', 'jafar', '', '', '2016-11-13 18:38:52', '2016-11-13 17:38:52', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-11-12 14:04:37', '2016-11-12 13:04:37', '', 'JAFAR', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-11-12 14:04:37', '2016-11-12 13:04:37', '', 13, 'http://localhost/H3/jafar-WP/wordpress/2016/11/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-11-12 14:16:52', '2016-11-12 13:16:52', '', 'Jafar', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-11-12 14:16:52', '2016-11-12 13:16:52', '', 13, 'http://localhost/H3/jafar-WP/wordpress/2016/11/12/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-12 15:18:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2016-11-12 15:18:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&p=16', 0, 'annonce', '', 0),
(17, 1, '2016-11-12 15:21:50', '2016-11-12 14:21:50', '', 'type annonce', '', 'publish', 'closed', 'closed', '', 'acf_type-annonce', '', '', '2016-11-12 15:21:50', '2016-11-12 14:21:50', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=acf&#038;p=17', 0, 'acf', '', 0),
(18, 1, '2016-11-12 15:23:05', '2016-11-12 14:23:05', 'lorem', 'Jafar sauve 40 000 personnes d’un incendie', '', 'publish', 'open', 'closed', '', 'jafar-sauve-40-000-personnes-dun-incendie', '', '', '2016-11-16 16:14:01', '2016-11-16 15:14:01', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=18', 0, 'annonce', '', 0),
(19, 1, '2016-11-13 17:24:46', '2016-11-13 16:24:46', 'plop plop', 'Jafar, enfin à Paris', '', 'publish', 'open', 'closed', '', 'jafar-gentleman-en-toutes-circonstances', '', '', '2016-11-16 16:06:13', '2016-11-16 15:06:13', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=19', 0, 'annonce', '', 0),
(20, 1, '2016-11-13 17:32:32', '2016-11-13 16:32:32', 'lolilol', '"Jafar contrôle votre avenir" : nouveaux préservatifs', '', 'publish', 'open', 'closed', '', 'jafar-controle-votre-avenir-nouveaux-preservatifs', '', '', '2016-11-16 16:12:47', '2016-11-16 15:12:47', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=20', 0, 'annonce', '', 0),
(21, 1, '2016-11-13 18:19:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-13 18:19:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-11-13 18:20:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-13 18:20:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2016-11-13 18:37:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-13 18:37:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-11-13 20:24:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-13 20:24:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2016-11-13 20:26:24', '2016-11-13 19:26:24', '', 'programme', '', 'publish', 'closed', 'closed', '', 'acf_programme', '', '', '2016-11-13 20:26:24', '2016-11-13 19:26:24', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=acf&#038;p=25', 0, 'acf', '', 0),
(26, 1, '2016-11-13 20:28:27', '2016-11-13 19:28:27', 'Le thème le plus important de mon programme est le sujet qui a déterminé ma candidature. L’aladdinisme est une plaie qui ronge notre pays. Pour combattre ce fléau, il est nécessaire d’intervenir. Pour cela, je propose de censurer tous les programmes qui mettent en valeur, encouragent ou évoquent de manière positive le prince Aladdin ou ses proches, leurs actes et toutes idées qu’il véhicule. Cette mesure sera accompagnée de la répression pénale des personnes qui commettent ou se rendre complices des actes énumérés ci-dessus. Ainsi, l’aladdinisme n’existera plus. Le jafarisme triomphera.', 'Réprimer l’Aladinisme', '', 'publish', 'open', 'open', '', 'reprimer-laladinisme', '', '', '2016-11-14 15:45:35', '2016-11-14 14:45:35', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=26', 0, 'post', '', 0),
(28, 1, '2016-11-13 20:28:27', '2016-11-13 19:28:27', '<span>Aladin Al-Batwar</span>, fils de personne est un dangereux criminel et doit être neutraliser, ainsi que sa prensée et tout ceux qui pensent comme lui.<br>\r\nIl a dejà essayé par le passé de renverser notre belle et armonieuse dictature par un coup d’état. Et pourquoi ? Pour imposer au peuple une « démocratie » et donc le priver de ses libertés.', 'Réprimer l’Aladinisme', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-11-13 20:28:27', '2016-11-13 19:28:27', '', 26, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-11-13 20:30:11', '2016-11-13 19:30:11', 'La France est un pays gourmand. Un pays généreux. Un pays gastronome. Pour renforcer son image de reine de la gastronomie et conforter sa place de leader mondial du culinaire, une diversification de ses spécialités est nécessaire. Le boeuf bourguignon, le ris de veau et la raclette ne doivent plus être les seules références à rayonner dans les assiettes. L’essor de la cuisine française ne pourra se faire qu’à travers l’essor du kebab. Des études démontrent que l’économie française se portera mieux dès que le taux de 32% de restaurants kebab par ville sera atteint, et que la France deviendra la première puissance mondiale dès que ce taux atteindra les 42%.', 'Kebab pour tous', '', 'publish', 'open', 'open', '', 'kebab-pour-tous', '', '', '2016-11-14 15:23:54', '2016-11-14 14:23:54', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=29', 0, 'post', '', 0),
(31, 1, '2016-11-13 20:30:11', '2016-11-13 19:30:11', '<span>Le Kebab</span>, un plat primordial pour bien grandir, que chacun devrait être en mesure de se payer. <br>\r\nC’est pourquoi je propose un <span>crédit impôt kebab</span>. Pour que chaque personne dans le besoin puisse manger un kebab par jour gratuitement.', 'Kebab pour tous', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-11-13 20:30:11', '2016-11-13 19:30:11', '', 29, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-11-13 20:31:08', '2016-11-13 19:31:08', 'Afin de garantir la sécurité aux hommes et aux femmes de France, il est indispensable de compter sur une police forte. Trop de gardiens de la paix sont de plus en plus méprisés par le citoyens qu’ils protègent. Leur image est notamment détériorée par les nombreux membres de son corps qui ne remplissent pas les critères de qualification et de compétence jadis requis. C’est pourquoi je propose de fermer l’accès de cette profession aux femmes, aux hommes de moins de 1m80 et de plus de 110kg. Nos hommes qui garantissent notre intégrité et la sûreté de notre pays doivent être braves, sportifs, et non fébriles ou chétifs. Afin de garantir l’excellence des effectifs, des tests de capacité physique et intellectuelle seront effectués tous les six mois.', 'Police d’Etat', '', 'publish', 'open', 'open', '', 'police-detat', '', '', '2016-11-14 15:46:35', '2016-11-14 14:46:35', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=32', 0, 'post', '', 0),
(34, 1, '2016-11-13 20:31:08', '2016-11-13 19:31:08', '<span>La sécurité</span>, voilà une promesse ambitieuse mais primordial dans notre monde de fous ! Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem', 'Police d’Etat', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-13 20:31:08', '2016-11-13 19:31:08', '', 32, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-11-13 20:31:57', '2016-11-13 19:31:57', 'Depuis des millénaires, le commun des mortels est sujet à une santé fragile. Contrairement à moi, qui ai la chance de disposer d’une constitution à l’épreuve de toutes les infections, et de coffres remplis d’or, les français doivent aujourd’hui consacrer une importante partie de leurs revenus à leurs soins. Une vie saine est devenue trop onéreuse. Je refuse que les français en payent le prix. Dès les premiers mois de mon mandat, sera mis en place le « Plan Pois Chiche ». Il permettra à chaque personne malade la gratuité de tous ses soins à base de pois chiches. Tous les soins à base d’autres principes actifs seront taxés 150 fois plus en raison de leur inefficacité, et le pois chiche vaincra.', 'Complémentaire pois chiche', '', 'publish', 'open', 'open', '', 'complementaire-pois-chiche', '', '', '2016-11-14 15:23:39', '2016-11-14 14:23:39', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=35', 0, 'post', '', 0),
(37, 1, '2016-11-13 20:31:57', '2016-11-13 19:31:57', 'Le Kebab, un plat primordial pour bien grandir, que chacun devrait être en mesure de se payer.\r\nC’est pourquoi je propose un crédit impôt kebab. Pour que chaque personne dans le besoin puisse manger un kebab par jour gratuitement.Le Kebab, un plat primordial pour bien grandir, que chacun devrait être en mesure de se payer.\r\nC’est pourquoi je propose un crédit impôt kebab. Pour que chaque personne dans le besoin puisse manger un kebab par jour gratuitement.', 'Complémentaire  pois chiche', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-11-13 20:31:57', '2016-11-13 19:31:57', '', 35, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-11-13 20:32:29', '2016-11-13 19:32:29', 'Un pays fort ne peut se construire que grâce à des générations futures fortes. Or, de nombreuses familles ne remplissent plus leur mission d’éducation, et les écoles sont devenues des terreaux pour la médiocrité. L’éducation de nos enfants est primordiale. Je promets de redorer l’image de la France par la réussite de ses élèves. La notation des examens sera renforcée, les écarts de conduite plus sévèrement réprimés, et les châtiments corporels seront réintroduit dans les écoles dès la maternelle. Les parents défaillants et qui ne se conforment pas aux directives des précepteurs devront suivre une formation pour leur apprendre à maîtriser leurs enfants.', 'Réforme du tapis volant', '', 'publish', 'open', 'open', '', 'reforme-du-tapis-volant', '', '', '2016-11-14 15:47:25', '2016-11-14 14:47:25', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=38', 0, 'post', '', 0),
(40, 1, '2016-11-13 20:32:29', '2016-11-13 19:32:29', 'La sécurité,  voilà une promesse ambitieuse mais primordial dans notre monde de fous ! Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ', 'Réforme du tapis volant', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-11-13 20:32:29', '2016-11-13 19:32:29', '', 38, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-11-13 20:33:01', '2016-11-13 19:33:01', 'L’internet est une avancée immense pour l’humanité. C’est pourquoi la France se doit d’être un acteur majeur, et même le leader. L’activité de fourniture d’accès à internet sera nationalisée, afin de ne plus laisser cet outils entre les mains d’une poignée de formations privées. L’internet a été ouvert au plus grand nombre, démocratisant le savoir et l’échange d’informations. Mais cela n’a permis que l’enrichissement de ces personnes. Pour mettre fin à ces déviances, l’internet sera contrôlé par mes équipes, et ne sera accessible qu’aux personnes suffisamment aptes à s’en servir. Les autres ne seront pas pour autant mis de côté. Je permettrai à chacun de vous d’avoir accès à l’internet, en favorisant l’internet des objets. Ainsi, j’équiperai l’ensemble des citoyens d’une puce électronique permettant de les aider dans leurs choix quotidiens.', 'Mobylette pakistanaise', '', 'publish', 'open', 'open', '', 'la-mobylette-pakistanaise', '', '', '2016-11-14 15:23:23', '2016-11-14 14:23:23', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=41', 0, 'post', '', 0),
(43, 1, '2016-11-13 20:33:01', '2016-11-13 19:33:01', 'La sécurité,  voilà une promesse ambitieuse mais primordial dans notre monde de fous ! Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ', 'La mobylette pakistanaise', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-11-13 20:33:01', '2016-11-13 19:33:01', '', 41, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-11-13 20:54:34', '2016-11-13 19:54:34', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-11-13 20:54:34', '2016-11-13 19:54:34', '', 1, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/1-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-11-13 21:27:39', '2016-11-13 20:27:39', 'La sécurité,  voilà une promesse ambitieuse mais primordial dans notre monde de fous ! Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ', 'Mobylette pakistanaise', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-11-13 21:27:39', '2016-11-13 20:27:39', '', 41, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/41-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-11-13 21:28:27', '2016-11-13 20:28:27', 'Le thème le plus important de mon programme est le sujet qui a déterminé ma candidature. L’aladdinisme est une plaie qui ronge notre pays. Pour combattre ce fléau, il est nécessaire d’intervenir. Pour cela, je propose de censurer tous les programmes qui mettent en valeur, encouragent ou évoquent de manière positive le prince Aladdin ou ses proches, leurs actes et toutes idées qu’il véhicule. Cette mesure sera accompagnée de la répression pénale des personnes qui commettent ou se rendre complices des actes énumérés ci-dessus. Ainsi, l’aladdinisme n’existera plus. Le jafarisme triomphera.', 'Réprimer l’Aladinisme', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2016-11-13 21:28:27', '2016-11-13 20:28:27', '', 26, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/26-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2016-11-13 21:28:28', '2016-11-13 20:28:28', 'Le thème le plus important de mon programme est le sujet qui a déterminé ma candidature. L’aladdinisme est une plaie qui ronge notre pays. Pour combattre ce fléau, il est nécessaire d’intervenir. Pour cela, je propose de censurer tous les programmes qui mettent en valeur, encouragent ou évoquent de manière positive le prince Aladdin ou ses proches, leurs actes et toutes idées qu’il véhicule. Cette mesure sera accompagnée de la répression pénale des personnes qui commettent ou se rendre complices des actes énumérés ci-dessus. Ainsi, l’aladdinisme n’existera plus. Le jafarisme triomphera.', 'Réprimer l’Aladinisme', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-11-13 21:28:28', '2016-11-13 20:28:28', '', 26, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/26-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-11-13 21:29:24', '2016-11-13 20:29:24', 'L’internet est une avancée immense pour l’humanité. C’est pourquoi la France se doit d’être un acteur majeur, et même le leader. L’activité de fourniture d’accès à internet sera nationalisée, afin de ne plus laisser cet outils entre les mains d’une poignée de formations privées. L’internet a été ouvert au plus grand nombre, démocratisant le savoir et l’échange d’informations. Mais cela n’a permis que l’enrichissement de ces personnes. Pour mettre fin à ces déviances, l’internet sera contrôlé par mes équipes, et ne sera accessible qu’aux personnes suffisamment aptes à s’en servir. Les autres ne seront pas pour autant mis de côté. Je permettrai à chacun de vous d’avoir accès à l’internet, en favorisant l’internet des objets. Ainsi, j’équiperai l’ensemble des citoyens d’une puce électronique permettant de les aider dans leurs choix quotidiens.', 'Mobylette pakistanaise', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-11-13 21:29:24', '2016-11-13 20:29:24', '', 41, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/41-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-11-13 21:29:35', '2016-11-13 20:29:35', 'Un pays fort ne peut se construire que grâce à des générations futures fortes. Or, de nombreuses familles ne remplissent plus leur mission d’éducation, et les écoles sont devenues des terreaux pour la médiocrité. L’éducation de nos enfants est primordiale. Je promets de redorer l’image de la France par la réussite de ses élèves. La notation des examens sera renforcée, les écarts de conduite plus sévèrement réprimés, et les châtiments corporels seront réintroduit dans les écoles dès la maternelle. Les parents défaillants et qui ne se conforment pas aux directives des précepteurs devront suivre une formation pour leur apprendre à maîtriser leurs enfants.', 'Réforme du tapis volant', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-11-13 21:29:35', '2016-11-13 20:29:35', '', 38, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/38-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-11-13 21:29:47', '2016-11-13 20:29:47', 'Depuis des millénaires, le commun des mortels est sujet à une santé fragile. Contrairement à moi, qui ai la chance de disposer d’une constitution à l’épreuve de toutes les infections, et de coffres remplis d’or, les français doivent aujourd’hui consacrer une importante partie de leurs revenus à leurs soins. Une vie saine est devenue trop onéreuse. Je refuse que les français en payent le prix. Dès les premiers mois de mon mandat, sera mis en place le « Plan Pois Chiche ». Il permettra à chaque personne malade la gratuité de tous ses soins à base de pois chiches. Tous les soins à base d’autres principes actifs seront taxés 150 fois plus en raison de leur inefficacité, et le pois chiche vaincra.', 'Complémentaire pois chiche', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-11-13 21:29:47', '2016-11-13 20:29:47', '', 35, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/35-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2016-11-13 21:29:57', '2016-11-13 20:29:57', 'Afin de garantir la sécurité aux hommes et aux femmes de France, il est indispensable de compter sur une police forte. Trop de gardiens de la paix sont de plus en plus méprisés par le citoyens qu’ils protègent. Leur image est notamment détériorée par les  nombreux membres de son corps qui ne remplissent pas les critères de qualification et de compétence jadis requis. C’est pourquoi je propose de fermer l’accès de cette profession aux femmes, aux hommes de moins de 1m80 et de plus de 110kg. Nos hommes qui garantissent notre intégrité et la sûreté de notre pays doivent être braves, sportifs, et non fébriles ou chétifs. Afin de garantir l’excellence des effectifs, des tests de capacité physique et intellectuelle seront effectués tous les six mois. Dans les premières années de ce programme, les effectifs devraient être divisés par quatre. De fait, les salaires des hommes ayant réussi les examens seront multipliés par quatre, le budget ne sera pas diminué.', 'Police d’Etat', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-13 21:29:57', '2016-11-13 20:29:57', '', 32, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/32-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-11-13 21:30:06', '2016-11-13 20:30:06', 'La France est un pays gourmand. Un pays généreux. Un pays gastronome. Pour renforcer son image de reine de la gastronomie et conforter sa place de leader mondial du culinaire, une diversification de ses spécialités est nécessaire. Le boeuf bourguignon, le ris de veau et la raclette ne doivent plus être les seules références à rayonner dans les assiettes. L’essor de la cuisine française ne pourra se faire qu’à travers l’essor du kebab. Des études démontrent que l’économie française se portera mieux dès que le taux de 32% de restaurants kebab par ville sera atteint, et que la France deviendra la première puissance mondiale dès que ce taux atteindra les 42%. C’est pourquoi je serai le président du kebab, et accorderai une aide financière à toute personne qui souhaite proposer une activité de restaurant, corner, comptoir, bistrot, de kebab, grec, turc, galette. Les commerçants qui proposeront une choix parmi plus de neuf sauces seront également exemptés d’impôts sur les sociétés pendant trois ans.', 'Kebab pour tous', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-11-13 21:30:06', '2016-11-13 20:30:06', '', 29, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/29-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-11-13 21:38:13', '2016-11-13 20:38:13', '', 'kebab', '', 'inherit', 'open', 'closed', '', 'kebab', '', '', '2016-11-13 21:38:13', '2016-11-13 20:38:13', '', 29, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/kebab.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2016-11-13 21:38:43', '2016-11-13 20:38:43', '', 'poi', '', 'inherit', 'open', 'closed', '', 'poi', '', '', '2016-11-13 21:38:43', '2016-11-13 20:38:43', '', 35, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/poi.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-11-13 21:39:14', '2016-11-13 20:39:14', '', 'mob', '', 'inherit', 'open', 'closed', '', 'mob', '', '', '2016-11-13 21:39:14', '2016-11-13 20:39:14', '', 41, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/mob.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-11-13 21:51:34', '2016-11-13 20:51:34', 'La France est un pays gourmand. Un pays généreux. Un pays gastronome. Pour renforcer son image de reine de la gastronomie et conforter sa place de leader mondial du culinaire, une diversification de ses spécialités est nécessaire. Le boeuf bourguignon, le ris de veau et la raclette ne doivent plus être les seules références à rayonner dans les assiettes. L’essor de la cuisine française ne pourra se faire qu’à travers l’essor du kebab. Des études démontrent que l’économie française se portera mieux dès que le taux de 32% de restaurants kebab par ville sera atteint, et que la France deviendra la première puissance mondiale dès que ce taux atteindra les 42%.', 'Kebab pour tous', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2016-11-13 21:51:34', '2016-11-13 20:51:34', '', 29, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/29-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-11-13 21:52:04', '2016-11-13 20:52:04', 'Afin de garantir la sécurité aux hommes et aux femmes de France, il est indispensable de compter sur une police forte. Trop de gardiens de la paix sont de plus en plus méprisés par le citoyens qu’ils protègent. Leur image est notamment détériorée par les nombreux membres de son corps qui ne remplissent pas les critères de qualification et de compétence jadis requis. C’est pourquoi je propose de fermer l’accès de cette profession aux femmes, aux hommes de moins de 1m80 et de plus de 110kg. Nos hommes qui garantissent notre intégrité et la sûreté de notre pays doivent être braves, sportifs, et non fébriles ou chétifs. Afin de garantir l’excellence des effectifs, des tests de capacité physique et intellectuelle seront effectués tous les six mois. Dans les premières années de ce programme, les effectifs devraient être divisés par quatre.', 'Police d’Etat', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-13 21:52:04', '2016-11-13 20:52:04', '', 32, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/32-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-11-13 21:52:19', '2016-11-13 20:52:19', 'Afin de garantir la sécurité aux hommes et aux femmes de France, il est indispensable de compter sur une police forte. Trop de gardiens de la paix sont de plus en plus méprisés par le citoyens qu’ils protègent. Leur image est notamment détériorée par les nombreux membres de son corps qui ne remplissent pas les critères de qualification et de compétence jadis requis. C’est pourquoi je propose de fermer l’accès de cette profession aux femmes, aux hommes de moins de 1m80 et de plus de 110kg. Nos hommes qui garantissent notre intégrité et la sûreté de notre pays doivent être braves, sportifs, et non fébriles ou chétifs. Afin de garantir l’excellence des effectifs, des tests de capacité physique et intellectuelle seront effectués tous les six mois.', 'Police d’Etat', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-13 21:52:19', '2016-11-13 20:52:19', '', 32, 'http://localhost/H3/jafar-WP/wordpress/2016/11/13/32-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-11-14 15:29:24', '2016-11-14 14:29:24', '<span style="font-weight: 400;">Une France forte avec Jafar</span>', 'La Reine', '', 'publish', 'open', 'open', '', 'la-reine-sorciere', '', '', '2016-11-14 21:11:13', '2016-11-14 20:11:13', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2016-11-14 15:28:35', '2016-11-14 14:28:35', '', 'reine', '', 'inherit', 'open', 'closed', '', 'reine', '', '', '2016-11-14 15:28:35', '2016-11-14 14:28:35', '', 68, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/reine.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2016-11-14 15:29:24', '2016-11-14 14:29:24', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'La Reine Sorcière', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-11-14 15:29:24', '2016-11-14 14:29:24', '', 68, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-11-14 15:30:18', '2016-11-14 14:30:18', '<span style="font-weight: 400;">Grâce à Jafar, finis ceux qui vivent aux crochets des autres</span>', 'Capitaine Crochet', '', 'publish', 'open', 'open', '', 'capitaine-crochet', '', '', '2016-11-14 21:13:42', '2016-11-14 20:13:42', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2016-11-14 15:29:51', '2016-11-14 14:29:51', '', 'crochet', '', 'inherit', 'open', 'closed', '', 'crochet', '', '', '2016-11-14 15:29:51', '2016-11-14 14:29:51', '', 71, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/crochet.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2016-11-14 15:30:18', '2016-11-14 14:30:18', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Capitaine Crochet', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-11-14 15:30:18', '2016-11-14 14:30:18', '', 71, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2016-11-14 15:30:31', '2016-11-14 14:30:31', '<span style="font-weight: 400;">Jafar sera au coeur de l’action, ce n’est pas un endormi</span>', 'Maléfique', '', 'publish', 'open', 'open', '', 'malefique', '', '', '2016-11-14 21:11:59', '2016-11-14 20:11:59', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2016-11-14 15:30:27', '2016-11-14 14:30:27', '', 'malefique', '', 'inherit', 'open', 'closed', '', 'malefique', '', '', '2016-11-14 15:30:27', '2016-11-14 14:30:27', '', 74, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/malefique.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2016-11-14 15:30:31', '2016-11-14 14:30:31', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Maléfique', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2016-11-14 15:30:31', '2016-11-14 14:30:31', '', 74, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-11-14 15:31:03', '2016-11-14 14:31:03', 'J<span style="font-weight: 400;">afar est l’homme et le physique de la situation</span>', 'Ursula', '', 'publish', 'open', 'open', '', 'ursula', '', '', '2016-11-14 21:12:18', '2016-11-14 20:12:18', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2016-11-14 15:30:58', '2016-11-14 14:30:58', '', 'ursula', '', 'inherit', 'open', 'closed', '', 'ursula', '', '', '2016-11-14 15:30:58', '2016-11-14 14:30:58', '', 77, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/ursula.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2016-11-14 15:31:03', '2016-11-14 14:31:03', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Ursula', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-11-14 15:31:03', '2016-11-14 14:31:03', '', 77, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/77-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-11-14 15:33:01', '2016-11-14 14:33:01', '<span style="font-weight: 400;">Jafar mettra la jeunesse au coeur de ses actions</span>', 'Mère Gothel', '', 'publish', 'open', 'open', '', 'mere-gothel', '', '', '2016-11-14 21:12:30', '2016-11-14 20:12:30', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2016-11-14 15:32:52', '2016-11-14 14:32:52', '', 'gothel', '', 'inherit', 'open', 'closed', '', 'gothel', '', '', '2016-11-14 15:32:52', '2016-11-14 14:32:52', '', 80, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/gothel.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2016-11-14 15:33:01', '2016-11-14 14:33:01', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Mère Gothel', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2016-11-14 15:33:01', '2016-11-14 14:33:01', '', 80, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-11-14 15:33:29', '2016-11-14 14:33:29', '<span style="font-weight: 400;">Jafar une force de la nature</span>', 'Hadès', '', 'publish', 'open', 'open', '', 'hades', '', '', '2016-11-14 21:12:40', '2016-11-14 20:12:40', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=83', 0, 'post', '', 0),
(84, 1, '2016-11-14 15:33:24', '2016-11-14 14:33:24', '', '12195782-1204798959537190-2957068035381381874-n', '', 'inherit', 'open', 'closed', '', '12195782-1204798959537190-2957068035381381874-n', '', '', '2016-11-14 15:33:24', '2016-11-14 14:33:24', '', 83, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/12195782-1204798959537190-2957068035381381874-n.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2016-11-14 15:33:29', '2016-11-14 14:33:29', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Hadès', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-11-14 15:33:29', '2016-11-14 14:33:29', '', 83, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-11-14 15:34:13', '2016-11-14 14:34:13', '<span style="font-weight: 400;">Jafar : le bien par le mal</span>', 'Cruella', '', 'publish', 'open', 'open', '', 'cruella', '', '', '2016-11-14 21:12:56', '2016-11-14 20:12:56', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=86', 0, 'post', '', 0),
(87, 1, '2016-11-14 15:33:55', '2016-11-14 14:33:55', '', 'cruela', '', 'inherit', 'open', 'closed', '', 'cruela', '', '', '2016-11-14 15:33:55', '2016-11-14 14:33:55', '', 86, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/cruela.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2016-11-14 15:34:13', '2016-11-14 14:34:13', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Cruella', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-11-14 15:34:13', '2016-11-14 14:34:13', '', 86, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-11-14 15:34:38', '2016-11-14 14:34:38', '<span style="font-weight: 400;">Jafar sera un chef omnipotent !</span>', 'Frollo', '', 'publish', 'open', 'open', '', 'frollo', '', '', '2016-11-14 21:13:12', '2016-11-14 20:13:12', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=89', 0, 'post', '', 0),
(90, 1, '2016-11-14 15:34:22', '2016-11-14 14:34:22', '', 'frollo', '', 'inherit', 'open', 'closed', '', 'frollo', '', '', '2016-11-14 15:34:22', '2016-11-14 14:34:22', '', 89, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/frollo.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2016-11-14 15:34:38', '2016-11-14 14:34:38', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Frollo', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-11-14 15:34:38', '2016-11-14 14:34:38', '', 89, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-11-14 15:34:53', '2016-11-14 14:34:53', 'Jafar est un fin diplomate, même s''il reste moins beau que moi', 'Gaston', '', 'publish', 'open', 'open', '', 'gaston', '', '', '2016-11-14 21:13:47', '2016-11-14 20:13:47', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=92', 0, 'post', '', 0),
(93, 1, '2016-11-14 15:34:50', '2016-11-14 14:34:50', '', 'gaston', '', 'inherit', 'open', 'closed', '', 'gaston', '', '', '2016-11-14 15:34:50', '2016-11-14 14:34:50', '', 92, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Gaston.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2016-11-14 15:34:53', '2016-11-14 14:34:53', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'Gaston', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-11-14 15:34:53', '2016-11-14 14:34:53', '', 92, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-11-14 15:45:19', '2016-11-14 14:45:19', '', 'sans-titre', '', 'inherit', 'open', 'closed', '', 'sans-titre', '', '', '2016-11-14 15:45:19', '2016-11-14 14:45:19', '', 26, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Sans-titre.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2016-11-14 15:46:32', '2016-11-14 14:46:32', '', 'sans-titre2', '', 'inherit', 'open', 'closed', '', 'sans-titre2', '', '', '2016-11-14 15:46:32', '2016-11-14 14:46:32', '', 32, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Sans-titre2.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2016-11-14 15:47:21', '2016-11-14 14:47:21', '', 'sans-titre3', '', 'inherit', 'open', 'closed', '', 'sans-titre3', '', '', '2016-11-14 15:47:21', '2016-11-14 14:47:21', '', 38, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Sans-titre3.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2016-11-14 16:27:50', '2016-11-14 15:27:50', 'blablablabla blabla llabla blabl ablabla blabla lla lablablabla bla blabla llabl ablablab labla blabla llabla', 'La Reine', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-11-14 16:27:50', '2016-11-14 15:27:50', '', 68, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/68-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2016-11-14 21:05:25', '2016-11-14 20:05:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit perferendis doloremque nobis repellat porro corrupti esse omnis voluptatibus qui ab, facere dicta temporibus dolorem at tempore necessitatibus amet vitae corporis.', 'La lutte anti-Aladdin expliquée aux enfants', '', 'publish', 'open', 'closed', '', 'la-lutte-anti-aladdin-expliquee-aux-enfants', '', '', '2016-11-16 16:15:14', '2016-11-16 15:15:14', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=100', 0, 'annonce', '', 0),
(101, 1, '2016-11-14 21:05:48', '2016-11-14 20:05:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit perferendis doloremque nobis repellat porro corrupti esse omnis voluptatibus qui ab, facere dicta temporibus dolorem at tempore necessitatibus amet vitae corporis.', 'Jafar intime : sa passion pour la peinture', '', 'publish', 'open', 'closed', '', 'jafar-intime-sa-passion-pour-la-peinture', '', '', '2016-11-16 16:04:59', '2016-11-16 15:04:59', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=101', 0, 'annonce', '', 0),
(102, 1, '2016-11-14 21:06:11', '2016-11-14 20:06:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit perferendis doloremque nobis repellat porro corrupti esse omnis voluptatibus qui ab, facere dicta temporibus dolorem at tempore necessitatibus amet vitae corporis.', 'La recette santé de Jafar pour un hiver tonique !', '', 'publish', 'open', 'closed', '', 'la-recette-sante-de-jafar-pour-un-hiver-tonique', '', '', '2016-11-16 16:36:43', '2016-11-16 15:36:43', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=102', 0, 'annonce', '', 0),
(103, 1, '2016-11-14 21:06:25', '2016-11-14 20:06:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit perferendis doloremque nobis repellat porro corrupti esse omnis voluptatibus qui ab, facere dicta temporibus dolorem at tempore necessitatibus amet vitae corporis.', 'Comment Jafar a réussi à gagner 8000 euros par mois sans sortir de chez lui', '', 'publish', 'open', 'closed', '', 'comment-jafar-a-reussi-a-gagner-8000-euros-par-mois-sans-sortir-de-chez-lui', '', '', '2016-11-16 16:07:16', '2016-11-16 15:07:16', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=103', 0, 'annonce', '', 0),
(104, 1, '2016-11-15 21:06:45', '2016-11-15 20:06:45', '<span style="font-weight: 400;">Jafar dénonce depuis les débuts de son engagement pour la France le fléau qui touche le pays depuis des générations : le chômage des mineurs. Ce phénomène touche particulièrement les mineurs de 10 ans, qui peinent à trouver un emploi. Trop nombreux sur le marché du travail, trop faibles pour soulever des poids 14 heures par jour, pas assez productifs à l’heure du goûter, les petits français ne sont décidément pas les candidats idéaux pour les employeurs. Afin de leur offrir l’opportunité et de multiplier leurs chances d’embauche, Jafar propose des solutions. Il est même le seul candidat à se prononcer sur le sujet, qui ne passionne pas ses concurrents. Le remède proposé par Jafar repose sur une idée simple : la mise en place de quotas obligatoires dans les entreprises. Les sociétés françaises devront compter dans leurs effectifs un taux de 40% de salariés âgés de 3 à 17 ans. Les employeurs récalcitrants seraient alors passibles d’une peine de 6 mois de bagne. La proposition a été saluée par l’ensemble de la classe politique, qui en a profité pour féliciter la finesse et la justesse des idées de Jafar.</span>', 'Le plan de Jafar contre le chômage des mineurs', '', 'publish', 'open', 'closed', '', 'le-plan-de-jafar-contre-le-chomage-des-mineurs', '', '', '2016-11-16 16:38:29', '2016-11-16 15:38:29', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=104', 0, 'annonce', '', 0),
(105, 1, '2016-11-14 21:07:27', '2016-11-14 20:07:27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit perferendis doloremque nobis repellat porro corrupti esse omnis voluptatibus qui ab, facere dicta temporibus dolorem at tempore necessitatibus amet vitae corporis.', 'Comment Jafar compte révolutionner les Wordpress', '', 'publish', 'open', 'closed', '', 'comment-jafar-compte-revolutionner-les-wordpress', '', '', '2016-11-16 16:03:51', '2016-11-16 15:03:51', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?post_type=annonce&#038;p=105', 0, 'annonce', '', 0),
(106, 1, '2016-11-14 21:10:42', '2016-11-14 20:10:42', '<span style="font-weight: 400;">” Une France forte avec Jafar ”</span>', 'La Reine', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-11-14 21:10:42', '2016-11-14 20:10:42', '', 68, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/68-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2016-11-14 21:11:13', '2016-11-14 20:11:13', '<span style="font-weight: 400;">Une France forte avec Jafar</span>', 'La Reine', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2016-11-14 21:11:13', '2016-11-14 20:11:13', '', 68, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/68-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2016-11-14 21:11:42', '2016-11-14 20:11:42', '<span style="font-weight: 400;">Jafar est un fin diplomate, même s''il reste moins beau que moi</span>', 'Capitaine Crochet', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-11-14 21:11:42', '2016-11-14 20:11:42', '', 71, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/71-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-11-14 21:11:59', '2016-11-14 20:11:59', '<span style="font-weight: 400;">Jafar sera au coeur de l’action, ce n’est pas un endormi</span>', 'Maléfique', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2016-11-14 21:11:59', '2016-11-14 20:11:59', '', 74, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/74-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-11-14 21:12:18', '2016-11-14 20:12:18', 'J<span style="font-weight: 400;">afar est l’homme et le physique de la situation</span>', 'Ursula', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-11-14 21:12:18', '2016-11-14 20:12:18', '', 77, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/77-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-11-14 21:12:30', '2016-11-14 20:12:30', '<span style="font-weight: 400;">Jafar mettra la jeunesse au coeur de ses actions</span>', 'Mère Gothel', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2016-11-14 21:12:30', '2016-11-14 20:12:30', '', 80, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/80-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2016-11-14 21:12:40', '2016-11-14 20:12:40', '<span style="font-weight: 400;">Jafar une force de la nature</span>', 'Hadès', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-11-14 21:12:40', '2016-11-14 20:12:40', '', 83, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/83-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-11-14 21:12:56', '2016-11-14 20:12:56', '<span style="font-weight: 400;">Jafar : le bien par le mal</span>', 'Cruella', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-11-14 21:12:56', '2016-11-14 20:12:56', '', 86, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/86-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `jafar_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(114, 1, '2016-11-14 21:13:12', '2016-11-14 20:13:12', '<span style="font-weight: 400;">Jafar sera un chef omnipotent !</span>', 'Frollo', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2016-11-14 21:13:12', '2016-11-14 20:13:12', '', 89, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/89-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2016-11-14 21:13:42', '2016-11-14 20:13:42', '<span style="font-weight: 400;">Grâce à Jafar, finis ceux qui vivent aux crochets des autres</span>', 'Capitaine Crochet', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-11-14 21:13:42', '2016-11-14 20:13:42', '', 71, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/71-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2016-11-14 21:13:47', '2016-11-14 20:13:47', 'Jafar est un fin diplomate, même s''il reste moins beau que moi', 'Gaston', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-11-14 21:13:47', '2016-11-14 20:13:47', '', 92, 'http://localhost/H3/jafar-WP/wordpress/2016/11/14/92-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2016-11-16 15:01:36', '2016-11-16 14:01:36', '<span style="font-weight: 400;">Jafar a toujours eu une aura particulière. Lorsqu’il entre quelque part, il capte malgré lui tous les regards de la pièce, et même de ceux qui n’y sont pas. Son pouvoir sans fin et sa beauté sans égale ne semblent être issus que d’une grâce divine.</span>', 'Pourquoi Jafar est-il puissant et beau ?', '', 'publish', 'open', 'open', '', 'pourquoi-jafar-est-il-puissant-et-beau', '', '', '2016-11-16 15:01:36', '2016-11-16 14:01:36', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=117', 0, 'post', '', 0),
(118, 1, '2016-11-16 15:01:36', '2016-11-16 14:01:36', '<span style="font-weight: 400;">Jafar a toujours eu une aura particulière. Lorsqu’il entre quelque part, il capte malgré lui tous les regards de la pièce, et même de ceux qui n’y sont pas. Son pouvoir sans fin et sa beauté sans égale ne semblent être issus que d’une grâce divine.</span>', 'Pourquoi Jafar est-il puissant et beau ?', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2016-11-16 15:01:36', '2016-11-16 14:01:36', '', 117, 'http://localhost/H3/jafar-WP/wordpress/2016/11/16/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-11-16 15:01:56', '2016-11-16 14:01:56', '<span style="font-weight: 400;">Vous ne voterez pas pour Jafar si vous n’avez pas le droit de vote, si vous avez perdu l’usage des membres supérieurs rendant impossible le geste de mettre une enveloppe dans une urne, ou parce que ce sera votre ami qui votera Jafar pour vous par procuration.</span>', 'Pourquoi ne voterais-je pas pour Jafar ?', '', 'publish', 'open', 'open', '', 'pourquoi-ne-voterais-je-pas-pour-jafar', '', '', '2016-11-16 15:01:56', '2016-11-16 14:01:56', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2016-11-16 15:01:56', '2016-11-16 14:01:56', '<span style="font-weight: 400;">Vous ne voterez pas pour Jafar si vous n’avez pas le droit de vote, si vous avez perdu l’usage des membres supérieurs rendant impossible le geste de mettre une enveloppe dans une urne, ou parce que ce sera votre ami qui votera Jafar pour vous par procuration.</span>', 'Pourquoi ne voterais-je pas pour Jafar ?', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2016-11-16 15:01:56', '2016-11-16 14:01:56', '', 119, 'http://localhost/H3/jafar-WP/wordpress/2016/11/16/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2016-11-16 15:02:22', '2016-11-16 14:02:22', '<span style="font-weight: 400;">Ce n’est pas un hasard si les guerres les plus terrifiantes, les catastrophes les plus meurtrières, les grèves les plus longues ont eu lieu lorsque Jafar n’était pas au pouvoir. Sans Jafar, le monde n’est que le triste monde d’aujourd’hui, sans Jafar.</span>', 'Quel monde sans Jafar ?', '', 'publish', 'open', 'open', '', 'quel-monde-sans-jafar', '', '', '2016-11-16 15:02:22', '2016-11-16 14:02:22', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=121', 0, 'post', '', 0),
(122, 1, '2016-11-16 15:02:22', '2016-11-16 14:02:22', '<span style="font-weight: 400;">Ce n’est pas un hasard si les guerres les plus terrifiantes, les catastrophes les plus meurtrières, les grèves les plus longues ont eu lieu lorsque Jafar n’était pas au pouvoir. Sans Jafar, le monde n’est que le triste monde d’aujourd’hui, sans Jafar.</span>', 'Quel monde sans Jafar ?', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2016-11-16 15:02:22', '2016-11-16 14:02:22', '', 121, 'http://localhost/H3/jafar-WP/wordpress/2016/11/16/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2016-11-16 15:02:42', '2016-11-16 14:02:42', '<span style="font-weight: 400;">Jafar apprécie les plats épicés et aux saveurs complexes. En effet, Jafar est la seule personne au monde identifiée comme pouvant sentir la 7e saveur, appelée en son honneur la “Jafarine”, c’est pourquoi il ne peut se satisfaire des mets destinés aux autres humains.</span>', 'Quel est le plat préféré de Jafar ?', '', 'publish', 'open', 'open', '', 'quel-est-le-plat-prefere-de-jafar', '', '', '2016-11-16 15:02:42', '2016-11-16 14:02:42', '', 0, 'http://localhost/H3/jafar-WP/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2016-11-16 15:02:42', '2016-11-16 14:02:42', '<span style="font-weight: 400;">Jafar apprécie les plats épicés et aux saveurs complexes. En effet, Jafar est la seule personne au monde identifiée comme pouvant sentir la 7e saveur, appelée en son honneur la “Jafarine”, c’est pourquoi il ne peut se satisfaire des mets destinés aux autres humains.</span>', 'Quel est le plat préféré de Jafar ?', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2016-11-16 15:02:42', '2016-11-16 14:02:42', '', 123, 'http://localhost/H3/jafar-WP/wordpress/2016/11/16/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2016-11-16 16:00:42', '2016-11-16 15:00:42', '', 'drapeau-europe', '', 'inherit', 'open', 'closed', '', 'drapeau-europe', '', '', '2016-11-16 16:00:42', '2016-11-16 15:00:42', '', 105, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Drapeau-Europe.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2016-11-16 16:02:42', '2016-11-16 15:02:42', '', 'marketing-professionnel-dossier-sante', '', 'inherit', 'open', 'closed', '', 'marketing-professionnel-dossier-sante', '', '', '2016-11-16 16:02:42', '2016-11-16 15:02:42', '', 102, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/marketing-professionnel-dossier-sante.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2016-11-16 16:04:25', '2016-11-16 15:04:25', '', 'palette mit pinseln', 'malerei-utensilien - palette mit pinseln', 'inherit', 'open', 'closed', '', 'palette-mit-pinseln', '', '', '2016-11-16 16:04:25', '2016-11-16 15:04:25', '', 101, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/palette-peintures.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2016-11-16 16:05:44', '2016-11-16 15:05:44', '', 'visite_tour_eiffel_2', '', 'inherit', 'open', 'closed', '', 'visite_tour_eiffel_2', '', '', '2016-11-16 16:05:44', '2016-11-16 15:05:44', '', 19, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/visite_tour_eiffel_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2016-11-16 16:06:38', '2016-11-16 15:06:38', '', 'Money', '', 'inherit', 'open', 'closed', '', 'money', '', '', '2016-11-16 16:06:38', '2016-11-16 15:06:38', '', 103, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/argent.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2016-11-16 16:08:48', '2016-11-16 15:08:48', '', 'child-labour-4-810x539', '', 'inherit', 'open', 'closed', '', 'child-labour-4-810x539', '', '', '2016-11-16 16:08:48', '2016-11-16 15:08:48', '', 104, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/child-labour-4-810x539.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2016-11-16 16:12:19', '2016-11-16 15:12:19', '', 'herpes-preservatif', '', 'inherit', 'open', 'closed', '', 'herpes-preservatif', '', '', '2016-11-16 16:12:19', '2016-11-16 15:12:19', '', 20, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/herpes-preservatif.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2016-11-16 16:13:28', '2016-11-16 15:13:28', '', 'incendie_plisson_sdis56', '', 'inherit', 'open', 'closed', '', 'incendie_plisson_sdis56', '', '', '2016-11-16 16:13:28', '2016-11-16 15:13:28', '', 18, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/incendie_plisson_sdis56.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2016-11-16 16:14:39', '2016-11-16 15:14:39', '', 'sans-titre', '', 'inherit', 'open', 'closed', '', 'sans-titre-2', '', '', '2016-11-16 16:14:39', '2016-11-16 15:14:39', '', 100, 'http://localhost/H3/jafar-WP/wordpress/wp-content/uploads/2016/11/Sans-titre-1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jafar_termmeta`
--

CREATE TABLE `jafar_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jafar_terms`
--

CREATE TABLE `jafar_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_terms`
--

INSERT INTO `jafar_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Programme', 'programme', 0),
(3, 'soutien', 'soutien', 0),
(4, 'faq', 'faq', 0);

-- --------------------------------------------------------

--
-- Structure de la table `jafar_term_relationships`
--

CREATE TABLE `jafar_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_term_relationships`
--

INSERT INTO `jafar_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(29, 2, 0),
(32, 2, 0),
(35, 2, 0),
(38, 2, 0),
(41, 2, 0),
(68, 3, 0),
(71, 3, 0),
(74, 3, 0),
(77, 3, 0),
(80, 3, 0),
(83, 3, 0),
(86, 3, 0),
(89, 3, 0),
(92, 3, 0),
(117, 4, 0),
(119, 4, 0),
(121, 4, 0),
(123, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jafar_term_taxonomy`
--

CREATE TABLE `jafar_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_term_taxonomy`
--

INSERT INTO `jafar_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 6),
(3, 3, 'category', '', 0, 9),
(4, 4, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `jafar_usermeta`
--

CREATE TABLE `jafar_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_usermeta`
--

INSERT INTO `jafar_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jafar'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'jafar_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'jafar_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"6d7e90b5f91490da292b99d5f84f594bdbb0751f3feb883f129ea3fe1d455d71";a:4:{s:10:"expiration";i:1478612359;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478439559;}s:64:"da7eda35c7405a5d2349eee83be21f808c6b6a5dd2015f9a99f0395cb844f88e";a:4:{s:10:"expiration";i:1479649161;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478439561;}}'),
(15, 1, 'jafar_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'closedpostboxes_page', 'a:0:{}'),
(17, 1, 'metaboxhidden_page', 'a:5:{i:0;s:6:"acf_17";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(18, 1, 'jafar_user-settings', 'editor=tinymce&libraryContent=browse&categorieannonce_tab=pop'),
(19, 1, 'jafar_user-settings-time', '1479310704');

-- --------------------------------------------------------

--
-- Structure de la table `jafar_users`
--

CREATE TABLE `jafar_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `jafar_users`
--

INSERT INTO `jafar_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`) VALUES
(1, 'jafar', '$P$BH9U63rLaNYUjR1gSY4B3vqTZMhVuw0', 'jafar', 'alexandra.cossid@orange.fr', '', '2016-11-06 13:39:07', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `jafar_commentmeta`
--
ALTER TABLE `jafar_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `jafar_comments`
--
ALTER TABLE `jafar_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `jafar_links`
--
ALTER TABLE `jafar_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `jafar_options`
--
ALTER TABLE `jafar_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `jafar_postmeta`
--
ALTER TABLE `jafar_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `jafar_posts`
--
ALTER TABLE `jafar_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `jafar_termmeta`
--
ALTER TABLE `jafar_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `jafar_terms`
--
ALTER TABLE `jafar_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `jafar_term_relationships`
--
ALTER TABLE `jafar_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `jafar_term_taxonomy`
--
ALTER TABLE `jafar_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `jafar_usermeta`
--
ALTER TABLE `jafar_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `jafar_users`
--
ALTER TABLE `jafar_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `jafar_commentmeta`
--
ALTER TABLE `jafar_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jafar_comments`
--
ALTER TABLE `jafar_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `jafar_links`
--
ALTER TABLE `jafar_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jafar_options`
--
ALTER TABLE `jafar_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT pour la table `jafar_postmeta`
--
ALTER TABLE `jafar_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=430;
--
-- AUTO_INCREMENT pour la table `jafar_posts`
--
ALTER TABLE `jafar_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT pour la table `jafar_termmeta`
--
ALTER TABLE `jafar_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `jafar_terms`
--
ALTER TABLE `jafar_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `jafar_term_taxonomy`
--
ALTER TABLE `jafar_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `jafar_usermeta`
--
ALTER TABLE `jafar_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `jafar_users`
--
ALTER TABLE `jafar_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
