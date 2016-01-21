
--
-- Table structure for table `speed_core_templates`
--

CREATE TABLE IF NOT EXISTS `speed_core_templates` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  `version` varchar(5) DEFAULT NULL,
  `config` text NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_template_modules`
--

CREATE TABLE IF NOT EXISTS `speed_core_template_modules` (
  `id` bigint(20) unsigned NOT NULL,
  `theme_id` int(11) unsigned NOT NULL,
  `component_id` int(11) unsigned NOT NULL,
  `module_id` int(11) unsigned NOT NULL,
  `position` varchar(100) NOT NULL,
  `ordering` int(11) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_core_template_positions`
--

CREATE TABLE IF NOT EXISTS `speed_core_template_positions` (
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed_core_template_positions`
--

INSERT INTO `speed_core_template_positions` (`position`) VALUES
('banner'),
('bottom'),
('breadcrumb'),
('center'),
('component'),
('debug'),
('footer'),
('left'),
('right'),
('syndicate'),
('top'),
('user1'),
('user2'),
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8'),
('user9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speed_core_templates`
--
ALTER TABLE `speed_core_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `speed_core_template_modules`
--
ALTER TABLE `speed_core_template_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `theme_id_2` (`theme_id`,`component_id`,`position`);

--
-- Indexes for table `speed_core_template_positions`
--
ALTER TABLE `speed_core_template_positions`
  ADD PRIMARY KEY (`position`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speed_core_templates`
--
ALTER TABLE `speed_core_templates`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_core_template_modules`
--
ALTER TABLE `speed_core_template_modules`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;