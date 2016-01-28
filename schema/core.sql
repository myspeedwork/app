
-- --------------------------------------------------------

--
-- Table structure for table `speed_core_components`
--

CREATE TABLE IF NOT EXISTS `speed_core_components` (
  `id` int(11) unsigned NOT NULL,
  `hasconfig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `is_admin` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_content`
--

CREATE TABLE IF NOT EXISTS `speed_core_content` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `post_content` text NOT NULL,
  `meta` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL,
  `modified` int(10) NOT NULL,
  `created` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_menu_types`
--

CREATE TABLE IF NOT EXISTS `speed_core_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menu_type` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_modules`
--

CREATE TABLE IF NOT EXISTS `speed_core_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `access` tinyint(2) NOT NULL DEFAULT '0',
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_permissions`
--

CREATE TABLE IF NOT EXISTS `speed_core_permissions` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_whitelist_domains`
--

CREATE TABLE IF NOT EXISTS `speed_whitelist_domains` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `store_key` varchar(20) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `config_id` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_core_components`
--
ALTER TABLE `speed_core_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `speed_core_content`
--
ALTER TABLE `speed_core_content`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `status` (`status`),
  ADD KEY `fkuserid` (`user_id`);

--
-- Indexes for table `speed_core_menu`
--
ALTER TABLE `speed_core_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menutype` (`menu_type`),
  ADD KEY `status` (`status`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `speed_core_menu_types`
--
ALTER TABLE `speed_core_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menutype` (`menu_type`);

--
-- Indexes for table `speed_core_modules`
--
ALTER TABLE `speed_core_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `speed_core_permissions`
--
ALTER TABLE `speed_core_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `speed_whitelist_domains`
--
ALTER TABLE `speed_whitelist_domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speed_core_components`
--
ALTER TABLE `speed_core_components`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_content`
--
ALTER TABLE `speed_core_content`
  MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `speed_core_modules`
--
ALTER TABLE `speed_core_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `speed_core_content`
--
ALTER TABLE `speed_core_content`
  ADD CONSTRAINT `speed_core_content_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `speed_whitelist_domains`
--
ALTER TABLE `speed_whitelist_domains`
  ADD CONSTRAINT `speed_whitelist_domains_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `speed_users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
