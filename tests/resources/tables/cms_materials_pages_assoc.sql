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
-- Table structure for table `cms_materials_pages_assoc`
--

DROP TABLE IF EXISTS `cms_materials_pages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_pages_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`pid`),
  KEY `id` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials to pages associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_pages_assoc`
--

LOCK TABLES `cms_materials_pages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_materials_pages_assoc` DISABLE KEYS */;
INSERT INTO `cms_materials_pages_assoc` VALUES (10,1),(10,18),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(11,1),(11,18),(11,19),(11,20),(11,21),(11,22),(11,23),(11,24),(12,1),(12,18),(12,19),(12,20),(12,21),(12,22),(12,23),(12,24),(13,1),(13,18),(13,19),(13,20),(13,21),(13,22),(13,23),(13,24),(14,1),(14,18),(14,19),(14,20),(14,21),(14,22),(14,23),(14,24),(15,1),(15,18),(15,19),(15,20),(15,21),(15,22),(15,23),(15,24),(16,1),(16,18),(16,19),(16,20),(16,21),(16,22),(16,23),(16,24),(17,1),(17,18),(17,19),(17,20),(17,21),(17,22),(17,23),(17,24),(18,1),(18,18),(18,19),(18,20),(18,21),(18,22),(18,23),(18,24),(19,1),(19,18),(19,19),(19,20),(19,21),(19,22),(19,23),(19,24),(20,15),(20,16),(20,17),(20,18),(20,19),(20,20),(20,21),(20,22),(20,23),(20,24),(21,15),(21,16),(21,17),(21,18),(21,19),(21,20),(21,21),(21,22),(21,23),(21,24),(22,15),(22,16),(22,17),(22,18),(22,19),(22,20),(22,21),(22,22),(22,23),(22,24),(23,15),(23,16),(23,17),(23,18),(23,19),(23,20),(23,21),(23,22),(23,23),(23,24),(24,15),(24,16),(24,17),(24,18),(24,19),(24,20),(24,21),(24,22),(24,23),(24,24),(25,15),(25,16),(25,17),(25,18),(25,19),(25,20),(25,21),(25,22),(25,23),(25,24);
/*!40000 ALTER TABLE `cms_materials_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:03
