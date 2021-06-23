DROP DATABASE IF EXISTS playerTrack_db;
CREATE DATABASE IF NOT EXISTS playerTrack_db;
CREATE USER IF NOT EXISTS `julian`@`localhost`;
SET PASSWORD FOR `julian`@`localhost` = 'bvb';
CREATE USER IF NOT EXISTS `checha`@`localhost`;
SET PASSWORD FOR `checha`@`localhost` = 'liv';
CREATE USER IF NOT EXISTS `sole`@`localhost`;
SET PASSWORD FOR `sole`@`localhost` = 'cap';
GRANT ALL PRIVILEGES ON `playerTrack_db`.* TO `julian`@`localhost`;
GRANT ALL PRIVILEGES ON `playerTrack_db`.* TO `checha`@`localhost`;
GRANT ALL PRIVILEGES ON `playerTrack_db`.* TO `sole`@`localhost`;
GRANT SELECT ON `performance_schema`.* TO `julian`@`localhost`;
GRANT SELECT ON `performance_schema`.* TO `checha`@`localhost`;
GRANT SELECT ON `performance_schema`.* TO `sole`@`localhost`;
FLUSH PRIVILEGES;

USE playerTrack_db;
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
    `id` int NOT NULL AUTO_INCREMENT,
    `first_name` varchar(128) NOT NULL,
    `last_name` varchar(128) NOT NULL,
    `position` varchar(128) NOT NULL,
    `user` varchar(128) NOT NULL,
    `password` varchar(128) NOT NULL,
    PRIMARY KEY (`id`)
);

LOCK TABLES `players` WRITE;
INSERT INTO `players` VALUES (1000, 'Brian', 'Roberts', 'Back Row', 'BRoberts', 'BR1234'), (1001, 'Luke', 'Patterson', 'Back Row', 'LPatterson', 'LP1234'), ('1002', 'Ryan', 'Crawford', 'Hooker', 'RCrawford', 'RC1234'), (1003, 'Gareth', 'Smith', 'Hooker', 'GSmith', 'GS1234'), (1004, 'Michael', 'Butler', 'Prop', 'MButler', 'MB1234'), (1005, 'John', 'Clarkson', 'Prop', 'JClarkson', 'JC1234');
UNLOCK TABLES;

DROP TABLE IF EXISTS `matches_BRoberts`;
CREATE TABLE `matches_BRoberts` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);

DROP TABLE IF EXISTS `matches_LPatterson`;
CREATE TABLE `matches_LPatterson` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);


DROP TABLE IF EXISTS `matches_RCrawford`;
CREATE TABLE `matches_RCrawford` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);


DROP TABLE IF EXISTS `matches_GSmith`;
CREATE TABLE `matches_GSmith` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);


DROP TABLE IF EXISTS `matches_MButler`;
CREATE TABLE `matches_MButler` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);


DROP TABLE IF EXISTS `matches_JClarkson`;
CREATE TABLE `matches_JClarkson` (
  `id` int NOT NULL,
  `opponent` varchar(60) NOT NULL,
  `date` datetime NOT NULL,
  `minutes` int,
  `distance` int,
  `HSR` int,
  `HMLD` int,
  `accelerations` int,
  `decelerations` int,
  `max-speed` float,
  `collisions` int
);


DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` varchar(60) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `user` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
);

LOCK TABLES `matches_RCrawford` WRITE;
INSERT INTO `matches_RCrawford` VALUES (1002, 'Rhinos', '2021-03-16', 30, 1992, 0, 88, 11, 11, 18.2, 9), (1002, 'Pythons', '2021-03-21', 55, 4251, 37, 382, 13, 16, 22.1, 9), (1002, 'Grizzlies', '2021-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1002, 'Grey Wolves', '2021-03-30', 60, 3912, 24, 281, 13, 13, 24, 14), (1002, 'Scorpions', '2021-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1002, 'Rhinos', '2021-04-11', 50, 4399, 78, 447, 23, 31, 21, 19), (1002, 'Pythons', '2021-04-16', 44, 3405, 3, 286, 15, 31, 20.7, 12), (1002, 'Grizzlies', '2021-04-21', 45, 3376, 5, 224, 9, 7, 29.8, 4), (1002, 'Grey Wolves', '2021-04-26', 38, 2680, 0, 185, 13, 14, 19.5, 13), (1002, 'Scorpions', '2021-05-01', 50, 4189, 81, 425, 18, 21, 24.1, 14), (1002, 'Grey Wolves', '2021-05-08', 60, 4044, 27, 288, 21, 21, 22.7, 15), (1002, 'Scorpions', '2021-05-15', 58, 5215, 21, 396, 30, 29, 23.75, 16);
UNLOCK TABLES;

LOCK TABLES `matches_GSmith` WRITE;
INSERT INTO `matches_GSmith` VALUES (1003, 'Rhinos', '2021-03-16', 60, 4169, 57, 423, 22, 23, 23.8, 15), (1003, 'Pythons', '2021-03-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1003, 'Grizzlies', '2021-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1003, 'Grey Wolves', '2021-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1003, 'Scorpions', '2021-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1003, 'Rhinos', '2021-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1003, 'Pythons', '2021-04-16', 40, 2883, 28, 317, 10, 17, 25.5, 10), (1003, 'Grizzlies', '2021-04-21', 49, 4414, 44, 412, 10, 27, 24.7, 20), (1003, 'Grey Wolves', '2021-04-26', 23, 1917, 8, 186, 6, 12, 20.4, 6), (1003, 'Scorpions', '2021-05-01', 68, 5962, 59, 610, 22, 30, 24.2, 28), (1003, 'Grey Wolves', '2021-08-05', 60, 4437, 12, 331, 16, 18, 22.8, 14), (1003, 'Scorpions', '2021-05-15', 53, 5075, 18, 462, 22, 40, 21.98, 17);
UNLOCK TABLES;

LOCK TABLES `matches_BRoberts` WRITE;
INSERT INTO `matches_BRoberts` VALUES (1000, 'Rhinos', '2021-03-16', 55, 3163, 34, 263, 14, 19, 23.2, 0), (1000, 'Pythons', '2021-03-21', 25, 2174, 8, 224, 17, 18, 20.9, 17), (1000, 'Grizzlies', '2021-03-25', 45, 3439, 35, 316, 17, 26, 24.2, 18), (1000, 'Grey Wolves', '2021-03-30', 20, 1635, 41, 178, 16, 17, 25.9, 13), (1000, 'Scorpions', '2021-04-04', 20, 1525, 4, 132, 12, 19, 22.3, 10), (1000, 'Rhinos', '2021-04-11', 30, 1851, 5, 166, 8, 10, 22.4, 10), (1000, 'Pythons', '2021-04-16', 35, 2612, 14, 189, 12, 15, 21.8, 8), (1000, 'Grizzlies', '2021-04-21', 36, 2653, 16, 200, 8, 17, 21.1, 8), (1000, 'Grey Wolves', '2021-04-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1000, 'Scorpions', '2021-05-01', 30, 2155, 3, 175, 6, 8, 20.3, 0), (1000, 'Grey Wolves', '2021-05-08', 20, 1266, 9, 110, 10, 9, 21.2, 11), (1000, 'Scorpions', '2021-05-15', 22, 1719, 30, 222, 12, 15, 22.8, 7);
UNLOCK TABLES;

LOCK TABLES `matches_LPatterson` WRITE;
INSERT INTO `matches_LPatterson` VALUES (1001, 'Rhinos', '2021-03-16', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1001, 'Pythons', '2021-03-21', 80, 6005, 239, 816, 50, 52, 28, 39), (1001, 'Grizzlies', '2021-03-25', 70, 4684, 205, 619, 40, 35, 26.6, 29), (1001, 'Grey Wolves', '2021-03-30', 80, 6180, 80, 275, 48, 40, 30.3, 33), (1001, 'Scorpions', '2021-04-04', 80, 5613, 239, 834, 62, 59, 28.7, 48), (1001, 'Rhinos', '2021-04-11', 65, 4488, 120, 640, 34, 32, 26.8, 26), (1001, 'Pythons', '2021-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1001, 'Grizzlies', '2021-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1001, 'Grey Wolves', '2021-04-26', 33, 2581, 79, 323, 19, 26, 27.4, 13), (1001, 'Scorpions', '2021-05-01', 80, 6394, 263, 1015, 51, 60, 32.6, 33), (1001, 'Grey Wolves', '2021-05-08', 80, 5548, 122, 723, 43, 53, 32.2, 31), (1001, 'Scorpions', '2021-05-15', 80, 7088, 384, 1167, 60, 65, 28.86, 30);
UNLOCK TABLES;

LOCK TABLES `matches_MButler` WRITE;
INSERT INTO `matches_MButler` VALUES (1004, 'Rhinos', '2021-03-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Pythons', '2021-03-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Grizzlies', '2021-03-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Grey Wolves', '2021-03-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Scorpions', '2021-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Rhinos', '2021-04-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Pythons', '2021-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Grizzlies', '2021-04-21', 31, 2308, 38, 323, 6, 7, 22.4, 10), (1004, 'Grey Wolves', '2021-04-26', 42, 3760, 132, 562, 38, 26, 40.8, 7), (1004, 'Scorpions', '2021-05-01', 25, 1715, 36, 194, 7, 6, 22.2, 3), (1004, 'Grey Wolves', '2021-05-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1004, 'Scorpions', '2021-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UNLOCK TABLES;

LOCK TABLES `matches_JClarkson` WRITE;
INSERT INTO `matches_JClarkson` VALUES (1005, 'Rhinos', '2021-03-16', 50, 3312, 92, 341, 21, 21, 25.5, 20), (1005, 'Pythons', '2021-03-21', 50, 3785, 85, 390, 21, 23, 23.4, 19), (1005, 'Grizzlies', '2021-03-25', 25, 2278, 9, 192, 13, 17, 23.5, 11), (1005, 'Grey Wolves', '2021-03-30', 20, 1645, 38, 183, 16, 12, 26.4, 12), (1005, 'Scorpions', '2021-04-04', 60, 4614, 26, 395, 31, 33, 22.1, 32), (1005, 'Rhinos', '2021-04-11', 30, 1982, 55, 272, 25, 20, 26.6, 7), (1005, 'Pythons', '2021-04-16', 18, 1813, 29, 177, 8, 16, 24.3, 10), (1005, 'Grizzlies', '2021-04-21', 49, 4063, 58, 407, 6, 17, 27.6, 10), (1005, 'Grey Wolves', '2021-04-26', 42, 3541, 22, 331, 28, 22, 21.7, 11), (1005, 'Scorpions', '2021-05-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1005, 'Grey Wolves', '2021-05-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), (1005, 'Scorpions', '2021-05-15', 10, 783, 36, 95, 9, 6, 25.93, 2);
UNLOCK TABLES;
