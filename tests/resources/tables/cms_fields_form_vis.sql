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
-- Table structure for table `cms_fields_form_vis`
--

DROP TABLE IF EXISTS `cms_fields_form_vis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_fields_form_vis` (
  `fid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Section ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  PRIMARY KEY (`fid`,`pid`),
  KEY `fid` (`fid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Fields form';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fields_form_vis`
--

LOCK TABLES `cms_fields_form_vis` WRITE;
/*!40000 ALTER TABLE `cms_fields_form_vis` DISABLE KEYS */;
INSERT INTO `cms_fields_form_vis` VALUES (12,1,1),(13,1,1),(14,2,1),(15,2,1),(16,3,1),(17,3,1),(18,3,1),(19,3,1),(25,4,1),(25,5,1),(26,4,1),(26,5,1),(27,4,1),(27,5,1),(28,4,1),(28,5,1),(29,4,1),(29,5,1),(30,4,1),(30,5,1),(31,4,1),(31,5,1),(32,4,1),(32,5,1),(33,4,1),(33,5,1),(34,4,1),(34,5,1),(35,4,1),(35,5,1),(47,4,1),(47,5,1),(48,5,1),(49,6,1),(50,6,1),(51,6,1),(52,6,1),(53,6,1),(54,6,1),(55,7,1),(56,7,1),(57,7,1),(58,7,1),(59,7,1);
/*!40000 ALTER TABLE `cms_fields_form_vis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:54
