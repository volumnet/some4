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
-- Table structure for table `cms_materials_affected_pages_cache`
--

DROP TABLE IF EXISTS `cms_materials_affected_pages_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_affected_pages_cache` (
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`material_id`,`page_id`),
  KEY `material_id` (`material_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials affected pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_affected_pages_cache`
--

LOCK TABLES `cms_materials_affected_pages_cache` WRITE;
/*!40000 ALTER TABLE `cms_materials_affected_pages_cache` DISABLE KEYS */;
INSERT INTO `cms_materials_affected_pages_cache` VALUES (7,7),(8,7),(9,7),(10,18),(10,19),(10,20),(10,21),(10,23),(11,18),(11,19),(11,20),(11,21),(11,23),(12,18),(12,19),(12,20),(12,21),(12,23),(13,18),(13,19),(13,20),(13,21),(13,23),(14,18),(14,19),(14,20),(14,21),(14,23),(15,18),(15,19),(15,20),(15,21),(15,23),(16,18),(16,19),(16,20),(16,21),(16,23),(17,18),(17,19),(17,20),(17,21),(17,23),(18,18),(18,19),(18,20),(18,21),(18,23),(19,18),(19,19),(19,20),(19,21),(19,23);
/*!40000 ALTER TABLE `cms_materials_affected_pages_cache` ENABLE KEYS */;
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
