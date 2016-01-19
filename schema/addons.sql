-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2016 at 11:37 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=164 ;

-- --------------------------------------------------------

--
-- Table structure for table `speed_addon_metainfo`
--

CREATE TABLE IF NOT EXISTS `speed_addon_metainfo` (
`id` bigint(20) unsigned NOT NULL,
  `uniqid` varchar(20) NOT NULL,
  `component` varchar(100) NOT NULL,
  `url` varchar(256) NOT NULL,
  `canonical` mediumtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `descn` mediumtext,
  `keywords` mediumtext,
  `meta` text NOT NULL,
  `created` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
-- Indexes for table `speed_addon_metainfo`
--
ALTER TABLE `speed_addon_metainfo`
 ADD PRIMARY KEY (`id`), ADD KEY `uniqid` (`uniqid`), ADD KEY `status` (`status`), ADD KEY `component` (`component`);

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
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `speed_addon_metainfo`
--
ALTER TABLE `speed_addon_metainfo`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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