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
-- Table structure for table `cms_shop_blocks_cart`
--

DROP TABLE IF EXISTS `cms_shop_blocks_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_cart` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `cart_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `epay_interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay interface ID#',
  `epay_login` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay login',
  `epay_pass1` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass1',
  `epay_pass2` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass2',
  `epay_test` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay test mode',
  `epay_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency',
  PRIMARY KEY (`id`),
  KEY `cart_type` (`cart_type`),
  KEY `epay_interface_id` (`epay_interface_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_cart`
--

LOCK TABLES `cms_shop_blocks_cart` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_cart` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_cart` VALUES (38,1,0,'','','',0,''),(40,1,0,'','','',0,''),(41,2,0,'','','',0,''),(43,2,0,'','','',0,'');
/*!40000 ALTER TABLE `cms_shop_blocks_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 23:12:20
