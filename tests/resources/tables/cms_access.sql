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
-- Table structure for table `cms_access`
--

DROP TABLE IF EXISTS `cms_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_access` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `block_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  `to_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'To (type)',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `material_id` (`material_id`),
  KEY `block_id` (`block_id`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='Site access';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_access`
--

LOCK TABLES `cms_access` WRITE;
/*!40000 ALTER TABLE `cms_access` DISABLE KEYS */;
INSERT INTO `cms_access` VALUES (1,4,0,0,0,0,0,0,0),(2,4,0,0,1,4,0,1,1),(3,0,0,19,0,0,0,0,0),(4,0,0,19,1,3,2,0,1),(5,0,7,0,0,0,0,0,0),(6,0,7,0,1,3,1,0,1);
/*!40000 ALTER TABLE `cms_access` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 15:46:31
