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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 10:40:25
