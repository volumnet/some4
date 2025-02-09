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
-- Table structure for table `cms_shop_blocks_yml_fields`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_fields` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT 'Field callback',
  `field_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field static value',
  PRIMARY KEY (`id`,`mtype`,`field_name`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`),
  KEY `field_name` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_fields`
--

LOCK TABLES `cms_shop_blocks_yml_fields` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_fields` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_fields` VALUES (44,4,'available','31','',''),(44,4,'currencyId','','','RUR'),(44,4,'delivery','','','1'),(44,4,'description','description','',''),(44,4,'name','name','',''),(44,4,'oldprice','34','',''),(44,4,'pickup','','','1'),(44,4,'picture','27','',''),(44,4,'price','26','',''),(44,4,'rec','','',''),(44,4,'vendorCode','25','','');
/*!40000 ALTER TABLE `cms_shop_blocks_yml_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:56
