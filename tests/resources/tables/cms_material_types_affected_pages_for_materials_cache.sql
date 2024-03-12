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
-- Table structure for table `cms_material_types_affected_pages_for_materials_cache`
--

DROP TABLE IF EXISTS `cms_material_types_affected_pages_for_materials_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_material_types_affected_pages_for_materials_cache` (
  `material_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'NAT',
  PRIMARY KEY (`material_type_id`,`page_id`),
  KEY `material_type_id` (`material_type_id`),
  KEY `page_id` (`page_id`),
  KEY `nat` (`nat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types affected pages for materials';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_material_types_affected_pages_for_materials_cache`
--

LOCK TABLES `cms_material_types_affected_pages_for_materials_cache` WRITE;
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_materials_cache` DISABLE KEYS */;
INSERT INTO `cms_material_types_affected_pages_for_materials_cache` VALUES (1,1,0),(2,1,0),(2,20,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,5,0),(3,6,0),(3,8,0),(3,9,0),(3,10,0),(3,15,0),(3,16,0),(3,17,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,27,0),(3,30,0),(3,31,0),(3,32,0),(3,33,0),(4,1,0),(5,1,0),(3,7,1),(4,15,1),(4,16,1),(4,17,1),(4,18,1),(4,19,1),(4,20,1),(4,21,1),(4,22,1),(4,23,1),(4,24,1),(5,15,1),(5,16,1),(5,17,1),(5,18,1),(5,19,1),(5,20,1),(5,21,1),(5,22,1),(5,23,1),(5,24,1);
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_materials_cache` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 18:17:30
