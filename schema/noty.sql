
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