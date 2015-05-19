-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2015 at 03:28 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_email_blacklist`
--

CREATE TABLE IF NOT EXISTS `speed_addon_email_blacklist` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `created` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_email_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_email_logs` (
`id` bigint(20) unsigned NOT NULL,
  `from_email` varchar(100) NOT NULL,
  `to_email` varchar(256) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reason` varchar(200) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_error_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_error_logs` (
`id` bigint(20) unsigned NOT NULL,
  `log_type` varchar(50) NOT NULL,
  `log_message` text NOT NULL,
  `error_file` varchar(200) NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_session`
--

CREATE TABLE IF NOT EXISTS `speed_addon_session` (
  `id` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `last_access` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_shorturls`
--

CREATE TABLE IF NOT EXISTS `speed_addon_shorturls` (
`id` int(11) NOT NULL,
  `redirect` varchar(5) NOT NULL,
  `component` varchar(50) NOT NULL,
  `uniqueid` varchar(50) NOT NULL,
  `shorturl` varchar(255) NOT NULL,
  `originalurl` varchar(255) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_sms_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_sms_logs` (
`id` bigint(20) unsigned NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_api_users`
--

CREATE TABLE IF NOT EXISTS `speed_api_users` (
`id` bigint(20) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_secret` varchar(256) NOT NULL,
  `allowed_ip` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `modified` int(10) NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_blog_posts`
--

CREATE TABLE IF NOT EXISTS `speed_blog_posts` (
`post_id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `post_content` text NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `comment_status` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `modified` int(10) NOT NULL,
  `created` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_cache`
--

CREATE TABLE IF NOT EXISTS `speed_core_cache` (
`cacheid` bigint(20) unsigned NOT NULL,
  `cache_key` varchar(256) NOT NULL,
  `cache_data` text NOT NULL,
  `expire_time` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_components`
--

CREATE TABLE IF NOT EXISTS `speed_core_components` (
`component_id` int(11) unsigned NOT NULL,
  `hasconfig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `component` varchar(50) NOT NULL,
  `com_view` varchar(50) NOT NULL,
  `is_admin` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `speed_core_components`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_menu`
--

CREATE TABLE IF NOT EXISTS `speed_core_menu` (
`menu_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `menu_type` varchar(75) NOT NULL,
  `name` varchar(256) NOT NULL,
  `link` mediumtext NOT NULL,
  `attributes` mediumtext,
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL,
  `ordering` int(11) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `speed_core_menu`
--

INSERT INTO `speed_core_menu` (`menu_id`, `parent_id`, `menu_type`, `name`, `link`, `attributes`, `access`, `status`, `ordering`, `created`) VALUES
(1, 0, 'adminmenu', 'Menu Manager', 'index.php?option=menu', '{"i:class":"fa fa-bars","class":"main-item"}', 0, 1, 2, 0),
(22, 0, 'adminmenu', 'Manage Users', 'index.php?option=users', '{"class":"main-item","i:class":"fa fa-lg fa-user-secret"}', 0, 1, 3, 0),
(23, 0, 'adminmenu', 'Transport', 'index.php?option=transport', '{"class":"main-item","i:class":"fa fa-lg fa-cloud"}', 0, 1, 4, 0),
(24, 0, 'adminmenu', 'White Label', 'index.php?option=whitelabel', '{"class":"main-item","i:class":"fa fa-lg fa-link"}', 0, 1, 5, 0),
(25, 0, 'adminmenu', 'Blog', 'index.php?option=blog', '{"class":"main-item","i:class":"fa fa-lg fa-rss"}', 0, 1, 8, 0),
(26, 0, 'adminmenu', 'Manage Logs', '#', '{"class":"main-item","i:class":"fa fa-lg fa-code"}', 0, 1, 9, 0),
(27, 26, 'adminmenu', 'Email Logs', 'index.php?option=log', '[]', 0, 1, 1, 0),
(28, 26, 'adminmenu', 'Logins', 'index.php?option=log&view=logins', '[]', 0, 1, 2, 0),
(29, 26, 'adminmenu', 'Login Attempts', 'index.php?option=log&view=loginattempt', '[]', 0, 1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_menu_types`
--

CREATE TABLE IF NOT EXISTS `speed_core_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menu_type` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descn` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `speed_core_menu_types`
--

INSERT INTO `speed_core_menu_types` (`id`, `menu_type`, `title`, `descn`) VALUES
(1, 'adminmenu', 'Admin Menu', ''),
(2, 'usermenu', 'User menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_options`
--

CREATE TABLE IF NOT EXISTS `speed_core_options` (
`option_id` int(11) unsigned NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` mediumtext,
  `autoload` varchar(5) NOT NULL,
  `fksiteid` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_permissions`
--

CREATE TABLE IF NOT EXISTS `speed_core_permissions` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_templates`
--

CREATE TABLE IF NOT EXISTS `speed_core_templates` (
`template_id` int(11) unsigned NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_directory_name` varchar(50) NOT NULL,
  `template_author` varchar(100) DEFAULT NULL,
  `template_author_email` varchar(100) DEFAULT NULL,
  `template_version` varchar(5) DEFAULT NULL,
  `template_type` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `speed_core_templates`
--


-- --------------------------------------------------------

--
-- Table structure for table `speed_notifications`
--

CREATE TABLE IF NOT EXISTS `speed_notifications` (
`id` int(11) unsigned NOT NULL,
  `fk_group_id` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `endtime` int(10) NOT NULL,
  `created` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_notification_status`
--

CREATE TABLE IF NOT EXISTS `speed_notification_status` (
`id` bigint(20) NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `noty_id` int(11) unsigned NOT NULL,
  `created` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_notifications`
--
ALTER TABLE `speed_notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`), ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `speed_notification_status`
--
ALTER TABLE `speed_notification_status`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `fk_noty_id` (`noty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speed_notifications`
--
ALTER TABLE `speed_notifications`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `speed_notification_status`
--
ALTER TABLE `speed_notification_status`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `speed_notification_status`
--
ALTER TABLE `speed_notification_status`
ADD CONSTRAINT `speed_notification_status_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `speed_notification_status_ibfk_2` FOREIGN KEY (`noty_id`) REFERENCES `speed_notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- --------------------------------------------------------

--
-- Table structure for table `speed_transport_config`
--

CREATE TABLE IF NOT EXISTS `speed_transport_config` (
`id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `title` varchar(25) NOT NULL,
  `adapter` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `created` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `speed_transport_config`
--
-- --------------------------------------------------------

--
-- Table structure for table `speed_transport_log`
--

CREATE TABLE IF NOT EXISTS `speed_transport_log` (
`id` int(11) unsigned NOT NULL,
  `type` varchar(5) NOT NULL,
  `descn` text NOT NULL,
  `created` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_transport_process`
--

CREATE TABLE IF NOT EXISTS `speed_transport_process` (
`id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `fk_transfer_id` int(10) unsigned NOT NULL,
  `service` varchar(25) NOT NULL,
  `basename` varchar(250) NOT NULL,
  `transfer_files` text NOT NULL,
  `meta_value` text NOT NULL,
  `created` int(10) NOT NULL,
  `modified` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_transport_transfer`
--

CREATE TABLE IF NOT EXISTS `speed_transport_transfer` (
`id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `fk_source_config_id` int(10) unsigned NOT NULL,
  `fk_dest_config_id` int(10) unsigned NOT NULL,
  `action` varchar(10) NOT NULL,
  `service` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `meta_value` text NOT NULL,
  `frequency` int(11) NOT NULL,
  `lastrun` int(10) NOT NULL,
  `created` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `speed_transport_transfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_users`
--

CREATE TABLE IF NOT EXISTS `speed_users` (
  `userid` varchar(10) NOT NULL,
  `power` int(11) NOT NULL COMMENT 'user group',
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `company` varchar(150) NOT NULL,
  `meta_value` mediumtext NOT NULL,
  `activation_key` varchar(20) NOT NULL,
  `activated_at` int(10) NOT NULL,
  `last_pw_change` int(10) NOT NULL,
  `last_signin` int(10) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` int(10) NOT NULL,
  `fksiteid` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_users`
--

INSERT INTO `speed_users` (`userid`, `power`, `name`, `username`, `email`, `password`, `mobile`, `company`, `meta_value`, `activation_key`, `activated_at`, `last_pw_change`, `last_signin`, `ip`, `status`, `created`, `fksiteid`) VALUES
('1234567890', 1, 'sankar', 'admin', 'sankar.suda@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9916514445', '', '', '', 0, 1418380561, 1427986187, '127.0.0.1', 1, 2014, 1);

-- --------------------------------------------------------

--
-- Table structure for table `speed_users_online`
--

CREATE TABLE IF NOT EXISTS `speed_users_online` (
`id` int(11) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `sessionid` varchar(200) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fksiteid` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_banned_ip`
--

CREATE TABLE IF NOT EXISTS `speed_user_banned_ip` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(10) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_contact_details`
--

CREATE TABLE IF NOT EXISTS `speed_user_contact_details` (
  `fkuserid` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` varchar(200) NOT NULL,
  `address_line` varchar(200) NOT NULL,
  `address_line2` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_user_contact_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_groups`
--

CREATE TABLE IF NOT EXISTS `speed_user_groups` (
`groupid` int(11) unsigned NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `permissions` text NOT NULL,
  `ordering` int(11) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `speed_user_groups`
--

INSERT INTO `speed_user_groups` (`groupid`, `group_name`, `permissions`, `ordering`) VALUES
(1, 'Administrator', '*||admin_home:**||home:**', 1);

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_login_attempts`
--

CREATE TABLE IF NOT EXISTS `speed_user_login_attempts` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `attempts` int(11) unsigned NOT NULL DEFAULT '0',
  `last_attempt_at` int(10) NOT NULL DEFAULT '0',
  `suspended` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `suspended_at` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_login_history`
--

CREATE TABLE IF NOT EXISTS `speed_user_login_history` (
`id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `source` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `host` varchar(128) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `meta_value` text NOT NULL,
  `created` int(10) unsigned NOT NULL COMMENT 'login_time',
  `modified` int(10) unsigned NOT NULL COMMENT 'logouttime',
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_options`
--

CREATE TABLE IF NOT EXISTS `speed_user_options` (
`option_id` int(11) NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` mediumtext,
  `created` int(10) NOT NULL,
  `modified` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_permissions`
--

CREATE TABLE IF NOT EXISTS `speed_user_permissions` (
  `fkuserid` varchar(10) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_social`
--

CREATE TABLE IF NOT EXISTS `speed_user_social` (
`social_id` bigint(20) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `fk_provider_id` smallint(5) unsigned NOT NULL,
  `provider` varchar(20) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `session_info` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `speed_user_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_social_providers`
--

CREATE TABLE IF NOT EXISTS `speed_user_social_providers` (
`provider_id` smallint(5) unsigned NOT NULL,
  `provider` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `meta_config` text NOT NULL,
  `options` text NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `speed_user_social_providers`
--

INSERT INTO `speed_user_social_providers` (`provider_id`, `provider`, `title`, `meta_config`, `options`, `is_default`, `status`, `created`, `modified`) VALUES
(1, 'Facebook', 'Facebook', '{"keys":{"id":"115253708549245","secret":"25bd954432ae11b078ad2499ee2783a2"},"scope":"email,publish_actions,offline_access,read_stream,publish_stream"}', '{"post":"1"}', 1, 1, 0, 0),
(2, 'Google', 'Google', '{"keys":{"id":"1083807244832-ea71p861h1iuc7qtvh066ei0oli49saq.apps.googleusercontent.com","secret":"1tYmqriCP4bcN7Wu5uPYxW8S"},"scope":"https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email","access_type":"offline","approval_prompt":"force"}', '{"class":"google"}', 0, 1, 0, 0),
(3, 'Twitter', 'Twitter', '{"keys":{"key":"Zc8FasMhxheOL3EM6SZq7qNc0","secret":"UHxrAQRk416CdGMj6WMC7POMmrsmyMk3a9SMvPSDHN1lpUdbow"}}', '{"post":"1"}', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_to_user`
--

CREATE TABLE IF NOT EXISTS `speed_user_to_user` (
  `fkuserid` varchar(10) NOT NULL,
  `fkuserid1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_trusted_ip`
--

CREATE TABLE IF NOT EXISTS `speed_user_trusted_ip` (
`id` int(10) unsigned NOT NULL,
  `userid` varchar(10) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_whitelist_domains`
--

CREATE TABLE IF NOT EXISTS `speed_whitelist_domains` (
`id` int(10) unsigned NOT NULL,
  `fkuserid` varchar(10) NOT NULL,
  `store_key` varchar(20) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `config_id` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_addon_email_blacklist`
--
ALTER TABLE `speed_addon_email_blacklist`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- Indexes for table `speed_addon_email_logs`
--
ALTER TABLE `speed_addon_email_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_addon_error_logs`
--
ALTER TABLE `speed_addon_error_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed_addon_session`
--
ALTER TABLE `speed_addon_session`
 ADD PRIMARY KEY (`id`), ADD KEY `lastaccess` (`last_access`);

--
-- Indexes for table `speed_addon_shorturls`
--
ALTER TABLE `speed_addon_shorturls`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `shorturl` (`shorturl`), ADD KEY `status` (`status`), ADD KEY `option` (`component`);

--
-- Indexes for table `speed_addon_sms_logs`
--
ALTER TABLE `speed_addon_sms_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_api_users`
--
ALTER TABLE `speed_api_users`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_blog_posts`
--
ALTER TABLE `speed_blog_posts`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `speed_core_cache`
--
ALTER TABLE `speed_core_cache`
 ADD PRIMARY KEY (`cacheid`), ADD KEY `cache_key` (`cache_key`(255));

--
-- Indexes for table `speed_core_components`
--
ALTER TABLE `speed_core_components`
 ADD PRIMARY KEY (`component_id`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_core_menu`
--
ALTER TABLE `speed_core_menu`
 ADD PRIMARY KEY (`menu_id`), ADD KEY `menutype` (`menu_type`), ADD KEY `status` (`status`), ADD KEY `access` (`access`);

--
-- Indexes for table `speed_core_menu_types`
--
ALTER TABLE `speed_core_menu_types`
 ADD PRIMARY KEY (`id`), ADD KEY `menutype` (`menu_type`);

--
-- Indexes for table `speed_core_options`
--
ALTER TABLE `speed_core_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `site` (`fksiteid`,`option_name`);

--
-- Indexes for table `speed_core_permissions`
--
ALTER TABLE `speed_core_permissions`
 ADD PRIMARY KEY (`id`), ADD KEY `status` (`status`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `speed_core_templates`
--
ALTER TABLE `speed_core_templates`
 ADD PRIMARY KEY (`template_id`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_transport_config`
--
ALTER TABLE `speed_transport_config`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`);

--
-- Indexes for table `speed_transport_log`
--
ALTER TABLE `speed_transport_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed_transport_process`
--
ALTER TABLE `speed_transport_process`
 ADD PRIMARY KEY (`id`), ADD KEY `fktransferid` (`fk_transfer_id`), ADD KEY `fkuserid` (`fkuserid`);

--
-- Indexes for table `speed_transport_transfer`
--
ALTER TABLE `speed_transport_transfer`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `fkconfigid` (`fk_source_config_id`);

--
-- Indexes for table `speed_users`
--
ALTER TABLE `speed_users`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_users_online`
--
ALTER TABLE `speed_users_online`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `fksiteid` (`fksiteid`);

--
-- Indexes for table `speed_user_banned_ip`
--
ALTER TABLE `speed_user_banned_ip`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `speed_user_contact_details`
--
ALTER TABLE `speed_user_contact_details`
 ADD UNIQUE KEY `fkuserid` (`fkuserid`);

--
-- Indexes for table `speed_user_groups`
--
ALTER TABLE `speed_user_groups`
 ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `speed_user_login_attempts`
--
ALTER TABLE `speed_user_login_attempts`
 ADD PRIMARY KEY (`id`), ADD KEY `ip_address` (`ip_address`), ADD KEY `username` (`username`);

--
-- Indexes for table `speed_user_login_history`
--
ALTER TABLE `speed_user_login_history`
 ADD PRIMARY KEY (`id`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `status` (`status`);

--
-- Indexes for table `speed_user_options`
--
ALTER TABLE `speed_user_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `fkuserid` (`fkuserid`,`option_name`), ADD KEY `fkuserid2` (`fkuserid`);

--
-- Indexes for table `speed_user_permissions`
--
ALTER TABLE `speed_user_permissions`
 ADD UNIQUE KEY `fkuserid` (`fkuserid`);

--
-- Indexes for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
 ADD PRIMARY KEY (`social_id`), ADD KEY `userid` (`fkuserid`,`fk_provider_id`,`identifier`), ADD KEY `status` (`status`), ADD KEY `fk_provider_id` (`fk_provider_id`);

--
-- Indexes for table `speed_user_social_providers`
--
ALTER TABLE `speed_user_social_providers`
 ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `speed_user_to_user`
--
ALTER TABLE `speed_user_to_user`
 ADD UNIQUE KEY `fkuserid` (`fkuserid`,`fkuserid1`), ADD KEY `fkuserid1` (`fkuserid1`);

--
-- Indexes for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
 ADD PRIMARY KEY (`id`), ADD KEY `userid` (`userid`);

--
-- Indexes for table `speed_whitelist_domains`
--
ALTER TABLE `speed_whitelist_domains`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `domain` (`domain`), ADD KEY `fkuserid` (`fkuserid`), ADD KEY `fkuserid_2` (`fkuserid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speed_addon_email_blacklist`
--
ALTER TABLE `speed_addon_email_blacklist`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_addon_email_logs`
--
ALTER TABLE `speed_addon_email_logs`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_addon_error_logs`
--
ALTER TABLE `speed_addon_error_logs`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_addon_shorturls`
--
ALTER TABLE `speed_addon_shorturls`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_addon_sms_logs`
--
ALTER TABLE `speed_addon_sms_logs`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_api_users`
--
ALTER TABLE `speed_api_users`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_blog_posts`
--
ALTER TABLE `speed_blog_posts`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_cache`
--
ALTER TABLE `speed_core_cache`
MODIFY `cacheid` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_components`
--
ALTER TABLE `speed_core_components`
MODIFY `component_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_menu`
--
ALTER TABLE `speed_core_menu`
MODIFY `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_menu_types`
--
ALTER TABLE `speed_core_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_options`
--
ALTER TABLE `speed_core_options`
MODIFY `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_permissions`
--
ALTER TABLE `speed_core_permissions`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_templates`
--
ALTER TABLE `speed_core_templates`
MODIFY `template_id` int(11) unsigned NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speed_transport_config`
--
ALTER TABLE `speed_transport_config`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_transport_log`
--
ALTER TABLE `speed_transport_log`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_transport_process`
--
ALTER TABLE `speed_transport_process`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_transport_transfer`
--
ALTER TABLE `speed_transport_transfer`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_users_online`
--
ALTER TABLE `speed_users_online`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_banned_ip`
--
ALTER TABLE `speed_user_banned_ip`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_groups`
--
ALTER TABLE `speed_user_groups`
MODIFY `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_login_attempts`
--
ALTER TABLE `speed_user_login_attempts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_login_history`
--
ALTER TABLE `speed_user_login_history`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_options`
--
ALTER TABLE `speed_user_options`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
MODIFY `social_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_social_providers`
--
ALTER TABLE `speed_user_social_providers`
MODIFY `provider_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_whitelist_domains`
--
ALTER TABLE `speed_whitelist_domains`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `speed_api_users`
--
ALTER TABLE `speed_api_users`
ADD CONSTRAINT `speed_api_users_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_core_options`
--
ALTER TABLE `speed_core_options`
ADD CONSTRAINT `speed_core_options_ibfk_1` FOREIGN KEY (`fksiteid`) REFERENCES `speed_whitelist_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_contact_details`
--
ALTER TABLE `speed_user_contact_details`
ADD CONSTRAINT `speed_user_contact_details_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_login_history`
--
ALTER TABLE `speed_user_login_history`
ADD CONSTRAINT `speed_user_login_history_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_options`
--
ALTER TABLE `speed_user_options`
ADD CONSTRAINT `speed_user_options_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_permissions`
--
ALTER TABLE `speed_user_permissions`
ADD CONSTRAINT `speed_user_permissions_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
ADD CONSTRAINT `speed_user_social_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `speed_user_social_ibfk_2` FOREIGN KEY (`fk_provider_id`) REFERENCES `speed_user_social_providers` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_to_user`
--
ALTER TABLE `speed_user_to_user`
ADD CONSTRAINT `speed_user_to_user_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
ADD CONSTRAINT `speed_user_trusted_ip_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_whitelist_domains`
--
ALTER TABLE `speed_whitelist_domains`
ADD CONSTRAINT `speed_whitelist_domains_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
