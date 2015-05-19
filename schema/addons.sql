
--
-- Table structure for table `speed_addon_email_blacklist`
--

CREATE TABLE IF NOT EXISTS `speed_addon_email_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=351 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_email_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_email_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_email` varchar(100) NOT NULL,
  `to_email` varchar(256) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reason` varchar(200) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3775 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_error_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_error_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(50) NOT NULL,
  `log_message` text NOT NULL,
  `error_file` varchar(200) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_session`
--

CREATE TABLE IF NOT EXISTS `speed_addon_session` (
  `id` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `last_access` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastaccess` (`last_access`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_shorturls`
--

CREATE TABLE IF NOT EXISTS `speed_addon_shorturls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redirect` varchar(5) NOT NULL,
  `component` varchar(50) NOT NULL,
  `uniqid` varchar(50) NOT NULL,
  `short_url` varchar(255) NOT NULL,
  `original_url` varchar(255) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shorturl` (`short_url`),
  KEY `status` (`status`),
  KEY `option` (`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_sms_blacklist`
--

CREATE TABLE IF NOT EXISTS `speed_addon_sms_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL,
  `created` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_sms_logs`
--

CREATE TABLE IF NOT EXISTS `speed_addon_sms_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `message` mediumtext NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
