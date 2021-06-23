USE playerTrack_db;
DROP TABLE IF EXISTS `injuries`;
CREATE TABLE `injuries` (
    `id` int NOT NULL AUTO_INCREMENT,
    `date` datetime NOT NULL,
    `description` varchar(255) NOT NULL,
    `date_recovered` datetime DEFAULT NULL,
    `player_id` int NOT NULL,
    PRIMARY KEY (`id`)
);

LOCK TABLES `injuries` WRITE;
INSERT INTO `injuries` VALUES (1, '2021-06-01', 'Broken Nose', NULL, 1003);
INSERT INTO `injuries` VALUES (2, '2021-06-01', 'Ankle Sprain', NULL, 1000);
INSERT INTO `injuries` VALUES (3, '2021-06-01', 'Calf Tear', NULL, 1001);
INSERT INTO `injuries` VALUES (4, '2021-06-01', 'Shoulder Dislocation', NULL, 1002);
UNLOCK TABLES;
