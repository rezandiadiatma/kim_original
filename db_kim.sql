-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 12:31 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kim`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_groups`
--

CREATE TABLE `aauth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_groups`
--

INSERT INTO `aauth_groups` (`id`, `name`, `definition`) VALUES
(1, 'Admin', 'Superadmin Group'),
(2, 'Public', 'Public Group'),
(3, 'Default', 'Default Access Group'),
(4, 'Member', 'Member Access Group');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_group_to_group`
--

CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `subgroup_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

CREATE TABLE `aauth_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perms`
--

CREATE TABLE `aauth_perms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_perms`
--

INSERT INTO `aauth_perms` (`id`, `name`, `definition`) VALUES
(1, 'menu_dashboard', NULL),
(2, 'menu_crud_builder', NULL),
(3, 'menu_api_builder', NULL),
(4, 'menu_page_builder', NULL),
(5, 'menu_form_builder', NULL),
(6, 'menu_menu', NULL),
(7, 'menu_auth', NULL),
(8, 'menu_user', NULL),
(9, 'menu_group', NULL),
(10, 'menu_access', NULL),
(11, 'menu_permission', NULL),
(12, 'menu_api_documentation', NULL),
(13, 'menu_web_documentation', NULL),
(14, 'menu_settings', NULL),
(15, 'user_list', NULL),
(16, 'user_update_status', NULL),
(17, 'user_export', NULL),
(18, 'user_add', NULL),
(19, 'user_update', NULL),
(20, 'user_update_profile', NULL),
(21, 'user_update_password', NULL),
(22, 'user_profile', NULL),
(23, 'user_view', NULL),
(24, 'user_delete', NULL),
(25, 'blog_list', NULL),
(26, 'blog_export', NULL),
(27, 'blog_add', NULL),
(28, 'blog_update', NULL),
(29, 'blog_view', NULL),
(30, 'blog_delete', NULL),
(31, 'form_list', NULL),
(32, 'form_export', NULL),
(33, 'form_add', NULL),
(34, 'form_update', NULL),
(35, 'form_view', NULL),
(36, 'form_manage', NULL),
(37, 'form_delete', NULL),
(38, 'crud_list', NULL),
(39, 'crud_export', NULL),
(40, 'crud_add', NULL),
(41, 'crud_update', NULL),
(42, 'crud_view', NULL),
(43, 'crud_delete', NULL),
(44, 'rest_list', NULL),
(45, 'rest_export', NULL),
(46, 'rest_add', NULL),
(47, 'rest_update', NULL),
(48, 'rest_view', NULL),
(49, 'rest_delete', NULL),
(50, 'group_list', NULL),
(51, 'group_export', NULL),
(52, 'group_add', NULL),
(53, 'group_update', NULL),
(54, 'group_view', NULL),
(55, 'group_delete', NULL),
(56, 'permission_list', NULL),
(57, 'permission_export', NULL),
(58, 'permission_add', NULL),
(59, 'permission_update', NULL),
(60, 'permission_view', NULL),
(61, 'permission_delete', NULL),
(62, 'access_list', NULL),
(63, 'access_add', NULL),
(64, 'access_update', NULL),
(65, 'menu_list', NULL),
(66, 'menu_add', NULL),
(67, 'menu_update', NULL),
(68, 'menu_delete', NULL),
(69, 'menu_save_ordering', NULL),
(70, 'menu_type_add', NULL),
(71, 'page_list', NULL),
(72, 'page_export', NULL),
(73, 'page_add', NULL),
(74, 'page_update', NULL),
(75, 'page_view', NULL),
(76, 'page_delete', NULL),
(77, 'blog_list', NULL),
(78, 'blog_export', NULL),
(79, 'blog_add', NULL),
(80, 'blog_update', NULL),
(81, 'blog_view', NULL),
(82, 'blog_delete', NULL),
(83, 'setting', NULL),
(84, 'setting_update', NULL),
(85, 'dashboard', NULL),
(86, 'extension_list', NULL),
(87, 'extension_activate', NULL),
(88, 'extension_deactivate', NULL),
(89, 'database_list', ''),
(90, 'database_add', ''),
(91, 'database_update', ''),
(92, 'database_view', ''),
(93, 'wallpaper_carousel_add', ''),
(94, 'wallpaper_carousel_update', ''),
(95, 'wallpaper_carousel_view', ''),
(96, 'wallpaper_carousel_delete', ''),
(97, 'wallpaper_carousel_list', ''),
(98, 'menu_wallpaper_carousel', ''),
(104, 'menu_profile_card', ''),
(105, 'profile_card_add', ''),
(106, 'profile_card_update', ''),
(107, 'profile_card_view', ''),
(108, 'profile_card_delete', ''),
(109, 'profile_card_list', ''),
(110, 'keys_list', ''),
(111, 'berita_add', ''),
(112, 'berita_update', ''),
(113, 'berita_view', ''),
(114, 'berita_delete', ''),
(115, 'berita_list', ''),
(116, 'menu_berita', ''),
(117, 'aktivitas_add', ''),
(118, 'aktivitas_update', ''),
(119, 'aktivitas_view', ''),
(120, 'aktivitas_delete', ''),
(121, 'aktivitas_list', ''),
(122, 'menu_aktivitas', ''),
(123, 'profile_add', ''),
(124, 'profile_update', ''),
(125, 'profile_view', ''),
(126, 'profile_delete', ''),
(127, 'profile_list', ''),
(128, 'menu_profile', '');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_group`
--

CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_perm_to_group`
--

INSERT INTO `aauth_perm_to_group` (`perm_id`, `group_id`) VALUES
(98, 1),
(104, 1),
(116, 1),
(122, 1),
(128, 1),
(98, 4),
(104, 4),
(116, 4),
(122, 4),
(128, 4),
(20, 4),
(21, 4),
(22, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(83, 4),
(84, 4),
(85, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(97, 4),
(106, 4),
(107, 4),
(109, 4),
(124, 4),
(125, 4),
(127, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_user`
--

CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

CREATE TABLE `aauth_pms` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `receiver_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user`
--

CREATE TABLE `aauth_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

CREATE TABLE `aauth_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `oauth_uid` text DEFAULT NULL,
  `oauth_provider` varchar(100) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `avatar` text NOT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text DEFAULT NULL,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text DEFAULT NULL,
  `verification_code` text DEFAULT NULL,
  `top_secret` varchar(16) DEFAULT NULL,
  `ip_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `email`, `oauth_uid`, `oauth_provider`, `pass`, `username`, `full_name`, `avatar`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `top_secret`, `ip_address`) VALUES
(1, 'kim@pemkotsmg.com', NULL, NULL, '5711aa2253ac62088bf34f79f8ccd82e41bdbcf32e7670772d2a1e1746a9be9b', 'kimpemkotsmg', 'kimpemkotsmg', '', 0, '2022-05-19 07:46:40', '2022-05-19 07:46:40', '2022-05-17 14:03:18', NULL, '2022-05-20 00:00:00', '2HL7MsIRSVTh5rvn', NULL, NULL, '::1'),
(2, 'userkim@pemkotsmg.com', NULL, NULL, '85331630fca2b67c234b6b57e7affc9403d62cf186989c71675956e3ccc2a20d', 'userkim', 'userkim', 'default.png', 0, '2022-05-19 10:28:29', '2022-05-19 10:28:29', '2022-05-18 08:45:41', NULL, NULL, NULL, NULL, NULL, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_to_group`
--

CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aauth_user_to_group`
--

INSERT INTO `aauth_user_to_group` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

CREATE TABLE `aauth_user_variables` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas`
--

CREATE TABLE `aktivitas` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `date` date NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aktivitas`
--

INSERT INTO `aktivitas` (`id`, `title`, `caption`, `isi`, `date`, `img`) VALUES
(1, 'aktivitas 1', 'caption aktivitas 1', 'isi aktivitas 1', '2022-05-18', '20220518113226-2022-05-18aktivitas113225.jpg'),
(2, 'aktivitas 2', 'caption aktivitas 2', 'isi aktivitas 2', '2022-05-18', '20220518113250-2022-05-18aktivitas113249.jpg'),
(3, 'aktivitas 3', 'caption aktivitas 3', 'isi aktivitas 3', '2022-05-18', '20220518113308-2022-05-18aktivitas113307.jpeg'),
(4, 'aktivitas 4', 'caption aktivitas 4', 'isi aktivitas 4', '2022-05-18', 'default.svg');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `isi` text NOT NULL,
  `date` date NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `title`, `caption`, `isi`, `date`, `img`) VALUES
(1, 'Sample Berita', 'Sample Caption Berita', 'sample isi berita', '2022-05-18', '20220518092008-2022-05-18berita092005.jpg'),
(2, 'Sample Berita 2', 'Sample Caption Berita 2', 'isi berita 2', '2022-05-18', 'default.svg'),
(3, 'Berita 3', 'caption berita 3', 'isi berita 3', '2022-08-18', '20220518104751-2022-05-18berita104750.svg'),
(4, 'berita 4', 'caption berita 4', 'berita 4', '2022-05-18', '20220518104533-2022-05-18berita104532.jpeg'),
(5, 'berita 5', 'caption berita 5', 'isi berita 5', '2022-05-18', '20220518112206-2022-05-18berita112205.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `tags` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `viewers` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `content`, `image`, `tags`, `category`, `status`, `author`, `viewers`, `created_at`, `updated_at`) VALUES
(1, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', 'wellcome.jpg', 'greetings', '1', 'publish', 'admin', 0, '2022-05-17 14:03:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Technology', ''),
(2, 'Lifestyle', '');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` int(11) UNSIGNED NOT NULL,
  `captcha_time` int(10) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cc_options`
--

CREATE TABLE `cc_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cc_options`
--

INSERT INTO `cc_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'favicon', 'default.png'),
(2, 'site_name', 'KIM | Kelompok Informasi Masyarakat'),
(3, 'timezone', 'Australia/Adelaide'),
(4, 'enable_crud_builder', NULL),
(5, 'enable_api_builder', NULL),
(6, 'enable_form_builder', NULL),
(7, 'enable_page_builder', NULL),
(8, 'enable_disqus', NULL),
(9, 'disqus_id', ''),
(10, 'limit_pagination', '10'),
(11, 'site_description', ''),
(12, 'keywords', ''),
(13, 'author', ''),
(14, 'logo', '20220519074749-2022-05-19setting074722.png'),
(15, 'active_theme', 'cicool'),
(16, 'landing_page_id', 'default'),
(17, 'email', 'kim@pemkotsmg.com'),
(18, 'google_id', ''),
(19, 'google_secret', '');

-- --------------------------------------------------------

--
-- Table structure for table `cc_session`
--

CREATE TABLE `cc_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `sort_by` varchar(50) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `javascript` text DEFAULT NULL,
  `style` text DEFAULT NULL,
  `javascript_setting_detail` text DEFAULT NULL,
  `javascript_setting_update` text DEFAULT NULL,
  `javascript_setting_create` text DEFAULT NULL,
  `javascript_setting_list` text DEFAULT NULL,
  `primary_key` varchar(200) NOT NULL,
  `page_read` varchar(20) DEFAULT NULL,
  `page_create` varchar(20) DEFAULT NULL,
  `page_update` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `title`, `subject`, `table_name`, `sort_by`, `sort_field`, `javascript`, `style`, `javascript_setting_detail`, `javascript_setting_update`, `javascript_setting_create`, `javascript_setting_list`, `primary_key`, `page_read`, `page_create`, `page_update`) VALUES
(1, 'Wallpaper Carousel', 'Wallpaper Carousel', 'wallpaper_carousel', 'desc', '', NULL, '   /* .group-img */\r\n   .group-img {\r\n\r\n   }\r\n\r\n   .group-img .control-label {\r\n\r\n   }\r\n\r\n   .group-img .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-img .form-control {\r\n\r\n   }\r\n\r\n   .group-img .help-block {\r\n\r\n   }\r\n   /* end .group-img */\r\n\r\n\r\n\r\n   /* .group-dir */\r\n   .group-dir {\r\n\r\n   }\r\n\r\n   .group-dir .control-label {\r\n\r\n   }\r\n\r\n   .group-dir .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-dir .form-control {\r\n\r\n   }\r\n\r\n   .group-dir .help-block {\r\n\r\n   }\r\n   /* end .group-dir */\r\n\r\n\r\n\r\n   /* .group-title */\r\n   .group-title {\r\n\r\n   }\r\n\r\n   .group-title .control-label {\r\n\r\n   }\r\n\r\n   .group-title .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-title .form-control {\r\n\r\n   }\r\n\r\n   .group-title .help-block {\r\n\r\n   }\r\n   /* end .group-title */\r\n\r\n\r\n\r\n   /* .group-caption */\r\n   .group-caption {\r\n\r\n   }\r\n\r\n   .group-caption .control-label {\r\n\r\n   }\r\n\r\n   .group-caption .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-caption .form-control {\r\n\r\n   }\r\n\r\n   .group-caption .help-block {\r\n\r\n   }\r\n   /* end .group-caption */\r\n\r\n\r\n\r\n   /* .group-isi */\r\n   .group-isi {\r\n\r\n   }\r\n\r\n   .group-isi .control-label {\r\n\r\n   }\r\n\r\n   .group-isi .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-isi .form-control {\r\n\r\n   }\r\n\r\n   .group-isi .help-block {\r\n\r\n   }\r\n   /* end .group-isi */\r\n\r\n\r\n\r\n   /* .group-date */\r\n   .group-date {\r\n\r\n   }\r\n\r\n   .group-date .control-label {\r\n\r\n   }\r\n\r\n   .group-date .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-date .form-control {\r\n\r\n   }\r\n\r\n   .group-date .help-block {\r\n\r\n   }\r\n   /* end .group-date */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var img = $(\'.detail_group-img\');\n        var dir = $(\'.detail_group-dir\');\n        var title = $(\'.detail_group-title\');\n        var caption = $(\'.detail_group-caption\');\n        var isi = $(\'.detail_group-isi\');\n        var date = $(\'.detail_group-date\');\n    }  ', 'function onReady() {\n    var img = $(\'#img\');\n   /* \n    img.on(\'change\', function() {});\n    */\n    var dir = $(\'#dir\');\n   var title = $(\'#title\');\n   var caption = $(\'#caption\');\n   var isi = $(\'#isi\');\n   var date = $(\'#date\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}  ', 'function onReady() {\n    var img = $(\'#img\');\n   /* \n    img.on(\'change\', function() {});\n    */\n    var dir = $(\'#dir\');\n   var title = $(\'#title\');\n   var caption = $(\'#caption\');\n   var isi = $(\'#isi\');\n   var date = $(\'#date\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}  ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var img = row.find(\'.list_group-img\');\n    var dir = row.find(\'.list_group-dir\');\n    var title = row.find(\'.list_group-title\');\n    var caption = row.find(\'.list_group-caption\');\n    var isi = row.find(\'.list_group-isi\');\n    var date = row.find(\'.list_group-date\');\n\n}  ', 'id', 'yes', 'yes', 'yes'),
(3, 'Profile Card', 'Profile Card', 'profile_card', 'asc', 'id', NULL, '   /* .group-profile_name */\r\n   .group-profile_name {\r\n\r\n   }\r\n\r\n   .group-profile_name .control-label {\r\n\r\n   }\r\n\r\n   .group-profile_name .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-profile_name .form-control {\r\n\r\n   }\r\n\r\n   .group-profile_name .help-block {\r\n\r\n   }\r\n   /* end .group-profile_name */\r\n\r\n\r\n\r\n   /* .group-profile_isi */\r\n   .group-profile_isi {\r\n\r\n   }\r\n\r\n   .group-profile_isi .control-label {\r\n\r\n   }\r\n\r\n   .group-profile_isi .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-profile_isi .form-control {\r\n\r\n   }\r\n\r\n   .group-profile_isi .help-block {\r\n\r\n   }\r\n   /* end .group-profile_isi */\r\n\r\n\r\n\r\n   /* .group-img */\r\n   .group-img {\r\n\r\n   }\r\n\r\n   .group-img .control-label {\r\n\r\n   }\r\n\r\n   .group-img .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-img .form-control {\r\n\r\n   }\r\n\r\n   .group-img .help-block {\r\n\r\n   }\r\n   /* end .group-img */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var profile_name = $(\'.detail_group-profile_name\');\n        var profile_isi = $(\'.detail_group-profile_isi\');\n        var img = $(\'.detail_group-img\');\n    }   ', 'function onReady() {\n    var profile_name = $(\'#profile_name\');\n   /* \n    profile_name.on(\'change\', function() {});\n    */\n    var profile_isi = $(\'#profile_isi\');\n   var img = $(\'#img\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}   ', 'function onReady() {\n    var profile_name = $(\'#profile_name\');\n   /* \n    profile_name.on(\'change\', function() {});\n    */\n    var profile_isi = $(\'#profile_isi\');\n   var img = $(\'#img\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}   ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var profile_name = row.find(\'.list_group-profile_name\');\n    var profile_isi = row.find(\'.list_group-profile_isi\');\n    var img = row.find(\'.list_group-img\');\n\n}   ', 'id', 'yes', NULL, 'yes'),
(4, 'Berita', 'Berita', 'berita', 'asc', 'id', NULL, '   /* .group-title */\r\n   .group-title {\r\n\r\n   }\r\n\r\n   .group-title .control-label {\r\n\r\n   }\r\n\r\n   .group-title .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-title .form-control {\r\n\r\n   }\r\n\r\n   .group-title .help-block {\r\n\r\n   }\r\n   /* end .group-title */\r\n\r\n\r\n\r\n   /* .group-caption */\r\n   .group-caption {\r\n\r\n   }\r\n\r\n   .group-caption .control-label {\r\n\r\n   }\r\n\r\n   .group-caption .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-caption .form-control {\r\n\r\n   }\r\n\r\n   .group-caption .help-block {\r\n\r\n   }\r\n   /* end .group-caption */\r\n\r\n\r\n\r\n   /* .group-isi */\r\n   .group-isi {\r\n\r\n   }\r\n\r\n   .group-isi .control-label {\r\n\r\n   }\r\n\r\n   .group-isi .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-isi .form-control {\r\n\r\n   }\r\n\r\n   .group-isi .help-block {\r\n\r\n   }\r\n   /* end .group-isi */\r\n\r\n\r\n\r\n   /* .group-date */\r\n   .group-date {\r\n\r\n   }\r\n\r\n   .group-date .control-label {\r\n\r\n   }\r\n\r\n   .group-date .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-date .form-control {\r\n\r\n   }\r\n\r\n   .group-date .help-block {\r\n\r\n   }\r\n   /* end .group-date */\r\n\r\n\r\n\r\n   /* .group-img */\r\n   .group-img {\r\n\r\n   }\r\n\r\n   .group-img .control-label {\r\n\r\n   }\r\n\r\n   .group-img .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-img .form-control {\r\n\r\n   }\r\n\r\n   .group-img .help-block {\r\n\r\n   }\r\n   /* end .group-img */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var title = $(\'.detail_group-title\');\n        var caption = $(\'.detail_group-caption\');\n        var isi = $(\'.detail_group-isi\');\n        var date = $(\'.detail_group-date\');\n        var img = $(\'.detail_group-img\');\n    }  ', 'function onReady() {\n    var title = $(\'#title\');\n   /* \n    title.on(\'change\', function() {});\n    */\n    var caption = $(\'#caption\');\n   var isi = $(\'#isi\');\n   var date = $(\'#date\');\n   var img = $(\'#img\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}  ', 'function onReady() {\n    var title = $(\'#title\');\n   /* \n    title.on(\'change\', function() {});\n    */\n    var caption = $(\'#caption\');\n   var isi = $(\'#isi\');\n   var date = $(\'#date\');\n   var img = $(\'#img\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}  ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var title = row.find(\'.list_group-title\');\n    var caption = row.find(\'.list_group-caption\');\n    var isi = row.find(\'.list_group-isi\');\n    var date = row.find(\'.list_group-date\');\n    var img = row.find(\'.list_group-img\');\n\n}  ', 'id', 'yes', 'yes', 'yes'),
(5, 'Aktivitas', 'Aktivitas', 'aktivitas', NULL, NULL, NULL, '   /* .group-title */\r\n   .group-title {\r\n\r\n   }\r\n\r\n   .group-title .control-label {\r\n\r\n   }\r\n\r\n   .group-title .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-title .form-control {\r\n\r\n   }\r\n\r\n   .group-title .help-block {\r\n\r\n   }\r\n   /* end .group-title */\r\n\r\n\r\n\r\n   /* .group-caption */\r\n   .group-caption {\r\n\r\n   }\r\n\r\n   .group-caption .control-label {\r\n\r\n   }\r\n\r\n   .group-caption .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-caption .form-control {\r\n\r\n   }\r\n\r\n   .group-caption .help-block {\r\n\r\n   }\r\n   /* end .group-caption */\r\n\r\n\r\n\r\n   /* .group-isi */\r\n   .group-isi {\r\n\r\n   }\r\n\r\n   .group-isi .control-label {\r\n\r\n   }\r\n\r\n   .group-isi .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-isi .form-control {\r\n\r\n   }\r\n\r\n   .group-isi .help-block {\r\n\r\n   }\r\n   /* end .group-isi */\r\n\r\n\r\n\r\n   /* .group-date */\r\n   .group-date {\r\n\r\n   }\r\n\r\n   .group-date .control-label {\r\n\r\n   }\r\n\r\n   .group-date .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-date .form-control {\r\n\r\n   }\r\n\r\n   .group-date .help-block {\r\n\r\n   }\r\n   /* end .group-date */\r\n\r\n\r\n\r\n   /* .group-img */\r\n   .group-img {\r\n\r\n   }\r\n\r\n   .group-img .control-label {\r\n\r\n   }\r\n\r\n   .group-img .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-img .form-control {\r\n\r\n   }\r\n\r\n   .group-img .help-block {\r\n\r\n   }\r\n   /* end .group-img */\r\n\r\n\r\n\r\n', 'function onReady() {\r\n        var title = $(\'.detail_group-title\');\r\n        var caption = $(\'.detail_group-caption\');\r\n        var isi = $(\'.detail_group-isi\');\r\n        var date = $(\'.detail_group-date\');\r\n        var img = $(\'.detail_group-img\');\r\n    }', 'function onReady() {\r\n    var title = $(\'#title\');\r\n   /* \r\n    title.on(\'change\', function() {});\r\n    */\r\n    var caption = $(\'#caption\');\r\n   var isi = $(\'#isi\');\r\n   var date = $(\'#date\');\r\n   var img = $(\'#img\');\r\n   \r\n}\r\n\r\nfunction beforeSave() {\r\n    data_post.push({\r\n        name : \'_example\',\r\n        value : \'value_of_example\',\r\n    })\r\n}', 'function onReady() {\r\n    var title = $(\'#title\');\r\n   /* \r\n    title.on(\'change\', function() {});\r\n    */\r\n    var caption = $(\'#caption\');\r\n   var isi = $(\'#isi\');\r\n   var date = $(\'#date\');\r\n   var img = $(\'#img\');\r\n   \r\n}\r\n\r\nfunction beforeSave() {\r\n    data_post.push({\r\n        name : \'_example\',\r\n        value : \'value_of_example\',\r\n    })\r\n}', 'function onReady() {\r\n\r\n}\r\n\r\nfunction eachRows(row) {\r\n    var title = row.find(\'.list_group-title\');\r\n    var caption = row.find(\'.list_group-caption\');\r\n    var isi = row.find(\'.list_group-isi\');\r\n    var date = row.find(\'.list_group-date\');\r\n    var img = row.find(\'.list_group-img\');\r\n\r\n}', 'id', 'yes', 'yes', 'yes'),
(6, 'Profile', 'Profile', 'profile', '', '', NULL, '   /* .group-nama */\r\n   .group-nama {\r\n\r\n   }\r\n\r\n   .group-nama .control-label {\r\n\r\n   }\r\n\r\n   .group-nama .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-nama .form-control {\r\n\r\n   }\r\n\r\n   .group-nama .help-block {\r\n\r\n   }\r\n   /* end .group-nama */\r\n\r\n\r\n\r\n   /* .group-logo */\r\n   .group-logo {\r\n\r\n   }\r\n\r\n   .group-logo .control-label {\r\n\r\n   }\r\n\r\n   .group-logo .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-logo .form-control {\r\n\r\n   }\r\n\r\n   .group-logo .help-block {\r\n\r\n   }\r\n   /* end .group-logo */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var nama = $(\'.detail_group-nama\');\n        var logo = $(\'.detail_group-logo\');\n    }   ', 'function onReady() {\n    var nama = $(\'#nama\');\n   /* \n    nama.on(\'change\', function() {});\n    */\n    var logo = $(\'#logo\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}   ', 'function onReady() {\n    var nama = $(\'#nama\');\n   /* \n    nama.on(\'change\', function() {});\n    */\n    var logo = $(\'#logo\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n}   ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var nama = row.find(\'.list_group-nama\');\n    var logo = row.find(\'.list_group-logo\');\n\n}   ', 'id', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `crud_action`
--

CREATE TABLE `crud_action` (
  `id` int(11) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `action` varchar(200) NOT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud_custom_option`
--

CREATE TABLE `crud_custom_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field`
--

CREATE TABLE `crud_field` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `help_block` text DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `auto_generate_help_block` varchar(40) DEFAULT NULL,
  `wrapper_class` text DEFAULT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_form` varchar(10) DEFAULT NULL,
  `show_update_form` varchar(10) DEFAULT NULL,
  `show_detail_page` varchar(10) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud_field`
--

INSERT INTO `crud_field` (`id`, `crud_id`, `field_name`, `field_label`, `input_type`, `help_block`, `placeholder`, `auto_generate_help_block`, `wrapper_class`, `show_column`, `show_add_form`, `show_update_form`, `show_detail_page`, `sort`, `relation_table`, `relation_value`, `relation_label`) VALUES
(22, 1, 'id', 'id', 'number', '', '', 'yes', 'group-id', '', '', '', 'yes', 1, '', '', ''),
(23, 1, 'img', 'img', 'file', '', '', 'yes', 'group-img', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(24, 1, 'title', 'title', 'input', '', '', 'yes', 'group-title', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(25, 1, 'caption', 'caption', 'input', '', '', 'yes', 'group-caption', 'yes', 'yes', 'yes', 'yes', 5, '', '', ''),
(26, 1, 'isi', 'isi', 'editor_wysiwyg', '', '', 'yes', 'group-isi', 'yes', 'yes', 'yes', 'yes', 6, '', '', ''),
(27, 1, 'date', 'date', 'date', '', '', 'yes', 'group-date', 'yes', 'yes', 'yes', 'yes', 7, '', '', ''),
(31, 2, 'name', 'name', 'input', '', '', 'yes', 'group-name', 'yes', 'yes', 'yes', 'yes', 1, '', '', ''),
(32, 2, 'isi', 'isi', 'editor_wysiwyg', '', '', 'yes', 'group-isi', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(33, 2, 'card_img', 'card_img', 'file', '', '', 'yes', 'group-card_img', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(46, 3, 'id', 'id', 'number', '', '', 'yes', 'group-id', '', '', '', 'yes', 1, '', '', ''),
(47, 3, 'profile_name', 'profile_name', 'input', '', '', 'yes', 'group-profile_name', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(48, 3, 'profile_isi', 'profile_isi', 'editor_wysiwyg', '', '', 'yes', 'group-profile_isi', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(49, 3, 'img', 'img', 'file', '', '', 'yes', 'group-img', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(62, 4, 'id', 'id', 'number', '', '', 'yes', 'group-id', '', '', '', 'yes', 1, '', '', ''),
(63, 4, 'title', 'title', 'input', '', '', 'yes', 'group-title', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(64, 4, 'caption', 'caption', 'input', '', '', 'yes', 'group-caption', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(65, 4, 'isi', 'isi', 'editor_wysiwyg', '', '', 'yes', 'group-isi', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(66, 4, 'date', 'date', 'date', '', '', 'yes', 'group-date', 'yes', 'yes', 'yes', 'yes', 5, '', '', ''),
(67, 4, 'img', 'img', 'file', '', '', 'yes', 'group-img', 'yes', 'yes', 'yes', 'yes', 6, '', '', ''),
(68, 5, 'id', 'id', 'number', '', '', 'yes', 'group-id', '', '', '', 'yes', 1, '', '', ''),
(69, 5, 'title', 'title', 'input', '', '', 'yes', 'group-title', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(70, 5, 'caption', 'caption', 'input', '', '', 'yes', 'group-caption', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(71, 5, 'isi', 'isi', 'editor_wysiwyg', '', '', 'yes', 'group-isi', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(72, 5, 'date', 'date', 'date', '', '', 'yes', 'group-date', 'yes', 'yes', 'yes', 'yes', 5, '', '', ''),
(73, 5, 'img', 'img', 'file', '', '', 'yes', 'group-img', 'yes', 'yes', 'yes', 'yes', 6, '', '', ''),
(83, 6, 'id', 'id', 'number', '', '', 'yes', 'group-id', '', '', '', 'yes', 1, '', '', ''),
(84, 6, 'nama', 'nama', 'input', '', '', 'yes', 'group-nama', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(85, 6, 'logo', 'logo', 'file', '', '', 'yes', 'group-logo', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(86, 6, 'ico', 'ico', 'file', '', '', '', 'group-ico', 'yes', 'yes', 'yes', 'yes', 4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_condition`
--

CREATE TABLE `crud_field_condition` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `reff` text DEFAULT NULL,
  `crud_id` int(11) NOT NULL,
  `cond_field` text DEFAULT NULL,
  `cond_operator` text DEFAULT NULL,
  `cond_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_configuration`
--

CREATE TABLE `crud_field_configuration` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `group_config` varchar(200) NOT NULL,
  `config_name` text NOT NULL,
  `config_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_validation`
--

CREATE TABLE `crud_field_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud_field_validation`
--

INSERT INTO `crud_field_validation` (`id`, `crud_field_id`, `crud_id`, `validation_name`, `validation_value`) VALUES
(29, 23, 1, 'required', ''),
(30, 24, 1, 'required', ''),
(31, 24, 1, 'max_length', '50'),
(32, 25, 1, 'required', ''),
(33, 25, 1, 'max_length', '100'),
(34, 26, 1, 'required', ''),
(35, 27, 1, 'required', ''),
(41, 31, 2, 'required', ''),
(42, 31, 2, 'max_length', '50'),
(43, 32, 2, 'required', ''),
(44, 33, 2, 'required', ''),
(58, 47, 3, 'required', ''),
(59, 47, 3, 'max_length', '50'),
(60, 48, 3, 'required', ''),
(61, 49, 3, 'required', ''),
(77, 63, 4, 'required', ''),
(78, 63, 4, 'max_length', '50'),
(79, 64, 4, 'required', ''),
(80, 64, 4, 'max_length', '150'),
(81, 65, 4, 'required', ''),
(82, 66, 4, 'required', ''),
(83, 69, 5, 'required', ''),
(84, 69, 5, 'max_length', '50'),
(85, 70, 5, 'required', ''),
(86, 70, 5, 'max_length', '150'),
(87, 71, 5, 'required', ''),
(88, 72, 5, 'required', ''),
(89, 73, 5, 'max_length', '50'),
(100, 84, 6, 'required', ''),
(101, 84, 6, 'max_length', '50'),
(102, 85, 6, 'required', ''),
(103, 86, 6, 'required', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_function`
--

CREATE TABLE `crud_function` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud_function`
--

INSERT INTO `crud_function` (`id`, `slug`, `type`, `crud_id`, `content`) VALUES
(2, 'function_setting_update', 'event', 1, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(3, 'notification_title', 'notification', 1, NULL),
(4, 'notification_message', 'notification', 1, NULL),
(5, 'notification_url', 'notification', 1, NULL),
(6, 'notification_group', 'notification', 1, NULL),
(8, 'function_setting_update', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(9, 'notification_title', 'notification', 1, ''),
(10, 'notification_message', 'notification', 1, ''),
(11, 'notification_url', 'notification', 1, ''),
(12, 'notification_group', 'notification', 1, ''),
(14, 'function_setting_update', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(15, 'notification_title', 'notification', 1, ''),
(16, 'notification_message', 'notification', 1, ''),
(17, 'notification_url', 'notification', 1, ''),
(18, 'notification_group', 'notification', 1, ''),
(19, 'function_setting_create', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(20, 'function_setting_update', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(21, 'notification_title', 'notification', 1, ''),
(22, 'notification_message', 'notification', 1, ''),
(23, 'notification_url', 'notification', 1, ''),
(24, 'notification_group', 'notification', 1, ''),
(26, 'function_setting_update', 'event', 2, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(27, 'notification_title', 'notification', 2, NULL),
(28, 'notification_message', 'notification', 2, NULL),
(29, 'notification_url', 'notification', 2, NULL),
(30, 'notification_group', 'notification', 2, NULL),
(31, 'function_setting_create', 'event', 2, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(32, 'function_setting_update', 'event', 2, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(33, 'notification_title', 'notification', 2, ''),
(34, 'notification_message', 'notification', 2, ''),
(35, 'notification_url', 'notification', 2, ''),
(36, 'notification_group', 'notification', 2, ''),
(38, 'function_setting_update', 'event', 3, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(39, 'notification_title', 'notification', 3, NULL),
(40, 'notification_message', 'notification', 3, NULL),
(41, 'notification_url', 'notification', 3, NULL),
(42, 'notification_group', 'notification', 3, NULL),
(44, 'function_setting_update', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(45, 'notification_title', 'notification', 3, ''),
(46, 'notification_message', 'notification', 3, ''),
(47, 'notification_url', 'notification', 3, ''),
(48, 'notification_group', 'notification', 3, ''),
(50, 'function_setting_update', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(51, 'notification_title', 'notification', 3, ''),
(52, 'notification_message', 'notification', 3, ''),
(53, 'notification_url', 'notification', 3, ''),
(54, 'notification_group', 'notification', 3, ''),
(55, 'function_setting_create', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}   '),
(56, 'function_setting_update', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}   '),
(57, 'notification_title', 'notification', 3, ''),
(58, 'notification_message', 'notification', 3, ''),
(59, 'notification_url', 'notification', 3, ''),
(60, 'notification_group', 'notification', 3, ''),
(62, 'function_setting_update', 'event', 4, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(63, 'notification_title', 'notification', 4, NULL),
(64, 'notification_message', 'notification', 4, NULL),
(65, 'notification_url', 'notification', 4, NULL),
(66, 'notification_group', 'notification', 4, NULL),
(68, 'function_setting_update', 'event', 4, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(69, 'notification_title', 'notification', 4, ''),
(70, 'notification_message', 'notification', 4, ''),
(71, 'notification_url', 'notification', 4, ''),
(72, 'notification_group', 'notification', 4, ''),
(73, 'function_setting_create', 'event', 4, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(74, 'function_setting_update', 'event', 4, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(75, 'notification_title', 'notification', 4, ''),
(76, 'notification_message', 'notification', 4, ''),
(77, 'notification_url', 'notification', 4, ''),
(78, 'notification_group', 'notification', 4, ''),
(79, 'function_setting_create', 'event', 5, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(80, 'function_setting_update', 'event', 5, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(81, 'notification_title', 'notification', 5, NULL),
(82, 'notification_message', 'notification', 5, NULL),
(83, 'notification_url', 'notification', 5, NULL),
(84, 'notification_group', 'notification', 5, NULL),
(86, 'function_setting_update', 'event', 6, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(87, 'notification_title', 'notification', 6, NULL),
(88, 'notification_message', 'notification', 6, NULL),
(89, 'notification_url', 'notification', 6, NULL),
(90, 'notification_group', 'notification', 6, NULL),
(92, 'function_setting_update', 'event', 6, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(93, 'notification_title', 'notification', 6, ''),
(94, 'notification_message', 'notification', 6, ''),
(95, 'notification_url', 'notification', 6, ''),
(96, 'notification_group', 'notification', 6, ''),
(98, 'function_setting_update', 'event', 6, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}  '),
(99, 'notification_title', 'notification', 6, ''),
(100, 'notification_message', 'notification', 6, ''),
(101, 'notification_url', 'notification', 6, ''),
(102, 'notification_group', 'notification', 6, ''),
(103, 'function_setting_create', 'event', 6, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}   '),
(104, 'function_setting_update', 'event', 6, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n}   '),
(105, 'notification_title', 'notification', 6, ''),
(106, 'notification_message', 'notification', 6, ''),
(107, 'notification_url', 'notification', 6, ''),
(108, 'notification_group', 'notification', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_chained`
--

CREATE TABLE `crud_input_chained` (
  `id` int(11) UNSIGNED NOT NULL,
  `chain_field` varchar(250) DEFAULT NULL,
  `chain_field_eq` varchar(250) DEFAULT NULL,
  `crud_field_id` int(11) DEFAULT NULL,
  `crud_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_type`
--

CREATE TABLE `crud_input_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `custom_value` int(11) NOT NULL,
  `validation_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud_input_type`
--

INSERT INTO `crud_input_type` (`id`, `type`, `relation`, `custom_value`, `validation_group`) VALUES
(1, 'input', '0', 0, 'input'),
(2, 'textarea', '0', 0, 'text'),
(3, 'select', '1', 0, 'select'),
(4, 'editor_wysiwyg', '0', 0, 'editor'),
(5, 'password', '0', 0, 'password'),
(6, 'email', '0', 0, 'email'),
(7, 'address_map', '0', 0, 'address_map'),
(8, 'file', '0', 0, 'file'),
(9, 'file_multiple', '0', 0, 'file_multiple'),
(10, 'datetime', '0', 0, 'datetime'),
(11, 'date', '0', 0, 'date'),
(12, 'timestamp', '0', 0, 'timestamp'),
(13, 'number', '0', 0, 'number'),
(14, 'yes_no', '0', 0, 'yes_no'),
(15, 'time', '0', 0, 'time'),
(16, 'year', '0', 0, 'year'),
(17, 'select_multiple', '1', 0, 'select_multiple'),
(18, 'checkboxes', '1', 0, 'checkboxes'),
(19, 'options', '1', 0, 'options'),
(20, 'true_false', '0', 0, 'true_false'),
(21, 'current_user_username', '0', 0, 'user_username'),
(22, 'current_user_id', '0', 0, 'current_user_id'),
(23, 'custom_option', '0', 1, 'custom_option'),
(24, 'custom_checkbox', '0', 1, 'custom_checkbox'),
(25, 'custom_select_multiple', '0', 1, 'custom_select_multiple'),
(26, 'custom_select', '0', 1, 'custom_select'),
(27, 'chained', '1', 0, 'chained');

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_validation`
--

CREATE TABLE `crud_input_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `validation` varchar(200) NOT NULL,
  `input_able` varchar(20) NOT NULL,
  `group_input` text NOT NULL,
  `input_placeholder` text NOT NULL,
  `call_back` varchar(10) NOT NULL,
  `input_validation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crud_input_validation`
--

INSERT INTO `crud_input_validation` (`id`, `validation`, `input_able`, `group_input`, `input_placeholder`, `call_back`, `input_validation`) VALUES
(1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple, chained', '', '', ''),
(2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric'),
(3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric'),
(4, 'valid_email', 'no', 'input, email', '', '', ''),
(5, 'valid_emails', 'no', 'input, email', '', '', ''),
(6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex'),
(7, 'decimal', 'no', 'input, number, text, select', '', '', ''),
(8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list'),
(9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric'),
(10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric'),
(11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric'),
(12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric'),
(13, 'valid_url', 'no', 'input, text', '', '', ''),
(14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', ''),
(15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', ''),
(16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', ''),
(17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', ''),
(18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', ''),
(19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', ''),
(20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', ''),
(23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' '),
(25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' '),
(26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric'),
(27, 'alpha_dash', 'no', 'input, text', '', 'no', ''),
(28, 'integer', 'no', 'input, text, number', '', 'no', ''),
(29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(30, 'is_natural', 'no', 'input, text, number', '', 'no', ''),
(31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', ''),
(32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value'),
(37, 'valid_ip', 'no', 'input, text', '', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_custom_attribute`
--

CREATE TABLE `form_custom_attribute` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `attribute_label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_custom_option`
--

CREATE TABLE `form_custom_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `input_type` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `show_detail_page` varchar(20) DEFAULT NULL,
  `show_update_form` varchar(20) DEFAULT NULL,
  `show_add_form` varchar(20) DEFAULT NULL,
  `show_column` varchar(20) DEFAULT NULL,
  `auto_generate_help_block` varchar(10) DEFAULT NULL,
  `help_block` text DEFAULT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `form_field_validation`
--

CREATE TABLE `form_field_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'BC1DE45A6A103AB2D8A104B993785FD8', 0, 0, 0, NULL, '2022-05-17 07:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `label` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `type`, `icon_color`, `link`, `sort`, `parent`, `icon`, `menu_type_id`, `active`) VALUES
(1, 'MAIN NAVIGATION', 'label', '', '{admin_url}/dashboard', 1, 0, '', 1, 1),
(2, 'Dashboard', 'menu', '', '{admin_url}/dashboard', 2, 0, 'fa-dashboard', 1, 1),
(3, 'CRUD Builder', 'menu', '', '{admin_url}/crud', 3, 0, 'fa-table', 1, 1),
(4, 'API Builder', 'menu', '', '{admin_url}/rest', 4, 0, 'fa-code', 1, 1),
(5, 'Page Builder', 'menu', '', '{admin_url}/page', 5, 0, 'fa-file-o', 1, 1),
(6, 'Form Builder', 'menu', '', '{admin_url}/form', 6, 0, 'fa-newspaper-o', 1, 1),
(7, 'Blog', 'menu', '', '{admin_url}/blog', 7, 0, 'fa-file-text-o', 1, 1),
(8, 'Menu', 'menu', '', '{admin_url}/menu', 8, 0, 'fa-bars', 1, 1),
(9, 'Auth', 'menu', '', '', 9, 0, 'fa-shield', 1, 1),
(10, 'User', 'menu', '', '{admin_url}/user', 10, 9, '', 1, 1),
(11, 'Groups', 'menu', '', '{admin_url}/group', 11, 9, '', 1, 1),
(12, 'Access', 'menu', '', '{admin_url}/access', 12, 9, '', 1, 1),
(13, 'Permission', 'menu', '', '{admin_url}/permission', 13, 9, '', 1, 1),
(14, 'API Keys', 'menu', '', '{admin_url}/keys', 14, 9, '', 1, 1),
(15, 'Extension', 'menu', '', '{admin_url}/extension', 15, 0, 'fa-puzzle-piece', 1, 1),
(16, 'Database', 'menu', '', '{admin_url}/database', 16, 0, 'fa-database', 1, 1),
(17, 'OTHER', 'label', '', '', 17, 0, '', 1, 1),
(18, 'Settings', 'menu', 'text-red', '{admin_url}/setting', 18, 0, 'fa-circle-o', 1, 1),
(19, 'Web Documentation', 'menu', 'text-blue', '{admin_url}/doc/web', 19, 0, 'fa-circle-o', 1, 1),
(20, 'API Documentation', 'menu', 'text-yellow', '{admin_url}/doc/api', 20, 0, 'fa-circle-o', 1, 1),
(21, 'Home', 'menu', '', '/', 1, 0, '', 2, 1),
(22, 'Blog', 'menu', '', 'blog', 4, 0, '', 2, 1),
(23, 'Dashboard', 'menu', '', 'administrator/dashboard', 5, 0, '', 2, 1),
(24, 'Wallpaper Carousel', 'menu', 'default', 'administrator/wallpaper_carousel', 21, 0, 'fa-image', 1, 1),
(25, 'Profile Card', 'menu', 'default', 'administrator/profile_card', 24, 0, 'fa-suitcase', 1, 1),
(26, 'Berita', 'menu', 'default', 'administrator/berita', 25, 0, 'fa-feed', 1, 1),
(27, 'Aktivitas', 'menu', 'default', 'administrator/aktivitas', 26, 0, 'fa-tasks', 1, 1),
(28, 'Profile', 'menu', 'default', 'administrator/profile', 27, 0, 'fa-university', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `definition`) VALUES
(1, 'side menu', NULL),
(2, 'top menu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `read` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `fresh_content` text NOT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_block_element`
--

CREATE TABLE `page_block_element` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_name` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image_preview` varchar(200) NOT NULL,
  `block_name` varchar(200) NOT NULL,
  `content_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `logo`, `ico`) VALUES
(1, 'Kelompok Informasi Masyarakat', '20220518134405-2022-05-18profile134404.png', '20220519101930-2022-05-19profile101927.ico');

-- --------------------------------------------------------

--
-- Table structure for table `profile_card`
--

CREATE TABLE `profile_card` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(50) NOT NULL,
  `profile_isi` text NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_card`
--

INSERT INTO `profile_card` (`id`, `profile_name`, `profile_isi`, `img`) VALUES
(1, 'Kelompok Informasi Masyarakat (KIM)', 'adalah kelompok yang dibentuk oleh masyarakat, dari masyarakat dan untuk masyarakat, yang secara mandiri dan kreatif melalui melakukan kegiatan pengelolaan informasi dan pemberdayaan masyarakat dalam rangka meningkatkan nilai tambah taraf kehidupannya, sebagai lembaga masyarakat yang bergerak di bidang pengelolaan informasi.', '20220518083657-2022-05-18profile_card083654.svg');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(11) UNSIGNED NOT NULL,
  `receipent_custom_query` text DEFAULT NULL,
  `receipent_department` varchar(200) DEFAULT NULL,
  `primary_field` varchar(200) DEFAULT NULL,
  `table` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `repeat_frequency` varchar(200) DEFAULT NULL,
  `receipent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_condition`
--

CREATE TABLE `reminder_condition` (
  `id` int(11) UNSIGNED NOT NULL,
  `cond_type` varchar(200) DEFAULT NULL,
  `cond_table` varchar(200) DEFAULT NULL,
  `cond_field` varchar(200) NOT NULL,
  `cond_operator` varchar(200) NOT NULL,
  `cond_value` varchar(255) DEFAULT NULL,
  `cond_logic` varchar(20) NOT NULL DEFAULT 'AND',
  `reminder_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_cron`
--

CREATE TABLE `reminder_cron` (
  `id` int(11) UNSIGNED NOT NULL,
  `reminder_id` int(11) NOT NULL,
  `reff_id` int(11) NOT NULL,
  `reff_table` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest`
--

CREATE TABLE `rest` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `primary_key` varchar(200) NOT NULL,
  `x_api_key` varchar(20) DEFAULT NULL,
  `x_token` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_field`
--

CREATE TABLE `rest_field` (
  `id` int(11) UNSIGNED NOT NULL,
  `rest_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_api` varchar(10) DEFAULT NULL,
  `show_update_api` varchar(10) DEFAULT NULL,
  `show_detail_api` varchar(10) DEFAULT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_field_validation`
--

CREATE TABLE `rest_field_validation` (
  `id` int(11) UNSIGNED NOT NULL,
  `rest_field_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_input_type`
--

CREATE TABLE `rest_input_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `validation_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_input_type`
--

INSERT INTO `rest_input_type` (`id`, `type`, `relation`, `validation_group`) VALUES
(1, 'input', '0', 'input'),
(2, 'timestamp', '0', 'timestamp'),
(3, 'file', '0', 'file'),
(4, 'select', '1', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `wallpaper_carousel`
--

CREATE TABLE `wallpaper_carousel` (
  `id` int(10) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wallpaper_carousel`
--

INSERT INTO `wallpaper_carousel` (`id`, `img`, `title`, `caption`, `isi`, `date`) VALUES
(1, '20220518071448-2022-05-18wallpaper_carousel071412.jpeg', 'Sample Title', 'Kota Lama Semarang', 'Sampe Text isi', '2022-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `widgeds`
--

CREATE TABLE `widgeds` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `dashboard_id` int(11) NOT NULL,
  `widged_uuid` varchar(255) NOT NULL,
  `widged_type` varchar(255) NOT NULL,
  `sort_number` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart`
--

CREATE TABLE `widged_chart` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart_series`
--

CREATE TABLE `widged_chart_series` (
  `id` int(11) UNSIGNED NOT NULL,
  `label` varchar(200) NOT NULL,
  `value_unit` varchar(200) NOT NULL,
  `data_table` varchar(255) NOT NULL,
  `data_field` varchar(255) NOT NULL,
  `formula` varchar(255) DEFAULT NULL,
  `formula_field` varchar(255) DEFAULT NULL,
  `x_axis_field` varchar(255) NOT NULL,
  `x_axis_field_type` varchar(255) NOT NULL,
  `x_axis_grouping` varchar(20) NOT NULL DEFAULT 'yes',
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `widged_chart_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart_series_condition`
--

CREATE TABLE `widged_chart_series_condition` (
  `id` int(11) UNSIGNED NOT NULL,
  `cond_field` varchar(200) NOT NULL,
  `cond_operator` varchar(200) NOT NULL,
  `cond_value` varchar(255) NOT NULL,
  `cond_logic` varchar(20) NOT NULL DEFAULT 'AND',
  `widged_series_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_group_to_group`
--
ALTER TABLE `aauth_group_to_group`
  ADD PRIMARY KEY (`group_id`,`subgroup_id`);

--
-- Indexes for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_perm_to_user`
--
ALTER TABLE `aauth_perm_to_user`
  ADD PRIMARY KEY (`user_id`,`perm_id`);

--
-- Indexes for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_user`
--
ALTER TABLE `aauth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_users`
--
ALTER TABLE `aauth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aauth_user_to_group`
--
ALTER TABLE `aauth_user_to_group`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aktivitas`
--
ALTER TABLE `aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`);

--
-- Indexes for table `cc_options`
--
ALTER TABLE `cc_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_action`
--
ALTER TABLE `crud_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_custom_option`
--
ALTER TABLE `crud_custom_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_field`
--
ALTER TABLE `crud_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_field_condition`
--
ALTER TABLE `crud_field_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_field_configuration`
--
ALTER TABLE `crud_field_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_field_validation`
--
ALTER TABLE `crud_field_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_function`
--
ALTER TABLE `crud_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_input_chained`
--
ALTER TABLE `crud_input_chained`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_input_type`
--
ALTER TABLE `crud_input_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_input_validation`
--
ALTER TABLE `crud_input_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_custom_attribute`
--
ALTER TABLE `form_custom_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_custom_option`
--
ALTER TABLE `form_custom_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field_validation`
--
ALTER TABLE `form_field_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_block_element`
--
ALTER TABLE `page_block_element`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_card`
--
ALTER TABLE `profile_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder_condition`
--
ALTER TABLE `reminder_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder_cron`
--
ALTER TABLE `reminder_cron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest`
--
ALTER TABLE `rest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_field`
--
ALTER TABLE `rest_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_field_validation`
--
ALTER TABLE `rest_field_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_input_type`
--
ALTER TABLE `rest_input_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallpaper_carousel`
--
ALTER TABLE `wallpaper_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgeds`
--
ALTER TABLE `widgeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widged_chart`
--
ALTER TABLE `widged_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widged_chart_series`
--
ALTER TABLE `widged_chart_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widged_chart_series_condition`
--
ALTER TABLE `widged_chart_series_condition`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_user`
--
ALTER TABLE `aauth_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_users`
--
ALTER TABLE `aauth_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aktivitas`
--
ALTER TABLE `aktivitas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_options`
--
ALTER TABLE `cc_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crud_action`
--
ALTER TABLE `crud_action`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_custom_option`
--
ALTER TABLE `crud_custom_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field`
--
ALTER TABLE `crud_field`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `crud_field_condition`
--
ALTER TABLE `crud_field_condition`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field_configuration`
--
ALTER TABLE `crud_field_configuration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field_validation`
--
ALTER TABLE `crud_field_validation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `crud_function`
--
ALTER TABLE `crud_function`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `crud_input_chained`
--
ALTER TABLE `crud_input_chained`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_input_type`
--
ALTER TABLE `crud_input_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `crud_input_validation`
--
ALTER TABLE `crud_input_validation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_custom_attribute`
--
ALTER TABLE `form_custom_attribute`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_custom_option`
--
ALTER TABLE `form_custom_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field_validation`
--
ALTER TABLE `form_field_validation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_block_element`
--
ALTER TABLE `page_block_element`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile_card`
--
ALTER TABLE `profile_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_condition`
--
ALTER TABLE `reminder_condition`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_cron`
--
ALTER TABLE `reminder_cron`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest`
--
ALTER TABLE `rest`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_field`
--
ALTER TABLE `rest_field`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_field_validation`
--
ALTER TABLE `rest_field_validation`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_input_type`
--
ALTER TABLE `rest_input_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wallpaper_carousel`
--
ALTER TABLE `wallpaper_carousel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgeds`
--
ALTER TABLE `widgeds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart`
--
ALTER TABLE `widged_chart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart_series`
--
ALTER TABLE `widged_chart_series`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart_series_condition`
--
ALTER TABLE `widged_chart_series_condition`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
