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
-- Table structure for table `cms_shop_orders`
--

DROP TABLE IF EXISTS `cms_shop_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` int unsigned NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT 'User Agent',
  `status_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Payment status',
  `payment_interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Payment interface classname',
  `payment_interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Payment interface ID#',
  `payment_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Payment ID#',
  `payment_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Payment URL',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`),
  KEY `status_id` (`status_id`),
  KEY `paid` (`paid`),
  KEY `payment_id` (`payment_id`),
  KEY `payment_interface_classname` (`payment_interface_classname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_orders`
--

LOCK TABLES `cms_shop_orders` WRITE;
/*!40000 ALTER TABLE `cms_shop_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:57
