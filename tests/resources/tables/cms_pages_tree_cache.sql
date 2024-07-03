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
-- Table structure for table `cms_pages_tree_cache`
--

DROP TABLE IF EXISTS `cms_pages_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pages_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages_tree_cache`
--

LOCK TABLES `cms_pages_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_pages_tree_cache` DISABLE KEYS */;
INSERT INTO `cms_pages_tree_cache` VALUES (1,2,1),(1,3,1),(1,4,2),(1,5,2),(1,6,2),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,2),(1,17,3),(1,18,4),(1,19,4),(1,20,4),(1,21,3),(1,22,3),(1,23,2),(1,24,2),(1,25,1),(1,26,2),(1,27,1),(1,28,2),(1,29,1),(3,4,1),(3,5,1),(3,6,1),(14,26,1),(14,28,1),(15,16,1),(15,17,2),(15,18,3),(15,19,3),(15,20,3),(15,21,2),(15,22,2),(15,23,1),(15,24,1),(16,17,1),(16,18,2),(16,19,2),(16,20,2),(16,21,1),(16,22,1),(17,18,1),(17,19,1),(17,20,1);
/*!40000 ALTER TABLE `cms_pages_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:04
