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
  `interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `widget_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Widget ID#',
  `cache_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Cache type',
  `cache_single_page` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Cache by single pages',
  `cache_interface_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Cache interface_id',
  `vis_material` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility by material',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `cache_interface_id` (`cache_interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blocks`
--

LOCK TABLES `cms_blocks` WRITE;
/*!40000 ALTER TABLE `cms_blocks` DISABLE KEYS */;
INSERT INTO `cms_blocks` VALUES (1,'logo',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Логотип',1,1,'',0,15,0,0,0,0),(2,'contacts_top',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Контакты',1,1,'',0,0,0,0,0,0),(3,'contacts_top',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Социальные сети',1,1,'',0,0,0,0,0,0),(4,'copyrights',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Копирайты',1,1,'',0,0,0,0,0,0),(5,'copyrights',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Privacy',1,1,'',0,0,0,0,0,0),(6,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Form','Обратная связь',1,1,'',2,11,0,0,0,0),(7,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Form','Заказать звонок',1,1,'',2,13,0,0,0,0),(8,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Яндекс.Метрика',1,1,'',0,0,0,0,0,0),(9,'head_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Google Analytics',1,1,'',0,0,0,0,0,0),(10,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Триггеры',1,1,'',0,0,0,0,0,0),(11,'footer_counters',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Уведомление о Cookies',1,1,'',0,0,0,0,0,0),(12,'content',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_HTML','Добро пожаловать',0,1,'',0,0,0,0,0,0),(13,'content',1,'2018-04-05 11:33:47','2018-04-05 11:33:47',1,1,'RAAS\\CMS\\Block_Material','Наши преимущества',0,0,'',1,16,0,0,0,0),(14,'menu_top',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Menu','Верхнее меню',1,1,'',3,20,1,0,6,0),(15,'menu_bottom',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Menu','Нижнее меню',1,1,'',3,21,1,0,6,0),(16,'banners',1,'2018-04-05 11:33:48','2018-04-05 11:33:48',1,1,'RAAS\\CMS\\Block_Material','Баннеры',0,0,'',1,9,0,0,0,0),(17,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'',0,0,0,0,0,0),(18,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'',0,0,0,0,0,0),(19,'content',1,'2018-04-05 11:34:14','2018-04-22 09:49:11',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'',0,0,0,0,0,0),(20,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'',0,0,0,0,0,0),(21,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_HTML','Текстовый блок',0,1,'',0,0,0,0,0,0),(22,'content',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_Material','Новости',0,1,'',1,22,0,0,0,0),(23,'left',1,'2018-04-05 11:34:14','2018-04-05 11:34:14',1,1,'RAAS\\CMS\\Block_Material','Новости',1,0,'',1,23,0,0,0,0),(24,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Карта',0,1,'',0,0,0,0,0,0),(25,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Контакты',0,1,'',0,0,0,0,0,0),(26,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','Обратная связь',0,1,'',0,0,0,0,0,0),(27,'content',1,'2018-04-05 11:34:15','2018-04-22 13:59:43',1,1,'RAAS\\CMS\\Block_Form','Обратная связь',0,1,'',2,10,2,0,0,0),(28,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_HTML','404 — страница не найдена',0,1,'',0,0,0,0,0,0),(29,'content',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_Menu','Карта сайта',0,1,'',3,19,0,0,0,0),(30,'',1,'2018-04-05 11:34:15','2018-04-05 11:34:15',1,1,'RAAS\\CMS\\Block_PHP','sitemap.xml',0,1,'',0,14,0,0,0,0),(31,'',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','robots.txt',0,1,'',0,17,0,0,0,0),(32,'',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','custom.css',0,1,'',0,18,0,0,0,0),(33,'share',1,'2018-04-05 11:34:16','2018-04-05 11:34:16',1,1,'RAAS\\CMS\\Block_HTML','Поделиться',1,1,'',0,0,0,0,0,0),(34,'content',1,'2018-04-05 11:34:27','2019-03-29 14:53:25',1,1,'RAAS\\CMS\\Block_Material','Каталог продукции',1,1,'metaTemplates=template&withChildrenGoods=1&commentFormBlock=52&commentsListBlock=51&faqFormBlock=53&faqListBlock=50',31,37,2,0,6,0),(35,'content',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_Material','Каталог продукции',0,0,'',31,37,0,0,0,0),(36,'content',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_PHP','Спецпредложение',0,1,'',0,43,0,0,0,0),(37,'left',1,'2018-04-05 11:34:27','2018-04-05 11:34:27',1,1,'RAAS\\CMS\\Block_Menu','Левое меню',1,1,'',3,41,1,0,6,0),(38,'content',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'',24,32,0,0,0,0),(39,'left',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Block_PHP','Информер корзины',1,1,'',0,39,0,0,0,0),(40,'',1,'2018-04-05 11:34:28','2018-04-05 11:34:28',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'',24,32,0,0,0,0),(41,'content',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'',24,32,0,0,0,0),(42,'left',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Block_PHP','Информер избранного',1,1,'',0,40,0,0,0,0),(43,'',1,'2018-04-05 11:34:29','2018-04-05 11:34:29',1,1,'RAAS\\CMS\\Shop\\Block_Cart','Корзина',0,1,'',24,32,0,0,0,0),(44,'',1,'2018-04-05 11:34:30','2018-04-05 11:34:30',1,1,'RAAS\\CMS\\Shop\\Block_YML','Яндекс.Маркет',0,1,'',28,34,0,0,0,0),(45,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_Register','Регистрация',0,1,'',45,51,0,0,0,0),(46,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_LogIn','Вход в систему',0,1,'',47,53,0,0,0,0),(47,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_Recovery','Восстановление пароля',0,1,'',48,54,0,0,0,0),(48,'content',1,'2018-04-22 09:45:26','2018-04-22 09:45:26',1,1,'RAAS\\CMS\\Users\\Block_Activation','Активация',0,1,'',46,52,0,0,0,0),(49,'banners',1,'2018-04-22 12:54:10','2018-04-22 12:54:10',1,1,'RAAS\\CMS\\Block_Material','Баннеры',0,0,'',8,8,0,0,0,0),(50,'content',0,'2019-03-29 14:19:56','2019-03-29 14:20:27',1,1,'RAAS\\CMS\\Block_Material','Вопрос-ответ к товарам',0,0,'',1,55,0,0,0,0),(51,'content',0,'2019-03-29 14:20:16','2019-03-29 14:20:29',1,1,'RAAS\\CMS\\Block_Material','Отзывы к товарам',0,0,'',1,56,0,0,0,0),(52,'content',0,'2019-03-29 14:20:49','2019-03-29 14:20:49',1,1,'RAAS\\CMS\\Block_Form','Отзывы к товарам',0,1,'',2,10,0,0,0,0),(53,'content',0,'2019-03-29 14:20:57','2019-03-29 14:20:57',1,1,'RAAS\\CMS\\Block_Form','Вопрос-ответ к товарам',0,1,'',2,10,0,0,0,0);
/*!40000 ALTER TABLE `cms_blocks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 18:17:28
