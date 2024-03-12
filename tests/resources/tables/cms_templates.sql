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
-- Table structure for table `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Code',
  `width` int unsigned NOT NULL DEFAULT '640' COMMENT 'Width',
  `height` int unsigned NOT NULL DEFAULT '1024' COMMENT 'Height',
  `visual` tinyint unsigned NOT NULL DEFAULT '1' COMMENT 'Template is visual',
  `background` int unsigned NOT NULL DEFAULT '0' COMMENT 'Background attachment ID#',
  `locations_info` text COMMENT 'Locations info',
  PRIMARY KEY (`id`),
  KEY `background` (`background`),
  KEY `urn` (`urn`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='Templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_templates`
--

LOCK TABLES `cms_templates` WRITE;
/*!40000 ALTER TABLE `cms_templates` DISABLE KEYS */;
INSERT INTO `cms_templates` VALUES (1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,'main','<?php\nnamespace RAAS\\CMS;\n\n$colspanSM = 4;\n$colspanMD = 3;\n\n$bgPage = $Page;\nwhile (!$bgPage->background->id && $bgPage->pid) {\n    $bgPage = $bgPage->parent;\n}\n$bg = $bgPage->background;\nunset($bgPage);\n\n$separateScripts = function($text)\n{\n    $rx = \'/\\\\<script.*?\\\\>.*?\\\\<\\\\/script\\\\>/umis\';\n    $scripts = \'\';\n    $result = $text;\n    if (preg_match_all($rx, $text, $regs)) {\n        foreach ($regs[0] as $i => $script) {\n            if (!preg_match(\'/maps.*?yandex.*constructor?/umis\', $script)) {\n                $scripts .= $script . \"\\n\";\n                $result = str_replace($script, \'\', $result);\n            }\n        }\n    }\n    return array($result, $scripts);\n};\n\nob_start();\n?>\n<!DOCTYPE html>\n<?php if ($Page->noindex || $Page->Material->noindex) { ?>\n    <!--noindex-->\n<?php } ?>\n<html lang=\"<?php echo htmlspecialchars($Page->lang)?>\">\n  <head>\n    <?php echo eval(\'?\' . \'>\' . Snippet::importByURN(\'head\')->description)?>\n    <?php echo $Page->location(\'head_counters\')?>\n  </head>\n  <body class=\"body <?php echo !$Page->pid ? \' body_main\' : \'\'?>\">\n    <div id=\"top\" class=\"body__background-holder\"<?php echo $bg->id ? \' style=\"background-image: url(\\\'/\' . htmlspecialchars($bg->fileURL) . \'\\\')\"\' : \'\'?>>\n      <header class=\"body__header\">\n        <div class=\"container\">\n          <div class=\"body__header-inner\">\n            <div class=\"row\">\n              <div class=\"col-sm-6 body__logo\">\n                <?php echo $Page->location(\'logo\')?>\n              </div>\n              <div class=\"col-sm-6 body__contacts-top\">\n                <?php echo $Page->location(\'contacts_top\')?>\n              </div>\n            </div>\n          </div>\n          <div class=\"body__menu-top-outer\">\n            <div class=\"row\">\n              <div class=\"col-sm-9 body__menu-top\">\n                <?php echo $Page->location(\'menu_top\')?>\n              </div>\n              <div class=\"col-sm-3 body__search-form\">\n                <?php echo $Page->location(\'search_form\')?>\n              </div>\n            </div>\n          </div>\n          <div class=\"body__banners\">\n            <?php echo $Page->location(\'banners\')?>\n          </div>\n        </div>\n      </header>\n      <main class=\"body__main-container\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <?php\n            $leftText = $Page->location(\'left\');\n            $rightText = $Page->location(\'right\');\n            if ($leftText) { ?>\n                <aside class=\"body__left col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">\n                  <div class=\"body__left-inner\"><?php echo $leftText?></div>\n                </aside>\n            <?php } ?>\n            <?php if (count($Page->locationBlocksText[\'content\'])) {\n                $spanSM = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanSM);\n                $spanMD = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanMD);\n                ?>\n                <div class=\"body__content col-sm-<?php echo $spanSM?> col-md-<?php echo $spanMD?>\">\n                  <div class=\"body__content-inner\">\n                    <?php if (!$Page->pid) { ?>\n                        <?php echo $Page->location(\'content\')?>\n                    <?php } else { ?>\n                        <?php if ((count($Page->parents) + (bool)$Page->Material->id + (bool)$Page->Item->id) > 1) { ?>\n                            <ol class=\"breadcrumb\">\n                              <?php foreach ($Page->parents as $row) { ?>\n                                  <li><a href=\"<?php echo htmlspecialchars($row->url)?>\"><?php echo htmlspecialchars($row->getBreadcrumbsName())?></a></li>\n                              <?php } ?>\n                              <?php if ($Page->Material->id || $Page->Item->id) { ?>\n                                  <li><a href=\"<?php echo htmlspecialchars($Page->url)?>\"><?php echo htmlspecialchars($Page->getBreadcrumbsName())?></a></li>\n                              <?php } ?>\n                            </ol>\n                        <?php } ?>\n                        <h1 class=\"h1\"><?php echo htmlspecialchars($Page->getH1())?></h1>\n                        <?php echo $Page->location(\'content\')?>\n                        <?php echo $Page->location(\'share\')?>\n                    <?php } ?>\n                  </div>\n                </div>\n            <?php } ?>\n            <?php if ($rightText) { ?>\n                <aside class=\"body__right col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">\n                  <div class=\"body__right-inner\"><?php echo $rightText?></div>\n                </aside>\n            <?php } ?>\n          </div>\n        </div>\n        <?php if ($text = $Page->location(\'content2\')) { ?>\n            <div class=\"body__content2\"><?php echo $text?></div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content3\')) { ?>\n            <div class=\"body__content3\">\n              <div class=\"container\">\n                <div class=\"body__content3-inner\"><?php echo $text?></div>\n              </div>\n            </div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content4\')) { ?>\n            <div class=\"body__content4\"><?php echo $text?></div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content5\')) { ?>\n            <div class=\"body__content5\">\n              <div class=\"container\">\n                <div class=\"body__content5-inner\"><?php echo $text?></div>\n              </div>\n            </div>\n        <?php } ?>\n      </div>\n      <footer class=\"body__footer\">\n        <div class=\"container\">\n          <div class=\"body__footer-inner\">\n            <div class=\"row\">\n              <div class=\"col-sm-6 body__copyrights\"><?php echo $Page->location(\'copyrights\')?></div>\n              <div class=\"col-sm-6 body__menu-bottom\"><?php echo $Page->location(\'menu_bottom\')?></div>\n            </div>\n          </div>\n          <div class=\"body__developer\">Разработка и сопровождение сайта <a href=\"http://volumnet.ru\" target=\"_blank\">Volume&nbsp;Networks</a></div>\n        </div>\n      </footer>\n    </div>\n    <?php\n    echo $Page->location(\'footer_counters\');\n    $content = ob_get_contents();\n    ob_end_clean();\n    $content = $separateScripts($content);\n    echo $content[0] . $content[1];\n    ?>\n  </body>\n</html>\n<?php if ($Page->noindex || $Page->Material->noindex) { ?>\n    <!--/noindex-->\n<?php } ?>\n',660,1320,1,0,'[{\"urn\":\"logo\",\"x\":\"10\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"contacts_top\",\"x\":\"500\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_top\",\"x\":\"10\",\"y\":\"130\",\"width\":\"480\",\"height\":\"60\"},{\"urn\":\"search_form\",\"x\":\"500\",\"y\":\"130\",\"width\":\"150\",\"height\":\"60\"},{\"urn\":\"banners\",\"x\":\"10\",\"y\":\"200\",\"width\":\"640\",\"height\":\"60\"},{\"urn\":\"left\",\"x\":\"10\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content\",\"x\":\"170\",\"y\":\"270\",\"width\":\"320\",\"height\":\"220\"},{\"urn\":\"right\",\"x\":\"500\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content2\",\"x\":\"10\",\"y\":\"500\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content3\",\"x\":\"170\",\"y\":\"600\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"content4\",\"x\":\"10\",\"y\":\"700\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content5\",\"x\":\"170\",\"y\":\"800\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"share\",\"x\":\"170\",\"y\":\"900\",\"width\":\"320\",\"height\":\"60\"},{\"urn\":\"copyrights\",\"x\":\"10\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_bottom\",\"x\":\"500\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"head_counters\",\"x\":\"10\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"},{\"urn\":\"footer_counters\",\"x\":\"335\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"}]');
/*!40000 ALTER TABLE `cms_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 18:17:33
