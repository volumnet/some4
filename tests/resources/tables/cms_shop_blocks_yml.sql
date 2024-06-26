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
-- Table structure for table `cms_shop_blocks_yml`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Shop name',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT 'Company name',
  `agency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support company name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support e-mail',
  `cpa` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'YM purchase',
  `default_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default currency',
  `local_delivery_cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Local delivery cost',
  `delivery_options` text COMMENT 'Delivery options',
  `pickup_options` text COMMENT 'Pickup options',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COMMENT='Yandex Market blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml`
--

LOCK TABLES `cms_shop_blocks_yml` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml` VALUES (44,'','','Volume Networks','info@volumnet.ru',0,'RUR',0.00,NULL,NULL);
/*!40000 ALTER TABLE `cms_shop_blocks_yml` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 19:20:38
