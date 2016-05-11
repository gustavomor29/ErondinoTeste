-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: erondino17
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_viplist`
--

DROP TABLE IF EXISTS `account_viplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_viplist` (
  `account_id` int(11) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  UNIQUE KEY `account_id_2` (`account_id`,`player_id`),
  KEY `account_id` (`account_id`),
  KEY `player_id` (`player_id`),
  KEY `world_id` (`world_id`),
  CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_viplist`
--

LOCK TABLES `account_viplist` WRITE;
/*!40000 ALTER TABLE `account_viplist` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_viplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `premdays` int(11) NOT NULL DEFAULT '0',
  `lastday` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(20) NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'internal usage',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'1','1',65535,1462468457,'','0',0,0,1),(2,'teste321','teste123',0,1462469305,'','0',0,0,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ondelete_accounts`
BEFORE DELETE
ON `accounts`
FOR EACH ROW
BEGIN
	DELETE FROM `bans` WHERE `type` IN (3, 4) AND `value` = OLD.`id`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '1 - ip banishment, 2 - namelock, 3 - account banishment, 4 - notation, 5 - deletion',
  `value` int(10) unsigned NOT NULL COMMENT 'ip address (integer), player guid or account number',
  `param` int(10) unsigned NOT NULL DEFAULT '4294967295' COMMENT 'used only for ip banishment mask (integer)',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `expires` int(11) NOT NULL,
  `added` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `reason` int(10) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `statement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`value`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environment_killers`
--

DROP TABLE IF EXISTS `environment_killers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `environment_killers` (
  `kill_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `kill_id` (`kill_id`),
  CONSTRAINT `environment_killers_ibfk_1` FOREIGN KEY (`kill_id`) REFERENCES `killers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environment_killers`
--

LOCK TABLES `environment_killers` WRITE;
/*!40000 ALTER TABLE `environment_killers` DISABLE KEYS */;
/*!40000 ALTER TABLE `environment_killers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_storage`
--

DROP TABLE IF EXISTS `global_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_storage` (
  `key` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '0',
  UNIQUE KEY `key` (`key`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_storage`
--

LOCK TABLES `global_storage` WRITE;
/*!40000 ALTER TABLE `global_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_invites`
--

DROP TABLE IF EXISTS `guild_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `guild_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id` (`player_id`,`guild_id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_invites`
--

LOCK TABLES `guild_invites` WRITE;
/*!40000 ALTER TABLE `guild_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_ranks`
--

DROP TABLE IF EXISTS `guild_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL COMMENT '1 - leader, 2 - vice leader, 3 - member',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_ranks`
--

LOCK TABLES `guild_ranks` WRITE;
/*!40000 ALTER TABLE `guild_ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guilds`
--

DROP TABLE IF EXISTS `guilds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guilds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guilds`
--

LOCK TABLES `guilds` WRITE;
/*!40000 ALTER TABLE `guilds` DISABLE KEYS */;
/*!40000 ALTER TABLE `guilds` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `oncreate_guilds`
AFTER INSERT
ON `guilds`
FOR EACH ROW
BEGIN
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Leader', 3, NEW.`id`);
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
	INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ondelete_guilds`
BEFORE DELETE
ON `guilds`
FOR EACH ROW
BEGIN
	UPDATE `players` SET `guildnick` = '', `rank_id` = 0 WHERE `rank_id` IN (SELECT `id` FROM `guild_ranks` WHERE `guild_id` = OLD.`id`);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `house_auctions`
--

DROP TABLE IF EXISTS `house_auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_auctions` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL,
  `bid` int(10) unsigned NOT NULL DEFAULT '0',
  `limit` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `house_id` (`house_id`,`world_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `house_auctions_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE,
  CONSTRAINT `house_auctions_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_auctions`
--

LOCK TABLES `house_auctions` WRITE;
/*!40000 ALTER TABLE `house_auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_data`
--

DROP TABLE IF EXISTS `house_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_data` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  UNIQUE KEY `house_id` (`house_id`,`world_id`),
  CONSTRAINT `house_data_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_data`
--

LOCK TABLES `house_data` WRITE;
/*!40000 ALTER TABLE `house_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_lists`
--

DROP TABLE IF EXISTS `house_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house_lists` (
  `house_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  UNIQUE KEY `house_id` (`house_id`,`world_id`,`listid`),
  CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_lists`
--

LOCK TABLES `house_lists` WRITE;
/*!40000 ALTER TABLE `house_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `lastwarning` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `town` int(10) unsigned NOT NULL DEFAULT '0',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `rent` int(10) unsigned NOT NULL DEFAULT '0',
  `doors` int(10) unsigned NOT NULL DEFAULT '0',
  `beds` int(10) unsigned NOT NULL DEFAULT '0',
  `tiles` int(10) unsigned NOT NULL DEFAULT '0',
  `guild` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (1,0,0,0,0,0,'Unnamed House #1',6,85,282000,0,2,0,94,0,0),(2,0,0,0,0,0,'Unnamed House #2',6,76,240000,0,1,2,80,0,0),(3,0,0,0,0,0,'Unnamed House #3',6,94,297000,0,1,2,99,0,0),(4,0,0,0,0,0,'Unnamed House #4',6,141,492000,0,1,2,164,0,0),(5,0,0,0,0,0,'Unnamed House #5',6,145,522000,0,1,2,174,0,0),(6,0,0,0,0,0,'Unnamed House #6',6,142,489000,0,1,2,163,0,0),(7,0,0,0,0,0,'Unnamed House #7',6,102,336000,0,1,2,112,0,0),(8,0,0,0,0,0,'Unnamed House #8',6,297,1017000,0,1,2,339,0,0),(9,0,0,0,0,0,'Unnamed House #9',6,130,405000,0,1,2,135,0,0),(10,0,0,0,0,0,'Unnamed House #10',6,93,309000,0,1,2,103,0,0),(11,0,0,0,0,0,'Unnamed House #11',1,27,84000,0,1,0,28,0,0),(12,0,0,0,0,0,'Unnamed House #12',1,27,84000,0,1,0,28,0,0),(13,0,0,0,0,0,'Unnamed House #13',1,135,435000,0,2,0,145,0,0),(14,0,0,0,0,0,'Unnamed House #14',1,136,435000,0,2,0,145,0,0),(15,0,0,0,0,0,'Unnamed House #15',1,160,567000,0,3,0,189,0,0),(16,0,0,0,0,0,'Unnamed House #16',1,16,57000,0,1,2,19,0,0),(17,0,0,0,0,0,'Unnamed House #17',1,23,81000,0,1,2,27,0,0),(18,0,0,0,0,0,'Unnamed House #18',1,18,63000,0,1,2,21,0,0),(19,0,0,0,0,0,'Unnamed House #19',1,54,171000,0,1,2,57,0,0),(20,0,0,0,0,0,'Unnamed House #20',1,45,144000,0,1,2,48,0,0),(22,0,0,0,0,0,'Unnamed House #22',1,16,51000,0,1,0,17,0,0),(23,0,0,0,0,0,'Unnamed House #23',1,18,63000,0,1,2,21,0,0),(24,0,0,0,0,0,'Unnamed House #24',1,16,51000,0,1,0,17,0,0),(25,0,0,0,0,0,'Unnamed House #25',1,56,186000,0,3,2,62,0,0),(26,0,0,0,0,0,'Unnamed House #26',1,26,87000,0,1,2,29,0,0),(27,0,0,0,0,0,'Unnamed House #27',1,56,183000,0,3,2,61,0,0),(28,0,0,0,0,0,'Unnamed House #28',1,19,69000,0,1,2,23,0,0),(29,0,0,0,0,0,'Unnamed House #29',1,36,123000,0,1,4,41,0,0),(30,0,0,0,0,0,'Unnamed House #30',1,30,99000,0,1,2,33,0,0),(31,0,0,0,0,0,'Unnamed House #31',1,45,150000,0,1,4,50,0,0),(32,0,0,0,0,0,'Unnamed House #32',1,45,150000,0,1,4,50,0,0),(33,0,0,0,0,0,'Unnamed House #33',1,40,123000,0,1,0,41,0,0),(34,0,0,0,0,0,'Unnamed House #34',1,38,126000,0,1,2,42,0,0),(35,0,0,0,0,0,'Unnamed House #35',1,45,150000,0,1,4,50,0,0),(36,0,0,0,0,0,'Unnamed House #36',1,45,150000,0,1,4,50,0,0),(37,0,0,0,0,0,'Unnamed House #37',1,49,150000,0,1,0,50,0,0),(38,0,0,0,0,0,'Unnamed House #38',1,10,33000,0,1,0,11,0,0),(39,0,0,0,0,0,'Unnamed House #39',1,28,87000,0,1,0,29,0,0),(40,0,0,0,0,0,'Unnamed House #40',1,49,150000,0,1,0,50,0,0),(41,0,0,0,0,0,'Unnamed House #41',1,30,96000,0,2,0,32,0,0),(42,0,0,0,0,0,'Unnamed House #42',1,36,114000,0,2,0,38,0,0),(43,0,0,0,0,0,'Unnamed House #43',1,40,123000,0,1,0,41,0,0),(44,0,0,0,0,0,'Unnamed House #44',1,24,75000,0,1,0,25,0,0),(45,0,0,0,0,0,'Unnamed House #45',1,72,219000,0,1,0,73,0,0),(46,0,0,0,0,0,'Unnamed House #46',1,98,297000,0,1,0,99,0,0),(47,0,0,0,0,0,'Unnamed House #47',1,48,150000,0,1,0,50,0,0),(48,0,0,0,0,0,'Unnamed House #48',1,18,60000,0,1,0,20,0,0),(49,0,0,0,0,0,'Unnamed House #49',1,49,150000,0,1,0,50,0,0),(50,0,0,0,0,0,'Unnamed House #50',1,49,153000,0,1,0,51,0,0),(51,0,0,0,0,0,'Unnamed House #51',1,49,150000,0,1,0,50,0,0),(52,0,0,0,0,0,'Unnamed House #52',1,77,306000,0,2,0,102,0,0),(53,0,0,0,0,0,'Unnamed House #53',1,49,159000,0,1,0,53,0,0),(54,0,0,0,0,0,'Unnamed House #54',1,28,90000,0,1,0,30,0,0),(55,0,0,0,0,0,'Unnamed House #55',1,15,54000,0,1,0,18,0,0),(56,0,0,0,0,0,'Unnamed House #56',1,98,297000,0,1,0,99,0,0),(59,0,0,0,0,0,'Unnamed House #59',1,97,297000,0,1,0,99,0,0),(60,0,0,0,0,0,'Unnamed House #60',1,56,183000,0,2,0,61,0,0),(61,0,0,0,0,0,'Unnamed House #61',5,260,918000,0,4,0,306,0,0),(62,0,0,0,0,0,'Unnamed House #62',5,110,366000,0,2,0,122,0,0),(63,0,0,0,0,0,'Unnamed House #63',5,105,369000,0,3,0,123,0,0),(64,0,0,0,0,0,'Unnamed House #64',5,110,354000,0,2,0,118,0,0),(65,0,0,0,0,0,'Unnamed House #65',5,49,150000,0,1,0,50,0,0),(66,0,0,0,0,0,'Unnamed House #66',5,124,375000,0,1,0,125,0,0),(67,0,0,0,0,0,'Unnamed House #67',5,98,315000,0,1,0,105,0,0),(68,0,0,0,0,0,'Unnamed House #68',5,152,486000,0,1,0,162,0,0),(69,0,0,0,0,0,'Unnamed House #69',5,130,396000,0,1,0,132,0,0),(70,0,0,0,0,0,'Unnamed House #70',5,123,426000,0,4,0,142,0,0),(71,0,0,0,0,0,'Unnamed House #71',5,128,447000,0,3,0,149,0,0),(72,0,0,0,0,0,'Unnamed House #72',5,133,411000,0,2,0,137,0,0),(73,0,0,0,0,0,'Unnamed House #73',5,45,141000,0,1,0,47,0,0),(74,0,0,0,0,0,'Unnamed House #74',5,81,246000,0,1,0,82,0,0),(75,0,0,0,0,0,'Unnamed House #75',5,123,402000,0,2,0,134,0,0),(76,0,0,0,0,0,'Unnamed House #76',5,70,243000,0,2,0,81,0,0),(77,0,0,0,0,0,'Unnamed House #77',5,69,243000,0,2,0,81,0,0),(78,0,0,0,0,0,'Unnamed House #78',5,80,243000,0,1,0,81,0,0),(79,0,0,0,0,0,'Unnamed House #79',5,70,243000,0,2,0,81,0,0),(80,0,0,0,0,0,'Unnamed House #80',5,80,243000,0,1,0,81,0,0),(81,0,0,0,0,0,'Unnamed House #81',5,80,243000,0,1,0,81,0,0),(82,0,0,0,0,0,'Unnamed House #82',5,83,252000,0,1,0,84,0,0),(83,0,0,0,0,0,'Unnamed House #83',5,93,285000,0,2,0,95,0,0),(84,0,0,0,0,0,'Unnamed House #84',2,50,153000,0,1,0,51,0,0),(85,0,0,0,0,0,'Unnamed House #85',2,10,33000,0,1,0,11,0,0),(86,0,0,0,0,0,'Unnamed House #86',2,21,75000,0,2,0,25,0,0),(87,0,0,0,0,0,'Unnamed House #87',2,21,75000,0,2,0,25,0,0),(88,0,0,0,0,0,'Unnamed House #88',2,21,81000,0,2,0,27,0,0),(89,0,0,0,0,0,'Unnamed House #89',2,24,78000,0,1,0,26,0,0),(90,0,0,0,0,0,'Unnamed House #90',2,20,90000,0,2,0,30,0,0),(91,0,0,0,0,0,'Unnamed House #91',2,20,93000,0,2,0,31,0,0),(92,0,0,0,0,0,'Unnamed House #92',2,124,408000,0,3,0,136,0,0),(93,0,0,0,0,0,'Unnamed House #93',2,22,72000,0,1,0,24,0,0),(94,0,0,0,0,0,'Unnamed House #94',2,62,225000,0,3,0,75,0,0),(95,0,0,0,0,0,'Unnamed House #95',2,95,315000,0,3,0,105,0,0),(96,0,0,0,0,0,'Unnamed House #96',2,43,153000,0,2,0,51,0,0),(97,0,0,0,0,0,'Unnamed House #97',2,34,117000,0,2,0,39,0,0),(98,0,0,0,0,0,'Unnamed House #98',2,78,291000,0,3,0,97,0,0),(99,0,0,0,0,0,'Unnamed House #99',2,25,87000,0,2,0,29,0,0),(100,0,0,0,0,0,'Unnamed House #100',2,25,78000,0,1,0,26,0,0),(101,0,0,0,0,0,'Unnamed House #101',2,25,81000,0,1,0,27,0,0),(102,0,0,0,0,0,'Unnamed House #102',2,38,150000,0,3,0,50,0,0),(103,0,0,0,0,0,'Unnamed House #103',2,51,222000,0,3,0,74,0,0),(104,0,0,0,0,0,'Unnamed House #104',2,175,612000,0,2,0,204,0,0),(105,0,0,0,0,0,'Unnamed House #105',2,223,723000,0,1,0,241,0,0),(106,0,0,0,0,0,'Unnamed House #106',2,161,543000,0,2,0,181,0,0),(107,0,0,0,0,0,'Unnamed House #107',2,161,522000,0,2,0,174,0,0),(108,0,0,0,0,0,'Unnamed House #108',2,450,1638000,0,5,0,546,0,0),(109,0,0,0,0,0,'Unnamed House #109',11,110,381000,0,1,0,127,0,0),(110,0,0,0,0,0,'Unnamed House #110',11,98,357000,0,1,0,119,0,0),(111,0,0,0,0,0,'Unnamed House #111',11,98,303000,0,1,0,101,0,0),(112,0,0,0,0,0,'Unnamed House #112',11,49,156000,0,1,0,52,0,0),(113,0,0,0,0,0,'Unnamed House #113',11,48,153000,0,1,0,51,0,0),(114,0,0,0,0,0,'Unnamed House #114',11,48,153000,0,1,0,51,0,0),(115,0,0,0,0,0,'Unnamed House #115',11,36,117000,0,1,0,39,0,0),(116,0,0,0,0,0,'Unnamed House #116',11,24,96000,0,1,0,32,0,0),(117,0,0,0,0,0,'Unnamed House #117',11,28,93000,0,1,0,31,0,0),(118,0,0,0,0,0,'Unnamed House #118',11,68,282000,0,2,0,94,0,0),(120,0,0,0,0,0,'Unnamed House #120',11,66,252000,0,1,0,84,0,0),(121,0,0,0,0,0,'Unnamed House #121',11,66,273000,0,1,0,91,0,0),(122,0,0,0,0,0,'Unnamed House #122',11,78,309000,0,2,0,103,0,0),(123,0,0,0,0,0,'Unnamed House #123',11,65,249000,0,2,0,83,0,0),(124,0,0,0,0,0,'Unnamed House #124',11,50,174000,0,1,0,58,0,0),(126,0,0,0,0,0,'Unnamed House #126',11,49,159000,0,1,0,53,0,0),(127,0,0,0,0,0,'Unnamed House #127',11,49,189000,0,1,0,63,0,0),(128,0,0,0,0,0,'Unnamed House #128',11,49,177000,0,1,0,59,0,0),(130,0,0,0,0,0,'Unnamed House #130',9,51,228000,0,2,0,76,0,0),(131,0,0,0,0,0,'Unnamed House #131',9,54,216000,0,2,0,72,0,0),(132,0,0,0,0,0,'Unnamed House #132',9,54,219000,0,2,0,73,0,0),(133,0,0,0,0,0,'Unnamed House #133',9,52,198000,0,2,0,66,0,0),(134,0,0,0,0,0,'Unnamed House #134',9,65,240000,0,2,0,80,0,0),(135,0,0,0,0,0,'Unnamed House #135',9,54,171000,0,1,0,57,0,0),(136,0,0,0,0,0,'Unnamed House #136',9,20,69000,0,1,0,23,0,0),(137,0,0,0,0,0,'Unnamed House #137',9,20,69000,0,1,0,23,0,0),(139,0,0,0,0,0,'Unnamed House #139',9,35,159000,0,2,0,53,0,0),(140,0,0,0,0,0,'Unnamed House #140',9,78,300000,0,2,0,100,0,0),(141,0,0,0,0,0,'Unnamed House #141',9,56,177000,0,1,0,59,0,0),(142,0,0,0,0,0,'Unnamed House #142',9,78,282000,0,1,0,94,0,0),(143,0,0,0,0,0,'Unnamed House #143',9,65,261000,0,2,0,87,0,0),(144,0,0,0,0,0,'Unnamed House #144',9,155,588000,0,3,0,196,0,0),(145,0,0,0,0,0,'Unnamed House #145',9,63,198000,0,1,0,66,0,0),(146,0,0,0,0,0,'Unnamed House #146',9,55,186000,0,1,0,62,0,0),(147,0,0,0,0,0,'Unnamed House #147',9,76,249000,0,2,0,83,0,0),(148,0,0,0,0,0,'Unnamed House #148',9,128,393000,0,1,0,131,0,0),(149,0,0,0,0,0,'Unnamed House #149',9,64,201000,0,1,0,67,0,0),(150,0,0,0,0,0,'Unnamed House #150',9,134,486000,0,4,0,162,0,0),(151,0,0,0,0,0,'Unnamed House #151',9,128,444000,0,4,0,148,0,0),(152,0,0,0,0,0,'Unnamed House #152',8,46,150000,0,1,0,50,0,0),(153,0,0,0,0,0,'Unnamed House #153',8,83,261000,0,1,0,87,0,0),(154,0,0,0,0,0,'Unnamed House #154',8,38,123000,0,1,0,41,0,0),(155,0,0,0,0,0,'Unnamed House #155',8,62,189000,0,1,0,63,0,0),(156,0,0,0,0,0,'Unnamed House #156',8,111,384000,0,4,0,128,0,0),(157,0,0,0,0,0,'Unnamed House #157',8,19,60000,0,1,0,20,0,0),(158,0,0,0,0,0,'Unnamed House #158',8,79,306000,0,4,0,102,0,0),(159,0,0,0,0,0,'Unnamed House #159',4,42,135000,0,1,0,45,0,0),(160,0,0,0,0,0,'Unnamed House #160',4,49,168000,0,1,0,56,0,0),(161,0,0,0,0,0,'Unnamed House #161',4,49,156000,0,1,0,52,0,0),(162,0,0,0,0,0,'Unnamed House #162',4,42,150000,0,1,0,50,0,0),(163,0,0,0,0,0,'Unnamed House #163',4,225,855000,0,9,0,285,0,0),(164,0,0,0,0,0,'Unnamed House #164',4,98,303000,0,1,0,101,0,0),(165,0,0,0,0,0,'Unnamed House #165',4,144,573000,0,6,0,191,0,0),(166,0,0,0,0,0,'Unnamed House #166',4,186,705000,0,5,0,235,0,0),(167,0,0,0,0,0,'Unnamed House #167',4,156,633000,0,5,0,211,0,0),(168,0,0,0,0,0,'Unnamed House #168',4,20,81000,0,1,0,27,0,0),(169,0,0,0,0,0,'Unnamed House #169',4,338,1290000,0,9,0,430,0,0),(170,0,0,0,0,0,'Unnamed House #170',4,63,240000,0,1,0,80,0,0),(171,0,0,0,0,0,'Unnamed House #171',4,44,186000,0,1,0,62,0,0),(172,0,0,0,0,0,'Unnamed House #172',4,111,441000,0,5,0,147,0,0),(173,0,0,0,0,0,'Unnamed House #173',4,147,534000,0,1,0,178,0,0),(174,0,0,0,0,0,'Unnamed House #174',4,139,531000,0,3,0,177,0,0),(175,0,0,0,0,0,'Unnamed House #175',4,197,783000,0,9,0,261,0,0),(176,0,0,0,0,0,'Unnamed House #176',1,445,1506000,0,1,0,502,0,0);
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `killers`
--

DROP TABLE IF EXISTS `killers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `killers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `death_id` int(11) NOT NULL,
  `final_hit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unjustified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `death_id` (`death_id`),
  CONSTRAINT `killers_ibfk_1` FOREIGN KEY (`death_id`) REFERENCES `player_deaths` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `killers`
--

LOCK TABLES `killers` WRITE;
/*!40000 ALTER TABLE `killers` DISABLE KEYS */;
/*!40000 ALTER TABLE `killers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_deaths`
--

DROP TABLE IF EXISTS `player_deaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_deaths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `date` bigint(20) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_deaths`
--

LOCK TABLES `player_deaths` WRITE;
/*!40000 ALTER TABLE `player_deaths` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_deaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_depotitems`
--

DROP TABLE IF EXISTS `player_depotitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range, eg. 0-100 is reserved for depot lockers and all above 100 will be normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_depotitems`
--

LOCK TABLES `player_depotitems` WRITE;
/*!40000 ALTER TABLE `player_depotitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_depotitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_items`
--

DROP TABLE IF EXISTS `player_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_items` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_items`
--

LOCK TABLES `player_items` WRITE;
/*!40000 ALTER TABLE `player_items` DISABLE KEYS */;
INSERT INTO `player_items` VALUES (2,1,101,2580,1,''),(2,2,102,1992,1,''),(2,3,103,1987,1,''),(2,4,104,2550,1,''),(2,5,105,1988,1,''),(2,6,106,2376,1,''),(2,7,107,2529,1,''),(2,10,108,7534,1,''),(2,103,109,2192,1,''),(2,103,110,188,1,''),(2,105,111,210,1,''),(2,105,112,211,1,''),(2,105,113,212,1,''),(2,105,114,213,1,''),(2,105,115,214,1,''),(2,105,116,215,1,''),(2,105,117,216,1,''),(2,105,118,217,1,'');
/*!40000 ALTER TABLE `player_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_killers`
--

DROP TABLE IF EXISTS `player_killers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_killers` (
  `kill_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  KEY `kill_id` (`kill_id`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_killers_ibfk_1` FOREIGN KEY (`kill_id`) REFERENCES `killers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `player_killers_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_killers`
--

LOCK TABLES `player_killers` WRITE;
/*!40000 ALTER TABLE `player_killers` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_killers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_namelocks`
--

DROP TABLE IF EXISTS `player_namelocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_namelocks` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `new_name` varchar(255) NOT NULL,
  `date` bigint(20) NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_namelocks`
--

LOCK TABLES `player_namelocks` WRITE;
/*!40000 ALTER TABLE `player_namelocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_namelocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_skills`
--

DROP TABLE IF EXISTS `player_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_skills` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `skillid` tinyint(2) NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id_2` (`player_id`,`skillid`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_skills_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_skills`
--

LOCK TABLES `player_skills` WRITE;
/*!40000 ALTER TABLE `player_skills` DISABLE KEYS */;
INSERT INTO `player_skills` VALUES (2,0,10,0),(2,1,10,0),(2,2,10,0),(2,3,10,0),(2,4,10,0),(2,5,10,0),(2,6,10,0);
/*!40000 ALTER TABLE `player_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_spells`
--

DROP TABLE IF EXISTS `player_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`name`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_spells`
--

LOCK TABLES `player_spells` WRITE;
/*!40000 ALTER TABLE `player_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_storage`
--

DROP TABLE IF EXISTS `player_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `key` int(10) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '0',
  UNIQUE KEY `player_id_2` (`player_id`,`key`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_storage`
--

LOCK TABLES `player_storage` WRITE;
/*!40000 ALTER TABLE `player_storage` DISABLE KEYS */;
INSERT INTO `player_storage` VALUES (2,7605,'1'),(2,19898,'0'),(2,30001,'1');
/*!40000 ALTER TABLE `player_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_viplist`
--

DROP TABLE IF EXISTS `player_viplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_viplist` (
  `player_id` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`vip_id`),
  KEY `player_id` (`player_id`),
  KEY `vip_id` (`vip_id`),
  CONSTRAINT `player_viplist_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  CONSTRAINT `player_viplist_ibfk_2` FOREIGN KEY (`vip_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_viplist`
--

LOCK TABLES `player_viplist` WRITE;
/*!40000 ALTER TABLE `player_viplist` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_viplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `vocation` int(11) NOT NULL DEFAULT '0',
  `health` int(11) NOT NULL DEFAULT '150',
  `healthmax` int(11) NOT NULL DEFAULT '150',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `lookbody` int(11) NOT NULL DEFAULT '0',
  `lookfeet` int(11) NOT NULL DEFAULT '0',
  `lookhead` int(11) NOT NULL DEFAULT '0',
  `looklegs` int(11) NOT NULL DEFAULT '0',
  `looktype` int(11) NOT NULL DEFAULT '136',
  `lookaddons` int(11) NOT NULL DEFAULT '0',
  `maglevel` int(11) NOT NULL DEFAULT '0',
  `mana` int(11) NOT NULL DEFAULT '0',
  `manamax` int(11) NOT NULL DEFAULT '0',
  `manaspent` int(11) NOT NULL DEFAULT '0',
  `soul` int(10) unsigned NOT NULL DEFAULT '0',
  `town_id` int(11) NOT NULL DEFAULT '0',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `lastlogin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastip` int(10) unsigned NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `skull` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `skulltime` int(11) NOT NULL DEFAULT '0',
  `rank_id` int(11) NOT NULL DEFAULT '0',
  `guildnick` varchar(255) NOT NULL DEFAULT '',
  `lastlogout` bigint(20) unsigned NOT NULL DEFAULT '0',
  `blessings` tinyint(2) NOT NULL DEFAULT '0',
  `balance` bigint(20) NOT NULL DEFAULT '0',
  `stamina` bigint(20) NOT NULL DEFAULT '151200000' COMMENT 'stored in miliseconds',
  `direction` int(11) NOT NULL DEFAULT '2',
  `loss_experience` int(11) NOT NULL DEFAULT '100',
  `loss_mana` int(11) NOT NULL DEFAULT '100',
  `loss_skills` int(11) NOT NULL DEFAULT '100',
  `loss_containers` int(11) NOT NULL DEFAULT '100',
  `loss_items` int(11) NOT NULL DEFAULT '100',
  `premend` int(11) NOT NULL DEFAULT '0' COMMENT 'NOT IN USE BY THE SERVER',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  `marriage` int(10) unsigned NOT NULL DEFAULT '0',
  `promotion` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`deleted`),
  KEY `account_id` (`account_id`),
  KEY `group_id` (`group_id`),
  KEY `online` (`online`),
  KEY `deleted` (`deleted`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Account Manager',0,1,1,1,0,150,150,0,0,0,0,0,110,0,0,0,0,0,0,0,50,50,7,'',400,0,1462468465,3696385887,0,0,0,0,'',0,0,0,201660000,0,100,100,100,100,100,0,1,0,0,0,''),(2,'Pedro',0,5,2,5,1,210,210,800,0,0,0,0,313,0,0,0,6,0,0,12,1066,1164,7,'',400,1,1462469307,3696385887,1,0,0,0,'',1462469373,0,0,151200000,2,100,100,100,100,100,0,0,0,0,0,'');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `oncreate_players`
AFTER INSERT
ON `players`
FOR EACH ROW
BEGIN
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 0, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 1, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 2, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 3, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 4, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 5, 10);
	INSERT INTO `player_skills` (`player_id`, `skillid`, `value`) VALUES (NEW.`id`, 6, 10);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ondelete_players`
BEFORE DELETE
ON `players`
FOR EACH ROW
BEGIN
	DELETE FROM `bans` WHERE `type` IN (2, 5) AND `value` = OLD.`id`;
	UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `server_config`
--

DROP TABLE IF EXISTS `server_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_config` (
  `config` varchar(35) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  UNIQUE KEY `config` (`config`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_config`
--

LOCK TABLES `server_config` WRITE;
/*!40000 ALTER TABLE `server_config` DISABLE KEYS */;
INSERT INTO `server_config` VALUES ('db_version',23),('encryption',0);
/*!40000 ALTER TABLE `server_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_motd`
--

DROP TABLE IF EXISTS `server_motd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_motd` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  UNIQUE KEY `id` (`id`,`world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_motd`
--

LOCK TABLES `server_motd` WRITE;
/*!40000 ALTER TABLE `server_motd` DISABLE KEYS */;
INSERT INTO `server_motd` VALUES (1,0,'Welcome to The Forgotten Server!'),(2,0,'Poketibia Erondino Site v17.1 by Valakinhas');
/*!40000 ALTER TABLE `server_motd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_record`
--

DROP TABLE IF EXISTS `server_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_record` (
  `record` int(11) NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL,
  UNIQUE KEY `record` (`record`,`world_id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_record`
--

LOCK TABLES `server_record` WRITE;
/*!40000 ALTER TABLE `server_record` DISABLE KEYS */;
INSERT INTO `server_record` VALUES (0,0,0),(1,0,1462468465);
/*!40000 ALTER TABLE `server_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_reports`
--

DROP TABLE IF EXISTS `server_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `player_id` int(11) NOT NULL DEFAULT '1',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `timestamp` bigint(20) NOT NULL DEFAULT '0',
  `report` text NOT NULL,
  `reads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `world_id` (`world_id`),
  KEY `reads` (`reads`),
  KEY `player_id` (`player_id`),
  CONSTRAINT `server_reports_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_reports`
--

LOCK TABLES `server_reports` WRITE;
/*!40000 ALTER TABLE `server_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tile_items`
--

DROP TABLE IF EXISTS `tile_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tile_items` (
  `tile_id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `tile_id` (`tile_id`,`world_id`,`sid`),
  KEY `sid` (`sid`),
  CONSTRAINT `tile_items_ibfk_1` FOREIGN KEY (`tile_id`) REFERENCES `tiles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tile_items`
--

LOCK TABLES `tile_items` WRITE;
/*!40000 ALTER TABLE `tile_items` DISABLE KEYS */;
INSERT INTO `tile_items` VALUES (0,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #1\'. Nobody owns this house. It costs 282000 gold coins.\0doorid\0\0\0'),(1,0,1,0,1249,1,''),(2,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #1\'. Nobody owns this house. It costs 282000 gold coins.\0doorid\0\0\0'),(3,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(4,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(5,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #2\'. Nobody owns this house. It costs 240000 gold coins.\0doorid\0\0\0'),(6,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #3\'. Nobody owns this house. It costs 297000 gold coins.\0doorid\0\0\0'),(7,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(8,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(9,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(10,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(11,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #4\'. Nobody owns this house. It costs 492000 gold coins.\0doorid\0\0\0'),(12,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(13,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(14,0,1,0,1250,1,''),(15,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #5\'. Nobody owns this house. It costs 522000 gold coins.\0doorid\0\0\0'),(16,0,1,0,1250,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #6\'. Nobody owns this house. It costs 489000 gold coins.\0doorid\0\0\0'),(17,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(18,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(19,0,1,0,1250,1,''),(20,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(21,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(22,0,1,0,1250,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #7\'. Nobody owns this house. It costs 336000 gold coins.\0doorid\0\0\0'),(23,0,1,0,1250,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #8\'. Nobody owns this house. It costs 1017000 gold coins.\0doorid\0\0\0'),(24,0,1,0,1250,1,''),(25,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(26,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(27,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(28,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(29,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #9\'. Nobody owns this house. It costs 405000 gold coins.\0doorid\0\0\0'),(30,0,1,0,1250,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #10\'. Nobody owns this house. It costs 309000 gold coins.\0doorid\0\0\0'),(31,0,1,0,1252,1,''),(32,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(33,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(34,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #11\'. Nobody owns this house. It costs 84000 gold coins.\0doorid\0\0\0'),(35,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #12\'. Nobody owns this house. It costs 84000 gold coins.\0doorid\0\0\0'),(36,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #13\'. Nobody owns this house. It costs 435000 gold coins.\0doorid\0\0\0'),(37,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #13\'. Nobody owns this house. It costs 435000 gold coins.\0doorid\0\0\0'),(38,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #14\'. Nobody owns this house. It costs 435000 gold coins.\0doorid\0\0\0'),(39,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #14\'. Nobody owns this house. It costs 435000 gold coins.\0doorid\0\0\0'),(40,0,1,0,5304,1,''),(41,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #15\'. Nobody owns this house. It costs 567000 gold coins.\0doorid\0\0\0'),(42,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #15\'. Nobody owns this house. It costs 567000 gold coins.\0doorid\0\0\0'),(43,0,1,0,5304,1,''),(44,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #15\'. Nobody owns this house. It costs 567000 gold coins.\0doorid\0\0\0'),(45,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(46,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(47,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #16\'. Nobody owns this house. It costs 57000 gold coins.\0doorid\0\0\0'),(48,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(49,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(50,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #17\'. Nobody owns this house. It costs 81000 gold coins.\0doorid\0\0\0'),(51,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(52,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(53,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #18\'. Nobody owns this house. It costs 63000 gold coins.\0doorid\0\0\0'),(54,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(55,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(56,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #19\'. Nobody owns this house. It costs 171000 gold coins.\0doorid\0\0\0'),(57,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #20\'. Nobody owns this house. It costs 144000 gold coins.\0doorid\0\0\0'),(58,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(59,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(60,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #22\'. Nobody owns this house. It costs 51000 gold coins.\0doorid\0\0\0'),(61,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(62,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #23\'. Nobody owns this house. It costs 63000 gold coins.\0doorid\0\0\0'),(63,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(64,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #24\'. Nobody owns this house. It costs 51000 gold coins.\0doorid\0\0\0'),(65,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(66,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(67,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #25\'. Nobody owns this house. It costs 186000 gold coins.\0doorid\0\0\0'),(68,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #25\'. Nobody owns this house. It costs 186000 gold coins.\0doorid\0\0\0'),(69,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #25\'. Nobody owns this house. It costs 186000 gold coins.\0doorid\0\0\0'),(70,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(71,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(72,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #26\'. Nobody owns this house. It costs 87000 gold coins.\0doorid\0\0\0'),(73,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(74,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(75,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #27\'. Nobody owns this house. It costs 183000 gold coins.\0doorid\0\0\0'),(76,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #27\'. Nobody owns this house. It costs 183000 gold coins.\0doorid\0\0\0'),(77,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #27\'. Nobody owns this house. It costs 183000 gold coins.\0doorid\0\0\0'),(78,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(79,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(80,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #28\'. Nobody owns this house. It costs 69000 gold coins.\0doorid\0\0\0'),(81,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #29\'. Nobody owns this house. It costs 123000 gold coins.\0doorid\0\0\0'),(82,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(83,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(84,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(85,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(86,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(87,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(88,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #30\'. Nobody owns this house. It costs 99000 gold coins.\0doorid\0\0\0'),(89,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(90,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(91,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(92,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(93,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #31\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(94,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(95,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(96,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(97,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(98,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #32\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(99,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #33\'. Nobody owns this house. It costs 123000 gold coins.\0doorid\0\0\0'),(100,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(101,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(102,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #34\'. Nobody owns this house. It costs 126000 gold coins.\0doorid\0\0\0'),(103,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(104,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(105,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(106,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(107,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #35\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(108,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(109,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(110,0,1,0,1754,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(111,0,1,0,1755,1,'€\0\0description\0\0\0Nobody is sleeping there.'),(112,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #36\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(113,0,1,0,1250,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #37\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(114,0,1,0,1250,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #38\'. Nobody owns this house. It costs 33000 gold coins.\0doorid\0\0\0'),(115,0,1,0,1253,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #39\'. Nobody owns this house. It costs 87000 gold coins.\0doorid\0\0\0'),(116,0,1,0,1250,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #40\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(117,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #41\'. Nobody owns this house. It costs 96000 gold coins.\0doorid\0\0\0'),(118,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #41\'. Nobody owns this house. It costs 96000 gold coins.\0doorid\0\0\0'),(119,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #42\'. Nobody owns this house. It costs 114000 gold coins.\0doorid\0\0\0'),(120,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #42\'. Nobody owns this house. It costs 114000 gold coins.\0doorid\0\0\0'),(121,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #43\'. Nobody owns this house. It costs 123000 gold coins.\0doorid\0\0\0'),(122,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #44\'. Nobody owns this house. It costs 75000 gold coins.\0doorid\0\0\0'),(123,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #45\'. Nobody owns this house. It costs 219000 gold coins.\0doorid\0\0\0'),(124,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #46\'. Nobody owns this house. It costs 297000 gold coins.\0doorid\0\0\0'),(125,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #47\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(126,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #48\'. Nobody owns this house. It costs 60000 gold coins.\0doorid\0\0\0'),(127,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #49\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(128,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #50\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(129,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #51\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(130,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #52\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(131,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #52\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(132,0,1,0,5303,1,''),(133,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #53\'. Nobody owns this house. It costs 159000 gold coins.\0doorid\0\0\0'),(134,0,1,0,5303,1,''),(135,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #54\'. Nobody owns this house. It costs 90000 gold coins.\0doorid\0\0\0'),(136,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #55\'. Nobody owns this house. It costs 54000 gold coins.\0doorid\0\0\0'),(137,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #56\'. Nobody owns this house. It costs 297000 gold coins.\0doorid\0\0\0'),(138,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #59\'. Nobody owns this house. It costs 297000 gold coins.\0doorid\0\0\0'),(139,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #60\'. Nobody owns this house. It costs 183000 gold coins.\0doorid\0\0\0'),(140,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #60\'. Nobody owns this house. It costs 183000 gold coins.\0doorid\0\0\0'),(141,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #61\'. Nobody owns this house. It costs 918000 gold coins.\0doorid\0\0\0'),(142,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #61\'. Nobody owns this house. It costs 918000 gold coins.\0doorid\0\0\0'),(143,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #61\'. Nobody owns this house. It costs 918000 gold coins.\0doorid\0\0\0'),(144,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #61\'. Nobody owns this house. It costs 918000 gold coins.\0doorid\0\0\0'),(145,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #62\'. Nobody owns this house. It costs 366000 gold coins.\0doorid\0\0\0'),(146,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #62\'. Nobody owns this house. It costs 366000 gold coins.\0doorid\0\0\0'),(147,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #63\'. Nobody owns this house. It costs 369000 gold coins.\0doorid\0\0\0'),(148,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #63\'. Nobody owns this house. It costs 369000 gold coins.\0doorid\0\0\0'),(149,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #63\'. Nobody owns this house. It costs 369000 gold coins.\0doorid\0\0\0'),(150,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #64\'. Nobody owns this house. It costs 354000 gold coins.\0doorid\0\0\0'),(151,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #64\'. Nobody owns this house. It costs 354000 gold coins.\0doorid\0\0\0'),(152,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #65\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(153,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #66\'. Nobody owns this house. It costs 375000 gold coins.\0doorid\0\0\0'),(154,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #67\'. Nobody owns this house. It costs 315000 gold coins.\0doorid\0\0\0'),(155,0,1,0,5303,1,''),(156,0,1,0,5303,1,''),(157,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #68\'. Nobody owns this house. It costs 486000 gold coins.\0doorid\0\0\0'),(158,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #69\'. Nobody owns this house. It costs 396000 gold coins.\0doorid\0\0\0'),(159,0,1,0,5304,1,''),(160,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #70\'. Nobody owns this house. It costs 426000 gold coins.\0doorid\0\0\0'),(161,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #70\'. Nobody owns this house. It costs 426000 gold coins.\0doorid\0\0\0'),(162,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #70\'. Nobody owns this house. It costs 426000 gold coins.\0doorid\0\0\0'),(163,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #70\'. Nobody owns this house. It costs 426000 gold coins.\0doorid\0\0\0'),(164,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #71\'. Nobody owns this house. It costs 447000 gold coins.\0doorid\0\0\0'),(165,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #71\'. Nobody owns this house. It costs 447000 gold coins.\0doorid\0\0\0'),(166,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #71\'. Nobody owns this house. It costs 447000 gold coins.\0doorid\0\0\0'),(167,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #72\'. Nobody owns this house. It costs 411000 gold coins.\0doorid\0\0\0'),(168,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #72\'. Nobody owns this house. It costs 411000 gold coins.\0doorid\0\0\0'),(169,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #73\'. Nobody owns this house. It costs 141000 gold coins.\0doorid\0\0\0'),(170,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #74\'. Nobody owns this house. It costs 246000 gold coins.\0doorid\0\0\0'),(171,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #75\'. Nobody owns this house. It costs 402000 gold coins.\0doorid\0\0\0'),(172,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #75\'. Nobody owns this house. It costs 402000 gold coins.\0doorid\0\0\0'),(173,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #76\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(174,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #76\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(175,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #77\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(176,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #77\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(177,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #78\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(178,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #79\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(179,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #79\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(180,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #80\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(181,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #81\'. Nobody owns this house. It costs 243000 gold coins.\0doorid\0\0\0'),(182,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #82\'. Nobody owns this house. It costs 252000 gold coins.\0doorid\0\0\0'),(183,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #83\'. Nobody owns this house. It costs 285000 gold coins.\0doorid\0\0\0'),(184,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #83\'. Nobody owns this house. It costs 285000 gold coins.\0doorid\0\0\0'),(185,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #84\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(186,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #85\'. Nobody owns this house. It costs 33000 gold coins.\0doorid\0\0\0'),(187,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #86\'. Nobody owns this house. It costs 75000 gold coins.\0doorid\0\0\0'),(188,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #86\'. Nobody owns this house. It costs 75000 gold coins.\0doorid\0\0\0'),(189,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #87\'. Nobody owns this house. It costs 75000 gold coins.\0doorid\0\0\0'),(190,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #87\'. Nobody owns this house. It costs 75000 gold coins.\0doorid\0\0\0'),(191,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #88\'. Nobody owns this house. It costs 81000 gold coins.\0doorid\0\0\0'),(192,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #88\'. Nobody owns this house. It costs 81000 gold coins.\0doorid\0\0\0'),(193,0,1,0,5303,1,''),(194,0,1,0,5303,1,''),(195,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #89\'. Nobody owns this house. It costs 78000 gold coins.\0doorid\0\0\0'),(196,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #90\'. Nobody owns this house. It costs 90000 gold coins.\0doorid\0\0\0'),(197,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #90\'. Nobody owns this house. It costs 90000 gold coins.\0doorid\0\0\0'),(198,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #91\'. Nobody owns this house. It costs 93000 gold coins.\0doorid\0\0\0'),(199,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #91\'. Nobody owns this house. It costs 93000 gold coins.\0doorid\0\0\0'),(200,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #92\'. Nobody owns this house. It costs 408000 gold coins.\0doorid\0\0\0'),(201,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #92\'. Nobody owns this house. It costs 408000 gold coins.\0doorid\0\0\0'),(202,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #92\'. Nobody owns this house. It costs 408000 gold coins.\0doorid\0\0\0'),(203,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #93\'. Nobody owns this house. It costs 72000 gold coins.\0doorid\0\0\0'),(204,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #94\'. Nobody owns this house. It costs 225000 gold coins.\0doorid\0\0\0'),(205,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #94\'. Nobody owns this house. It costs 225000 gold coins.\0doorid\0\0\0'),(206,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #94\'. Nobody owns this house. It costs 225000 gold coins.\0doorid\0\0\0'),(207,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #95\'. Nobody owns this house. It costs 315000 gold coins.\0doorid\0\0\0'),(208,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #95\'. Nobody owns this house. It costs 315000 gold coins.\0doorid\0\0\0'),(209,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #95\'. Nobody owns this house. It costs 315000 gold coins.\0doorid\0\0\0'),(210,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #96\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(211,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #96\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(212,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #97\'. Nobody owns this house. It costs 117000 gold coins.\0doorid\0\0\0'),(213,0,1,0,1252,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #97\'. Nobody owns this house. It costs 117000 gold coins.\0doorid\0\0\0'),(214,0,1,0,5304,1,''),(215,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #98\'. Nobody owns this house. It costs 291000 gold coins.\0doorid\0\0\0'),(216,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #98\'. Nobody owns this house. It costs 291000 gold coins.\0doorid\0\0\0'),(217,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #98\'. Nobody owns this house. It costs 291000 gold coins.\0doorid\0\0\0'),(218,0,1,0,1249,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #99\'. Nobody owns this house. It costs 87000 gold coins.\0doorid\0\0\0'),(219,0,1,0,1252,1,'€\0\0description[\0\0\0It belongs to house \'Unnamed House #99\'. Nobody owns this house. It costs 87000 gold coins.\0doorid\0\0\0'),(220,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #100\'. Nobody owns this house. It costs 78000 gold coins.\0doorid\0\0\0'),(221,0,1,0,5304,1,''),(222,0,1,0,1249,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #101\'. Nobody owns this house. It costs 81000 gold coins.\0doorid\0\0\0'),(223,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #102\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(224,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #102\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(225,0,1,0,5304,1,''),(226,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #102\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(227,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #103\'. Nobody owns this house. It costs 222000 gold coins.\0doorid\0\0\0'),(228,0,1,0,5303,1,''),(229,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #103\'. Nobody owns this house. It costs 222000 gold coins.\0doorid\0\0\0'),(230,0,1,0,5304,1,''),(231,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #103\'. Nobody owns this house. It costs 222000 gold coins.\0doorid\0\0\0'),(232,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #104\'. Nobody owns this house. It costs 612000 gold coins.\0doorid\0\0\0'),(233,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #104\'. Nobody owns this house. It costs 612000 gold coins.\0doorid\0\0\0'),(234,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #105\'. Nobody owns this house. It costs 723000 gold coins.\0doorid\0\0\0'),(235,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #106\'. Nobody owns this house. It costs 543000 gold coins.\0doorid\0\0\0'),(236,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #106\'. Nobody owns this house. It costs 543000 gold coins.\0doorid\0\0\0'),(237,0,1,0,1249,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #107\'. Nobody owns this house. It costs 522000 gold coins.\0doorid\0\0\0'),(238,0,1,0,1252,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #107\'. Nobody owns this house. It costs 522000 gold coins.\0doorid\0\0\0'),(239,0,1,0,5304,1,''),(240,0,1,0,1249,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #108\'. Nobody owns this house. It costs 1638000 gold coins.\0doorid\0\0\0'),(241,0,1,0,1252,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #108\'. Nobody owns this house. It costs 1638000 gold coins.\0doorid\0\0\0'),(242,0,1,0,1252,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #108\'. Nobody owns this house. It costs 1638000 gold coins.\0doorid\0\0\0'),(243,0,1,0,1249,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #108\'. Nobody owns this house. It costs 1638000 gold coins.\0doorid\0\0\0'),(244,0,1,0,1249,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #108\'. Nobody owns this house. It costs 1638000 gold coins.\0doorid\0\0\0'),(245,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #109\'. Nobody owns this house. It costs 381000 gold coins.\0doorid\0\0\0'),(246,0,1,0,5128,1,''),(247,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #110\'. Nobody owns this house. It costs 357000 gold coins.\0doorid\0\0\0'),(248,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #111\'. Nobody owns this house. It costs 303000 gold coins.\0doorid\0\0\0'),(249,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #112\'. Nobody owns this house. It costs 156000 gold coins.\0doorid\0\0\0'),(250,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #113\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(251,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #114\'. Nobody owns this house. It costs 153000 gold coins.\0doorid\0\0\0'),(252,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #115\'. Nobody owns this house. It costs 117000 gold coins.\0doorid\0\0\0'),(253,0,1,0,5128,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #116\'. Nobody owns this house. It costs 96000 gold coins.\0doorid\0\0\0'),(254,0,1,0,5128,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #117\'. Nobody owns this house. It costs 93000 gold coins.\0doorid\0\0\0'),(255,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #118\'. Nobody owns this house. It costs 282000 gold coins.\0doorid\0\0\0'),(256,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #118\'. Nobody owns this house. It costs 282000 gold coins.\0doorid\0\0\0'),(257,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #120\'. Nobody owns this house. It costs 252000 gold coins.\0doorid\0\0\0'),(258,0,1,0,5119,1,''),(259,0,1,0,5119,1,''),(260,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #121\'. Nobody owns this house. It costs 273000 gold coins.\0doorid\0\0\0'),(261,0,1,0,5119,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #122\'. Nobody owns this house. It costs 309000 gold coins.\0doorid\0\0\0'),(262,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #122\'. Nobody owns this house. It costs 309000 gold coins.\0doorid\0\0\0'),(263,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #123\'. Nobody owns this house. It costs 249000 gold coins.\0doorid\0\0\0'),(264,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #123\'. Nobody owns this house. It costs 249000 gold coins.\0doorid\0\0\0'),(265,0,1,0,5128,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #124\'. Nobody owns this house. It costs 174000 gold coins.\0doorid\0\0\0'),(266,0,1,0,5281,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #126\'. Nobody owns this house. It costs 159000 gold coins.\0doorid\0\0\0'),(267,0,1,0,5281,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #127\'. Nobody owns this house. It costs 189000 gold coins.\0doorid\0\0\0'),(268,0,1,0,5281,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #128\'. Nobody owns this house. It costs 177000 gold coins.\0doorid\0\0\0'),(269,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #130\'. Nobody owns this house. It costs 228000 gold coins.\0doorid\0\0\0'),(270,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #130\'. Nobody owns this house. It costs 228000 gold coins.\0doorid\0\0\0'),(271,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #131\'. Nobody owns this house. It costs 216000 gold coins.\0doorid\0\0\0'),(272,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #131\'. Nobody owns this house. It costs 216000 gold coins.\0doorid\0\0\0'),(273,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #132\'. Nobody owns this house. It costs 219000 gold coins.\0doorid\0\0\0'),(274,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #132\'. Nobody owns this house. It costs 219000 gold coins.\0doorid\0\0\0'),(275,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #133\'. Nobody owns this house. It costs 198000 gold coins.\0doorid\0\0\0'),(276,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #133\'. Nobody owns this house. It costs 198000 gold coins.\0doorid\0\0\0'),(277,0,1,0,6437,1,''),(278,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #134\'. Nobody owns this house. It costs 240000 gold coins.\0doorid\0\0\0'),(279,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #134\'. Nobody owns this house. It costs 240000 gold coins.\0doorid\0\0\0'),(280,0,1,0,6437,1,''),(281,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #135\'. Nobody owns this house. It costs 171000 gold coins.\0doorid\0\0\0'),(282,0,1,0,1221,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #136\'. Nobody owns this house. It costs 69000 gold coins.\0doorid\0\0\0'),(283,0,1,0,1221,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #137\'. Nobody owns this house. It costs 69000 gold coins.\0doorid\0\0\0'),(284,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #139\'. Nobody owns this house. It costs 159000 gold coins.\0doorid\0\0\0'),(285,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #139\'. Nobody owns this house. It costs 159000 gold coins.\0doorid\0\0\0'),(286,0,1,0,6437,1,''),(287,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #140\'. Nobody owns this house. It costs 300000 gold coins.\0doorid\0\0\0'),(288,0,1,0,6436,1,''),(289,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #140\'. Nobody owns this house. It costs 300000 gold coins.\0doorid\0\0\0'),(290,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #141\'. Nobody owns this house. It costs 177000 gold coins.\0doorid\0\0\0'),(291,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #142\'. Nobody owns this house. It costs 282000 gold coins.\0doorid\0\0\0'),(292,0,1,0,6437,1,''),(293,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #143\'. Nobody owns this house. It costs 261000 gold coins.\0doorid\0\0\0'),(294,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #143\'. Nobody owns this house. It costs 261000 gold coins.\0doorid\0\0\0'),(295,0,1,0,6437,1,''),(296,0,1,0,6437,1,''),(297,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #144\'. Nobody owns this house. It costs 588000 gold coins.\0doorid\0\0\0'),(298,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #144\'. Nobody owns this house. It costs 588000 gold coins.\0doorid\0\0\0'),(299,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #144\'. Nobody owns this house. It costs 588000 gold coins.\0doorid\0\0\0'),(300,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #145\'. Nobody owns this house. It costs 198000 gold coins.\0doorid\0\0\0'),(301,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #146\'. Nobody owns this house. It costs 186000 gold coins.\0doorid\0\0\0'),(302,0,1,0,6437,1,''),(303,0,1,0,6437,1,''),(304,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #147\'. Nobody owns this house. It costs 249000 gold coins.\0doorid\0\0\0'),(305,0,1,0,1224,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #147\'. Nobody owns this house. It costs 249000 gold coins.\0doorid\0\0\0'),(306,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #148\'. Nobody owns this house. It costs 393000 gold coins.\0doorid\0\0\0'),(307,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #149\'. Nobody owns this house. It costs 201000 gold coins.\0doorid\0\0\0'),(308,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #150\'. Nobody owns this house. It costs 486000 gold coins.\0doorid\0\0\0'),(309,0,1,0,6437,1,''),(310,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #150\'. Nobody owns this house. It costs 486000 gold coins.\0doorid\0\0\0'),(311,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #150\'. Nobody owns this house. It costs 486000 gold coins.\0doorid\0\0\0'),(312,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #150\'. Nobody owns this house. It costs 486000 gold coins.\0doorid\0\0\0'),(313,0,1,0,1221,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #151\'. Nobody owns this house. It costs 444000 gold coins.\0doorid\0\0\0'),(314,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #151\'. Nobody owns this house. It costs 444000 gold coins.\0doorid\0\0\0'),(315,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #151\'. Nobody owns this house. It costs 444000 gold coins.\0doorid\0\0\0'),(316,0,1,0,1219,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #151\'. Nobody owns this house. It costs 444000 gold coins.\0doorid\0\0\0'),(317,0,1,0,6441,1,''),(318,0,1,0,5107,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #152\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(319,0,1,0,5107,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #153\'. Nobody owns this house. It costs 261000 gold coins.\0doorid\0\0\0'),(320,0,1,0,6440,1,''),(321,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #154\'. Nobody owns this house. It costs 123000 gold coins.\0doorid\0\0\0'),(322,0,1,0,5105,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #155\'. Nobody owns this house. It costs 189000 gold coins.\0doorid\0\0\0'),(323,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #156\'. Nobody owns this house. It costs 384000 gold coins.\0doorid\0\0\0'),(324,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #156\'. Nobody owns this house. It costs 384000 gold coins.\0doorid\0\0\0'),(325,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #156\'. Nobody owns this house. It costs 384000 gold coins.\0doorid\0\0\0'),(326,0,1,0,5107,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #156\'. Nobody owns this house. It costs 384000 gold coins.\0doorid\0\0\0'),(327,0,1,0,5098,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #157\'. Nobody owns this house. It costs 60000 gold coins.\0doorid\0\0\0'),(328,0,1,0,5107,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #158\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(329,0,1,0,5107,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #158\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(330,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #158\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(331,0,1,0,5098,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #158\'. Nobody owns this house. It costs 306000 gold coins.\0doorid\0\0\0'),(332,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #159\'. Nobody owns this house. It costs 135000 gold coins.\0doorid\0\0\0'),(333,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #160\'. Nobody owns this house. It costs 168000 gold coins.\0doorid\0\0\0'),(334,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #161\'. Nobody owns this house. It costs 156000 gold coins.\0doorid\0\0\0'),(335,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #162\'. Nobody owns this house. It costs 150000 gold coins.\0doorid\0\0\0'),(336,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(337,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(338,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(339,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(340,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\n\0\0\0'),(341,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(342,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(343,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(344,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #163\'. Nobody owns this house. It costs 855000 gold coins.\0doorid\0\0\0'),(345,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #164\'. Nobody owns this house. It costs 303000 gold coins.\0doorid\0\0\0'),(346,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(347,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(348,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(349,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(350,0,1,0,7025,1,''),(351,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(352,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #165\'. Nobody owns this house. It costs 573000 gold coins.\0doorid\0\0\0'),(353,0,1,0,7025,1,''),(354,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #166\'. Nobody owns this house. It costs 705000 gold coins.\0doorid\0\0\0'),(355,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #166\'. Nobody owns this house. It costs 705000 gold coins.\0doorid\0\0\0'),(356,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #166\'. Nobody owns this house. It costs 705000 gold coins.\0doorid\0\0\0'),(357,0,1,0,7025,1,''),(358,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #166\'. Nobody owns this house. It costs 705000 gold coins.\0doorid\0\0\0'),(359,0,1,0,7025,1,''),(360,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #166\'. Nobody owns this house. It costs 705000 gold coins.\0doorid\0\0\0'),(361,0,1,0,7025,1,''),(362,0,1,0,7026,1,''),(363,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #167\'. Nobody owns this house. It costs 633000 gold coins.\0doorid\0\0\0'),(364,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #167\'. Nobody owns this house. It costs 633000 gold coins.\0doorid\0\0\0'),(365,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #167\'. Nobody owns this house. It costs 633000 gold coins.\0doorid\0\0\0'),(366,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #167\'. Nobody owns this house. It costs 633000 gold coins.\0doorid\0\0\0'),(367,0,1,0,7025,1,''),(368,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #167\'. Nobody owns this house. It costs 633000 gold coins.\0doorid\0\0\0'),(369,0,1,0,6891,1,'€\0\0description\\\0\0\0It belongs to house \'Unnamed House #168\'. Nobody owns this house. It costs 81000 gold coins.\0doorid\0\0\0'),(370,0,1,0,7026,1,''),(371,0,1,0,6891,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(372,0,1,0,6900,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(373,0,1,0,6891,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(374,0,1,0,6900,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(375,0,1,0,6891,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(376,0,1,0,6900,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(377,0,1,0,6900,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid	\0\0\0'),(378,0,1,0,6891,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(379,0,1,0,7025,1,''),(380,0,1,0,7026,1,''),(381,0,1,0,6900,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #169\'. Nobody owns this house. It costs 1290000 gold coins.\0doorid\0\0\0'),(382,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #170\'. Nobody owns this house. It costs 240000 gold coins.\0doorid\0\0\0'),(383,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #171\'. Nobody owns this house. It costs 186000 gold coins.\0doorid\0\0\0'),(384,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #172\'. Nobody owns this house. It costs 441000 gold coins.\0doorid\0\0\0'),(385,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #172\'. Nobody owns this house. It costs 441000 gold coins.\0doorid\0\0\0'),(386,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #172\'. Nobody owns this house. It costs 441000 gold coins.\0doorid\0\0\0'),(387,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #172\'. Nobody owns this house. It costs 441000 gold coins.\0doorid\0\0\0'),(388,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #172\'. Nobody owns this house. It costs 441000 gold coins.\0doorid\0\0\0'),(389,0,1,0,7026,1,''),(390,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #173\'. Nobody owns this house. It costs 534000 gold coins.\0doorid\0\0\0'),(391,0,1,0,7026,1,''),(392,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #174\'. Nobody owns this house. It costs 531000 gold coins.\0doorid\0\0\0'),(393,0,1,0,7026,1,''),(394,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #174\'. Nobody owns this house. It costs 531000 gold coins.\0doorid\0\0\0'),(395,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #174\'. Nobody owns this house. It costs 531000 gold coins.\0doorid\0\0\0'),(396,0,1,0,7026,1,''),(397,0,1,0,7026,1,''),(398,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid	\0\0\0'),(399,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(400,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(401,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(402,0,1,0,6891,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(403,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(404,0,1,0,7026,1,''),(405,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(406,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(407,0,1,0,6900,1,'€\0\0description]\0\0\0It belongs to house \'Unnamed House #175\'. Nobody owns this house. It costs 783000 gold coins.\0doorid\0\0\0'),(408,0,1,0,5304,1,''),(409,0,1,0,5304,1,''),(410,0,1,0,5304,1,''),(411,0,1,0,5304,1,''),(412,0,1,0,5304,1,''),(413,0,1,0,5304,1,''),(414,0,1,0,1249,1,'€\0\0description^\0\0\0It belongs to house \'Unnamed House #176\'. Nobody owns this house. It costs 1506000 gold coins.\0doorid\0\0\0');
/*!40000 ALTER TABLE `tile_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiles`
--

DROP TABLE IF EXISTS `tiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiles` (
  `id` int(10) unsigned NOT NULL,
  `world_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `house_id` int(10) unsigned NOT NULL,
  `x` int(5) unsigned NOT NULL,
  `y` int(5) unsigned NOT NULL,
  `z` tinyint(2) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`,`world_id`),
  KEY `x` (`x`,`y`,`z`),
  KEY `house_id` (`house_id`,`world_id`),
  CONSTRAINT `tiles_ibfk_1` FOREIGN KEY (`house_id`, `world_id`) REFERENCES `houses` (`id`, `world_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiles`
--

LOCK TABLES `tiles` WRITE;
/*!40000 ALTER TABLE `tiles` DISABLE KEYS */;
INSERT INTO `tiles` VALUES (0,0,1,1063,1279,7),(1,0,1,1070,1279,7),(2,0,1,1077,1279,7),(3,0,2,1062,1272,7),(4,0,2,1062,1273,7),(5,0,2,1075,1271,7),(6,0,3,1080,1267,7),(7,0,3,1093,1265,7),(8,0,3,1093,1266,7),(9,0,4,1068,1258,7),(10,0,4,1068,1259,7),(11,0,4,1072,1252,7),(12,0,5,1081,1258,7),(13,0,5,1081,1259,7),(14,0,5,1084,1256,7),(15,0,5,1089,1252,7),(16,0,6,1092,1251,7),(17,0,6,1093,1257,7),(18,0,6,1093,1258,7),(19,0,7,1099,1243,7),(20,0,7,1105,1241,7),(21,0,7,1105,1242,7),(22,0,7,1092,1249,7),(23,0,8,1092,1235,7),(24,0,8,1098,1236,7),(25,0,8,1105,1237,7),(26,0,8,1105,1238,7),(27,0,9,1087,1213,7),(28,0,9,1087,1214,7),(29,0,9,1079,1224,7),(30,0,10,1039,1222,7),(31,0,10,1035,1231,7),(32,0,10,1032,1232,7),(33,0,10,1032,1233,7),(34,0,11,1055,1105,7),(35,0,12,1065,1105,7),(36,0,13,1066,1098,7),(37,0,13,1070,1098,7),(38,0,14,1066,1087,7),(39,0,14,1070,1088,7),(40,0,15,1052,1081,6),(41,0,15,1051,1084,7),(42,0,15,1052,1084,6),(43,0,15,1052,1086,6),(44,0,15,1056,1084,7),(45,0,16,1020,1086,7),(46,0,16,1020,1087,7),(47,0,16,1021,1084,7),(48,0,17,1024,1085,7),(49,0,17,1024,1086,7),(50,0,17,1029,1087,7),(51,0,18,1024,1091,7),(52,0,18,1024,1092,7),(53,0,18,1029,1093,7),(54,0,19,1038,1085,7),(55,0,19,1038,1086,7),(56,0,19,1033,1089,7),(57,0,20,1032,1094,7),(58,0,20,1038,1093,7),(59,0,20,1038,1094,7),(60,0,22,1028,1093,6),(61,0,23,1032,1095,6),(62,0,23,1034,1093,6),(63,0,23,1032,1096,6),(64,0,24,1040,1093,6),(65,0,25,1020,1085,6),(66,0,25,1020,1086,6),(67,0,25,1023,1087,6),(68,0,25,1028,1087,6),(69,0,25,1031,1089,6),(70,0,26,1035,1085,6),(71,0,26,1035,1086,6),(72,0,26,1039,1089,6),(73,0,27,1020,1085,5),(74,0,27,1020,1086,5),(75,0,27,1023,1087,5),(76,0,27,1026,1089,5),(77,0,27,1028,1092,5),(78,0,28,1030,1085,5),(79,0,28,1030,1086,5),(80,0,28,1034,1088,5),(81,0,29,1034,1093,5),(82,0,29,1036,1094,5),(83,0,29,1036,1095,5),(84,0,29,1037,1094,5),(85,0,29,1037,1095,5),(86,0,30,1039,1085,5),(87,0,30,1039,1086,5),(88,0,30,1037,1091,5),(89,0,31,1010,1078,7),(90,0,31,1010,1079,7),(91,0,31,1011,1078,7),(92,0,31,1011,1079,7),(93,0,31,1015,1082,7),(94,0,32,1011,1070,7),(95,0,32,1011,1071,7),(96,0,32,1012,1070,7),(97,0,32,1012,1071,7),(98,0,32,1015,1073,7),(99,0,33,1004,1070,7),(100,0,34,1004,1058,7),(101,0,34,1004,1059,7),(102,0,34,1004,1063,7),(103,0,35,1011,1056,7),(104,0,35,1011,1057,7),(105,0,35,1012,1056,7),(106,0,35,1012,1057,7),(107,0,35,1012,1063,7),(108,0,36,1019,1056,7),(109,0,36,1019,1057,7),(110,0,36,1020,1056,7),(111,0,36,1020,1057,7),(112,0,36,1020,1063,7),(113,0,37,1038,1057,7),(114,0,38,1036,1060,6),(115,0,39,1037,1058,6),(116,0,40,1038,1047,7),(117,0,41,1041,1031,7),(118,0,41,1042,1035,7),(119,0,42,1048,1028,7),(120,0,42,1048,1031,7),(121,0,43,1057,1031,7),(122,0,44,1064,1021,7),(123,0,45,1074,1029,7),(124,0,46,1074,1022,7),(125,0,47,1076,1042,7),(126,0,48,1090,1044,7),(127,0,49,1090,1031,7),(128,0,50,1099,1031,7),(129,0,51,1090,1018,7),(130,0,52,1094,1014,6),(131,0,52,1099,1014,6),(132,0,53,1098,1018,7),(133,0,53,1100,1018,7),(134,0,54,1107,1018,7),(135,0,54,1108,1018,7),(136,0,55,1096,1047,7),(137,0,56,1105,1044,7),(138,0,59,1078,1053,7),(139,0,60,1081,1059,7),(140,0,60,1085,1061,7),(141,0,61,889,1070,5),(142,0,61,888,1071,6),(143,0,61,895,1069,6),(144,0,61,890,1073,6),(145,0,62,911,1057,6),(146,0,62,911,1064,6),(147,0,63,911,1055,5),(148,0,63,908,1058,5),(149,0,63,911,1064,5),(150,0,64,911,1058,4),(151,0,64,911,1064,4),(152,0,65,922,1066,6),(153,0,66,930,1056,6),(154,0,67,930,1049,6),(155,0,67,932,1049,5),(156,0,68,917,1033,5),(157,0,68,919,1044,6),(158,0,69,912,1044,6),(159,0,70,909,1023,5),(160,0,70,898,1025,5),(161,0,70,909,1024,5),(162,0,70,909,1024,6),(163,0,70,911,1025,6),(164,0,71,890,1041,6),(165,0,71,891,1046,6),(166,0,71,896,1036,6),(167,0,72,893,1039,5),(168,0,72,896,1044,5),(169,0,73,895,1043,4),(170,0,74,893,1045,4),(171,0,75,891,1038,3),(172,0,75,894,1042,3),(173,0,76,880,1037,6),(174,0,76,880,1041,6),(175,0,77,878,1030,6),(176,0,77,880,1033,6),(177,0,78,880,1037,5),(178,0,79,880,1031,5),(179,0,79,882,1033,5),(180,0,80,880,1037,4),(181,0,81,881,1033,4),(182,0,82,867,1027,6),(183,0,83,862,1042,5),(184,0,83,867,1045,6),(185,0,84,1093,926,7),(186,0,85,1098,921,7),(187,0,86,1079,915,7),(188,0,86,1081,912,7),(189,0,87,1085,915,7),(190,0,87,1087,913,7),(191,0,88,1079,915,6),(192,0,88,1081,912,6),(193,0,88,1079,919,6),(194,0,88,1080,919,6),(195,0,89,1085,916,6),(196,0,90,1079,913,5),(197,0,90,1080,916,5),(198,0,91,1086,913,5),(199,0,91,1086,916,5),(200,0,92,1063,932,7),(201,0,92,1064,937,6),(202,0,92,1059,941,6),(203,0,93,1056,940,7),(204,0,94,1045,935,6),(205,0,94,1046,933,7),(206,0,94,1045,938,7),(207,0,95,1067,921,7),(208,0,95,1068,923,7),(209,0,95,1066,926,7),(210,0,96,1053,921,7),(211,0,96,1053,927,7),(212,0,97,1045,919,7),(213,0,97,1043,921,7),(214,0,98,1035,924,6),(215,0,98,1035,925,6),(216,0,98,1033,926,7),(217,0,98,1038,925,7),(218,0,99,1029,908,7),(219,0,99,1030,911,7),(220,0,100,1046,906,7),(221,0,101,1046,901,7),(222,0,101,1046,902,7),(223,0,102,1042,902,6),(224,0,102,1043,904,6),(225,0,102,1040,908,6),(226,0,102,1044,908,6),(227,0,103,1031,899,7),(228,0,103,1032,899,6),(229,0,103,1033,899,6),(230,0,103,1035,897,6),(231,0,103,1035,901,7),(232,0,104,1015,886,7),(233,0,104,1024,884,7),(234,0,105,999,853,7),(235,0,106,998,839,5),(236,0,106,996,843,7),(237,0,107,990,839,5),(238,0,107,990,843,7),(239,0,108,975,857,7),(240,0,108,983,848,7),(241,0,108,979,852,6),(242,0,108,979,852,7),(243,0,108,983,858,6),(244,0,108,983,858,7),(245,0,109,554,681,7),(246,0,110,549,673,6),(247,0,110,553,673,7),(248,0,111,549,663,7),(249,0,112,558,663,7),(250,0,113,586,673,7),(251,0,114,601,682,7),(252,0,115,597,685,7),(253,0,116,589,663,7),(254,0,117,589,657,7),(255,0,118,599,649,7),(256,0,118,602,648,6),(257,0,120,591,647,7),(258,0,120,593,645,6),(259,0,121,585,645,6),(260,0,121,585,647,7),(261,0,122,571,647,7),(262,0,122,573,644,6),(263,0,123,573,637,6),(264,0,123,575,637,7),(265,0,124,581,633,7),(266,0,126,513,684,6),(267,0,127,499,699,6),(268,0,128,499,711,6),(269,0,130,565,1046,7),(270,0,130,567,1053,7),(271,0,131,572,1046,7),(272,0,131,573,1050,6),(273,0,132,574,1040,6),(274,0,132,577,1039,7),(275,0,133,574,1029,6),(276,0,133,578,1029,7),(277,0,133,578,1030,7),(278,0,134,574,1023,6),(279,0,134,578,1022,7),(280,0,135,584,1021,7),(281,0,135,584,1023,7),(282,0,136,587,1032,7),(283,0,137,592,1032,7),(284,0,139,590,1040,7),(285,0,139,593,1040,6),(286,0,140,581,1048,7),(287,0,140,585,1050,6),(288,0,140,583,1054,7),(289,0,140,585,1054,7),(290,0,141,601,1049,7),(291,0,142,610,1044,7),(292,0,142,618,1044,7),(293,0,143,610,1051,7),(294,0,143,614,1051,6),(295,0,143,618,1050,7),(296,0,144,620,1043,7),(297,0,144,623,1048,5),(298,0,144,623,1051,6),(299,0,144,626,1047,7),(300,0,145,610,1067,7),(301,0,146,614,1070,7),(302,0,146,623,1072,7),(303,0,146,623,1075,7),(304,0,147,615,1066,7),(305,0,147,621,1066,7),(306,0,148,631,1053,7),(307,0,149,631,1043,7),(308,0,150,622,1026,7),(309,0,150,619,1029,7),(310,0,150,621,1032,7),(311,0,150,624,1034,7),(312,0,150,628,1036,7),(313,0,151,622,1027,6),(314,0,151,625,1030,6),(315,0,151,625,1034,6),(316,0,151,629,1032,6),(317,0,152,619,1311,7),(318,0,152,619,1312,7),(319,0,153,625,1313,7),(320,0,154,629,1329,7),(321,0,154,630,1329,7),(322,0,155,630,1316,6),(323,0,156,620,1342,7),(324,0,156,621,1347,7),(325,0,156,621,1351,7),(326,0,156,627,1355,7),(327,0,157,622,1364,7),(328,0,158,619,1373,7),(329,0,158,623,1374,7),(330,0,158,627,1372,7),(331,0,158,627,1375,7),(332,0,159,1085,1447,7),(333,0,160,1085,1451,7),(334,0,161,1085,1451,6),(335,0,162,1085,1447,6),(336,0,163,1097,1457,6),(337,0,163,1100,1458,7),(338,0,163,1093,1460,6),(339,0,163,1094,1460,7),(340,0,163,1098,1460,5),(341,0,163,1096,1463,6),(342,0,163,1099,1460,6),(343,0,163,1097,1463,7),(344,0,163,1102,1460,7),(345,0,164,1105,1447,7),(346,0,165,1113,1441,5),(347,0,165,1113,1443,7),(348,0,165,1115,1441,7),(349,0,165,1116,1441,6),(350,0,165,1111,1447,7),(351,0,165,1113,1444,5),(352,0,165,1112,1447,7),(353,0,166,1078,1468,6),(354,0,166,1081,1471,5),(355,0,166,1082,1471,6),(356,0,166,1081,1471,7),(357,0,166,1079,1473,6),(358,0,166,1084,1473,7),(359,0,166,1083,1479,7),(360,0,166,1084,1479,7),(361,0,167,1071,1485,6),(362,0,167,1069,1485,7),(363,0,167,1076,1478,6),(364,0,167,1076,1477,7),(365,0,167,1072,1481,7),(366,0,167,1072,1485,6),(367,0,167,1074,1485,6),(368,0,167,1076,1486,7),(369,0,168,1122,1493,7),(370,0,168,1125,1497,7),(371,0,169,1117,1471,6),(372,0,169,1112,1472,5),(373,0,169,1114,1474,5),(374,0,169,1112,1474,6),(375,0,169,1118,1473,4),(376,0,169,1115,1476,4),(377,0,169,1116,1479,5),(378,0,169,1116,1476,6),(379,0,169,1116,1481,4),(380,0,169,1120,1473,6),(381,0,169,1120,1474,6),(382,0,170,1126,1482,6),(383,0,171,1134,1476,6),(384,0,172,1126,1466,6),(385,0,172,1129,1464,5),(386,0,172,1131,1466,5),(387,0,172,1131,1464,6),(388,0,172,1135,1464,6),(389,0,172,1129,1470,5),(390,0,173,1142,1466,6),(391,0,173,1142,1468,5),(392,0,174,1147,1447,6),(393,0,174,1145,1449,6),(394,0,174,1149,1452,5),(395,0,174,1150,1457,6),(396,0,174,1152,1449,6),(397,0,175,1126,1436,4),(398,0,175,1126,1439,4),(399,0,175,1127,1439,5),(400,0,175,1125,1439,6),(401,0,175,1129,1436,5),(402,0,175,1131,1439,5),(403,0,175,1128,1436,6),(404,0,175,1134,1437,6),(405,0,175,1134,1439,6),(406,0,175,1128,1441,6),(407,0,175,1132,1441,4),(408,0,176,1044,1097,4),(409,0,176,1044,1097,5),(410,0,176,1044,1100,4),(411,0,176,1044,1100,5),(412,0,176,1056,1096,6),(413,0,176,1056,1097,6),(414,0,176,1056,1097,7);
/*!40000 ALTER TABLE `tiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-11 21:07:12
