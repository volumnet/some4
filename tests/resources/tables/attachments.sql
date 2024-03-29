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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `image` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Is image',
  `realname` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Real file name',
  `filename` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Original file name',
  `mime` varchar(255) NOT NULL DEFAULT '0' COMMENT 'MIME-type',
  PRIMARY KEY (`id`),
  KEY `classname` (`classname`,`pid`),
  KEY `classname_2` (`classname`),
  KEY `pid` (`pid`),
  KEY `realname` (`realname`(32))
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COMMENT='Attachments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'RAAS\\CMS\\Material_Field',15,1,'0','0','application/octet-stream'),(2,'RAAS\\CMS\\Material_Field',15,1,'0','0','application/octet-stream'),(3,'RAAS\\CMS\\Material_Field',15,1,'0','0','application/octet-stream'),(4,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(5,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(6,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(7,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(8,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(9,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(10,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(11,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(12,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(13,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(14,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(15,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(16,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(17,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(18,'RAAS\\CMS\\Material_Field',17,1,'0','0','application/octet-stream'),(19,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(20,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(21,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(22,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(23,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(24,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(25,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(26,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(27,'RAAS\\CMS\\Page_Field',2,1,'0','0','application/octet-stream'),(28,'RAAS\\CMS\\Material_Field',29,0,'test.doc','test.doc','application/binary'),(29,'RAAS\\CMS\\Material_Field',29,0,'test_1.pdf','test.pdf','application/binary'),(30,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(31,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(32,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(33,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(34,'RAAS\\CMS\\Material_Field',29,0,'test_2.doc','test.doc','application/binary'),(35,'RAAS\\CMS\\Material_Field',29,0,'test_3.pdf','test.pdf','application/binary'),(36,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(37,'RAAS\\CMS\\Material_Field',29,0,'test_4.doc','test.doc','application/binary'),(38,'RAAS\\CMS\\Material_Field',29,0,'test_5.pdf','test.pdf','application/binary'),(39,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(40,'RAAS\\CMS\\Material_Field',29,0,'test_6.doc','test.doc','application/binary'),(41,'RAAS\\CMS\\Material_Field',29,0,'test_7.pdf','test.pdf','application/binary'),(42,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(43,'RAAS\\CMS\\Material_Field',29,0,'test_8.doc','test.doc','application/binary'),(44,'RAAS\\CMS\\Material_Field',29,0,'test_9.pdf','test.pdf','application/binary'),(45,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(46,'RAAS\\CMS\\Material_Field',29,0,'test_10.doc','test.doc','application/binary'),(47,'RAAS\\CMS\\Material_Field',29,0,'test_11.pdf','test.pdf','application/binary'),(48,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(49,'RAAS\\CMS\\Material_Field',29,0,'test_12.doc','test.doc','application/binary'),(50,'RAAS\\CMS\\Material_Field',29,0,'test_13.pdf','test.pdf','application/binary'),(51,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(52,'RAAS\\CMS\\Material_Field',29,0,'test_14.doc','test.doc','application/binary'),(53,'RAAS\\CMS\\Material_Field',29,0,'test_15.pdf','test.pdf','application/binary'),(54,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(55,'RAAS\\CMS\\Material_Field',29,0,'test_16.doc','test.doc','application/binary'),(56,'RAAS\\CMS\\Material_Field',29,0,'test_17.pdf','test.pdf','application/binary'),(57,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream'),(58,'RAAS\\CMS\\Material_Field',29,0,'test_18.doc','test.doc','application/binary'),(59,'RAAS\\CMS\\Material_Field',29,0,'test_19.pdf','test.pdf','application/binary'),(60,'RAAS\\CMS\\Material_Field',27,1,'0','0','application/octet-stream');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 15:46:31
