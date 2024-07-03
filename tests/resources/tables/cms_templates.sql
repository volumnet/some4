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
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `width` int unsigned NOT NULL DEFAULT '640' COMMENT 'Width',
  `height` int unsigned NOT NULL DEFAULT '1024' COMMENT 'Height',
  `locations_info` text COMMENT 'Locations info',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_templates`
--

LOCK TABLES `cms_templates` WRITE;
/*!40000 ALTER TABLE `cms_templates` DISABLE KEYS */;
INSERT INTO `cms_templates` VALUES (1,0,0,660,1320,'[{\"urn\":\"logo\",\"x\":\"10\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"contacts_top\",\"x\":\"500\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_top\",\"x\":\"10\",\"y\":\"130\",\"width\":\"480\",\"height\":\"60\"},{\"urn\":\"search_form\",\"x\":\"500\",\"y\":\"130\",\"width\":\"150\",\"height\":\"60\"},{\"urn\":\"banners\",\"x\":\"10\",\"y\":\"200\",\"width\":\"640\",\"height\":\"60\"},{\"urn\":\"left\",\"x\":\"10\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content\",\"x\":\"170\",\"y\":\"270\",\"width\":\"320\",\"height\":\"220\"},{\"urn\":\"right\",\"x\":\"500\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content2\",\"x\":\"10\",\"y\":\"500\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content3\",\"x\":\"170\",\"y\":\"600\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"content4\",\"x\":\"10\",\"y\":\"700\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content5\",\"x\":\"170\",\"y\":\"800\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"share\",\"x\":\"170\",\"y\":\"900\",\"width\":\"320\",\"height\":\"60\"},{\"urn\":\"copyrights\",\"x\":\"10\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_bottom\",\"x\":\"500\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"head_counters\",\"x\":\"10\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"},{\"urn\":\"footer_counters\",\"x\":\"335\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"}]');
/*!40000 ALTER TABLE `cms_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:06
