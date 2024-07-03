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
-- Table structure for table `cms_blocks_material`
--

DROP TABLE IF EXISTS `cms_blocks_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_material` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  `sort_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sorting var name',
  `order_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Order var name',
  `sort_field_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field for sorting by default',
  `sort_order_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default order',
  `legacy` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect legacy addresses',
  PRIMARY KEY (`id`),
  KEY `material_type` (`material_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_material`
--

LOCK TABLES `cms_blocks_material` WRITE;
/*!40000 ALTER TABLE `cms_blocks_material` DISABLE KEYS */;
INSERT INTO `cms_blocks_material` VALUES (13,1,'page',0,'','','post_date','asc',0),(16,2,'page',0,'','','post_date','asc',0),(22,3,'page',20,'','','16','desc!',0),(23,3,'',3,'','','16','desc!',0),(34,4,'page',20,'','','26','asc',0),(35,4,'',0,'','','price','asc',0),(49,2,'page',20,'','','name','asc!',0),(50,6,'page',20,'','','50','asc!',0),(51,7,'page',20,'','','name','asc!',0);
/*!40000 ALTER TABLE `cms_blocks_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:01
