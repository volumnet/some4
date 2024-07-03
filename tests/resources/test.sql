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

--
-- Table structure for table `cms_access`
--

DROP TABLE IF EXISTS `cms_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_access` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `block_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  `to_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'To (type)',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `material_id` (`material_id`),
  KEY `block_id` (`block_id`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='Site access';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_access`
--

LOCK TABLES `cms_access` WRITE;
/*!40000 ALTER TABLE `cms_access` DISABLE KEYS */;
INSERT INTO `cms_access` VALUES (1,4,0,0,0,0,0,0,0),(2,4,0,0,1,4,0,1,1),(3,0,0,19,0,0,0,0,0),(4,0,0,19,1,3,2,0,1),(5,0,7,0,0,0,0,0,0),(6,0,7,0,1,3,1,0,1);
/*!40000 ALTER TABLE `cms_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_access_blocks_cache`
--

DROP TABLE IF EXISTS `cms_access_blocks_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_access_blocks_cache` (
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `block_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`block_id`),
  KEY `uid` (`uid`),
  KEY `block_id` (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blocks access cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_access_blocks_cache`
--

LOCK TABLES `cms_access_blocks_cache` WRITE;
/*!40000 ALTER TABLE `cms_access_blocks_cache` DISABLE KEYS */;
INSERT INTO `cms_access_blocks_cache` VALUES (0,19,0),(1,19,0),(2,19,1);
/*!40000 ALTER TABLE `cms_access_blocks_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_access_materials_cache`
--

DROP TABLE IF EXISTS `cms_access_materials_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_access_materials_cache` (
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `allow` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`material_id`),
  KEY `uid` (`uid`),
  KEY `material_id` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials access cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_access_materials_cache`
--

LOCK TABLES `cms_access_materials_cache` WRITE;
/*!40000 ALTER TABLE `cms_access_materials_cache` DISABLE KEYS */;
INSERT INTO `cms_access_materials_cache` VALUES (0,7,0),(1,7,1),(2,7,0);
/*!40000 ALTER TABLE `cms_access_materials_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_access_pages_cache`
--

DROP TABLE IF EXISTS `cms_access_pages_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_access_pages_cache` (
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `allow` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`page_id`),
  KEY `uid` (`uid`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages access cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_access_pages_cache`
--

LOCK TABLES `cms_access_pages_cache` WRITE;
/*!40000 ALTER TABLE `cms_access_pages_cache` DISABLE KEYS */;
INSERT INTO `cms_access_pages_cache` VALUES (0,4,0),(1,4,1),(2,4,0);
/*!40000 ALTER TABLE `cms_access_pages_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks`
--

DROP TABLE IF EXISTS `cms_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT 'Location',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `block_type` varchar(255) NOT NULL DEFAULT 'RAAS\\CMS\\Block_HTML' COMMENT 'Block type',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `inherit` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit',
  `nat` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Translate address',
  `params` text COMMENT 'Additional params',
  `interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Interface classname',
  `interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `widget_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Widget ID#',
  `cache_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Cache type',
  `cache_single_page` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Cache by single pages',
  `cache_interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Cache interface classname',
  `cache_interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cache interface_id',
  `vis_material` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility by material',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `cache_interface_id` (`cache_interface_id`),
  KEY `interface_classname` (`interface_classname`),
  KEY `interface_id` (`interface_id`),
  KEY `widget_id` (`widget_id`),
  KEY `cache_interface_classname` (`cache_interface_classname`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks`
--

LOCK TABLES `cms_blocks` WRITE;
/*!40000 ALTER TABLE `cms_blocks` DISABLE KEYS */;
INSERT INTO `cms_blocks` VALUES (1,'logo',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Логотип',1,1,'','',0,15,0,0,'',0,0),(2,'contacts_top',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Контакты',1,1,'','',0,0,0,0,'',0,0),(3,'contacts_top',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Социальные сети',1,1,'','',0,0,0,0,'',0,0),(4,'copyrights',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Копирайты',1,1,'','',0,0,0,0,'',0,0),(5,'copyrights',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Privacy',1,1,'','',0,0,0,0,'',0,0),(6,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Form','Обратная связь',1,1,'','RAAS\\CMS\\FormInterface',0,11,0,0,'',0,0),(7,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Form','Заказать звонок',1,1,'','RAAS\\CMS\\FormInterface',0,13,0,0,'',0,0),(8,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Яндекс.Метрика',1,1,'','',0,0,0,0,'',0,0),(9,'head_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Google Analytics',1,1,'','',0,0,0,0,'',0,0),(10,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Триггеры',1,1,'','',0,0,0,0,'',0,0),(11,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Уведомление о Cookies',1,1,'','',0,0,0,0,'',0,0),(12,'content',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Добро пожаловать',0,1,'','',0,0,0,0,'',0,0),(13,'content',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Material','Наши преимущества',0,0,'','RAAS\\CMS\\MaterialInterface',0,16,0,0,'',0,0),(14,'menu_top',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Menu','Верхнее меню',1,1,'','RAAS\\CMS\\MenuInterface',0,20,1,0,'RAAS\\CMS\\CacheInterface',0,0),(15,'menu_bottom',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Menu','Нижнее меню',1,1,'','RAAS\\CMS\\MenuInterface',0,21,1,0,'RAAS\\CMS\\CacheInterface',0,0),(16,'banners',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Material','Баннеры',0,0,'','RAAS\\CMS\\MaterialInterface',0,9,0,0,'',0,0),(17,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'','',0,0,0,0,'',0,0),(18,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'','',0,0,0,0,'',0,0),(19,'content',1,'2018-04-05 11:34:14','2018-04-22 09:49:11',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'','',0,0,0,0,'',0,0),(20,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'','',0,0,0,0,'',0,0),(21,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'','',0,0,0,0,'',0,0),(22,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_Material','Новости',0,1,'','RAAS\\CMS\\MaterialInterface',0,22,0,0,'',0,0),(23,'left',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_Material','Новости',1,0,'','RAAS\\CMS\\MaterialInterface',0,23,0,0,'',0,0),(24,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Карта',0,1,'','',0,0,0,0,'',0,0),(25,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Контакты',0,1,'','',0,0,0,0,'',0,0),(26,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Обратная связь',0,1,'','',0,0,0,0,'',0,0),(27,'content',1,'2018-04-05 11:34:15','2018-04-22 13:59:43',1,1,'RAAS\\CMS\\Block_Form','Обратная связь',0,1,'','RAAS\\CMS\\FormInterface',0,10,2,0,'',0,0),(28,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','404 — страница не найдена',0,1,'','',0,0,0,0,'',0,0),(29,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_Menu','Карта сайта',0,1,'','RAAS\\CMS\\MenuInterface',0,19,0,0,'',0,0),(30,'',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_PHP','sitemap.xml',0,1,'','',0,14,0,0,'',0,0),(31,'',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','robots.txt',0,1,'','',0,17,0,0,'',0,0),(32,'',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','custom.css',0,1,'','',0,18,0,0,'',0,0),(33,'share',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','Поделиться',1,1,'','',0,0,0,0,'',0,0),(34,'content',1,'2018-04-05 11:34:27','2024-03-29 15:45:38',1,1,'RAAS\\CMS\\Block_Material','Каталог продукции',1,1,'metaTemplates=template&withChildrenGoods=1&commentFormBlock=52&commentsListBlock=51&faqFormBlock=53&faqListBlock=50','',31,37,2,0,'RAAS\\CMS\\CacheInterface',0,0),(35,'content',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_Material','Каталог продукции',0,0,'','',31,37,0,0,'',0,0),(36,'content',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_PHP','Спецпредложение',0,1,'','',0,43,0,0,'',0,0),(37,'left',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_Menu','Левое меню',1,1,'','RAAS\\CMS\\MenuInterface',0,41,1,0,'RAAS\\CMS\\CacheInterface',0,0),(38,'content',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'','RAAS\\CMS\\Shop\\CartInterface',0,32,0,0,'',0,0),(39,'left',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Block_PHP','Информер корзины',1,1,'','',0,39,0,0,'',0,0),(40,'',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'','RAAS\\CMS\\Shop\\CartInterface',0,32,0,0,'',0,0),(41,'content',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'','RAAS\\CMS\\Shop\\CartInterface',0,32,0,0,'',0,0),(42,'left',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Block_PHP','Информер избранного',1,1,'','',0,40,0,0,'',0,0),(43,'',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'','RAAS\\CMS\\Shop\\CartInterface',0,32,0,0,'',0,0),(44,'',1,'2018-04-05 11:34:30','2018-04-05 11:34:30',1,1,'RAAS\\CMS\\Shop\\Block_YML','Яндекс.Маркет',0,1,'','RAAS\\CMS\\Shop\\YMLInterface',0,34,0,0,'',0,0),(45,'content',1,'2018-04-22 09:45:26','2024-04-04 10:21:04',1,1,'RAAS\\CMS\\Users\\Block_Register','Регистрация',0,1,'','RAAS\\CMS\\Users\\RegisterInterface',0,51,0,0,'',0,0),(46,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_LogIn','Вход в систему',0,1,'','RAAS\\CMS\\Users\\LogInInterface',0,53,0,0,'',0,0),(47,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_Recovery','Восстановление пароля',0,1,'','RAAS\\CMS\\Users\\RecoveryInterface',0,54,0,0,'',0,0),(48,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_Activation','Активация',0,1,'','RAAS\\CMS\\Users\\ActivationInterface',0,52,0,0,'',0,0),(49,'banners',1,'2018-04-22 12:54:10','2018-04-22 12:54:10',1,1,'RAAS\\CMS\\Block_Material','Баннеры',0,0,'','',8,8,0,0,'',0,0),(50,'content',0,'2019-03-29 14:19:56','2019-03-29 14:20:27',1,1,'RAAS\\CMS\\Block_Material','Вопрос-ответ к товарам',0,0,'','RAAS\\CMS\\MaterialInterface',0,55,0,0,'',0,0),(51,'content',0,'2019-03-29 14:20:16','2019-03-29 14:20:29',1,1,'RAAS\\CMS\\Block_Material','Отзывы к товарам',0,0,'','RAAS\\CMS\\MaterialInterface',0,56,0,0,'',0,0),(52,'content',0,'2019-03-29 14:20:49','2019-03-29 14:20:49',1,1,'RAAS\\CMS\\Block_Form','Отзывы к товарам',0,1,'','RAAS\\CMS\\FormInterface',0,10,0,0,'',0,0),(53,'content',0,'2019-03-29 14:20:57','2019-03-29 14:20:57',1,1,'RAAS\\CMS\\Block_Form','Вопрос-ответ к товарам',0,1,'','RAAS\\CMS\\FormInterface',0,10,0,0,'',0,0),(57,'menu_user',1,'2024-06-13 16:58:45','2024-06-13 16:58:45',1,1,'RAAS\\CMS\\Block_PHP','Пользовательское меню',1,1,NULL,'',0,64,0,0,'',0,0);
/*!40000 ALTER TABLE `cms_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_form`
--

DROP TABLE IF EXISTS `cms_blocks_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_form` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `form` int unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  PRIMARY KEY (`id`),
  KEY `form` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Form blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_form`
--

LOCK TABLES `cms_blocks_form` WRITE;
/*!40000 ALTER TABLE `cms_blocks_form` DISABLE KEYS */;
INSERT INTO `cms_blocks_form` VALUES (6,1),(27,1),(7,2),(53,5),(52,6);
/*!40000 ALTER TABLE `cms_blocks_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_html`
--

DROP TABLE IF EXISTS `cms_blocks_html`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_html` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `description` text COMMENT 'Text',
  `wysiwyg` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'WYSIWYG editor on',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='HTML blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_html`
--

LOCK TABLES `cms_blocks_html` WRITE;
/*!40000 ALTER TABLE `cms_blocks_html` DISABLE KEYS */;
INSERT INTO `cms_blocks_html` VALUES (1,'<a href=\"/\" class=\"logo\">\n  <span class=\"logo__image\"><img alt=\"\" src=\"/files/cms/common/image/logo.png\" /></span>\n  <span class=\"logo__text\">\n    <span class=\"logo__name\">Наша компания</span>\n    <span class=\"logo__slogan\">Производим все, что угодно!</span>\n  </span>\n</a>\n',1),(2,'<div class=\"contacts-top\" itemscope itemtype=\"http://schema.org/Organization\">\n  <meta itemprop=\"name\" content=\"\" />\n  <div class=\"contacts-top__phone\" itemprop=\"telephone\"><a href=\"tel:%2B79990000000\"><span>(999)</span> 000-00-00</a></div>\n  <div class=\"contacts-top__address\" itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">\n    <span itemprop=\"addressLocality\">г. Город</span>,\n    <span itemprop=\"streetAddress\">ул. Центральная, 0</span>, оф. 123\n  </div>\n</div>\n',0),(3,'<div class=\"socials-top\">\n  <span class=\"socials-top__title\">Мы в социальных сетях:</span>\n  <a href=\"https://vk.com/\" class=\"fa fa-vk\" title=\"ВКонтакте\" target=\"_blank\">&nbsp;</a>\n  <a href=\"https://www.facebook.com/groups/\" class=\"fa fa-facebook\" title=\"Facebook\" target=\"_blank\">&nbsp;</a>\n  <a href=\"https://instagram.com/\" class=\"fa fa-instagram\" title=\"Instagram\" target=\"_blank\">&nbsp;</a>\n</div>\n',0),(4,'<div class=\"copyrights\">&copy; Компания, 2015. Все права защищены.</div>\n',1),(5,'<div class=\"privacy\">Совершая любые действия на сайте, вы подтверждаете свое согласие&nbsp;на <a href=\"/privacy/\">обработку персональных данных в соответствии с политикой сайта</a>. Сайт может использовать технологию cookies для сбора информации технического характера. Для персонифицированной работы сайта мы также можем обрабатывать IP-адрес региона вашего местоположения.</div>\n',1),(8,'',0),(9,'',0),(10,'<div class=\"triggers\">\n  <a class=\"triggers__trigger triggers__trigger_totop scrollTo\" href=\"#top\" title=\"Наверх\"></a>\n  <a class=\"triggers__trigger triggers__trigger_order-call\" data-target=\"#order_call_modal\" data-toggle=\"modal\" href=\"#\" title=\"Заказать звонок\"></a>\n  <a class=\"triggers__trigger triggers__trigger_feedback\" data-target=\"#feedback_modal\" data-toggle=\"modal\" href=\"#\" title=\"Написать письмо\"></a>\n</div>\n<script src=\"/js/triggers.js\"></script>\n',0),(11,'<div class=\"cookies-notification\">\n  <a href=\"#\" class=\"cookies-notification__close\"></a>\n  <p>\n    На нашем сайте мы используем cookie для сбора информации технического характера. В частности, для персонифицированной работы сайта мы обрабатываем IP-адрес региона вашего местоположения. <br />\n    Совершая любые действия на сайте, вы <a href=\"/privacy/\" target=\"_blank\">соглашаетесь с политикой обработки персональных данных</a>\n  </p>\n</div>\n<script src=\"/js/cookies-notification.js\"></script>\n',0),(12,'<h1>Добро пожаловать!</h1>\n<p>Извините, страница находится в стадии наполнения.</p>\n',1),(17,'<p>Извините, раздел находится в стадии наполнения</p>',1),(18,'<p>Извините, раздел находится в стадии наполнения</p>',1),(19,'<p>Извините, раздел находится в стадии наполнения</p>',1),(20,'<p>Извините, раздел находится в стадии наполнения</p>',1),(21,'<p>Извините, раздел находится в стадии наполнения</p>',1),(24,'<div class=\"map\">\n  <script type=\"text/javascript\" charset=\"utf-8\" src=\"//api-maps.yandex.ru/services/constructor/1.0/js/?sid=ac2qYbmG3G-Jl487_Mu2VedJiQSpaZLo&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true\"></script>\n</div>\n',0),(25,'<div class=\"contacts\">\n  <div itemscope itemtype=\"http://schema.org/Organization\">\n    <meta itemprop=\"name\" content=\"\" />\n    <p>\n      <strong>Адрес: </strong>\n      <span itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">\n        <span itemprop=\"postalCode\">620000</span>,\n        <span itemprop=\"addressLocality\">г. Екатеринбург</span>,\n        <span itemprop=\"streetAddress\">ул. ..., 0</span>, оф. 0 (0 этаж)\n      </span>\n    </p>\n    <p>\n      <strong>Телефон: </strong>\n      <a href=\"tel:%2B79990000000\" itemprop=\"telephone\">+7 999 000-00-00</a>\n    </p>\n    <p>\n      <strong>E-mail:&nbsp;</strong>\n      <a href=\"mailto:info@test.org\" itemprop=\"email\">info@test.org</a>\n    </p>\n    <p>\n      <strong>Режим работы:&nbsp;</strong>\n      09:00 - 18:00\n    </p>\n    <p>\n      <strong>Транспорт:&nbsp;</strong>\n      ...\n    </p>\n  </div>\n</div>\n',0),(26,'<h3>Обратная связь</h3>',1),(28,'Извините, запрашиваемая Вами страница не найдена. Если вы уверены, что эта страница должна существовать, обратитесь к администрации сайта.',1),(31,'User-agent: *\nDisallow: /404/\nDisallow: /admin/\nDisallow: /ajax/\nDisallow: /compare/\nDisallow: /cart/\nDisallow: /cache/\nDisallow: /cron/\nDisallow: /files/*_tn\nDisallow: /files/*_small\nDisallow: /files/*_inline\nDisallow: /fonts/\nDisallow: /images/\nDisallow: /inc/\nDisallow: /modules/\nDisallow: /price/\nDisallow: /search/\nDisallow: /sitemaps/\nDisallow: /system/\nDisallow: /yml/\nDisallow: *print=1\nClean-param: sort&order&print&price_from&price_to\n\nUser-agent: Yandex\nDisallow: /404/\nDisallow: /admin/\nDisallow: /ajax/\nDisallow: /compare/\nDisallow: /cart/\nDisallow: /cache/\nDisallow: /cron/\nDisallow: /files/*_tn\nDisallow: /files/*_small\nDisallow: /files/*_inline\nDisallow: /fonts/\nDisallow: /images/\nDisallow: /inc/\nDisallow: /modules/\nDisallow: /price/\nDisallow: /search/\nDisallow: /sitemaps/\nDisallow: /system/\nDisallow: /yml/\nDisallow: *print=1\n\nHost: pneumatic-tools\nSitemap: http://pneumatic-tools/sitemap.xml',0),(32,'',0),(33,'<div class=\"share\">\n  <script src=\"//yastatic.net/es5-shims/0.0.2/es5-shims.min.js\"></script>\n  <script src=\"//yastatic.net/share2/share.js\"></script>\n  <div class=\"ya-share2\" data-services=\"vkontakte,facebook,twitter,gplus,whatsapp\"></div>\n</div>\n',0);
/*!40000 ALTER TABLE `cms_blocks_html` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_material`
--

DROP TABLE IF EXISTS `cms_blocks_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_material` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  `sort_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sorting var name',
  `order_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Order var name',
  `sort_field_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field for sorting by default',
  `sort_order_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default order',
  `legacy` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect legacy addresses',
  PRIMARY KEY (`id`),
  KEY `material_type` (`material_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_material`
--

LOCK TABLES `cms_blocks_material` WRITE;
/*!40000 ALTER TABLE `cms_blocks_material` DISABLE KEYS */;
INSERT INTO `cms_blocks_material` VALUES (13,1,'page',0,'','','post_date','asc',0),(16,2,'page',0,'','','post_date','asc',0),(22,3,'page',20,'','','16','desc!',0),(23,3,'',3,'','','16','desc!',0),(34,4,'page',20,'','','26','asc',0),(35,4,'',0,'','','price','asc',0),(49,2,'page',20,'','','name','asc!',0),(50,6,'page',20,'','','50','asc!',0),(51,7,'page',20,'','','name','asc!',0);
/*!40000 ALTER TABLE `cms_blocks_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_material_filter`
--

DROP TABLE IF EXISTS `cms_blocks_material_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_material_filter` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `relation` enum('=','LIKE','CONTAINED','FULLTEXT','<=','>=') NOT NULL DEFAULT '=' COMMENT 'Relation',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  KEY `id` (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks filtering';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_material_filter`
--

LOCK TABLES `cms_blocks_material_filter` WRITE;
/*!40000 ALTER TABLE `cms_blocks_material_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_material_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_material_sort`
--

DROP TABLE IF EXISTS `cms_blocks_material_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_material_sort` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `relation` enum('asc!','desc!','asc','desc') NOT NULL DEFAULT 'asc!' COMMENT 'Relation',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  KEY `id` (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks sorting';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_material_sort`
--

LOCK TABLES `cms_blocks_material_sort` WRITE;
/*!40000 ALTER TABLE `cms_blocks_material_sort` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_material_sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_menu`
--

DROP TABLE IF EXISTS `cms_blocks_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_menu` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `menu` int unsigned NOT NULL DEFAULT '0' COMMENT 'Menu ID#',
  `full_menu` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Full menu',
  PRIMARY KEY (`id`),
  KEY `menu` (`menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Menu blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_menu`
--

LOCK TABLES `cms_blocks_menu` WRITE;
/*!40000 ALTER TABLE `cms_blocks_menu` DISABLE KEYS */;
INSERT INTO `cms_blocks_menu` VALUES (14,1,1),(15,2,1),(29,3,1),(37,4,1);
/*!40000 ALTER TABLE `cms_blocks_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_pages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_pages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_pages_assoc` (
  `block_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`block_id`,`page_id`),
  KEY `block_id` (`block_id`),
  KEY `page_id` (`page_id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blocks to pages associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_pages_assoc`
--

LOCK TABLES `cms_blocks_pages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_blocks_pages_assoc` DISABLE KEYS */;
INSERT INTO `cms_blocks_pages_assoc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(1,2,17),(2,2,18),(3,2,19),(4,2,20),(5,2,21),(6,2,22),(7,2,23),(8,2,24),(9,2,25),(10,2,26),(11,2,27),(14,2,28),(15,2,29),(17,2,30),(1,3,31),(2,3,32),(3,3,33),(4,3,34),(5,3,35),(6,3,36),(7,3,37),(8,3,38),(9,3,39),(10,3,40),(11,3,41),(14,3,42),(15,3,43),(18,3,44),(1,4,45),(2,4,46),(3,4,47),(4,4,48),(5,4,49),(6,4,50),(7,4,51),(8,4,52),(9,4,53),(10,4,54),(11,4,55),(14,4,56),(15,4,57),(19,4,58),(1,5,59),(2,5,60),(3,5,61),(4,5,62),(5,5,63),(6,5,64),(7,5,65),(8,5,66),(9,5,67),(10,5,68),(11,5,69),(14,5,70),(15,5,71),(20,5,72),(1,6,73),(2,6,74),(3,6,75),(4,6,76),(5,6,77),(6,6,78),(7,6,79),(8,6,80),(9,6,81),(10,6,82),(11,6,83),(14,6,84),(15,6,85),(21,6,86),(1,7,87),(2,7,88),(3,7,89),(4,7,90),(5,7,91),(6,7,92),(7,7,93),(8,7,94),(9,7,95),(10,7,96),(11,7,97),(14,7,98),(15,7,99),(22,7,100),(39,1,101),(39,2,101),(39,3,101),(39,4,101),(39,5,101),(39,6,101),(39,7,101),(39,8,101),(39,9,101),(39,10,101),(39,15,101),(39,16,101),(39,17,101),(39,18,101),(39,19,101),(39,20,101),(39,21,101),(39,22,101),(39,23,101),(39,24,101),(39,25,101),(39,27,101),(1,8,107),(2,8,108),(3,8,109),(4,8,110),(5,8,111),(6,8,112),(7,8,113),(8,8,114),(9,8,115),(10,8,116),(11,8,117),(14,8,118),(15,8,119),(24,8,121),(25,8,122),(26,8,123),(27,8,124),(1,9,125),(2,9,126),(3,9,127),(4,9,128),(5,9,129),(6,9,130),(7,9,131),(8,9,132),(9,9,133),(10,9,134),(11,9,135),(14,9,136),(15,9,137),(28,9,139),(1,10,140),(2,10,141),(3,10,142),(4,10,143),(5,10,144),(6,10,145),(7,10,146),(8,10,147),(9,10,148),(10,10,149),(11,10,150),(14,10,151),(15,10,152),(29,10,154),(30,11,155),(31,12,156),(32,13,157),(33,1,158),(33,4,159),(33,5,160),(33,6,161),(33,2,162),(33,3,163),(33,7,164),(33,8,165),(33,9,166),(33,10,167),(1,15,168),(2,15,169),(3,15,170),(4,15,171),(5,15,172),(6,15,173),(7,15,174),(8,15,175),(9,15,176),(10,15,177),(11,15,178),(14,15,179),(15,15,180),(33,15,182),(1,16,183),(2,16,184),(3,16,185),(4,16,186),(5,16,187),(6,16,188),(7,16,189),(8,16,190),(9,16,191),(10,16,192),(11,16,193),(14,16,194),(15,16,195),(33,16,197),(1,17,198),(2,17,199),(3,17,200),(4,17,201),(5,17,202),(6,17,203),(7,17,204),(8,17,205),(9,17,206),(10,17,207),(11,17,208),(14,17,209),(15,17,210),(33,17,212),(1,18,213),(2,18,214),(3,18,215),(4,18,216),(5,18,217),(6,18,218),(7,18,219),(8,18,220),(9,18,221),(10,18,222),(11,18,223),(14,18,224),(15,18,225),(33,18,227),(1,19,228),(2,19,229),(3,19,230),(4,19,231),(5,19,232),(6,19,233),(7,19,234),(8,19,235),(9,19,236),(10,19,237),(11,19,238),(14,19,239),(15,19,240),(33,19,242),(1,20,243),(2,20,244),(3,20,245),(4,20,246),(5,20,247),(6,20,248),(7,20,249),(8,20,250),(9,20,251),(10,20,252),(11,20,253),(14,20,254),(15,20,255),(33,20,257),(1,21,258),(2,21,259),(3,21,260),(4,21,261),(5,21,262),(6,21,263),(7,21,264),(8,21,265),(9,21,266),(10,21,267),(11,21,268),(14,21,269),(15,21,270),(33,21,272),(1,22,273),(2,22,274),(3,22,275),(4,22,276),(5,22,277),(6,22,278),(7,22,279),(8,22,280),(9,22,281),(10,22,282),(11,22,283),(14,22,284),(15,22,285),(33,22,287),(1,23,288),(2,23,289),(3,23,290),(4,23,291),(5,23,292),(6,23,293),(7,23,294),(8,23,295),(9,23,296),(10,23,297),(11,23,298),(14,23,299),(15,23,300),(33,23,302),(1,24,303),(2,24,304),(3,24,305),(4,24,306),(5,24,307),(6,24,308),(7,24,309),(8,24,310),(9,24,311),(10,24,312),(11,24,313),(14,24,314),(15,24,315),(33,24,317),(34,15,318),(34,18,319),(34,19,320),(34,20,321),(34,17,322),(34,21,323),(34,16,325),(34,23,326),(35,1,328),(36,1,329),(42,1,330),(42,2,330),(42,3,330),(42,4,330),(42,5,330),(42,6,330),(42,7,330),(42,8,330),(42,9,330),(42,10,330),(42,15,330),(42,16,330),(42,17,330),(42,18,330),(42,19,330),(42,20,330),(42,21,330),(42,22,330),(42,23,330),(42,24,330),(42,25,330),(42,27,330),(1,25,350),(2,25,351),(3,25,352),(4,25,353),(5,25,354),(6,25,355),(7,25,356),(8,25,357),(9,25,358),(10,25,359),(11,25,360),(14,25,361),(15,25,362),(33,25,364),(38,25,366),(37,1,367),(37,2,367),(37,3,367),(37,4,367),(37,5,367),(37,6,367),(37,7,367),(37,8,367),(37,9,367),(37,10,367),(37,15,367),(37,16,367),(37,17,367),(37,18,367),(37,19,367),(37,20,367),(37,21,367),(37,22,367),(37,23,367),(37,24,367),(37,25,367),(37,27,367),(40,26,388),(1,27,389),(2,27,390),(3,27,391),(4,27,392),(5,27,393),(6,27,394),(7,27,395),(8,27,396),(9,27,397),(10,27,398),(11,27,399),(14,27,400),(15,27,401),(33,27,403),(41,27,406),(23,1,407),(23,2,407),(23,3,407),(23,4,407),(23,5,407),(23,6,407),(23,8,407),(23,9,407),(23,10,407),(23,15,407),(23,16,407),(23,17,407),(23,18,407),(23,19,407),(23,20,407),(23,21,407),(23,22,407),(23,23,407),(23,24,407),(23,25,407),(23,27,407),(43,28,429),(44,29,430),(1,30,431),(2,30,432),(3,30,433),(4,30,434),(5,30,435),(6,30,436),(7,30,437),(8,30,438),(9,30,439),(10,30,440),(11,30,441),(14,30,442),(15,30,443),(39,30,444),(33,30,445),(42,30,446),(37,30,447),(23,30,448),(1,31,449),(2,31,450),(3,31,451),(4,31,452),(5,31,453),(6,31,454),(7,31,455),(8,31,456),(9,31,457),(10,31,458),(11,31,459),(14,31,460),(15,31,461),(39,31,462),(33,31,463),(42,31,464),(37,31,465),(23,31,466),(1,32,467),(2,32,468),(3,32,469),(4,32,470),(5,32,471),(6,32,472),(7,32,473),(8,32,474),(9,32,475),(10,32,476),(11,32,477),(14,32,478),(15,32,479),(39,32,480),(33,32,481),(42,32,482),(37,32,483),(23,32,484),(1,33,485),(2,33,486),(3,33,487),(4,33,488),(5,33,489),(6,33,490),(7,33,491),(8,33,492),(9,33,493),(10,33,494),(11,33,495),(14,33,496),(15,33,497),(39,33,498),(33,33,499),(42,33,500),(37,33,501),(23,33,502),(45,30,503),(46,32,504),(47,33,505),(48,31,506),(49,20,507),(50,15,508),(51,15,509),(52,15,510),(53,15,511),(57,1,569),(57,2,570),(57,3,571),(57,7,572),(57,8,573),(57,9,574),(57,10,575),(57,15,576),(57,25,577),(57,27,578),(57,30,579),(57,31,580),(57,32,581),(57,33,582),(57,4,586),(57,5,587),(57,6,588),(57,16,589),(57,23,590),(57,24,591),(57,17,592),(57,21,593),(57,22,594),(57,18,595),(57,19,596),(57,20,597);
/*!40000 ALTER TABLE `cms_blocks_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_search`
--

DROP TABLE IF EXISTS `cms_blocks_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_search` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `search_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Search var name',
  `min_length` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Minimal query length',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_search`
--

LOCK TABLES `cms_blocks_search` WRITE;
/*!40000 ALTER TABLE `cms_blocks_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_search_languages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_languages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_search_languages_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `language` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language',
  PRIMARY KEY (`id`,`language`),
  KEY `id` (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks languages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_search_languages_assoc`
--

LOCK TABLES `cms_blocks_search_languages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_blocks_search_languages_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_search_languages_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_search_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_material_types_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_search_material_types_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  PRIMARY KEY (`id`,`material_type`),
  KEY `id` (`id`),
  KEY `material_type` (`material_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks material types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_search_material_types_assoc`
--

LOCK TABLES `cms_blocks_search_material_types_assoc` WRITE;
/*!40000 ALTER TABLE `cms_blocks_search_material_types_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_search_material_types_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blocks_search_pages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_pages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_blocks_search_pages_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`page_id`),
  KEY `id` (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks_search_pages_assoc`
--

LOCK TABLES `cms_blocks_search_pages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_blocks_search_pages_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_blocks_search_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_data`
--

DROP TABLE IF EXISTS `cms_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_data` (
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `fid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value',
  `inherited` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherited',
  PRIMARY KEY (`pid`,`fid`,`fii`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `fii` (`fii`),
  KEY `value` (`value`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_data`
--

LOCK TABLES `cms_data` WRITE;
/*!40000 ALTER TABLE `cms_data` DISABLE KEYS */;
INSERT INTO `cms_data` VALUES (1,1,0,'',0),(1,5,0,'Тестовый пользователь',0),(1,6,0,'+7 999 000-00-00',0),(1,7,0,'test@test.org',0),(1,8,0,'Тестовый вопрос',0),(1,9,0,'1',0),(1,13,0,'smile-o',0),(1,37,0,'+7 999 000-00-00',0),(1,43,0,'Тестовый',0),(1,44,0,'Пользователь',0),(1,45,0,'1',0),(2,13,0,'thumbs-o-up',0),(2,37,0,'+7 999 000-00-00',0),(2,43,0,'Тестовый',0),(2,44,0,'Пользователь',0),(2,45,0,'2',0),(3,13,0,'rub',0),(4,1,0,'',0),(4,14,0,'#',0),(4,15,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":1}',0),(5,14,0,'#',0),(5,15,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":2}',0),(6,14,0,'#',0),(6,15,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":3}',0),(7,16,0,'2018-03-30',0),(7,17,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":4}',0),(7,17,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":5}',0),(7,17,2,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":6}',0),(7,17,3,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":7}',0),(7,17,4,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":8}',0),(7,18,0,'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...',0),(8,16,0,'2018-04-01 09:50',0),(8,17,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":9}',0),(8,17,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":10}',0),(8,17,2,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":11}',0),(8,17,3,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":12}',0),(8,17,4,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":13}',0),(8,18,0,'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...',0),(9,16,0,'2018-04-05 07:36',0),(9,17,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":14}',0),(9,17,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":15}',0),(9,17,2,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":16}',0),(9,17,3,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":17}',0),(9,17,4,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":18}',0),(9,18,0,'Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна....',0),(10,25,0,'f4dbdf21',0),(10,26,0,'83620',0),(10,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":30}',0),(10,27,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":31}',0),(10,27,2,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":32}',0),(10,27,3,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":33}',0),(10,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(10,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(10,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":28}',0),(10,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":29}',0),(10,30,0,'1',0),(10,31,0,'0',0),(10,32,0,'2',0),(10,33,0,'2',0),(10,34,0,'0',0),(11,25,0,'83dcefb7',0),(11,26,0,'67175',0),(11,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":36}',0),(11,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(11,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(11,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":34}',0),(11,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":35}',0),(11,30,0,'1',0),(11,31,0,'1',0),(11,32,0,'1',0),(11,33,0,'1',0),(11,34,0,'75907',0),(12,25,0,'1ad5be0d',0),(12,26,0,'71013',0),(12,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":39}',0),(12,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(12,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(12,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":37}',0),(12,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":38}',0),(12,30,0,'1',0),(12,31,0,'1',0),(12,32,0,'1',0),(12,33,0,'1',0),(12,34,0,'86635',0),(13,25,0,'6dd28e9b',0),(13,26,0,'30450',0),(13,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":42}',0),(13,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(13,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(13,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":40}',0),(13,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":41}',0),(13,30,0,'1',0),(13,31,0,'1',0),(13,32,0,'1',0),(13,33,0,'1',0),(13,34,0,'0',0),(14,25,0,'f3b61b38',0),(14,26,0,'25712',0),(14,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":45}',0),(14,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(14,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(14,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":43}',0),(14,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":44}',0),(14,30,0,'1',0),(14,31,0,'0',0),(14,32,0,'2',0),(14,33,0,'2',0),(14,34,0,'0',0),(15,25,0,'84b12bae',0),(15,26,0,'54096',0),(15,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":48}',0),(15,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(15,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(15,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":46}',0),(15,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":47}',0),(15,30,0,'1',0),(15,31,0,'1',0),(15,32,0,'1',0),(15,33,0,'1',0),(15,34,0,'0',0),(16,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":19}',0),(16,25,0,'1db87a14',0),(16,26,0,'49651',0),(16,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":51}',0),(16,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(16,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(16,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":49}',0),(16,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":50}',0),(16,30,0,'1',0),(16,31,0,'1',0),(16,32,0,'1',0),(16,33,0,'1',0),(16,34,0,'58091',0),(17,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":20}',0),(17,25,0,'6abf4a82',0),(17,26,0,'61245',0),(17,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":54}',0),(17,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(17,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(17,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":52}',0),(17,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":53}',0),(17,30,0,'1',0),(17,31,0,'1',0),(17,32,0,'1',0),(17,33,0,'1',0),(17,34,0,'73494',0),(18,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":21}',0),(18,25,0,'fa005713',0),(18,26,0,'5609',0),(18,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":57}',0),(18,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(18,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(18,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":55}',0),(18,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":56}',0),(18,30,0,'1',0),(18,31,0,'0',0),(18,32,0,'2',0),(18,33,0,'2',0),(18,34,0,'6506',0),(19,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":22}',0),(19,25,0,'8d076785',0),(19,26,0,'85812',0),(19,27,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":60}',0),(19,28,0,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(19,28,1,'https://www.youtube.com/watch?v=YVgc2PQd_bo',0),(19,29,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":58}',0),(19,29,1,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":59}',0),(19,30,0,'1',0),(19,31,0,'1',0),(19,32,0,'1',0),(19,33,0,'1',0),(19,34,0,'0',0),(19,35,0,'18',0),(19,35,1,'19',0),(19,35,2,'10',0),(19,35,3,'11',0),(19,35,4,'16',0),(19,35,5,'15',0),(19,35,6,'12',0),(19,35,7,'17',0),(19,35,8,'11',0),(19,35,9,'16',0),(19,35,10,'10',0),(19,35,11,'13',0),(19,35,12,'10',0),(19,35,13,'15',0),(19,35,14,'19',0),(19,35,15,'18',0),(19,35,16,'15',0),(19,35,17,'10',0),(19,35,18,'19',0),(19,35,19,'10',0),(19,35,20,'14',0),(19,35,21,'14',0),(19,35,22,'14',0),(19,35,23,'18',0),(19,35,24,'19',0),(19,35,25,'17',0),(19,35,26,'14',0),(19,35,27,'19',0),(19,35,28,'16',0),(19,35,29,'11',0),(20,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":23}',0),(20,49,0,'12',0),(20,50,0,'',0),(20,51,0,'',0),(20,52,0,'',0),(20,53,0,'',0),(20,54,0,'',0),(21,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":24}',0),(21,49,0,'12',0),(21,50,0,'',0),(21,51,0,'',0),(21,52,0,'',0),(21,53,0,'',0),(21,54,0,'',0),(22,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":25}',0),(22,49,0,'12',0),(22,50,0,'',0),(22,51,0,'',0),(22,52,0,'',0),(22,53,0,'',0),(22,54,0,'',0),(23,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":26}',0),(23,55,0,'',0),(23,56,0,'12',0),(23,57,0,'1',0),(23,58,0,'',0),(23,59,0,'',0),(24,2,0,'{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":27}',0),(24,55,0,'',0),(24,56,0,'12',0),(24,57,0,'2',0),(24,58,0,'',0),(24,59,0,'',0),(25,1,0,'',0),(25,55,0,'',0),(25,56,0,'12',0),(25,57,0,'3',0),(25,58,0,'',0),(25,59,0,'',0),(30,1,0,'',0);
/*!40000 ALTER TABLE `cms_data` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cms_dictionaries_tree_cache`
--

DROP TABLE IF EXISTS `cms_dictionaries_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_dictionaries_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Dictionaries tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dictionaries_tree_cache`
--

LOCK TABLES `cms_dictionaries_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_dictionaries_tree_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dictionaries_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_feedback`
--

DROP TABLE IF EXISTS `cms_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_feedback` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User Agent',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_feedback`
--

LOCK TABLES `cms_feedback` WRITE;
/*!40000 ALTER TABLE `cms_feedback` DISABLE KEYS */;
INSERT INTO `cms_feedback` VALUES (1,0,1,1,5,'2018-04-22 10:23:58',0,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36');
/*!40000 ALTER TABLE `cms_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fieldgroups`
--

DROP TABLE IF EXISTS `cms_fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_fieldgroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `gid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `gid` (`gid`),
  KEY `classname` (`classname`),
  KEY `classname_2` (`classname`,`pid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Field groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fieldgroups`
--

LOCK TABLES `cms_fieldgroups` WRITE;
/*!40000 ALTER TABLE `cms_fieldgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fields`
--

DROP TABLE IF EXISTS `cms_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `gid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `datatype` varchar(255) NOT NULL DEFAULT '' COMMENT 'Data type',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `required` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `maxlength` int NOT NULL,
  `multiple` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Multiple data',
  `source_type` enum('','ini','csv','xml','sql','php','dictionary') NOT NULL DEFAULT '' COMMENT 'Source type',
  `source` text COMMENT 'Source',
  `defval` text COMMENT 'Default value',
  `min_val` float NOT NULL DEFAULT '0' COMMENT 'Minimal value',
  `max_val` float NOT NULL DEFAULT '0' COMMENT 'Maximal value',
  `step` float NOT NULL DEFAULT '0' COMMENT 'Step',
  `preprocessor_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Preprocessor classname',
  `preprocessor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Preprocessor interface ID#',
  `postprocessor_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Postprocessor classname',
  `postprocessor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Postprocessor interface ID#',
  `placeholder` varchar(255) NOT NULL DEFAULT '' COMMENT 'Placeholder',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pattern',
  `show_in_table` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Show as table column',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `datatype` (`datatype`),
  KEY `classname` (`classname`),
  KEY `classname_2` (`classname`,`pid`),
  KEY `preprocessor_id` (`preprocessor_id`),
  KEY `postprocessor_id` (`postprocessor_id`),
  KEY `priority` (`priority`),
  KEY `gid` (`gid`),
  KEY `preprocessor_classname` (`preprocessor_classname`),
  KEY `postprocessor_classname` (`postprocessor_classname`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3 COMMENT='Material fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fields`
--

LOCK TABLES `cms_fields` WRITE;
/*!40000 ALTER TABLE `cms_fields` DISABLE KEYS */;
INSERT INTO `cms_fields` VALUES (1,'RAAS\\CMS\\Material_Type',0,0,1,'htmlarea','_description_','Описание',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,1),(2,'RAAS\\CMS\\Material_Type',0,0,1,'image','image','Изображение',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,2),(3,'RAAS\\CMS\\Material_Type',0,0,1,'checkbox','noindex','Не индексировать',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,3),(4,'RAAS\\CMS\\Material_Type',0,0,1,'image','background','Фоновое изображение',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,4),(5,'RAAS\\CMS\\Form',1,0,1,'text','full_name','Ваше имя',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,5),(6,'RAAS\\CMS\\Form',1,0,1,'text','phone','Телефон',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,6),(7,'RAAS\\CMS\\Form',1,0,1,'text','email','E-mail',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,7),(8,'RAAS\\CMS\\Form',1,0,1,'textarea','_description_','Текст вопроса',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,8),(9,'RAAS\\CMS\\Form',1,0,1,'checkbox','agree','Согласен(на) на обработку персональных данных',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,9),(10,'RAAS\\CMS\\Form',2,0,1,'text','phone_call','Телефон',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,10),(11,'RAAS\\CMS\\Form',2,0,1,'checkbox','agree','Согласен(на) на обработку персональных данных',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,11),(12,'RAAS\\CMS\\Material_Type',1,0,1,'image','image','Изображение',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,12),(13,'RAAS\\CMS\\Material_Type',1,0,1,'text','icon','Значок',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,13),(14,'RAAS\\CMS\\Material_Type',2,0,1,'text','url','Адрес ссылки',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,14),(15,'RAAS\\CMS\\Material_Type',2,0,1,'image','image','Изображение',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,15),(16,'RAAS\\CMS\\Material_Type',3,0,1,'date','date','Дата',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,16),(17,'RAAS\\CMS\\Material_Type',3,0,1,'image','images','Изображение',0,0,1,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,17),(18,'RAAS\\CMS\\Material_Type',3,0,1,'textarea','brief','Краткое описание',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,18),(19,'RAAS\\CMS\\Material_Type',3,0,1,'checkbox','noindex','Не индексировать',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,19),(20,'RAAS\\CMS\\Form',3,0,1,'text','first_name','Имя',1,0,0,'','','',0,0,0,'',0,'',0,'','',1,10),(21,'RAAS\\CMS\\Form',3,0,1,'text','phone','Телефон',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,20),(22,'RAAS\\CMS\\Form',3,0,1,'text','email','E-mail',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,30),(23,'RAAS\\CMS\\Form',3,0,1,'textarea','_description_','Комментарий',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,40),(24,'RAAS\\CMS\\Form',3,0,1,'checkbox','agree','Согласен(на) на обработку персональных данных',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,50),(25,'RAAS\\CMS\\Material_Type',4,0,1,'text','article','Артикул',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,25),(26,'RAAS\\CMS\\Material_Type',4,0,1,'number','price','Стоимость',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,26),(27,'RAAS\\CMS\\Material_Type',4,0,1,'image','images','Изображение',0,0,1,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,27),(28,'RAAS\\CMS\\Material_Type',4,0,1,'text','videos','Видеозаписи',0,0,1,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,28),(29,'RAAS\\CMS\\Material_Type',4,0,1,'file','files','Файлы',0,0,1,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,29),(30,'RAAS\\CMS\\Material_Type',4,0,1,'checkbox','spec','Спецпредложение',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,30),(31,'RAAS\\CMS\\Material_Type',4,0,1,'checkbox','available','В наличии',0,0,0,'',NULL,'1',0,0,0,'',0,'',0,'','',0,31),(32,'RAAS\\CMS\\Material_Type',4,0,1,'number','min','Минимальное количество',0,0,0,'',NULL,'1',0,0,0,'',0,'',0,'','',0,32),(33,'RAAS\\CMS\\Material_Type',4,0,1,'number','step','Шаг корзины',0,0,0,'',NULL,'1',0,0,0,'',0,'',0,'','',0,33),(34,'RAAS\\CMS\\Material_Type',4,0,1,'number','price_old','Старая цена',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',0,34),(35,'RAAS\\CMS\\Material_Type',4,0,1,'material','related','Связанные товары',0,0,1,'','4',NULL,0,0,0,'',0,'',0,'','',0,35),(37,'RAAS\\CMS\\User',0,0,1,'text','phone','Телефон',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,37),(38,'RAAS\\CMS\\Form',4,0,1,'text','login','Логин',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,10),(39,'RAAS\\CMS\\Form',4,0,1,'password','password','Пароль',1,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,20),(40,'RAAS\\CMS\\Form',4,0,1,'text','email','E-mail',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,30),(42,'RAAS\\CMS\\Form',4,0,1,'text','phone','Телефон',0,0,0,'',NULL,NULL,0,0,0,'',0,'',0,'','',1,50),(43,'RAAS\\CMS\\User',0,0,1,'text','last_name','Фамилия',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,43),(44,'RAAS\\CMS\\User',0,0,1,'text','first_name','Имя',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,44),(45,'RAAS\\CMS\\User',0,0,1,'text','second_name','Отчество',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,45),(47,'RAAS\\CMS\\Material_Type',4,0,1,'select','testfield','Тестовое поле справочника',0,0,0,'dictionary','1','',0,0,0,'',0,'',0,'','',0,46),(48,'RAAS\\CMS\\Material_Type',5,0,1,'text','special','Особое поле',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,47),(49,'RAAS\\CMS\\Material_Type',6,0,1,'material','material','Материал',0,0,0,'','4','',0,0,0,'',0,'',0,'','',0,48),(50,'RAAS\\CMS\\Material_Type',6,0,1,'datetime-local','date','Дата',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,49),(51,'RAAS\\CMS\\Material_Type',6,0,1,'text','phone','Телефон',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,50),(52,'RAAS\\CMS\\Material_Type',6,0,1,'email','email','E-mail',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,51),(53,'RAAS\\CMS\\Material_Type',6,0,1,'text','answer_name','Имя отвечающего',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,52),(54,'RAAS\\CMS\\Material_Type',6,0,1,'htmlarea','answer','Ответ',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,53),(55,'RAAS\\CMS\\Material_Type',7,0,1,'datetime-local','date','Дата',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,54),(56,'RAAS\\CMS\\Material_Type',7,0,1,'material','material','Материал',0,0,0,'','4','',0,0,0,'',0,'',0,'','',0,55),(57,'RAAS\\CMS\\Material_Type',7,0,1,'number','rating','Рейтинг',0,0,0,'','0','',0,5,1,'',0,'',0,'','',0,56),(58,'RAAS\\CMS\\Material_Type',7,0,1,'text','answer_name','Имя отвечающего',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,57),(59,'RAAS\\CMS\\Material_Type',7,0,1,'htmlarea','answer','Ответ',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,58),(60,'RAAS\\CMS\\Form',5,0,1,'text','full_name','Ваше имя',1,0,0,'','0','',0,0,0,'',0,'',0,'','',0,10),(61,'RAAS\\CMS\\Form',5,0,1,'checkbox','phone','Телефон',1,0,0,'','0','',0,0,0,'',0,'',0,'','',0,20),(62,'RAAS\\CMS\\Form',5,0,1,'textarea','_description_','Текст вопроса',1,0,0,'','0','',0,0,0,'',0,'',0,'','',0,30),(63,'RAAS\\CMS\\Form',5,0,1,'material','material','Материал',1,0,0,'','','',0,0,0,'',0,'',0,'','',0,40),(64,'RAAS\\CMS\\Form',6,0,1,'text','full_name','Ваше имя',1,0,0,'','0','',0,0,0,'',0,'',0,'','',0,59),(65,'RAAS\\CMS\\Form',6,0,1,'email','email','E-mail',0,0,0,'','0','',0,0,0,'',0,'',0,'','',0,60),(66,'RAAS\\CMS\\Form',6,0,1,'textarea','_description_','Текст отзыва',1,0,0,'','0','',0,0,0,'',0,'',0,'','',0,61),(67,'RAAS\\CMS\\Form',6,0,1,'material','material','Материал',1,0,0,'','4','',0,0,0,'',0,'',0,'','',0,62),(68,'RAAS\\CMS\\Form',6,0,1,'number','rating','Рейтинг',0,0,0,'','0','',0,5,1,'',0,'',0,'','',0,63),(69,'RAAS\\CMS\\Form',4,0,1,'text','last_name','Фамилия',1,0,0,'','','',0,0,0,'',0,'',0,'','',0,41),(70,'RAAS\\CMS\\Form',4,0,1,'text','first_name','Имя',1,0,0,'','','',0,0,0,'',0,'',0,'','',0,42),(71,'RAAS\\CMS\\Form',4,0,1,'text','second_name','Отчество',0,0,0,'','','',0,0,0,'',0,'',0,'','',0,43),(72,'RAAS\\CMS\\Form',3,0,1,'text','last_name','Фамилия',1,0,0,'','','',0,0,0,'',0,'',0,'','',0,1),(73,'RAAS\\CMS\\Form',3,0,1,'text','second_name','Отчество',0,0,0,'','','',0,0,0,'',0,'',0,'','',0,11);
/*!40000 ALTER TABLE `cms_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_fields_form_vis`
--

DROP TABLE IF EXISTS `cms_fields_form_vis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_fields_form_vis` (
  `fid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Section ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  PRIMARY KEY (`fid`,`pid`),
  KEY `fid` (`fid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Fields form';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_fields_form_vis`
--

LOCK TABLES `cms_fields_form_vis` WRITE;
/*!40000 ALTER TABLE `cms_fields_form_vis` DISABLE KEYS */;
INSERT INTO `cms_fields_form_vis` VALUES (12,1,1),(13,1,1),(14,2,1),(15,2,1),(16,3,1),(17,3,1),(18,3,1),(19,3,1),(25,4,1),(25,5,1),(26,4,1),(26,5,1),(27,4,1),(27,5,1),(28,4,1),(28,5,1),(29,4,1),(29,5,1),(30,4,1),(30,5,1),(31,4,1),(31,5,1),(32,4,1),(32,5,1),(33,4,1),(33,5,1),(34,4,1),(34,5,1),(35,4,1),(35,5,1),(47,4,1),(47,5,1),(48,5,1),(49,6,1),(50,6,1),(51,6,1),(52,6,1),(53,6,1),(54,6,1),(55,7,1),(56,7,1),(57,7,1),(58,7,1),(59,7,1);
/*!40000 ALTER TABLE `cms_fields_form_vis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_forms`
--

DROP TABLE IF EXISTS `cms_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `material_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type',
  `create_feedback` int unsigned NOT NULL DEFAULT '1' COMMENT 'Create feedback',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Contact e-mail',
  `signature` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Require POST signature',
  `antispam` varchar(255) NOT NULL DEFAULT '' COMMENT 'Use anti-spam',
  `antispam_field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Anti-spam field name',
  `interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  PRIMARY KEY (`id`),
  KEY `urn` (`urn`),
  KEY `interface_id` (`interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='Forms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_forms`
--

LOCK TABLES `cms_forms` WRITE;
/*!40000 ALTER TABLE `cms_forms` DISABLE KEYS */;
INSERT INTO `cms_forms` VALUES (1,'Обратная связь','feedback',0,1,'',1,'hidden','_name',5),(2,'Заказать звонок','order_call',0,1,'',1,'hidden','_name',5),(3,'Форма заказа','order',0,1,'',1,'hidden','_name',25),(4,'Форма для регистрации','forma_dla_registracii',0,1,'',1,'hidden','_name',49),(5,'Вопрос-ответ к товарам','goods_faq',6,1,'',1,'hidden','_name',5),(6,'Отзывы к товарам','goods_reviews',7,1,'',1,'hidden','_name',5);
/*!40000 ALTER TABLE `cms_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups`
--

DROP TABLE IF EXISTS `cms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_groups` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Groups of users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups`
--

LOCK TABLES `cms_groups` WRITE;
/*!40000 ALTER TABLE `cms_groups` DISABLE KEYS */;
INSERT INTO `cms_groups` VALUES (1,0,'testgroup','testgroup','');
/*!40000 ALTER TABLE `cms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_groups_tree_cache`
--

DROP TABLE IF EXISTS `cms_groups_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_groups_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Groups tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_groups_tree_cache`
--

LOCK TABLES `cms_groups_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_groups_tree_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_groups_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_material_types`
--

DROP TABLE IF EXISTS `cms_material_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_material_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent type ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `global_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Global materials',
  PRIMARY KEY (`id`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='Material types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_material_types`
--

LOCK TABLES `cms_material_types` WRITE;
/*!40000 ALTER TABLE `cms_material_types` DISABLE KEYS */;
INSERT INTO `cms_material_types` VALUES (1,0,'features','Наши преимущества',1),(2,0,'banners','Баннеры',1),(3,0,'news','Новости',1),(4,0,'catalog','Каталог продукции',0),(5,4,'special','Особые товары',0),(6,0,'goods_faq','Вопрос-ответ к товарам',0),(7,0,'goods_comments','Отзывы к товарам',0);
/*!40000 ALTER TABLE `cms_material_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_material_types_affected_pages_for_materials_cache`
--

DROP TABLE IF EXISTS `cms_material_types_affected_pages_for_materials_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_material_types_affected_pages_for_materials_cache` (
  `material_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'NAT',
  PRIMARY KEY (`material_type_id`,`page_id`),
  KEY `material_type_id` (`material_type_id`),
  KEY `page_id` (`page_id`),
  KEY `nat` (`nat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types affected pages for materials';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_material_types_affected_pages_for_materials_cache`
--

LOCK TABLES `cms_material_types_affected_pages_for_materials_cache` WRITE;
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_materials_cache` DISABLE KEYS */;
INSERT INTO `cms_material_types_affected_pages_for_materials_cache` VALUES (1,1,0),(2,1,0),(2,20,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,5,0),(3,6,0),(3,8,0),(3,9,0),(3,10,0),(3,15,0),(3,16,0),(3,17,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,27,0),(3,30,0),(3,31,0),(3,32,0),(3,33,0),(4,1,0),(5,1,0),(3,7,1),(4,15,1),(4,16,1),(4,17,1),(4,18,1),(4,19,1),(4,20,1),(4,21,1),(4,23,1),(5,15,1),(5,16,1),(5,17,1),(5,18,1),(5,19,1),(5,20,1),(5,21,1),(5,23,1);
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_materials_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_material_types_affected_pages_for_self_cache`
--

DROP TABLE IF EXISTS `cms_material_types_affected_pages_for_self_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_material_types_affected_pages_for_self_cache` (
  `material_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'NAT',
  PRIMARY KEY (`material_type_id`,`page_id`),
  KEY `material_type_id` (`material_type_id`),
  KEY `page_id` (`page_id`),
  KEY `nat` (`nat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types affected pages for self (for admin)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_material_types_affected_pages_for_self_cache`
--

LOCK TABLES `cms_material_types_affected_pages_for_self_cache` WRITE;
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_self_cache` DISABLE KEYS */;
INSERT INTO `cms_material_types_affected_pages_for_self_cache` VALUES (1,1,0),(2,1,0),(2,20,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,5,0),(3,6,0),(3,8,0),(3,9,0),(3,10,0),(3,15,0),(3,16,0),(3,17,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,27,0),(3,30,0),(3,31,0),(3,32,0),(3,33,0),(4,1,0),(4,22,0),(4,24,0),(6,15,0),(6,16,0),(6,17,0),(6,18,0),(6,19,0),(6,20,0),(6,21,0),(6,22,0),(6,23,0),(6,24,0),(7,15,0),(7,16,0),(7,17,0),(7,18,0),(7,19,0),(7,20,0),(7,21,0),(7,22,0),(7,23,0),(7,24,0),(3,7,1),(4,15,1),(4,16,1),(4,17,1),(4,18,1),(4,19,1),(4,20,1),(4,21,1),(4,23,1);
/*!40000 ALTER TABLE `cms_material_types_affected_pages_for_self_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_material_types_tree_cache`
--

DROP TABLE IF EXISTS `cms_material_types_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_material_types_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_material_types_tree_cache`
--

LOCK TABLES `cms_material_types_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_material_types_tree_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_material_types_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_materials`
--

DROP TABLE IF EXISTS `cms_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Default page ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `meta_description` text COMMENT 'Meta description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `visit_counter` int unsigned NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int unsigned NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) unsigned NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `show_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish from date/time',
  `show_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish to date/time',
  `cache_url_parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cached URL Parent ID#',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  `cache_shop_props` text COMMENT 'Items props cache',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `urn` (`urn`),
  KEY `show_from` (`show_from`),
  KEY `show_to` (`show_to`),
  KEY `priority` (`priority`),
  KEY `cache_url_parent_id` (`cache_url_parent_id`),
  KEY `cache_url` (`cache_url`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='Translator exceptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials`
--

LOCK TABLES `cms_materials` WRITE;
/*!40000 ALTER TABLE `cms_materials` DISABLE KEYS */;
INSERT INTO `cms_materials` VALUES (1,1,0,1,'2018-04-05 11:33:47','2018-04-05 11:33:47',0,0,'klient-orientirovannyi_podhod','Клиент-ориентированный подход','Мы ценим наших клиентов и стараемся максимально вникнуть в бизнес-процесс, чтобы обеспечить индивидуальность решения и максимальное соответствие потребностям каждого клиента','',NULL,NULL,'','','',10,0,1,'','2018-04-05 11:33:47',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(2,1,0,1,'2018-04-05 11:33:47','2018-04-05 11:33:47',0,0,'kachestvo_ispolneniya','Качество исполнения','Мы стараемся сделать нашу продукцию максимально качественной, оперативно реагируя на замечания клиента. На все услуги предоставляется долгосрочная гарантия','',NULL,NULL,'','','',20,0,1,'','2018-04-05 11:33:47',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(3,1,0,1,'2018-04-05 11:33:47','2018-04-05 11:33:47',0,0,'umerennaya_cenovaya_politika','Умеренная ценовая политика','Наши цены выгодно отличаются от предложений большинства конкурентов. Также для постоянных клиентов предусмотрена гибкая система скидок','',NULL,NULL,'','','',30,0,1,'','2018-04-05 11:33:47',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(4,2,0,1,'2018-04-05 11:34:14','2018-04-05 11:34:14',0,0,'neodnorodnyi_soliton_glazami_sovremennikov','Неоднородный солитон глазами современников','Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла...','',NULL,NULL,'','','',10,0,1,'','2018-04-05 11:34:14',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(5,2,0,1,'2018-04-05 11:34:14','2018-04-05 11:34:14',0,0,'','','','',NULL,NULL,'','','',20,0,1,'','2018-04-05 11:34:14',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(6,2,0,1,'2018-04-05 11:34:14','2018-04-05 11:34:14',0,0,'individualnyi_gipergennyi_mineral_metodologiya_i_osobennosti','Индивидуальный гипергенный минерал: методология и особенности','Диалектика представляет собой подземный сток. Гарант стремительно предоставляет чернозём. Трещина гидролизует скрытый смысл  – север вверху, восток слева.','',NULL,NULL,'','','',30,0,1,'','2018-04-05 11:34:14',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(7,3,0,1,'2018-04-05 11:34:14','2018-04-22 09:49:36',0,1,'empiricheskiy_kreditor_v_xxi_veke','Эмпирический кредитор в XXI веке','<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример &ndash; стилистическая игра испаряет лимногляциальный рутений.</p>\n\n<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение&nbsp;мира определяет пигмент, отвоевывая рыночный сегмент.</p>\n\n<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна&nbsp;не&nbsp;для&nbsp;всех. Ямб традиционен.</p>','','','','','','',10,0,2,'','2018-04-22 09:49:36',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',7,'/news/empiricheskiy_kreditor_v_xxi_veke/',NULL),(8,3,0,1,'2018-04-05 11:34:15','2018-04-05 11:34:15',0,0,'empiricheskiy_kreditor_v_xxi_veke-8','Эмпирический кредитор в XXI веке','<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример –  стилистическая игра испаряет лимногляциальный рутений.</p>\n<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение мира определяет пигмент, отвоевывая рыночный сегмент.</p>\n<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна не для всех. Ямб традиционен.</p>','',NULL,NULL,'','','',20,0,1,'','2018-04-05 11:34:15',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',7,'/news/empiricheskiy_kreditor_v_xxi_veke-8/',NULL),(9,3,0,1,'2018-04-05 11:34:15','2018-04-05 11:34:15',0,0,'ideologicheskiy_umysel_osnovnye_momenty','Идеологический умысел: основные моменты','<p>Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна. Изомерия диазотирует конфликт. Вещество надкусывает симулякр.</p>\n<p>Психологический параллелизм обогащает целевой трафик. Бихевиоризм программирует сходящийся ряд. Политическая элита иллюстрирует акцент.</p>\n<p>Бабувизм, особенно в условиях политической нестабильности, имитирует интеграл от функции, обращающейся в бесконечность в изолированной точке, потому что сюжет и фабула различаются. Руководящее ископаемое амбивалентно сублимирует ритмоформульный бурозём, основываясь на ограничениях, наложенных на систему. Гончарный дренаж на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), одномерно контролирует вектор. Дуализм противозаконно вызывает портрет потребителя. Экситон перечеркивает интеллект. Микростроение, несмотря на внешние воздействия, латерально иллюстрирует изобарический интеллект.</p>','',NULL,NULL,'','','',30,0,1,'','2018-04-05 11:34:15',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',7,'/news/ideologicheskiy_umysel_osnovnye_momenty/',NULL),(10,4,0,1,'2018-04-05 11:34:26','2018-04-05 11:34:26',0,0,'tovar_1','Товар 1','','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:26',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_1/',NULL),(11,4,0,1,'2018-04-05 11:34:26','2018-04-05 11:34:26',0,0,'tovar_2','Товар 2','<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного \nанализа, и это неудивительно, если вспомнить синергетический характер явления.</p>\n<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>\n<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:26',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_2/',NULL),(12,4,0,1,'2018-04-05 11:34:26','2018-04-05 11:34:26',0,0,'tovar_3','Товар 3','<p>Живая сессия систематически начинает эйдос, туда же входят 39 графств, 6 метрополитенских графств и Большой Лондон. Уравнение в частных производных экстремально покрывает постмодернизм. Роджерс первым ввел в научный обиход понятие «клиент», так как аутотренинг ослабляет культурный фирн. Многочисленные расчеты предсказывают, а эксперименты подтверждают, что постиндустриализм традиционен.</p>\n<p>Расслоение, на первый взгляд, аккумулирует гумус, хотя все знают, что Венгрия подарила миру таких великих композиторов как Ференц Лист, Бела Барток, Золтан Кодай, режиссеров Иштвана Сабо и Миклоша Янчо, поэта Шандора Пэтефи и художника Чонтвари. Фотон обуславливает метеорный дождь, хотя этот факт нуждается в дальнейшей тщательной экспериментальной проверке. Если для простоты пренебречь потерями на теплопроводность, то видно, что драма раскладывает на элементы неоднозначный многочлен. Мажоритарная избирательная система, как следует из вышесказанного,  воспроизводима в лабораторных условиях.</p>\n<p>Итак, ясно, что политическое учение Монтескье вызывает структурализм. Фотоиндуцированный энергетический перенос, анализируя результаты рекламной кампании, абстрактен. Поэтому плазменное образование трансформирует договор.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:26',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_3/',NULL),(13,4,0,1,'2018-04-05 11:34:26','2018-04-05 11:34:26',0,0,'tovar_4','Товар 4','<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>\n<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более \nпростую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>\n<p>Зеркало требует \nперейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:26',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_4/',NULL),(14,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_5','Товар 5','<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного \nанализа, и это неудивительно, если вспомнить синергетический характер явления.</p>\n<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>\n<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_5/',NULL),(15,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_6','Товар 6','','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_6/',NULL),(16,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_7','Товар 7','<p>Понятие тоталитаризма, конечно, упруго начинает ассоцианизм. Целое число дисгармонично. Генетика, в соответствии с модифицированным уравнением Эйлера, фоссилизирует периодический импульс.</p>\n<p>Тем не менее, модальность высказывания вертикально отражает базальтовый слой. Движимое имущество представляет собой прибор, что часто служит основанием изменения и прекращения гражданских прав и обязанностей. Комета, в первом приближении, дегустирует закон внешнего мира. Фишка притягивает объект. Бамбуковый медведь панда огнеопасно трансформирует лирический субъект. Лайн-ап обедняет квазар.</p>\n<p>Притеррасная низменность иллюстрирует культурный синтаксис искусства. \"кодекс деяний\", не вдаваясь в подробности, даёт более \nпростую систему дифференциальных уравнений, если исключить комплексный кристалл. Великобритания преобразует метафоричный комплекс рения с саленом.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_7/',NULL),(17,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_8','Товар 8','<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>\n<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более \nпростую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>\n<p>Зеркало требует \nперейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_8/',NULL),(18,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_9','Товар 9','<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип \nартистизма выслеживает трог, хотя в официозе принято обратное.</p>\n<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>\n<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_9/',NULL),(19,4,0,1,'2018-04-05 11:34:27','2018-04-05 11:34:27',0,0,'tovar_10','Товар 10','<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип \nартистизма выслеживает трог, хотя в официозе принято обратное.</p>\n<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>\n<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>','',NULL,NULL,'','','',0,0,1,'','2018-04-05 11:34:27',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',18,'/catalog/category1/category11/category111/tovar_10/',NULL),(20,6,0,1,'2019-03-29 14:50:50','2019-03-29 14:52:21',1,1,'vopros_1','Вопрос 1','','','','','','','',0,0,1,'','2019-03-29 14:50:50',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(21,6,0,1,'2019-03-29 14:50:59','2019-03-29 14:52:25',1,1,'vopros_2','Вопрос 2','','','','','','','',0,0,1,'','2019-03-29 14:50:59',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(22,6,0,1,'2019-03-29 14:51:02','2019-03-29 14:52:30',1,1,'vopros_3','Вопрос 3','','','','','','','',0,0,1,'','2019-03-29 14:51:02',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(23,7,0,1,'2019-03-29 14:51:10','2019-03-29 14:52:35',1,1,'otzyv_1','Отзыв 1','','','','','','','',0,0,1,'','2019-03-29 14:51:10',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(24,7,0,1,'2019-03-29 14:51:14','2019-03-29 14:52:39',1,1,'otzyv_2','Отзыв 2','','','','','','','',0,0,1,'','2019-03-29 14:51:14',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL),(25,7,0,1,'2019-03-29 14:51:23','2019-03-29 14:52:44',1,1,'otzyv_3','Отзыв 3','','','','','','','',0,0,1,'','2019-03-29 14:51:23',0.50,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'',NULL);
/*!40000 ALTER TABLE `cms_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_materials_affected_pages_cache`
--

DROP TABLE IF EXISTS `cms_materials_affected_pages_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_affected_pages_cache` (
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`material_id`,`page_id`),
  KEY `material_id` (`material_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials affected pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_affected_pages_cache`
--

LOCK TABLES `cms_materials_affected_pages_cache` WRITE;
/*!40000 ALTER TABLE `cms_materials_affected_pages_cache` DISABLE KEYS */;
INSERT INTO `cms_materials_affected_pages_cache` VALUES (7,7),(8,7),(9,7),(10,18),(10,19),(10,20),(10,21),(10,23),(11,18),(11,19),(11,20),(11,21),(11,23),(12,18),(12,19),(12,20),(12,21),(12,23),(13,18),(13,19),(13,20),(13,21),(13,23),(14,18),(14,19),(14,20),(14,21),(14,23),(15,18),(15,19),(15,20),(15,21),(15,23),(16,18),(16,19),(16,20),(16,21),(16,23),(17,18),(17,19),(17,20),(17,21),(17,23),(18,18),(18,19),(18,20),(18,21),(18,23),(19,18),(19,19),(19,20),(19,21),(19,23);
/*!40000 ALTER TABLE `cms_materials_affected_pages_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_materials_pages_assoc`
--

DROP TABLE IF EXISTS `cms_materials_pages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_pages_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`pid`),
  KEY `id` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials to pages associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_pages_assoc`
--

LOCK TABLES `cms_materials_pages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_materials_pages_assoc` DISABLE KEYS */;
INSERT INTO `cms_materials_pages_assoc` VALUES (10,1),(10,18),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(11,1),(11,18),(11,19),(11,20),(11,21),(11,22),(11,23),(11,24),(12,1),(12,18),(12,19),(12,20),(12,21),(12,22),(12,23),(12,24),(13,1),(13,18),(13,19),(13,20),(13,21),(13,22),(13,23),(13,24),(14,1),(14,18),(14,19),(14,20),(14,21),(14,22),(14,23),(14,24),(15,1),(15,18),(15,19),(15,20),(15,21),(15,22),(15,23),(15,24),(16,1),(16,18),(16,19),(16,20),(16,21),(16,22),(16,23),(16,24),(17,1),(17,18),(17,19),(17,20),(17,21),(17,22),(17,23),(17,24),(18,1),(18,18),(18,19),(18,20),(18,21),(18,22),(18,23),(18,24),(19,1),(19,18),(19,19),(19,20),(19,21),(19,22),(19,23),(19,24),(20,15),(20,16),(20,17),(20,18),(20,19),(20,20),(20,21),(20,22),(20,23),(20,24),(21,15),(21,16),(21,17),(21,18),(21,19),(21,20),(21,21),(21,22),(21,23),(21,24),(22,15),(22,16),(22,17),(22,18),(22,19),(22,20),(22,21),(22,22),(22,23),(22,24),(23,15),(23,16),(23,17),(23,18),(23,19),(23,20),(23,21),(23,22),(23,23),(23,24),(24,15),(24,16),(24,17),(24,18),(24,19),(24,20),(24,21),(24,22),(24,23),(24,24),(25,15),(25,16),(25,17),(25,18),(25,19),(25,20),(25,21),(25,22),(25,23),(25,24);
/*!40000 ALTER TABLE `cms_materials_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_materials_votes`
--

DROP TABLE IF EXISTS `cms_materials_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_materials_votes` (
  `material_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP-address',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vote` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Vote',
  PRIMARY KEY (`material_id`,`ip`),
  KEY `material_id` (`material_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials votes log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_materials_votes`
--

LOCK TABLES `cms_materials_votes` WRITE;
/*!40000 ALTER TABLE `cms_materials_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_materials_votes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cms_menus_tree_cache`
--

DROP TABLE IF EXISTS `cms_menus_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_menus_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Menus tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_tree_cache`
--

LOCK TABLES `cms_menus_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_menus_tree_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_menus_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `response_code` int unsigned NOT NULL DEFAULT '0' COMMENT 'Service page response code',
  `mime` varchar(255) NOT NULL DEFAULT 'text/html' COMMENT 'MIME-type',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `inherit_meta_title` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `meta_description` text COMMENT 'Meta description',
  `inherit_meta_description` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `inherit_meta_keywords` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `template` varchar(255) NOT NULL DEFAULT '' COMMENT 'Template',
  `inherit_template` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `lang` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language',
  `inherit_lang` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Inherit language',
  `nat` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Translate address',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `cache` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Cache page',
  `inherit_cache` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit cache page',
  `visit_counter` int unsigned NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int unsigned NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `inherit_changefreq` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) unsigned NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `inherit_sitemaps_priority` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit sitemaps priority',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `urn` (`urn`),
  KEY `template` (`template`),
  KEY `priority` (`priority`),
  KEY `cache_url` (`cache_url`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages`
--

LOCK TABLES `cms_pages` WRITE;
/*!40000 ALTER TABLE `cms_pages` DISABLE KEYS */;
INSERT INTO `cms_pages` VALUES (1,0,1,1,'2018-04-05 11:33:47','2018-04-22 10:22:34',1,1,'test','Главная',0,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,1,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/'),(2,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'about','О компании',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,2,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/about/'),(3,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'services','Услуги',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,3,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/'),(4,3,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'service1','Услуга 1',0,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,4,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service1/'),(5,3,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'service2','Услуга 2',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,5,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service2/'),(6,3,0,1,'2018-04-05 11:34:14','2018-04-22 11:57:39',1,1,'service3','Услуга 3',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,6,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service3/'),(7,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'news','Новости',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,7,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/news/'),(8,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'contacts','Контакты',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,8,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/contacts/'),(9,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'404','404 — страница не найдена',404,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,9,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/404/'),(10,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'map','Карта сайта',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,10,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/map/'),(11,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'sitemaps','sitemap.xml',200,'application/xml','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,11,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/sitemaps/'),(12,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'robots','robots.txt',200,'text/plain','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,12,1,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/robots/'),(13,1,1,1,'2018-04-05 11:34:16','2018-04-22 10:22:34',1,1,'custom_css','custom.css',200,'text/css','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,13,1,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/custom_css/'),(14,1,1,1,'2018-04-05 11:34:16','2018-04-22 10:22:34',1,1,'ajax','AJAX',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,14,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/'),(15,1,1,1,'2018-04-05 11:34:23','2018-04-22 10:22:34',1,1,'catalog','Каталог продукции',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,15,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/'),(16,15,1,1,'2018-04-05 11:34:23','2018-04-22 10:22:34',1,1,'category1','Категория 1',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,16,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/'),(17,16,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category11','Категория 11',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,17,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/'),(18,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category111','Категория 111',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,18,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category111/'),(19,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category112','Категория 112',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,19,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category112/'),(20,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category113','Категория 113',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,20,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category113/'),(21,16,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category12','Категория 12',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,21,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category12/'),(22,16,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category13','Категория 13',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,22,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category13/'),(23,15,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category2','Категория 2',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,23,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category2/'),(24,15,1,1,'2018-04-05 11:34:26','2018-04-22 10:22:34',1,1,'category3','Категория 3',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,24,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category3/'),(25,1,1,1,'2018-04-05 11:34:28','2018-04-22 11:53:40',1,1,'cart','Корзина',200,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,1,25,0,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/cart/'),(26,14,1,1,'2018-04-05 11:34:28','2018-04-22 10:22:34',1,1,'cart','Корзина',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,26,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/cart/'),(27,1,1,1,'2018-04-05 11:34:28','2018-04-22 10:22:34',1,1,'favorites','Избранное',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,27,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/favorites/'),(28,14,1,1,'2018-04-05 11:34:29','2018-04-22 10:22:34',1,1,'favorites','Избранное',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,28,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/favorites/'),(29,1,1,1,'2018-04-05 11:34:29','2018-04-22 10:22:34',1,1,'yml','Яндекс.Маркет',200,'application/xml','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,29,1,0,0,2,'',0,'2018-04-22 09:45:25',0.50,0,'/yml/'),(30,1,1,1,'2018-04-22 09:45:24','2018-04-22 14:01:09',1,1,'register','Регистрация',200,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,30,1,0,0,5,'',0,'2024-06-13 16:58:45',0.50,0,'/register/'),(31,1,1,1,'2018-04-22 09:45:25','2018-04-22 10:22:34',1,1,'activate','Активация',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,31,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/activate/'),(32,1,1,1,'2018-04-22 09:45:25','2018-04-22 10:22:34',1,1,'login','Вход в систему',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,32,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/login/'),(33,1,1,1,'2018-04-22 09:45:26','2018-04-22 10:22:34',1,1,'recovery','Восстановление пароля',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,33,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/recovery/');
/*!40000 ALTER TABLE `cms_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages_data`
--

DROP TABLE IF EXISTS `cms_pages_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pages_data` (
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `fid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int unsigned NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`pid`,`fid`,`fii`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `fii` (`fii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages_data`
--

LOCK TABLES `cms_pages_data` WRITE;
/*!40000 ALTER TABLE `cms_pages_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pages_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages_tree_cache`
--

DROP TABLE IF EXISTS `cms_pages_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pages_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages_tree_cache`
--

LOCK TABLES `cms_pages_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_pages_tree_cache` DISABLE KEYS */;
INSERT INTO `cms_pages_tree_cache` VALUES (1,2,1),(1,3,1),(1,4,2),(1,5,2),(1,6,2),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,2),(1,17,3),(1,18,4),(1,19,4),(1,20,4),(1,21,3),(1,22,3),(1,23,2),(1,24,2),(1,25,1),(1,26,2),(1,27,1),(1,28,2),(1,29,1),(3,4,1),(3,5,1),(3,6,1),(14,26,1),(14,28,1),(15,16,1),(15,17,2),(15,18,3),(15,19,3),(15,20,3),(15,21,2),(15,22,2),(15,23,1),(15,24,1),(16,17,1),(16,18,2),(16,19,2),(16,20,2),(16,21,1),(16,22,1),(17,18,1),(17,19,1),(17,20,1);
/*!40000 ALTER TABLE `cms_pages_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_redirects`
--

DROP TABLE IF EXISTS `cms_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_redirects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `rx` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'RegExp',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `url_from` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL from',
  `url_to` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL to',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `url_from` (`url_from`),
  KEY `post_date` (`post_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Redirects';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_redirects`
--

LOCK TABLES `cms_redirects` WRITE;
/*!40000 ALTER TABLE `cms_redirects` DISABLE KEYS */;
INSERT INTO `cms_redirects` VALUES (1,0,'0000-00-00 00:00:00','/sitemaps.xml','/sitemap.xml',0),(2,0,'0000-00-00 00:00:00','/www.','/',0);
/*!40000 ALTER TABLE `cms_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_cart`
--

DROP TABLE IF EXISTS `cms_shop_blocks_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_cart` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `cart_type` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `epay_interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay interface classname',
  `epay_interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay interface ID#',
  `epay_login` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay login',
  `epay_pass1` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass1',
  `epay_pass2` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass2',
  `epay_test` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay test mode',
  `epay_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency',
  PRIMARY KEY (`id`),
  KEY `cart_type` (`cart_type`),
  KEY `epay_interface_id` (`epay_interface_id`),
  KEY `epay_interface_classname` (`epay_interface_classname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_cart`
--

LOCK TABLES `cms_shop_blocks_cart` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_cart` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_cart` VALUES (38,1,'',0,'','','',0,''),(40,1,'',0,'','','',0,''),(41,2,'',0,'','','',0,''),(43,2,'',0,'','','',0,'');
/*!40000 ALTER TABLE `cms_shop_blocks_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Shop name',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT 'Company name',
  `agency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support company name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support e-mail',
  `cpa` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'YM purchase',
  `default_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default currency',
  `local_delivery_cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Local delivery cost',
  `delivery_options` text COMMENT 'Delivery options',
  `pickup_options` text COMMENT 'Pickup options',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COMMENT='Yandex Market blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml`
--

LOCK TABLES `cms_shop_blocks_yml` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml` VALUES (44,'','','Volume Networks','info@volumnet.ru',0,'RUR',0.00,NULL,NULL);
/*!40000 ALTER TABLE `cms_shop_blocks_yml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_currencies`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_currencies` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `currency_name` varchar(8) NOT NULL DEFAULT '' COMMENT 'Currency ID#',
  `currency_rate` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency rate',
  `currency_plus` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Currency plus, %%',
  PRIMARY KEY (`id`,`currency_name`),
  KEY `currency_name` (`currency_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Currencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_currencies`
--

LOCK TABLES `cms_shop_blocks_yml_currencies` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_fields`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_fields` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci COMMENT 'Field callback',
  `field_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field static value',
  PRIMARY KEY (`id`,`mtype`,`field_name`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`),
  KEY `field_name` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_fields`
--

LOCK TABLES `cms_shop_blocks_yml_fields` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_fields` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_fields` VALUES (44,4,'available','31','',''),(44,4,'currencyId','','','RUR'),(44,4,'delivery','','','1'),(44,4,'description','description','',''),(44,4,'name','name','',''),(44,4,'oldprice','34','',''),(44,4,'pickup','','','1'),(44,4,'picture','27','',''),(44,4,'price','26','',''),(44,4,'rec','','',''),(44,4,'vendorCode','25','','');
/*!40000 ALTER TABLE `cms_shop_blocks_yml_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_ignored_fields`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_ignored_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_ignored_fields` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  PRIMARY KEY (`id`,`mtype`,`field_id`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types params ignored fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_ignored_fields`
--

LOCK TABLES `cms_shop_blocks_yml_ignored_fields` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_ignored_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_ignored_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_material_types_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_material_types_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'YM type',
  `param_exceptions` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Params from all fields except...',
  `params_callback` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci COMMENT 'Params callback',
  PRIMARY KEY (`id`,`mtype`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types association';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_material_types_assoc`
--

LOCK TABLES `cms_shop_blocks_yml_material_types_assoc` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_material_types_assoc` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_material_types_assoc` VALUES (44,4,'',0,'');
/*!40000 ALTER TABLE `cms_shop_blocks_yml_material_types_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_pages_assoc`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_pages_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_pages_assoc` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`page_id`),
  KEY `id` (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to pages association';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_pages_assoc`
--

LOCK TABLES `cms_shop_blocks_yml_pages_assoc` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_pages_assoc` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_pages_assoc` VALUES (44,15),(44,16),(44,17),(44,18),(44,19),(44,20),(44,21),(44,22),(44,23),(44,24);
/*!40000 ALTER TABLE `cms_shop_blocks_yml_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_blocks_yml_params`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_blocks_yml_params` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `param_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci COMMENT 'Field callback',
  `param_unit` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param unit',
  `param_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param static value',
  PRIMARY KEY (`id`,`mtype`,`param_name`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`),
  KEY `param_name` (`param_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types params';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_blocks_yml_params`
--

LOCK TABLES `cms_shop_blocks_yml_params` WRITE;
/*!40000 ALTER TABLE `cms_shop_blocks_yml_params` DISABLE KEYS */;
INSERT INTO `cms_shop_blocks_yml_params` VALUES (44,4,'Спецпредложение','30','return $x ? \'true\' : \'false\';','','');
/*!40000 ALTER TABLE `cms_shop_blocks_yml_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_cart_types`
--

DROP TABLE IF EXISTS `cms_shop_cart_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_cart_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `form_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `no_amount` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Single item of a type',
  `check_amount` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Check amount',
  `weight_callback` text COMMENT 'Weight callback',
  `sizes_callback` text COMMENT 'Sizes callback',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Cart types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_cart_types`
--

LOCK TABLES `cms_shop_cart_types` WRITE;
/*!40000 ALTER TABLE `cms_shop_cart_types` DISABLE KEYS */;
INSERT INTO `cms_shop_cart_types` VALUES (1,'cart','Корзина',3,0,0,NULL,NULL),(2,'favorites','Избранное',0,1,0,NULL,NULL);
/*!40000 ALTER TABLE `cms_shop_cart_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_cart_types_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_shop_cart_types_material_types_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_cart_types_material_types_assoc` (
  `ctype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `price_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Price field ID#',
  `price_callback` text COMMENT 'Price callback',
  PRIMARY KEY (`ctype`,`mtype`),
  KEY `ctype` (`ctype`),
  KEY `mtype` (`mtype`),
  KEY `price_id` (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart types to material types association';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_cart_types_material_types_assoc`
--

LOCK TABLES `cms_shop_cart_types_material_types_assoc` WRITE;
/*!40000 ALTER TABLE `cms_shop_cart_types_material_types_assoc` DISABLE KEYS */;
INSERT INTO `cms_shop_cart_types_material_types_assoc` VALUES (1,4,26,''),(2,4,26,'');
/*!40000 ALTER TABLE `cms_shop_cart_types_material_types_assoc` ENABLE KEYS */;
UNLOCK TABLES;

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
  `user_agent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User Agent',
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

--
-- Table structure for table `cms_shop_orders_history`
--

DROP TABLE IF EXISTS `cms_shop_orders_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_orders_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `order_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `status_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Payment status',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Status post date',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order_id` (`order_id`),
  KEY `status_id` (`status_id`),
  KEY `paid` (`paid`),
  KEY `post_date` (`post_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_orders_history`
--

LOCK TABLES `cms_shop_orders_history` WRITE;
/*!40000 ALTER TABLE `cms_shop_orders_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_shop_orders_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_orders_statuses`
--

DROP TABLE IF EXISTS `cms_shop_orders_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_orders_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `do_notify` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Notify user',
  `notification_title` text COMMENT 'User notification title',
  `notification` text COMMENT 'User notification',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='Orders statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_orders_statuses`
--

LOCK TABLES `cms_shop_orders_statuses` WRITE;
/*!40000 ALTER TABLE `cms_shop_orders_statuses` DISABLE KEYS */;
INSERT INTO `cms_shop_orders_statuses` VALUES (1,'progress','В обработке',0,'Ваш заказ №{{ID}} переведен в статус \"В обработке\"','<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} переведен в статус &quot;В обработке&quot;</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>',1),(2,'completed','Обработан',0,'Ваш заказ №{{ID}} обработан','<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} обработан</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>',2),(3,'canceled','Отменен',0,'Ваш заказ №{{ID}} отменен','<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} отменен</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>',3);
/*!40000 ALTER TABLE `cms_shop_orders_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_priceloaders`
--

DROP TABLE IF EXISTS `cms_shop_priceloaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_priceloaders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `mtype` int unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `interface_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Interface classname',
  `interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `rows` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rows from top',
  `cols` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cols from left',
  `cat_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Root category ID#',
  `create_pages` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Allow to create pages',
  `create_materials` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Allow to create materials',
  `update_materials` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Allow to update materials',
  `catalog_offset` int unsigned NOT NULL DEFAULT '0' COMMENT 'Catalog offset',
  `media_action` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Media fields action',
  `cats_usage` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Categories usage',
  PRIMARY KEY (`id`),
  KEY `mtype` (`mtype`),
  KEY `ufid` (`ufid`),
  KEY `interface_id` (`interface_id`),
  KEY `cat_id` (`cat_id`),
  KEY `urn` (`urn`),
  KEY `interface_classname` (`interface_classname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Price loaders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_priceloaders`
--

LOCK TABLES `cms_shop_priceloaders` WRITE;
/*!40000 ALTER TABLE `cms_shop_priceloaders` DISABLE KEYS */;
INSERT INTO `cms_shop_priceloaders` VALUES (1,4,'25','Стандартный загрузчик прайсов','default','RAAS\\CMS\\Shop\\PriceloaderInterface',0,0,0,15,0,1,1,0,0,0);
/*!40000 ALTER TABLE `cms_shop_priceloaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_shop_priceloaders_columns`
--

DROP TABLE IF EXISTS `cms_shop_priceloaders_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_shop_priceloaders_columns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Price loader ID#',
  `fid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `callback` text COMMENT 'Callback code',
  `callback_download` text COMMENT 'Download callback code',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='Price loaders columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_shop_priceloaders_columns`
--

LOCK TABLES `cms_shop_priceloaders_columns` WRITE;
/*!40000 ALTER TABLE `cms_shop_priceloaders_columns` DISABLE KEYS */;
INSERT INTO `cms_shop_priceloaders_columns` VALUES (1,1,'25',NULL,NULL,1),(2,1,'name',NULL,NULL,2),(3,1,'description',NULL,NULL,3),(4,1,'35','$y = array_filter(array_map(\'trim\', preg_split(\'/[;,]/umi\', $x)), \'trim\');\n$temp = array();\nforeach ($y as $val) {\n    $SQL_query = \"SELECT pid FROM cms_data WHERE fid = 25 AND value = \'\" . \\RAAS\\CMS\\Material::_SQL()->real_escape_string($val) . \"\'\";\n    if ($SQL_result = \\RAAS\\CMS\\Material::_SQL()->getvalue($SQL_query)) {\n        $temp[] = (int)$SQL_result;\n    }\n}\nreturn $temp;','$temp = array();\nforeach ((array)$x as $val) {\n    $row = new \\RAAS\\CMS\\Material((int)$val);\n    if ($row->id) {\n        $temp[] = $row->article;\n    }\n}\nreturn implode(\', \', $temp);',4),(5,1,'31','return ($x && (trim($x) !== \'0\')) ? (int)(bool)preg_match(\'/налич/umi\', $x) : 0;','return (int)$x ? \'в наличии\' : \'под заказ\';',5),(6,1,'34','$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($x)); return $y;',NULL,6),(7,1,'26','$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($y)); return $y;',NULL,7);
/*!40000 ALTER TABLE `cms_shop_priceloaders_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_snippet_folders`
--

DROP TABLE IF EXISTS `cms_snippet_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_snippet_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `locked` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Snippet folders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_snippet_folders`
--

LOCK TABLES `cms_snippet_folders` WRITE;
/*!40000 ALTER TABLE `cms_snippet_folders` DISABLE KEYS */;
INSERT INTO `cms_snippet_folders` VALUES (1,0,'Интерфейсы','__raas_interfaces',1),(2,0,'Представления','__raas_views',1);
/*!40000 ALTER TABLE `cms_snippet_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_snippet_folders_tree_cache`
--

DROP TABLE IF EXISTS `cms_snippet_folders_tree_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_snippet_folders_tree_cache` (
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Snippet folders tree cache';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_snippet_folders_tree_cache`
--

LOCK TABLES `cms_snippet_folders_tree_cache` WRITE;
/*!40000 ALTER TABLE `cms_snippet_folders_tree_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_snippet_folders_tree_cache` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `width` int unsigned NOT NULL DEFAULT '640' COMMENT 'Width',
  `height` int unsigned NOT NULL DEFAULT '1024' COMMENT 'Height',
  `locations_info` text COMMENT 'Locations info',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_templates`
--

LOCK TABLES `cms_templates` WRITE;
/*!40000 ALTER TABLE `cms_templates` DISABLE KEYS */;
INSERT INTO `cms_templates` VALUES (1,0,0,660,1320,'[{\"urn\":\"logo\",\"x\":\"10\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"contacts_top\",\"x\":\"500\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_top\",\"x\":\"10\",\"y\":\"130\",\"width\":\"480\",\"height\":\"60\"},{\"urn\":\"search_form\",\"x\":\"500\",\"y\":\"130\",\"width\":\"150\",\"height\":\"60\"},{\"urn\":\"banners\",\"x\":\"10\",\"y\":\"200\",\"width\":\"640\",\"height\":\"60\"},{\"urn\":\"left\",\"x\":\"10\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content\",\"x\":\"170\",\"y\":\"270\",\"width\":\"320\",\"height\":\"220\"},{\"urn\":\"right\",\"x\":\"500\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content2\",\"x\":\"10\",\"y\":\"500\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content3\",\"x\":\"170\",\"y\":\"600\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"content4\",\"x\":\"10\",\"y\":\"700\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content5\",\"x\":\"170\",\"y\":\"800\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"share\",\"x\":\"170\",\"y\":\"900\",\"width\":\"320\",\"height\":\"60\"},{\"urn\":\"copyrights\",\"x\":\"10\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_bottom\",\"x\":\"500\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"head_counters\",\"x\":\"10\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"},{\"urn\":\"footer_counters\",\"x\":\"335\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"}]');
/*!40000 ALTER TABLE `cms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Active',
  `lang` varchar(255) NOT NULL DEFAULT 'ru' COMMENT 'Language',
  `new` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'New',
  `activated` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Activated',
  PRIMARY KEY (`id`),
  KEY `pid` (`login`),
  KEY `email` (`email`),
  KEY `post_date` (`post_date`),
  KEY `vis` (`vis`),
  KEY `new` (`new`),
  KEY `activated` (`activated`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='Users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'test','368001d7d16bca9636f07daa3347428d','test@test.org','2018-04-22 09:46:02',1,'ru',0,0),(2,'test2','368001d7d16bca9636f07daa3347428d','test2@test.org','2018-04-22 09:47:28',1,'ru',0,0);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_billing_accounts`
--

DROP TABLE IF EXISTS `cms_users_billing_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_billing_accounts` (
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Balance',
  PRIMARY KEY (`uid`,`billing_type_id`),
  KEY `uid` (`uid`),
  KEY `billing_type_id` (`billing_type_id`),
  KEY `balance` (`balance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_billing_accounts`
--

LOCK TABLES `cms_users_billing_accounts` WRITE;
/*!40000 ALTER TABLE `cms_users_billing_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_billing_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_billing_transactions`
--

DROP TABLE IF EXISTS `cms_users_billing_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_billing_transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Transaction amount',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `billing_type_id` (`billing_type_id`),
  KEY `post_date` (`post_date`),
  KEY `amount` (`amount`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_billing_transactions`
--

LOCK TABLES `cms_users_billing_transactions` WRITE;
/*!40000 ALTER TABLE `cms_users_billing_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_billing_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_billing_types`
--

DROP TABLE IF EXISTS `cms_users_billing_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_billing_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_billing_types`
--

LOCK TABLES `cms_users_billing_types` WRITE;
/*!40000 ALTER TABLE `cms_users_billing_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_users_billing_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_blocks_login`
--

DROP TABLE IF EXISTS `cms_users_blocks_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_blocks_login` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `email_as_login` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Show e-mail as login',
  `social_login_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Social networks log-in type: 0 - none, 1 - only registered, 2 - quick register',
  `password_save_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Password save type: 0 - none, 1 - checkbox "save password", 2 - checkbox "foreign computer"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='Log in blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_blocks_login`
--

LOCK TABLES `cms_users_blocks_login` WRITE;
/*!40000 ALTER TABLE `cms_users_blocks_login` DISABLE KEYS */;
INSERT INTO `cms_users_blocks_login` VALUES (46,1,0,1);
/*!40000 ALTER TABLE `cms_users_blocks_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_blocks_recovery`
--

DROP TABLE IF EXISTS `cms_users_blocks_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_blocks_recovery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `notification_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Recovery notification ID#',
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COMMENT='Recovery blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_blocks_recovery`
--

LOCK TABLES `cms_users_blocks_recovery` WRITE;
/*!40000 ALTER TABLE `cms_users_blocks_recovery` DISABLE KEYS */;
INSERT INTO `cms_users_blocks_recovery` VALUES (47,50);
/*!40000 ALTER TABLE `cms_users_blocks_recovery` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COMMENT='Register blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_blocks_register`
--

LOCK TABLES `cms_users_blocks_register` WRITE;
/*!40000 ALTER TABLE `cms_users_blocks_register` DISABLE KEYS */;
INSERT INTO `cms_users_blocks_register` VALUES (45,4,1,0,0,1,0,'');
/*!40000 ALTER TABLE `cms_users_blocks_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_groups_assoc`
--

DROP TABLE IF EXISTS `cms_users_groups_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_groups_assoc` (
  `uid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  PRIMARY KEY (`uid`,`gid`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Users-groups associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_groups_assoc`
--

LOCK TABLES `cms_users_groups_assoc` WRITE;
/*!40000 ALTER TABLE `cms_users_groups_assoc` DISABLE KEYS */;
INSERT INTO `cms_users_groups_assoc` VALUES (1,1);
/*!40000 ALTER TABLE `cms_users_groups_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users_social`
--

DROP TABLE IF EXISTS `cms_users_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_users_social` (
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Social network page URL',
  PRIMARY KEY (`uid`,`url`),
  KEY `uid` (`uid`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Users social networks associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users_social`
--

LOCK TABLES `cms_users_social` WRITE;
/*!40000 ALTER TABLE `cms_users_social` DISABLE KEYS */;
INSERT INTO `cms_users_social` VALUES (1,'https://facebook.com/test'),(1,'https://vk.com/test');
/*!40000 ALTER TABLE `cms_users_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crontab`
--

DROP TABLE IF EXISTS `crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crontab` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Process ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `vis` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Is active',
  `once` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Process once',
  `minutes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Minutes',
  `hours` varchar(255) NOT NULL DEFAULT '' COMMENT 'Hours',
  `days` varchar(255) NOT NULL DEFAULT '' COMMENT 'Days',
  `weekdays` varchar(255) NOT NULL DEFAULT '' COMMENT 'Weekdays',
  `command_line` varchar(255) NOT NULL DEFAULT '' COMMENT 'Arbitrary command line',
  `command_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Command classname',
  `args` text COMMENT 'Command arguments',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Processing start time',
  `save_log` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Save log',
  `email_log` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email for sending log',
  `priority` int unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Crontab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crontab`
--

LOCK TABLES `crontab` WRITE;
/*!40000 ALTER TABLE `crontab` DISABLE KEYS */;
/*!40000 ALTER TABLE `crontab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crontab_logs`
--

DROP TABLE IF EXISTS `crontab_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crontab_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Crontab task ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Backup date/time',
  `attachment_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Attachment ID#',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `post_date` (`post_date`),
  KEY `attachment_id` (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Crontab logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crontab_logs`
--

LOCK TABLES `crontab_logs` WRITE;
/*!40000 ALTER TABLE `crontab_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crontab_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups of users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_levels_assoc`
--

DROP TABLE IF EXISTS `groups_levels_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_levels_assoc` (
  `gid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint NOT NULL DEFAULT '0' COMMENT 'Level ID#',
  PRIMARY KEY (`gid`,`m`),
  KEY `gid` (`gid`),
  KEY `lid` (`lid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups-rights levels associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_levels_assoc`
--

LOCK TABLES `groups_levels_assoc` WRITE;
/*!40000 ALTER TABLE `groups_levels_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_levels_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_rights`
--

DROP TABLE IF EXISTS `groups_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_rights` (
  `gid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data',
  PRIMARY KEY (`gid`,`m`),
  KEY `gid` (`gid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups access rights';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_rights`
--

LOCK TABLES `groups_rights` WRITE;
/*!40000 ALTER TABLE `groups_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `access` text COMMENT 'Access data',
  `locked` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  `priority` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Access levels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start date/time',
  `query` varchar(255) NOT NULL DEFAULT '' COMMENT 'Process query',
  `user_agent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User agent',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP address',
  PRIMARY KEY (`id`),
  KEY `post_date` (`post_date`)
) ENGINE=MyISAM AUTO_INCREMENT=32653 DEFAULT CHARSET=utf8mb3 COMMENT='Processes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
INSERT INTO `processes` VALUES (3788,'2024-03-19 23:11:08','http://test/admin/?p=cms&sub=dev&action=copy_snippet&id=49','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36','127.0.0.1'),(2492,'2024-03-29 15:46:20','http://test/admin/?p=cms&action=edit_block&id=34&pid=18','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36','127.0.0.1'),(13568,'2024-04-04 10:40:12','http://test/admin/?p=cms&sub=dev&action=edit_form&id=3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36','127.0.0.1'),(16992,'2024-06-11 14:47:56','http://test/admin/?mode=admin&sub=modules','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36','127.0.0.1'),(10384,'2024-06-12 12:21:26','http://test/admin/?p=cms&sub=dev&action=snippets','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36','127.0.0.1'),(15724,'2024-06-13 16:58:55','http://test/admin/?p=cms&sub=dev&action=snippets','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36','127.0.0.1'),(13648,'2024-06-26 19:18:23','http://test/admin/?p=cms&sub=dev&action=forms','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36','127.0.0.1'),(16100,'2024-07-02 18:22:28','http://test/admin/?p=cms&sub=dev&action=edit_snippet&id=16','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 YaBrowser/24.6.0.0 Safari/537.36','127.0.0.1');
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registry`
--

DROP TABLE IF EXISTS `registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registry` (
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Key',
  `value` text COMMENT 'Value',
  `locked` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  PRIMARY KEY (`m`,`name`),
  KEY `m` (`m`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='System Registry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registry`
--

LOCK TABLES `registry` WRITE;
/*!40000 ALTER TABLE `registry` DISABLE KEYS */;
INSERT INTO `registry` VALUES ('','installDate','2024-06-26 19:15:12',1),('','cookieLifetime','14',0),('','minPasswordLength','3',0),('','rowsPerPage','20',0),('cms','tnsize','300',0),('cms','maxsize','1920',0),('cms','cache','0',0),('cms','installDate','2024-07-02 18:22:31',1),('cms','isActive','1',0),('cms.meta_checker','installDate','2018-04-05 11:34:16',1),('cms.meta_checker','isActive','1',0),('cms.shop','installDate','2024-07-02 18:22:32',1),('cms.shop','isActive','1',0),('cms.users','activation_notify','<?php\nnamespace RAAS\\CMS\\Users;\n\n$recoveryBlocks = Block_Recovery::getSet(array(\n    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Recovery\'\",\n    \'orderBy\' => \'id\'\n));\n$recoveryPages = array();\nif ($recoveryBlocks) {\n    $recoveryPages = array();\n    foreach ($recoveryBlocks as $recoveryBlock) {\n        $recoveryPages = array_merge($recoveryPages, $recoveryBlock->pages);\n    }\n}\n$recoveryPage = null;\n$langRecoveryPages = array_filter($recoveryPages, function ($x) use ($User) {\n    return $x->lang == $User->lang;\n});\nif ($langRecoveryPages) {\n    $recoveryPage = array_shift($langRecoveryPages);\n}\nif (!$recoveryPage->id && $recoveryPages) {\n    $recoveryPage = array_shift($recoveryPages);\n}\n?>\n<p><?php echo GREETINGS?></p>\n\n<?php if ($active) { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_ACTIVATED?></p>\n    <p><?php echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM?></p>\n    <p>\n      <strong><?php echo YOUR_LOGIN?>:</strong> <?php echo htmlspecialchars($User->login)?><br />\n      <?php\n      $recoveryUrl = (\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'])\n                   . ($recoveryPage->id ? $recoveryPage->url : \'/recovery/\');\n      echo sprintf(YOUR_PASSWORD_ISNT_STORED_IN_DATABASE_FOR_SECURITY_REASON, htmlspecialchars($recoveryUrl));\n      ?>\n    </p>\n<?php } else { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_BLOCKED?></p>\n    <p><?php echo PLEASE_CONTACT_SITE_ADMINISTRATOR_TO_ASK_REASON?></p>\n<?php } ?>\n\n<p>--</p>\n<p>\n  <?php echo WITH_RESPECT?>,<br />\n  <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>\n</p>\n',0),('cms.users','automatic_notification','1',0),('cms.users','installDate','2024-06-26 19:15:17',1),('cms.users','isActive','1',0),('','baseVersion','4.3.44',0),('cms','baseVersion','4.3.91',0),('cms.shop','baseVersion','4.3.91',0),('cms.users','baseVersion','4.3.24',0);
/*!40000 ALTER TABLE `registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `register_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Last name',
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'First name',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Second name',
  `root` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Global admin',
  `ip_filter` varchar(255) NOT NULL DEFAULT '' COMMENT 'User IP filter',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User is blocked',
  `cache_rights` text COMMENT 'Rights table serialize',
  `prefs` text COMMENT 'User preferences',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','2018-04-05 11:33:36','2f3ea141f3b969b622db16187d81333d','','','','',1,'',0,'{\"cms\":{\"rights\":[],\"mask\":-1},\"\\/\":{\"rights\":[],\"mask\":-1},\"cms.users\":{\"rights\":[],\"mask\":-1},\"cms.shop\":{\"rights\":[],\"mask\":-1}}','{\"lang\":\"ru\"}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups_assoc`
--

DROP TABLE IF EXISTS `users_groups_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups_assoc` (
  `uid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `group_admin` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Group admin',
  PRIMARY KEY (`uid`,`gid`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users-groups associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups_assoc`
--

LOCK TABLES `users_groups_assoc` WRITE;
/*!40000 ALTER TABLE `users_groups_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_levels_assoc`
--

DROP TABLE IF EXISTS `users_levels_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_levels_assoc` (
  `uid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint NOT NULL DEFAULT '0' COMMENT 'Level ID#',
  PRIMARY KEY (`uid`,`m`),
  KEY `uid` (`uid`),
  KEY `lid` (`lid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users-rights levels associations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_levels_assoc`
--

LOCK TABLES `users_levels_assoc` WRITE;
/*!40000 ALTER TABLE `users_levels_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_levels_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_rights`
--

DROP TABLE IF EXISTS `users_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_rights` (
  `uid` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data',
  PRIMARY KEY (`uid`,`m`),
  KEY `uid` (`uid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users access rights';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_rights`
--

LOCK TABLES `users_rights` WRITE;
/*!40000 ALTER TABLE `users_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_rights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 18:22:55
