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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 16:59:22
