# WordPress MySQL database migration
#
# Generated: Wednesday 19. October 2016 21:47 UTC
# Hostname: localhost
# Database: `masajesperu`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-19 19:31:34', '2016-10-19 19:31:34', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/masajesperu', 'yes'),
(2, 'home', 'http://localhost/masajesperu', 'yes'),
(3, 'blogname', 'Masajes Perú Website', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:258:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:14:"slider-home/?$";s:31:"index.php?post_type=slider-home";s:44:"slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:39:"slider-home/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=slider-home&feed=$matches[1]";s:31:"slider-home/page/([0-9]{1,})/?$";s:49:"index.php?post_type=slider-home&paged=$matches[1]";s:17:"theme-services/?$";s:34:"index.php?post_type=theme-services";s:47:"theme-services/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:42:"theme-services/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-services&feed=$matches[1]";s:34:"theme-services/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-services&paged=$matches[1]";s:17:"theme-products/?$";s:34:"index.php?post_type=theme-products";s:47:"theme-products/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:42:"theme-products/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:34:"theme-products/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-products&paged=$matches[1]";s:15:"theme-images/?$";s:32:"index.php?post_type=theme-images";s:45:"theme-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:40:"theme-images/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-images&feed=$matches[1]";s:32:"theme-images/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-images&paged=$matches[1]";s:15:"theme-videos/?$";s:32:"index.php?post_type=theme-videos";s:45:"theme-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:40:"theme-videos/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=theme-videos&feed=$matches[1]";s:32:"theme-videos/page/([0-9]{1,})/?$";s:50:"index.php?post_type=theme-videos&paged=$matches[1]";s:19:"theme-promotions/?$";s:36:"index.php?post_type=theme-promotions";s:49:"theme-promotions/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:44:"theme-promotions/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?post_type=theme-promotions&feed=$matches[1]";s:36:"theme-promotions/page/([0-9]{1,})/?$";s:54:"index.php?post_type=theme-promotions&paged=$matches[1]";s:14:"theme-staff/?$";s:31:"index.php?post_type=theme-staff";s:44:"theme-staff/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:39:"theme-staff/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=theme-staff&feed=$matches[1]";s:31:"theme-staff/page/([0-9]{1,})/?$";s:49:"index.php?post_type=theme-staff&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"images-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:51:"images-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?images_category=$matches[1]&feed=$matches[2]";s:32:"images-category/([^/]+)/embed/?$";s:48:"index.php?images_category=$matches[1]&embed=true";s:44:"images-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?images_category=$matches[1]&paged=$matches[2]";s:26:"images-category/([^/]+)/?$";s:37:"index.php?images_category=$matches[1]";s:39:"slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"slider-home/([^/]+)/embed/?$";s:44:"index.php?slider-home=$matches[1]&embed=true";s:32:"slider-home/([^/]+)/trackback/?$";s:38:"index.php?slider-home=$matches[1]&tb=1";s:52:"slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:47:"slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?slider-home=$matches[1]&feed=$matches[2]";s:40:"slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&paged=$matches[2]";s:47:"slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?slider-home=$matches[1]&cpage=$matches[2]";s:36:"slider-home/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?slider-home=$matches[1]&page=$matches[2]";s:28:"slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-services/([^/]+)/embed/?$";s:47:"index.php?theme-services=$matches[1]&embed=true";s:35:"theme-services/([^/]+)/trackback/?$";s:41:"index.php?theme-services=$matches[1]&tb=1";s:55:"theme-services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:50:"theme-services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-services=$matches[1]&feed=$matches[2]";s:43:"theme-services/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&paged=$matches[2]";s:50:"theme-services/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-services=$matches[1]&cpage=$matches[2]";s:39:"theme-services/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-services=$matches[1]&page=$matches[2]";s:31:"theme-services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-products/([^/]+)/embed/?$";s:47:"index.php?theme-products=$matches[1]&embed=true";s:35:"theme-products/([^/]+)/trackback/?$";s:41:"index.php?theme-products=$matches[1]&tb=1";s:55:"theme-products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:50:"theme-products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:43:"theme-products/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&paged=$matches[2]";s:50:"theme-products/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&cpage=$matches[2]";s:39:"theme-products/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-products=$matches[1]&page=$matches[2]";s:31:"theme-products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-images/([^/]+)/embed/?$";s:45:"index.php?theme-images=$matches[1]&embed=true";s:33:"theme-images/([^/]+)/trackback/?$";s:39:"index.php?theme-images=$matches[1]&tb=1";s:53:"theme-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:48:"theme-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-images=$matches[1]&feed=$matches[2]";s:41:"theme-images/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&paged=$matches[2]";s:48:"theme-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-images=$matches[1]&cpage=$matches[2]";s:37:"theme-images/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-images=$matches[1]&page=$matches[2]";s:29:"theme-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"theme-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"theme-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"theme-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"theme-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"theme-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"theme-videos/([^/]+)/embed/?$";s:45:"index.php?theme-videos=$matches[1]&embed=true";s:33:"theme-videos/([^/]+)/trackback/?$";s:39:"index.php?theme-videos=$matches[1]&tb=1";s:53:"theme-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:48:"theme-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?theme-videos=$matches[1]&feed=$matches[2]";s:41:"theme-videos/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&paged=$matches[2]";s:48:"theme-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?theme-videos=$matches[1]&cpage=$matches[2]";s:37:"theme-videos/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?theme-videos=$matches[1]&page=$matches[2]";s:29:"theme-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"theme-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"theme-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"theme-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"theme-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"theme-promotions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"theme-promotions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"theme-promotions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"theme-promotions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"theme-promotions/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"theme-promotions/([^/]+)/embed/?$";s:49:"index.php?theme-promotions=$matches[1]&embed=true";s:37:"theme-promotions/([^/]+)/trackback/?$";s:43:"index.php?theme-promotions=$matches[1]&tb=1";s:57:"theme-promotions/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:52:"theme-promotions/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?theme-promotions=$matches[1]&feed=$matches[2]";s:45:"theme-promotions/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&paged=$matches[2]";s:52:"theme-promotions/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?theme-promotions=$matches[1]&cpage=$matches[2]";s:41:"theme-promotions/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?theme-promotions=$matches[1]&page=$matches[2]";s:33:"theme-promotions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"theme-promotions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"theme-promotions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"theme-promotions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"theme-promotions/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"theme-staff/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"theme-staff/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"theme-staff/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"theme-staff/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"theme-staff/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"theme-staff/([^/]+)/embed/?$";s:44:"index.php?theme-staff=$matches[1]&embed=true";s:32:"theme-staff/([^/]+)/trackback/?$";s:38:"index.php?theme-staff=$matches[1]&tb=1";s:52:"theme-staff/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:47:"theme-staff/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?theme-staff=$matches[1]&feed=$matches[2]";s:40:"theme-staff/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&paged=$matches[2]";s:47:"theme-staff/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?theme-staff=$matches[1]&cpage=$matches[2]";s:36:"theme-staff/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?theme-staff=$matches[1]&page=$matches[2]";s:28:"theme-staff/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"theme-staff/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"theme-staff/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"theme-staff/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"theme-staff/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:"duplicate-post/duplicate-post.php";i:1;s:37:"error-log-viewer/error-log-viewer.php";i:2;s:35:"wp-media-folder/wp-media-folder.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'aqua_custom_theme', 'yes'),
(41, 'stylesheet', 'aqua_custom_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1476948697;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476951614;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1476992079;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1476992508;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(116, 'can_compress_scripts', '1', 'no'),
(137, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1476905947;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(138, 'current_theme', 'Masajes Perú', 'yes'),
(139, 'theme_mods_aqua_custom_theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"left-menu";i:2;s:10:"right-menu";i:3;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'wpmf_use_taxonomy', '1', 'yes'),
(145, 'rrrlgvwr_options', 'a:10:{s:21:"plugin_option_version";N;s:21:"php_error_log_visible";i:0;s:11:"lines_count";i:10;s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:0:"";s:17:"count_visible_log";i:0;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;}', 'yes'),
(149, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(150, 'duplicate_post_copyexcerpt', '1', 'yes'),
(151, 'duplicate_post_copyattachments', '0', 'yes'),
(152, 'duplicate_post_copychildren', '0', 'yes'),
(153, 'duplicate_post_copystatus', '0', 'yes'),
(154, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(155, 'duplicate_post_show_row', '1', 'yes'),
(156, 'duplicate_post_show_adminbar', '1', 'yes'),
(157, 'duplicate_post_show_submitbox', '1', 'yes'),
(158, 'duplicate_post_version', '2.6', 'yes'),
(159, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(160, 'wpmf_padding_masonry', '5', 'yes'),
(161, 'wpmf_padding_portfolio', '10', 'yes'),
(162, 'wpmf_usegellery', '1', 'yes'),
(163, 'wpmf_useorder', '1', 'yes'),
(164, 'wpmf_folder_option1', '0', 'yes'),
(165, 'wpmf_option_override', '0', 'yes'),
(166, 'wpmf_active_media', '0', 'yes'),
(167, 'wpmf_folder_option2', '1', 'yes'),
(168, 'wpmf_option_searchall', '0', 'yes'),
(169, 'wpmf_usegellery_lightbox', '1', 'yes'),
(170, 'wpmf_media_rename', '0', 'yes'),
(171, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(172, 'wpmf_rename_number', '0', 'yes'),
(173, 'wpmf_option_media_remove', '0', 'yes'),
(174, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(175, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(176, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(177, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(178, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(179, 'wpmf_option_singlefile', '0', 'yes'),
(180, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1476908417;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.3";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.3";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(183, '_wpmf_import_notice_flag', 'yes', 'yes'),
(188, 'theme_settings', 'a:14:{s:20:"theme_social_fb_text";s:44:"https://www.facebook.com/masajesperu.com.pe/";s:25:"theme_social_twitter_text";s:31:"https://twitter.com/antony_lyon";s:25:"theme_social_youtube_text";s:43:"https://www.youtube.com/watch?v=QpAf7yai0cU";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";s:18:"theme_phone_text_1";s:10:"971799148 ";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:9:"971799148";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:26:"masajesperu2011@hotmailcom";s:18:"theme_address_text";s:12:"Lima - Perú";s:19:"theme_atention_text";s:23:"8 am a 8pm | Mar. - Dom";}', 'yes'),
(196, 'wpmf-category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1476906105'),
(4, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1476905977:1'),
(7, 5, '_wp_page_template', 'default'),
(8, 5, 'mb_featured_banner', ''),
(9, 5, 'mb_image_gallery', ''),
(10, 7, '_edit_last', '1'),
(11, 7, '_wp_page_template', 'page-nosotros.php'),
(12, 7, 'mb_featured_banner', 'http://localhost/masajesperu/wp-content/uploads/2016/10/sample-banner-page.jpg'),
(13, 7, 'mb_image_gallery', ''),
(14, 7, '_edit_lock', '1476911468:1'),
(15, 9, '_edit_last', '1'),
(16, 9, '_wp_page_template', 'page-services.php'),
(17, 9, 'mb_featured_banner', ''),
(18, 9, 'mb_image_gallery', ''),
(19, 9, '_edit_lock', '1476906294:1'),
(20, 11, '_edit_last', '1'),
(21, 11, '_wp_page_template', 'page-productos.php'),
(22, 11, 'mb_featured_banner', ''),
(23, 11, 'mb_image_gallery', ''),
(24, 11, '_edit_lock', '1476906284:1'),
(25, 13, '_edit_last', '1'),
(26, 13, '_wp_page_template', 'page-promotions.php'),
(27, 13, 'mb_featured_banner', ''),
(28, 13, 'mb_image_gallery', ''),
(29, 13, '_edit_lock', '1476906289:1'),
(30, 15, '_edit_last', '1'),
(31, 15, '_wp_page_template', 'page-images.php'),
(32, 15, 'mb_featured_banner', ''),
(33, 15, 'mb_image_gallery', ''),
(34, 15, '_edit_lock', '1476912069:1'),
(35, 17, '_edit_last', '1'),
(36, 17, '_wp_page_template', 'page-videos.php'),
(37, 17, 'mb_featured_banner', ''),
(38, 17, 'mb_image_gallery', ''),
(39, 17, '_edit_lock', '1476906300:1'),
(40, 19, '_edit_last', '1'),
(41, 19, '_wp_page_template', 'page-blog.php'),
(42, 19, 'mb_featured_banner', ''),
(43, 19, 'mb_image_gallery', ''),
(44, 19, '_edit_lock', '1476906084:1'),
(45, 21, '_edit_last', '1'),
(46, 21, '_edit_lock', '1476906096:1'),
(47, 21, '_wp_page_template', 'page-contacto.php'),
(48, 21, 'mb_featured_banner', ''),
(49, 21, 'mb_image_gallery', ''),
(50, 23, '_menu_item_type', 'post_type'),
(51, 23, '_menu_item_menu_item_parent', '0'),
(52, 23, '_menu_item_object_id', '11'),
(53, 23, '_menu_item_object', 'page'),
(54, 23, '_menu_item_target', ''),
(55, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 23, '_menu_item_xfn', ''),
(57, 23, '_menu_item_url', ''),
(59, 24, '_menu_item_type', 'post_type'),
(60, 24, '_menu_item_menu_item_parent', '0'),
(61, 24, '_menu_item_object_id', '9'),
(62, 24, '_menu_item_object', 'page'),
(63, 24, '_menu_item_target', ''),
(64, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 24, '_menu_item_xfn', ''),
(66, 24, '_menu_item_url', ''),
(68, 25, '_menu_item_type', 'post_type'),
(69, 25, '_menu_item_menu_item_parent', '0'),
(70, 25, '_menu_item_object_id', '7'),
(71, 25, '_menu_item_object', 'page'),
(72, 25, '_menu_item_target', ''),
(73, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 25, '_menu_item_xfn', ''),
(75, 25, '_menu_item_url', ''),
(77, 26, '_menu_item_type', 'post_type'),
(78, 26, '_menu_item_menu_item_parent', '0'),
(79, 26, '_menu_item_object_id', '5'),
(80, 26, '_menu_item_object', 'page'),
(81, 26, '_menu_item_target', ''),
(82, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 26, '_menu_item_xfn', ''),
(84, 26, '_menu_item_url', ''),
(86, 27, '_menu_item_type', 'post_type'),
(87, 27, '_menu_item_menu_item_parent', '0'),
(88, 27, '_menu_item_object_id', '21'),
(89, 27, '_menu_item_object', 'page'),
(90, 27, '_menu_item_target', ''),
(91, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 27, '_menu_item_xfn', ''),
(93, 27, '_menu_item_url', ''),
(95, 28, '_menu_item_type', 'post_type'),
(96, 28, '_menu_item_menu_item_parent', '0'),
(97, 28, '_menu_item_object_id', '19'),
(98, 28, '_menu_item_object', 'page'),
(99, 28, '_menu_item_target', ''),
(100, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 28, '_menu_item_xfn', ''),
(102, 28, '_menu_item_url', ''),
(104, 29, '_menu_item_type', 'post_type'),
(105, 29, '_menu_item_menu_item_parent', '0'),
(106, 29, '_menu_item_object_id', '13') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(107, 29, '_menu_item_object', 'page'),
(108, 29, '_menu_item_target', ''),
(109, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 29, '_menu_item_xfn', ''),
(111, 29, '_menu_item_url', ''),
(113, 30, '_menu_item_type', 'custom'),
(114, 30, '_menu_item_menu_item_parent', '0'),
(115, 30, '_menu_item_object_id', '30'),
(116, 30, '_menu_item_object', 'custom'),
(117, 30, '_menu_item_target', ''),
(118, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 30, '_menu_item_xfn', ''),
(120, 30, '_menu_item_url', '#'),
(122, 31, '_menu_item_type', 'post_type'),
(123, 31, '_menu_item_menu_item_parent', '30'),
(124, 31, '_menu_item_object_id', '17'),
(125, 31, '_menu_item_object', 'page'),
(126, 31, '_menu_item_target', ''),
(127, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 31, '_menu_item_xfn', ''),
(129, 31, '_menu_item_url', ''),
(131, 32, '_menu_item_type', 'post_type'),
(132, 32, '_menu_item_menu_item_parent', '30'),
(133, 32, '_menu_item_object_id', '15'),
(134, 32, '_menu_item_object', 'page'),
(135, 32, '_menu_item_target', ''),
(136, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 32, '_menu_item_xfn', ''),
(138, 32, '_menu_item_url', ''),
(140, 33, '_edit_last', '1'),
(141, 33, '_edit_lock', '1476908926:1'),
(142, 33, 'mb_image_gallery', ''),
(143, 33, 'mb_rev_slider_select', 'curtain-3'),
(158, 37, '_wp_attached_file', '2016/10/sample-slider-home.jpg'),
(159, 37, 'wpmf_size', '148170'),
(160, 37, 'wpmf_filetype', 'jpg'),
(161, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:30:"2016/10/sample-slider-home.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"sample-slider-home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"sample-slider-home-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"sample-slider-home-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"sample-slider-home-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"sample-slider-home-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:30:"sample-slider-home-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(162, 38, '_wp_attached_file', '2016/10/sample-slider-home.jpg'),
(163, 38, 'wpmf_size', '148170'),
(164, 38, 'wpmf_filetype', 'jpg'),
(165, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:650;s:4:"file";s:30:"2016/10/sample-slider-home.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"sample-slider-home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"sample-slider-home-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"sample-slider-home-768x260.jpg";s:5:"width";i:768;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"sample-slider-home-1024x347.jpg";s:5:"width";i:1024;s:6:"height";i:347;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"sample-slider-home-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:30:"sample-slider-home-784x265.jpg";s:5:"width";i:784;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 33, '_thumbnail_id', '38'),
(167, 39, '_edit_last', '1'),
(168, 39, '_edit_lock', '1476908734:1'),
(169, 39, 'mb_image_gallery', ''),
(170, 39, 'mb_rev_slider_select', 'slideleft'),
(171, 39, '_thumbnail_id', '38'),
(172, 39, '_dp_original', '33'),
(173, 40, '_edit_last', '1'),
(174, 40, '_edit_lock', '1476909100:1'),
(175, 40, 'mb_image_gallery', ''),
(176, 41, '_edit_last', '1'),
(177, 41, '_edit_lock', '1476909458:1'),
(178, 41, 'mb_image_gallery', ''),
(179, 42, '_edit_last', '1'),
(180, 42, '_edit_lock', '1476909608:1'),
(181, 42, 'mb_image_gallery', ''),
(182, 43, '_edit_last', '1'),
(183, 43, '_edit_lock', '1476910015:1'),
(184, 44, '_wp_attached_file', '2016/10/sample-product.jpg'),
(185, 44, 'wpmf_size', '14304'),
(186, 44, 'wpmf_filetype', 'jpg'),
(187, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:255;s:4:"file";s:26:"2016/10/sample-product.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sample-product-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"sample-product-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(188, 43, '_thumbnail_id', '44'),
(189, 43, 'mb_image_gallery', ''),
(190, 43, 'product_price', 'a:2:{s:6:"normal";s:12:"$300.00					";s:5:"offer";s:8:"$200.00	";}'),
(191, 43, 'product_qualify', '3'),
(192, 45, '_edit_last', '1'),
(193, 45, '_edit_lock', '1476910176:1'),
(194, 45, '_thumbnail_id', '44'),
(195, 45, 'mb_image_gallery', ''),
(196, 45, 'product_price', 'a:2:{s:6:"normal";s:12:"$300.00					";s:5:"offer";s:8:"$200.00	";}'),
(197, 45, 'product_qualify', '3'),
(198, 45, '_dp_original', '43'),
(199, 46, '_edit_last', '1'),
(200, 46, '_edit_lock', '1476910180:1'),
(201, 46, '_thumbnail_id', '44'),
(202, 46, 'mb_image_gallery', ''),
(203, 46, 'product_price', 'a:2:{s:6:"normal";s:12:"$300.00					";s:5:"offer";s:8:"$200.00	";}'),
(204, 46, 'product_qualify', '3'),
(206, 46, '_dp_original', '45'),
(207, 1, '_wp_trash_meta_status', 'publish'),
(208, 1, '_wp_trash_meta_time', '1476910508'),
(209, 1, '_wp_desired_post_slug', 'hola-mundo'),
(210, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(211, 50, '_edit_last', '1'),
(212, 50, '_edit_lock', '1476910588:1'),
(213, 51, '_wp_attached_file', '2016/10/spa_blog_belleza_peru_2.jpg'),
(214, 51, 'wpmf_size', '87172'),
(215, 51, 'wpmf_filetype', 'jpg'),
(216, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:496;s:4:"file";s:35:"2016/10/spa_blog_belleza_peru_2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"spa_blog_belleza_peru_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"spa_blog_belleza_peru_2-300x233.jpg";s:5:"width";i:300;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"spa_blog_belleza_peru_2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:35:"spa_blog_belleza_peru_2-452x350.jpg";s:5:"width";i:452;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 50, '_thumbnail_id', '51'),
(220, 50, 'mb_image_gallery', ''),
(221, 53, '_edit_last', '1'),
(222, 53, '_edit_lock', '1476910659:1'),
(223, 53, '_thumbnail_id', '51'),
(224, 53, 'mb_image_gallery', ''),
(225, 53, '_dp_original', '50'),
(228, 55, '_wp_attached_file', '2016/10/sample-banner-page.jpg'),
(229, 55, 'wpmf_size', '46087') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(230, 55, 'wpmf_filetype', 'jpg'),
(231, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:314;s:4:"file";s:30:"2016/10/sample-banner-page.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"sample-banner-page-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"sample-banner-page-300x49.jpg";s:5:"width";i:300;s:6:"height";i:49;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"sample-banner-page-768x126.jpg";s:5:"width";i:768;s:6:"height";i:126;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"sample-banner-page-1024x167.jpg";s:5:"width";i:1024;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"sample-banner-page-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:30:"sample-banner-page-784x128.jpg";s:5:"width";i:784;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 56, '_edit_last', '1'),
(233, 56, '_edit_lock', '1476911562:1'),
(234, 57, '_wp_attached_file', '2016/10/staff.jpg'),
(235, 57, 'wpmf_size', '15061'),
(236, 57, 'wpmf_filetype', 'jpg'),
(237, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:230;s:4:"file";s:17:"2016/10/staff.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"staff-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"staff-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(238, 56, '_thumbnail_id', '57'),
(239, 56, 'mb_image_gallery', ''),
(240, 58, '_edit_last', '1'),
(241, 58, '_edit_lock', '1476911729:1'),
(242, 58, '_thumbnail_id', '57'),
(243, 58, 'mb_image_gallery', ''),
(244, 58, '_dp_original', '56'),
(245, 59, '_edit_last', '1'),
(246, 59, '_edit_lock', '1476911738:1'),
(247, 59, '_thumbnail_id', '57'),
(248, 59, 'mb_image_gallery', ''),
(250, 59, '_dp_original', '58'),
(251, 60, '_edit_last', '1'),
(252, 60, '_edit_lock', '1476911738:1'),
(253, 60, '_thumbnail_id', '57'),
(254, 60, 'mb_image_gallery', ''),
(256, 60, '_dp_original', '59'),
(257, 60, '_wp_trash_meta_status', 'draft'),
(258, 60, '_wp_trash_meta_time', '1476911755'),
(259, 60, '_wp_desired_post_slug', '') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-19 19:31:34', '2016-10-19 19:31:34', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2016-10-19 20:55:08', '2016-10-19 20:55:08', '', 0, 'http://localhost/masajesperu/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-19 19:31:34', '2016-10-19 19:31:34', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/masajesperu/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-10-19 19:41:45', '2016-10-19 19:41:45', '', 0, 'http://localhost/masajesperu/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-19 19:31:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-19 19:31:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/masajesperu/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-19 19:41:45', '2016-10-19 19:41:45', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/masajesperu/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-10-19 19:41:45', '2016-10-19 19:41:45', '', 2, 'http://localhost/masajesperu/2016/10/19/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-10-19 19:41:58', '2016-10-19 19:41:58', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-10-19 19:41:58', '2016-10-19 19:41:58', '', 0, 'http://localhost/masajesperu/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-10-19 19:41:58', '2016-10-19 19:41:58', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-10-19 19:41:58', '2016-10-19 19:41:58', '', 5, 'http://localhost/masajesperu/2016/10/19/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-10-19 19:42:10', '2016-10-19 19:42:10', 'Si se siente cansado o estresado  después de un día de trabajo , estaremos encantados de darle una solución agradable y saludable para encontrar su equilibrio otra vez.\r\n<ul>\r\n 	<li>De lunes a viernes 9am – 6pm</li>\r\n 	<li>Sábados 9am – 4pm</li>\r\n 	<li>Domingo : Cerrado</li>\r\n</ul>', 'Nosotros', 'MASAJES A LA TERAPIA PARA EL DESCANSO Y LA RELAJACIÓN', 'publish', 'closed', 'closed', '', 'nosotros', '', '', '2016-10-19 21:02:42', '2016-10-19 21:02:42', '', 0, 'http://localhost/masajesperu/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-10-19 19:42:10', '2016-10-19 19:42:10', '', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-19 19:42:10', '2016-10-19 19:42:10', '', 7, 'http://localhost/masajesperu/2016/10/19/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-10-19 19:42:25', '2016-10-19 19:42:25', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-10-19 19:44:54', '2016-10-19 19:44:54', '', 0, 'http://localhost/masajesperu/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-10-19 19:42:25', '2016-10-19 19:42:25', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-10-19 19:42:25', '2016-10-19 19:42:25', '', 9, 'http://localhost/masajesperu/2016/10/19/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-10-19 19:42:39', '2016-10-19 19:42:39', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2016-10-19 19:44:44', '2016-10-19 19:44:44', '', 0, 'http://localhost/masajesperu/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-10-19 19:42:39', '2016-10-19 19:42:39', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-10-19 19:42:39', '2016-10-19 19:42:39', '', 11, 'http://localhost/masajesperu/2016/10/19/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-10-19 19:42:51', '2016-10-19 19:42:51', '', 'Promociones', '', 'publish', 'closed', 'closed', '', 'promociones', '', '', '2016-10-19 19:44:49', '2016-10-19 19:44:49', '', 0, 'http://localhost/masajesperu/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-10-19 19:42:51', '2016-10-19 19:42:51', '', 'Promociones', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-10-19 19:42:51', '2016-10-19 19:42:51', '', 13, 'http://localhost/masajesperu/2016/10/19/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-10-19 19:43:11', '2016-10-19 19:43:11', '', 'Imágenes', '', 'publish', 'closed', 'closed', '', 'imagenes', '', '', '2016-10-19 21:21:08', '2016-10-19 21:21:08', '', 0, 'http://localhost/masajesperu/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-10-19 19:43:11', '2016-10-19 19:43:11', '', 'Imágenes', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-10-19 19:43:11', '2016-10-19 19:43:11', '', 15, 'http://localhost/masajesperu/2016/10/19/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-10-19 19:43:25', '2016-10-19 19:43:25', '', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2016-10-19 19:45:00', '2016-10-19 19:45:00', '', 0, 'http://localhost/masajesperu/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-10-19 19:43:25', '2016-10-19 19:43:25', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-10-19 19:43:25', '2016-10-19 19:43:25', '', 17, 'http://localhost/masajesperu/2016/10/19/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-10-19 19:43:38', '2016-10-19 19:43:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-10-19 19:43:46', '2016-10-19 19:43:46', '', 0, 'http://localhost/masajesperu/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-10-19 19:43:38', '2016-10-19 19:43:38', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-10-19 19:43:38', '2016-10-19 19:43:38', '', 19, 'http://localhost/masajesperu/2016/10/19/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-10-19 19:43:57', '2016-10-19 19:43:57', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-10-19 19:43:57', '2016-10-19 19:43:57', '', 0, 'http://localhost/masajesperu/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-10-19 19:43:57', '2016-10-19 19:43:57', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-10-19 19:43:57', '2016-10-19 19:43:57', '', 21, 'http://localhost/masajesperu/2016/10/19/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-10-19 19:46:25', '2016-10-19 19:46:25', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-10-19 19:46:25', '2016-10-19 19:46:25', '', 0, 'http://localhost/masajesperu/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2016-10-19 19:46:24', '2016-10-19 19:46:24', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-10-19 19:46:24', '2016-10-19 19:46:24', '', 0, 'http://localhost/masajesperu/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2016-10-19 19:46:24', '2016-10-19 19:46:24', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-10-19 19:46:24', '2016-10-19 19:46:24', '', 0, 'http://localhost/masajesperu/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2016-10-19 19:46:24', '2016-10-19 19:46:24', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-10-19 19:46:24', '2016-10-19 19:46:24', '', 0, 'http://localhost/masajesperu/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-10-19 19:52:57', '2016-10-19 19:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-10-19 19:52:57', '2016-10-19 19:52:57', '', 0, 'http://localhost/masajesperu/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2016-10-19 19:52:56', '2016-10-19 19:52:56', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 0, 'http://localhost/masajesperu/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2016-10-19 19:52:56', '2016-10-19 19:52:56', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 0, 'http://localhost/masajesperu/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 'Galerías', '', 'publish', 'closed', 'closed', '', 'galerias', '', '', '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 0, 'http://localhost/masajesperu/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2016-10-19 19:52:56', '2016-10-19 19:52:56', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 0, 'http://localhost/masajesperu/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2016-10-19 19:52:56', '2016-10-19 19:52:56', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2016-10-19 19:52:56', '2016-10-19 19:52:56', '', 0, 'http://localhost/masajesperu/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2016-10-19 20:19:03', '2016-10-19 20:19:03', '<h3>Transportándote  a una vivir una experiencia única</h3>', 'Relajación y Bienestar', '', 'publish', 'closed', 'closed', '', 'relajacion-y-bienestar', '', '', '2016-10-19 20:28:08', '2016-10-19 20:28:08', '', 0, 'http://localhost/masajesperu/?post_type=slider-home&#038;p=33', 0, 'slider-home', '', 0),
(37, 1, '2016-10-19 20:26:08', '2016-10-19 20:26:08', '', 'sample-slider-home', '', 'inherit', 'open', 'closed', '', 'sample-slider-home', '', '', '2016-10-19 20:26:08', '2016-10-19 20:26:08', '', 33, 'http://localhost/masajesperu/wp-content/uploads/2016/10/sample-slider-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-10-19 20:27:00', '2016-10-19 20:27:00', '', 'sample-slider-home', '', 'inherit', 'open', 'closed', '', 'sample-slider-home-2', '', '', '2016-10-19 20:27:00', '2016-10-19 20:27:00', '', 33, 'http://localhost/masajesperu/wp-content/uploads/2016/10/sample-slider-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-10-19 20:27:28', '2016-10-19 20:27:28', '<h3>Transportándote  a una vivir una experiencia única</h3>', 'Relajación y Bienestar 2', '', 'publish', 'closed', 'closed', '', 'relajacion-y-bienestar-2', '', '', '2016-10-19 20:27:45', '2016-10-19 20:27:45', '', 0, 'http://localhost/masajesperu/?post_type=slider-home&#038;p=39', 0, 'slider-home', '', 0),
(40, 1, '2016-10-19 20:33:57', '2016-10-19 20:33:57', 'Tratamiento dedicado a brindar una relajación profunda combatiendo el exceso de estrés.', 'Masaje Relajante', 'Tratamiento dedicado a brindar una relajación profunda combatiendo el exceso de estrés.', 'publish', 'closed', 'closed', '', 'masaje-relajante', '', '', '2016-10-19 20:33:57', '2016-10-19 20:33:57', '', 0, 'http://localhost/masajesperu/?post_type=theme-services&#038;p=40', 0, 'theme-services', '', 0),
(41, 1, '2016-10-19 20:34:23', '2016-10-19 20:34:23', 'Tratamiento dedicado a brindar una relajación profunda combatiendo el exceso de estrés.', 'Masaje Terapeutico', 'Tratamiento dedicado a brindar una relajación profunda combatiendo el exceso de estrés.', 'publish', 'closed', 'closed', '', 'masaje-terapeutico', '', '', '2016-10-19 20:34:23', '2016-10-19 20:34:23', '', 0, 'http://localhost/masajesperu/?post_type=theme-services&#038;p=41', 0, 'theme-services', '', 0),
(42, 1, '2016-10-19 20:40:38', '2016-10-19 20:40:38', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Masaje Shiatsu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod sed do eiusmod', 'publish', 'closed', 'closed', '', 'masaje-shiatsu', '', '', '2016-10-19 20:40:38', '2016-10-19 20:40:38', '', 0, 'http://localhost/masajesperu/?post_type=theme-services&#038;p=42', 0, 'theme-services', '', 0),
(43, 1, '2016-10-19 20:46:00', '2016-10-19 20:46:00', '', 'Eye Makeup remover', '', 'publish', 'closed', 'closed', '', 'eye-makeup-remover', '', '', '2016-10-19 20:46:00', '2016-10-19 20:46:00', '', 0, 'http://localhost/masajesperu/?post_type=theme-products&#038;p=43', 0, 'theme-products', '', 0),
(44, 1, '2016-10-19 20:45:50', '2016-10-19 20:45:50', '', 'sample-product', '', 'inherit', 'open', 'closed', '', 'sample-product', '', '', '2016-10-19 20:45:50', '2016-10-19 20:45:50', '', 43, 'http://localhost/masajesperu/wp-content/uploads/2016/10/sample-product.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-10-19 20:49:26', '2016-10-19 20:49:26', '', 'Eye Makeup remover', '', 'publish', 'closed', 'closed', '', 'eye-makeup-remover-2', '', '', '2016-10-19 20:49:36', '2016-10-19 20:49:36', '', 0, 'http://localhost/masajesperu/?post_type=theme-products&#038;p=45', 0, 'theme-products', '', 0),
(46, 1, '2016-10-19 20:49:31', '2016-10-19 20:49:31', '', 'Eye Makeup remover', '', 'publish', 'closed', 'closed', '', 'eye-makeup-remover-3', '', '', '2016-10-19 20:49:40', '2016-10-19 20:49:40', '', 0, 'http://localhost/masajesperu/?post_type=theme-products&#038;p=46', 0, 'theme-products', '', 0),
(47, 1, '2016-10-19 20:51:08', '2016-10-19 20:51:08', 'Si se siente cansado o estresado  después de un día de trabajo , estaremos encantados de darle una solución agradable y saludable para encontrar su equilibrio otra vez.\r\n<ul>\r\n 	<li>De lunes a viernes 9am – 6pm</li>\r\n 	<li>Sábados 9am – 4pm</li>\r\n 	<li>Domingo : Cerrado</li>\r\n</ul>', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-19 20:51:08', '2016-10-19 20:51:08', '', 7, 'http://localhost/masajesperu/2016/10/19/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-10-19 20:52:17', '2016-10-19 20:52:17', 'Si se siente cansado o estresado  después de un día de trabajo , estaremos encantados de darle una solución agradable y saludable para encontrar su equilibrio otra vez.\r\n<ul>\r\n 	<li>De lunes a viernes 9am – 6pm</li>\r\n 	<li>Sábados 9am – 4pm</li>\r\n 	<li>Domingo : Cerrado</li>\r\n</ul>', 'Nosotros', 'MASAJES A LA TERAPIA PARA EL DESCANSO Y LA RELAJACIÓN', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-10-19 20:52:17', '2016-10-19 20:52:17', '', 7, 'http://localhost/masajesperu/2016/10/19/7-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-10-19 20:55:08', '2016-10-19 20:55:08', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-19 20:55:08', '2016-10-19 20:55:08', '', 1, 'http://localhost/masajesperu/2016/10/19/1-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-10-19 20:56:25', '2016-10-19 20:56:25', 'Este profundo masaje libera el tejido tirantez y reduce el dolor por la orientación áreas específicas de la tensión\r\n\r\ny el estrés.\r\n\r\nEste profundo masaje libera el tejido tirantez y reduce el dolor por la orientación...', 'La necesidad de un momento de relax', '', 'publish', 'open', 'open', '', 'la-necesidad-de-un-momento-de-relax', '', '', '2016-10-19 20:56:25', '2016-10-19 20:56:25', '', 0, 'http://localhost/masajesperu/?p=50', 0, 'post', '', 0),
(51, 1, '2016-10-19 20:56:18', '2016-10-19 20:56:18', '', 'spa_blog_belleza_peru_2', '', 'inherit', 'open', 'closed', '', 'spa_blog_belleza_peru_2', '', '', '2016-10-19 20:56:18', '2016-10-19 20:56:18', '', 50, 'http://localhost/masajesperu/wp-content/uploads/2016/10/spa_blog_belleza_peru_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-10-19 20:56:25', '2016-10-19 20:56:25', 'Este profundo masaje libera el tejido tirantez y reduce el dolor por la orientación áreas específicas de la tensión\r\n\r\ny el estrés.\r\n\r\nEste profundo masaje libera el tejido tirantez y reduce el dolor por la orientación...', 'La necesidad de un momento de relax', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2016-10-19 20:56:25', '2016-10-19 20:56:25', '', 50, 'http://localhost/masajesperu/2016/10/19/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-10-19 20:57:25', '2016-10-19 20:57:25', 'Este profundo masaje libera el tejido tirantez y reduce el dolor por la orientación áreas específicas de la tensión\r\n\r\ny el estrés.\r\n\r\nEste profundo masaje libera el tejido tirantez y reduce el dolor por la orientación...', 'La necesidad de un momento de relax', '', 'publish', 'open', 'open', '', 'la-necesidad-de-un-momento-de-relax-2', '', '', '2016-10-19 20:57:38', '2016-10-19 20:57:38', '', 0, 'http://localhost/masajesperu/?p=53', 0, 'post', '', 0),
(54, 1, '2016-10-19 20:57:38', '2016-10-19 20:57:38', 'Este profundo masaje libera el tejido tirantez y reduce el dolor por la orientación áreas específicas de la tensión\r\n\r\ny el estrés.\r\n\r\nEste profundo masaje libera el tejido tirantez y reduce el dolor por la orientación...', 'La necesidad de un momento de relax', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-10-19 20:57:38', '2016-10-19 20:57:38', '', 53, 'http://localhost/masajesperu/2016/10/19/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-10-19 21:02:17', '2016-10-19 21:02:17', '', 'sample-banner-page', '', 'inherit', 'open', 'closed', '', 'sample-banner-page', '', '', '2016-10-19 21:02:17', '2016-10-19 21:02:17', '', 7, 'http://localhost/masajesperu/wp-content/uploads/2016/10/sample-banner-page.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-10-19 21:14:16', '2016-10-19 21:14:16', '', 'Integrante 1', '', 'publish', 'closed', 'closed', '', 'integrante-1', '', '', '2016-10-19 21:14:16', '2016-10-19 21:14:16', '', 0, 'http://localhost/masajesperu/?post_type=theme-staff&#038;p=56', 0, 'theme-staff', '', 0),
(57, 1, '2016-10-19 21:14:08', '2016-10-19 21:14:08', '', 'staff', '', 'inherit', 'open', 'closed', '', 'staff', '', '', '2016-10-19 21:14:08', '2016-10-19 21:14:08', '', 56, 'http://localhost/masajesperu/wp-content/uploads/2016/10/staff.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-10-19 21:15:21', '2016-10-19 21:15:21', '', 'Integrante 2', '', 'publish', 'closed', 'closed', '', 'integrante-2', '', '', '2016-10-19 21:15:29', '2016-10-19 21:15:29', '', 0, 'http://localhost/masajesperu/?post_type=theme-staff&#038;p=58', 0, 'theme-staff', '', 0),
(59, 1, '2016-10-19 21:15:32', '2016-10-19 21:15:32', '', 'Integrante 3', '', 'publish', 'closed', 'closed', '', 'integrante-3', '', '', '2016-10-19 21:15:38', '2016-10-19 21:15:38', '', 0, 'http://localhost/masajesperu/?post_type=theme-staff&#038;p=59', 0, 'theme-staff', '', 0),
(60, 1, '2016-10-19 21:15:48', '2016-10-19 21:15:48', '', 'Integrante 3', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-10-19 21:15:55', '2016-10-19 21:15:55', '', 0, 'http://localhost/masajesperu/?post_type=theme-staff&#038;p=60', 0, 'theme-staff', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(38, 5, 0),
(44, 6, 0),
(50, 1, 0),
(51, 7, 0),
(53, 1, 0),
(55, 8, 0),
(57, 9, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'wpmf-category', '', 0, 0),
(5, 5, 'wpmf-category', '', 0, 1),
(6, 6, 'wpmf-category', '', 0, 0),
(7, 7, 'wpmf-category', '', 0, 0),
(8, 8, 'wpmf-category', '', 0, 1),
(9, 9, 'wpmf-category', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Izquierda', 'menu-izquierda', 0),
(3, 'Menú Derecha', 'menu-derecha', 0),
(4, 'Sin categoría', 'sin-categoria', 0),
(5, 'SLIDER HOME', 'slider-home', 1),
(6, 'PRODUCTOS', 'productos', 1),
(7, 'ENTRADAS O BLOG', 'entradas-o-blog', 1),
(8, 'BANNER DE PÁGINAS', 'banner-de-paginas', 1),
(9, 'STAFF', 'staff', 1) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'midnight'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"c1377946fccec569194695b360048515cb314a3274b995a13108827633404642";a:4:{s:10:"expiration";i:1477078311;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1476905511;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:25:"add-post-type-slider-home";i:1;s:28:"add-post-type-theme-services";i:2;s:28:"add-post-type-theme-products";i:3;s:26:"add-post-type-theme-images";i:4;s:26:"add-post-type-theme-videos";i:5;s:30:"add-post-type-theme-promotions";i:6;s:25:"add-post-type-theme-staff";i:7;s:12:"add-post_tag";i:8;s:15:"add-post_format";i:9;s:19:"add-images_category";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(19, 1, 'wp_user-settings-time', '1476910583'),
(20, 1, 'meta-box-order_theme-services', 'a:3:{s:4:"side";s:53:"submitdiv,tagsdiv-post_tag,pageparentdiv,postimagediv";s:6:"normal";s:58:"postexcerpt,mb_attached_images_meta_box,postcustom,slugdiv";s:8:"advanced";s:0:"";}'),
(21, 1, 'screen_layout_theme-services', '2'),
(22, 1, 'closedpostboxes_theme-services', 'a:2:{i:0;s:27:"mb_attached_images_meta_box";i:1;s:10:"postcustom";}'),
(23, 1, 'metaboxhidden_theme-services', 'a:1:{i:0;s:7:"slugdiv";}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(26, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:60:"mb_featured_banner_mbox,submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:110:"revisionsdiv,postexcerpt,postcustom,mb_attached_images_meta_box,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2sf1yEE.zPJYcHodwavEtukE/pDvj.', 'admin', 'jgomez@ingenioart.com', '', '2016-10-19 19:31:34', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

