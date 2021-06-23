USE playerTrack_db;
DROP TABLE IF EXISTS `daily_BRoberts`;
CREATE TABLE `daily_BRoberts` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255) NOT NULL,
    PRIMARY KEY (`date`)
);

DROP TABLE IF EXISTS `daily_LPatterson`;
CREATE TABLE `daily_LPatterson` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255) NOT NULL,
    PRIMARY KEY (`date`)
);

DROP TABLE IF EXISTS `daily_RCrawford`;
CREATE TABLE `daily_RCrawford` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255) NOT NULL,
    PRIMARY KEY (`date`)
);

DROP TABLE IF EXISTS `daily_GSmith`;
CREATE TABLE `daily_GSmith` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255),
    PRIMARY KEY (`date`)
);

DROP TABLE IF EXISTS `daily_MButler`;
CREATE TABLE `daily_MButler` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255),
    PRIMARY KEY (`date`)
);

DROP TABLE IF EXISTS `daily_JClarkson`;
CREATE TABLE `daily_JClarkson` (
    `id` int NOT NULL,
    `date` datetime NOT NULL,
    `weight` float NOT NULL,
    `energy` float NOT NULL,
    `sleep` float NOT NULL,
    `pain` float NOT NULL,
    `description` varchar(255),
    PRIMARY KEY (`date`)
);

LOCK TABLES `daily_GSmith` WRITE;
INSERT INTO `daily_GSmith` VALUES (1003, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "nothing");
UNLOCK TABLES;

LOCK TABLES `daily_RCrawford` WRITE;
INSERT INTO `daily_RCrawford` VALUES (1002, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "everything");
UNLOCK TABLES;

LOCK TABLES `daily_BRoberts` WRITE;
INSERT INTO `daily_BRoberts` VALUES (1000, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "no pain");
UNLOCK TABLES;

LOCK TABLES `daily_LPatterson` WRITE;
INSERT INTO `daily_LPatterson` VALUES (1001, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "pain");
UNLOCK TABLES;

LOCK TABLES `daily_MButler` WRITE;
INSERT INTO `daily_MButler` VALUES (1004, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "no pain");
UNLOCK TABLES;

LOCK TABLES `daily_JClarkson` WRITE;
INSERT INTO `daily_JClarkson` VALUES (1005, '2021-06-01', 100.2, 4.0, 5.0, 4.0, "no pain");
UNLOCK TABLES;
