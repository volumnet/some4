-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crontab`
--

DROP TABLE IF EXISTS `crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crontab` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Process ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Is active',
  `once` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Process once',
  `minutes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Minutes',
  `hours` varchar(255) NOT NULL DEFAULT '' COMMENT 'Hours',
  `days` varchar(255) NOT NULL DEFAULT '' COMMENT 'Days',
  `weekdays` varchar(255) NOT NULL DEFAULT '' COMMENT 'Weekdays',
  `command_line` varchar(255) NOT NULL DEFAULT '' COMMENT 'Arbitrary command line',
  `command_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Command classname',
  `args` text COMMENT 'Command arguments',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Processing start time',
  `save_log` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Save log',
  `email_log` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email for sending log',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Crontab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crontab`
--

LOCK TABLES `crontab` WRITE;
/*!40000 ALTER TABLE `crontab` DISABLE KEYS */;
/*!40000 ALTER TABLE `crontab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 23:12:23
