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
-- Table structure for table `cms_shop_blocks_yml_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_material_types_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_material_types_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'YM type',
  `param_exceptions` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Params from all fields except...',
  `params_callback` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci COMMENT 'Params callback',
  PRIMARY KEY (`id`,`mtype`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types association';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_material_types_assoc`
--

LOCK TABLES `cms_shop_blocks_yml_material_types_assoc` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_material_types_assoc` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_material_types_assoc` VALUES (44,4,'',0,'');
/*!40000 ALTER TABLE `cms_shop_blocks_yml_material_types_assoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 10:40:28
