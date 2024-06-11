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
INSERT INTO `cms_blocks_pages_assoc` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(1,2,17),(2,2,18),(3,2,19),(4,2,20),(5,2,21),(6,2,22),(7,2,23),(8,2,24),(9,2,25),(10,2,26),(11,2,27),(14,2,28),(15,2,29),(17,2,30),(1,3,31),(2,3,32),(3,3,33),(4,3,34),(5,3,35),(6,3,36),(7,3,37),(8,3,38),(9,3,39),(10,3,40),(11,3,41),(14,3,42),(15,3,43),(18,3,44),(1,4,45),(2,4,46),(3,4,47),(4,4,48),(5,4,49),(6,4,50),(7,4,51),(8,4,52),(9,4,53),(10,4,54),(11,4,55),(14,4,56),(15,4,57),(19,4,58),(1,5,59),(2,5,60),(3,5,61),(4,5,62),(5,5,63),(6,5,64),(7,5,65),(8,5,66),(9,5,67),(10,5,68),(11,5,69),(14,5,70),(15,5,71),(20,5,72),(1,6,73),(2,6,74),(3,6,75),(4,6,76),(5,6,77),(6,6,78),(7,6,79),(8,6,80),(9,6,81),(10,6,82),(11,6,83),(14,6,84),(15,6,85),(21,6,86),(1,7,87),(2,7,88),(3,7,89),(4,7,90),(5,7,91),(6,7,92),(7,7,93),(8,7,94),(9,7,95),(10,7,96),(11,7,97),(14,7,98),(15,7,99),(22,7,100),(39,1,101),(39,2,101),(39,3,101),(39,4,101),(39,5,101),(39,6,101),(39,7,101),(39,8,101),(39,9,101),(39,10,101),(39,15,101),(39,16,101),(39,17,101),(39,18,101),(39,19,101),(39,20,101),(39,21,101),(39,22,101),(39,23,101),(39,24,101),(39,25,101),(39,27,101),(1,8,107),(2,8,108),(3,8,109),(4,8,110),(5,8,111),(6,8,112),(7,8,113),(8,8,114),(9,8,115),(10,8,116),(11,8,117),(14,8,118),(15,8,119),(24,8,121),(25,8,122),(26,8,123),(27,8,124),(1,9,125),(2,9,126),(3,9,127),(4,9,128),(5,9,129),(6,9,130),(7,9,131),(8,9,132),(9,9,133),(10,9,134),(11,9,135),(14,9,136),(15,9,137),(28,9,139),(1,10,140),(2,10,141),(3,10,142),(4,10,143),(5,10,144),(6,10,145),(7,10,146),(8,10,147),(9,10,148),(10,10,149),(11,10,150),(14,10,151),(15,10,152),(29,10,154),(30,11,155),(31,12,156),(32,13,157),(33,1,158),(33,4,159),(33,5,160),(33,6,161),(33,2,162),(33,3,163),(33,7,164),(33,8,165),(33,9,166),(33,10,167),(1,15,168),(2,15,169),(3,15,170),(4,15,171),(5,15,172),(6,15,173),(7,15,174),(8,15,175),(9,15,176),(10,15,177),(11,15,178),(14,15,179),(15,15,180),(33,15,182),(1,16,183),(2,16,184),(3,16,185),(4,16,186),(5,16,187),(6,16,188),(7,16,189),(8,16,190),(9,16,191),(10,16,192),(11,16,193),(14,16,194),(15,16,195),(33,16,197),(1,17,198),(2,17,199),(3,17,200),(4,17,201),(5,17,202),(6,17,203),(7,17,204),(8,17,205),(9,17,206),(10,17,207),(11,17,208),(14,17,209),(15,17,210),(33,17,212),(1,18,213),(2,18,214),(3,18,215),(4,18,216),(5,18,217),(6,18,218),(7,18,219),(8,18,220),(9,18,221),(10,18,222),(11,18,223),(14,18,224),(15,18,225),(33,18,227),(1,19,228),(2,19,229),(3,19,230),(4,19,231),(5,19,232),(6,19,233),(7,19,234),(8,19,235),(9,19,236),(10,19,237),(11,19,238),(14,19,239),(15,19,240),(33,19,242),(1,20,243),(2,20,244),(3,20,245),(4,20,246),(5,20,247),(6,20,248),(7,20,249),(8,20,250),(9,20,251),(10,20,252),(11,20,253),(14,20,254),(15,20,255),(33,20,257),(1,21,258),(2,21,259),(3,21,260),(4,21,261),(5,21,262),(6,21,263),(7,21,264),(8,21,265),(9,21,266),(10,21,267),(11,21,268),(14,21,269),(15,21,270),(33,21,272),(1,22,273),(2,22,274),(3,22,275),(4,22,276),(5,22,277),(6,22,278),(7,22,279),(8,22,280),(9,22,281),(10,22,282),(11,22,283),(14,22,284),(15,22,285),(33,22,287),(1,23,288),(2,23,289),(3,23,290),(4,23,291),(5,23,292),(6,23,293),(7,23,294),(8,23,295),(9,23,296),(10,23,297),(11,23,298),(14,23,299),(15,23,300),(33,23,302),(1,24,303),(2,24,304),(3,24,305),(4,24,306),(5,24,307),(6,24,308),(7,24,309),(8,24,310),(9,24,311),(10,24,312),(11,24,313),(14,24,314),(15,24,315),(33,24,317),(34,15,318),(34,18,319),(34,19,320),(34,20,321),(34,17,322),(34,21,323),(34,16,325),(34,23,326),(35,1,328),(36,1,329),(42,1,330),(42,2,330),(42,3,330),(42,4,330),(42,5,330),(42,6,330),(42,7,330),(42,8,330),(42,9,330),(42,10,330),(42,15,330),(42,16,330),(42,17,330),(42,18,330),(42,19,330),(42,20,330),(42,21,330),(42,22,330),(42,23,330),(42,24,330),(42,25,330),(42,27,330),(1,25,350),(2,25,351),(3,25,352),(4,25,353),(5,25,354),(6,25,355),(7,25,356),(8,25,357),(9,25,358),(10,25,359),(11,25,360),(14,25,361),(15,25,362),(33,25,364),(38,25,366),(37,1,367),(37,2,367),(37,3,367),(37,4,367),(37,5,367),(37,6,367),(37,7,367),(37,8,367),(37,9,367),(37,10,367),(37,15,367),(37,16,367),(37,17,367),(37,18,367),(37,19,367),(37,20,367),(37,21,367),(37,22,367),(37,23,367),(37,24,367),(37,25,367),(37,27,367),(40,26,388),(1,27,389),(2,27,390),(3,27,391),(4,27,392),(5,27,393),(6,27,394),(7,27,395),(8,27,396),(9,27,397),(10,27,398),(11,27,399),(14,27,400),(15,27,401),(33,27,403),(41,27,406),(23,1,407),(23,2,407),(23,3,407),(23,4,407),(23,5,407),(23,6,407),(23,8,407),(23,9,407),(23,10,407),(23,15,407),(23,16,407),(23,17,407),(23,18,407),(23,19,407),(23,20,407),(23,21,407),(23,22,407),(23,23,407),(23,24,407),(23,25,407),(23,27,407),(43,28,429),(44,29,430),(1,30,431),(2,30,432),(3,30,433),(4,30,434),(5,30,435),(6,30,436),(7,30,437),(8,30,438),(9,30,439),(10,30,440),(11,30,441),(14,30,442),(15,30,443),(39,30,444),(33,30,445),(42,30,446),(37,30,447),(23,30,448),(1,31,449),(2,31,450),(3,31,451),(4,31,452),(5,31,453),(6,31,454),(7,31,455),(8,31,456),(9,31,457),(10,31,458),(11,31,459),(14,31,460),(15,31,461),(39,31,462),(33,31,463),(42,31,464),(37,31,465),(23,31,466),(1,32,467),(2,32,468),(3,32,469),(4,32,470),(5,32,471),(6,32,472),(7,32,473),(8,32,474),(9,32,475),(10,32,476),(11,32,477),(14,32,478),(15,32,479),(39,32,480),(33,32,481),(42,32,482),(37,32,483),(23,32,484),(1,33,485),(2,33,486),(3,33,487),(4,33,488),(5,33,489),(6,33,490),(7,33,491),(8,33,492),(9,33,493),(10,33,494),(11,33,495),(14,33,496),(15,33,497),(39,33,498),(33,33,499),(42,33,500),(37,33,501),(23,33,502),(45,30,503),(46,32,504),(47,33,505),(48,31,506),(49,20,507),(50,15,508),(51,15,509),(52,15,510),(53,15,511);
/*!40000 ALTER TABLE `cms_blocks_pages_assoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 13:27:30
