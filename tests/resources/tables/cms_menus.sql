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
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `domain_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Domain ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `inherit` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Nesting level',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`),
  KEY `urn` (`urn`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='Menus';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,0,0,1,1,'Верхнее меню','top','/',0,0,0),(2,0,0,1,1,'Нижнее меню','bottom','/',1,1,0),(3,0,0,1,1,'Карта сайта','sitemap','/',1,10,0),(4,0,0,1,1,'Левое меню','left','/catalog/',15,10,0),(5,1,0,1,1,'О компании','','/about/',2,9,20),(6,1,0,1,1,'Услуги','','/services/',3,9,30),(7,1,0,0,1,'Новости','','/news/',7,9,40),(8,1,0,1,1,'Контакты','','/contacts/',8,9,50),(9,1,0,1,1,'Каталог продукции','','/catalog/',15,9,60),(10,1,0,1,1,'Главная','','/',0,0,10);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 19:20:37
