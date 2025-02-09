-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: MySQL-8.2    Database: test
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `cms_materials_votes`
--

DROP TABLE IF EXISTS `cms_materials_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_votes` (
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP-address',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vote` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Vote',
  PRIMARY KEY (`material_id`,`ip`),
  KEY `material_id` (`material_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials votes log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_votes`
--

LOCK TABLES `cms_materials_votes` WRITE;
/*!40000 ALTER TABLE `cms_materials_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_materials_votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:55
