-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: MySQL-8.2    Database: test
-- ------------------------------------------------------
-- Server version	8.2.0

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 14:10:53
