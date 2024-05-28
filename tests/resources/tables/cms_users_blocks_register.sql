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
-- Table structure for table `cms_users_blocks_register`
--

DROP TABLE IF EXISTS `cms_users_blocks_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_blocks_register` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `form_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Register form ID#',
  `email_as_login` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Use e-mail as login',
  `notify_about_edit` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Notify admin about profile edit',
  `allow_edit_social` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Allow to edit social networks',
  `activation_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Activation type: 0 - by admin, 1 - by user, 2 - already active',
  `allow_to` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Allow block to: -1 - unregistered, 0 - all, 1 - registered',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Redirect unallowable users to',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3 COMMENT='Register blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_blocks_register`
--

LOCK TABLES `cms_users_blocks_register` WRITE;
/*!40000 ALTER TABLE `cms_users_blocks_register` DISABLE KEYS */;
INSERT INTO `cms_users_blocks_register` VALUES (45,4,1,0,0,1,0,'');
/*!40000 ALTER TABLE `cms_users_blocks_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 10:40:31
