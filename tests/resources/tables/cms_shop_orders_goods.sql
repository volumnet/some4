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
-- Table structure for table `cms_shop_orders_goods`
--

DROP TABLE IF EXISTS `cms_shop_orders_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_orders_goods` (
  `order_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT 'Name',
  `meta` varchar(256) NOT NULL DEFAULT '' COMMENT 'Meta data',
  `realprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Real price',
  `amount` int unsigned NOT NULL DEFAULT '0' COMMENT 'Amount',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  KEY `order_id` (`order_id`),
  KEY `material_id` (`material_id`),
  KEY `meta` (`meta`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders goods';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_orders_goods`
--

LOCK TABLES `cms_shop_orders_goods` WRITE;
/*!40000 ALTER TABLE `cms_shop_orders_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_orders_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:05
