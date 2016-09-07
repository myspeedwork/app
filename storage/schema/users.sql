
-- --------------------------------------------------------

--
-- Table structure for table `speed_users_api`
--

CREATE TABLE IF NOT EXISTS `speed_users_api` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `api_secret` varchar(256) NOT NULL,
  `allowed_ip` text NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `modified` int(10) NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_users_api`
--

INSERT INTO `speed_users_api` (`id`, `user_id`, `api_key`, `api_secret`, `allowed_ip`, `status`, `modified`, `created`) VALUES
(1, '1234567890', '842eff6d7a6f1ebfe55f86462de6f4e7', '842eff6d7a6f1ebfe55f86462de6f4e7234', '', 1, 1451479750, 1451479750);

-- --------------------------------------------------------

--
-- Table structure for table `speed_users`
--

CREATE TABLE IF NOT EXISTS `speed_users` (
  `userid` varchar(10) NOT NULL DEFAULT '',
  `power` int(11) NOT NULL COMMENT 'user group',
  `username` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(150) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `meta` mediumtext NOT NULL,
  `activation_key` varchar(20) NOT NULL,
  `activated_at` int(10) NOT NULL,
  `last_pw_change` int(10) NOT NULL,
  `last_signin` int(10) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_users`
--

INSERT INTO `speed_users` (`userid`, `power`, `username`, `email`, `password`, `token`, `first_name`, `last_name`, `gender`, `mobile`, `avatar`, `meta`, `activation_key`, `activated_at`, `last_pw_change`, `last_signin`, `ip`, `status`, `created`) VALUES
('1234567890', 1, 'sankar.suda', 'sankar.suda@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'e807f1fcf82d132f9bb018ca6738a19f', 'Sankara rao', 'Suda', 'Male', '9916514445', '', '', '', 0, 0, 0, '127.0.0.1', 1, 1453980295);

-- --------------------------------------------------------

--
-- Table structure for table `speed_users_online`
--

CREATE TABLE IF NOT EXISTS `speed_users_online` (
  `user_id` varchar(10) DEFAULT NULL,
  `last_active` int(11) NOT NULL,
  `default_status` tinyint(4) NOT NULL,
  `current_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_contact_details`
--

CREATE TABLE IF NOT EXISTS `speed_user_contact_details` (
  `user_id` varchar(10) NOT NULL,
  `alt_email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `address_line` varchar(200) NOT NULL,
  `address_line2` varchar(200) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_groups`
--

CREATE TABLE IF NOT EXISTS `speed_user_groups` (
  `groupid` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `permissions` text NOT NULL,
  `ordering` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_user_groups`
--

INSERT INTO `speed_user_groups` (`groupid`, `name`, `display_name`, `permissions`, `ordering`) VALUES
(1, 'Administrator', 'Administrator', '{"include":["home:**","*","admin_home:**"]}', 1),
(2, 'Staff Members', 'Staff Members', '{"include":["home:**","*"]}', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_login_history`
--

CREATE TABLE IF NOT EXISTS `speed_user_login_history` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `source` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `host` varchar(128) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `meta` text NOT NULL,
  `created` int(10) unsigned NOT NULL COMMENT 'login_time',
  `modified` int(10) unsigned NOT NULL COMMENT 'logouttime',
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_options`
--

CREATE TABLE IF NOT EXISTS `speed_user_options` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` mediumtext,
  `created` int(10) NOT NULL,
  `modified` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_permissions`
--

CREATE TABLE IF NOT EXISTS `speed_user_permissions` (
  `user_id` varchar(10) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_social`
--

CREATE TABLE IF NOT EXISTS `speed_user_social` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `provider_id` smallint(5) unsigned NOT NULL,
  `provider` varchar(20) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `session_info` text NOT NULL,
  `profile` text NOT NULL,
  `modified` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_social_providers`
--

CREATE TABLE IF NOT EXISTS `speed_user_social_providers` (
  `provider_id` smallint(5) unsigned NOT NULL,
  `provider` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `meta` text NOT NULL,
  `options` text NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL,
  `ordering` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_to_group`
--

CREATE TABLE IF NOT EXISTS `speed_user_to_group` (
  `user_id` varchar(10) NOT NULL,
  `group_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_to_user`
--

CREATE TABLE IF NOT EXISTS `speed_user_to_user` (
  `parent_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_user_trusted_ip`
--

CREATE TABLE IF NOT EXISTS `speed_user_trusted_ip` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `modified` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `speed_users_online_view`
--
DROP VIEW IF EXISTS `speed_users_online_view`;

CREATE VIEW `speed_users_online_view` AS select `speed_users_online`.`user_id` AS `user_id`,(case when (`speed_users_online`.`default_status` <> 1) then `speed_users_online`.`default_status` when (`speed_users_online`.`last_active` > (unix_timestamp() - ((1000 * 60) * 5))) then `speed_users_online`.`current_status` end) AS `online`,`speed_users_online`.`last_active` AS `last_seen` from `speed_users_online`;

-- --------------------------------------------------------

--
-- Structure for view `speed_users_view`
--
DROP VIEW IF EXISTS `speed_users_view`;

CREATE VIEW `speed_users_view` AS select `u`.`userid` AS `userid`,`u`.`power` AS `power`,`u`.`email` AS `email`,`u`.`username` AS `username`,`u`.`gender` AS `gender`,`u`.`mobile` AS `mobile`,(case `u`.`avatar` when '' then 'nophoto.png' else `u`.`avatar` end) AS `avatar`,replace(concat(`u`.`first_name`,' ',`u`.`last_name`),'  ',' ') AS `name`,concat('@',`u`.`username`) AS `user`,`u`.`status` AS `active`,`u`.`created` AS `since`,if(`o`.`online`,`o`.`online`,0) AS `online`,`o`.`last_seen` AS `last_seen` from (`speed_users` `u` left join `speed_users_online_view` `o` on((`u`.`userid` = convert(`o`.`user_id` using utf8))));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_users_api`
--
ALTER TABLE `speed_users_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkuserid` (`user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `api_key` (`api_key`);

--
-- Indexes for table `speed_users`
--
ALTER TABLE `speed_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `speed_users_online`
--
ALTER TABLE `speed_users_online`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `speed_user_banned_ip`
--
ALTER TABLE `speed_user_banned_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `speed_user_contact_details`
--
ALTER TABLE `speed_user_contact_details`
  ADD UNIQUE KEY `fkuserid` (`user_id`);

--
-- Indexes for table `speed_user_groups`
--
ALTER TABLE `speed_user_groups`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `speed_user_login_attempts`
--
ALTER TABLE `speed_user_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `speed_user_login_history`
--
ALTER TABLE `speed_user_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkuserid` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `speed_user_options`
--
ALTER TABLE `speed_user_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`user_id`,`option_name`),
  ADD KEY `fkuserid2` (`user_id`);

--
-- Indexes for table `speed_user_permissions`
--
ALTER TABLE `speed_user_permissions`
  ADD UNIQUE KEY `fkuserid` (`user_id`);

--
-- Indexes for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`user_id`,`provider_id`,`identifier`),
  ADD KEY `status` (`status`),
  ADD KEY `fk_provider_id` (`provider_id`);

--
-- Indexes for table `speed_user_social_providers`
--
ALTER TABLE `speed_user_social_providers`
  ADD PRIMARY KEY (`provider_id`),
  ADD UNIQUE KEY `provider` (`provider`);

--
-- Indexes for table `speed_user_to_group`
--
ALTER TABLE `speed_user_to_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `speed_user_to_user`
--
ALTER TABLE `speed_user_to_user`
  ADD UNIQUE KEY `fkuserid` (`parent_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speed_users_api`
--
ALTER TABLE `speed_users_api`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `speed_user_banned_ip`
--
ALTER TABLE `speed_user_banned_ip`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_groups`
--
ALTER TABLE `speed_user_groups`
  MODIFY `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_user_social_providers`
--
ALTER TABLE `speed_user_social_providers`
  MODIFY `provider_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `speed_users_api`
--
ALTER TABLE `speed_users_api`
  ADD CONSTRAINT `speed_users_api_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_login_history`
--
ALTER TABLE `speed_user_login_history`
  ADD CONSTRAINT `speed_user_login_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_options`
--
ALTER TABLE `speed_user_options`
  ADD CONSTRAINT `speed_user_options_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_permissions`
--
ALTER TABLE `speed_user_permissions`
  ADD CONSTRAINT `speed_user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_social`
--
ALTER TABLE `speed_user_social`
  ADD CONSTRAINT `speed_user_social_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `speed_user_social_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `speed_user_social_providers` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_to_group`
--
ALTER TABLE `speed_user_to_group`
  ADD CONSTRAINT `speed_user_to_group_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `speed_user_to_group_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `speed_user_groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_to_user`
--
ALTER TABLE `speed_user_to_user`
  ADD CONSTRAINT `speed_user_to_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_user_trusted_ip`
--
ALTER TABLE `speed_user_trusted_ip`
  ADD CONSTRAINT `speed_user_trusted_ip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
