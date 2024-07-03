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
-- Table structure for table `cms_shop_imageloaders`
--

DROP TABLE IF EXISTS `cms_shop_imageloaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_imageloaders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `ifid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Image field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `sep_string` varchar(255) NOT NULL DEFAULT '' COMMENT 'Separator string',
  `interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Interface classname',
  `interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  PRIMARY KEY (`id`),
  KEY `mtype` (`mtype`),
  KEY `ufid` (`ufid`),
  KEY `ifid` (`ifid`),
  KEY `interface_id` (`interface_id`),
  KEY `urn` (`urn`),
  KEY `interface_classname` (`interface_classname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Image loaders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_imageloaders`
--

LOCK TABLES `cms_shop_imageloaders` WRITE;
/*!40000 ALTER TABLE `cms_shop_imageloaders` DISABLE KEYS */;
INSERT INTO `cms_shop_imageloaders` VALUES (1,4,'25','27','Стандартный загрузчик изображений','default','_','RAAS\\CMS\\Shop\\ImageloaderInterface',0);
/*!40000 ALTER TABLE `cms_shop_imageloaders` ENABLE KEYS */;
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
