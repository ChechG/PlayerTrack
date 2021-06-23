USE playerTrack_db;
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` varchar(60) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `user` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
);

LOCK TABLES `staff` WRITE;
INSERT INTO `staff` VALUES (100, 'Coach', 'Carter', 'CCarter', 'CC1234');
UNLOCK TABLES;
