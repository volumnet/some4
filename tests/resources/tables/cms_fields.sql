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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 19:20:35
