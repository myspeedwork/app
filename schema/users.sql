-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2015 at 11:16 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ezo`
--

-- --------------------------------------------------------

--
-- Table structure for table `speed_users`
--

CREATE TABLE IF NOT EXISTS `speed_users` (
  `userid` varchar(10) NOT NULL,
  `power` int(11) NOT NULL COMMENT 'user group',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
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

INSERT INTO `speed_users` (`userid`, `power`, `first_name`, `last_name`, `password`, `email`, `mobile`, `company`, `meta_value`, `activation_key`, `activated_at`, `last_pw_change`, `last_signin`, `ip`, `status`, `created`, `fksiteid`) VALUES
('1234567890', 1, 'Sankara Rao', 'Suda', '5f4dcc3b5aa765d61d8327deb882cf99', 'sankar.suda@gmail.com', '9019955622', 'Solutions Infini Technologies', '', '1234', 1431656123, 1431628594, 1431963187, '127.0.0.1', 1, 2014, 1),

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
  `address_line` varchar(200) NOT NULL,
  `address_line2` varchar(200) NOT NULL,
  `alt_email` varchar(100) NOT NULL,
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

INSERT INTO `speed_user_contact_details` (`fkuserid`, `address_line`, `address_line2`, `alt_email`, `phone`, `fax`, `website`, `city`, `state`, `country`, `zipcode`) VALUES
('1234567890', '#45/B, 1st Floor, 1st A Main, Sarakki Industrial', 'Layout, 3rd Phase, JP Nagar, Bangalore - 560078', 'sankar@2stechno.com', '9019955622', '', '', 'Bangalore', 'Karanataka', 'India', '560078');

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_groups`
--

CREATE TABLE IF NOT EXISTS `speed_user_groups` (
`groupid` int(11) unsigned NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `permissions` text NOT NULL,
  `ordering` int(11) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(2, 'Google', 'Google', '{"keys":{"id":"1083807244832-ea71p861h1iuc7qtvh066ei0oli49saq.apps.googleusercontent.com","secret":"1tYmqriCP4bcN7Wu5uPYxW8S"},"scope":"https://www.googleapis.com/auth/acl.profile https://www.googleapis.com/auth/acl.email","access_type":"offline","approval_prompt":"force"}', '{"class":"google"}', 0, 1, 0, 0),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_users`
--
ALTER TABLE `speed_users`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `mobile` (`mobile`), ADD KEY `status` (`status`);

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
-- AUTO_INCREMENT for dumped tables
--

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
MODIFY `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `provider_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

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


CREATE TABLE IF NOT EXISTS `speed_api_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fkuserid` varchar(10) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_secret` varchar(256) NOT NULL,
  `allowed_ip` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `modified` int(10) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkuserid` (`fkuserid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `speed_api_users`
--
ALTER TABLE `speed_api_users`
  ADD CONSTRAINT `speed_api_users_ibfk_1` FOREIGN KEY (`fkuserid`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
