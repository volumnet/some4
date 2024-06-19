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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages`
--

LOCK TABLES `cms_pages` WRITE;
/*!40000 ALTER TABLE `cms_pages` DISABLE KEYS */;
INSERT INTO `cms_pages` VALUES (1,0,1,1,'2018-04-05 11:33:47','2018-04-22 10:22:34',1,1,'test','Главная',0,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,1,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/'),(2,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'about','О компании',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,2,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/about/'),(3,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'services','Услуги',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,3,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/'),(4,3,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'service1','Услуга 1',0,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,4,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service1/'),(5,3,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'service2','Услуга 2',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,5,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service2/'),(6,3,0,1,'2018-04-05 11:34:14','2018-04-22 11:57:39',1,1,'service3','Услуга 3',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,6,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/services/service3/'),(7,1,1,1,'2018-04-05 11:34:14','2018-04-22 10:22:34',1,1,'news','Новости',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,7,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/news/'),(8,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'contacts','Контакты',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,8,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/contacts/'),(9,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'404','404 — страница не найдена',404,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,9,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/404/'),(10,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'map','Карта сайта',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,10,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/map/'),(11,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'sitemaps','sitemap.xml',200,'application/xml','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,11,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/sitemaps/'),(12,1,1,1,'2018-04-05 11:34:15','2018-04-22 10:22:34',1,1,'robots','robots.txt',200,'text/plain','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,12,1,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/robots/'),(13,1,1,1,'2018-04-05 11:34:16','2018-04-22 10:22:34',1,1,'custom_css','custom.css',200,'text/css','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,13,1,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/custom_css/'),(14,1,1,1,'2018-04-05 11:34:16','2018-04-22 10:22:34',1,1,'ajax','AJAX',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,14,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/'),(15,1,1,1,'2018-04-05 11:34:23','2018-04-22 10:22:34',1,1,'catalog','Каталог продукции',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,15,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/'),(16,15,1,1,'2018-04-05 11:34:23','2018-04-22 10:22:34',1,1,'category1','Категория 1',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,16,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/'),(17,16,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category11','Категория 11',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,17,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/'),(18,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category111','Категория 111',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,18,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category111/'),(19,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category112','Категория 112',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,19,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category112/'),(20,17,1,1,'2018-04-05 11:34:24','2018-04-22 10:22:34',1,1,'category113','Категория 113',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,20,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category11/category113/'),(21,16,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category12','Категория 12',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,21,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category12/'),(22,16,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category13','Категория 13',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,22,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category1/category13/'),(23,15,1,1,'2018-04-05 11:34:25','2018-04-22 10:22:34',1,1,'category2','Категория 2',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,23,1,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category2/'),(24,15,1,1,'2018-04-05 11:34:26','2018-04-22 10:22:34',1,1,'category3','Категория 3',0,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,24,1,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/catalog/category3/'),(25,1,1,1,'2018-04-05 11:34:28','2018-04-22 11:53:40',1,1,'cart','Корзина',200,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,1,25,0,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/cart/'),(26,14,1,1,'2018-04-05 11:34:28','2018-04-22 10:22:34',1,1,'cart','Корзина',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,26,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/cart/'),(27,1,1,1,'2018-04-05 11:34:28','2018-04-22 10:22:34',1,1,'favorites','Избранное',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,27,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/favorites/'),(28,14,1,1,'2018-04-05 11:34:29','2018-04-22 10:22:34',1,1,'favorites','Избранное',200,'text/html','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,28,0,0,0,2,'',0,'2018-04-22 09:45:24',0.50,0,'/ajax/favorites/'),(29,1,1,1,'2018-04-05 11:34:29','2018-04-22 10:22:34',1,1,'yml','Яндекс.Маркет',200,'application/xml','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,29,1,0,0,2,'',0,'2018-04-22 09:45:25',0.50,0,'/yml/'),(30,1,1,1,'2018-04-22 09:45:24','2018-04-22 14:01:09',1,1,'register','Регистрация',200,'text/html','',0,'',0,'',0,'','','','1',0,'ru',1,0,30,1,0,0,5,'',0,'2024-06-13 16:58:45',0.50,0,'/register/'),(31,1,1,1,'2018-04-22 09:45:25','2018-04-22 10:22:34',1,1,'activate','Активация',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,31,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/activate/'),(32,1,1,1,'2018-04-22 09:45:25','2018-04-22 10:22:34',1,1,'login','Вход в систему',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,32,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/login/'),(33,1,1,1,'2018-04-22 09:45:26','2018-04-22 10:22:34',1,1,'recovery','Восстановление пароля',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,33,0,0,0,3,'',0,'2024-06-13 16:58:45',0.50,0,'/recovery/'),(34,1,1,1,'2024-06-13 16:58:43','2024-06-13 16:58:43',1,1,'profile','Редактирование профиля',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,34,0,0,0,5,'',0,'2024-06-13 16:58:45',0.50,0,'/profile/'),(35,1,1,1,'2024-06-13 16:58:44','2024-06-13 16:58:44',1,1,'activate-1','Активация',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,35,0,0,0,5,'',0,'2024-06-13 16:58:45',0.50,0,'/activate-1/'),(36,1,1,1,'2024-06-13 16:58:44','2024-06-13 16:58:44',1,1,'my-orders','Мои заказы',200,'text/html','',0,NULL,0,NULL,0,'','','','1',0,'ru',1,0,36,0,0,0,5,'',0,'2024-06-13 16:58:45',0.50,0,'/my-orders/'),(37,14,1,1,'2024-06-13 16:58:45','2024-06-13 16:58:45',1,1,'user','Пользователь',200,'application/json','',0,NULL,0,NULL,0,'','','','0',0,'ru',1,0,37,0,0,0,4,'',0,'2024-06-13 16:58:45',0.50,0,'/ajax/user/');
/*!40000 ALTER TABLE `cms_pages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 16:59:21
