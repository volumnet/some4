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
INSERT INTO `registry` VALUES ('','installDate','2024-03-29 14:59:40',1),('','cookieLifetime','14',0),('','minPasswordLength','3',0),('','rowsPerPage','20',0),('cms','tnsize','300',0),('cms','maxsize','1920',0),('cms','cache','0',0),('cms','installDate','2024-04-04 10:06:53',1),('cms','isActive','1',0),('cms.meta_checker','installDate','2018-04-05 11:34:16',1),('cms.meta_checker','isActive','1',0),('cms.shop','installDate','2024-04-04 10:06:56',1),('cms.shop','isActive','1',0),('cms.users','activation_notify','<?php\nnamespace RAAS\\CMS\\Users;\n\n$recoveryBlocks = Block_Recovery::getSet(array(\n    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Recovery\'\",\n    \'orderBy\' => \'id\'\n));\n$recoveryPages = array();\nif ($recoveryBlocks) {\n    $recoveryPages = array();\n    foreach ($recoveryBlocks as $recoveryBlock) {\n        $recoveryPages = array_merge($recoveryPages, $recoveryBlock->pages);\n    }\n}\n$recoveryPage = null;\n$langRecoveryPages = array_filter($recoveryPages, function ($x) use ($User) {\n    return $x->lang == $User->lang;\n});\nif ($langRecoveryPages) {\n    $recoveryPage = array_shift($langRecoveryPages);\n}\nif (!$recoveryPage->id && $recoveryPages) {\n    $recoveryPage = array_shift($recoveryPages);\n}\n?>\n<p><?php echo GREETINGS?></p>\n\n<?php if ($active) { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_ACTIVATED?></p>\n    <p><?php echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM?></p>\n    <p>\n      <strong><?php echo YOUR_LOGIN?>:</strong> <?php echo htmlspecialchars($User->login)?><br />\n      <?php\n      $recoveryUrl = (\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'])\n                   . ($recoveryPage->id ? $recoveryPage->url : \'/recovery/\');\n      echo sprintf(YOUR_PASSWORD_ISNT_STORED_IN_DATABASE_FOR_SECURITY_REASON, htmlspecialchars($recoveryUrl));\n      ?>\n    </p>\n<?php } else { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_BLOCKED?></p>\n    <p><?php echo PLEASE_CONTACT_SITE_ADMINISTRATOR_TO_ASK_REASON?></p>\n<?php } ?>\n\n<p>--</p>\n<p>\n  <?php echo WITH_RESPECT?>,<br />\n  <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>\n</p>\n',0),('cms.users','automatic_notification','1',0),('cms.users','installDate','2024-04-04 10:06:59',1),('cms.users','isActive','1',0),('','baseVersion','4.3.40',0),('cms','baseVersion','4.3.82',0),('cms.shop','baseVersion','4.3.67',0),('cms.users','baseVersion','4.3.20',0);
/*!40000 ALTER TABLE `registry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-04 10:40:32
