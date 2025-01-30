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
-- Table structure for table `cms_snippets`
--

DROP TABLE IF EXISTS `cms_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_snippets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `locked` varchar(255) NOT NULL DEFAULT '' COMMENT 'Locked',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COMMENT='Snippets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_snippets`
--

LOCK TABLES `cms_snippets` WRITE;
/*!40000 ALTER TABLE `cms_snippets` DISABLE KEYS */;
INSERT INTO `cms_snippets` VALUES (5,1,0,1,'__raas_form_notify','form_notification.php'),(8,0,0,0,'dummy',''),(9,2,0,0,'banners',''),(10,2,0,0,'feedback',''),(11,2,0,0,'feedback_modal',''),(12,2,0,0,'head',''),(13,2,0,0,'order_call_modal',''),(14,2,0,0,'sitemap_xml',''),(15,2,0,0,'logo',''),(16,2,0,0,'features_main',''),(17,2,0,0,'robots',''),(18,2,0,0,'custom_css',''),(19,2,0,0,'menu_content',''),(20,2,0,0,'menu_top',''),(21,2,0,0,'menu_bottom',''),(22,2,0,0,'news',''),(23,2,0,0,'news_main',''),(25,1,0,1,'__raas_shop_order_notify','shop/form_notification.php'),(29,1,0,0,'__raas_robokassa_interface',''),(31,1,0,1,'catalog_interface',''),(32,2,0,0,'cart',''),(33,2,0,0,'robokassa',''),(34,2,0,0,'yml',''),(35,2,0,0,'item_inc',''),(36,2,0,0,'category_inc',''),(37,2,0,0,'catalog',''),(38,2,0,0,'catalog_filter',''),(39,2,0,0,'cart_main',''),(40,2,0,0,'favorites_main',''),(41,2,0,0,'menu_left',''),(42,2,0,0,'file_inc',''),(43,2,0,0,'spec',''),(44,2,0,0,'my_orders',''),(49,1,0,1,'__raas_users_register_notify','users/register_notification.php'),(50,1,0,1,'__raas_users_recovery_notify','users/recovery_notification.php'),(51,2,0,0,'register',''),(52,2,0,0,'activation',''),(53,2,0,0,'login',''),(54,2,0,0,'recovery',''),(55,2,0,0,'goods_faq',''),(56,2,0,0,'goods_reviews',''),(57,1,0,0,'hidden_props',''),(58,1,1,1,'cart_interface',''),(62,1,1,1,'sberbank_interface',''),(63,2,1,1,'user_ajax',''),(64,2,1,1,'menu_user','');
/*!40000 ALTER TABLE `cms_snippets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:58
