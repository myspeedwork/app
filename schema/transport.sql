
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
