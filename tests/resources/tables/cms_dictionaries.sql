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
-- Table structure for table `cms_dictionaries`
--

DROP TABLE IF EXISTS `cms_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_dictionaries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `orderby` enum('id','urn','name','priority') NOT NULL DEFAULT 'priority' COMMENT 'Order by',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `urn` (`urn`),
  KEY `orderby` (`orderby`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='Dictionaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dictionaries`
--

LOCK TABLES `cms_dictionaries` WRITE;
/*!40000 ALTER TABLE `cms_dictionaries` DISABLE KEYS */;
INSERT INTO `cms_dictionaries` VALUES (1,0,1,1,'test','Тестовый справочник',1,'priority'),(2,1,1,1,'value1','Запись 1',2,'priority'),(3,1,1,1,'value2','Запись 2',3,'priority'),(4,1,0,1,'value3','Запись 3',4,'priority');
/*!40000 ALTER TABLE `cms_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:23:02
