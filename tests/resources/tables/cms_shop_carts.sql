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
-- Table structure for table `cms_shop_carts`
--

DROP TABLE IF EXISTS `cms_shop_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_carts` (
  `cart_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `meta` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta',
  `amount` int unsigned NOT NULL DEFAULT '0' COMMENT 'Amount',
  PRIMARY KEY (`cart_type_id`,`uid`,`material_id`,`meta`),
  KEY `cart_type_id` (`cart_type_id`),
  KEY `uid` (`uid`),
  KEY `material_id` (`material_id`),
  KEY `meta` (`meta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart sessions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_carts`
--

LOCK TABLES `cms_shop_carts` WRITE;
/*!40000 ALTER TABLE `cms_shop_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_carts` ENABLE KEYS */;
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
