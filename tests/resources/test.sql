-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 04 2023 г., 12:37
-- Версия сервера: 8.0.29
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attachments`
--

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `image` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is image',
  `realname` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Real file name',
  `filename` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Original file name',
  `mime` varchar(255) NOT NULL DEFAULT '0' COMMENT 'MIME-type'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Attachments';

--
-- Дамп данных таблицы `attachments`
--

INSERT INTO `attachments` (`id`, `classname`, `pid`, `image`, `realname`, `filename`, `mime`) VALUES
(1, 'RAAS\\CMS\\Material_Field', 15, 1, '0', '0', 'application/octet-stream'),
(2, 'RAAS\\CMS\\Material_Field', 15, 1, '0', '0', 'application/octet-stream'),
(3, 'RAAS\\CMS\\Material_Field', 15, 1, '0', '0', 'application/octet-stream'),
(4, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(5, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(6, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(7, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(8, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(9, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(10, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(11, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(12, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(13, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(14, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(15, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(16, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(17, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(18, 'RAAS\\CMS\\Material_Field', 17, 1, '0', '0', 'application/octet-stream'),
(19, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(20, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(21, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(22, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(23, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(24, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(25, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(26, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(27, 'RAAS\\CMS\\Page_Field', 2, 1, '0', '0', 'application/octet-stream'),
(28, 'RAAS\\CMS\\Material_Field', 29, 0, 'test.doc', 'test.doc', 'application/binary'),
(29, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_1.pdf', 'test.pdf', 'application/binary'),
(30, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(31, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(32, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(33, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(34, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_2.doc', 'test.doc', 'application/binary'),
(35, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_3.pdf', 'test.pdf', 'application/binary'),
(36, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(37, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_4.doc', 'test.doc', 'application/binary'),
(38, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_5.pdf', 'test.pdf', 'application/binary'),
(39, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(40, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_6.doc', 'test.doc', 'application/binary'),
(41, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_7.pdf', 'test.pdf', 'application/binary'),
(42, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(43, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_8.doc', 'test.doc', 'application/binary'),
(44, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_9.pdf', 'test.pdf', 'application/binary'),
(45, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(46, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_10.doc', 'test.doc', 'application/binary'),
(47, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_11.pdf', 'test.pdf', 'application/binary'),
(48, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(49, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_12.doc', 'test.doc', 'application/binary'),
(50, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_13.pdf', 'test.pdf', 'application/binary'),
(51, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(52, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_14.doc', 'test.doc', 'application/binary'),
(53, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_15.pdf', 'test.pdf', 'application/binary'),
(54, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(55, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_16.doc', 'test.doc', 'application/binary'),
(56, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_17.pdf', 'test.pdf', 'application/binary'),
(57, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream'),
(58, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_18.doc', 'test.doc', 'application/binary'),
(59, 'RAAS\\CMS\\Material_Field', 29, 0, 'test_19.pdf', 'test.pdf', 'application/binary'),
(60, 'RAAS\\CMS\\Material_Field', 27, 1, '0', '0', 'application/octet-stream');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_access`
--

DROP TABLE IF EXISTS `cms_access`;
CREATE TABLE `cms_access` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `block_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  `to_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To (type)',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Site access';

--
-- Дамп данных таблицы `cms_access`
--

INSERT INTO `cms_access` (`id`, `page_id`, `material_id`, `block_id`, `allow`, `to_type`, `uid`, `gid`, `priority`) VALUES
(1, 4, 0, 0, 0, 0, 0, 0, 0),
(2, 4, 0, 0, 1, 4, 0, 1, 1),
(3, 0, 0, 19, 0, 0, 0, 0, 0),
(4, 0, 0, 19, 1, 3, 2, 0, 1),
(5, 0, 7, 0, 0, 0, 0, 0, 0),
(6, 0, 7, 0, 1, 3, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_access_blocks_cache`
--

DROP TABLE IF EXISTS `cms_access_blocks_cache`;
CREATE TABLE `cms_access_blocks_cache` (
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `block_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blocks access cache';

--
-- Дамп данных таблицы `cms_access_blocks_cache`
--

INSERT INTO `cms_access_blocks_cache` (`uid`, `block_id`, `allow`) VALUES
(0, 19, 0),
(1, 19, 0),
(2, 19, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_access_materials_cache`
--

DROP TABLE IF EXISTS `cms_access_materials_cache`;
CREATE TABLE `cms_access_materials_cache` (
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `allow` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials access cache';

--
-- Дамп данных таблицы `cms_access_materials_cache`
--

INSERT INTO `cms_access_materials_cache` (`uid`, `material_id`, `allow`) VALUES
(0, 7, 0),
(1, 7, 1),
(2, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_access_pages_cache`
--

DROP TABLE IF EXISTS `cms_access_pages_cache`;
CREATE TABLE `cms_access_pages_cache` (
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `allow` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages access cache';

--
-- Дамп данных таблицы `cms_access_pages_cache`
--

INSERT INTO `cms_access_pages_cache` (`uid`, `page_id`, `allow`) VALUES
(0, 4, 0),
(1, 4, 1),
(2, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks`
--

DROP TABLE IF EXISTS `cms_blocks`;
CREATE TABLE `cms_blocks` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT 'Location',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `block_type` varchar(255) NOT NULL DEFAULT 'RAAS\\CMS\\Block_HTML' COMMENT 'Block type',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `inherit` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit',
  `nat` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Translate address',
  `params` text COMMENT 'Additional params',
  `interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `widget_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Widget ID#',
  `cache_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cache type',
  `cache_single_page` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cache by single pages',
  `cache_interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cache interface_id',
  `vis_material` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility by material'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';

--
-- Дамп данных таблицы `cms_blocks`
--

INSERT INTO `cms_blocks` (`id`, `location`, `vis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `block_type`, `name`, `inherit`, `nat`, `params`, `interface_id`, `widget_id`, `cache_type`, `cache_single_page`, `cache_interface_id`, `vis_material`) VALUES
(1, 'logo', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Логотип', 1, 1, '', 0, 15, 0, 0, 0, 0),
(2, 'contacts_top', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Контакты', 1, 1, '', 0, 0, 0, 0, 0, 0),
(3, 'contacts_top', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Социальные сети', 1, 1, '', 0, 0, 0, 0, 0, 0),
(4, 'copyrights', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Копирайты', 1, 1, '', 0, 0, 0, 0, 0, 0),
(5, 'copyrights', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Privacy', 1, 1, '', 0, 0, 0, 0, 0, 0),
(6, 'footer_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_Form', 'Обратная связь', 1, 1, '', 2, 11, 0, 0, 0, 0),
(7, 'footer_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_Form', 'Заказать звонок', 1, 1, '', 2, 13, 0, 0, 0, 0),
(8, 'footer_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Яндекс.Метрика', 1, 1, '', 0, 0, 0, 0, 0, 0),
(9, 'head_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Google Analytics', 1, 1, '', 0, 0, 0, 0, 0, 0),
(10, 'footer_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Триггеры', 1, 1, '', 0, 0, 0, 0, 0, 0),
(11, 'footer_counters', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Уведомление о Cookies', 1, 1, '', 0, 0, 0, 0, 0, 0),
(12, 'content', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Добро пожаловать', 0, 1, '', 0, 0, 0, 0, 0, 0),
(13, 'content', 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 1, 1, 'RAAS\\CMS\\Block_Material', 'Наши преимущества', 0, 0, '', 1, 16, 0, 0, 0, 0),
(14, 'menu_top', 1, '2018-04-05 11:33:48', '2018-04-05 11:33:48', 1, 1, 'RAAS\\CMS\\Block_Menu', 'Верхнее меню', 1, 1, '', 3, 20, 1, 0, 6, 0),
(15, 'menu_bottom', 1, '2018-04-05 11:33:48', '2018-04-05 11:33:48', 1, 1, 'RAAS\\CMS\\Block_Menu', 'Нижнее меню', 1, 1, '', 3, 21, 1, 0, 6, 0),
(16, 'banners', 1, '2018-04-05 11:33:48', '2018-04-05 11:33:48', 1, 1, 'RAAS\\CMS\\Block_Material', 'Баннеры', 0, 0, '', 1, 9, 0, 0, 0, 0),
(17, 'content', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', 0, 1, '', 0, 0, 0, 0, 0, 0),
(18, 'content', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', 0, 1, '', 0, 0, 0, 0, 0, 0),
(19, 'content', 1, '2018-04-05 11:34:14', '2018-04-22 09:49:11', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', 0, 1, '', 0, 0, 0, 0, 0, 0),
(20, 'content', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', 0, 1, '', 0, 0, 0, 0, 0, 0),
(21, 'content', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', 0, 1, '', 0, 0, 0, 0, 0, 0),
(22, 'content', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_Material', 'Новости', 0, 1, '', 1, 22, 0, 0, 0, 0),
(23, 'left', 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 1, 1, 'RAAS\\CMS\\Block_Material', 'Новости', 1, 0, '', 1, 23, 0, 0, 0, 0),
(24, 'content', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Карта', 0, 1, '', 0, 0, 0, 0, 0, 0),
(25, 'content', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Контакты', 0, 1, '', 0, 0, 0, 0, 0, 0),
(26, 'content', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Обратная связь', 0, 1, '', 0, 0, 0, 0, 0, 0),
(27, 'content', 1, '2018-04-05 11:34:15', '2018-04-22 13:59:43', 1, 1, 'RAAS\\CMS\\Block_Form', 'Обратная связь', 0, 1, '', 2, 10, 2, 0, 0, 0),
(28, 'content', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_HTML', '404 — страница не найдена', 0, 1, '', 0, 0, 0, 0, 0, 0),
(29, 'content', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_Menu', 'Карта сайта', 0, 1, '', 3, 19, 0, 0, 0, 0),
(30, '', 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 1, 1, 'RAAS\\CMS\\Block_PHP', 'sitemap.xml', 0, 1, '', 0, 14, 0, 0, 0, 0),
(31, '', 1, '2018-04-05 11:34:16', '2018-04-05 11:34:16', 1, 1, 'RAAS\\CMS\\Block_HTML', 'robots.txt', 0, 1, '', 0, 17, 0, 0, 0, 0),
(32, '', 1, '2018-04-05 11:34:16', '2018-04-05 11:34:16', 1, 1, 'RAAS\\CMS\\Block_HTML', 'custom.css', 0, 1, '', 0, 18, 0, 0, 0, 0),
(33, 'share', 1, '2018-04-05 11:34:16', '2018-04-05 11:34:16', 1, 1, 'RAAS\\CMS\\Block_HTML', 'Поделиться', 1, 1, '', 0, 0, 0, 0, 0, 0),
(34, 'content', 1, '2018-04-05 11:34:27', '2019-03-29 14:53:25', 1, 1, 'RAAS\\CMS\\Block_Material', 'Каталог продукции', 1, 1, 'metaTemplates=template&withChildrenGoods=1&commentFormBlock=52&commentsListBlock=51&faqFormBlock=53&faqListBlock=50', 31, 37, 2, 0, 6, 0),
(35, 'content', 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 1, 1, 'RAAS\\CMS\\Block_Material', 'Каталог продукции', 0, 0, '', 31, 37, 0, 0, 0, 0),
(36, 'content', 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 1, 1, 'RAAS\\CMS\\Block_PHP', 'Спецпредложение', 0, 1, '', 0, 43, 0, 0, 0, 0),
(37, 'left', 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 1, 1, 'RAAS\\CMS\\Block_Menu', 'Левое меню', 1, 1, '', 3, 41, 1, 0, 6, 0),
(38, 'content', 1, '2018-04-05 11:34:28', '2018-04-05 11:34:28', 1, 1, 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', 0, 1, '', 24, 32, 0, 0, 0, 0),
(39, 'left', 1, '2018-04-05 11:34:28', '2018-04-05 11:34:28', 1, 1, 'RAAS\\CMS\\Block_PHP', 'Информер корзины', 1, 1, '', 0, 39, 0, 0, 0, 0),
(40, '', 1, '2018-04-05 11:34:28', '2018-04-05 11:34:28', 1, 1, 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', 0, 1, '', 24, 32, 0, 0, 0, 0),
(41, 'content', 1, '2018-04-05 11:34:29', '2018-04-05 11:34:29', 1, 1, 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', 0, 1, '', 24, 32, 0, 0, 0, 0),
(42, 'left', 1, '2018-04-05 11:34:29', '2018-04-05 11:34:29', 1, 1, 'RAAS\\CMS\\Block_PHP', 'Информер избранного', 1, 1, '', 0, 40, 0, 0, 0, 0),
(43, '', 1, '2018-04-05 11:34:29', '2018-04-05 11:34:29', 1, 1, 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', 0, 1, '', 24, 32, 0, 0, 0, 0),
(44, '', 1, '2018-04-05 11:34:30', '2018-04-05 11:34:30', 1, 1, 'RAAS\\CMS\\Shop\\Block_YML', 'Яндекс.Маркет', 0, 1, '', 28, 34, 0, 0, 0, 0),
(45, 'content', 1, '2018-04-22 09:45:26', '2018-04-22 09:45:26', 1, 1, 'RAAS\\CMS\\Users\\Block_Register', 'Регистрация', 0, 1, '', 45, 51, 0, 0, 0, 0),
(46, 'content', 1, '2018-04-22 09:45:26', '2018-04-22 09:45:26', 1, 1, 'RAAS\\CMS\\Users\\Block_LogIn', 'Вход в систему', 0, 1, '', 47, 53, 0, 0, 0, 0),
(47, 'content', 1, '2018-04-22 09:45:26', '2018-04-22 09:45:26', 1, 1, 'RAAS\\CMS\\Users\\Block_Recovery', 'Восстановление пароля', 0, 1, '', 48, 54, 0, 0, 0, 0),
(48, 'content', 1, '2018-04-22 09:45:26', '2018-04-22 09:45:26', 1, 1, 'RAAS\\CMS\\Users\\Block_Activation', 'Активация', 0, 1, '', 46, 52, 0, 0, 0, 0),
(49, 'banners', 1, '2018-04-22 12:54:10', '2018-04-22 12:54:10', 1, 1, 'RAAS\\CMS\\Block_Material', 'Баннеры', 0, 0, '', 8, 8, 0, 0, 0, 0),
(50, 'content', 0, '2019-03-29 14:19:56', '2019-03-29 14:20:27', 1, 1, 'RAAS\\CMS\\Block_Material', 'Вопрос-ответ к товарам', 0, 0, '', 1, 55, 0, 0, 0, 0),
(51, 'content', 0, '2019-03-29 14:20:16', '2019-03-29 14:20:29', 1, 1, 'RAAS\\CMS\\Block_Material', 'Отзывы к товарам', 0, 0, '', 1, 56, 0, 0, 0, 0),
(52, 'content', 0, '2019-03-29 14:20:49', '2019-03-29 14:20:49', 1, 1, 'RAAS\\CMS\\Block_Form', 'Отзывы к товарам', 0, 1, '', 2, 10, 0, 0, 0, 0),
(53, 'content', 0, '2019-03-29 14:20:57', '2019-03-29 14:20:57', 1, 1, 'RAAS\\CMS\\Block_Form', 'Вопрос-ответ к товарам', 0, 1, '', 2, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_form`
--

DROP TABLE IF EXISTS `cms_blocks_form`;
CREATE TABLE `cms_blocks_form` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `form` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Form ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Form blocks';

--
-- Дамп данных таблицы `cms_blocks_form`
--

INSERT INTO `cms_blocks_form` (`id`, `form`) VALUES
(6, 1),
(27, 1),
(7, 2),
(53, 5),
(52, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_html`
--

DROP TABLE IF EXISTS `cms_blocks_html`;
CREATE TABLE `cms_blocks_html` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `description` text COMMENT 'Text',
  `wysiwyg` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'WYSIWYG editor on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='HTML blocks';

--
-- Дамп данных таблицы `cms_blocks_html`
--

INSERT INTO `cms_blocks_html` (`id`, `description`, `wysiwyg`) VALUES
(1, '<a href=\"/\" class=\"logo\">\n  <span class=\"logo__image\"><img alt=\"\" src=\"/files/cms/common/image/logo.png\" /></span>\n  <span class=\"logo__text\">\n    <span class=\"logo__name\">Наша компания</span>\n    <span class=\"logo__slogan\">Производим все, что угодно!</span>\n  </span>\n</a>\n', 1),
(2, '<div class=\"contacts-top\" itemscope itemtype=\"http://schema.org/Organization\">\n  <meta itemprop=\"name\" content=\"\" />\n  <div class=\"contacts-top__phone\" itemprop=\"telephone\"><a href=\"tel:%2B79990000000\"><span>(999)</span> 000-00-00</a></div>\n  <div class=\"contacts-top__address\" itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">\n    <span itemprop=\"addressLocality\">г. Город</span>,\n    <span itemprop=\"streetAddress\">ул. Центральная, 0</span>, оф. 123\n  </div>\n</div>\n', 0),
(3, '<div class=\"socials-top\">\n  <span class=\"socials-top__title\">Мы в социальных сетях:</span>\n  <a href=\"https://vk.com/\" class=\"fa fa-vk\" title=\"ВКонтакте\" target=\"_blank\">&nbsp;</a>\n  <a href=\"https://www.facebook.com/groups/\" class=\"fa fa-facebook\" title=\"Facebook\" target=\"_blank\">&nbsp;</a>\n  <a href=\"https://instagram.com/\" class=\"fa fa-instagram\" title=\"Instagram\" target=\"_blank\">&nbsp;</a>\n</div>\n', 0),
(4, '<div class=\"copyrights\">&copy; Компания, 2015. Все права защищены.</div>\n', 1),
(5, '<div class=\"privacy\">Совершая любые действия на сайте, вы подтверждаете свое согласие&nbsp;на <a href=\"/privacy/\">обработку персональных данных в соответствии с политикой сайта</a>. Сайт может использовать технологию cookies для сбора информации технического характера. Для персонифицированной работы сайта мы также можем обрабатывать IP-адрес региона вашего местоположения.</div>\n', 1),
(8, '', 0),
(9, '', 0),
(10, '<div class=\"triggers\">\n  <a class=\"triggers__trigger triggers__trigger_totop scrollTo\" href=\"#top\" title=\"Наверх\"></a>\n  <a class=\"triggers__trigger triggers__trigger_order-call\" data-target=\"#order_call_modal\" data-toggle=\"modal\" href=\"#\" title=\"Заказать звонок\"></a>\n  <a class=\"triggers__trigger triggers__trigger_feedback\" data-target=\"#feedback_modal\" data-toggle=\"modal\" href=\"#\" title=\"Написать письмо\"></a>\n</div>\n<script src=\"/js/triggers.js\"></script>\n', 0),
(11, '<div class=\"cookies-notification\">\n  <a href=\"#\" class=\"cookies-notification__close\"></a>\n  <p>\n    На нашем сайте мы используем cookie для сбора информации технического характера. В частности, для персонифицированной работы сайта мы обрабатываем IP-адрес региона вашего местоположения. <br />\n    Совершая любые действия на сайте, вы <a href=\"/privacy/\" target=\"_blank\">соглашаетесь с политикой обработки персональных данных</a>\n  </p>\n</div>\n<script src=\"/js/cookies-notification.js\"></script>\n', 0),
(12, '<h1>Добро пожаловать!</h1>\n<p>Извините, страница находится в стадии наполнения.</p>\n', 1),
(17, '<p>Извините, раздел находится в стадии наполнения</p>', 1),
(18, '<p>Извините, раздел находится в стадии наполнения</p>', 1),
(19, '<p>Извините, раздел находится в стадии наполнения</p>', 1),
(20, '<p>Извините, раздел находится в стадии наполнения</p>', 1),
(21, '<p>Извините, раздел находится в стадии наполнения</p>', 1),
(24, '<div class=\"map\">\n  <script type=\"text/javascript\" charset=\"utf-8\" src=\"//api-maps.yandex.ru/services/constructor/1.0/js/?sid=ac2qYbmG3G-Jl487_Mu2VedJiQSpaZLo&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true\"></script>\n</div>\n', 0),
(25, '<div class=\"contacts\">\n  <div itemscope itemtype=\"http://schema.org/Organization\">\n    <meta itemprop=\"name\" content=\"\" />\n    <p>\n      <strong>Адрес: </strong>\n      <span itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">\n        <span itemprop=\"postalCode\">620000</span>,\n        <span itemprop=\"addressLocality\">г. Екатеринбург</span>,\n        <span itemprop=\"streetAddress\">ул. ..., 0</span>, оф. 0 (0 этаж)\n      </span>\n    </p>\n    <p>\n      <strong>Телефон: </strong>\n      <a href=\"tel:%2B79990000000\" itemprop=\"telephone\">+7 999 000-00-00</a>\n    </p>\n    <p>\n      <strong>E-mail:&nbsp;</strong>\n      <a href=\"mailto:info@test.org\" itemprop=\"email\">info@test.org</a>\n    </p>\n    <p>\n      <strong>Режим работы:&nbsp;</strong>\n      09:00 - 18:00\n    </p>\n    <p>\n      <strong>Транспорт:&nbsp;</strong>\n      ...\n    </p>\n  </div>\n</div>\n', 0),
(26, '<h3>Обратная связь</h3>', 1),
(28, 'Извините, запрашиваемая Вами страница не найдена. Если вы уверены, что эта страница должна существовать, обратитесь к администрации сайта.', 1),
(31, 'User-agent: *\nDisallow: /404/\nDisallow: /admin/\nDisallow: /ajax/\nDisallow: /compare/\nDisallow: /cart/\nDisallow: /cache/\nDisallow: /cron/\nDisallow: /files/*_tn\nDisallow: /files/*_small\nDisallow: /files/*_inline\nDisallow: /fonts/\nDisallow: /images/\nDisallow: /inc/\nDisallow: /modules/\nDisallow: /price/\nDisallow: /search/\nDisallow: /sitemaps/\nDisallow: /system/\nDisallow: /yml/\nDisallow: *print=1\nClean-param: sort&order&print&price_from&price_to\n\nUser-agent: Yandex\nDisallow: /404/\nDisallow: /admin/\nDisallow: /ajax/\nDisallow: /compare/\nDisallow: /cart/\nDisallow: /cache/\nDisallow: /cron/\nDisallow: /files/*_tn\nDisallow: /files/*_small\nDisallow: /files/*_inline\nDisallow: /fonts/\nDisallow: /images/\nDisallow: /inc/\nDisallow: /modules/\nDisallow: /price/\nDisallow: /search/\nDisallow: /sitemaps/\nDisallow: /system/\nDisallow: /yml/\nDisallow: *print=1\n\nHost: pneumatic-tools\nSitemap: http://pneumatic-tools/sitemap.xml', 0),
(32, '', 0),
(33, '<div class=\"share\">\n  <script src=\"//yastatic.net/es5-shims/0.0.2/es5-shims.min.js\"></script>\n  <script src=\"//yastatic.net/share2/share.js\"></script>\n  <div class=\"ya-share2\" data-services=\"vkontakte,facebook,twitter,gplus,whatsapp\"></div>\n</div>\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_material`
--

DROP TABLE IF EXISTS `cms_blocks_material`;
CREATE TABLE `cms_blocks_material` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  `sort_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sorting var name',
  `order_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Order var name',
  `sort_field_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field for sorting by default',
  `sort_order_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default order',
  `legacy` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Redirect legacy addresses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks';

--
-- Дамп данных таблицы `cms_blocks_material`
--

INSERT INTO `cms_blocks_material` (`id`, `material_type`, `pages_var_name`, `rows_per_page`, `sort_var_name`, `order_var_name`, `sort_field_default`, `sort_order_default`, `legacy`) VALUES
(13, 1, 'page', 0, '', '', 'post_date', 'asc', 0),
(16, 2, 'page', 0, '', '', 'post_date', 'asc', 0),
(22, 3, 'page', 20, '', '', '16', 'desc!', 0),
(23, 3, '', 3, '', '', '16', 'desc!', 0),
(34, 4, 'page', 20, '', '', 'name', 'asc', 0),
(35, 4, '', 0, '', '', 'price', 'asc', 0),
(49, 2, 'page', 20, '', '', 'name', 'asc!', 0),
(50, 6, 'page', 20, '', '', '50', 'asc!', 0),
(51, 7, 'page', 20, '', '', 'name', 'asc!', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_material_filter`
--

DROP TABLE IF EXISTS `cms_blocks_material_filter`;
CREATE TABLE `cms_blocks_material_filter` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `relation` enum('=','LIKE','CONTAINED','FULLTEXT','<=','>=') NOT NULL DEFAULT '=' COMMENT 'Relation',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks filtering';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_material_sort`
--

DROP TABLE IF EXISTS `cms_blocks_material_sort`;
CREATE TABLE `cms_blocks_material_sort` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `relation` enum('asc!','desc!','asc','desc') NOT NULL DEFAULT 'asc!' COMMENT 'Relation',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material blocks sorting';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_menu`
--

DROP TABLE IF EXISTS `cms_blocks_menu`;
CREATE TABLE `cms_blocks_menu` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `menu` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Menu ID#',
  `full_menu` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Full menu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Menu blocks';

--
-- Дамп данных таблицы `cms_blocks_menu`
--

INSERT INTO `cms_blocks_menu` (`id`, `menu`, `full_menu`) VALUES
(14, 1, 1),
(15, 2, 1),
(29, 3, 1),
(37, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_pages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_pages_assoc`;
CREATE TABLE `cms_blocks_pages_assoc` (
  `block_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blocks to pages associations';

--
-- Дамп данных таблицы `cms_blocks_pages_assoc`
--

INSERT INTO `cms_blocks_pages_assoc` (`block_id`, `page_id`, `priority`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(1, 2, 17),
(2, 2, 18),
(3, 2, 19),
(4, 2, 20),
(5, 2, 21),
(6, 2, 22),
(7, 2, 23),
(8, 2, 24),
(9, 2, 25),
(10, 2, 26),
(11, 2, 27),
(14, 2, 28),
(15, 2, 29),
(17, 2, 30),
(1, 3, 31),
(2, 3, 32),
(3, 3, 33),
(4, 3, 34),
(5, 3, 35),
(6, 3, 36),
(7, 3, 37),
(8, 3, 38),
(9, 3, 39),
(10, 3, 40),
(11, 3, 41),
(14, 3, 42),
(15, 3, 43),
(18, 3, 44),
(1, 4, 45),
(2, 4, 46),
(3, 4, 47),
(4, 4, 48),
(5, 4, 49),
(6, 4, 50),
(7, 4, 51),
(8, 4, 52),
(9, 4, 53),
(10, 4, 54),
(11, 4, 55),
(14, 4, 56),
(15, 4, 57),
(19, 4, 58),
(1, 5, 59),
(2, 5, 60),
(3, 5, 61),
(4, 5, 62),
(5, 5, 63),
(6, 5, 64),
(7, 5, 65),
(8, 5, 66),
(9, 5, 67),
(10, 5, 68),
(11, 5, 69),
(14, 5, 70),
(15, 5, 71),
(20, 5, 72),
(1, 6, 73),
(2, 6, 74),
(3, 6, 75),
(4, 6, 76),
(5, 6, 77),
(6, 6, 78),
(7, 6, 79),
(8, 6, 80),
(9, 6, 81),
(10, 6, 82),
(11, 6, 83),
(14, 6, 84),
(15, 6, 85),
(21, 6, 86),
(1, 7, 87),
(2, 7, 88),
(3, 7, 89),
(4, 7, 90),
(5, 7, 91),
(6, 7, 92),
(7, 7, 93),
(8, 7, 94),
(9, 7, 95),
(10, 7, 96),
(11, 7, 97),
(14, 7, 98),
(15, 7, 99),
(22, 7, 100),
(39, 1, 101),
(39, 2, 101),
(39, 3, 101),
(39, 4, 101),
(39, 5, 101),
(39, 6, 101),
(39, 7, 101),
(39, 8, 101),
(39, 9, 101),
(39, 10, 101),
(39, 15, 101),
(39, 16, 101),
(39, 17, 101),
(39, 18, 101),
(39, 19, 101),
(39, 20, 101),
(39, 21, 101),
(39, 22, 101),
(39, 23, 101),
(39, 24, 101),
(39, 25, 101),
(39, 27, 101),
(1, 8, 107),
(2, 8, 108),
(3, 8, 109),
(4, 8, 110),
(5, 8, 111),
(6, 8, 112),
(7, 8, 113),
(8, 8, 114),
(9, 8, 115),
(10, 8, 116),
(11, 8, 117),
(14, 8, 118),
(15, 8, 119),
(24, 8, 121),
(25, 8, 122),
(26, 8, 123),
(27, 8, 124),
(1, 9, 125),
(2, 9, 126),
(3, 9, 127),
(4, 9, 128),
(5, 9, 129),
(6, 9, 130),
(7, 9, 131),
(8, 9, 132),
(9, 9, 133),
(10, 9, 134),
(11, 9, 135),
(14, 9, 136),
(15, 9, 137),
(28, 9, 139),
(1, 10, 140),
(2, 10, 141),
(3, 10, 142),
(4, 10, 143),
(5, 10, 144),
(6, 10, 145),
(7, 10, 146),
(8, 10, 147),
(9, 10, 148),
(10, 10, 149),
(11, 10, 150),
(14, 10, 151),
(15, 10, 152),
(29, 10, 154),
(30, 11, 155),
(31, 12, 156),
(32, 13, 157),
(33, 1, 158),
(33, 4, 159),
(33, 5, 160),
(33, 6, 161),
(33, 2, 162),
(33, 3, 163),
(33, 7, 164),
(33, 8, 165),
(33, 9, 166),
(33, 10, 167),
(1, 15, 168),
(2, 15, 169),
(3, 15, 170),
(4, 15, 171),
(5, 15, 172),
(6, 15, 173),
(7, 15, 174),
(8, 15, 175),
(9, 15, 176),
(10, 15, 177),
(11, 15, 178),
(14, 15, 179),
(15, 15, 180),
(33, 15, 182),
(1, 16, 183),
(2, 16, 184),
(3, 16, 185),
(4, 16, 186),
(5, 16, 187),
(6, 16, 188),
(7, 16, 189),
(8, 16, 190),
(9, 16, 191),
(10, 16, 192),
(11, 16, 193),
(14, 16, 194),
(15, 16, 195),
(33, 16, 197),
(1, 17, 198),
(2, 17, 199),
(3, 17, 200),
(4, 17, 201),
(5, 17, 202),
(6, 17, 203),
(7, 17, 204),
(8, 17, 205),
(9, 17, 206),
(10, 17, 207),
(11, 17, 208),
(14, 17, 209),
(15, 17, 210),
(33, 17, 212),
(1, 18, 213),
(2, 18, 214),
(3, 18, 215),
(4, 18, 216),
(5, 18, 217),
(6, 18, 218),
(7, 18, 219),
(8, 18, 220),
(9, 18, 221),
(10, 18, 222),
(11, 18, 223),
(14, 18, 224),
(15, 18, 225),
(33, 18, 227),
(1, 19, 228),
(2, 19, 229),
(3, 19, 230),
(4, 19, 231),
(5, 19, 232),
(6, 19, 233),
(7, 19, 234),
(8, 19, 235),
(9, 19, 236),
(10, 19, 237),
(11, 19, 238),
(14, 19, 239),
(15, 19, 240),
(33, 19, 242),
(1, 20, 243),
(2, 20, 244),
(3, 20, 245),
(4, 20, 246),
(5, 20, 247),
(6, 20, 248),
(7, 20, 249),
(8, 20, 250),
(9, 20, 251),
(10, 20, 252),
(11, 20, 253),
(14, 20, 254),
(15, 20, 255),
(33, 20, 257),
(1, 21, 258),
(2, 21, 259),
(3, 21, 260),
(4, 21, 261),
(5, 21, 262),
(6, 21, 263),
(7, 21, 264),
(8, 21, 265),
(9, 21, 266),
(10, 21, 267),
(11, 21, 268),
(14, 21, 269),
(15, 21, 270),
(33, 21, 272),
(1, 22, 273),
(2, 22, 274),
(3, 22, 275),
(4, 22, 276),
(5, 22, 277),
(6, 22, 278),
(7, 22, 279),
(8, 22, 280),
(9, 22, 281),
(10, 22, 282),
(11, 22, 283),
(14, 22, 284),
(15, 22, 285),
(33, 22, 287),
(1, 23, 288),
(2, 23, 289),
(3, 23, 290),
(4, 23, 291),
(5, 23, 292),
(6, 23, 293),
(7, 23, 294),
(8, 23, 295),
(9, 23, 296),
(10, 23, 297),
(11, 23, 298),
(14, 23, 299),
(15, 23, 300),
(33, 23, 302),
(1, 24, 303),
(2, 24, 304),
(3, 24, 305),
(4, 24, 306),
(5, 24, 307),
(6, 24, 308),
(7, 24, 309),
(8, 24, 310),
(9, 24, 311),
(10, 24, 312),
(11, 24, 313),
(14, 24, 314),
(15, 24, 315),
(33, 24, 317),
(34, 15, 318),
(34, 18, 319),
(34, 19, 320),
(34, 20, 321),
(34, 17, 322),
(34, 21, 323),
(34, 22, 324),
(34, 16, 325),
(34, 23, 326),
(34, 24, 327),
(35, 1, 328),
(36, 1, 329),
(42, 1, 330),
(42, 2, 330),
(42, 3, 330),
(42, 4, 330),
(42, 5, 330),
(42, 6, 330),
(42, 7, 330),
(42, 8, 330),
(42, 9, 330),
(42, 10, 330),
(42, 15, 330),
(42, 16, 330),
(42, 17, 330),
(42, 18, 330),
(42, 19, 330),
(42, 20, 330),
(42, 21, 330),
(42, 22, 330),
(42, 23, 330),
(42, 24, 330),
(42, 25, 330),
(42, 27, 330),
(1, 25, 350),
(2, 25, 351),
(3, 25, 352),
(4, 25, 353),
(5, 25, 354),
(6, 25, 355),
(7, 25, 356),
(8, 25, 357),
(9, 25, 358),
(10, 25, 359),
(11, 25, 360),
(14, 25, 361),
(15, 25, 362),
(33, 25, 364),
(38, 25, 366),
(37, 1, 367),
(37, 2, 367),
(37, 3, 367),
(37, 4, 367),
(37, 5, 367),
(37, 6, 367),
(37, 7, 367),
(37, 8, 367),
(37, 9, 367),
(37, 10, 367),
(37, 15, 367),
(37, 16, 367),
(37, 17, 367),
(37, 18, 367),
(37, 19, 367),
(37, 20, 367),
(37, 21, 367),
(37, 22, 367),
(37, 23, 367),
(37, 24, 367),
(37, 25, 367),
(37, 27, 367),
(40, 26, 388),
(1, 27, 389),
(2, 27, 390),
(3, 27, 391),
(4, 27, 392),
(5, 27, 393),
(6, 27, 394),
(7, 27, 395),
(8, 27, 396),
(9, 27, 397),
(10, 27, 398),
(11, 27, 399),
(14, 27, 400),
(15, 27, 401),
(33, 27, 403),
(41, 27, 406),
(23, 1, 407),
(23, 2, 407),
(23, 3, 407),
(23, 4, 407),
(23, 5, 407),
(23, 6, 407),
(23, 8, 407),
(23, 9, 407),
(23, 10, 407),
(23, 15, 407),
(23, 16, 407),
(23, 17, 407),
(23, 18, 407),
(23, 19, 407),
(23, 20, 407),
(23, 21, 407),
(23, 22, 407),
(23, 23, 407),
(23, 24, 407),
(23, 25, 407),
(23, 27, 407),
(43, 28, 429),
(44, 29, 430),
(1, 30, 431),
(2, 30, 432),
(3, 30, 433),
(4, 30, 434),
(5, 30, 435),
(6, 30, 436),
(7, 30, 437),
(8, 30, 438),
(9, 30, 439),
(10, 30, 440),
(11, 30, 441),
(14, 30, 442),
(15, 30, 443),
(39, 30, 444),
(33, 30, 445),
(42, 30, 446),
(37, 30, 447),
(23, 30, 448),
(1, 31, 449),
(2, 31, 450),
(3, 31, 451),
(4, 31, 452),
(5, 31, 453),
(6, 31, 454),
(7, 31, 455),
(8, 31, 456),
(9, 31, 457),
(10, 31, 458),
(11, 31, 459),
(14, 31, 460),
(15, 31, 461),
(39, 31, 462),
(33, 31, 463),
(42, 31, 464),
(37, 31, 465),
(23, 31, 466),
(1, 32, 467),
(2, 32, 468),
(3, 32, 469),
(4, 32, 470),
(5, 32, 471),
(6, 32, 472),
(7, 32, 473),
(8, 32, 474),
(9, 32, 475),
(10, 32, 476),
(11, 32, 477),
(14, 32, 478),
(15, 32, 479),
(39, 32, 480),
(33, 32, 481),
(42, 32, 482),
(37, 32, 483),
(23, 32, 484),
(1, 33, 485),
(2, 33, 486),
(3, 33, 487),
(4, 33, 488),
(5, 33, 489),
(6, 33, 490),
(7, 33, 491),
(8, 33, 492),
(9, 33, 493),
(10, 33, 494),
(11, 33, 495),
(14, 33, 496),
(15, 33, 497),
(39, 33, 498),
(33, 33, 499),
(42, 33, 500),
(37, 33, 501),
(23, 33, 502),
(45, 30, 503),
(46, 32, 504),
(47, 33, 505),
(48, 31, 506),
(49, 20, 507),
(50, 15, 508),
(51, 15, 509),
(52, 15, 510),
(53, 15, 511);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_php`
--

DROP TABLE IF EXISTS `cms_blocks_php`;
CREATE TABLE `cms_blocks_php` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `description` text COMMENT 'Code',
  `widget` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Widget ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='PHP blocks';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_search`
--

DROP TABLE IF EXISTS `cms_blocks_search`;
CREATE TABLE `cms_blocks_search` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `search_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Search var name',
  `min_length` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Minimal query length',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rows per page'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_search_languages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_languages_assoc`;
CREATE TABLE `cms_blocks_search_languages_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `language` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks languages';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_search_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_material_types_assoc`;
CREATE TABLE `cms_blocks_search_material_types_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks material types';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_blocks_search_pages_assoc`
--

DROP TABLE IF EXISTS `cms_blocks_search_pages_assoc`;
CREATE TABLE `cms_blocks_search_pages_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Search blocks pages';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_data`
--

DROP TABLE IF EXISTS `cms_data`;
CREATE TABLE `cms_data` (
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `fid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value',
  `inherited` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages fields';

--
-- Дамп данных таблицы `cms_data`
--

INSERT INTO `cms_data` (`pid`, `fid`, `fii`, `value`, `inherited`) VALUES
(1, 1, 0, '', 0),
(1, 5, 0, 'Тестовый пользователь', 0),
(1, 6, 0, '+7 999 000-00-00', 0),
(1, 7, 0, 'test@test.org', 0),
(1, 8, 0, 'Тестовый вопрос', 0),
(1, 9, 0, '1', 0),
(1, 13, 0, 'smile-o', 0),
(1, 37, 0, '+7 999 000-00-00', 0),
(1, 43, 0, 'Тестовый', 0),
(1, 44, 0, 'Пользователь', 0),
(1, 45, 0, '1', 0),
(2, 13, 0, 'thumbs-o-up', 0),
(2, 37, 0, '+7 999 000-00-00', 0),
(2, 43, 0, 'Тестовый', 0),
(2, 44, 0, 'Пользователь', 0),
(2, 45, 0, '2', 0),
(3, 13, 0, 'rub', 0),
(4, 1, 0, '', 0),
(4, 14, 0, '#', 0),
(4, 15, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":1}', 0),
(5, 14, 0, '#', 0),
(5, 15, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":2}', 0),
(6, 14, 0, '#', 0),
(6, 15, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":3}', 0),
(7, 16, 0, '2018-03-30', 0),
(7, 17, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":4}', 0),
(7, 17, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":5}', 0),
(7, 17, 2, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":6}', 0),
(7, 17, 3, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":7}', 0),
(7, 17, 4, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":8}', 0),
(7, 18, 0, 'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...', 0),
(8, 16, 0, '2018-04-01 09:50', 0),
(8, 17, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":9}', 0),
(8, 17, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":10}', 0),
(8, 17, 2, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":11}', 0),
(8, 17, 3, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":12}', 0),
(8, 17, 4, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":13}', 0),
(8, 18, 0, 'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...', 0),
(9, 16, 0, '2018-04-05 07:36', 0),
(9, 17, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":14}', 0),
(9, 17, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":15}', 0),
(9, 17, 2, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":16}', 0),
(9, 17, 3, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":17}', 0),
(9, 17, 4, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":18}', 0),
(9, 18, 0, 'Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна....', 0),
(10, 25, 0, 'f4dbdf21', 0),
(10, 26, 0, '83620', 0),
(10, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":30}', 0),
(10, 27, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":31}', 0),
(10, 27, 2, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":32}', 0),
(10, 27, 3, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":33}', 0),
(10, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(10, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(10, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":28}', 0),
(10, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":29}', 0),
(10, 30, 0, '1', 0),
(10, 31, 0, '0', 0),
(10, 32, 0, '2', 0),
(10, 33, 0, '2', 0),
(10, 34, 0, '0', 0),
(11, 25, 0, '83dcefb7', 0),
(11, 26, 0, '67175', 0),
(11, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":36}', 0),
(11, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(11, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(11, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":34}', 0),
(11, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":35}', 0),
(11, 30, 0, '1', 0),
(11, 31, 0, '1', 0),
(11, 32, 0, '1', 0),
(11, 33, 0, '1', 0),
(11, 34, 0, '75907', 0),
(12, 25, 0, '1ad5be0d', 0),
(12, 26, 0, '71013', 0),
(12, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":39}', 0),
(12, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(12, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(12, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":37}', 0),
(12, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":38}', 0),
(12, 30, 0, '1', 0),
(12, 31, 0, '1', 0),
(12, 32, 0, '1', 0),
(12, 33, 0, '1', 0),
(12, 34, 0, '86635', 0),
(13, 25, 0, '6dd28e9b', 0),
(13, 26, 0, '30450', 0),
(13, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":42}', 0),
(13, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(13, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(13, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":40}', 0),
(13, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":41}', 0),
(13, 30, 0, '1', 0),
(13, 31, 0, '1', 0),
(13, 32, 0, '1', 0),
(13, 33, 0, '1', 0),
(13, 34, 0, '0', 0),
(14, 25, 0, 'f3b61b38', 0),
(14, 26, 0, '25712', 0),
(14, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":45}', 0),
(14, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(14, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(14, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":43}', 0),
(14, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":44}', 0),
(14, 30, 0, '1', 0),
(14, 31, 0, '0', 0),
(14, 32, 0, '2', 0),
(14, 33, 0, '2', 0),
(14, 34, 0, '0', 0),
(15, 25, 0, '84b12bae', 0),
(15, 26, 0, '54096', 0),
(15, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":48}', 0),
(15, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(15, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(15, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":46}', 0),
(15, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":47}', 0),
(15, 30, 0, '1', 0),
(15, 31, 0, '1', 0),
(15, 32, 0, '1', 0),
(15, 33, 0, '1', 0),
(15, 34, 0, '0', 0),
(16, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":19}', 0),
(16, 25, 0, '1db87a14', 0),
(16, 26, 0, '49651', 0),
(16, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":51}', 0),
(16, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(16, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(16, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":49}', 0),
(16, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":50}', 0),
(16, 30, 0, '1', 0),
(16, 31, 0, '1', 0),
(16, 32, 0, '1', 0),
(16, 33, 0, '1', 0),
(16, 34, 0, '58091', 0),
(17, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":20}', 0),
(17, 25, 0, '6abf4a82', 0),
(17, 26, 0, '61245', 0),
(17, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":54}', 0),
(17, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(17, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(17, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":52}', 0),
(17, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":53}', 0),
(17, 30, 0, '1', 0),
(17, 31, 0, '1', 0),
(17, 32, 0, '1', 0),
(17, 33, 0, '1', 0),
(17, 34, 0, '73494', 0),
(18, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":21}', 0),
(18, 25, 0, 'fa005713', 0),
(18, 26, 0, '5609', 0),
(18, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":57}', 0),
(18, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(18, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(18, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":55}', 0),
(18, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":56}', 0),
(18, 30, 0, '1', 0),
(18, 31, 0, '0', 0),
(18, 32, 0, '2', 0),
(18, 33, 0, '2', 0),
(18, 34, 0, '6506', 0),
(19, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":22}', 0),
(19, 25, 0, '8d076785', 0),
(19, 26, 0, '85812', 0),
(19, 27, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":60}', 0),
(19, 28, 0, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(19, 28, 1, 'https://www.youtube.com/watch?v=YVgc2PQd_bo', 0),
(19, 29, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":58}', 0),
(19, 29, 1, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":59}', 0),
(19, 30, 0, '1', 0),
(19, 31, 0, '1', 0),
(19, 32, 0, '1', 0),
(19, 33, 0, '1', 0),
(19, 34, 0, '0', 0),
(19, 35, 0, '18', 0),
(19, 35, 1, '19', 0),
(19, 35, 2, '10', 0),
(19, 35, 3, '11', 0),
(19, 35, 4, '16', 0),
(19, 35, 5, '15', 0),
(19, 35, 6, '12', 0),
(19, 35, 7, '17', 0),
(19, 35, 8, '11', 0),
(19, 35, 9, '16', 0),
(19, 35, 10, '10', 0),
(19, 35, 11, '13', 0),
(19, 35, 12, '10', 0),
(19, 35, 13, '15', 0),
(19, 35, 14, '19', 0),
(19, 35, 15, '18', 0),
(19, 35, 16, '15', 0),
(19, 35, 17, '10', 0),
(19, 35, 18, '19', 0),
(19, 35, 19, '10', 0),
(19, 35, 20, '14', 0),
(19, 35, 21, '14', 0),
(19, 35, 22, '14', 0),
(19, 35, 23, '18', 0),
(19, 35, 24, '19', 0),
(19, 35, 25, '17', 0),
(19, 35, 26, '14', 0),
(19, 35, 27, '19', 0),
(19, 35, 28, '16', 0),
(19, 35, 29, '11', 0),
(20, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":23}', 0),
(20, 49, 0, '12', 0),
(20, 50, 0, '', 0),
(20, 51, 0, '', 0),
(20, 52, 0, '', 0),
(20, 53, 0, '', 0),
(20, 54, 0, '', 0),
(21, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":24}', 0),
(21, 49, 0, '12', 0),
(21, 50, 0, '', 0),
(21, 51, 0, '', 0),
(21, 52, 0, '', 0),
(21, 53, 0, '', 0),
(21, 54, 0, '', 0),
(22, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":25}', 0),
(22, 49, 0, '12', 0),
(22, 50, 0, '', 0),
(22, 51, 0, '', 0),
(22, 52, 0, '', 0),
(22, 53, 0, '', 0),
(22, 54, 0, '', 0),
(23, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":26}', 0),
(23, 55, 0, '', 0),
(23, 56, 0, '12', 0),
(23, 57, 0, '1', 0),
(23, 58, 0, '', 0),
(23, 59, 0, '', 0),
(24, 2, 0, '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":27}', 0),
(24, 55, 0, '', 0),
(24, 56, 0, '12', 0),
(24, 57, 0, '2', 0),
(24, 58, 0, '', 0),
(24, 59, 0, '', 0),
(25, 1, 0, '', 0),
(25, 55, 0, '', 0),
(25, 56, 0, '12', 0),
(25, 57, 0, '3', 0),
(25, 58, 0, '', 0),
(25, 59, 0, '', 0),
(30, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_dictionaries`
--

DROP TABLE IF EXISTS `cms_dictionaries`;
CREATE TABLE `cms_dictionaries` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority',
  `orderby` enum('id','urn','name','priority') NOT NULL DEFAULT 'priority' COMMENT 'Order by'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Dictionaries';

--
-- Дамп данных таблицы `cms_dictionaries`
--

INSERT INTO `cms_dictionaries` (`id`, `pid`, `vis`, `pvis`, `urn`, `name`, `priority`, `orderby`) VALUES
(1, 0, 1, 1, 'test', 'Тестовый справочник', 1, 'priority'),
(2, 1, 1, 1, 'value1', 'Запись 1', 2, 'priority'),
(3, 1, 1, 1, 'value2', 'Запись 2', 3, 'priority'),
(4, 1, 0, 1, 'value3', 'Запись 3', 4, 'priority');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_dictionaries_tree_cache`
--

DROP TABLE IF EXISTS `cms_dictionaries_tree_cache`;
CREATE TABLE `cms_dictionaries_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Dictionaries tree cache';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_feedback`
--

DROP TABLE IF EXISTS `cms_feedback`;
CREATE TABLE `cms_feedback` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'User Agent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Feedback';

--
-- Дамп данных таблицы `cms_feedback`
--

INSERT INTO `cms_feedback` (`id`, `uid`, `pid`, `page_id`, `material_id`, `post_date`, `vis`, `ip`, `user_agent`) VALUES
(1, 0, 1, 1, 5, '2018-04-22 10:23:58', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_fieldgroups`
--

DROP TABLE IF EXISTS `cms_fieldgroups`;
CREATE TABLE `cms_fieldgroups` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `gid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Field groups';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_fields`
--

DROP TABLE IF EXISTS `cms_fields`;
CREATE TABLE `cms_fields` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `gid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `datatype` varchar(255) NOT NULL DEFAULT '' COMMENT 'Data type',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `required` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `maxlength` int NOT NULL,
  `multiple` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Multiple data',
  `source_type` enum('','ini','csv','xml','sql','php','dictionary') NOT NULL DEFAULT '' COMMENT 'Source type',
  `source` text COMMENT 'Source',
  `defval` text COMMENT 'Default value',
  `min_val` float NOT NULL DEFAULT '0' COMMENT 'Minimal value',
  `max_val` float NOT NULL DEFAULT '0' COMMENT 'Maximal value',
  `step` float NOT NULL DEFAULT '0' COMMENT 'Step',
  `preprocessor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Preprocessor interface ID#',
  `postprocessor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Postprocessor interface ID#',
  `placeholder` varchar(255) NOT NULL DEFAULT '' COMMENT 'Placeholder',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pattern',
  `show_in_table` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Show as table column',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material fields';

--
-- Дамп данных таблицы `cms_fields`
--

INSERT INTO `cms_fields` (`id`, `classname`, `pid`, `gid`, `vis`, `datatype`, `urn`, `name`, `required`, `maxlength`, `multiple`, `source_type`, `source`, `defval`, `min_val`, `max_val`, `step`, `preprocessor_id`, `postprocessor_id`, `placeholder`, `pattern`, `show_in_table`, `priority`) VALUES
(1, 'RAAS\\CMS\\Material_Type', 0, 0, 1, 'htmlarea', '_description_', 'Описание', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 1),
(2, 'RAAS\\CMS\\Material_Type', 0, 0, 1, 'image', 'image', 'Изображение', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 2),
(3, 'RAAS\\CMS\\Material_Type', 0, 0, 1, 'checkbox', 'noindex', 'Не индексировать', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 3),
(4, 'RAAS\\CMS\\Material_Type', 0, 0, 1, 'image', 'background', 'Фоновое изображение', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 4),
(5, 'RAAS\\CMS\\Form', 1, 0, 1, 'text', 'full_name', 'Ваше имя', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 5),
(6, 'RAAS\\CMS\\Form', 1, 0, 1, 'text', 'phone', 'Телефон', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 6),
(7, 'RAAS\\CMS\\Form', 1, 0, 1, 'text', 'email', 'E-mail', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 7),
(8, 'RAAS\\CMS\\Form', 1, 0, 1, 'textarea', '_description_', 'Текст вопроса', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 8),
(9, 'RAAS\\CMS\\Form', 1, 0, 1, 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 9),
(10, 'RAAS\\CMS\\Form', 2, 0, 1, 'text', 'phone_call', 'Телефон', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 10),
(11, 'RAAS\\CMS\\Form', 2, 0, 1, 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 11),
(12, 'RAAS\\CMS\\Material_Type', 1, 0, 1, 'image', 'image', 'Изображение', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 12),
(13, 'RAAS\\CMS\\Material_Type', 1, 0, 1, 'text', 'icon', 'Значок', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 13),
(14, 'RAAS\\CMS\\Material_Type', 2, 0, 1, 'text', 'url', 'Адрес ссылки', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 14),
(15, 'RAAS\\CMS\\Material_Type', 2, 0, 1, 'image', 'image', 'Изображение', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 15),
(16, 'RAAS\\CMS\\Material_Type', 3, 0, 1, 'date', 'date', 'Дата', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 16),
(17, 'RAAS\\CMS\\Material_Type', 3, 0, 1, 'image', 'images', 'Изображение', 0, 0, 1, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 17),
(18, 'RAAS\\CMS\\Material_Type', 3, 0, 1, 'textarea', 'brief', 'Краткое описание', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 18),
(19, 'RAAS\\CMS\\Material_Type', 3, 0, 1, 'checkbox', 'noindex', 'Не индексировать', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 19),
(20, 'RAAS\\CMS\\Form', 3, 0, 1, 'text', 'full_name', 'Ваше имя', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 20),
(21, 'RAAS\\CMS\\Form', 3, 0, 1, 'text', 'phone', 'Телефон', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 21),
(22, 'RAAS\\CMS\\Form', 3, 0, 1, 'text', 'email', 'E-mail', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 22),
(23, 'RAAS\\CMS\\Form', 3, 0, 1, 'textarea', '_description_', 'Комментарий', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 23),
(24, 'RAAS\\CMS\\Form', 3, 0, 1, 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 24),
(25, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'text', 'article', 'Артикул', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 25),
(26, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'number', 'price', 'Стоимость', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 26),
(27, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'image', 'images', 'Изображение', 0, 0, 1, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 27),
(28, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'text', 'videos', 'Видеозаписи', 0, 0, 1, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 28),
(29, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'file', 'files', 'Файлы', 0, 0, 1, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 29),
(30, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'checkbox', 'spec', 'Спецпредложение', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 30),
(31, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'checkbox', 'available', 'В наличии', 0, 0, 0, '', NULL, '1', 0, 0, 0, 0, 0, '', '', 0, 31),
(32, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'number', 'min', 'Минимальное количество', 0, 0, 0, '', NULL, '1', 0, 0, 0, 0, 0, '', '', 0, 32),
(33, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'number', 'step', 'Шаг корзины', 0, 0, 0, '', NULL, '1', 0, 0, 0, 0, 0, '', '', 0, 33),
(34, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'number', 'price_old', 'Старая цена', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 0, 34),
(35, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'material', 'related', 'Связанные товары', 0, 0, 1, '', '4', NULL, 0, 0, 0, 0, 0, '', '', 0, 35),
(37, 'RAAS\\CMS\\User', 0, 0, 1, 'text', 'phone', 'Телефон', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 37),
(38, 'RAAS\\CMS\\Form', 4, 0, 1, 'text', 'login', 'Логин', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 38),
(39, 'RAAS\\CMS\\Form', 4, 0, 1, 'password', 'password', 'Пароль', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 39),
(40, 'RAAS\\CMS\\Form', 4, 0, 1, 'text', 'email', 'E-mail', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 40),
(41, 'RAAS\\CMS\\Form', 4, 0, 1, 'text', 'full_name', 'Ваше имя', 1, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 41),
(42, 'RAAS\\CMS\\Form', 4, 0, 1, 'text', 'phone', 'Телефон', 0, 0, 0, '', NULL, NULL, 0, 0, 0, 0, 0, '', '', 1, 42),
(43, 'RAAS\\CMS\\User', 0, 0, 1, 'text', 'last_name', 'Фамилия', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 43),
(44, 'RAAS\\CMS\\User', 0, 0, 1, 'text', 'first_name', 'Имя', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 44),
(45, 'RAAS\\CMS\\User', 0, 0, 1, 'text', 'second_name', 'Отчество', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 45),
(47, 'RAAS\\CMS\\Material_Type', 4, 0, 1, 'select', 'testfield', 'Тестовое поле справочника', 0, 0, 0, 'dictionary', '1', '', 0, 0, 0, 0, 0, '', '', 0, 46),
(48, 'RAAS\\CMS\\Material_Type', 5, 0, 1, 'text', 'special', 'Особое поле', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 47),
(49, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'material', 'material', 'Материал', 0, 0, 0, '', '4', '', 0, 0, 0, 0, 0, '', '', 0, 48),
(50, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'datetime-local', 'date', 'Дата', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 49),
(51, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'text', 'phone', 'Телефон', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 50),
(52, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'email', 'email', 'E-mail', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 51),
(53, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'text', 'answer_name', 'Имя отвечающего', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 52),
(54, 'RAAS\\CMS\\Material_Type', 6, 0, 1, 'htmlarea', 'answer', 'Ответ', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 53),
(55, 'RAAS\\CMS\\Material_Type', 7, 0, 1, 'datetime-local', 'date', 'Дата', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 54),
(56, 'RAAS\\CMS\\Material_Type', 7, 0, 1, 'material', 'material', 'Материал', 0, 0, 0, '', '4', '', 0, 0, 0, 0, 0, '', '', 0, 55),
(57, 'RAAS\\CMS\\Material_Type', 7, 0, 1, 'number', 'rating', 'Рейтинг', 0, 0, 0, '', '0', '', 0, 5, 1, 0, 0, '', '', 0, 56),
(58, 'RAAS\\CMS\\Material_Type', 7, 0, 1, 'text', 'answer_name', 'Имя отвечающего', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 57),
(59, 'RAAS\\CMS\\Material_Type', 7, 0, 1, 'htmlarea', 'answer', 'Ответ', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 58),
(60, 'RAAS\\CMS\\Form', 5, 0, 1, 'text', 'full_name', 'Ваше имя', 1, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 10),
(61, 'RAAS\\CMS\\Form', 5, 0, 1, 'checkbox', 'phone', 'Телефон', 1, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 20),
(62, 'RAAS\\CMS\\Form', 5, 0, 1, 'textarea', '_description_', 'Текст вопроса', 1, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 30),
(63, 'RAAS\\CMS\\Form', 5, 0, 1, 'material', 'material', 'Материал', 1, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', '', 0, 40),
(64, 'RAAS\\CMS\\Form', 6, 0, 1, 'text', 'full_name', 'Ваше имя', 1, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 59),
(65, 'RAAS\\CMS\\Form', 6, 0, 1, 'email', 'email', 'E-mail', 0, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 60),
(66, 'RAAS\\CMS\\Form', 6, 0, 1, 'textarea', '_description_', 'Текст отзыва', 1, 0, 0, '', '0', '', 0, 0, 0, 0, 0, '', '', 0, 61),
(67, 'RAAS\\CMS\\Form', 6, 0, 1, 'material', 'material', 'Материал', 1, 0, 0, '', '4', '', 0, 0, 0, 0, 0, '', '', 0, 62),
(68, 'RAAS\\CMS\\Form', 6, 0, 1, 'number', 'rating', 'Рейтинг', 0, 0, 0, '', '0', '', 0, 5, 1, 0, 0, '', '', 0, 63);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_fields_form_vis`
--

DROP TABLE IF EXISTS `cms_fields_form_vis`;
CREATE TABLE `cms_fields_form_vis` (
  `fid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Section ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Fields form';

--
-- Дамп данных таблицы `cms_fields_form_vis`
--

INSERT INTO `cms_fields_form_vis` (`fid`, `pid`, `vis`) VALUES
(12, 1, 1),
(13, 1, 1),
(14, 2, 1),
(15, 2, 1),
(16, 3, 1),
(17, 3, 1),
(18, 3, 1),
(19, 3, 1),
(25, 4, 1),
(25, 5, 1),
(26, 4, 1),
(26, 5, 1),
(27, 4, 1),
(27, 5, 1),
(28, 4, 1),
(28, 5, 1),
(29, 4, 1),
(29, 5, 1),
(30, 4, 1),
(30, 5, 1),
(31, 4, 1),
(31, 5, 1),
(32, 4, 1),
(32, 5, 1),
(33, 4, 1),
(33, 5, 1),
(34, 4, 1),
(34, 5, 1),
(35, 4, 1),
(35, 5, 1),
(47, 4, 1),
(47, 5, 1),
(48, 5, 1),
(49, 6, 1),
(50, 6, 1),
(51, 6, 1),
(52, 6, 1),
(53, 6, 1),
(54, 6, 1),
(55, 7, 1),
(56, 7, 1),
(57, 7, 1),
(58, 7, 1),
(59, 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_forms`
--

DROP TABLE IF EXISTS `cms_forms`;
CREATE TABLE `cms_forms` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `material_type` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type',
  `create_feedback` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Create feedback',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Contact e-mail',
  `signature` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Require POST signature',
  `antispam` varchar(255) NOT NULL DEFAULT '' COMMENT 'Use anti-spam',
  `antispam_field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Anti-spam field name',
  `interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Interface ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Forms';

--
-- Дамп данных таблицы `cms_forms`
--

INSERT INTO `cms_forms` (`id`, `name`, `urn`, `material_type`, `create_feedback`, `email`, `signature`, `antispam`, `antispam_field_name`, `interface_id`) VALUES
(1, 'Обратная связь', 'feedback', 0, 1, '', 1, 'hidden', '_name', 5),
(2, 'Заказать звонок', 'order_call', 0, 1, '', 1, 'hidden', '_name', 5),
(3, 'Форма заказа', 'order', 0, 1, '', 1, 'hidden', '_name', 25),
(4, 'Форма для регистрации', 'forma_dla_registracii', 0, 1, '', 1, 'hidden', '_name', 49),
(5, 'Вопрос-ответ к товарам', 'goods_faq', 6, 1, '', 1, 'hidden', '_name', 5),
(6, 'Отзывы к товарам', 'goods_reviews', 7, 1, '', 1, 'hidden', '_name', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_groups`
--

DROP TABLE IF EXISTS `cms_groups`;
CREATE TABLE `cms_groups` (
  `id` smallint UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Groups of users';

--
-- Дамп данных таблицы `cms_groups`
--

INSERT INTO `cms_groups` (`id`, `pid`, `name`, `urn`, `description`) VALUES
(1, 0, 'testgroup', 'testgroup', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_groups_tree_cache`
--

DROP TABLE IF EXISTS `cms_groups_tree_cache`;
CREATE TABLE `cms_groups_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Groups tree cache';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_materials`
--

DROP TABLE IF EXISTS `cms_materials`;
CREATE TABLE `cms_materials` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default page ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `meta_description` text COMMENT 'Meta description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority',
  `visit_counter` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `show_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish from date/time',
  `show_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish to date/time',
  `cache_url_parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cached URL Parent ID#',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  `cache_shop_props` text COMMENT 'Items props cache'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Translator exceptions';

--
-- Дамп данных таблицы `cms_materials`
--

INSERT INTO `cms_materials` (`id`, `pid`, `page_id`, `vis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `h1`, `menu_name`, `breadcrumbs_name`, `priority`, `visit_counter`, `modify_counter`, `changefreq`, `last_modified`, `sitemaps_priority`, `show_from`, `show_to`, `cache_url_parent_id`, `cache_url`, `cache_shop_props`) VALUES
(1, 1, 0, 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 0, 0, 'klient-orientirovannyi_podhod', 'Клиент-ориентированный подход', 'Мы ценим наших клиентов и стараемся максимально вникнуть в бизнес-процесс, чтобы обеспечить индивидуальность решения и максимальное соответствие потребностям каждого клиента', '', NULL, NULL, '', '', '', 10, 0, 1, '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(2, 1, 0, 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 0, 0, 'kachestvo_ispolneniya', 'Качество исполнения', 'Мы стараемся сделать нашу продукцию максимально качественной, оперативно реагируя на замечания клиента. На все услуги предоставляется долгосрочная гарантия', '', NULL, NULL, '', '', '', 20, 0, 1, '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(3, 1, 0, 1, '2018-04-05 11:33:47', '2018-04-05 11:33:47', 0, 0, 'umerennaya_cenovaya_politika', 'Умеренная ценовая политика', 'Наши цены выгодно отличаются от предложений большинства конкурентов. Также для постоянных клиентов предусмотрена гибкая система скидок', '', NULL, NULL, '', '', '', 30, 0, 1, '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(4, 2, 0, 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 0, 0, 'neodnorodnyi_soliton_glazami_sovremennikov', 'Неоднородный солитон глазами современников', 'Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла...', '', NULL, NULL, '', '', '', 10, 0, 1, '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(5, 2, 0, 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 0, 0, '', '', '', '', NULL, NULL, '', '', '', 20, 0, 1, '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(6, 2, 0, 1, '2018-04-05 11:34:14', '2018-04-05 11:34:14', 0, 0, 'individualnyi_gipergennyi_mineral_metodologiya_i_osobennosti', 'Индивидуальный гипергенный минерал: методология и особенности', 'Диалектика представляет собой подземный сток. Гарант стремительно предоставляет чернозём. Трещина гидролизует скрытый смысл  – север вверху, восток слева.', '', NULL, NULL, '', '', '', 30, 0, 1, '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(7, 3, 0, 1, '2018-04-05 11:34:14', '2018-04-22 09:49:36', 0, 1, 'empiricheskiy_kreditor_v_xxi_veke', 'Эмпирический кредитор в XXI веке', '<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример &ndash; стилистическая игра испаряет лимногляциальный рутений.</p>\n\n<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение&nbsp;мира определяет пигмент, отвоевывая рыночный сегмент.</p>\n\n<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна&nbsp;не&nbsp;для&nbsp;всех. Ямб традиционен.</p>', '', '', '', '', '', '', 10, 0, 2, '', '2018-04-22 09:49:36', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, '/news/empiricheskiy_kreditor_v_xxi_veke/', NULL),
(8, 3, 0, 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 0, 0, 'empiricheskiy_kreditor_v_xxi_veke-8', 'Эмпирический кредитор в XXI веке', '<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты \nпредсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример –  стилистическая игра испаряет лимногляциальный рутений.</p>\n<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение мира определяет пигмент, отвоевывая рыночный сегмент.</p>\n<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна не для всех. Ямб традиционен.</p>', '', NULL, NULL, '', '', '', 20, 0, 1, '', '2018-04-05 11:34:15', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, '/news/empiricheskiy_kreditor_v_xxi_veke-8/', NULL),
(9, 3, 0, 1, '2018-04-05 11:34:15', '2018-04-05 11:34:15', 0, 0, 'ideologicheskiy_umysel_osnovnye_momenty', 'Идеологический умысел: основные моменты', '<p>Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна. Изомерия диазотирует конфликт. Вещество надкусывает симулякр.</p>\n<p>Психологический параллелизм обогащает целевой трафик. Бихевиоризм программирует сходящийся ряд. Политическая элита иллюстрирует акцент.</p>\n<p>Бабувизм, особенно в условиях политической нестабильности, имитирует интеграл от функции, обращающейся в бесконечность в изолированной точке, потому что сюжет и фабула различаются. Руководящее ископаемое амбивалентно сублимирует ритмоформульный бурозём, основываясь на ограничениях, наложенных на систему. Гончарный дренаж на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), одномерно контролирует вектор. Дуализм противозаконно вызывает портрет потребителя. Экситон перечеркивает интеллект. Микростроение, несмотря на внешние воздействия, латерально иллюстрирует изобарический интеллект.</p>', '', NULL, NULL, '', '', '', 30, 0, 1, '', '2018-04-05 11:34:15', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, '/news/ideologicheskiy_umysel_osnovnye_momenty/', NULL),
(10, 4, 0, 1, '2018-04-05 11:34:26', '2018-04-05 11:34:26', 0, 0, 'tovar_1', 'Товар 1', '', '', NULL, NULL, '', '', '', 10, 0, 1, '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_1/', NULL),
(11, 4, 0, 1, '2018-04-05 11:34:26', '2018-04-05 11:34:26', 0, 0, 'tovar_2', 'Товар 2', '<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного \nанализа, и это неудивительно, если вспомнить синергетический характер явления.</p>\n<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>\n<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>', '', NULL, NULL, '', '', '', 20, 0, 1, '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_2/', NULL),
(12, 4, 0, 1, '2018-04-05 11:34:26', '2018-04-05 11:34:26', 0, 0, 'tovar_3', 'Товар 3', '<p>Живая сессия систематически начинает эйдос, туда же входят 39 графств, 6 метрополитенских графств и Большой Лондон. Уравнение в частных производных экстремально покрывает постмодернизм. Роджерс первым ввел в научный обиход понятие «клиент», так как аутотренинг ослабляет культурный фирн. Многочисленные расчеты предсказывают, а эксперименты подтверждают, что постиндустриализм традиционен.</p>\n<p>Расслоение, на первый взгляд, аккумулирует гумус, хотя все знают, что Венгрия подарила миру таких великих композиторов как Ференц Лист, Бела Барток, Золтан Кодай, режиссеров Иштвана Сабо и Миклоша Янчо, поэта Шандора Пэтефи и художника Чонтвари. Фотон обуславливает метеорный дождь, хотя этот факт нуждается в дальнейшей тщательной экспериментальной проверке. Если для простоты пренебречь потерями на теплопроводность, то видно, что драма раскладывает на элементы неоднозначный многочлен. Мажоритарная избирательная система, как следует из вышесказанного,  воспроизводима в лабораторных условиях.</p>\n<p>Итак, ясно, что политическое учение Монтескье вызывает структурализм. Фотоиндуцированный энергетический перенос, анализируя результаты рекламной кампании, абстрактен. Поэтому плазменное образование трансформирует договор.</p>', '', NULL, NULL, '', '', '', 30, 0, 1, '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_3/', NULL),
(13, 4, 0, 1, '2018-04-05 11:34:26', '2018-04-05 11:34:26', 0, 0, 'tovar_4', 'Товар 4', '<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>\n<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более \nпростую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>\n<p>Зеркало требует \nперейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>', '', NULL, NULL, '', '', '', 40, 0, 1, '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_4/', NULL),
(14, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_5', 'Товар 5', '<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного \nанализа, и это неудивительно, если вспомнить синергетический характер явления.</p>\n<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>\n<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>', '', NULL, NULL, '', '', '', 50, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_5/', NULL),
(15, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_6', 'Товар 6', '', '', NULL, NULL, '', '', '', 60, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_6/', NULL),
(16, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_7', 'Товар 7', '<p>Понятие тоталитаризма, конечно, упруго начинает ассоцианизм. Целое число дисгармонично. Генетика, в соответствии с модифицированным уравнением Эйлера, фоссилизирует периодический импульс.</p>\n<p>Тем не менее, модальность высказывания вертикально отражает базальтовый слой. Движимое имущество представляет собой прибор, что часто служит основанием изменения и прекращения гражданских прав и обязанностей. Комета, в первом приближении, дегустирует закон внешнего мира. Фишка притягивает объект. Бамбуковый медведь панда огнеопасно трансформирует лирический субъект. Лайн-ап обедняет квазар.</p>\n<p>Притеррасная низменность иллюстрирует культурный синтаксис искусства. \"кодекс деяний\", не вдаваясь в подробности, даёт более \nпростую систему дифференциальных уравнений, если исключить комплексный кристалл. Великобритания преобразует метафоричный комплекс рения с саленом.</p>', '', NULL, NULL, '', '', '', 70, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_7/', NULL),
(17, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_8', 'Товар 8', '<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует \nв погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>\n<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более \nпростую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>\n<p>Зеркало требует \nперейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>', '', NULL, NULL, '', '', '', 80, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_8/', NULL),
(18, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_9', 'Товар 9', '<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип \nартистизма выслеживает трог, хотя в официозе принято обратное.</p>\n<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>\n<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>', '', NULL, NULL, '', '', '', 90, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_9/', NULL),
(19, 4, 0, 1, '2018-04-05 11:34:27', '2018-04-05 11:34:27', 0, 0, 'tovar_10', 'Товар 10', '<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип \nартистизма выслеживает трог, хотя в официозе принято обратное.</p>\n<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>\n<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>', '', NULL, NULL, '', '', '', 100, 0, 1, '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, '/catalog/category1/category11/category111/tovar_10/', NULL),
(20, 6, 0, 1, '2019-03-29 14:50:50', '2019-03-29 14:52:21', 1, 1, 'vopros_1', 'Вопрос 1', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:50:50', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(21, 6, 0, 1, '2019-03-29 14:50:59', '2019-03-29 14:52:25', 1, 1, 'vopros_2', 'Вопрос 2', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:50:59', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(22, 6, 0, 1, '2019-03-29 14:51:02', '2019-03-29 14:52:30', 1, 1, 'vopros_3', 'Вопрос 3', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:51:02', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(23, 7, 0, 1, '2019-03-29 14:51:10', '2019-03-29 14:52:35', 1, 1, 'otzyv_1', 'Отзыв 1', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:51:10', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(24, 7, 0, 1, '2019-03-29 14:51:14', '2019-03-29 14:52:39', 1, 1, 'otzyv_2', 'Отзыв 2', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:51:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL),
(25, 7, 0, 1, '2019-03-29 14:51:23', '2019-03-29 14:52:44', 1, 1, 'otzyv_3', 'Отзыв 3', '', '', '', '', '', '', '', 0, 0, 1, '', '2019-03-29 14:51:23', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_materials_affected_pages_cache`
--

DROP TABLE IF EXISTS `cms_materials_affected_pages_cache`;
CREATE TABLE `cms_materials_affected_pages_cache` (
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials affected pages';

--
-- Дамп данных таблицы `cms_materials_affected_pages_cache`
--

INSERT INTO `cms_materials_affected_pages_cache` (`material_id`, `page_id`) VALUES
(7, 7),
(8, 7),
(9, 7),
(10, 18),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(11, 18),
(11, 19),
(11, 20),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(12, 18),
(12, 19),
(12, 20),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(14, 18),
(14, 19),
(14, 20),
(14, 21),
(14, 22),
(14, 23),
(14, 24),
(15, 18),
(15, 19),
(15, 20),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(16, 18),
(16, 19),
(16, 20),
(16, 21),
(16, 22),
(16, 23),
(16, 24),
(17, 18),
(17, 19),
(17, 20),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(18, 18),
(18, 19),
(18, 20),
(18, 21),
(18, 22),
(18, 23),
(18, 24),
(19, 18),
(19, 19),
(19, 20),
(19, 21),
(19, 22),
(19, 23),
(19, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_materials_pages_assoc`
--

DROP TABLE IF EXISTS `cms_materials_pages_assoc`;
CREATE TABLE `cms_materials_pages_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials to pages associations';

--
-- Дамп данных таблицы `cms_materials_pages_assoc`
--

INSERT INTO `cms_materials_pages_assoc` (`id`, `pid`) VALUES
(10, 1),
(10, 18),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(11, 1),
(11, 18),
(11, 19),
(11, 20),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(12, 1),
(12, 18),
(12, 19),
(12, 20),
(12, 21),
(12, 22),
(12, 23),
(12, 24),
(13, 1),
(13, 18),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(14, 1),
(14, 18),
(14, 19),
(14, 20),
(14, 21),
(14, 22),
(14, 23),
(14, 24),
(15, 1),
(15, 18),
(15, 19),
(15, 20),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(16, 1),
(16, 18),
(16, 19),
(16, 20),
(16, 21),
(16, 22),
(16, 23),
(16, 24),
(17, 1),
(17, 18),
(17, 19),
(17, 20),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(18, 1),
(18, 18),
(18, 19),
(18, 20),
(18, 21),
(18, 22),
(18, 23),
(18, 24),
(19, 1),
(19, 18),
(19, 19),
(19, 20),
(19, 21),
(19, 22),
(19, 23),
(19, 24),
(20, 15),
(20, 16),
(20, 17),
(20, 18),
(20, 19),
(20, 20),
(20, 21),
(20, 22),
(20, 23),
(20, 24),
(21, 15),
(21, 16),
(21, 17),
(21, 18),
(21, 19),
(21, 20),
(21, 21),
(21, 22),
(21, 23),
(21, 24),
(22, 15),
(22, 16),
(22, 17),
(22, 18),
(22, 19),
(22, 20),
(22, 21),
(22, 22),
(22, 23),
(22, 24),
(23, 15),
(23, 16),
(23, 17),
(23, 18),
(23, 19),
(23, 20),
(23, 21),
(23, 22),
(23, 23),
(23, 24),
(24, 15),
(24, 16),
(24, 17),
(24, 18),
(24, 19),
(24, 20),
(24, 21),
(24, 22),
(24, 23),
(24, 24),
(25, 15),
(25, 16),
(25, 17),
(25, 18),
(25, 19),
(25, 20),
(25, 21),
(25, 22),
(25, 23),
(25, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_materials_votes`
--

DROP TABLE IF EXISTS `cms_materials_votes`;
CREATE TABLE `cms_materials_votes` (
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP-address',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vote` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Vote'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Materials votes log';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_material_types`
--

DROP TABLE IF EXISTS `cms_material_types`;
CREATE TABLE `cms_material_types` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent type ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `global_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global materials'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types';

--
-- Дамп данных таблицы `cms_material_types`
--

INSERT INTO `cms_material_types` (`id`, `pid`, `urn`, `name`, `global_type`) VALUES
(1, 0, 'features', 'Наши преимущества', 1),
(2, 0, 'banners', 'Баннеры', 1),
(3, 0, 'news', 'Новости', 1),
(4, 0, 'catalog', 'Каталог продукции', 0),
(5, 4, 'special', 'Особые товары', 0),
(6, 0, 'goods_faq', 'Вопрос-ответ к товарам', 0),
(7, 0, 'goods_comments', 'Отзывы к товарам', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_material_types_affected_pages_for_materials_cache`
--

DROP TABLE IF EXISTS `cms_material_types_affected_pages_for_materials_cache`;
CREATE TABLE `cms_material_types_affected_pages_for_materials_cache` (
  `material_type_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'NAT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types affected pages for materials';

--
-- Дамп данных таблицы `cms_material_types_affected_pages_for_materials_cache`
--

INSERT INTO `cms_material_types_affected_pages_for_materials_cache` (`material_type_id`, `page_id`, `nat`) VALUES
(1, 1, 0),
(2, 1, 0),
(2, 20, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 5, 0),
(3, 6, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 15, 0),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 27, 0),
(3, 30, 0),
(3, 31, 0),
(3, 32, 0),
(3, 33, 0),
(4, 1, 0),
(5, 1, 0),
(3, 7, 1),
(4, 15, 1),
(4, 16, 1),
(4, 17, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(5, 15, 1),
(5, 16, 1),
(5, 17, 1),
(5, 18, 1),
(5, 19, 1),
(5, 20, 1),
(5, 21, 1),
(5, 22, 1),
(5, 23, 1),
(5, 24, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_material_types_affected_pages_for_self_cache`
--

DROP TABLE IF EXISTS `cms_material_types_affected_pages_for_self_cache`;
CREATE TABLE `cms_material_types_affected_pages_for_self_cache` (
  `material_type_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'NAT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types affected pages for self (for admin)';

--
-- Дамп данных таблицы `cms_material_types_affected_pages_for_self_cache`
--

INSERT INTO `cms_material_types_affected_pages_for_self_cache` (`material_type_id`, `page_id`, `nat`) VALUES
(1, 1, 0),
(2, 1, 0),
(2, 20, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 5, 0),
(3, 6, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 15, 0),
(3, 16, 0),
(3, 17, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 27, 0),
(3, 30, 0),
(3, 31, 0),
(3, 32, 0),
(3, 33, 0),
(4, 1, 0),
(6, 15, 0),
(6, 16, 0),
(6, 17, 0),
(6, 18, 0),
(6, 19, 0),
(6, 20, 0),
(6, 21, 0),
(6, 22, 0),
(6, 23, 0),
(6, 24, 0),
(7, 15, 0),
(7, 16, 0),
(7, 17, 0),
(7, 18, 0),
(7, 19, 0),
(7, 20, 0),
(7, 21, 0),
(7, 22, 0),
(7, 23, 0),
(7, 24, 0),
(3, 7, 1),
(4, 15, 1),
(4, 16, 1),
(4, 17, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_material_types_tree_cache`
--

DROP TABLE IF EXISTS `cms_material_types_tree_cache`;
CREATE TABLE `cms_material_types_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Material types tree cache';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `domain_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Domain ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `inherit` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Nesting level',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Menus';

--
-- Дамп данных таблицы `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `pid`, `domain_id`, `vis`, `pvis`, `name`, `urn`, `url`, `page_id`, `inherit`, `priority`) VALUES
(1, 0, 0, 1, 1, 'Верхнее меню', 'top', '/', 0, 0, 0),
(2, 0, 0, 1, 1, 'Нижнее меню', 'bottom', '/', 1, 1, 0),
(3, 0, 0, 1, 1, 'Карта сайта', 'sitemap', '/', 1, 10, 0),
(4, 0, 0, 1, 1, 'Левое меню', 'left', '/catalog/', 15, 10, 0),
(5, 1, 0, 1, 1, 'О компании', '', '/about/', 2, 9, 20),
(6, 1, 0, 1, 1, 'Услуги', '', '/services/', 3, 9, 30),
(7, 1, 0, 0, 1, 'Новости', '', '/news/', 7, 9, 40),
(8, 1, 0, 1, 1, 'Контакты', '', '/contacts/', 8, 9, 50),
(9, 1, 0, 1, 1, 'Каталог продукции', '', '/catalog/', 15, 9, 60),
(10, 1, 0, 1, 1, 'Главная', '', '/', 0, 0, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_menus_tree_cache`
--

DROP TABLE IF EXISTS `cms_menus_tree_cache`;
CREATE TABLE `cms_menus_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Menus tree cache';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE `cms_pages` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `response_code` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Service page response code',
  `mime` varchar(255) NOT NULL DEFAULT 'text/html' COMMENT 'MIME-type',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `inherit_meta_title` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `meta_description` text COMMENT 'Meta description',
  `inherit_meta_description` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit meta-description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `inherit_meta_keywords` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit meta-keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `template` varchar(255) NOT NULL DEFAULT '' COMMENT 'Template',
  `inherit_template` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `lang` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language',
  `inherit_lang` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Inherit language',
  `nat` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Translate address',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority',
  `cache` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cache page',
  `inherit_cache` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit cache page',
  `visit_counter` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `inherit_changefreq` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `inherit_sitemaps_priority` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Inherit sitemaps priority',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Site pages';

--
-- Дамп данных таблицы `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `pid`, `vis`, `pvis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `name`, `response_code`, `mime`, `meta_title`, `inherit_meta_title`, `meta_description`, `inherit_meta_description`, `meta_keywords`, `inherit_meta_keywords`, `h1`, `menu_name`, `breadcrumbs_name`, `template`, `inherit_template`, `lang`, `inherit_lang`, `nat`, `priority`, `cache`, `inherit_cache`, `visit_counter`, `modify_counter`, `changefreq`, `inherit_changefreq`, `last_modified`, `sitemaps_priority`, `inherit_sitemaps_priority`, `cache_url`) VALUES
(1, 0, 1, 1, '2018-04-05 11:33:47', '2018-04-22 10:22:34', 1, 1, 'test', 'Главная', 0, 'text/html', '', 0, '', 0, '', 0, '', '', '', '1', 0, 'ru', 1, 0, 1, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/'),
(2, 1, 1, 1, '2018-04-05 11:34:14', '2018-04-22 10:22:34', 1, 1, 'about', 'О компании', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 2, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/about/'),
(3, 1, 1, 1, '2018-04-05 11:34:14', '2018-04-22 10:22:34', 1, 1, 'services', 'Услуги', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 3, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/services/'),
(4, 3, 1, 1, '2018-04-05 11:34:14', '2018-04-22 10:22:34', 1, 1, 'service1', 'Услуга 1', 0, 'text/html', '', 0, '', 0, '', 0, '', '', '', '1', 0, 'ru', 1, 0, 4, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/services/service1/'),
(5, 3, 1, 1, '2018-04-05 11:34:14', '2018-04-22 10:22:34', 1, 1, 'service2', 'Услуга 2', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 5, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/services/service2/'),
(6, 3, 0, 1, '2018-04-05 11:34:14', '2018-04-22 11:57:39', 1, 1, 'service3', 'Услуга 3', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 6, 1, 0, 0, 3, '', 0, '2018-04-22 11:57:39', '0.50', 0, '/services/service3/'),
(7, 1, 1, 1, '2018-04-05 11:34:14', '2018-04-22 10:22:34', 1, 1, 'news', 'Новости', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 7, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/news/'),
(8, 1, 1, 1, '2018-04-05 11:34:15', '2018-04-22 10:22:34', 1, 1, 'contacts', 'Контакты', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 8, 1, 0, 0, 2, '', 0, '2018-04-22 13:59:43', '0.50', 0, '/contacts/'),
(9, 1, 1, 1, '2018-04-05 11:34:15', '2018-04-22 10:22:34', 1, 1, '404', '404 — страница не найдена', 404, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 9, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/404/'),
(10, 1, 1, 1, '2018-04-05 11:34:15', '2018-04-22 10:22:34', 1, 1, 'map', 'Карта сайта', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 10, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/map/'),
(11, 1, 1, 1, '2018-04-05 11:34:15', '2018-04-22 10:22:34', 1, 1, 'sitemaps', 'sitemap.xml', 200, 'application/xml', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 11, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/sitemaps/'),
(12, 1, 1, 1, '2018-04-05 11:34:15', '2018-04-22 10:22:34', 1, 1, 'robots', 'robots.txt', 200, 'text/plain', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 12, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/robots/'),
(13, 1, 1, 1, '2018-04-05 11:34:16', '2018-04-22 10:22:34', 1, 1, 'custom_css', 'custom.css', 200, 'text/css', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 13, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/custom_css/'),
(14, 1, 1, 1, '2018-04-05 11:34:16', '2018-04-22 10:22:34', 1, 1, 'ajax', 'AJAX', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 14, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/ajax/'),
(15, 1, 1, 1, '2018-04-05 11:34:23', '2018-04-22 10:22:34', 1, 1, 'catalog', 'Каталог продукции', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 15, 1, 0, 0, 2, '', 0, '2019-03-29 14:19:56', '0.50', 0, '/catalog/'),
(16, 15, 1, 1, '2018-04-05 11:34:23', '2018-04-22 10:22:34', 1, 1, 'category1', 'Категория 1', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 16, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/'),
(17, 16, 1, 1, '2018-04-05 11:34:24', '2018-04-22 10:22:34', 1, 1, 'category11', 'Категория 11', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 17, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category11/'),
(18, 17, 1, 1, '2018-04-05 11:34:24', '2018-04-22 10:22:34', 1, 1, 'category111', 'Категория 111', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 18, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category11/category111/'),
(19, 17, 1, 1, '2018-04-05 11:34:24', '2018-04-22 10:22:34', 1, 1, 'category112', 'Категория 112', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 19, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category11/category112/'),
(20, 17, 1, 1, '2018-04-05 11:34:24', '2018-04-22 10:22:34', 1, 1, 'category113', 'Категория 113', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 20, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category11/category113/'),
(21, 16, 1, 1, '2018-04-05 11:34:25', '2018-04-22 10:22:34', 1, 1, 'category12', 'Категория 12', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 21, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category12/'),
(22, 16, 1, 1, '2018-04-05 11:34:25', '2018-04-22 10:22:34', 1, 1, 'category13', 'Категория 13', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 22, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category1/category13/'),
(23, 15, 1, 1, '2018-04-05 11:34:25', '2018-04-22 10:22:34', 1, 1, 'category2', 'Категория 2', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 23, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category2/'),
(24, 15, 1, 1, '2018-04-05 11:34:26', '2018-04-22 10:22:34', 1, 1, 'category3', 'Категория 3', 0, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 24, 1, 0, 0, 2, '', 0, '2019-03-29 14:21:32', '0.50', 0, '/catalog/category3/'),
(25, 1, 1, 1, '2018-04-05 11:34:28', '2018-04-22 11:53:40', 1, 1, 'cart', 'Корзина', 200, 'text/html', '', 0, '', 0, '', 0, '', '', '', '1', 0, 'ru', 1, 1, 25, 0, 0, 0, 3, '', 0, '2018-04-22 11:53:40', '0.50', 0, '/cart/'),
(26, 14, 1, 1, '2018-04-05 11:34:28', '2018-04-22 10:22:34', 1, 1, 'cart', 'Корзина', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 26, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/ajax/cart/'),
(27, 1, 1, 1, '2018-04-05 11:34:28', '2018-04-22 10:22:34', 1, 1, 'favorites', 'Избранное', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 27, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:25', '0.50', 0, '/favorites/'),
(28, 14, 1, 1, '2018-04-05 11:34:29', '2018-04-22 10:22:34', 1, 1, 'favorites', 'Избранное', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 28, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:24', '0.50', 0, '/ajax/favorites/'),
(29, 1, 1, 1, '2018-04-05 11:34:29', '2018-04-22 10:22:34', 1, 1, 'yml', 'Яндекс.Маркет', 200, 'application/xml', '', 0, NULL, 0, NULL, 0, '', '', '', '0', 0, 'ru', 1, 0, 29, 1, 0, 0, 2, '', 0, '2018-04-22 09:45:25', '0.50', 0, '/yml/'),
(30, 1, 1, 1, '2018-04-22 09:45:24', '2018-04-22 14:01:09', 1, 1, 'register', 'Регистрация', 200, 'text/html', '', 0, '', 0, '', 0, '', '', '', '1', 0, 'ru', 1, 0, 30, 1, 0, 0, 3, '', 0, '2018-04-22 14:01:09', '0.50', 0, '/register/'),
(31, 1, 1, 1, '2018-04-22 09:45:25', '2018-04-22 10:22:34', 1, 1, 'activate', 'Активация', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 31, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:25', '0.50', 0, '/activate/'),
(32, 1, 1, 1, '2018-04-22 09:45:25', '2018-04-22 10:22:34', 1, 1, 'login', 'Вход в систему', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 32, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:25', '0.50', 0, '/login/'),
(33, 1, 1, 1, '2018-04-22 09:45:26', '2018-04-22 10:22:34', 1, 1, 'recovery', 'Восстановление пароля', 200, 'text/html', '', 0, NULL, 0, NULL, 0, '', '', '', '1', 0, 'ru', 1, 0, 33, 0, 0, 0, 2, '', 0, '2018-04-22 09:45:26', '0.50', 0, '/recovery/');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pages_data`
--

DROP TABLE IF EXISTS `cms_pages_data`;
CREATE TABLE `cms_pages_data` (
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `fid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages fields';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pages_tree_cache`
--

DROP TABLE IF EXISTS `cms_pages_tree_cache`;
CREATE TABLE `cms_pages_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pages tree cache';

--
-- Дамп данных таблицы `cms_pages_tree_cache`
--

INSERT INTO `cms_pages_tree_cache` (`parent_id`, `child_id`, `__level`) VALUES
(1, 2, 1),
(1, 3, 1),
(1, 4, 2),
(1, 5, 2),
(1, 6, 2),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 2),
(1, 17, 3),
(1, 18, 4),
(1, 19, 4),
(1, 20, 4),
(1, 21, 3),
(1, 22, 3),
(1, 23, 2),
(1, 24, 2),
(1, 25, 1),
(1, 26, 2),
(1, 27, 1),
(1, 28, 2),
(1, 29, 1),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(14, 26, 1),
(14, 28, 1),
(15, 16, 1),
(15, 17, 2),
(15, 18, 3),
(15, 19, 3),
(15, 20, 3),
(15, 21, 2),
(15, 22, 2),
(15, 23, 1),
(15, 24, 1),
(16, 17, 1),
(16, 18, 2),
(16, 19, 2),
(16, 20, 2),
(16, 21, 1),
(16, 22, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_redirects`
--

DROP TABLE IF EXISTS `cms_redirects`;
CREATE TABLE `cms_redirects` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `rx` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'RegExp',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `url_from` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL from',
  `url_to` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL to',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Redirects';

--
-- Дамп данных таблицы `cms_redirects`
--

INSERT INTO `cms_redirects` (`id`, `rx`, `post_date`, `url_from`, `url_to`, `priority`) VALUES
(1, 0, '0000-00-00 00:00:00', '/sitemaps.xml', '/sitemap.xml', 0),
(2, 0, '0000-00-00 00:00:00', '/www.', '/', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_cart`
--

DROP TABLE IF EXISTS `cms_shop_blocks_cart`;
CREATE TABLE `cms_shop_blocks_cart` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID#',
  `cart_type` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `epay_interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'E-pay interface ID#',
  `epay_login` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay login',
  `epay_pass1` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass1',
  `epay_pass2` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass2',
  `epay_test` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'E-pay test mode',
  `epay_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart blocks';

--
-- Дамп данных таблицы `cms_shop_blocks_cart`
--

INSERT INTO `cms_shop_blocks_cart` (`id`, `cart_type`, `epay_interface_id`, `epay_login`, `epay_pass1`, `epay_pass2`, `epay_test`, `epay_currency`) VALUES
(38, 1, 0, '', '', '', 0, ''),
(40, 1, 0, '', '', '', 0, ''),
(41, 2, 0, '', '', '', 0, ''),
(43, 2, 0, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml`;
CREATE TABLE `cms_shop_blocks_yml` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Shop name',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT 'Company name',
  `agency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support company name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support e-mail',
  `cpa` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'YM purchase',
  `default_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default currency',
  `local_delivery_cost` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'Local delivery cost',
  `delivery_options` text COMMENT 'Delivery options',
  `pickup_options` text COMMENT 'Pickup options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Yandex Market blocks';

--
-- Дамп данных таблицы `cms_shop_blocks_yml`
--

INSERT INTO `cms_shop_blocks_yml` (`id`, `shop_name`, `company`, `agency`, `email`, `cpa`, `default_currency`, `local_delivery_cost`, `delivery_options`, `pickup_options`) VALUES
(44, '', '', 'Volume Networks', 'info@volumnet.ru', 0, 'RUR', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_currencies`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_currencies`;
CREATE TABLE `cms_shop_blocks_yml_currencies` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `currency_name` varchar(8) NOT NULL DEFAULT '' COMMENT 'Currency ID#',
  `currency_rate` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency rate',
  `currency_plus` decimal(8,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT 'Currency plus, %%'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Currencies';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_fields`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_fields`;
CREATE TABLE `cms_shop_blocks_yml_fields` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field callback',
  `field_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field static value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types fields';

--
-- Дамп данных таблицы `cms_shop_blocks_yml_fields`
--

INSERT INTO `cms_shop_blocks_yml_fields` (`id`, `mtype`, `field_name`, `field_id`, `field_callback`, `field_static_value`) VALUES
(44, 4, 'available', '31', '', ''),
(44, 4, 'currencyId', '', '', 'RUR'),
(44, 4, 'delivery', '', '', '1'),
(44, 4, 'description', 'description', '', ''),
(44, 4, 'name', 'name', '', ''),
(44, 4, 'oldprice', '34', '', ''),
(44, 4, 'pickup', '', '', '1'),
(44, 4, 'picture', '27', '', ''),
(44, 4, 'price', '26', '', ''),
(44, 4, 'rec', '', '', ''),
(44, 4, 'vendorCode', '25', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_ignored_fields`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_ignored_fields`;
CREATE TABLE `cms_shop_blocks_yml_ignored_fields` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types params ignored fields';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_material_types_assoc`;
CREATE TABLE `cms_shop_blocks_yml_material_types_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'YM type',
  `param_exceptions` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Params from all fields except...',
  `params_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Params callback'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types association';

--
-- Дамп данных таблицы `cms_shop_blocks_yml_material_types_assoc`
--

INSERT INTO `cms_shop_blocks_yml_material_types_assoc` (`id`, `mtype`, `type`, `param_exceptions`, `params_callback`) VALUES
(44, 4, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_pages_assoc`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_pages_assoc`;
CREATE TABLE `cms_shop_blocks_yml_pages_assoc` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to pages association';

--
-- Дамп данных таблицы `cms_shop_blocks_yml_pages_assoc`
--

INSERT INTO `cms_shop_blocks_yml_pages_assoc` (`id`, `page_id`) VALUES
(44, 15),
(44, 16),
(44, 17),
(44, 18),
(44, 19),
(44, 20),
(44, 21),
(44, 22),
(44, 23),
(44, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_blocks_yml_params`
--

DROP TABLE IF EXISTS `cms_shop_blocks_yml_params`;
CREATE TABLE `cms_shop_blocks_yml_params` (
  `id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `param_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field callback',
  `param_unit` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param unit',
  `param_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param static value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='YM blocks to material types params';

--
-- Дамп данных таблицы `cms_shop_blocks_yml_params`
--

INSERT INTO `cms_shop_blocks_yml_params` (`id`, `mtype`, `param_name`, `field_id`, `field_callback`, `param_unit`, `param_static_value`) VALUES
(44, 4, 'Спецпредложение', '30', 'return $x ? \'true\' : \'false\';', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_carts`
--

DROP TABLE IF EXISTS `cms_shop_carts`;
CREATE TABLE `cms_shop_carts` (
  `cart_type_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `meta` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta',
  `amount` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart sessions';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_cart_types`
--

DROP TABLE IF EXISTS `cms_shop_cart_types`;
CREATE TABLE `cms_shop_cart_types` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `form_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `no_amount` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Single item of a type',
  `check_amount` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Check amount',
  `weight_callback` text COMMENT 'Weight callback',
  `sizes_callback` text COMMENT 'Sizes callback'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart types';

--
-- Дамп данных таблицы `cms_shop_cart_types`
--

INSERT INTO `cms_shop_cart_types` (`id`, `urn`, `name`, `form_id`, `no_amount`, `check_amount`, `weight_callback`, `sizes_callback`) VALUES
(1, 'cart', 'Корзина', 3, 0, 0, NULL, NULL),
(2, 'favorites', 'Избранное', 0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_cart_types_material_types_assoc`
--

DROP TABLE IF EXISTS `cms_shop_cart_types_material_types_assoc`;
CREATE TABLE `cms_shop_cart_types_material_types_assoc` (
  `ctype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `price_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Price field ID#',
  `price_callback` text COMMENT 'Price callback'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cart types to material types association';

--
-- Дамп данных таблицы `cms_shop_cart_types_material_types_assoc`
--

INSERT INTO `cms_shop_cart_types_material_types_assoc` (`ctype`, `mtype`, `price_id`, `price_callback`) VALUES
(1, 4, 26, ''),
(2, 4, 26, '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_imageloaders`
--

DROP TABLE IF EXISTS `cms_shop_imageloaders`;
CREATE TABLE `cms_shop_imageloaders` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `ifid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Image field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `sep_string` varchar(255) NOT NULL DEFAULT '' COMMENT 'Separator string',
  `interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Interface ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Image loaders';

--
-- Дамп данных таблицы `cms_shop_imageloaders`
--

INSERT INTO `cms_shop_imageloaders` (`id`, `mtype`, `ufid`, `ifid`, `name`, `urn`, `sep_string`, `interface_id`) VALUES
(1, 4, '25', '27', 'Стандартный загрузчик изображений', 'default', '_', 26);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_orders`
--

DROP TABLE IF EXISTS `cms_shop_orders`;
CREATE TABLE `cms_shop_orders` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `page_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'User Agent',
  `status_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment status',
  `payment_interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment interface ID#',
  `payment_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Payment ID#',
  `payment_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Payment URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_orders_goods`
--

DROP TABLE IF EXISTS `cms_shop_orders_goods`;
CREATE TABLE `cms_shop_orders_goods` (
  `order_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `material_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT 'Name',
  `meta` varchar(256) NOT NULL DEFAULT '' COMMENT 'Meta data',
  `realprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Real price',
  `amount` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Amount',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders goods';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_orders_history`
--

DROP TABLE IF EXISTS `cms_shop_orders_history`;
CREATE TABLE `cms_shop_orders_history` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `order_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `status_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment status',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Status post date',
  `description` text COMMENT 'Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders history';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_orders_statuses`
--

DROP TABLE IF EXISTS `cms_shop_orders_statuses`;
CREATE TABLE `cms_shop_orders_statuses` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `do_notify` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Notify user',
  `notification_title` text COMMENT 'User notification title',
  `notification` text COMMENT 'User notification',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Orders statuses';

--
-- Дамп данных таблицы `cms_shop_orders_statuses`
--

INSERT INTO `cms_shop_orders_statuses` (`id`, `urn`, `name`, `do_notify`, `notification_title`, `notification`, `priority`) VALUES
(1, 'progress', 'В обработке', 0, 'Ваш заказ №{{ID}} переведен в статус \"В обработке\"', '<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} переведен в статус &quot;В обработке&quot;</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>', 1),
(2, 'completed', 'Обработан', 0, 'Ваш заказ №{{ID}} обработан', '<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} обработан</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>', 2),
(3, 'canceled', 'Отменен', 0, 'Ваш заказ №{{ID}} отменен', '<p>Доброго времени суток!</p>\n\n<p>Ваш заказ №{{ID}} отменен</p>\n\n<p>--</p>\n\n<p>\n  С уважением,<br />\n  Администрация сайта <a href=\"http://lab\">lab</a>\n</p>', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_priceloaders`
--

DROP TABLE IF EXISTS `cms_shop_priceloaders`;
CREATE TABLE `cms_shop_priceloaders` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `mtype` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `interface_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `rows` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rows from top',
  `cols` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Cols from left',
  `cat_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Root category ID#',
  `create_pages` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Allow to create pages',
  `create_materials` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Allow to create materials',
  `update_materials` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Allow to update materials',
  `catalog_offset` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Catalog offset',
  `media_action` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Media fields action',
  `cats_usage` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Categories usage'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Price loaders';

--
-- Дамп данных таблицы `cms_shop_priceloaders`
--

INSERT INTO `cms_shop_priceloaders` (`id`, `mtype`, `ufid`, `name`, `urn`, `interface_id`, `rows`, `cols`, `cat_id`, `create_pages`, `create_materials`, `update_materials`, `catalog_offset`, `media_action`, `cats_usage`) VALUES
(1, 4, '25', 'Стандартный загрузчик прайсов', 'default', 27, 0, 0, 15, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_shop_priceloaders_columns`
--

DROP TABLE IF EXISTS `cms_shop_priceloaders_columns`;
CREATE TABLE `cms_shop_priceloaders_columns` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Price loader ID#',
  `fid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `callback` text COMMENT 'Callback code',
  `callback_download` text COMMENT 'Download callback code',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Price loaders columns';

--
-- Дамп данных таблицы `cms_shop_priceloaders_columns`
--

INSERT INTO `cms_shop_priceloaders_columns` (`id`, `pid`, `fid`, `callback`, `callback_download`, `priority`) VALUES
(1, 1, '25', NULL, NULL, 1),
(2, 1, 'name', NULL, NULL, 2),
(3, 1, 'description', NULL, NULL, 3),
(4, 1, '35', '$y = array_filter(array_map(\'trim\', preg_split(\'/[;,]/umi\', $x)), \'trim\');\n$temp = array();\nforeach ($y as $val) {\n    $SQL_query = \"SELECT pid FROM cms_data WHERE fid = 25 AND value = \'\" . \\RAAS\\CMS\\Material::_SQL()->real_escape_string($val) . \"\'\";\n    if ($SQL_result = \\RAAS\\CMS\\Material::_SQL()->getvalue($SQL_query)) {\n        $temp[] = (int)$SQL_result;\n    }\n}\nreturn $temp;', '$temp = array();\nforeach ((array)$x as $val) {\n    $row = new \\RAAS\\CMS\\Material((int)$val);\n    if ($row->id) {\n        $temp[] = $row->article;\n    }\n}\nreturn implode(\', \', $temp);', 4),
(5, 1, '31', 'return ($x && (trim($x) !== \'0\')) ? (int)(bool)preg_match(\'/налич/umi\', $x) : 0;', 'return (int)$x ? \'в наличии\' : \'под заказ\';', 5),
(6, 1, '34', '$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($x)); return $y;', NULL, 6),
(7, 1, '26', '$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($y)); return $y;', NULL, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_snippets`
--

DROP TABLE IF EXISTS `cms_snippets`;
CREATE TABLE `cms_snippets` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Code',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Locked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Snippets';

--
-- Дамп данных таблицы `cms_snippets`
--

INSERT INTO `cms_snippets` (`id`, `pid`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `locked`) VALUES
(1, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:36', 0, 1, '__raas_material_interface', '<?php\r\n/**\r\n * Стандартный интерфейс материалов\r\n * @param Block_Material $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\n$interface = new MaterialInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(2, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:36', 0, 1, '__raas_form_interface', '<?php\r\n/**\r\n * Стандартный интерфейс формы\r\n * @param Block_Form $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\n$interface = new FormInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(3, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:36', 0, 1, '__raas_menu_interface', '<?php\r\n/**\r\n * Стандартный интерфейс меню\r\n * @param Block_Menu $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\n$interface = new MenuInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(4, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:37', 0, 1, '__raas_search_interface', '<?php\r\n/**\r\n * Стандартный интерфейс поиска\r\n * @param Block_Search $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\n$interface = new SearchInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(5, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:37', 0, 1, '__raas_form_notify', '<?php\n/**\n * Стандартное уведомление о форме обратной связи\n * @param bool $SMS Уведомление отправляется по SMS\n * @param Feedback $Item Уведомление формы обратной связи\n * @param Material $Material Созданный материал\n * @param bool $forUser Отправка сообщения для пользователя\n *     (если false то для администратора)\n */\nnamespace RAAS\\CMS;\n\nuse RAAS\\Controller_Frontend as ControllerFrontend;\n\n$cf = ControllerFrontend::i();\n$adminUrl = $cf->schemeHost . \'/admin/?p=cms\';\n\n$form = $Item->parent;\n$page = $Item->page;\n$material = $Item->material;\n\nif ($SMS) {\n    echo date(DATETIMEFORMAT) . \' \' .\n        sprintf(\n            FEEDBACK_STANDARD_HEADER,\n            $form->name,\n            $page->name,\n            $cf->idnHost\n        ) . \"\\n\" .\n        FEEDBACK_ID . \': \' . (int)$Item->id . \"\\n\";\n    foreach ($Item->fields as $field) {\n        $renderer = NotificationFieldRenderer::spawn($field);\n        echo $renderer->render([\'admin\' => !$forUser, \'sms\' => true]);\n    }\n} else { ?>\n    <div>\n      <?php echo FEEDBACK_ID . \': \' . (int)$Item->id?>\n    </div>\n    <div>\n      <?php\n      if ($forUser) {\n          $fields = $Item->visFields;\n      } else {\n          $fields = $Item->fields;\n      }\n      foreach ($fields as $field) {\n          $renderer = NotificationFieldRenderer::spawn($field);\n          echo $renderer->render([\'admin\' => !$forUser, \'sms\' => false]);\n      } ?>\n    </div>\n    <?php if (!$forUser) {\n        $url = \'\';\n        if ($Material && $Material->id) {\n            $url = $cf->schemeHost .\n                \'/admin/?p=cms&sub=main&action=edit_material&id=\' .\n                (int)$Material->id . \'&pid=\';\n            $affectedPagesIds = array_map(function ($x) {\n                return $x->id;\n            }, (array)$form->Material_Type->affectedPages);\n            if (in_array($page->id, $affectedPagesIds)) {\n                $url .= $page->id;\n            } else {\n                $url .= $affectedPagesIds[0];\n            }\n        } elseif ($form->create_feedback) {\n            $url = $cf->schemeHost\n                . \'/admin/?p=cms&sub=feedback&action=view&id=\' . $Item->id;\n        }\n        if ($url) { ?>\n            <p>\n              <a href=\"<?php echo htmlspecialchars($url)?>\">\n                <?php echo VIEW?>\n              </a>\n            </p>\n        <?php } ?>\n        <p>\n          <small>\n            <?php\n            echo IP_ADDRESS . \': \' .\n                htmlspecialchars($Item->ip) . \'<br />\' .\n                USER_AGENT . \': \' .\n                htmlspecialchars($Item->user_agent) . \'<br />\' .\n                PAGE . \': \';\n            if ($page->parents) {\n                foreach ($page->parents as $row) { ?>\n                    <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$row->id)?>\">\n                      <?php echo htmlspecialchars($row->name)?>\n                    </a> /\n                <?php }\n            } ?>\n            <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$page->id)?>\">\n              <?php echo htmlspecialchars($page->name)?>\n            </a>\n            <?php if ($material->id) { ?>\n                /\n                <a href=\"<?php echo htmlspecialchars($adminUrl . \'&action=edit_material&id=\' . (int)$material->id)?>\">\n                  <?php echo htmlspecialchars($material->name)?>\n                </a>\n            <?php } ?>\n            <br />\n            <?php echo FORM . \': \';\n            if ($form->create_feedback) { ?>\n                <a href=\"<?php echo htmlspecialchars($adminUrl . \'&sub=feedback&id=\' . (int)$form->id)?>\">\n                  <?php echo htmlspecialchars($form->name)?>\n                </a>\n            <?php } else {\n                echo htmlspecialchars($form->name);\n            } ?>\n          </small>\n        </p>\n    <?php }\n}\n', 1),
(6, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:37', 0, 1, '__raas_cache_interface', '<?php\r\n/**\r\n * Стандартный интерфейс кэширования\r\n * @param Block $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n * @param mixed $OUT Данные, полученные от интерфейса блока\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\n$interface = new CacheInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES,\r\n    $OUT\r\n);\r\nreturn $interface->process();\r\n', 1),
(7, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:37', 0, 1, '__raas_watermark_interface', '<?php\n/**\n * Стандартный интерфейс водяных знаков\n * @param string[]|null $files Пути файлов для обработки\n */\nnamespace RAAS\\CMS;\n\nuse SOME\\Graphics;\nuse RAAS\\Application;\nuse RAAS\\Attachment;\n\n$watermark = null;\nforeach ([\'design/watermark.png\', \'watermark.png\'] as $tmpWatermark) {\n    if (is_file($tmpWatermark = Application::i()->baseDir . \'/files/cms/common/image/\' . $tmpWatermark)) {\n        $watermark = $tmpWatermark;\n        break;\n    }\n}\nif ($watermark) {\n    $interface = new WatermarkInterface($watermark, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER, $_FILES);\n    $interface->process((array)$files);\n}\n', 1),
(8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'dummy', '', 0),
(9, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'banners', '<?php\nnamespace RAAS\\CMS;\n\nif ($Set) {\n    ?>\n    <div class=\"banners\">\n      <div id=\"banners<?php echo (int)$Block->id?>\" class=\"carousel slide banners__inner\" data-role=\"slider\" data-slider-carousel=\"bootstrap\" data-slider-autoscroll=\"true\">\n        <?php if (count($Set) > 1) { ?>\n            <ul class=\"carousel-indicators banners__nav\">\n              <?php for ($i = 0; $i < count($Set); $i++) { ?>\n                  <li data-target=\"#banners<?php echo (int)$Block->id?>\" data-slide-to=\"<?php echo (int)$i?>\" class=\"banners__nav-item <?php echo !$i ? \'active\' : \'\'?>\"></li>\n              <?php } ?>\n            </ul>\n        <?php } ?>\n        <div class=\"carousel-inner banners__list banners-list\">\n          <?php for ($i = 0; $i < count($Set); $i++) { $row = $Set[$i]; ?>\n              <div class=\"item <?php echo !$i ? \'active\' : \'\'?> banners-list__item\">\n                <div class=\"banners-item\">\n                  <a class=\"banners-item__image\" <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>\n                    <img src=\"/<?php echo Package::tn($row->image->fileURL, 1920, 654)?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />\n                  </a>\n                  <?php if ($row->name[0] != \'.\') { ?>\n                      <div class=\"banners-item__text\">\n                        <div class=\"banners-item__title\">\n                          <?php echo htmlspecialchars($row->name)?>\n                        </div>\n                        <div class=\"banners-item__description\">\n                          <?php echo $row->description?>\n                        </div>\n                      </div>\n                  <?php } ?>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n        <?php if (count($Set) > 1) { ?>\n            <a href=\"#banners<?php echo (int)$Block->id?>\" data-slide=\"prev\" class=\"left carousel-control banners__arrow banners__arrow_left\"></a>\n            <a href=\"#banners<?php echo (int)$Block->id?>\" data-slide=\"next\" class=\"right carousel-control banners__arrow banners__arrow_right\"></a>\n        <?php } ?>\n      </div>\n    </div>\n<?php } ?>\n', 0),
(10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'feedback', '<?php\nnamespace RAAS\\CMS;\n\nif ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {\n    $result = array();\n    if ($success[(int)$Block->id]) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else { ?>\n    <div class=\"feedback\">\n      <form class=\"form-horizontal\" data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">\n        <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>\n        <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n          <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>\n          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n            <ul>\n              <?php foreach ((array)$localError as $key => $val) { ?>\n                  <li><?php echo htmlspecialchars($val)?></li>\n              <?php } ?>\n            </ul>\n          </div>\n        </div>\n\n        <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>\n          <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>\n          <?php if ($Form->signature) { ?>\n                <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />\n          <?php } ?>\n          <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>\n                <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />\n          <?php } ?>\n          <?php foreach ($Form->fields as $row) { ?>\n              <?php if ($row->urn == \'agree\') { ?>\n                  <div class=\"form-group\">\n                    <div class=\"col-sm-9 col-sm-offset-3 col-md-offset-2\">\n                      <label class=\"checkbox\">\n                        <?php $getField($row, $DATA);?>\n                        <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>\n                      </label>\n                    </div>\n                  </div>\n              <?php } else { ?>\n                  <div class=\"form-group\">\n                    <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>\n                    <div class=\"col-sm-9 col-md-4\">\n                      <?php $getField($row, $DATA);?>\n                    </div>\n                  </div>\n              <?php } ?>\n          <?php } ?>\n          <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>\n              <div class=\"form-group\">\n                <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo CAPTCHA?></label>\n                <div class=\"col-sm-9 col-md-4\">\n                  <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />\n                  <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />\n                </div>\n              </div>\n          <?php } ?>\n          <div class=\"form-group\">\n            <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\">\n              <button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button>\n            </div>\n          </div>\n        </div>\n      </form>\n    </div>\n<?php } ?>\n', 0),
(11, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'feedback_modal', '<?php\nnamespace RAAS\\CMS;\n\nif ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {\n    $result = array();\n    if ($success[(int)$Block->id]) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else { ?>\n    <!--noindex-->\n    <div class=\"feedback-modal\">\n      <div id=\"<?php echo htmlspecialchars($Widget->urn)?>\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\" class=\"modal fade\">\n        <div class=\"modal-dialog\">\n          <div class=\"modal-content\">\n            <form data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">\n              <div class=\"modal-header\">\n                <button type=\"button\" data-dismiss=\"modal\" aria-hidden=\"true\" class=\"close\">×</button>\n                <div class=\"h4 modal-title\"><?php echo htmlspecialchars($Block->name)?></div>\n              </div>\n              <div class=\"modal-body\">\n                <div class=\"form-horizontal\">\n                  <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>\n                  <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n                    <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>\n                    <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n                      <ul>\n                        <?php foreach ((array)$localError as $key => $val) { ?>\n                            <li><?php echo htmlspecialchars($val)?></li>\n                        <?php } ?>\n                      </ul>\n                    </div>\n                  </div>\n\n                  <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>\n                    <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>\n                    <?php if ($Form->signature) { ?>\n                          <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />\n                    <?php } ?>\n                    <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>\n                          <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />\n                    <?php } ?>\n                    <?php foreach ($Form->fields as $row) { ?>\n                        <?php if ($row->urn == \'agree\') { ?>\n                            <div class=\"form-group\">\n                              <div class=\"col-sm-9 col-sm-offset-3\">\n                                <label class=\"checkbox\">\n                                  <?php $getField($row, $DATA);?>\n                                  <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>\n                                </label>\n                              </div>\n                            </div>\n                        <?php } else { ?>\n                            <div class=\"form-group\">\n                              <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?>:</label>\n                              <div class=\"col-sm-9\">\n                                <?php $getField($row, $DATA); ?>\n                              </div>\n                            </div>\n                        <?php } ?>\n                    <?php } ?>\n                    <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>\n                        <div class=\"form-group\">\n                          <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>\n                          <div class=\"col-sm-9\">\n                            <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />\n                            <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />\n                          </div>\n                        </div>\n                    <?php } ?>\n                    <div class=\"form-group text-right\">\n                      <div class=\"col-sm-12\">\n                        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><?php echo CANCEL?></button>\n                        <button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n              </div>\n            </form>\n          </div>\n        </div>\n      </div>\n    </div>\n    <!--/noindex-->\n<?php } ?>\n', 0),
(12, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'head', '<?php\nnamespace RAAS\\CMS;\n\nuse SOME\\HTTP;\n\n?>\n<title><?php echo htmlspecialchars($Page->meta_title ? $Page->meta_title : $Page->name)?></title>\n<?php if ($Page->meta_keywords) { ?>\n    <meta name=\"keywords\" content=\"<?php echo htmlspecialchars($Page->meta_keywords)?>\" />\n<?php } ?>\n<?php if ($Page->meta_description) { ?>\n    <meta name=\"description\" content=\"<?php echo htmlspecialchars($Page->meta_description)?>\" />\n<?php } ?>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width\">\n<link rel=\'stylesheet\' href=\'/css/application.css\'>\n<link rel=\'stylesheet\' href=\'/css/animate.css\'>\n<link rel=\'stylesheet\' href=\'/css/style.css\'>\n<link rel=\'stylesheet\' href=\'/custom.css\'>\n<!-- Core-->\n<script src=\"/js/application.js\"></script>\n<script src=\"/js/wow.min.js\"></script>\n<script>new WOW().init();</script>\n<script src=\"/js/jquery.jcarousel.min.js\"></script>\n<script src=\"/js/sliders.js\"></script>\n<script src=\"/js/menu-top.js\"></script>\n<script src=\"/js/setrawcookie.js\"></script>\n<script src=\"/js/setcookie.js\"></script>\n<?php if (class_exists(\'RAAS\\CMS\\Shop\\Module\')) { ?>\n    <script src=\"/js/cookiecart.js\"></script>\n    <script src=\"/js/ajaxcart.js\"></script>\n    <script src=\"/js/ajaxcatalog.js\"></script>\n    <script src=\"/js/modal.js\"></script>\n    <script src=\"/js/catalog.js\"></script>\n<?php } ?>\n<script src=\"/js/script.js\"></script>\n<?php if (is_file(\'favicon.ico\')) { ?>\n    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"/favicon.ico\" />\n<?php } ?>\n<?php if (HTTP::queryString()) { ?>\n    <link rel=\"canonical\" href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . parse_url($_SERVER[\'REQUEST_URI\'], PHP_URL_PATH))?>\">\n<?php } ?>\n<?php if ($Page->noindex || $Page->Material->noindex) { ?>\n    <meta name=\"robots\" content=\"noindex,nofollow\" />\n<?php } ?>\n', 0),
(13, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'order_call_modal', '<?php\nnamespace RAAS\\CMS;\n\nif ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {\n    $result = array();\n    if ($success[(int)$Block->id]) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else { ?>\n    <!--noindex-->\n    <div class=\"order-call-modal\">\n      <div id=\"<?php echo htmlspecialchars($Widget->urn)?>\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\" class=\"modal fade\">\n        <div class=\"modal-dialog\">\n          <div class=\"modal-content\">\n            <form data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">\n              <div class=\"modal-header\">\n                <button type=\"button\" data-dismiss=\"modal\" aria-hidden=\"true\" class=\"close\">×</button>\n                <div class=\"h4 modal-title\"><?php echo ORDER_CALL?></div>\n              </div>\n              <div class=\"modal-body\">\n                <div class=\"form-horizontal\">\n                  <?php include Package::i()->resourcesDir . \'/form.inc.php\'?>\n                  <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n                    <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>\n                    <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n                      <ul>\n                        <?php foreach ((array)$localError as $key => $val) { ?>\n                            <li><?php echo htmlspecialchars($val)?></li>\n                        <?php } ?>\n                      </ul>\n                    </div>\n                  </div>\n\n                  <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>\n                    <?php if ($Form->signature) { ?>\n                          <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />\n                    <?php } ?>\n                    <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>\n                          <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />\n                    <?php } ?>\n                    <?php $row = $Form->fields[\'phone_call\']; $row->placeholder = $row->name; ?>\n                    <div class=\"form-group\">\n                      <div class=\"col-xs-12 order-call__phone\">\n                        <?php $getField($row, $DATA)?>\n                        <button class=\"btn btn-primary\" type=\"submit\"><span class=\"fa fa-phone\"></span></button>\n                      </div>\n                    </div>\n                    <?php $row = $Form->fields[\'agree\'] ?>\n                    <div class=\"form-group\">\n                      <div class=\"col-xs-12\">\n                        <label class=\"checkbox\">\n                          <?php $getField($row, $DATA);?>\n                          <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>\n                        </label>\n                      </div>\n                    </div>\n                    <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>\n                        <div class=\"form-group\">\n                          <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>\n                          <div class=\"col-sm-9\">\n                            <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />\n                            <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />\n                          </div>\n                        </div>\n                    <?php } ?>\n                  </div>\n                </div>\n              </div>\n            </form>\n          </div>\n        </div>\n      </div>\n    </div>\n    <!--/noindex-->\n<?php } ?>\n', 0),
(14, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'sitemap_xml', '<?php\nnamespace RAAS\\CMS;\n\n$getChangeFreq = function($row) {\n    $text = \'\';\n    if ($row->changefreq) {\n        $text .= \'<changefreq>\' . htmlspecialchars($row->changefreq) . \'</changefreq>\';\n    } else {\n        $d0 = max(0, strtotime($row->post_date));\n        $s = ((time() - $d0) / $row->modify_counter);\n        $text .= \'<changefreq>\';\n        if ($s < 1800) {\n            $text .= \'always\';\n        } elseif ($s < 2 * 3600) {\n            $text .= \'hourly\';\n        } elseif ($s < 2 * 86400) {\n            $text .= \'daily\';\n        } elseif ($s < 2 * 7 * 86400) {\n            $text .= \'weekly\';\n        } elseif ($s < 2 * 30 * 86400) {\n            $text .= \'monthly\';\n        } elseif ($s < 2 * 365 * 86400) {\n            $text .= \'yearly\';\n        } else {\n            $text .= \'never\';\n        }\n        $text .= \'</changefreq>\';\n    }\n    return $text;\n};\n\n$showItem = function ($row) use (&$getChangeFreq) {\n    $text = \' <url>\n                <loc>http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . htmlspecialchars($_SERVER[\'HTTP_HOST\'] . $row->url) . \'</loc>\';\n    if (strtotime($row->last_modified) > 0) {\n        $text .= \'<lastmod>\' . date(DATE_W3C, strtotime($row->last_modified)) . \'</lastmod>\';\n    }\n    $text .= $getChangeFreq($row);\n    $text .= \'<priority>\' . str_replace(\',\', \'.\', (float)$row->sitemaps_priority) . \'</priority>\';\n    $text .= \'</url>\';\n    return $text;\n};\n\n$showMenu = function(Page $page) use (&$showMenu, &$getChangeFreq, &$showItem) {\n    $children = $page->visChildren;\n    for ($i = 0; $i < count($children); $i++) {\n        $row = $children[$i];\n        if (!$row->response_code) {\n            $text .= $showItem($row);\n            foreach ($row->affectedMaterials as $row2) {\n                if ($row2->parent->id == $row->id) {\n                    $text .= $showItem($row2);\n                }\n            }\n            $text .= $showMenu($row);\n        }\n    }\n    return $text;\n};\n\nheader(\'Content-Type: application/xml; charset=UTF-8\');\necho \'<?xml version=\"1.0\" encoding=\"UTF-8\"?\' . \'>\n<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n  \' . $showItem($Page->Domain) . \'\n  \' . $showMenu($Page->Domain) . \'\n</urlset>\';\n', 0),
(15, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'logo', '<?php\nnamespace RAAS\\CMS;\n\n$text = $Block->description;\n$text = str_replace(\' href=\"\' . htmlspecialchars($Page->initialURL) . \'\"\', \'\', $text);\necho $text;\n', 0),
(16, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'features_main', '<?php\nnamespace RAAS\\CMS;\n\nuse \\SOME\\Text;\n\n$translateAddresses = true;\n\nif ($Set) {\n    ?>\n    <div class=\"features-main\">\n      <div class=\"features-main__title h2\"><?php echo htmlspecialchars($Block->name)?></div>\n      <div class=\"features-main__list\">\n        <div class=\"features-main-list\">\n          <?php foreach ($Set as $row) { ?>\n              <div class=\"features-main-list__item\">\n                <div class=\"features-main-item\">\n                  <?php if ($row->image->id || $row->icon) { ?>\n                      <div class=\"features-main-item__image\">\n                        <?php if ($row->image->id) { ?>\n                            <img src=\"/<?php echo htmlspecialchars($row->image->fileURL)?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />\n                        <?php } elseif ($row->icon) { ?>\n                            <span class=\"fa fa-<?php echo htmlspecialchars($row->icon)?>\"></span>\n                        <?php } ?>\n                      </div>\n                  <?php } ?>\n                  <div class=\"features-main-item__text\">\n                    <div class=\"features-main-item__title\">\n                      <?php echo htmlspecialchars($row->name)?>\n                    </div>\n                    <div class=\"features-main-item__description\">\n                      <?php echo $row->description?>\n                    </div>\n                  </div>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n    </div>\n<?php } ?>\n', 0),
(17, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'robots', '<?php\nnamespace RAAS\\CMS;\n\nheader(\'Content-Type: text/plain; charset=UTF-8\');\necho $Block->description;\n', 0),
(18, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'custom_css', '<?php\nnamespace RAAS\\CMS;\n\nheader(\'Content-Type: text/css; charset=UTF-8\');\necho $Block->description;\n', 0),
(19, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'menu_content', '<?php\nnamespace RAAS\\CMS;\n\nuse SOME\\HTTP;\n\n$showMenu = function($node, Page $current) use (&$showMenu) {\n    static $level = 0;\n    if ($node instanceof Menu) {\n        $children = $node->visSubMenu;\n    } else {\n        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();\n    }\n    for ($i = 0; $i < count($children); $i++) {\n        $row = $children[$i];\n        $level++;\n        $ch = $showMenu($row, $current);\n        $level--;\n        if ($node instanceof Menu) {\n            $url = $row->url;\n            $name = $row->name;\n        } else {\n            $url = $row[\'url\'];\n            $name = $row[\'name\'];\n        }\n        $active = ($url == HTTP::queryString(\'\', true));\n        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;\n        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {\n            $semiactive = true;\n        }\n        $liClasses = array(\n            \'menu-content__item\',\n            \'menu-content__item_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-content__item_level_\' . $level\n        );\n        $aClasses = array(\n            \'menu-content__link\',\n            \'menu-content__link_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-content__link_level_\' . $level\n        );\n        if ($active) {\n            $liClasses[] = \'menu-content__item_active\';\n            $aClasses[] = \'menu-content__link_active\';\n        } elseif ($semiactive) {\n            $liClasses[] = \'menu-content__item_semiactive\';\n            $aClasses[] = \'menu-content__link_semiactive\';\n        }\n        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'\n              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'\n              .     $ch\n              .  \'</li>\';\n    }\n    $ulClasses = array(\n        \'menu-content__list\',\n        \'menu-content__list_\' . (!$level ? \'main\' : \'inner\'),\n        \'menu-content__list_level_\' . $level\n    );\n    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;\n};\n\necho \'<nav class=\"menu-content\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';\n', 0),
(20, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'menu_top', '<?php\nnamespace RAAS\\CMS;\n\nuse SOME\\HTTP;\n\n$showMenu = function($node, Page $current) use (&$showMenu) {\n    static $level = 0;\n    if ($node instanceof Menu) {\n        $children = $node->visSubMenu;\n    } else {\n        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();\n    }\n    for ($i = 0; $i < count($children); $i++) {\n        $row = $children[$i];\n        $level++;\n        $ch = $showMenu($row, $current);\n        $level--;\n        if ($node instanceof Menu) {\n            $url = $row->url;\n            $name = $row->name;\n        } else {\n            $url = $row[\'url\'];\n            $name = $row[\'name\'];\n        }\n        $active = ($url == HTTP::queryString(\'\', true));\n        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;\n        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {\n            $semiactive = true;\n        }\n        $liClasses = array(\n            \'menu-top__item\',\n            \'menu-top__item_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-top__item_level_\' . $level\n        );\n        $aClasses = array(\n            \'menu-top__link\',\n            \'menu-top__link_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-top__link_level_\' . $level\n        );\n        if ($active) {\n            $liClasses[] = \'menu-top__item_active\';\n            $aClasses[] = \'menu-top__link_active\';\n        } elseif ($semiactive) {\n            $liClasses[] = \'menu-top__item_semiactive\';\n            $aClasses[] = \'menu-top__link_semiactive\';\n        }\n        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'\n              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'\n              .     $ch\n              .  \'</li>\';\n    }\n    $ulClasses = array(\n        \'menu-top__list\',\n        \'menu-top__list_\' . (!$level ? \'main\' : \'inner\'),\n        \'menu-top__list_level_\' . $level\n    );\n    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;\n};\n\necho \'<nav class=\"menu-top\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';\n', 0),
(21, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'menu_bottom', '<?php\nnamespace RAAS\\CMS;\n\nuse SOME\\HTTP;\n\n$showMenu = function($node, Page $current) use (&$showMenu) {\n    static $level = 0;\n    if ($node instanceof Menu) {\n        $children = $node->visSubMenu;\n    } else {\n        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();\n    }\n    for ($i = 0; $i < count($children); $i++) {\n        $row = $children[$i];\n        $level++;\n        $ch = $showMenu($row, $current);\n        $level--;\n        if ($node instanceof Menu) {\n            $url = $row->url;\n            $name = $row->name;\n        } else {\n            $url = $row[\'url\'];\n            $name = $row[\'name\'];\n        }\n        $active = ($url == HTTP::queryString(\'\', true));\n        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;\n        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {\n            $semiactive = true;\n        }\n        $liClasses = array(\n            \'menu-bottom__item\',\n            \'menu-bottom__item_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-bottom__item_level_\' . $level\n        );\n        $aClasses = array(\n            \'menu-bottom__link\',\n            \'menu-bottom__link_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-bottom__link_level_\' . $level\n        );\n        if ($active) {\n            $liClasses[] = \'menu-bottom__item_active\';\n            $aClasses[] = \'menu-bottom__link_active\';\n        } elseif ($semiactive) {\n            $liClasses[] = \'menu-bottom__item_semiactive\';\n            $aClasses[] = \'menu-bottom__link_semiactive\';\n        }\n        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'\n              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'\n              .     $ch\n              .  \'</li>\';\n    }\n    $ulClasses = array(\n        \'menu-bottom__list\',\n        \'menu-bottom__list_\' . (!$level ? \'main\' : \'inner\'),\n        \'menu-bottom__list_level_\' . $level\n    );\n    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;\n};\n\necho \'<nav class=\"menu-bottom\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';\n', 0),
(22, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'news', '<?php\nnamespace RAAS\\CMS;\n\nuse \\SOME\\Text;\nuse \\SOME\\HTTP;\n\nif ($Item) {\n    ?>\n    <div class=\"news\">\n      <div class=\"news-article\">\n        <?php if (($t = strtotime($Item->date)) > 0) { ?>\n            <div class=\"news-article__date\"><?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?></div>\n        <?php } ?>\n        <?php if ($Item->visImages) { ?>\n            <div class=\"news-article__image\">\n              <a href=\"/<?php echo $Item->visImages[0]->fileURL?>\" data-lightbox-gallery=\"g\">\n                <img src=\"/<?php echo $Item->visImages[0]->tnURL?>\" alt=\"<?php echo htmlspecialchars($Item->visImages[0]->name ?: $row->name)?>\" /></a>\n            </div>\n        <?php } ?>\n        <div class=\"news-article__text\">\n          <div class=\"news-article__description\">\n            <?php echo $Item->description?>\n          </div>\n        </div>\n        <?php if (count($Item->visImages) > 1) { ?>\n            <div class=\"news-article__images\">\n              <div class=\"h2 news-article__images-title\">\n                Фотографии\n              </div>\n              <div class=\"news-article__images-inner\">\n                <?php for ($i = 1; $i < count($Item->visImages); $i++) { $row = $Item->visImages[$i]; ?>\n                    <div class=\"news-article__additional-image-container\">\n                      <a href=\"/<?php echo htmlspecialchars($row->fileURL)?>\" class=\"news-article__additional-image\" data-lightbox-gallery=\"g\">\n                        <img src=\"/<?php echo htmlspecialchars($row->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->name)?>\" /></a>\n                    </div>\n                <?php } ?>\n              </div>\n            </div>\n        <?php } ?>\n      </div>\n    </div>\n<?php } elseif ($Set) { ?>\n    <div class=\"news\">\n      <div class=\"news__list\">\n        <div class=\"news-list\">\n          <?php foreach ($Set as $row) { ?>\n              <div class=\"news-list__item\">\n                <div class=\"news-item\">\n                  <div class=\"news-item__image\">\n                    <a<?php echo ($Block->nat ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\') . (!$row->visImages ? \' class=\"no-image\"\' : \'\')?>>\n                      <?php if ($row->visImages) { ?>\n                          <img src=\"/<?php echo htmlspecialchars($row->visImages[0]->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />\n                      <?php } ?>\n                    </a>\n                  </div>\n                  <div class=\"news-item__text\">\n                    <div class=\"news-item__title\">\n                      <a<?php echo $Block->nat ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>\n                        <?php echo htmlspecialchars($row->name)?>\n                      </a>\n                    </div>\n                    <?php if (($t = strtotime($row->date)) > 0) { ?>\n                        <div class=\"news-item__date\">\n                          <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                        </div>\n                    <?php } ?>\n                    <div class=\"news-item__description\">\n                      <?php echo htmlspecialchars($row->brief ?: Text::cuttext(html_entity_decode(strip_tags($row->description), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\'))?>\n                    </div>\n                    <?php if ($Block->nat) { ?>\n                        <div class=\"news-item__more\">\n                          <a href=\"<?php echo htmlspecialchars($row->url)?>\">\n                            <?php echo SHOW_MORE?>\n                          </a>\n                        </div>\n                    <?php } ?>\n                  </div>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n    </div>\n    <?php include Package::i()->resourcesDir . \'/pages.inc.php\'?>\n    <?php if ($Pages->pages > 1) { ?>\n        <ul class=\"pagination pull-right\">\n          <?php\n          echo $outputNav(\n              $Pages,\n              array(\n                  \'pattern\' => \'<li><a href=\"\' . HTTP::queryString(\'page={link}\') . \'\">{text}</a></li>\',\n                  \'pattern_active\' => \'<li class=\"active\"><a>{text}</a></li>\',\n                  \'ellipse\' => \'<li class=\"disabled\"><a>...</a></li>\'\n              )\n          );\n          ?>\n        </ul>\n    <?php } ?>\n<?php } ?>\n', 0),
(23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'news_main', '<?php\nnamespace RAAS\\CMS;\n\nuse \\SOME\\Text;\n\n$translateAddresses = true;\n\nif ($Set) {\n    ?>\n    <div class=\"news-main left-block\">\n      <div class=\"news-main__title left-block__title\"><a href=\"/news/\">Новости</a></div>\n      <div class=\"news-main__list left-block__inner\">\n        <div class=\"news-main-list\">\n          <?php foreach ($Set as $row) { ?>\n              <div class=\"news-main-list__item\">\n                <div class=\"news-main-item\">\n                  <div class=\"news-main-item__image\">\n                    <a<?php echo ($translateAddresses ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\') . (!$row->visImages ? \' class=\"no-image\"\' : \'\')?>>\n                      <?php if ($row->visImages) { ?>\n                          <img src=\"/<?php echo Package::tn($row->visImages[0]->fileURL, 1920, 654)?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />\n                      <?php } ?>\n                    </a>\n                  </div>\n                  <div class=\"news-main-item__text\">\n                    <div class=\"news-main-item__title\">\n                      <a<?php echo $translateAddresses ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>\n                        <?php echo htmlspecialchars($row->name)?>\n                      </a>\n                    </div>\n                    <?php if (($t = strtotime($row->date)) > 0) { ?>\n                        <div class=\"news-main-item__date\">\n                          <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                        </div>\n                    <?php } ?>\n                    <div class=\"news-main-item__description\">\n                      <?php echo htmlspecialchars($row->brief ?: Text::cuttext(html_entity_decode(strip_tags($row->description), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\'))?>\n                    </div>\n                    <?php if ($translateAddresses) { ?>\n                        <div class=\"news-main-item__more\">\n                          <a href=\"<?php echo htmlspecialchars($row->url)?>\">\n                            <?php echo SHOW_MORE?>\n                          </a>\n                        </div>\n                    <?php } ?>\n                  </div>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n    </div>\n<?php } ?>\n', 0),
(24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '__raas_shop_cart_interface', '<?php\n/**\n * Стандартный интерфейс корзины\n * @param Block_Cart $Block Текущий блок\n * @param Page $Page Текущая страница\n */\nnamespace RAAS\\CMS\\Shop;\n\n$interface = new CartInterface(\n    $Block,\n    $Page,\n    $_GET,\n    $_POST,\n    $_COOKIE,\n    $_SESSION,\n    $_SERVER,\n    $_FILES\n);\nreturn $interface->process();\n', 1);
INSERT INTO `cms_snippets` (`id`, `pid`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `locked`) VALUES
(25, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:50', 0, 1, '__raas_shop_order_notify', '<?php\n/**\n * Стандартное уведомление о заказе\n * @param bool $SMS Уведомление отправляется по SMS\n * @param Order $Item Уведомление формы обратной связи\n * @param bool $forUser Отправка сообщения для пользователя\n *     (если false то для администратора)\n */\nnamespace RAAS\\CMS\\Shop;\n\nuse SOME\\Text;\nuse RAAS\\Controller_Frontend as ControllerFrontend;\nuse RAAS\\CMS\\DiagTimer;\nuse RAAS\\CMS\\Form_Field;\nuse RAAS\\CMS\\NotificationFieldRenderer;\n\n$cf = ControllerFrontend::i();\n$adminUrl = $cf->schemeHost . \'/admin/?p=cms\';\n\n$page = $Item->page;\n$cartType = $Item->parent;\n\nif ($SMS) {\n    if ($forUser) {\n        echo sprintf(ORDER_SUCCESSFULLY_SENT, $Item->id);\n    } else {\n        echo date(DATETIMEFORMAT) . \' \' .\n            sprintf(ORDER_STANDARD_HEADER_USER, $Item->id, $cf->idnHost) . \"\\n\";\n        foreach ($Item->fields as $field) {\n            $renderer = NotificationFieldRenderer::spawn($field);\n            echo $renderer->render([\'admin\' => !$forUser, \'sms\' => true]);\n        }\n    }\n} else { ?>\n    <div>\n      <?php echo ORDER_ID . \': \' . (int)$Item->id?>\n    </div>\n    <div>\n      <?php\n      if ($forUser) {\n          $fields = $Item->visFields;\n      } else {\n          $fields = $Item->fields;\n      }\n      foreach ($fields as $field) {\n          $renderer = NotificationFieldRenderer::spawn($field);\n          echo $renderer->render([\'admin\' => !$forUser, \'sms\' => false]);\n      }\n      ?>\n    </div>\n    <?php if ($Item->items) { ?>\n        <br />\n        <table style=\"width: 100%\" border=\"1\">\n          <thead>\n            <tr>\n              <th><?php echo NAME?></th>\n              <th><?php echo ADDITIONAL_INFO?></th>\n              <th><?php echo PRICE?></th>\n              <th><?php echo AMOUNT?></th>\n              <th><?php echo SUM?></th>\n            </tr>\n          </thead>\n          <tbody>\n            <?php\n            $sum = 0;\n            foreach ($Item->items as $item) {\n                $url = \'\';\n                if (($item->id && !$forUser) || $item->url) {\n                    if ($forUser) {\n                        $url = $cf->schemeHost . $item->url;\n                    } elseif ($item->id) {\n                        $url = $cf->schemeHost\n                            . \'/admin/?p=cms&sub=main&action=edit_material&id=\'\n                            . $item->id;\n                        if ($item->cache_url_parent_id) {\n                            // 2023-04-12, AVS: переписал на cache_url_parent_id (было через affectedPages) -\n                            // при большом количестве товаров дико тормозило (до 3 секунд на позицию)\n                            $url .= \'&pid=\' . (int)$item->cache_url_parent_id;\n                        }\n                    }\n                }\n                $itemSum = $item->amount * $item->realprice;\n                $sum += $itemSum;\n                ?>\n                <tr>\n                  <td>\n                    <?php if ($url) { ?>\n                        <a href=\"<?php echo htmlspecialchars($url)?>\">\n                          <?php echo htmlspecialchars($item->name)?>\n                        </a>\n                    <?php } else {\n                        echo htmlspecialchars($item->name);\n                    } ?>\n                  </td>\n                  <td>\n                    <?php echo htmlspecialchars($item->__get(\'meta\'))?>&nbsp;\n                  </td>\n                  <td style=\"text-align: right; white-space: nowrap;\">\n                    <?php echo Text::formatPrice($item->realprice)?>\n                  </td>\n                  <td>\n                    <?php echo (int)$item->amount?>\n                  </td>\n                  <td style=\"text-align: right; white-space: nowrap;\">\n                    <?php echo Text::formatPrice($itemSum)?>\n                  </td>\n                </tr>\n            <?php } ?>\n            <tr>\n              <th colspan=\"4\" style=\"text-align: right\">\n                <?php echo TOTAL_SUM?>:\n              </th>\n              <th style=\"text-align: right; white-space: nowrap;\">\n                <?php echo Text::formatPrice($sum)?>\n              </th>\n            </tr>\n          </tbody>\n        </table>\n    <?php }\n    if (!$forUser) { ?>\n        <p>\n          <a href=\"<?php echo htmlspecialchars($adminUrl . \'&m=shop&sub=orders&action=view&id=\' . (int)$Item->id)?>\">\n            <?php echo VIEW?>\n          </a>\n        </p>\n        <p>\n          <small>\n            <?php\n            echo IP_ADDRESS . \': \' .\n                htmlspecialchars($Item->ip) . \'<br />\' .\n                USER_AGENT . \': \' .\n                htmlspecialchars($Item->user_agent) . \'<br />\' .\n                PAGE . \': \';\n            if ($page->parents) {\n                foreach ($page->parents as $row) { ?>\n                    <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$row->id)?>\">\n                      <?php echo htmlspecialchars($row->name)?>\n                    </a> /\n                <?php }\n            } ?>\n            <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$page->id)?>\">\n              <?php echo htmlspecialchars($page->name)?>\n            </a>\n            <br />\n            <?php echo CART_TYPE?>:\n            <a href=\"<?php echo htmlspecialchars($adminUrl . \'&m=shop&sub=orders&id=\' . (int)$cartType->id)?>\">\n              <?php echo htmlspecialchars($cartType->name)?>\n            </a>\n          </small>\n        </p>\n    <?php }\n}\n', 1),
(26, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_shop_imageloader_interface', '<?php\n/**\n * Интерфейс загрузчика изображений\n * @param ImageLoader $Loader Загрук\n */\nnamespace RAAS\\CMS\\Shop;\n\nuse RAAS\\Application;\nuse RAAS\\Attachment;\nuse RAAS\\CMS\\Material;\nuse RAAS\\CMS\\Package;\nuse RAAS\\CMS\\Sub_Main as Package_Sub_Main;\n\n$interface = new ImageloaderInterface($Loader);\nif ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {\n    return $interface->upload($files, $test, $clear);\n} else {\n    return $interface->download();\n}\n', 1),
(27, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_shop_priceloader_interface', '<?php\r\n/**\r\n * Сниппет интерфейса загрузчика прайсов\r\n * @param PriceLoader $Loader Загрузчик прайсов\r\n * @param Page $Page Страница, в которую загружаем\r\n * @param int $rows Сколько строк отступать\r\n * @param int $cols Сколько колонок отступать\r\n * @param array|null $file <pre><code>[\r\n *     \'tmp_name\' => string путь к файлу,\r\n *     \'name\' => string Имя файла\r\n * ]|null</code></pre> загружаемый файл\r\n * @param bool $test Тестовый режим\r\n * @param int $clear Очищать старые материалы и/или страницы (константа из PriceLoader::DELETE_PREVIOUS_MATERIALS_...)\r\n * @param string $type <pre><code>\'csv\'|\'xls\'|\'xlsx\'</code></pre> Формат, в котором выгружаем\r\n * @param string $encoding Кодировка для формата CSV, в которой выгружаем (совместимо с iconv)\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new PriceloaderInterface($Loader);\r\nif ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {\r\n    $type = strtolower(pathinfo($file[\'name\'], PATHINFO_EXTENSION));\r\n    return $interface->upload(\r\n        $file[\'tmp_name\'],\r\n        $type,\r\n        $Page,\r\n        $test,\r\n        $clear,\r\n        $rows,\r\n        $cols\r\n    );\r\n} else {\r\n    return $interface->download($Page, $rows, $cols, $type, $encoding);\r\n}\r\n', 1),
(28, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_shop_yml_interface', '<?php\r\n/**\r\n * Сниппет интерфейса Яндекс.Маркета\r\n * @param Block_YML $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new YMLInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER\r\n);\r\n$interface->process(true, 300);\r\n', 1),
(29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '__raas_robokassa_interface', '<?php\nnamespace RAAS\\CMS\\Shop;\n\nuse RAAS\\CMS\\Snippet;\nuse RAAS\\Application;\n\nif (in_array($_GET[\'action\'], array(\'result\', \'success\', \'fail\')) && $_REQUEST[\'InvId\']) {\n    // Подписанное значение - либо RESULT URL, либо SUCCESS URL, либо FAIL URL\n    $inv_id = $_REQUEST[\'InvId\'];\n    $Item = new Order($inv_id);\n    $crc = isset($_REQUEST[\'SignatureValue\']) ? strtoupper($_REQUEST[\'SignatureValue\']) : null;\n    switch ($_GET[\'action\']) {\n        case \'result\':\n            while (ob_get_level()) {\n                ob_end_clean();\n            }\n            $my_crc = strtoupper(md5($_REQUEST[\'OutSum\'] . \':\' . $inv_id . \':\' . $Block->epay_pass2));\n            if ($my_crc != $crc) {\n                echo \'Invalid signature\';\n            } elseif (!$Item->id) {\n                echo \'Invalid order ID#\';\n            } else {\n                // Все ок\n                $history = new Order_History();\n                $history->uid = Application::i()->user->id;\n                $history->order_id = (int)$Item->id;\n                $history->status_id = (int)$Item->status_id;\n                $history->paid = 1;\n                $history->post_date = date(\'Y-m-d H:i:s\');\n                $history->description = PAID_VIA_ROBOKASSA;\n                $history->commit();\n\n                $Item->paid = 1;\n                $Item->commit();\n                echo \'OK\' . (int)$Item->id;\n            }\n            exit;\n            break;\n        case \'success\':\n            $my_crc = strtoupper(md5($_REQUEST[\'OutSum\'] . \':\' . $inv_id . \':\' . $Block->epay_pass1));\n            if ($Item->id) {\n                $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');\n                $OUT[\'Item\'] = $Item;\n                if ($crc == $my_crc) {\n                    $OUT[\'success\'][(int)$Block->id] = sprintf(ORDER_SUCCESSFULLY_PAID, $Item->id);\n                } else {\n                    $OUT[\'localError\'] = array(\'crc\' => INVALID_CRC);\n                }\n            }\n            break;\n        case \'fail\':\n            if ($Item->id) {\n                $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');\n                $OUT[\'Item\'] = $Item;\n                $OUT[\'localError\'] = array(\'order\' => sprintf(ORDER_HAS_NOT_BEEN_PAID, $Item->id));\n            }\n            break;\n    }\n} elseif ($Item->id && $_POST[\'epay\']) {\n    $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');\n    $OUT[\'paymentURL\'] = $Block->epay_test ? \'https://auth.robokassa.ru/Merchant/Index.aspx?IsTest=1\' : \'https://auth.robokassa.ru/Merchant/Index.aspx\';\n    $OUT[\'requestForPayment\'] = true;\n    $crc = $Block->epay_login . \':\' . number_format($Item->sum, 2, \'.\', \'\') . \':\' . (int)$Item->id;\n    if (!$Block->epay_test && $Block->epay_currency && ($Block->epay_currency != \'RUR\')) {\n        $crc .= \':\' . $Block->epay_currency;\n    }\n    $crc .= \':\' . $Block->epay_pass1;\n    $crc = md5($crc);\n    $OUT[\'crc\'] = $crc;\n}\n', 1),
(30, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_my_orders_interface', '<?php\r\n/**\r\n * Стандартный интерфейс сервиса \"Мои заказы\"\r\n * @param Block_PHP $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Block_PHP;\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new MyOrdersInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(31, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:50', 0, 1, 'catalog_interface', '<?php\nnamespace RAAS\\CMS;\n\n$IN = (array)$_GET;\nparse_str(trim($Block->params), $temp);\n$IN = array_merge($IN, (array)$temp);\n\n$OUT = array();\nif ($Page->Material && $Block->nat) {\n    $Item = $Page->Material;\n    if ($Page->initialURL != $Item->url) {\n        // Адреса не совпадают\n        if ((int)$Block->legacy && ($Item->pid == $Block->material_type)) {\n            // Установлена переадресация\n            header(\"HTTP/1.1 301 Moved Permanently\");\n            header(\'Location: http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $Item->url);\n            exit;\n        } else {\n            return;\n        }\n    }\n    $OUT[\'Item\'] = $Item;\n\n    // Отзывы\n    // $commentsMType = Material_Type::importByURN(\'goods_comments\');\n    // $commentMaterialField = $commentsMType->fields[\'material\'];\n    // $SQL_query = \"SELECT tM.*\n    //                 FROM \" . Material::_tablename() . \" AS tM\n    //                 JOIN cms_data AS tD ON tD.fid = \" . (int)$commentMaterialField->id . \" AND tD.pid = tM.id\n    //                WHERE tM.pid = \" . (int)$commentsMType->id . \" AND tM.vis AND tD.value = \" . (int)$Page->Material->id\n    //            . \" ORDER BY tM.post_date DESC\";\n    // $comments = Material::getSQLSet($SQL_query);\n    // $OUT[\'comments\'] = $comments;\n    // $OUT[\'commentFormBlock\'] = Block::spawn(71);\n\n    foreach (array(\'name\', \'meta_title\', \'meta_keywords\', \'meta_description\', \'h1\') as $key) {\n        $Page->{\'old\' . ucfirst($key)} = $Page->$key;\n        $Page->$key = $Item->$key;\n    }\n    $Item->proceed = true;\n    $_SESSION[\'visited\'] = (array)$_SESSION[\'visited\'];\n    $_SESSION[\'visited\'][] = (int)$Item->id;\n    $_SESSION[\'visited\'] = array_unique($_SESSION[\'visited\']);\n    $_SESSION[\'visited\'] = array_filter($_SESSION[\'visited\']);\n    $_SESSION[\'visited\'] = array_values($_SESSION[\'visited\']);\n} else {\n    $MType = new Material_Type($Block->material_type);\n    $cc = new Catalog_Cache($MType);\n    if (!$cc->load()) {\n        $cc->getCache();\n        $cc->save();\n    }\n    $Set = $cc->data;\n\n    if (!$MType->global_type) {\n        if ($Page->pid) {\n            $pages_ids = array_merge(array((int)$Page->id), (array)$Page->all_children_ids);\n        } else {\n            $pages_ids = array($Page->id);\n        }\n        $Set = array_filter(\n            $Set,\n            function ($row) use ($pages_ids) {\n                return (bool)array_intersect((array)$row[\'pages_ids\'], $pages_ids);\n            }\n        );\n    }\n\n    $doSearch = false;\n\n    if ($Page->pid) {\n        // Точное соответствие\n        foreach (array(/*...*/) as $key) {\n            if ($IN[$key]) {\n                $doSearch = true;\n                $Set = array_filter(\n                    $Set,\n                    function ($x) use ($IN, $key) {\n                        return (bool)array_intersect((array)$x[$key], (array)$IN[$key]);\n                    }\n                );\n            }\n        }\n\n        // Вхождение подстроки\n        $getValueSubstringFilterFunction = function ($IN, $key) {\n            return function ($y) use ($IN, $key) {\n                return (bool)stristr($y, $IN[$key]);\n            };\n        };\n        foreach (array(\'article\') as $key) {\n            if ($IN[$key]) {\n                $doSearch = true;\n                $Set = array_filter(\n                    $Set,\n                    function ($x) use ($IN, $key, $getValueSubstringFilterFunction) {\n                        return (bool)array_filter((array)$x[$key], $getValueSubstringFilterFunction($IN, $key));\n                    }\n                );\n            }\n        }\n\n        // От .. до\n        $getValueFromToFilterFunction = function ($IN, $key, $from = true) {\n            if ($from) {\n                return function ($y) use ($IN, $key) {\n                    return $y >= $IN[$key . \'_from\'];\n                };\n            } else {\n                return function ($y) use ($IN, $key) {\n                    return $y <= $IN[$key . \'_to\'];\n                };\n            }\n        };\n\n        $getRowFromToFilterFunction = function ($IN, $key, $from = true) use ($getValueFromToFilterFunction) {\n            $f = $getValueFromToFilterFunction($IN, $key, $from);\n            return function ($x) use ($key, $f) {\n                return (bool)array_filter((array)$x[$key], $f);\n            };\n        };\n        foreach (array(\'price\') as $key) {\n            if ($IN[$key . \'_from\']) {\n                $doSearch = true;\n                $Set = array_filter($Set, $getRowFromToFilterFunction($IN, $key, true));\n            }\n            if ($IN[$key . \'_to\']) {\n                $doSearch = true;\n                $Set = array_filter($Set, $getRowFromToFilterFunction($IN, $key, false));\n            }\n        }\n    }\n\n    if ($Page->visChildren && !$doSearch && $Page->pid) {\n        $cats = $Page->visChildren;\n        $temp = array();\n        foreach ($cats as $cat) {\n            $ids = array_merge(array($cat->id), (array)$cat->all_children_ids);\n            foreach ($Set as $row) {\n                if ((bool)array_intersect((array)$row[\'pages_ids\'], $ids)) {\n                    $temp[$cat->id]++;\n                }\n            }\n            $cat->reload();\n            unset($cat);\n        }\n        $cats = array();\n        foreach ($temp as $key => $val) {\n            $cats[$key] = new Page($key);\n            $cats[$key]->counter = $val;\n        }\n        $OUT[\'subCats\'] = array_values($cats);\n    }\n\n    if ($Set) {\n        $Set = array_filter(\n            $Set,\n            function ($row) use ($Page) {\n                return in_array($Page->id, (array)$row[\'pages_ids\']);\n            }\n        );\n        $sortFunction = array();\n        if (in_array($IN[\'sort\'], array(\'price\'))) {\n            // Вариант для сортировки из фильтра\n            $sortFunction[] = \'(\' . ($IN[\'order\'] == \'desc\' ? \'-1 * \' : \'\') . \'((int)$a[\"\' . $IN[\'sort\'] . \'\"] - (int)$b[\"\' . $IN[\'sort\'] . \'\"]))\';\n        } else {\n            $sortFunction[] = \'((int)(bool)$b[\"priority\"] - (int)(bool)$a[\"priority\"])\';\n            $sortFunction[] = \'((int)$a[\"priority\"] - (int)$b[\"priority\"])\';\n            // Вариант для статической сортировки\n            if (isset($Block->sort_var_name, $IN[(string)$Block->sort_var_name])) {\n                $sortKey = $IN[(string)$Block->sort_var_name];\n                if ($f = $MType->fields[$sortKey]->id) {\n                    $sortFunction[] = \'strnatcmp($a[\"\' . addslashes($sortKey) . \'\"], $b[\"\' . addslashes($sortKey) . \'\"])\';\n                }\n            }\n            $sortFunction[] = \'((int)$a[\"price\"] - (int)$b[\"price\"])\';\n        }\n        $sortFunction = \'return (\' . implode(\' ?: \', $sortFunction) . \');\';\n        $sortFunction = create_function(\'$a, $b\', $sortFunction);\n        usort($Set, $sortFunction);\n\n        if (isset($Block->pages_var_name, $Block->rows_per_page) && (int)$Block->rows_per_page) {\n            $Pages = new \\SOME\\Pages(isset($IN[$Block->pages_var_name]) ? (int)$IN[$Block->pages_var_name] : 1, (int)$Block->rows_per_page);\n        }\n\n        $Set = \\SOME\\SOME::getArraySet($Set, $Pages);\n        $nativeFields = Material::_classes();\n        $nativeFields = $nativeFields[\'RAAS\\\\CMS\\\\Material\'][\'fields\'];\n        $Set = array_map(function ($row) use ($nativeFields) {\n            $native = array_intersect_key($row, array_flip($nativeFields));\n            $row2 = new Material($native);\n            $row2->metacache = $row;\n            return $row2;\n        }, $Set);\n\n        $OUT[\'Set\'] = $Set;\n        if ($Pages !== null) {\n            $OUT[\'Pages\'] = $Pages;\n        }\n    }\n\n    $OUT[\'MType\'] = $MType;\n    $OUT[\'doSearch\'] = $doSearch;\n}\nreturn $OUT;\n', 0),
(32, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'cart', '<?php\nnamespace RAAS\\CMS\\Shop;\n\nuse \\RAAS\\CMS\\Material;\nuse \\RAAS\\CMS\\Package;\n\nfunction formatPrice($price)\n{\n    $remainder = (float)$price - (float)(int)$price;\n    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));\n}\n\nif ($_GET[\'AJAX\']) {\n    $temp = array();\n    $temp[\'count\'] = (int)$Cart->count;\n    $temp[\'sum\'] = (float)$Cart->sum;\n    $temp[\'no_amount\'] = (int)$Cart->no_amount;\n    foreach ($Cart->items as $row) {\n        $row2 = new Material($row->id);\n        $temp[\'items\'][] = array(\n            \'id\' => $row->id,\n            \'meta\' => $row->meta,\n            \'amount\' => $row->amount,\n            \'price\' => $row->realprice,\n            \'name\' => $row->name,\n            \'url\' => $row2->url,\n			      \'image\' => \'/\' . $row2->visImages[0]->smallURL,\n            \'min\' => $row2->min,\n        );\n    }\n    echo json_encode($temp);\n    exit;\n} elseif ($epayWidget && ($epayWidget instanceof \\RAAS\\CMS\\Snippet)) {\n    eval(\'?\' . \'>\' . $epayWidget->description);\n} elseif ($success[(int)$Block->id]) {\n    ?>\n    <div class=\"notifications\">\n      <div class=\"alert alert-success\"><?php echo sprintf(ORDER_SUCCESSFULLY_SENT, $Item->id)?></div>\n    </div>\n<?php } elseif ($Cart->items) { ?>\n    <div class=\"cart\">\n      <form action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">\n        <div class=\"cart__inner\">\n          <table class=\"table table-striped cart-table\" data-role=\"cart-table\">\n            <thead>\n              <tr>\n                <th class=\"cart-table__image-col\"><?php echo IMAGE?></th>\n                <th class=\"cart-table__name-col\"><?php echo NAME?></th>\n                <th class=\"cart-table__price-col\"><?php echo PRICE?></th>\n                <?php if (!$Cart->cartType->no_amount) { ?>\n                    <th class=\"cart-table__amount-col\"><?php echo AMOUNT?></th>\n                    <th class=\"cart-table__sum-col\"><?php echo SUM?></th>\n                <?php } ?>\n                <th class=\"cart-table__actions-col\"></th>\n              </tr>\n            </thead>\n            <tbody data-role=\"cart__body_main\">\n              <?php $sum = $am = 0; foreach ($Cart->items as $row) { $row2 = new Material((int)$row->id); ?>\n                <tr data-role=\"cart-item\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo number_format($row->realprice, 2, \'.\', \'\')?>\">\n                  <td class=\"cart-table__image-col\">\n                    <?php if ($row2->visImages) { ?>\n                        <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\"\' : \'\'?>>\n                          <img src=\"/<?php echo htmlspecialchars(addslashes($row2->visImages[0]->smallURL))?>\" style=\"max-width: 48px\" alt=\"<?php echo htmlspecialchars($row2->visImages[0]->name ?: $row->name)?>\" /></a>\n                    <?php } ?>\n                  </td>\n                  <td class=\"cart-table__name-col\"><a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a></td>\n                  <td data-role=\"price\" class=\"cart-table__price-col\">\n                    <?php echo formatPrice($row->realprice)?> <span class=\"fa fa-rub\"></span>\n                    <?php if ($Cart->cartType->no_amount) { ?>\n                        <input type=\"hidden\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" value=\"<?php echo (int)$row->amount?>\" />\n                    <?php } ?>\n                  </td>\n                  <?php if (!$Cart->cartType->no_amount) { ?>\n                      <td class=\"cart-table__amount-col\"><input type=\"number\" class=\"form-control\" style=\"max-width: 8em\" data-role=\"amount\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" min=\"<?php echo (int)$row2->min ?: 1?>\" value=\"<?php echo (int)$row->amount?>\" /></td>\n                      <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>\n                  <?php } ?>\n                  <td class=\"cart-table__actions-col\">\n                    <a href=\"?action=delete&id=<?php echo (int)$row->id . ($row->meta ? \'&meta=\' . htmlspecialchars($row->meta) : \'\')?>\" data-role=\"delete-item\">\n                      <i class=\"fa fa-remove\" title=\"<?php echo DELETE?>\"></i>\n                    </a>\n                  </td>\n                </tr>\n              <?php $sum += $row->amount * $row->realprice; $am += $row->amount; } ?>\n			</tbody>\n			<tbody>\n              <?php if ($Form->id) { ?>\n                  <tr>\n                    <th colspan=\"<?php echo !$Cart->cartType->no_amount ? \'3\' : \'2\'?>\"><?php echo TOTAL_SUM?>:</th>\n                    <?php if (!$Cart->cartType->no_amount) { ?>\n                        <th class=\"cart-table__amount-col\"><span data-role=\"total-amount\"><?php echo (int)$am; ?></span></td>\n                    <?php } ?>\n                    <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>\n                    <th class=\"cart-table__actions-col\"></th>\n                  </tr>\n              <?php } ?>\n            </tbody>\n          </table>\n        </div>\n        <?php if ($Form->id) { ?>\n            <div class=\"form-horizontal\">\n              <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>\n              <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n                <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>\n                <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n                  <ul>\n                    <?php foreach ((array)$localError as $key => $val) { ?>\n                        <li><?php echo htmlspecialchars($val)?></li>\n                    <?php } ?>\n                  </ul>\n                </div>\n              </div>\n\n              <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>\n                <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>\n                <?php if ($Form->signature) { ?>\n                      <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />\n                <?php } ?>\n                <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>\n                      <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />\n                <?php } ?>\n                <?php foreach ($Form->fields as $row) { ?>\n                    <div class=\"form-group\">\n                      <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>\n                      <div class=\"col-sm-9 col-md-4\">\n                        <?php $getField($row, $DATA); ?>\n                      </div>\n                    </div>\n                <?php } ?>\n                <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>\n                    <div class=\"form-group\">\n                      <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo CAPTCHA?></label>\n                      <div class=\"col-sm-9 col-md-4\">\n                        <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />\n                        <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />\n                      </div>\n                    </div>\n                <?php } ?>\n                <?php if ($Block->EPay_Interface->id && !$Form->fields[\'epay\']) { ?>\n                    <div class=\"form-group\">\n                      <label for=\"name\" class=\"control-label col-sm-3 col-md-2\"><?php echo PAYMENT_METHOD?></label>\n                      <div class=\"col-sm-9 col-md-4\">\n                        <label><input type=\"radio\" name=\"epay\" value=\"0\" <?php echo !$DATA[\'epay\'] ? \'checked=\"checked\"\' : \'\'?> /> <?php echo PAY_ON_DELIVERY?></label>\n                        <label><input type=\"radio\" name=\"epay\" value=\"1\" <?php echo $DATA[\'epay\'] ? \'checked=\"checked\"\' : \'\'?> /> <?php echo PAY_BY_EPAY?></label>\n                      </div>\n                    </div>\n                <?php } ?>\n                <div class=\"form-group\">\n                  <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button></div>\n                </div>\n              </div>\n            </div>\n        <?php } else { ?>\n          <p><a href=\"?action=clear\" data-role=\"clear-cart-trigger\"><?php echo CLEAR_FAVORITES?></a></p>\n        <?php } ?>\n      </form>\n    </div>\n    <script src=\"/js/cart.js\"></script>\n<?php\n} else {\n    if ($Form->id) {\n        echo YOUR_CART_IS_EMPTY;\n    } else {\n        echo YOUR_FAVORITES_IS_EMPTY;\n    }\n}\n?>\n', 0),
(33, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'robokassa', '<?php\nnamespace RAAS\\CMS\\Shop;\n\nuse \\RAAS\\CMS\\Material;\nuse \\RAAS\\CMS\\Package;\n\nif ($success[(int)$Block->id] || $localError) {\n    ?>\n    <div class=\"notifications\">\n      <?php if ($success[(int)$Block->id]) { ?>\n          <div class=\"alert alert-success\"><?php echo htmlspecialchars($success[(int)$Block->id])?></div>\n      <?php } elseif ($localError) { ?>\n          <div class=\"alert alert-danger\">\n            <ul>\n              <?php foreach ((array)$localError as $key => $val) { ?>\n                  <li><?php echo htmlspecialchars($val)?></li>\n              <?php } ?>\n            </ul>\n          </div>\n      <?php } ?>\n    </div>\n<?php } ?>\n<?php if ($Item->id) { ?>\n    <section class=\"cart\">\n      <h2><?php echo htmlspecialchars(sprintf(ORDER_NUM, (int)$Item->id, $_SERVER[\'HTTP_HOST\']))?></h2>\n      <table class=\"table table-striped cart-table\" data-role=\"cart-table\">\n        <thead>\n          <tr>\n            <th class=\"cart-table__image-col\"><?php echo IMAGE?></th>\n            <th class=\"cart-table__name-col\"><?php echo NAME?></th>\n            <th class=\"cart-table__price-col\"><?php echo PRICE?></th>\n            <th class=\"cart-table__amount-col\"><?php echo AMOUNT?></th>\n            <th class=\"cart-table__sum-col\"><?php echo SUM?></th>\n          </tr>\n        </thead>\n        <tbody>\n          <?php foreach ($Item->items as $row) { $row2 = new Material((int)$row->id); ?>\n            <tr data-role=\"cart-item\">\n              <td class=\"text-center cart-table__image-col\">\n                <?php if ($row2->visImages) { ?>\n                    <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\" target=\"_blank\"\' : \'\'?>>\n                      <img src=\"/<?php echo htmlspecialchars(addslashes($row2->visImages[0]->tnURL))?>\" style=\"max-width: 48px\" alt=\"<?php echo htmlspecialchars($row2->visImages[0]->name ?: $row->name)?>\" target=\"_blank\" /></a>\n                <?php } ?>\n              </td>\n              <td class=\"cart-table__name-col\">\n                <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\" target=\"_blank\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a>\n              </td>\n              <td data-role=\"price\" class=\"cart-table__price-col\">\n                <?php echo formatPrice($row->realprice)?> <span class=\"fa fa-rub\"></span>\n              </td>\n              <td class=\"cart-table__amount-col\"><?php echo (int)$row->amount?></td>\n              <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>\n            </tr>\n          <?php } ?>\n          <tr>\n            <th colspan=\"3\"><?php echo TOTAL_SUM?>:</th>\n            <th class=\"cart-table__amount-col\"><span data-role=\"total-amount\"><?php echo (int)$Item->count; ?></span></td>\n            <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($Item->sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>\n          </tr>\n        </tbody>\n      </table>\n      <div class=\"form-horizontal\">\n        <div data-role=\"feedback-form\">\n          <div class=\"form-group\">\n            <label class=\"control-label col-sm-3 col-md-2\"><?php echo YOUR_ORDER_ID?></label>\n            <div class=\"col-sm-9 col-md-4\"><strong><?php echo (int)$Item->id?></strong></div>\n          </div>\n          <?php foreach ($Item->fields as $row) { ?>\n              <div class=\"form-group\">\n                <label class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name)?></label>\n                <div class=\"col-sm-9 col-md-4\"><?php echo htmlspecialchars($Item->fields[$row->urn]->doRich())?></div>\n              </div>\n          <?php } ?>\n          <?php if ($requestForPayment) { ?>\n              <div class=\"form-group\">\n                <form action=\"<?php echo htmlspecialchars($paymentURL)?>\" method=\"post\" enctype=\"multipart/form-data\">\n                  <input type=\"hidden\" name=\"MrchLogin\" value=\"<?php echo htmlspecialchars($Block->epay_login)?>\" />\n                  <input type=\"hidden\" name=\"OutSum\" value=\"<?php echo number_format((float)$Item->sum, 2, \'.\', \'\')?>\" />\n                  <input type=\"hidden\" name=\"InvId\" value=\"<?php echo (int)$Item->id?>\" />\n                  <input type=\"hidden\" name=\"Desc\" value=\"<?php echo sprintf(ORDER_NUM, (int)$Item->id, $_SERVER[\'HTTP_HOST\'])?>\" />\n                  <input type=\"hidden\" name=\"SignatureValue\" value=\"<?php echo htmlspecialchars($crc)?>\" />\n                  <?php if (!$Block->epay_test && $Block->epay_currency && ($Block->epay_currency != \'RUR\')) { ?>\n                      <input type=\"hidden\" name=\"OutSumCurrency\" value=\"<?php echo htmlspecialchars($Block->epay_currency)?>\" />\n                  <?php } ?>\n                  <input type=\"hidden\" name=\"Culture\" value=\"<?php echo htmlspecialchars($Page->lang)?>\" />\n                  <input type=\"hidden\" name=\"Encoding\" value=\"UTF-8\" />\n                  <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo PAY?></button></div>\n                </form>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n    </section>\n<?php } ?>\n', 0),
(34, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'yml', '<?php\nnamespace RAAS\\CMS\\Shop;\n\nuse \\DOMDocument;\n\nheader(\'Content-Type: application/xml\');\n// echo $yml->asXML();\n// $dom = new DOMDocument(\'1.0\');\n// $dom->preserveWhiteSpace = false;\n// $dom->formatOutput = true;\n// $dom->loadXML($yml->asXML());\n// echo $dom->saveXML();\n', 0),
(35, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'item_inc', '<?php\nnamespace RAAS\\CMS\\Shop;\n\n$formatPrice = function($price) {\n    $remainder = (float)$price - (float)(int)$price;\n    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));\n};\n\n$showItem = function($row) use ($formatPrice)\n{\n    ?>\n    <div class=\"catalog-item\">\n      <div class=\"catalog-item__title\">\n        <a href=\"<?php echo $row->url?>\"><?php echo htmlspecialchars($row->name)?></a>\n      </div>\n      <?php if ($row->article) { ?>\n          <div class=\"catalog-item__article\">\n            <?php echo ARTICLE_SHORT?>\n            <a href=\"<?php echo $row->url?>\"><?php echo htmlspecialchars($row->article)?></a>\n          </div>\n      <?php } ?>\n      <a href=\"<?php echo $row->url?>\" class=\"catalog-item__image<?php echo !$row->visImages ? \' catalog-item__image_nophoto\' : \'\'?>\">\n        <?php if ($row->visImages) { ?>\n            <img src=\"/<?php echo htmlspecialchars(addslashes($row->visImages[0]->smallURL))?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />\n        <?php } ?>\n      </a>\n      <form action=\"/cart/\" class=\"catalog-item__controls\" data-role=\"add-to-cart-form\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo (int)$row->price?>\">\n        <?php if ($row->available) { ?>\n            <input type=\"hidden\" name=\"action\" value=\"add\" />\n            <input type=\"hidden\" name=\"id\" value=\"<?php echo (int)$row->id?>\" />\n            <input type=\"hidden\" name=\"back\" value=\"1\" />\n            <?php /* <input type=\"hidden\" name=\"amount\" value=\"1\" /> */?>\n        <?php } ?>\n        <div class=\"catalog-item__text\">\n          <div class=\"catalog-item__price-container\" data-price=\"<?php echo (float)$row->price?>\">\n            <?php if ($row->price_old && ($row->price_old != $row->price)) { ?>\n                <span class=\"catalog-item__price catalog-item__price_old\"><?php echo $formatPrice((float)$row->price_old)?></span>\n            <?php } ?>\n            <span class=\"catalog-item__price <?php echo ($row->price_old && ($row->price_old != $row->price)) ? \' catalog-item__price_new\' : \'\'?>\">\n              <span data-role=\"price-container\">\n                <?php echo $formatPrice((float)$row->price)?>\n              </span>\n              <i class=\"fa fa-rub\"></i>\n            </span>\n          </div>\n          <div class=\"catalog-item__available\"><?php echo $row->available ? \'<span class=\"text-success\">В наличии</span>\' : \'<span class=\"text-danger\">Под заказ</span>\'?></div>\n        </div>\n        <div class=\"catalog-item__read-more\">\n          <!--noindex-->\n          <div class=\"catalog-item__add-to-cart\">\n            <?php if ($row->available) { ?>\n                <input type=\"number\" class=\"form-control\" autocomplete=\"off\" name=\"amount\" min=\"<?php echo (int)$row->min ?: 1?>\" step=\"<?php echo (int)$row->step ?: 1?>\" value=\"<?php echo (int)$row->min ?: 1?>\" />\n                <button type=\"submit\" class=\"btn btn-danger\" title=\"<?php echo TO_CART?>\"><span class=\"fa fa-shopping-cart\"></span></button>\n                <?php /* <a href=\"/cart/?action=add&id=<?php echo (int)$row->id?>\" class=\"btn btn-danger\" data-role=\"add-to-cart-trigger\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo (int)$row->price?>\" title=\"<?php echo TO_CART?>\" data-active-title=\"<?php echo DELETE_FROM_CART?>\"><span class=\"fa fa-shopping-cart\"></span></a> */ ?>\n            <?php } ?>\n            <a href=\"/favorites/?action=add&id=<?php echo (int)$row->id?>\" class=\"btn btn-info\" data-role=\"add-to-favorites-trigger\" data-id=\"<?php echo (int)$row->id?>\" title=\"<?php echo TO_FAVORITES?>\" data-active-title=\"<?php echo DELETE_FROM_FAVORITES?>\" rel=\"nofollow\"><span class=\"fa fa-star\"></span></a>\n          </div>\n          <!--/noindex-->\n        </div>\n      </form>\n    </div>\n    <?php\n};\n', 0),
(36, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'category_inc', '<?php\nnamespace RAAS\\CMS\\Shop;\n\n$showCategory = function($row)\n{\n    $queryString = http_build_query(array_intersect_key($_GET, array_flip(array(\'brand\', \'model\', \'engine\'))));\n    $queryString = $queryString ? \'?\' . $queryString : \'\';\n    ?>\n    <a class=\"catalog-category\" href=\"<?php echo $row->url . $queryString ?>\">\n      <div class=\"catalog-category__image<?php echo !$row->image->id ? \' catalog-category__image_nophoto\' : \'\'?>\">\n        <?php if ($row->image->id) { ?>\n            <img src=\"/<?php echo htmlspecialchars(addslashes($row->image->smallURL))?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />\n        <?php } ?>\n      </div>\n      <div class=\"catalog-category__text\">\n        <div class=\"catalog-category__title\">\n          <?php echo htmlspecialchars($row->name . ((int)$row->counter ? \' (\' . (int)$row->counter . \')\' : \'\'))?>\n        </div>\n      </div>\n    </a>\n    <?php\n};\n', 0);
INSERT INTO `cms_snippets` (`id`, `pid`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `locked`) VALUES
(37, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'catalog', '<?php\nnamespace RAAS\\CMS;\n\nuse RAAS\\CMS\\Shop\\Video;\nuse RAAS\\Attachment;\n\neval(\'?\' . \'>\' . Snippet::importByURN(\'category_inc\')->description);\neval(\'?\' . \'>\' . Snippet::importByURN(\'item_inc\')->description);\neval(\'?\' . \'>\' . Snippet::importByURN(\'file_inc\')->description);\n$formatPrice = function($price) {\n    $remainder = (float)$price - (float)(int)$price;\n    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));\n};\n\n\nif ($Item) {\n    ?>\n    <div class=\"catalog\">\n      <div class=\"catalog-article\" itemscope itemtype=\"http://schema.org/Product\">\n        <meta itemprop=\"name\" content=\"<?php echo htmlspecialchars($Item->name)?>\" />\n        <div class=\"catalog-article__article\">\n          <?php echo ARTICLE_SHORT?> <span itemprop=\"productID\"><?php echo htmlspecialchars($Item->article)?></span>\n        </div>\n        <div class=\"row\">\n          <?php if ($Item->visImages) { ?>\n              <div class=\"col-sm-6 col-lg-5\">\n                <div class=\"catalog-article__images-container\">\n                  <div class=\"catalog-article__image\">\n                    <?php for ($i = 0; $i < count($Item->visImages); $i++) { ?>\n                        <a itemprop=\"image\" href=\"/<?php echo $Item->visImages[$i]->fileURL?>\" <?php echo $i ? \'style=\"display: none\"\' : \'\'?> data-image-num=\"<?php echo (int)$i?>\" data-lightbox-gallery=\"g\">\n                          <img src=\"/<?php echo htmlspecialchars($Item->visImages[$i]->tnURL)?>\" alt=\"<?php echo htmlspecialchars($Item->visImages[$i]->name ?: $row->name)?>\" /></a>\n                    <?php } ?>\n                  </div>\n                  <?php if (count($Item->visImages) > 1) { ?>\n                      <div class=\"catalog-article__images hidden-xs\">\n                        <?php for ($i = 0; $i < count($Item->visImages); $i++) { $row = $Item->visImages[$i]; ?>\n                            <div data-href=\"/<?php echo htmlspecialchars(addslashes($row->fileURL))?>\" class=\"catalog-article__additional-image\" data-image-num=\"<?php echo (int)$i?>\">\n                              <img src=\"/<?php echo htmlspecialchars($row->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->name)?>\" /></div>\n                        <?php } ?>\n                      </div>\n                  <?php } ?>\n                </div>\n              </div>\n          <?php } ?>\n          <div class=\"col-sm-6 col-lg-7\">\n            <div class=\"catalog-article__details\">\n              <div itemprop=\"offers\" itemscope itemtype=\"http://schema.org/Offer\">\n                <div class=\"catalog-article__text\">\n                  <div class=\"catalog-article__price-container\" data-price=\"<?php echo (float)$Item->price?>\">\n                    <?php if ($Item->price_old && ($Item->price_old != $Item->price)) { ?>\n                        <span class=\"catalog-article__price catalog-article__price_old\"><?php echo $formatPrice((float)$Item->price_old)?></span>\n                    <?php } ?>\n                    <span class=\"catalog-article__price <?php echo ($Item->price_old && ($Item->price_old != $Item->price)) ? \' catalog-article__price_new\' : \'\'?>\">\n                      <span data-role=\"price-container\" itemprop=\"price\" content=\"<?php echo (float)$Item->price?>\">\n                        <?php echo $formatPrice((float)$Item->price)?>\n                      </span>\n                      <i class=\"fa fa-rub\" itemprop=\"priceCurrency\" content=\"RUB\"></i>\n                    </span>\n                  </div>\n                </div>\n                <div class=\"catalog-article__available\">\n                  <link itemprop=\"availability\" href=\"http://schema.org/<?php echo $Item->available ? \'InStock\' : \'PreOrder\'?>\" />\n                  <?php echo $Item->available ? \'<span class=\"text-success\">\' . AVAILABLE . \'</span>\' : \'<span class=\"text-danger\">\' . AVAILABLE_CUSTOM . \'</span>\'?>\n                </div>\n              </div>\n              <!--noindex-->\n              <form action=\"/cart/\" class=\"catalog-article__controls\" data-role=\"add-to-cart-form\" data-id=\"<?php echo (int)$Item->id?>\" data-price=\"<?php echo (int)$Item->price?>\">\n                <?php if ($Item->available) { ?>\n                    <input type=\"hidden\" name=\"action\" value=\"add\" />\n                    <input type=\"hidden\" name=\"id\" value=\"<?php echo (int)$Item->id?>\" />\n                    <input type=\"hidden\" name=\"back\" value=\"1\" />\n                    <input type=\"number\" class=\"form-control\" autocomplete=\"off\" name=\"amount\" min=\"<?php echo (int)$Item->min ?: 1?>\" step=\"<?php echo (int)$Item->step ?: 1?>\" value=\"<?php echo (int)$Item->min ?: 1?>\" />\n                    <button type=\"submit\" class=\"btn btn-danger\"><?php echo TO_CART?></button>\n                    <?php /* <a href=\"/cart/?action=add&id=<?php echo (int)$Item->id?>\" class=\"btn btn-danger\" data-role=\"add-to-cart-trigger\" data-id=\"<?php echo (int)$Item->id?>\" data-price=\"<?php echo (int)$Item->price?>\" data-active-html=\"<?php echo DELETE_FROM_CART?>\"><?php echo TO_CART?></button> */ ?>\n                <?php } ?>\n                <a href=\"/favorites/?action=add&id=<?php echo (int)$Item->id?>\" class=\"btn btn-info\" data-role=\"add-to-favorites-trigger\" data-id=\"<?php echo (int)$Item->id?>\" data-active-html=\"<?php echo DELETE_FROM_FAVORITES?>\" rel=\"nofollow\"><?php echo TO_FAVORITES?></a>\n              </form>\n              <!--/noindex-->\n              <!--noindex-->\n              <div class=\"share\">\n                <script type=\"text/javascript\" src=\"//yastatic.net/share/share.js\" charset=\"utf-8\"></script>\n                <?php echo SHARE?>: <div class=\"yashare-auto-init\" style=\"display: inline-block; vertical-align: middle\" data-yashareL10n=\"ru\" data-yashareQuickServices=\"vkontakte,facebook,twitter,odnoklassniki,moimir\" data-yashareTheme=\"counter\"></div>\n              </div>\n              <!--/noindex-->\n              <?php\n              $propsText = \'\';\n              $brands = $models = array();\n              foreach ((array)$Item->model as $val) {\n                  $brands[$val->brand->id] = $val->brand->name;\n                  $models[$val->id] = $val->name;\n              }\n              unset($temp);\n              foreach ($Item->fields as $key => $val) {\n                  if (\n                      !in_array(\n                          $val->urn,\n                          array(\'images\', \'brief\', \'videos\', \'videos_url\', \'files\', \'onmain\', \'article\', \'price\', \'price_old\', \'available\', \'min\', \'step\')\n                      ) &&\n                      !in_array($val->datatype, array(\'image\', \'file\', \'material\', \'checkbox\'))\n                  ) {\n                      if ($val->doRich()) {\n                          $v = implode(\', \', array_map(function($x) use ($val) { return $val->doRich($x); }, $val->getValues(true)));\n                          switch ($key) {\n                              case \'width\': case \'height\':\n                                  $propsText .= \' <tr>\n                                                    <th>\' . htmlspecialchars($val->name) . \': </th>\n                                                    <td itemprop=\"<?php echo $key?>\" itemtype=\"http://schema.org/QuantitativeValue\">\n                                                      <span itemprop=\"value\">\' . $v . \'</span>\n                                                    </td>\n                                                  </tr>\';\n                                  break;\n                              case \'article\':\n                                  $propsText .= \' <tr>\n                                                    <th>\' . htmlspecialchars($val->name) . \': </th>\n                                                    <td itemprop=\"productID\">\' . $val[\'doRich\'] . \'</td>\n                                                  </tr>\';\n                                  break;\n                              case \'brand\':\n                                  $propsText .= \' <tr>\n                                                    <th>\' . htmlspecialchars($val->name) . \': </th>\n                                                    <td itemprop=\"brand\" itemscope itemtype=\"http://schema.org/Brand\">\n                                                      <span itemprop=\"name\">\' . $v . \'</span>\n                                                    </td>\n                                                  </tr>\';\n                                  break;\n                              default:\n                                  $propsText .= \' <tr itemprop=\"additionalProperty\" itemscope itemtype=\"http://schema.org/PropertyValue\">\n                                                    <th itemprop=\"name\">\' . htmlspecialchars($val->name) . \': </th>\n                                                    <td itemprop=\"value\">\' . $v . \'</td>\n                                                  </tr>\';\n                                  break;\n                          }\n                      }\n                  }\n              }\n              if ($propsText) {\n                  echo \'<div class=\"catalog-article__props\">\n                          <table class=\"table table-striped\"><tbody>\' . $propsText . \'</tbody></table>\n                        </div>\n                        <div class=\"clearfix\"></div>\';\n              }\n              ?>\n            </div>\n          </div>\n        </div>\n        <?php\n        $tabs = array();\n        foreach (array(\'description\', \'files\', \'videos\', \'reviews\', \'related\') as $key) {\n            $text = \'\';\n            $name = $Item->fields[$key]->name;\n            switch ($key) {\n                case \'description\':\n                    $name = DESCRIPTION;\n                    $text = \'<div itemprop=\"description\">\' . trim($Item->description) . \'</div>\';\n                    break;\n                case \'files\':\n                    if ($Item->files) {\n                        $text = \'<div class=\"catalog-article__files\">\';\n                        foreach ($Item->files as $file) {\n                            $text .= \'<div class=\"catalog-article__file\">\n                                        <a href=\"/\' . htmlspecialchars($file->fileURL) . \'\">\'\n                                  .  \'    <span class=\"fa \' . $getFileIcon($file) . \'\"></span> \'\n                                  .       htmlspecialchars($file->name ?: basename($file->fileURL))\n                                  . \'   </a>\n                                      </div>\';\n                        }\n                        $text .= \'</div>\';\n                    }\n                    break;\n                case \'videos\':\n                    if ($Item->videos) {\n                        $text .= \'<div class=\"catalog-article__videos\">\';\n                        for ($i = 0; $i < (count($Item->videos) / 4); $i++) {\n                            $text .= \'<div class=\"row\">\';\n                            for ($j = $i * 4; $j < ($i + 1) * 4; $j++) {\n                                if ($val = $Item->videos[$j]) {\n                                    $ytid = $ytname = \'\';\n                                    if (preg_match(\'/^(.*?)((http(s?):\\\\/\\\\/.*?(((\\\\?|&)v=)|(embed\\\\/)|(youtu\\\\.be\\\\/)))([\\\\w\\\\-\\\\_]+).*?)$/\', $val, $regs)) {\n                                        $ytname = trim($regs[1]);\n                                        $ytid = trim($regs[10]);\n                                    }\n                                    if (!$ytname) {\n                                        $url = \'https://www.googleapis.com/youtube/v3/videos?part=snippet&id=\' . $ytid . \'&key=AIzaSyCJgMFQqq6Ax9WlGhuslTz4viyG3RbPEic\';\n                                        $json = file_get_contents($url);\n                                        $json = json_decode($json, true);\n                                        if (isset($json[\'items\'][0][\'snippet\'][\'title\'])) {\n                                            $ytname = trim($json[\'items\'][0][\'snippet\'][\'title\']);\n                                        }\n                                    }\n                                    $text .= \'<div class=\"col-sm-3\">\n                                                <div class=\"catalog-article__video\">\n                                                  <a href=\"https://youtube.com/embed/\' . $ytid . \'\" data-lightbox-gallery=\"v\" title=\"\' . htmlspecialchars($ytname) . \'\">\n                                                    <img src=\"https://i.ytimg.com/vi/\' . htmlspecialchars($ytid) . \'/hqdefault.jpg\" alt=\"\' . htmlspecialchars($ytname) . \'\">\n                                                  </a>\n                                                </div>\n                                              </div>\';\n\n                                }\n                            }\n                            $text .= \'</div>\';\n                        }\n                        $text .= \'</div>\';\n                    }\n                    break;\n                case \'reviews\':\n                    $name = REVIEWS . ($comments ? \' (\' . count($comments) . \')\' : \'\');\n                    ob_start();\n                    if ($comments) {\n                        eval(\'?\' . \'>\' . Snippet::importByURN(\'goods_comments\')->description);\n                    }\n                    if ($commentFormBlock) {\n                        $commentFormBlock->process($Page);\n                    }\n                    $text .= ob_get_clean();\n                    break;\n                case \'related\':\n                    if ($Item->related) {\n                        $text .= \'<div class=\"row catalog-list catalog-list_related\">\';\n                        foreach ($Item->related as $row) {\n                            $text .= \'<div class=\"catalog-list__item\">\';\n                            ob_start();\n                            $showItem($row);\n                            $text .= ob_get_clean();\n                            $text .= \'</div>\';\n                        }\n                        $text .= \'</div>\';\n                    }\n                    break;\n            }\n            if ($text) {\n                $tabs[$key] = array(\'name\' => $name, \'description\' => $text);\n            }\n        }\n        if ($tabs) {\n            ?>\n            <ul class=\"nav nav-tabs\" role=\"tablist\">\n              <?php $i = 0; foreach ($tabs as $key => $row) { ?>\n                  <li<?php echo !$i ? \' class=\"active\"\' : \'\'?>>\n                    <a href=\"#<?php echo $key?>\" aria-controls=\"<?php echo $key?>\" role=\"tab\" data-toggle=\"tab\">\n                      <?php echo htmlspecialchars($row[\'name\'])?>\n                    </a>\n                  </li>\n              <?php $i++; } ?>\n            </ul>\n            <div class=\"tab-content\" style=\"padding: 15px 0;\">\n              <?php $i = 0; foreach ($tabs as $key => $row) { ?>\n                  <div class=\"tab-pane<?php echo !$i ? \' active\' : \'\'?>\" id=\"<?php echo $key?>\"><?php echo $row[\'description\']?></div>\n              <?php $i++; } ?>\n            </div>\n        <?php } ?>\n      </div>\n    </div>\n<?php } else { ?>\n    <div class=\"catalog\">\n      <?php if ($Page->pid) { ?>\n          <div class=\"catalog__filter\">\n            <?php eval(\'?\' . \'>\' . Snippet::importByURN(\'catalog_filter\')->description)?>\n          </div>\n          <?php\n      }\n      ?>\n      <div class=\"catalog__inner\">\n        <?php\n        if ($Set || $subCats) {\n            if ($subCats) {\n                ?>\n                <div class=\"catalog__categories-list\">\n                  <div class=\"catalog-categories-list\">\n                    <?php foreach ($subCats as $row) { ?>\n                        <div class=\"catalog-categories-list__item\">\n                          <?php $showCategory($row);?>\n                        </div>\n                    <?php } ?>\n                  </div>\n                </div>\n                <?php\n            }\n            if ($Set) {\n                ?>\n                <div class=\"catalog__list\">\n                  <div class=\"catalog-list\">\n                    <?php foreach ($Set as $row) { ?>\n                        <div class=\"catalog-list__item\">\n                          <?php $showItem($row)?>\n                        </div>\n                    <?php } ?>\n                  </div>\n                </div>\n            <?php } ?>\n        <?php } else { ?>\n            <p><?php echo NO_RESULTS_FOUND?></p>\n        <?php } ?>\n      </div>\n      <?php\n      if ($Set) {\n          include \\RAAS\\CMS\\Package::i()->resourcesDir . \'/pages.inc.php\';\n          if ($Pages->pages > 1) {\n              ?>\n              <div data-pages=\"<?php echo $Pages->pages?>\">\n                <ul class=\"pagination pull-right\">\n                  <?php\n                  echo $outputNav(\n                      $Pages,\n                      array(\n                          \'pattern\' => \'<li><a href=\"\' . \\SOME\\HTTP::queryString(\'page={link}\') . \'\">{text}</a></li>\',\n                          \'pattern_active\' => \'<li class=\"active\"><a>{text}</a></li>\',\n                          \'ellipse\' => \'<li class=\"disabled\"><a>...</a></li>\'\n                      )\n                  );\n                  ?>\n                </ul>\n              </div>\n              <div class=\"clearfix\"></div>\n          <?php } ?>\n      <?php } ?>\n    </div>\n<?php } ?>\n', 0),
(38, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'catalog_filter', '<?php\nnamespace RAAS\\CMS;\n\n$mt = microtime(1);\n$DATA = $_GET;\n$MType = Material_Type::importByURN(\'catalog\');\n$cc = new Catalog_Cache($MType);\nif (!$cc->load()) {\n    $cc->getCache();\n    $cc->save();\n}\n$cc = $cc->data;\n$cc = array_filter($cc, function($x) use ($Page) { return array_intersect(array_merge(array($Page->id), (array)$Page->all_children_ids), (array)$x[\'pages_ids\']); });\n\n$filterProps = array(/*\'example\' => \'Пример\', */);\n$filterRaw = array();\n$filter = array();\n\n// $dictionaryExample = new Dictionary(1);\n// $dictionaryExample = $dictionaryExample->children;\n// foreach ($dictionaryExample as $row) {\n//     $filterRaw[\'example\'][] = array(\'value\' => $row->urn, \'name\' => $row->name);\n// }\n\n\nforeach ($filterRaw as $key => $arr) {\n    $filterSet = $cc;\n    foreach ($filterProps as $key2 => $name) {\n        if (($key2 != $key) && $DATA[$key2]) {\n            $filterSet = array_filter(\n                $filterSet,\n                function ($x) use ($key2, $DATA) {\n                    return $x[$key2] == $DATA[$key2];\n                }\n            );\n        }\n    }\n    $filterSet = array_map(\n        function ($x) use ($key) {\n            return $x[$key];\n        },\n        $filterSet\n    );\n    $filter[$key] = array_filter(\n        $arr,\n        function ($x) use ($filterSet) {\n            return in_array($x[\'value\'], $filterSet);\n        }\n    );\n}\n\n$maxPrice = array_map(\n    function ($x) {\n        return (int)$x[\'price\'];\n    },\n    $cc\n);\n$maxPrice = max($maxPrice);\n$priceStep = 1000;\n$maxPrice = ceil($maxPrice / (int)$priceStep) * (int)$priceStep;\nif ($DATA[\'price_to\'] && $DATA[\'price_to\'] > $maxPrice) {\n    $DATA[\'price_to\'] = $maxPrice;\n}\n$price1 = floor($DATA[\'price_from\'] / (int)$priceStep) * (int)$priceStep;\n$price2 = ceil(($DATA[\'price_to\'] ?: $maxPrice) / (int)$priceStep) * (int)$priceStep;\n\n// echo microtime(1) - $mt;\n?>\n<!--noindex-->\n<div class=\"catalog-filter\">\n  <form action=\"\" method=\"get\" data-page-id=\"<?php echo (int)$Page->id?>\">\n    <div class=\"row\">\n      <div class=\"col-sm-3\">\n        <div><label><?php echo ARTICLE?></label></div>\n        <div class=\"catalog-filter__property\">\n          <input type=\"text\" class=\"form-control\" name=\"article\" placeholder=\"Артикул\" value=\"<?php echo htmlspecialchars($_GET[\'article\'])?>\">\n        </div>\n      </div>\n      <div class=\"col-sm-4\">\n        <div><label><?php echo PRICE?></label></div>\n        <div class=\"catalog-filter__property catalog-filter__price\">\n          <div class=\"row\">\n            <div class=\"col-xs-1\">от</div>\n            <div class=\"col-xs-5\"><input type=\"number\" class=\"form-control\" min=\"0\" max=\"<?php echo (int)$maxPrice?>\" step=\"<?php echo (int)$priceStep?>\" name=\"price_from\" placeholder=\"От\" value=\"<?php echo htmlspecialchars($price1)?>\"></div>\n            <div class=\"col-xs-1\">до</div>\n            <div class=\"col-xs-5\"><input type=\"number\" class=\"form-control\" min=\"0\" max=\"<?php echo (int)$maxPrice?>\" step=\"<?php echo (int)$priceStep?>\" name=\"price_to\" placeholder=\"До\" value=\"<?php echo htmlspecialchars($price2)?>\"></div>\n          </div>\n          <div class=\"catalog-filter__slider\" id=\"catalog-filter__slider\"></div>\n        </div>\n      </div>\n      <div class=\"col-sm-3\">\n        <div class=\"hidden-xs\"><label>&nbsp;</label></div>\n        <div class=\"catalog-filter__property catalog-filter__property_search\">\n          <button type=\"submit\" class=\"btn btn-primary\"><?php echo DO_SEARCH?></button>\n          <a href=\"<?php echo htmlspecialchars($Page->url)?>\" class=\"btn btn-default\"><?php echo RESET?></a>\n        </div>\n      </div>\n    </div>\n    <div class=\"row\">\n      <div class=\"col-sm-3\"></div>\n      <div class=\"col-sm-4\"></div>\n      <div class=\"col-sm-1\"></div>\n    </div>\n  </form>\n  <script src=\"/js/catalog_filter.js\"></script>\n</div>\n<!--/noindex-->\n', 0),
(39, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'cart_main', '<?php\nnamespace RAAS\\CMS\\Shop;\n\n?>\n<!--noindex-->\n<a href=\"/cart/\" data-role=\"cart-block\" class=\"cart-main\" style=\"display: none\" rel=\"nofollow\">\n  <?php echo IN_YOUR_CART?><br />\n  <strong data-role=\"cart-block-amount\"></strong><br />\n  <?php echo TO_AMOUNT_OF?> <strong data-role=\"cart-block-sum\"></strong> <i class=\"fa fa-rub\"></i>\n</a>\n<!--/noindex-->\n', 0),
(40, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'favorites_main', '<?php\nnamespace RAAS\\CMS\\Shop;\n\n?>\n<!--noindex-->\n<a href=\"/favorites/\" data-role=\"favorites-block\" class=\"favorites-main\" style=\"display: none\" rel=\"nofollow\">\n  <?php echo IN_FAVORITES?><br />\n  <strong data-role=\"favorites-block-amount\"></strong>\n</a>\n<!--/noindex-->\n', 0),
(41, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'menu_left', '<?php\nnamespace RAAS\\CMS;\n\nuse SOME\\HTTP;\n\n$showMenu = function($node, Page $current) use (&$showMenu) {\n    static $level = 0;\n    if ($node instanceof Menu) {\n        $children = $node->visSubMenu;\n    } else {\n        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();\n    }\n    for ($i = 0; $i < count($children); $i++) {\n        $row = $children[$i];\n        $level++;\n        $ch = $showMenu($row, $current);\n        $level--;\n        if ($node instanceof Menu) {\n            $url = $row->url;\n            $name = $row->name;\n        } else {\n            $url = $row[\'url\'];\n            $name = $row[\'name\'];\n        }\n        $active = ($url == HTTP::queryString(\'\', true));\n        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;\n        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {\n            $semiactive = true;\n        }\n        $liClasses = array(\n            \'menu-left__item\',\n            \'menu-left__item_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-left__item_level_\' . $level\n        );\n        $aClasses = array(\n            \'menu-left__link\',\n            \'menu-left__link_\' . (!$level ? \'main\' : \'inner\'),\n            \'menu-left__link_level_\' . $level\n        );\n        if ($active) {\n            $liClasses[] = \'menu-left__item_active\';\n            $aClasses[] = \'menu-left__link_active\';\n        } elseif ($semiactive) {\n            $liClasses[] = \'menu-left__item_semiactive\';\n            $aClasses[] = \'menu-left__link_semiactive\';\n        }\n        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'\n              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'\n              .     $ch\n              .  \'</li>\';\n    }\n    $ulClasses = array(\n        \'menu-left__list\',\n        \'menu-left__list_\' . (!$level ? \'main\' : \'inner\'),\n        \'menu-left__list_level_\' . $level\n    );\n    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;\n};\n?>\n<div class=\"menu-left__outer left-block\">\n  <div class=\"menu-left__title left-block__title\">\n    <a href=\"/catalog/\"><?php echo CATALOG?></a>\n  </div>\n  <nav class=\"menu-left\"><?php echo $showMenu($menuArr ?: $Item, $Page)?></nav>\n</div>\n', 0),
(42, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'file_inc', '<?php\nnamespace RAAS\\CMS\\Shop;\n\n$getFileIcon = function($row)\n{\n    $ext = pathinfo($row->fileURL, PATHINFO_EXTENSION);\n    switch ($ext) {\n        case \'zip\': case \'rar\': case \'tar\': case \'gz\': case \'7z\':\n            $icon = \'archive\';\n            break;\n        case \'mp3\': case \'wav\': case \'ogg\': case \'mid\': case \'rmi\':\n            $icon = \'audio\';\n            break;\n        case \'php\': case \'html\': case \'cs\': case \'class\': case \'inc\': case \'js\': case \'css\':\n            $icon = \'code\';\n            break;\n        case \'jpg\': case \'gif\': case \'jpeg\': case \'pjpeg\': case \'bmp\': case \'tif\': case \'tiff\':\n            $icon = \'picture\';\n            break;\n        case \'pdf\':\n            $icon = \'pdf\';\n            break;\n        case \'ppt\': case \'pptx\':\n            $icon = \'powerpoint\';\n            break;\n        case \'avi\': case \'mpg\': case \'flv\':\n            $icon = \'video\';\n            break;\n        case \'doc\': case \'docx\': case \'rft\':\n            $icon = \'word\';\n            break;\n        default:\n            $icon = \'text\';\n            break;\n    }\n    return \'fa-file-\' . htmlspecialchars($icon) . \'-o\';\n};\n', 0),
(43, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'spec', '<?php\nnamespace RAAS\\CMS;\n\n$MType = Material_Type::importByURN(\'catalog\');\n$Field = $MType->fields[\'spec\'];\n$SQL_query = \"SELECT tM.* FROM \" . Material::_tablename() . \" AS tM\n                JOIN cms_data AS tD ON tD.pid = tM.id\n               WHERE tD.fid = \" . (int)$Field->id . \" AND tM.pid IN (\" . implode(\", \", array_merge(array((int)$MType->id), (array)$MType->all_children_ids)) . \")\n            GROUP BY tM.id\n            ORDER BY RAND()\n               LIMIT 20\";\n$Set = Material::getSQLSet($SQL_query);\neval(\'?\' . \'>\' . Snippet::importByURN(\'item_inc\')->description);\n?>\n<?php if ($Set) { ?>\n    <div class=\"spec\">\n      <div class=\"spec__list\" data-role=\"slider\" data-slider-carousel=\"jcarousel\" data-slider-duration=\"800\" data-slider-interval=\"3000\" data-slider-autoscroll=\"true\">\n        <div class=\"spec-list\">\n          <?php foreach ((array)$Set as $row) { ?>\n              <div class=\"spec-list__item\">\n                <?php $showItem($row); ?>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n      <a href=\"#\" class=\"spec__arrow spec__arrow_left\" data-role=\"slider-prev\"></a>\n      <a href=\"#\" class=\"spec__arrow spec__arrow_right\" data-role=\"slider-next\"></a>\n    </div>\n<?php } ?>\n', 0),
(44, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'my_orders', '<?php\nnamespace RAAS\\CMS\\Shop;\n\nfunction formatPrice($price)\n{\n    $remainder = (float)$price - (float)(int)$price;\n    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));\n}\n\n$getField = function($row) {\n    $arr = array();\n    $val = $row->doRich();\n    switch ($row->datatype) {\n        case \'date\':\n            $arr[$key] = date(DATEFORMAT, strtotime($val));\n            break;\n        case \'datetime-local\':\n            $arr[$key] = date(DATETIMEFORMAT, strtotime($val));\n            break;\n        case \'color\':\n            $arr[$key] = \'<span style=\"display: inline-block; height: 16px; width: 16px; background-color: \' . htmlspecialchars($val) . \'\"></span>\';\n            break;\n        case \'email\':\n            $arr[$key] .= \'<a href=\"mailto:\' . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';\n            break;\n        case \'url\':\n            $arr[$key] .= \'<a href=\"\' . (!preg_match(\'/^http(s)?:\\\\/\\\\//umi\', trim($val)) ? \'http://\' : \'\') . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';\n            break;\n        case \'file\':\n            $arr[$key] .= \'<a href=\"/\' . $val->fileURL . \'\">\' . htmlspecialchars($val->name) . \'</a>\';\n            break;\n        case \'image\':\n            $arr[$key] .= \'<a href=\"/\' . $val->fileURL . \'\"><img src=\"/\' . $val->tnURL. \'\" alt=\"\' . htmlspecialchars($val->name) . \'\" title=\"\' . htmlspecialchars($val->name) . \'\" /></a>\';\n            break;\n        case \'htmlarea\':\n            $arr[$key] = \'<div>\' . $val . \'</div>\';\n            break;\n        default:\n            if (!$row->multiple && ($row->datatype == \'checkbox\')) {\n                $arr[$key] = $val ? _YES : _NO;\n            } else {\n                $arr[$key] = nl2br(htmlspecialchars($val));\n            }\n            break;\n    }\n    return implode(\', \', $arr);\n};\n\n?>\n<div class=\"my-orders\">\n  <?php if ($Item) { ?>\n      <?php if (!$Item->status_id && !$Item->paid && !$Item->vis) { ?>\n          <p class=\"text-right\">\n            <a href=\"#\" data-id=\"<?php echo (int)$Item->id?>\" data-toggle=\"modal\" data-target=\"#confirmDeleteOrderModal\"><span class=\"fa fa-close\"></span> Удалить заказ</a>\n          </p>\n      <?php } ?>\n      <div class=\"form-horizontal\">\n        <div data-role=\"feedback-form\">\n          <div class=\"form-group\">\n            <label class=\"control-label col-sm-3 col-md-2\" style=\"padding-top: 0\"><?php echo STATUS?>:</label>\n            <div class=\"col-sm-9 col-md-4\"><?php echo $Item->paid ? PAYMENT_PAID : PAYMENT_NOT_PAID?></div>\n          </div>\n          <?php\n          foreach ($Item->fields as $row) {\n              if ($val = $getField($row)) {\n                  ?>\n                  <div class=\"form-group\">\n                    <label class=\"control-label col-sm-3 col-md-2\" style=\"padding-top: 0\"><?php echo htmlspecialchars($row->name)?>:</label>\n                    <div class=\"col-sm-9 col-md-4\"><?php echo $val?></div>\n                  </div>\n                  <?php\n              }\n          }\n          ?>\n        </div>\n      </div>\n      <p>&nbsp;</p>\n      <table class=\"table table-striped cart-table\" data-role=\"cart-table\">\n        <tbody>\n          <?php $sum = $am = 0; foreach ($Item->items as $row) {?>\n            <tr data-role=\"cart-item\">\n              <td class=\"cart-table__image-col\">\n                <?php if ($row->visImages) { ?>\n                    <a <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>\n                      <img src=\"/<?php echo htmlspecialchars(addslashes($row->visImages[0]->tnURL))?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" /></a>\n                <?php } ?>\n              </td>\n              <td class=\"cart-table__name-col\">\n                <h3><a <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a></h3>\n                <?php if ($Cart->cartType->no_amount) { ?>\n                    <input type=\"hidden\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" value=\"<?php echo (int)$row->amount?>\" />\n                <?php } else { ?>\n                    <p><?php echo AMOUNT . \': \' . (int)$row->amount?></p>\n                    <?php\n                }\n                foreach ($row->fields as $f) {\n                    if ($val = array_filter(array_map(array($f, \'doRich\'), $f->getValues(true)))) {\n                        ?>\n                        <p>\n                          <?php echo htmlspecialchars($f->name)?>:\n                          <?php\n                          if (in_array($key, array(\'metal\'))) {\n                              echo htmlspecialchars(mb_strtolower(implode(\', \', $val)));\n                          } else {\n                              echo htmlspecialchars(implode(\', \', $val));\n                          }\n                          ?>\n                        </p>\n                        <?php\n                    }\n                }\n                ?>\n              </td>\n              <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>\n            </tr>\n          <?php $sum += $row->amount * $row->realprice; $am += $row->amount; } ?>\n          <tr>\n            <th class=\"cart-table__image-col\"></th>\n            <th class=\"cart-table__name-col\"><?php echo TOTAL_SUM?>:</th>\n            <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>\n          </tr>\n        </tbody>\n      </table>\n\n  <?php } elseif ($Set) { ?>\n      <table class=\"table table-striped my-orders__table\">\n        <tbody>\n          <?php foreach ($Set as $row) { ?>\n              <tr>\n                <td><a href=\"<?php echo $row->urn?>/\"><?php echo Lang::i()->_(\'ORDER_NUMBER\', $Page)?> <?php echo (int)$row->id?></td>\n                <td><a href=\"<?php echo $row->urn?>/\"><?php echo date(Lang::i()->_(\'DATETIME_FORMAT\', $Page), strtotime($row->post_date))?></a></td>\n                <td>\n                  <a href=\"<?php echo $row->urn?>/\">\n                  <?php\n                  $temp = array();\n                  foreach ($row->items as $row2) {\n                      $arr = $row2->name;\n                      if ($row2->amount > 1) {\n                          $arr .= \' - \' . (int)$row2->amount . \'x\' . formatPrice($row2->realprice) . \'<span class=\"fa fa-rub\"></span> = \' . formatPrice($row2->amount * $row2->realprice) . \' <span class=\"fa fa-rub\"></span>\';\n                      } else {\n                          $arr .= \' = \' . formatPrice($row2->realprice) . \' <span class=\"fa fa-rub\"></span>\';\n                      }\n                      $temp[] = $arr;\n                  }\n                  echo implode(\'<br />\', $temp);\n                  ?>\n                  </a>\n                </td>\n                <td>\n                  <?php\n                  $temp = array();\n                  if ($row->status->id) {\n                      $temp[] = $row->status->name;\n                  } else {\n                      // $temp[] = ORDER_STATUS_NEW;\n                  }\n                  if ($row->paid) {\n                      $temp[] = PAYMENT_PAID;\n                  } else {\n                      $temp[] = PAYMENT_NOT_PAID;\n                  }\n                  echo implode(\'<br />\', $temp);\n                  ?>\n                </td>\n                <td class=\"my-orders__sum\">\n                  <a href=\"<?php echo $row->urn?>/\"><?php echo formatPrice($row->sum)?> <span class=\"fa fa-rub\"></span></a>\n                </td>\n                <td>\n                  <?php if (!$row->status_id && !$row->paid && !$row->vis) { ?>\n                      <a href=\"#\" data-id=\"<?php echo (int)$row->id?>\" data-back=\"true\" data-toggle=\"modal\" data-target=\"#confirmDeleteOrderModal\"><span class=\"fa fa-close\"></span></a>\n                  <?php } ?>\n                </td>\n              </tr>\n          <?php } ?>\n        </tbody>\n      </table>\n  <?php } else { ?>\n    <p><?php echo Lang::i()->_(\'YOU_HAVE_NO_ORDERS_YET\', $Page)?></p>\n  <?php } ?>\n</div>\n\n<div class=\"modal fade\" id=\"confirmDeleteOrderModal\" tabindex=\"-1\" role=\"dialog\">\n  <div class=\"modal-dialog\" role=\"document\">\n    <div class=\"modal-content\">\n      <div class=\"modal-header\" style=\"border-bottom: none\">\n        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n        <h4 class=\"modal-title\"><?php echo Lang::i()->_(\'ARE_YOU_SURE_TO_DELETE_THIS_ORDER\', $Page)?></h4>\n      </div>\n      <div class=\"modal-footer\">\n        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><?php echo CANCEL?></button>\n        <a href=\"#\" class=\"btn btn-primary\"><?php echo DELETE?></a>\n      </div>\n    </div>\n  </div>\n</div>\n\n<script>\njQuery(document).ready(function($) {\n    var $confirmDeleteOrderModal = $(\'#confirmDeleteOrderModal\');\n    $(\'body\').append(\'confirmDeleteOrderModal\');\n    $(\'a[data-target=\"#confirmDeleteOrderModal\"][data-toggle=\"modal\"]\').on(\'click\', function() {\n        $(\'.modal-footer a\').attr(\'href\', \'?action=delete&id=\' + parseInt($(this).attr(\'data-id\')) + ($(this).attr(\'data-back\') ? \'&back=1\' : \'\'));\n    });\n});\n</script>\n', 0),
(45, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_users_register_interface', '<?php\r\n/**\r\n * Стандартный интерфейс регистрации\r\n * @param Block_Register $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Users;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new RegisterInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(46, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:51', 0, 1, '__raas_users_activation_interface', '<?php\r\n/**\r\n * Стандартный интерфейс активации учетной записи\r\n * @param Block_Activation $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Users;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new ActivationInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(47, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:52', 0, 1, '__raas_users_login_interface', '<?php\r\n/**\r\n * Стандартный интерфейс входа в систему\r\n * @param Block_LogIn $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Users;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new LogInInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(48, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:52', 0, 1, '__raas_users_recovery_interface', '<?php\r\n/**\r\n * Стандартный интерфейс восстановления пароля\r\n * @param Block_Recovery $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Users;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new RecoveryInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(49, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:52', 0, 1, '__raas_users_register_notify', '<?php\r\n/**\r\n * Уведомление о регистрации\r\n * @param bool $SMS Уведомление отправляется по SMS\r\n * @param Form $Form Форма регистрации\r\n * @param bool $ADMIN Отправка сообщения для администратора\r\n *     (если false то для пользователя)\r\n * @param User $User Пользователь\r\n * @param array $config Конфигурация блока\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS;\r\n\r\nuse RAAS\\Controller_Frontend as ControllerFrontend;\r\nuse RAAS\\CMS\\Users\\Block_Register;\r\nuse RAAS\\CMS\\Users\\Block_Activation;\r\n\r\n$cf = ControllerFrontend::i();\r\n$adminUrl = $cf->schemeHost . \'/admin/?p=cms\';\r\n\r\n$page = $User->page;\r\n\r\nif ($ADMIN) {\r\n    $headerTemplate = NEW_USER_REGISTERED_ON_SITE;\r\n} else {\r\n    $headerTemplate = YOU_HAVE_SUCCESSFULLY_REGISTERED_ON_WEBSITE;\r\n}\r\nif ($SMS) {\r\n    if ($ADMIN) {\r\n        echo sprintf($headerTemplate, $cf->schemeHost, $cf->idnHost) . \"\\n\";\r\n    }\r\n    $passwordDetected = false;\r\n    foreach ($Form->fields as $field) {\r\n        if ($field->datatype == \'password\') {\r\n            $passwordDetected = true;\r\n            if ($ADMIN) {\r\n                continue;\r\n            }\r\n        }\r\n        $renderer = NotificationFieldRenderer::spawn($field, $USER);\r\n        echo $renderer->render([\'admin\' => $ADMIN, \'sms\' => true]);\r\n    }\r\n    if (!$passwordDetected && !$ADMIN && $User->password) {\r\n        echo PASSWORD . \': \' . htmlspecialchars($User->password) . \"\\n\";\r\n    }\r\n} else { ?>\r\n    <p>\r\n      <?php echo sprintf($headerTemplate, $cf->schemeHost, $cf->idnHost)?>\r\n    </p>\r\n    <div>\r\n      <?php\r\n      if (!$ADMIN) {\r\n          $fields = $Form->visFields;\r\n      } else {\r\n          $fields = $Form->fields;\r\n      }\r\n      $passwordDetected = false;\r\n      foreach ($fields as $field) {\r\n          if ($field->datatype == \'password\') {\r\n              $passwordDetected = true;\r\n              if ($ADMIN) {\r\n                  continue;\r\n              }\r\n          }\r\n          $renderer = NotificationFieldRenderer::spawn($field, $User);\r\n          echo $renderer->render([\'admin\' => $ADMIN, \'sms\' => false]);\r\n      }\r\n      if (!$passwordDetected && !$ADMIN && $User->password) {\r\n          echo \'<div>\' . PASSWORD . \': \' . htmlspecialchars($User->password) . \'</div>\';\r\n      }\r\n      ?>\r\n    </div>\r\n    <?php if ($ADMIN) {\r\n        if ($User && $User->id) { ?>\r\n            <p>\r\n              <a href=\"<?php echo htmlspecialchars($adminUrl . \'&m=users&action=edit&id=\' . (int)$User->id)?>\">\r\n                <?php echo VIEW?>\r\n              </a>\r\n            </p>\r\n        <?php } ?>\r\n        <p>\r\n          <small>\r\n            <?php\r\n            echo IP_ADDRESS . \': \' .\r\n                htmlspecialchars($User->ip) . \'<br />\' .\r\n                USER_AGENT . \': \' .\r\n                htmlspecialchars($User->user_agent) . \'<br />\' .\r\n                PAGE . \': \';\r\n            if ($page->parents) {\r\n                foreach ($page->parents as $row) { ?>\r\n                    <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$row->id)?>\">\r\n                      <?php echo htmlspecialchars($row->name)?>\r\n                    </a> /\r\n                <?php }\r\n            } ?>\r\n            <a href=\"<?php echo htmlspecialchars($adminUrl . \'&id=\' . (int)$page->id)?>\">\r\n              <?php echo htmlspecialchars($page->name)?>\r\n            </a>\r\n          </small>\r\n        </p>\r\n    <?php } else {\r\n        switch ($config[\'activation_type\']) {\r\n            case Block_Register::ACTIVATION_TYPE_ALREADY_ACTIVATED:\r\n                echo \'<p>\' . NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM . \'</p>\';\r\n                break;\r\n            case Block_Register::ACTIVATION_TYPE_ADMINISTRATOR:\r\n                echo \'<p>\' . PLEASE_WAIT_FOR_ADMINISTRATOR_TO_ACTIVATE . \'</p>\';\r\n                break;\r\n            case Block_Register::ACTIVATION_TYPE_USER:\r\n                $activationBlocks = Block_Activation::getSet([\r\n                    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Activation\'\",\r\n                    \'orderBy\' => \"id\"\r\n                ]);\r\n                $activationPages = [];\r\n                if ($activationBlocks) {\r\n                    $activationPages = [];\r\n                    foreach ($activationBlocks as $activationBlock) {\r\n                        $activationPages = array_merge(\r\n                            $activationPages,\r\n                            $activationBlock->pages\r\n                        );\r\n                    }\r\n                }\r\n                $p = $Page->parent;\r\n                $activationPage = null;\r\n                while ($p->id) {\r\n                    $nearestActivationPages = array_filter(\r\n                        $activationPages,\r\n                        function ($x) use ($p) {\r\n                            return $x->pid == $p->id;\r\n                        }\r\n                    );\r\n                    if ($nearestActivationPages) {\r\n                        $activationPage = array_shift($nearestActivationPages);\r\n                        break;\r\n                    }\r\n                    $p = $p->parent;\r\n                }\r\n                if (!$activationPage->id && $activationPages) {\r\n                    $activationPage = array_shift($activationPages);\r\n                }\r\n                if ($activationPage->id) {\r\n                    $url = $cf->schemeHost . $activationPage->url\r\n                        . \'?key=\' . $User->activationKey;\r\n                    echo \'<p>\' . sprintf(ACTIVATION_LINK, $url, $url) . \'</p>\';\r\n                }\r\n                break;\r\n        }\r\n        ?>\r\n        <p>--</p>\r\n        <p>\r\n          <?php echo WITH_RESPECT . \',<br />\' . ADMINISTRATION_OF_SITE?>\r\n          <a href=\"<?php echo htmlspecialchars($cf->schemeHost)?>\">\r\n            <?php echo htmlspecialchars($cf->idnHost)?>\r\n          </a>\r\n        </p>\r\n        <?php\r\n    }\r\n}\r\n', 1),
(50, 1, '0000-00-00 00:00:00', '2023-12-04 12:35:52', 0, 1, '__raas_users_recovery_notify', '<?php\n/**\n * Уведомление о восстановлении пароля\n * @param Page $Page Текущая страница\n * @param User $User Пользователь\n */\nnamespace RAAS\\CMS;\n\nuse RAAS\\Controller_Frontend as ControllerFrontend;\n\n$cf = ControllerFrontend::i();\n$link = $Page->url . \'?key=\' . $User->recoveryKey;\nif ($referer) {\n    $link .= \'&HTTP_REFERER=\' . urlencode($referer);\n}\n?>\n<p>\n  <?php\n  echo date(DATETIMEFORMAT) . \' \' .\n      sprintf(\n          YOU_HAVE_ASKED_PASSWORD_RECOVERY_ON_SITE,\n          $cf->schemeHost,\n          $cf->idnHost\n      );\n  ?>\n</p>\n<p>\n  <?php\n  echo sprintf(\n      RECOVERY_LINK,\n      $cf->schemeHost . $link,\n      $cf->idnSchemeHost . $link\n  )?>\n</p>\n<p>\n  <?php echo IF_IT_WAS_NOT_YOU_JUST_IGNORE?>\n</p>\n\n<p>--</p>\n<p>\n  <?php echo WITH_RESPECT?>,<br />\n  <?php echo ADMINISTRATION_OF_SITE?>\n  <a href=\"<?php echo htmlspecialchars($cf->schemeHost)?>\">\n    <?php echo htmlspecialchars($cf->idnHost)?>\n  </a>\n</p>\n', 1);
INSERT INTO `cms_snippets` (`id`, `pid`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `locked`) VALUES
(51, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'register', '<?php\nnamespace RAAS\\CMS\\Users;\n\nuse RAAS\\CMS\\Feedback;\nuse RAAS\\CMS\\SocialProfile;\n\nif ($_POST[\'AJAX\']) {\n    $result = array();\n    if ($success[(int)$Block->id]) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    if ($social) {\n        $result[\'social\'] = trim($social);\n    }\n    if ($social) {\n        $result[\'socialNetwork\'] = trim($socialNetwork);\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else { ?>\n    <a name=\"feedback\"></a>\n    <div class=\"feedback\">\n      <form class=\"form-horizontal\" <?php /*data-role=\"raas-ajaxform\"*/?> action=\"\" method=\"post\" enctype=\"multipart/form-data\">\n        <?php include \\RAAS\\CMS\\Package::i()->resourcesDir . \'/form2.inc.php\'?>\n        <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n          <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>>\n            <?php\n            echo YOU_HAVE_SUCCESSFULLY_REGISTERED . \' \';\n            switch ($config[\'activation_type\']) {\n                case Block_Register::ACTIVATION_TYPE_ALREADY_ACTIVATED:\n                    echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM;\n                    break;\n                case Block_Register::ACTIVATION_TYPE_ADMINISTRATOR:\n                    echo PLEASE_WAIT_FOR_ADMINISTRATOR_TO_ACTIVATE;\n                    break;\n                case Block_Register::ACTIVATION_TYPE_USER:\n                    echo PLEASE_ACTIVATE_BY_EMAIL;\n                    break;\n            }\n            ?>\n          </div>\n          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n            <ul>\n              <?php foreach ((array)$localError as $key => $val) { ?>\n                  <li><?php echo htmlspecialchars($val)?></li>\n              <?php } ?>\n            </ul>\n          </div>\n        </div>\n\n        <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>\n          <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>\n          <?php if ($Form->signature) { ?>\n                <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />\n          <?php } ?>\n          <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name && !$User->id) { ?>\n                <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />\n          <?php } ?>\n          <?php foreach ($Form->fields as $row) { ?>\n              <div class=\"form-group\">\n                <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>\n                <div class=\"col-sm-9 col-md-4\"><?php $getField($row, $DATA)?></div>\n              </div>\n          <?php } ?>\n          <?php if ($config[\'allow_edit_social\']) { ?>\n              <style type=\"text/css\">\n              .raas-social { display: inline-block; width: 16px; height: 16px; background-image: url(\'http://ulogin.ru/img/small.png?version=1.3.00\'); }\n              .raas-social<?php echo SocialProfile::SN_VK?> { background-position: 0 -19px; }\n              .raas-social<?php echo SocialProfile::SN_FB?> { background-position: 0 -88px; }\n              .raas-social<?php echo SocialProfile::SN_OK?> { background-position: 0 -42px; }\n              .raas-social<?php echo SocialProfile::SN_MR?> { background-position: 0 -65px; }\n              .raas-social<?php echo SocialProfile::SN_TW?> { background-position: 0 -111px; }\n              .raas-social<?php echo SocialProfile::SN_LJ?> { background-position: 0 -180px; }\n              .raas-social<?php echo SocialProfile::SN_GO?> { background-position: 0 -134px; }\n              .raas-social<?php echo SocialProfile::SN_YA?> { background-position: 0 -157px; }\n              .raas-social<?php echo SocialProfile::SN_WM?> { background-position: 0 -410px; }\n              .raas-social<?php echo SocialProfile::SN_YT?> { background-position: 0 -433px; }\n              </style>\n              <script src=\"//ulogin.ru/js/ulogin.js\"></script>\n              <div class=\"col-sm-offset-3 col-sm-9 col-md-6\" style=\"margin-bottom: 25px\">\n                <h3><?php echo SOCIAL_NETWORKS?></h3>\n                <div data-role=\"raas-social-network-container\" style=\"margin: 20px 0\">\n                  <?php foreach ((array)$DATA[\'social\'] as $i => $temp) { ?>\n                      <div data-role=\"raas-repo-element\" class=\"clearfix\">\n                        <input type=\"hidden\" name=\"social[]\" value=\"<?php echo htmlspecialchars($temp)?>\" />\n                        <a href=\"<?php echo htmlspecialchars($temp)?>\" target=\"_blank\">\n                          <span class=\"raas-social raas-social<?php echo (int)SocialProfile::getSocialNetwork($temp)?>\"></span>\n                          <?php echo htmlspecialchars($temp)?>\n                        </a>\n                        <a href=\"#\" class=\"close\" style=\"float: right;\" data-role=\"raas-repo-del\">&times;</a>\n                      </div>\n                  <?php } ?>\n                </div>\n                <div id=\"uLogin\" data-ulogin=\"display=panel;fields=first_name,last_name;providers=vkontakte,odnoklassniki,mailru,facebook;hidden=twitter,google,yandex,livejournal,youtube,webmoney;redirect_uri=;callback=RAAS_CMS_social_login\"></div>\n              </div>\n              <script>\n              jQuery(document).ready(function($) {\n                  $(\'[data-role=\"raas-social-network-container\"]\').on(\'click\', \'[data-role=\"raas-repo-del\"]\', function() {\n                      $(this).closest(\'[data-role=\"raas-repo-element\"]\').remove();\n                      return false;\n                  });\n                  RAAS_CMS_social_login = function(token)\n                  {\n                      $.post(location.toString(), {\'token\': token, \'AJAX\': 1}, function(data) {\n                          var isFound = false;\n                          $(\'[data-role=\"raas-social-network-container\"] input:hidden\').each(function() {\n                              if ($.trim($(this).val()) == $.trim(data.social)) {\n                                  isFound = true;\n                              }\n                          });\n                          if (!isFound) {\n                              var text = \'<div data-role=\"raas-repo-element\" class=\"clearfix\">\'\n                                       + \'  <input type=\"hidden\" name=\"social[]\" value=\"\' + data.social + \'\" />\'\n                                       + \'  <a href=\"\' + data.social + \'\" target=\"_blank\"><span class=\"raas-social raas-social\' + data.socialNetwork + \'\"></span> \' + data.social + \'</a>\'\n                                       + \'  <a href=\"#\" class=\"close\" style=\"float: right;\" data-role=\"raas-repo-del\">&times;</a>\'\n                                       + \'</div>\';\n                              $(\'[data-role=\"raas-social-network-container\"]\').append(text);\n                          }\n                      }, \'json\');\n                  }\n              });\n              </script>\n          <?php } ?>\n          <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name && !$User->id) { ?>\n              <div class=\"form-group\">\n                <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>\n                <div class=\"col-sm-9 col-md-4\">\n                  <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />\n                  <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"form-control\" />\n                </div>\n              </div>\n          <?php } ?>\n          <div class=\"form-group\">\n            <div class=\"col-sm-9 col-md-4 col-sm-offset-3\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo $User->id ? SAVE : DO_REGISTER?></button></div>\n          </div>\n        </div>\n      </form>\n    </div>\n<?php } ?>\n', 0),
(52, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'activation', '<?php\nnamespace RAAS\\CMS\\Users;\n\nif ($_POST[\'AJAX\']) {\n    $result = array();\n    if ($success) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else {\n    ?>\n    <div data-role=\"notifications\">\n      <div class=\"alert alert-success\" <?php echo ($success) ? \'\' : \'style=\"display: none\"\'?>><?php echo YOUR_ACCOUNT_HAS_BEEN_SUCCESSFULLY_ACTIVATED?></div>\n      <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n        <ul>\n          <?php foreach ((array)$localError as $key => $val) { ?>\n              <li><?php echo htmlspecialchars($val)?></li>\n          <?php } ?>\n        </ul>\n      </div>\n    </div>\n    <?php\n}\n', 0),
(53, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'login', '<?php\nnamespace RAAS\\CMS\\Users;\n\nif ($_POST[\'AJAX\']) {\n    $result = array();\n    if ($success[(int)$Block->id]) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    if ($social) {\n        $result[\'social\'] = trim($social);\n    }\n    if ($social) {\n        $result[\'socialNetwork\'] = trim($socialNetwork);\n    }\n    if ($User) {\n        $result[\'User\'] = $User->getArrayCopy();\n        $result[\'User\'][\'last_name\'] = $User->last_name;\n        $result[\'User\'][\'first_name\'] = $User->first_name;\n        $result[\'User\'][\'full_name\'] = $User->full_name;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else {\n    ?>\n    <div class=\"feedback\">\n      <form class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\">\n        <div data-role=\"notifications\" <?php echo ($success || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n            <ul>\n              <?php foreach ((array)$localError as $key => $val) { ?>\n                  <li><?php echo htmlspecialchars($val)?></li>\n              <?php } ?>\n            </ul>\n          </div>\n        </div>\n        <div data-role=\"feedback-form\" <?php echo $success ? \'style=\"display: none\"\' : \'\'?>>\n          <div class=\"form-group\">\n            <label for=\"login_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo LOGIN?>:</label>\n            <div class=\"col-sm-9 col-md-4\"><input type=\"text\" class=\"form-control\" name=\"login\" id=\"login_<?php echo (int)$Block->id?>\" /></div>\n          </div>\n          <div class=\"form-group\">\n            <label for=\"password_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD?>:</label>\n            <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password\" id=\"password_<?php echo (int)$Block->id?>\" /></div>\n          </div>\n          <?php if (($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_SAVE_PASSWORD) || ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_FOREIGN_COMPUTER)) { ?>\n              <div class=\"form-group\">\n                <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\">\n                  <label>\n                    <?php if ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_SAVE_PASSWORD) { ?>\n                        <input type=\"checkbox\" name=\"save_password\" value=\"1\" /> <?php echo SAVE_PASSWORD?>\n                    <?php } elseif ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_FOREIGN_COMPUTER) { ?>\n                        <input type=\"checkbox\" name=\"foreign_computer\" value=\"1\" /> <?php echo FOREIGN_COMPUTER?>\n                    <?php } ?>\n                  </label>\n                </div>\n              </div>\n          <?php } ?>\n          <div class=\"form-group\">\n            <label class=\"control-label col-sm-3 col-md-2\">&nbsp;</label>\n            <div class=\"col-sm-9 col-md-4\"><a href=\"/recovery/\"><?php echo LOST_PASSWORD?></a></div>\n          </div>\n          <?php if ($config[\'social_login_type\']) { ?>\n              <div class=\"col-sm-offset-3 col-md-offset-2\" style=\"margin-bottom: 25px\">\n                <script src=\"//ulogin.ru/js/ulogin.js\"></script>\n                <div id=\"uLogin\" data-ulogin=\"display=panel;optional=first_name,last_name,phone,email,sex,nickname,bdate,city,country;providers=vkontakte,odnoklassniki,mailru,facebook;hidden=twitter,google,yandex,livejournal,youtube,webmoney;redirect_uri=<?php echo urlencode(\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $_SERVER[\'REQUEST_URI\'])?>\"></div>\n              </div>\n          <?php } ?>\n          <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo DO_LOGIN?></button></div></div>\n        </div>\n      </form>\n    </div>\n<?php } ?>\n', 0),
(54, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'recovery', '<?php\nnamespace RAAS\\CMS\\Users;\n\nif ($_POST[\'AJAX\']) {\n    $result = array();\n    if ($success) {\n        $result[\'success\'] = 1;\n    }\n    if ($localError) {\n        $result[\'localError\'] = $localError;\n    }\n    ob_clean();\n    echo json_encode($result);\n    exit;\n} else {\n    ?>\n    <div class=\"feedback\">\n      <form class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\">\n        <div data-role=\"notifications\" <?php echo ($success || $localError) ? \'\' : \'style=\"display: none\"\'?>>\n          <div class=\"alert alert-success\" <?php echo ($success) ? \'\' : \'style=\"display: none\"\'?>>\n            <?php echo $proceed ? YOUR_PASSWORD_WAS_SUCCESSFULLY_CHANGED : RECOVERY_KEY_WAS_SENT?>\n          </div>\n          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>\n            <ul>\n              <?php foreach ((array)$localError as $key => $val) { ?>\n                  <li><?php echo htmlspecialchars($val)?></li>\n              <?php } ?>\n            </ul>\n          </div>\n        </div>\n        <div data-role=\"feedback-form\" <?php echo $success ? \'style=\"display: none\"\' : \'\'?>>\n          <?php if ($proceed) { ?>\n              <?php if (!$key_is_invalid) { ?>\n                  <div class=\"form-group\">\n                    <label for=\"password_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD?></label>\n                    <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password\" id=\"password_<?php echo (int)$Block->id?>\" /></div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label for=\"password_confirm_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD_CONFIRM?></label>\n                    <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password@confirm\" id=\"password_confirm_<?php echo (int)$Block->id?>\" /></div>\n                  </div>\n                  <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo CHANGE?></button></div></div>\n              <?php } ?>\n          <?php } else { ?>\n              <div class=\"form-group\">\n                <label for=\"login_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3\"><?php echo ENTER_LOGIN_OR_EMAIL?></label>\n                <div class=\"col-sm-9 col-md-4\"><input type=\"text\" name=\"login\" class=\"form-control\" id=\"login_<?php echo (int)$Block->id?>\" /></div>\n              </div>\n              <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button></div></div>\n          <?php } ?>\n        </div>\n      </form>\n    </div>\n<?php } ?>\n', 0),
(55, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'goods_faq', '<?php\nnamespace RAAS\\CMS;\n\nuse \\SOME\\Text;\nuse \\SOME\\HTTP;\n\nif ($Set) { ?>\n    <div class=\"goods-faq\">\n      <div class=\"goods-faq__list\">\n        <div class=\"goods-faq-list\">\n          <?php foreach ($Set as $row) { ?>\n              <div class=\"goods-faq-list__item\">\n                <div class=\"goods-faq-item\">\n                  <div class=\"goods-faq-item__text goods-faq-item__text_question\">\n                    <div class=\"goods-faq-item__title\">\n                      <span class=\"goods-faq-item__name\">\n                        <?php echo htmlspecialchars($row->name)?>\n                      </span>\n                      <?php\n                      $t = strtotime($row->date);\n                      if ($t <= 0) {\n                          $t = strtotime($row->post_date);\n                      }\n                      if ($t > 0) {\n                          ?>\n                          <span class=\"goods-faq-item__date\">\n                            <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                          </span>\n                      <?php } ?>\n                    </div>\n                    <div class=\"goods-faq-item__description\">\n                      <?php echo $row->description?>\n                    </div>\n                  </div>\n                  <?php if ($row->answer) { ?>\n                      <div class=\"goods-faq-item__text goods-faq-item__text_answer goods-faq-item__text_slider\">\n                        <div class=\"goods-faq-item__title\">\n                          <span class=\"goods-faq-item__name\">\n                            <?php echo ANSWER?>\n                          </span>\n                          <?php\n                          $t = strtotime($row->answer_date);\n                          if ($t <= 0) {\n                              $t = strtotime($row->modify_date);\n                          }\n                          if ($t > 0) {\n                              ?>\n                              <span class=\"goods-faq-item__date\">\n                                <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                              </span>\n                          <?php } ?>\n                        </div>\n                        <div class=\"goods-faq-item__description\">\n                          <div class=\"goods-faq-item__brief-description\">\n                            <?php echo Text::cuttext(html_entity_decode(strip_tags($row->answer), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\')?>\n                          </div>\n                          <div class=\"goods-faq-item__full-description\"><?php echo $row->answer?></div>\n                        </div>\n                        <div class=\"goods-faq-item__more\">\n                          <a href=\"#\" class=\"goods-faq-item__more-trigger\" data-show=\"<?php echo READ_ANSWER?>\" data-hide=\"<?php echo HIDE?>\">\n                            <?php echo READ_ANSWER?>\n                          </a>\n                        </div>\n                      </div>\n                  <?php } ?>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n      <script src=\"/js/goods-faq.js?v=<?php echo date(\'Y-m-d\', filemtime(\'js/goods-faq.js\'))?>\"></script>\n    </div>\n<?php } ?>', 0),
(56, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'goods_reviews', '<?php\nnamespace RAAS\\CMS;\n\nuse \\SOME\\Text;\nuse \\SOME\\HTTP;\n\nif ($Set) { ?>\n    <div class=\"goods-reviews\">\n      <div class=\"goods-reviews__list\">\n        <div class=\"goods-reviews-list\">\n          <?php foreach ($Set as $row) { ?>\n              <div class=\"goods-reviews-list__item\">\n                <div class=\"goods-reviews-item\">\n                  <div class=\"goods-reviews-item__text goods-reviews-item__text_question\">\n                    <div class=\"goods-reviews-item__title\">\n                      <span class=\"goods-reviews-item__name\">\n                        <?php echo htmlspecialchars($row->name)?>\n                      </span>\n                      <?php\n                      $t = strtotime($row->date);\n                      if ($t <= 0) {\n                          $t = strtotime($row->post_date);\n                      }\n                      if ($t > 0) {\n                          ?>\n                          <span class=\"goods-reviews-item__date\">\n                            <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                          </span>\n                      <?php } ?>\n                    </div>\n                    <div class=\"goods-reviews-item__description\">\n                      <?php echo $row->description?>\n                    </div>\n                  </div>\n                  <?php if ($row->answer) { ?>\n                      <div class=\"goods-reviews-item__text goods-reviews-item__text_answer goods-reviews-item__text_slider\">\n                        <div class=\"goods-reviews-item__title\">\n                          <span class=\"goods-reviews-item__name\">\n                            <?php echo ANSWER?>\n                          </span>\n                          <?php\n                          $t = strtotime($row->answer_date);\n                          if ($t <= 0) {\n                              $t = strtotime($row->modify_date);\n                          }\n                          if ($t > 0) {\n                              ?>\n                              <span class=\"goods-reviews-item__date\">\n                                <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>\n                              </span>\n                          <?php } ?>\n                        </div>\n                        <div class=\"goods-reviews-item__description\">\n                          <div class=\"goods-reviews-item__brief-description\">\n                            <?php echo Text::cuttext(html_entity_decode(strip_tags($row->answer), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\')?>\n                          </div>\n                          <div class=\"goods-reviews-item__full-description\"><?php echo $row->answer?></div>\n                        </div>\n                        <div class=\"goods-reviews-item__more\">\n                          <a href=\"#\" class=\"goods-reviews-item__more-trigger\" data-show=\"<?php echo READ_ANSWER?>\" data-hide=\"<?php echo HIDE?>\">\n                            <?php echo READ_ANSWER?>\n                          </a>\n                        </div>\n                      </div>\n                  <?php } ?>\n                </div>\n              </div>\n          <?php } ?>\n        </div>\n      </div>\n      <script src=\"/js/goods-reviews.js?v=<?php echo date(\'Y-m-d\', filemtime(\'js/goods-reviews.js\'))?>\"></script>\n    </div>\n<?php } ?>', 0),
(57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'hidden_props', '<?php\n/**\n * Скрытые свойства\n * @return array<string>\n */\nreturn [\n    \'images\',\n    \'brief\',\n    \'videos\',\n    \'videos_url\',\n    \'files\',\n    \'onmain\',\n    \'article\',\n    \'price\',\n    \'price_old\',\n    \'available\',\n    \'min\',\n    \'step\'\n];\n', 0);
INSERT INTO `cms_snippets` (`id`, `pid`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `locked`) VALUES
(58, 1, '2023-12-04 12:35:50', '2023-12-04 12:35:50', 1, 1, 'cart_interface', '<?php\n/**\n * Стандартный интерфейс корзины\n * @param Block_Cart $Block Текущий блок <pre><code>Block_Cart(\n *     \'additionalParams\' => [\n *         \'cdek\' =>? [\n *             \'authLogin\' => string Логин\n *             \'secure\' => string Пароль,\n *             \'senderCityId\' => int ID# города отправителя в системе СДЭК,\n *             \'pickupTariff\' => int ID# тарифа самовывоза в системе СДЭК\n *             \'deliveryTariff\' => int ID# тарифа доставки в системе СДЭК\n *         ] Настройки доставки СДЭК,\n *     ],\n *     \'russianPost\' =>? [\n *         \'login\' => string Логин,\n *         \'password\' => string Пароль,\n *         \'token\' => string Токен,\n *     ], Настройки доставки Почты России,\n *     \'minOrderSum\' =>? int Минимальная сумма заказа,\n *     \'bindUserBy\' =>? string[] Привязка заказа к существующему пользователю -\n *         перечисление URN полей\n *     \'createUserBlockId\' =>? int ID# блока регистрации для создания\n *         нового пользователя, если не удалось найти существующего\n *         (только при указании bindUserBy)\n * )</code></pre>\n * @param Page $Page Текущая страница\n */\nnamespace RAAS\\CMS\\Shop;\n\nuse SOME\\Text;\nuse RAAS\\Application;\nuse RAAS\\Controller_Frontend as RAASControllerFrontend;\nuse RAAS\\CMS\\Material;\nuse RAAS\\CMS\\Material_Type;\nuse RAAS\\CMS\\Page;\nuse RAAS\\CMS\\User;\n\n$cartType = new Cart_Type((int)$Block->cart_type);\n$user = RAASControllerFrontend::i()->user;\n$cart = new Cart($cartType, $user);\n$weight = $cart->weight;\n$sizes = $cart->sizes;\n$_POST[\'weight\'] = $weight;\n\n$interface = new CartInterface($Block, $Page, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER, $_FILES);\n$cities = include Application::i()->baseDir . \'/cities.brief.php\';\n\n/**\n * Получает тарифы на доставку СДЭК\n * @param string $cityURN URN города\n * @param float $weight Вес, кг\n * @param int[] $sizes Размеры (ДxШxВ) в см\n * @return array|null <pre><code>array<\n *     \'pickup\'|\'delivery\'[] Доставка или самовывоз => array<\n *         string[] ID# тарифа => [\n *             \'id\' => string ID# тарифа,\n *             \'isDelivery\' => bool true - доставка, false - самовывоз,\n *             \'price\' => float Стоимость доставки,\n *             \'dateFrom\' ?=> string Минимальная дата доставки (ГГГГ-ММ-ДД),\n *             \'dateTo\' ?=> string Максимальная дата доставки (ГГГГ-ММ-ДД),\n *         ]\n *     >\n * ></code></pre>, либо null, если не найдено\n */\n$getCDEKTariffs = function ($cityURN, $weight, array $sizes) use ($Block, $cities) {\n    $sessionVar = implode(\'x\', array_merge([trim($cityURN)], $sizes, [$weight]));\n    $sessionTime = (int)$_SESSION[\'cdekTariffs\'][$sessionVar][\'timestamp\'];\n    if (Application::i()->debug || ($sessionTime < time() - 600)) {\n        $result = [];\n        $params = $Block->additionalParams[\'cdek\'];\n\n        if (!isset($cities[$cityURN][\'cdekCityId\']) ||\n            !$params[\'authLogin\'] ||\n            !$params[\'secure\'] ||\n            !$params[\'senderCityId\']\n        ) {\n            return null;\n        }\n\n        $response = null;\n        $authRequest = [\n            \'grant_type\' => \'client_credentials\',\n            \'client_id\' => $params[\'authLogin\'],\n            \'client_secret\' => $params[\'secure\'],\n        ];\n        $ch = curl_init(\'https://api.cdek.ru/v2/oauth/token\');\n        curl_setopt($ch, CURLOPT_POST, 1);\n        curl_setopt($ch, CURLOPT_POSTFIELDS, $authRequest);\n        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);\n        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);\n        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);\n        $authResponse = curl_exec($ch);\n        $authResponse = (array)json_decode($authResponse, true);\n        if ($authResponse[\'access_token\']) {\n            $token = $authResponse[\'access_token\'];\n        }\n\n        if (!$token) {\n            return null;\n        }\n\n        $request = [\n            \'from_location\' => [\'code\' => (int)$params[\'senderCityId\']],\n            \'to_location\' => [\'code\' => (int)$cities[$cityURN][\'cdekCityId\']],\n            \'currency\' => 1, // Рубль\n            \'packages\' => [[\n                \'weight\' => (int)($weight * 1000),\n                \'length\' => (int)$sizes[0],\n                \'width\' => (int)$sizes[1],\n                \'height\' => (int)$sizes[2],\n            ]],\n        ];\n        $ch = curl_init(\'https://api.cdek.ru/v2/calculator/tarifflist\');\n        curl_setopt($ch, CURLOPT_POST, 1);\n        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($request));\n        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);\n        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);\n        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);\n        curl_setopt($ch, CURLOPT_HTTPHEADER, [\n            \'Content-Type: application/json\',\n            \'Authorization: Bearer \' . $token\n        ]);\n        $response = curl_exec($ch);\n        $response = (array)json_decode($response, true);\n\n        if (!$response[\'tariff_codes\']) {\n            return null;\n        }\n        $response = $response[\'tariff_codes\'];\n\n        foreach ($response as $tariff) {\n            switch ($tariff[\'tariff_code\']) {\n                case $params[\'pickupTariff\']:\n                    $tariffType = \'pickup\';\n                    break;\n                case $params[\'deliveryTariff\']:\n                    $tariffType = \'delivery\';\n                    break;\n                default:\n                    continue 2;\n                    break;\n            }\n            $tariffSum = (float)$tariff[\'delivery_sum\'];\n            if ($params[\'priceRatio\'] ?? \'\') {\n                if (stristr($params[\'priceRatio\'], \'%\')) {\n                    $tariffSum *= (100 + (float)$params[\'priceRatio\']) / 100;\n                } else {\n                    $tariffSum += (float)$params[\'priceRatio\'];\n                }\n            }\n            $tariffSum = ceil($tariffSum);\n            $result[$tariffType][trim($tariff[\'tariff_code\'])] = [\n                \'id\' => trim($tariff[\'tariff_code\']),\n                \'isDelivery\' => ($tariffType == \'delivery\'),\n                \'price\' => $tariffSum,\n                \'dateFrom\' => date(\'Y-m-d\', time() + (86400 * (1 + $tariff[\'period_min\']))),\n                \'dateTo\' => date(\'Y-m-d\', time() + (86400 * (1 + $tariff[\'period_max\']))),\n            ];\n        }\n        $sessionVal = [\'data\' => $result, \'timestamp\' => time()];\n        $_SESSION[\'cdekTariffs\'][$sessionVar] = $sessionVal;\n    }\n    return $_SESSION[\'cdekTariffs\'][$sessionVar][\'data\'];\n};\n\n\n/**\n * Получает тарифы на доставку Почтой России\n * @param string $postalCode Индекс\n * @param float $weight Вес, кг\n * @param int[] $sizes Размеры (ДxШxВ) в см\n * @param float $sum Сумма заказа\n * @return array|null <pre><code>array<\n *     \'pickup\'|\'delivery\'[] Доставка или самовывоз => array<\n *         string[] ID# тарифа => [\n *             \'id\' => string ID# тарифа,\n *             \'isDelivery\' => bool true - доставка, false - самовывоз,\n *             \'price\' => float Стоимость доставки,\n *             \'dateFrom\' ?=> string Минимальная дата доставки (ГГГГ-ММ-ДД),\n *             \'dateTo\' ?=> string Максимальная дата доставки (ГГГГ-ММ-ДД),\n *         ]\n *     >\n * ></code></pre>, либо null, если не найдено\n */\n$getRussianPostTariffs = function ($postalCode, $weight, array $sizes, $sum) use ($Block) {\n    $sessionArr = [trim($postalCode), $weight];\n    $sessionVar = implode(\'x\', $sessionArr);\n    $sessionTime = (int)$_SESSION[\'russianPostTariffs\'][$sessionVar][\'timestamp\'];\n    if (Application::i()->debug || ($sessionTime < time() - 600)) {\n        $result = [];\n        $params = $Block->additionalParams[\'russianpost\'];\n\n        $baseUrl = \'https://tariff.pochta.ru/v2/calculate/tariff/delivery\';\n        $baseRequestParams = [\n            \'json\' => 1,\n            \'from\' => $params[\'senderIndex\'],\n            \'to\' => $postalCode,\n            \'weight\' => $weight * 1000,\n            \'group\' => 0, // Единичное отправление (0)\n            \'service\' => implode(\',\', (array)$params[\'services\']), // Пакет СМС уведомлений отправителю при единичном приеме (41), Пакет СМС уведомлений получателю при единичном приеме (42)\n            \'closed\' => 0, // Расчет при запрете доставки на дату расчета (closed): нет (не используется).\n        ];\n\n        foreach ([\'pickup\', \'delivery\'] as $tariffURN) {\n            // 23030 - Посылка онлайн обыкновенная\n            if ($tariffId = $params[$tariffURN . \'Tariff\'] ?? null) {\n                $request = $baseRequestParams;\n                $request[\'object\'] = (int)$tariffId;\n                $url = $baseUrl . \'?\' . http_build_query($request);\n                $response = file_get_contents($url);\n                $response = (array)json_decode($response, true);\n                // var_dump($url, $response); exit;\n                if (!$response) {\n                    continue;\n                }\n\n                $tariffSum = (float)$response[\'pay\'] / 100;\n                if ($params[\'priceRatio\'] ?? \'\') {\n                    if (stristr($params[\'priceRatio\'], \'%\')) {\n                        $tariffSum *= (100 + (float)$params[\'priceRatio\']) / 100;\n                    } else {\n                        $tariffSum += (float)$params[\'priceRatio\'];\n                    }\n                }\n                $tariffSum = ceil($tariffSum);\n                $tariff = [\n                    \'id\' => $tariffId,\n                    \'isDelivery\' => ($tariffURN == \'delivery\'),\n                    \'price\' => $tariffSum,\n                ];\n                if ($response[\'delivery\'][\'min\'] ?? 0) {\n                    $tariff[\'dateFrom\'] = date(\'Y-m-d\', time() + (86400 * (1 + $response[\'delivery\'][\'min\'])));\n                }\n                if ($response[\'delivery\'][\'deadline\'] ?? null) {\n                    $tariff[\'dateTo\'] = date(\'Y-m-d\', strtotime($response[\'delivery\'][\'deadline\']) + 86400);\n                }\n                $result[$tariffURN][$tariffId] = $tariff;\n            }\n        }\n        $sessionVal = [\'data\' => $result, \'timestamp\' => time()];\n        $_SESSION[\'russianPostTariffs\'][$sessionVar] = $sessionVal;\n    }\n    return $_SESSION[\'russianPostTariffs\'][$sessionVar][\'data\'];\n};\n\n\n/**\n * Получает тарифы на собственную доставку\n * @param string $city Наименование города\n * @param float $weight Вес, кг\n * @param int[] $sizes Размеры (ДxШxВ) в см\n * @param float $sum Сумма заказа\n * @param Material $deliveryMaterial Материал доставки\n * @return array|null <pre><code>array<\n *     \'pickup\'|\'delivery\'[] Доставка или самовывоз => array<\n *         string[] ID# тарифа => [\n *             \'id\' => string ID# тарифа,\n *             \'isDelivery\' => bool true - доставка, false - самовывоз,\n *             \'price\' => float Стоимость доставки,\n *             \'dateFrom\' ?=> string Минимальная дата доставки (ГГГГ-ММ-ДД),\n *             \'dateTo\' ?=> string Максимальная дата доставки (ГГГГ-ММ-ДД),\n *         ]\n *     >\n * ></code></pre>, либо null, если не найдено\n */\n$getSelfTariffs = function ($city, $weight, array $sizes, $sum, $deliveryMaterial) use ($Block) {\n    $sessionArr = array_merge([trim($city)], $sizes, [$weight, $sum]);\n    $sessionVar = implode(\'x\', $sessionArr);\n    $sessionTime = (int)$_SESSION[\'selfTariffs\'][$sessionVar][\'timestamp\'];\n    if (Application::i()->debug || ($sessionTime < time() - 600)) {\n        $result = [];\n\n        $companyMaterialType = Material_Type::importByURN(\'company\');\n        $companies = Material::getSet([\n            \'where\' => \"pid = \" . (int)$companyMaterialType->id,\n            \'orderBy\' => \"NOT priority, priority, name\",\n        ]);\n        $companies = array_filter($companies, function ($x) use ($city) {\n            return trim(mb_strtolower($x->city)) == trim(mb_strtolower($city));\n        });\n        $companies = array_values($companies);\n\n        if (!$companies) {\n            return null;\n        }\n\n        $result[\'pickup\'][\'\'] = [\n            \'id\' => \'\',\n            \'isDelivery\' => false,\n            \'price\' => 0,\n        ];\n\n        if ($deliveryMaterial->id) {\n            $deliverySum = 0;\n            if (!(float)$deliveryMaterial->min_sum || ((float)$deliveryMaterial->min_sum > $sum)) {\n                $deliverySum = ceil((float)$deliveryMaterial->price);\n            }\n            $result[\'delivery\'][\'\'] = [\n                \'id\' => \'\',\n                \'isDelivery\' => true,\n                \'price\' => $deliverySum,\n                \'dateFrom\' => date(\'Y-m-d\', time() + 86400),\n                \'dateTo\' => date(\'Y-m-d\', time() + 86400),\n            ];\n        }\n\n        $sessionVal = [\'data\' => $result, \'timestamp\' => time()];\n        $_SESSION[\'selfTariffs\'][$sessionVar] = $sessionVal;\n    }\n    return $_SESSION[\'selfTariffs\'][$sessionVar][\'data\'];\n};\n\n\n/**\n * Получает список собственных пунктов выдачи\n * @param string $city Наименование города\n * @return array <pre><code>array<[\n *     \'id\' => string ID# пункта выдачи,\n *     \'name\' => string Наименование пункта выдачи,\n *     \'address\' => string Адрес пункта выдачи\n *     \'description\' => string Подсказка к адресу,\n *     \'lat\' => float Широта,\n *     \'lon\' => float Долгота,\n *     \'schedule\' ?=> string Время работы,\n *     \'phones\' ?=> string[] Телефоны (Последние 10 цифр),\n *     \'images\' ?=> string[] URL картинок,\n * ]></code></pre>\n */\n$getSelfPoints = function ($city) {\n    $companyMaterialType = Material_Type::importByURN(\'company\');\n    $companies = Material::getSet([\n        \'where\' => \"pid = \" . (int)$companyMaterialType->id,\n        \'orderBy\' => \"NOT priority, priority, name\",\n    ]);\n    $companies = array_filter($companies, function ($x) use ($city) {\n        return trim(mb_strtolower($x->city)) == trim(mb_strtolower($city)) &&\n            (float)$x->lat &&\n            (float)$x->lon;\n    });\n    $companies = array_values($companies);\n    $result = [];\n    foreach ($companies as $company) {\n        $office = $company->office;\n        $result[] = [\n            \'id\' => trim((int)$company->id),\n            \'name\' => \'Офис продаж \' . $company->name,\n            \'address\' => $company->street_address\n                . ($office ? \', \' . $office : \'\'),\n            \'description\' => \'\',\n            \'lat\' => (float)$company->lat,\n            \'lon\' => (float)$company->lon,\n            \'schedule\' => trim($company->schedule),\n            \'phones\' => array_map(function ($x) {\n                return Text::beautifyPhone($x, 10);\n            }, (array)$company->fields[\'phone\']->getValues()),\n            \'serviceURN\' => \'\',\n        ];\n    }\n    return $result;\n};\n\n\n/**\n * Функция расчета дополнительных пунктов для корзины\n * @param Cart $cart Корзина\n * @param array $post POST-данные\n * @param User $user Пользователь\n * @return array <pre>[\n *     \'items\' => array<CartItem>,\n *     string[] => mixed Дополнительные данные\n * ]</pre>\n */\n$getAdditionals = function (\n    Cart $cart,\n    array $post = [],\n    User $user = null\n) use (\n    &$getCDEKTariffs,\n    &$getRussianPostTariffs,\n    &$getSelfTariffs,\n    &$getSelfPoints\n) {\n    $result = [];\n\n    $sum = (float)$cart->sum;\n    $result[\'weight\'] = $_POST[\'weight\'] = $post[\'weight\'] = $weight = ceil($cart->weight * 1000) / 1000;\n    $result[\'sizes\'] = $sizes = $cart->sizes;\n    $_POST[\'sizes\'] = $post[\'sizes\'] = implode(\'x\', $sizes);\n    $sumForDiscount = 0;\n    foreach ($cart->items as $cartItem) {\n        if ($cartItem->amount) {\n            $material = $cartItem->material;\n            if ((float)$material->price_old <= (float)$material->price) {\n                $sumForDiscount += (float)$cartItem->sum;\n            }\n        }\n    }\n\n    $discountSum = 0;\n    if ($post[\'promo\']) {\n        $promoMaterialType = Material_Type::importByURN(\'discount\');\n        $sqlQuery = \"SELECT pid FROM cms_data WHERE fid = ? AND value = ?\";\n        $sqlBind = [\n            (int)$promoMaterialType->fields[\'code\']->id,\n            $post[\'promo\'],\n        ];\n        $sqlResult = Material::_SQL()->getvalue([$sqlQuery, $sqlBind]);\n        if ((int)$sqlResult) {\n            $card = new Material((int)$sqlResult);\n            $discountSum = ceil($sumForDiscount * $card->discount / -100);\n            $result[\'discount\'] = [\n                \'id\' => (int)$card->id,\n                \'name\' => $card->name,\n                \'discount\' => $card->discount,\n                \'price\' => $discountSum,\n            ];\n            $result[\'items\'][] = new CartItem([\n                \'id\' => (int)$card->id,\n                \'name\' => $card->name,\n                \'realprice\' => (float)$discountSum,\n                \'additional\' => [\'type\' => \'discount\'],\n            ]);\n        } else {\n            $result[\'discount\'][\'error\'] = true;\n        }\n    }\n\n    if ($post[\'cityURN\'] && $post[\'city\']) {\n        $cityURN = $post[\'cityURN\'];\n        if (!Application::i()->debug && isset($_SESSION[\'citiesData@\' . $cityURN])) {\n            $cityData = $_SESSION[\'citiesData@\' . $cityURN];\n        } else {\n            $citiesJSON = include Application::i()->baseDir . \'/cities.php\';\n            $cityData = $citiesJSON[$cityURN];\n            $_SESSION[\'citiesData@\' . $cityURN] = $cityData;\n        }\n        $points = $cityData[\'points\'] ?? [];\n        $points = array_values(array_filter(\n            $points,\n            function ($x) use ($sizes, $weight) {\n                if ($x[\'sizes\']) {\n                    $selfSizes = $sizes;\n                    sort($selfSizes);\n                    for ($i = 0; $i < 3; $i++) {\n                        if ($selfSizes[$i] >= $x[\'sizes\'][$i]) {\n                            return false;\n                        }\n                    }\n                }\n                if ($x[\'weight\'] && $weight > $x[\'weight\']) {\n                    return false;\n                }\n                return true;\n            }\n        ));\n\n        // Указан город, найдем варианты доставки\n        $sumForDelivery = $cart->sum + $discountSum;\n        $deliveryMaterialType = Material_Type::importByURN(\'delivery\');\n        $deliveryMaterials = Material::getSet([\n            \'where\' => [\"vis\", \"pid = \" . (int)$deliveryMaterialType->id],\n            \'orderBy\' => \"NOT priority, priority, name\",\n        ]);\n        $affectedServicesURNs = [];\n        $deliveries = $tariffs = $payments = [];\n        $selfDelivery = null;\n        foreach ($deliveryMaterials as $deliveryMaterial) {\n            $delivery = [\n                \'id\' => (int)$deliveryMaterial->id,\n                \'name\' => trim($deliveryMaterial->brief ?: $deliveryMaterial->name),\n                \'description\' => trim($deliveryMaterial->description),\n                \'fullName\' => trim($deliveryMaterial->name),\n                \'isDelivery\' => (bool)(int)$deliveryMaterial->delivery,\n                \'serviceURN\' => trim($deliveryMaterial->service_urn),\n            ];\n            $citiesBeautified = array_map(function ($x) {\n                return Text::beautify($x);\n            }, (array)$deliveryMaterial->cities);\n            $delivery[\'citiesBeautified\'] = $citiesBeautified;\n            if ($citiesBeautified && !in_array(Text::beautify($post[\'city\']), $citiesBeautified)) {\n                continue;\n            }\n            $affectedServicesURNs[$delivery[\'serviceURN\']] = $delivery[\'serviceURN\'];\n            $deliveries[trim($deliveryMaterial->id)] = $delivery;\n            if (!$delivery[\'serviceURN\'] && $delivery[\'isDelivery\']) {\n                $selfDelivery = $deliveryMaterial;\n            }\n        }\n        if (isset($affectedServicesURNs[\'\'])) {\n            $tariffs[\'\'] = $getSelfTariffs($post[\'city\'], $weight, $sizes, $sumForDelivery, $selfDelivery);\n            $points = array_merge($points, $getSelfPoints($post[\'city\']));\n        }\n        if ($affectedServicesURNs[\'cdek\']) {\n            $tariffs[\'cdek\'] = $getCDEKTariffs($post[\'cityURN\'], $weight, $sizes);\n        }\n        if ($affectedServicesURNs[\'russianpost\']) {\n            $postalCode = trim($post[\'post_code\']) ?: $cityData[\'postalCode\'];\n            $tariffs[\'russianpost\'] = $getRussianPostTariffs($postalCode, $weight, $sizes, $sumForDelivery);\n        }\n        $newDeliveries = [];\n        foreach ($deliveries as $deliveryId => $delivery) {\n            if ($matchingTariffs = $tariffs[$delivery[\'serviceURN\']][$delivery[\'isDelivery\'] ? \'delivery\' : \'pickup\']) {\n                foreach ($matchingTariffs as $tariffId => $tariff) {\n                    if (isset($tariff[\'price\'])) {\n                        $delivery[\'tariffId\'] = $tariff[\'id\'];\n                        $delivery[\'price\'] = (float)$tariff[\'price\'];\n                        if ($tariff[\'dateFrom\']) {\n                            $delivery[\'dateFrom\'] = $tariff[\'dateFrom\'];\n                        }\n                        if ($tariff[\'dateTo\']) {\n                            $delivery[\'dateTo\'] = $tariff[\'dateTo\'];\n                        }\n                    } else {\n                        $delivery[\'error\'] = true;\n                    }\n                }\n            } else {\n                $delivery[\'error\'] = true;\n            }\n            $newDeliveries[$deliveryId] = $delivery;\n            $result[\'delivery\'][\'methods\'][] = $delivery;\n        }\n        $deliveries = $newDeliveries;\n        $result[\'delivery\'][\'points\'] = $points;\n\n        if ($post[\'delivery\']) {\n            if ($delivery = $deliveries[$post[\'delivery\']]) {\n                $result[\'delivery\'][\'tariffId\'] = $delivery[\'tariffId\'];\n                if ($delivery[\'dateFrom\']) {\n                    $result[\'delivery\'][\'dateFrom\'] = $delivery[\'dateFrom\'];\n                }\n                if ($delivery[\'dateTo\']) {\n                    $result[\'delivery\'][\'dateTo\'] = $delivery[\'dateTo\'];\n                }\n                if (isset($delivery[\'price\'])) {\n                    $result[\'delivery\'][\'price\'] = $delivery[\'price\'];\n                }\n                if (($delivery[\'price\'] || $delivery[\'isDelivery\']) && !($delivery[\'error\'] ?? false)) {\n                    $result[\'items\'][] = new CartItem([\n                        \'id\' => $delivery[\'id\'],\n                        \'name\' => \'Доставка\',\n                        \'realprice\' => (float)$delivery[\'price\'],\n                        \'additional\' => [\'type\' => \'delivery\'],\n                    ]);\n                }\n                if ($delivery[\'error\']) {\n                    $result[\'delivery\'][\'error\'] = true;\n                }\n            } else {\n                $result[\'delivery\'][\'error\'] = true;\n            }\n            $paymentMaterialType = Material_Type::importByURN(\'payment\');\n            $paymentMaterials = Material::getSet([\n                \'where\' => [\"vis\", \"pid = \" . (int)$paymentMaterialType->id],\n                \'orderBy\' => \"NOT priority, priority, name\",\n            ]);\n            $paymentMaterials = array_filter(\n                $paymentMaterials,\n                function ($x) use ($post) {\n                    $paymentDeliveries = array_map(function ($x) {\n                        return (int)$x->id;\n                    }, (array)$x->delivery);\n                    $paymentDeliveries = array_values(array_filter($paymentDeliveries, \'trim\'));\n                    if ($paymentDeliveries &&\n                        !in_array($post[\'delivery\'], $paymentDeliveries)\n                    ) {\n                        return false;\n                    }\n                    return true;\n                }\n            );\n            foreach ($paymentMaterials as $paymentMaterial) {\n                $commission = 0;\n                if ($paymentCommission = trim($paymentMaterial->commission)) {\n                    if (stristr($paymentCommission, \'%\')) {\n                        $commission = ceil($sum * (int)$paymentCommission / 100);\n                    } else {\n                        $commission = (int)$paymentCommission;\n                    }\n                }\n                $payment = [\n                    \'id\' => (int)$paymentMaterial->id,\n                    \'name\' => trim($paymentMaterial->name),\n                    \'description\' => trim($paymentMaterial->description),\n                    \'epay\' => (bool)(int)$paymentMaterial->epay,\n                    \'price\' => $commission,\n                ];\n                if ($commission) {\n                    $payment[\'price\'] = $commission;\n                }\n                $payments[trim($payment[\'id\'])] = $payment;\n                $result[\'payment\'][\'methods\'][] = $payment;\n            }\n            if ($post[\'payment\']) {\n                if ($payment = $payments[$post[\'payment\']]) {\n                    if ($payment[\'price\']) {\n                        $result[\'payment\'][\'price\'] = $payment[\'price\'];\n                        $result[\'items\'][] = new CartItem([\n                            \'id\' => $payment[\'id\'],\n                            \'name\' => View_Web::i()->_(\'COMMISSION\'),\n                            \'realprice\' => (float)$payment[\'price\'],\n                            \'additional\' => [\'type\' => \'payment\'],\n                        ]);\n                    }\n                }\n            }\n        }\n    }\n\n    return $result;\n};\n\n$interface->additionalsCallback = $getAdditionals;\n\n$delivery = new Material($_POST[\'delivery\']);\n$isDelivery = (bool)(int)$delivery->delivery;\n\n$interface->conditionalRequiredFields = [\n    \'delivery\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n    \'payment\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n    \'post_code\' => function ($field, $post) use ($delivery, $isDelivery) {\n        return $delivery->id &&\n            $isDelivery &&\n            in_array($delivery->service_urn, [\'russianpost\']);\n    },\n    \'region\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n    \'city\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n    \'pickup_point\' => function ($field, $post) {\n        return $delivery->id && !$isDelivery && !$post[\'quickorder\'];\n    },\n    \'street\' => function ($field, $post) {\n        return $delivery->id && $isDelivery && !$post[\'quickorder\'];\n    },\n    \'house\' => function ($field, $post) {\n        return $delivery->id && $isDelivery && !$post[\'quickorder\'];\n    },\n    \'last_name\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n    \'first_name\' => function ($field, $post) {\n        return !$post[\'quickorder\'];\n    },\n];\n\n$result = $interface->process();\nif ((int)$Block->additionalParams[\'minOrderSum\']) {\n    $result[\'minOrderSum\'] = (int)$Block->additionalParams[\'minOrderSum\'];\n}\n$result[\'cities\'] = $cities;\nreturn $result;\n', 0),
(59, 1, '2023-12-04 12:35:50', '2023-12-04 12:35:50', 1, 1, '__raas_shop_compare_interface', '<?php\n/**\n * Стандартный интерфейс сравнения\n * @param Block_Cart $Block Текущий блок\n * @param Page $Page Текущая страница\n */\nnamespace RAAS\\CMS\\Shop;\n\nuse RAAS\\CMS\\Page;\n\n$interface = new CompareInterface(\n    $Block,\n    $Page,\n    $_GET,\n    $_POST,\n    $_COOKIE,\n    $_SESSION,\n    $_SERVER,\n    $_FILES\n);\nreturn $interface->process();\n', 1),
(60, 1, '2023-12-04 12:35:50', '2023-12-04 12:35:50', 1, 1, '__raas_shop_goods_comments_interface', '<?php\r\n/**\r\n * Стандартный интерфейс комментариев к товарам\r\n * @param Block_Material $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Block_Material;\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new GoodsCommentsInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(61, 1, '2023-12-04 12:35:50', '2023-12-04 12:35:50', 1, 1, '__raas_shop_spec_interface', '<?php\r\n/**\r\n * Стандартный интерфейс спецпредложений\r\n * @param Block_Material $Block Текущий блок\r\n * @param Page $Page Текущая страница\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Block_Material;\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new SpecInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\nreturn $interface->process();\r\n', 1),
(62, 1, '2023-12-04 12:35:51', '2023-12-04 12:35:51', 1, 1, 'sberbank_interface', '<?php\r\n/**\r\n * Интерфейс Сбербанка\r\n * @param Block_Cart $Block Текущий блок\r\n * @param Page $Page Текушая страница\r\n * @param Order $Item текущий заказ\r\n */\r\nnamespace RAAS\\CMS\\Shop;\r\n\r\nuse RAAS\\CMS\\Page;\r\n\r\n$interface = new SberbankInterface(\r\n    $Block,\r\n    $Page,\r\n    $_GET,\r\n    $_POST,\r\n    $_COOKIE,\r\n    $_SESSION,\r\n    $_SERVER,\r\n    $_FILES\r\n);\r\n$sberbankOut = $interface->process($Item);\r\nif (isset($OUT)) {\r\n    $OUT = array_merge((array)$OUT, $sberbankOut);\r\n}\r\nreturn $sberbankOut;\r\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_snippet_folders`
--

DROP TABLE IF EXISTS `cms_snippet_folders`;
CREATE TABLE `cms_snippet_folders` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Locked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Snippet folders';

--
-- Дамп данных таблицы `cms_snippet_folders`
--

INSERT INTO `cms_snippet_folders` (`id`, `pid`, `name`, `urn`, `locked`) VALUES
(1, 0, 'Интерфейсы', '__raas_interfaces', 1),
(2, 0, 'Представления', '__raas_views', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_snippet_folders_tree_cache`
--

DROP TABLE IF EXISTS `cms_snippet_folders_tree_cache`;
CREATE TABLE `cms_snippet_folders_tree_cache` (
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Level'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Snippet folders tree cache';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_templates`
--

DROP TABLE IF EXISTS `cms_templates`;
CREATE TABLE `cms_templates` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Code',
  `width` int UNSIGNED NOT NULL DEFAULT '640' COMMENT 'Width',
  `height` int UNSIGNED NOT NULL DEFAULT '1024' COMMENT 'Height',
  `visual` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Template is visual',
  `background` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Background attachment ID#',
  `locations_info` text COMMENT 'Locations info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Templates';

--
-- Дамп данных таблицы `cms_templates`
--

INSERT INTO `cms_templates` (`id`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `description`, `width`, `height`, `visual`, `background`, `locations_info`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 'main', '<?php\nnamespace RAAS\\CMS;\n\n$colspanSM = 4;\n$colspanMD = 3;\n\n$bgPage = $Page;\nwhile (!$bgPage->background->id && $bgPage->pid) {\n    $bgPage = $bgPage->parent;\n}\n$bg = $bgPage->background;\nunset($bgPage);\n\n$separateScripts = function($text)\n{\n    $rx = \'/\\\\<script.*?\\\\>.*?\\\\<\\\\/script\\\\>/umis\';\n    $scripts = \'\';\n    $result = $text;\n    if (preg_match_all($rx, $text, $regs)) {\n        foreach ($regs[0] as $i => $script) {\n            if (!preg_match(\'/maps.*?yandex.*constructor?/umis\', $script)) {\n                $scripts .= $script . \"\\n\";\n                $result = str_replace($script, \'\', $result);\n            }\n        }\n    }\n    return array($result, $scripts);\n};\n\nob_start();\n?>\n<!DOCTYPE html>\n<?php if ($Page->noindex || $Page->Material->noindex) { ?>\n    <!--noindex-->\n<?php } ?>\n<html lang=\"<?php echo htmlspecialchars($Page->lang)?>\">\n  <head>\n    <?php echo eval(\'?\' . \'>\' . Snippet::importByURN(\'head\')->description)?>\n    <?php echo $Page->location(\'head_counters\')?>\n  </head>\n  <body class=\"body <?php echo !$Page->pid ? \' body_main\' : \'\'?>\">\n    <div id=\"top\" class=\"body__background-holder\"<?php echo $bg->id ? \' style=\"background-image: url(\\\'/\' . htmlspecialchars($bg->fileURL) . \'\\\')\"\' : \'\'?>>\n      <header class=\"body__header\">\n        <div class=\"container\">\n          <div class=\"body__header-inner\">\n            <div class=\"row\">\n              <div class=\"col-sm-6 body__logo\">\n                <?php echo $Page->location(\'logo\')?>\n              </div>\n              <div class=\"col-sm-6 body__contacts-top\">\n                <?php echo $Page->location(\'contacts_top\')?>\n              </div>\n            </div>\n          </div>\n          <div class=\"body__menu-top-outer\">\n            <div class=\"row\">\n              <div class=\"col-sm-9 body__menu-top\">\n                <?php echo $Page->location(\'menu_top\')?>\n              </div>\n              <div class=\"col-sm-3 body__search-form\">\n                <?php echo $Page->location(\'search_form\')?>\n              </div>\n            </div>\n          </div>\n          <div class=\"body__banners\">\n            <?php echo $Page->location(\'banners\')?>\n          </div>\n        </div>\n      </header>\n      <main class=\"body__main-container\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <?php\n            $leftText = $Page->location(\'left\');\n            $rightText = $Page->location(\'right\');\n            if ($leftText) { ?>\n                <aside class=\"body__left col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">\n                  <div class=\"body__left-inner\"><?php echo $leftText?></div>\n                </aside>\n            <?php } ?>\n            <?php if (count($Page->locationBlocksText[\'content\'])) {\n                $spanSM = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanSM);\n                $spanMD = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanMD);\n                ?>\n                <div class=\"body__content col-sm-<?php echo $spanSM?> col-md-<?php echo $spanMD?>\">\n                  <div class=\"body__content-inner\">\n                    <?php if (!$Page->pid) { ?>\n                        <?php echo $Page->location(\'content\')?>\n                    <?php } else { ?>\n                        <?php if ((count($Page->parents) + (bool)$Page->Material->id + (bool)$Page->Item->id) > 1) { ?>\n                            <ol class=\"breadcrumb\">\n                              <?php foreach ($Page->parents as $row) { ?>\n                                  <li><a href=\"<?php echo htmlspecialchars($row->url)?>\"><?php echo htmlspecialchars($row->getBreadcrumbsName())?></a></li>\n                              <?php } ?>\n                              <?php if ($Page->Material->id || $Page->Item->id) { ?>\n                                  <li><a href=\"<?php echo htmlspecialchars($Page->url)?>\"><?php echo htmlspecialchars($Page->getBreadcrumbsName())?></a></li>\n                              <?php } ?>\n                            </ol>\n                        <?php } ?>\n                        <h1 class=\"h1\"><?php echo htmlspecialchars($Page->getH1())?></h1>\n                        <?php echo $Page->location(\'content\')?>\n                        <?php echo $Page->location(\'share\')?>\n                    <?php } ?>\n                  </div>\n                </div>\n            <?php } ?>\n            <?php if ($rightText) { ?>\n                <aside class=\"body__right col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">\n                  <div class=\"body__right-inner\"><?php echo $rightText?></div>\n                </aside>\n            <?php } ?>\n          </div>\n        </div>\n        <?php if ($text = $Page->location(\'content2\')) { ?>\n            <div class=\"body__content2\"><?php echo $text?></div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content3\')) { ?>\n            <div class=\"body__content3\">\n              <div class=\"container\">\n                <div class=\"body__content3-inner\"><?php echo $text?></div>\n              </div>\n            </div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content4\')) { ?>\n            <div class=\"body__content4\"><?php echo $text?></div>\n        <?php } ?>\n        <?php if ($text = $Page->location(\'content5\')) { ?>\n            <div class=\"body__content5\">\n              <div class=\"container\">\n                <div class=\"body__content5-inner\"><?php echo $text?></div>\n              </div>\n            </div>\n        <?php } ?>\n      </div>\n      <footer class=\"body__footer\">\n        <div class=\"container\">\n          <div class=\"body__footer-inner\">\n            <div class=\"row\">\n              <div class=\"col-sm-6 body__copyrights\"><?php echo $Page->location(\'copyrights\')?></div>\n              <div class=\"col-sm-6 body__menu-bottom\"><?php echo $Page->location(\'menu_bottom\')?></div>\n            </div>\n          </div>\n          <div class=\"body__developer\">Разработка и сопровождение сайта <a href=\"http://volumnet.ru\" target=\"_blank\">Volume&nbsp;Networks</a></div>\n        </div>\n      </footer>\n    </div>\n    <?php\n    echo $Page->location(\'footer_counters\');\n    $content = ob_get_contents();\n    ob_end_clean();\n    $content = $separateScripts($content);\n    echo $content[0] . $content[1];\n    ?>\n  </body>\n</html>\n<?php if ($Page->noindex || $Page->Material->noindex) { ?>\n    <!--/noindex-->\n<?php } ?>\n', 660, 1320, 1, 0, '[{\"urn\":\"logo\",\"x\":\"10\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"contacts_top\",\"x\":\"500\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_top\",\"x\":\"10\",\"y\":\"130\",\"width\":\"480\",\"height\":\"60\"},{\"urn\":\"search_form\",\"x\":\"500\",\"y\":\"130\",\"width\":\"150\",\"height\":\"60\"},{\"urn\":\"banners\",\"x\":\"10\",\"y\":\"200\",\"width\":\"640\",\"height\":\"60\"},{\"urn\":\"left\",\"x\":\"10\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content\",\"x\":\"170\",\"y\":\"270\",\"width\":\"320\",\"height\":\"220\"},{\"urn\":\"right\",\"x\":\"500\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content2\",\"x\":\"10\",\"y\":\"500\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content3\",\"x\":\"170\",\"y\":\"600\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"content4\",\"x\":\"10\",\"y\":\"700\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content5\",\"x\":\"170\",\"y\":\"800\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"share\",\"x\":\"170\",\"y\":\"900\",\"width\":\"320\",\"height\":\"60\"},{\"urn\":\"copyrights\",\"x\":\"10\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_bottom\",\"x\":\"500\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"head_counters\",\"x\":\"10\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"},{\"urn\":\"footer_counters\",\"x\":\"335\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Active',
  `lang` varchar(255) NOT NULL DEFAULT 'ru' COMMENT 'Language',
  `new` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'New',
  `activated` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Activated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Users';

--
-- Дамп данных таблицы `cms_users`
--

INSERT INTO `cms_users` (`id`, `login`, `password_md5`, `email`, `post_date`, `vis`, `lang`, `new`, `activated`) VALUES
(1, 'test', '368001d7d16bca9636f07daa3347428d', 'test@test.org', '2018-04-22 09:46:02', 1, 'ru', 0, 0),
(2, 'test2', '368001d7d16bca9636f07daa3347428d', 'test2@test.org', '2018-04-22 09:47:28', 1, 'ru', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_billing_accounts`
--

DROP TABLE IF EXISTS `cms_users_billing_accounts`;
CREATE TABLE `cms_users_billing_accounts` (
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Balance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing accounts';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_billing_transactions`
--

DROP TABLE IF EXISTS `cms_users_billing_transactions`;
CREATE TABLE `cms_users_billing_transactions` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `author_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Transaction amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing transactions';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_billing_types`
--

DROP TABLE IF EXISTS `cms_users_billing_types`;
CREATE TABLE `cms_users_billing_types` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Billing types';

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_blocks_login`
--

DROP TABLE IF EXISTS `cms_users_blocks_login`;
CREATE TABLE `cms_users_blocks_login` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `email_as_login` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Show e-mail as login',
  `social_login_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Social networks log-in type: 0 - none, 1 - only registered, 2 - quick register',
  `password_save_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Password save type: 0 - none, 1 - checkbox "save password", 2 - checkbox "foreign computer"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Log in blocks';

--
-- Дамп данных таблицы `cms_users_blocks_login`
--

INSERT INTO `cms_users_blocks_login` (`id`, `email_as_login`, `social_login_type`, `password_save_type`) VALUES
(46, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_blocks_recovery`
--

DROP TABLE IF EXISTS `cms_users_blocks_recovery`;
CREATE TABLE `cms_users_blocks_recovery` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `notification_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Recovery notification ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Recovery blocks';

--
-- Дамп данных таблицы `cms_users_blocks_recovery`
--

INSERT INTO `cms_users_blocks_recovery` (`id`, `notification_id`) VALUES
(47, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_blocks_register`
--

DROP TABLE IF EXISTS `cms_users_blocks_register`;
CREATE TABLE `cms_users_blocks_register` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `form_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Register form ID#',
  `email_as_login` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Use e-mail as login',
  `notify_about_edit` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Notify admin about profile edit',
  `allow_edit_social` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Allow to edit social networks',
  `activation_type` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Activation type: 0 - by admin, 1 - by user, 2 - already active',
  `allow_to` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Allow block to: -1 - unregistered, 0 - all, 1 - registered',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Redirect unallowable users to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Register blocks';

--
-- Дамп данных таблицы `cms_users_blocks_register`
--

INSERT INTO `cms_users_blocks_register` (`id`, `form_id`, `email_as_login`, `notify_about_edit`, `allow_edit_social`, `activation_type`, `allow_to`, `redirect_url`) VALUES
(45, 4, 0, 0, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_groups_assoc`
--

DROP TABLE IF EXISTS `cms_users_groups_assoc`;
CREATE TABLE `cms_users_groups_assoc` (
  `uid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Users-groups associations';

--
-- Дамп данных таблицы `cms_users_groups_assoc`
--

INSERT INTO `cms_users_groups_assoc` (`uid`, `gid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_users_social`
--

DROP TABLE IF EXISTS `cms_users_social`;
CREATE TABLE `cms_users_social` (
  `uid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Social network page URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Users social networks associations';

--
-- Дамп данных таблицы `cms_users_social`
--

INSERT INTO `cms_users_social` (`uid`, `url`) VALUES
(1, 'https://facebook.com/test'),
(1, 'https://vk.com/test');

-- --------------------------------------------------------

--
-- Структура таблицы `crontab`
--

DROP TABLE IF EXISTS `crontab`;
CREATE TABLE `crontab` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Process ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `vis` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is active',
  `once` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Process once',
  `minutes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Minutes',
  `hours` varchar(255) NOT NULL DEFAULT '' COMMENT 'Hours',
  `days` varchar(255) NOT NULL DEFAULT '' COMMENT 'Days',
  `weekdays` varchar(255) NOT NULL DEFAULT '' COMMENT 'Weekdays',
  `command_line` varchar(255) NOT NULL DEFAULT '' COMMENT 'Arbitrary command line',
  `command_classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Command classname',
  `args` text COMMENT 'Command arguments',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Processing start time',
  `save_log` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Save log',
  `email_log` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email for sending log',
  `priority` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Crontab';

-- --------------------------------------------------------

--
-- Структура таблицы `crontab_logs`
--

DROP TABLE IF EXISTS `crontab_logs`;
CREATE TABLE `crontab_logs` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Crontab task ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Backup date/time',
  `attachment_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attachment ID#'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Crontab logs';

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` smallint UNSIGNED NOT NULL COMMENT 'ID#',
  `pid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups of users';

-- --------------------------------------------------------

--
-- Структура таблицы `groups_levels_assoc`
--

DROP TABLE IF EXISTS `groups_levels_assoc`;
CREATE TABLE `groups_levels_assoc` (
  `gid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint NOT NULL DEFAULT '0' COMMENT 'Level ID#'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups-rights levels associations';

-- --------------------------------------------------------

--
-- Структура таблицы `groups_rights`
--

DROP TABLE IF EXISTS `groups_rights`;
CREATE TABLE `groups_rights` (
  `gid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Groups access rights';

-- --------------------------------------------------------

--
-- Структура таблицы `levels`
--

DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels` (
  `id` smallint UNSIGNED NOT NULL COMMENT 'ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `access` text COMMENT 'Access data',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Locked',
  `priority` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Access levels';

-- --------------------------------------------------------

--
-- Структура таблицы `processes`
--

DROP TABLE IF EXISTS `processes`;
CREATE TABLE `processes` (
  `id` int UNSIGNED NOT NULL COMMENT 'ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start date/time',
  `query` varchar(255) NOT NULL DEFAULT '' COMMENT 'Process query',
  `user_agent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User agent',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP address'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Processes';

-- --------------------------------------------------------

--
-- Структура таблицы `registry`
--

DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Key',
  `value` text COMMENT 'Value',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Locked'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='System Registry';

--
-- Дамп данных таблицы `registry`
--

INSERT INTO `registry` (`m`, `name`, `value`, `locked`) VALUES
('', 'installDate', '2023-12-04 12:35:10', 1),
('', 'cookieLifetime', '14', 0),
('', 'minPasswordLength', '3', 0),
('', 'rowsPerPage', '20', 0),
('cms', 'tnsize', '300', 0),
('cms', 'maxsize', '1920', 0),
('cms', 'cache', '0', 0),
('cms', 'installDate', '2023-12-04 12:35:37', 1),
('cms', 'isActive', '1', 0),
('cms.meta_checker', 'installDate', '2018-04-05 11:34:16', 1),
('cms.meta_checker', 'isActive', '1', 0),
('cms.shop', 'installDate', '2023-12-04 12:35:51', 1),
('cms.shop', 'isActive', '1', 0),
('cms.users', 'activation_notify', '<?php\nnamespace RAAS\\CMS\\Users;\n\n$recoveryBlocks = Block_Recovery::getSet(array(\n    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Recovery\'\",\n    \'orderBy\' => \'id\'\n));\n$recoveryPages = array();\nif ($recoveryBlocks) {\n    $recoveryPages = array();\n    foreach ($recoveryBlocks as $recoveryBlock) {\n        $recoveryPages = array_merge($recoveryPages, $recoveryBlock->pages);\n    }\n}\n$recoveryPage = null;\n$langRecoveryPages = array_filter($recoveryPages, function ($x) use ($User) {\n    return $x->lang == $User->lang;\n});\nif ($langRecoveryPages) {\n    $recoveryPage = array_shift($langRecoveryPages);\n}\nif (!$recoveryPage->id && $recoveryPages) {\n    $recoveryPage = array_shift($recoveryPages);\n}\n?>\n<p><?php echo GREETINGS?></p>\n\n<?php if ($active) { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_ACTIVATED?></p>\n    <p><?php echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM?></p>\n    <p>\n      <strong><?php echo YOUR_LOGIN?>:</strong> <?php echo htmlspecialchars($User->login)?><br />\n      <?php\n      $recoveryUrl = (\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'])\n                   . ($recoveryPage->id ? $recoveryPage->url : \'/recovery/\');\n      echo sprintf(YOUR_PASSWORD_ISNT_STORED_IN_DATABASE_FOR_SECURITY_REASON, htmlspecialchars($recoveryUrl));\n      ?>\n    </p>\n<?php } else { ?>\n    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_BLOCKED?></p>\n    <p><?php echo PLEASE_CONTACT_SITE_ADMINISTRATOR_TO_ASK_REASON?></p>\n<?php } ?>\n\n<p>--</p>\n<p>\n  <?php echo WITH_RESPECT?>,<br />\n  <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>\n</p>\n', 0),
('cms.users', 'automatic_notification', '1', 0),
('cms.users', 'installDate', '2023-12-04 12:35:53', 1),
('cms.users', 'isActive', '1', 0),
('', 'baseVersion', '4.3.25', 0),
('cms', 'baseVersion', '4.3.68', 0),
('cms.shop', 'baseVersion', '4.3.56', 0),
('cms.users', 'baseVersion', '4.3.16', 0);

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` smallint UNSIGNED NOT NULL COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `register_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Last name',
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'First name',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Second name',
  `root` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Global admin',
  `ip_filter` varchar(255) NOT NULL DEFAULT '' COMMENT 'User IP filter',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User is blocked',
  `cache_rights` text COMMENT 'Rights table serialize',
  `prefs` text COMMENT 'User preferences'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users';

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `register_date`, `password_md5`, `email`, `last_name`, `first_name`, `second_name`, `root`, `ip_filter`, `blocked`, `cache_rights`, `prefs`) VALUES
(1, 'admin', '2018-04-05 11:33:36', '2f3ea141f3b969b622db16187d81333d', '', '', '', '', 1, '', 0, '{\"cms\":{\"rights\":[],\"mask\":-1},\"\\/\":{\"rights\":[],\"mask\":-1},\"cms.users\":{\"rights\":[],\"mask\":-1},\"cms.shop\":{\"rights\":[],\"mask\":-1}}', '{\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `users_groups_assoc`
--

DROP TABLE IF EXISTS `users_groups_assoc`;
CREATE TABLE `users_groups_assoc` (
  `uid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `group_admin` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group admin'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users-groups associations';

-- --------------------------------------------------------

--
-- Структура таблицы `users_levels_assoc`
--

DROP TABLE IF EXISTS `users_levels_assoc`;
CREATE TABLE `users_levels_assoc` (
  `uid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint NOT NULL DEFAULT '0' COMMENT 'Level ID#'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users-rights levels associations';

-- --------------------------------------------------------

--
-- Структура таблицы `users_rights`
--

DROP TABLE IF EXISTS `users_rights`;
CREATE TABLE `users_rights` (
  `uid` smallint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Users access rights';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classname` (`classname`,`pid`),
  ADD KEY `classname_2` (`classname`),
  ADD KEY `pid` (`pid`),
  ADD KEY `realname` (`realname`(32));

--
-- Индексы таблицы `cms_access`
--
ALTER TABLE `cms_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_access_blocks_cache`
--
ALTER TABLE `cms_access_blocks_cache`
  ADD PRIMARY KEY (`uid`,`block_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `block_id` (`block_id`);

--
-- Индексы таблицы `cms_access_materials_cache`
--
ALTER TABLE `cms_access_materials_cache`
  ADD PRIMARY KEY (`uid`,`material_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `material_id` (`material_id`);

--
-- Индексы таблицы `cms_access_pages_cache`
--
ALTER TABLE `cms_access_pages_cache`
  ADD PRIMARY KEY (`uid`,`page_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `cms_blocks`
--
ALTER TABLE `cms_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `cache_interface_id` (`cache_interface_id`);

--
-- Индексы таблицы `cms_blocks_form`
--
ALTER TABLE `cms_blocks_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form` (`form`);

--
-- Индексы таблицы `cms_blocks_html`
--
ALTER TABLE `cms_blocks_html`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_blocks_material`
--
ALTER TABLE `cms_blocks_material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_type` (`material_type`);

--
-- Индексы таблицы `cms_blocks_material_filter`
--
ALTER TABLE `cms_blocks_material_filter`
  ADD KEY `id` (`id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_blocks_material_sort`
--
ALTER TABLE `cms_blocks_material_sort`
  ADD KEY `id` (`id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_blocks_menu`
--
ALTER TABLE `cms_blocks_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu` (`menu`);

--
-- Индексы таблицы `cms_blocks_pages_assoc`
--
ALTER TABLE `cms_blocks_pages_assoc`
  ADD PRIMARY KEY (`block_id`,`page_id`),
  ADD KEY `block_id` (`block_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_blocks_php`
--
ALTER TABLE `cms_blocks_php`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widget` (`widget`);

--
-- Индексы таблицы `cms_blocks_search`
--
ALTER TABLE `cms_blocks_search`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_blocks_search_languages_assoc`
--
ALTER TABLE `cms_blocks_search_languages_assoc`
  ADD PRIMARY KEY (`id`,`language`),
  ADD KEY `id` (`id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `cms_blocks_search_material_types_assoc`
--
ALTER TABLE `cms_blocks_search_material_types_assoc`
  ADD PRIMARY KEY (`id`,`material_type`),
  ADD KEY `id` (`id`),
  ADD KEY `material_type` (`material_type`);

--
-- Индексы таблицы `cms_blocks_search_pages_assoc`
--
ALTER TABLE `cms_blocks_search_pages_assoc`
  ADD PRIMARY KEY (`id`,`page_id`),
  ADD KEY `id` (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `cms_data`
--
ALTER TABLE `cms_data`
  ADD PRIMARY KEY (`pid`,`fid`,`fii`),
  ADD KEY `pid` (`pid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `fii` (`fii`),
  ADD KEY `value` (`value`(32));

--
-- Индексы таблицы `cms_dictionaries`
--
ALTER TABLE `cms_dictionaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `urn` (`urn`),
  ADD KEY `orderby` (`orderby`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_dictionaries_tree_cache`
--
ALTER TABLE `cms_dictionaries_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_feedback`
--
ALTER TABLE `cms_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `cms_fieldgroups`
--
ALTER TABLE `cms_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `classname` (`classname`),
  ADD KEY `classname_2` (`classname`,`pid`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_fields`
--
ALTER TABLE `cms_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `datatype` (`datatype`),
  ADD KEY `classname` (`classname`),
  ADD KEY `classname_2` (`classname`,`pid`),
  ADD KEY `preprocessor_id` (`preprocessor_id`),
  ADD KEY `postprocessor_id` (`postprocessor_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `gid` (`gid`);

--
-- Индексы таблицы `cms_fields_form_vis`
--
ALTER TABLE `cms_fields_form_vis`
  ADD PRIMARY KEY (`fid`,`pid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `cms_forms`
--
ALTER TABLE `cms_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `urn` (`urn`);

--
-- Индексы таблицы `cms_groups`
--
ALTER TABLE `cms_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `urn` (`urn`);

--
-- Индексы таблицы `cms_groups_tree_cache`
--
ALTER TABLE `cms_groups_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_materials`
--
ALTER TABLE `cms_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `urn` (`urn`),
  ADD KEY `show_from` (`show_from`),
  ADD KEY `show_to` (`show_to`),
  ADD KEY `priority` (`priority`),
  ADD KEY `cache_url_parent_id` (`cache_url_parent_id`),
  ADD KEY `cache_url` (`cache_url`);

--
-- Индексы таблицы `cms_materials_affected_pages_cache`
--
ALTER TABLE `cms_materials_affected_pages_cache`
  ADD PRIMARY KEY (`material_id`,`page_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `cms_materials_pages_assoc`
--
ALTER TABLE `cms_materials_pages_assoc`
  ADD PRIMARY KEY (`id`,`pid`),
  ADD KEY `id` (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `cms_materials_votes`
--
ALTER TABLE `cms_materials_votes`
  ADD PRIMARY KEY (`material_id`,`ip`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `cms_material_types`
--
ALTER TABLE `cms_material_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `urn` (`urn`);

--
-- Индексы таблицы `cms_material_types_affected_pages_for_materials_cache`
--
ALTER TABLE `cms_material_types_affected_pages_for_materials_cache`
  ADD PRIMARY KEY (`material_type_id`,`page_id`),
  ADD KEY `material_type_id` (`material_type_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `nat` (`nat`);

--
-- Индексы таблицы `cms_material_types_affected_pages_for_self_cache`
--
ALTER TABLE `cms_material_types_affected_pages_for_self_cache`
  ADD PRIMARY KEY (`material_type_id`,`page_id`),
  ADD KEY `material_type_id` (`material_type_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `nat` (`nat`);

--
-- Индексы таблицы `cms_material_types_tree_cache`
--
ALTER TABLE `cms_material_types_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `urn` (`urn`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_menus_tree_cache`
--
ALTER TABLE `cms_menus_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `urn` (`urn`),
  ADD KEY `template` (`template`),
  ADD KEY `priority` (`priority`),
  ADD KEY `cache_url` (`cache_url`);

--
-- Индексы таблицы `cms_pages_data`
--
ALTER TABLE `cms_pages_data`
  ADD PRIMARY KEY (`pid`,`fid`,`fii`),
  ADD KEY `pid` (`pid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `fii` (`fii`);

--
-- Индексы таблицы `cms_pages_tree_cache`
--
ALTER TABLE `cms_pages_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_redirects`
--
ALTER TABLE `cms_redirects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_from` (`url_from`),
  ADD KEY `post_date` (`post_date`);

--
-- Индексы таблицы `cms_shop_blocks_cart`
--
ALTER TABLE `cms_shop_blocks_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_type` (`cart_type`),
  ADD KEY `epay_interface_id` (`epay_interface_id`);

--
-- Индексы таблицы `cms_shop_blocks_yml`
--
ALTER TABLE `cms_shop_blocks_yml`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_shop_blocks_yml_currencies`
--
ALTER TABLE `cms_shop_blocks_yml_currencies`
  ADD PRIMARY KEY (`id`,`currency_name`),
  ADD KEY `currency_name` (`currency_name`);

--
-- Индексы таблицы `cms_shop_blocks_yml_fields`
--
ALTER TABLE `cms_shop_blocks_yml_fields`
  ADD PRIMARY KEY (`id`,`mtype`,`field_name`),
  ADD KEY `id` (`id`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `field_name` (`field_name`);

--
-- Индексы таблицы `cms_shop_blocks_yml_ignored_fields`
--
ALTER TABLE `cms_shop_blocks_yml_ignored_fields`
  ADD PRIMARY KEY (`id`,`mtype`,`field_id`),
  ADD KEY `id` (`id`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `field_id` (`field_id`);

--
-- Индексы таблицы `cms_shop_blocks_yml_material_types_assoc`
--
ALTER TABLE `cms_shop_blocks_yml_material_types_assoc`
  ADD PRIMARY KEY (`id`,`mtype`),
  ADD KEY `id` (`id`),
  ADD KEY `mtype` (`mtype`);

--
-- Индексы таблицы `cms_shop_blocks_yml_pages_assoc`
--
ALTER TABLE `cms_shop_blocks_yml_pages_assoc`
  ADD PRIMARY KEY (`id`,`page_id`),
  ADD KEY `id` (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Индексы таблицы `cms_shop_blocks_yml_params`
--
ALTER TABLE `cms_shop_blocks_yml_params`
  ADD PRIMARY KEY (`id`,`mtype`,`param_name`),
  ADD KEY `id` (`id`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `param_name` (`param_name`);

--
-- Индексы таблицы `cms_shop_carts`
--
ALTER TABLE `cms_shop_carts`
  ADD PRIMARY KEY (`cart_type_id`,`uid`,`material_id`,`meta`),
  ADD KEY `cart_type_id` (`cart_type_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `meta` (`meta`);

--
-- Индексы таблицы `cms_shop_cart_types`
--
ALTER TABLE `cms_shop_cart_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Индексы таблицы `cms_shop_cart_types_material_types_assoc`
--
ALTER TABLE `cms_shop_cart_types_material_types_assoc`
  ADD PRIMARY KEY (`ctype`,`mtype`),
  ADD KEY `ctype` (`ctype`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `price_id` (`price_id`);

--
-- Индексы таблицы `cms_shop_imageloaders`
--
ALTER TABLE `cms_shop_imageloaders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `ufid` (`ufid`),
  ADD KEY `ifid` (`ifid`),
  ADD KEY `interface_id` (`interface_id`),
  ADD KEY `urn` (`urn`);

--
-- Индексы таблицы `cms_shop_orders`
--
ALTER TABLE `cms_shop_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `paid` (`paid`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Индексы таблицы `cms_shop_orders_goods`
--
ALTER TABLE `cms_shop_orders_goods`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `meta` (`meta`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_shop_orders_history`
--
ALTER TABLE `cms_shop_orders_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `paid` (`paid`),
  ADD KEY `post_date` (`post_date`);

--
-- Индексы таблицы `cms_shop_orders_statuses`
--
ALTER TABLE `cms_shop_orders_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_shop_priceloaders`
--
ALTER TABLE `cms_shop_priceloaders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mtype` (`mtype`),
  ADD KEY `ufid` (`ufid`),
  ADD KEY `interface_id` (`interface_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `urn` (`urn`);

--
-- Индексы таблицы `cms_shop_priceloaders_columns`
--
ALTER TABLE `cms_shop_priceloaders_columns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `cms_snippets`
--
ALTER TABLE `cms_snippets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Индексы таблицы `cms_snippet_folders`
--
ALTER TABLE `cms_snippet_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `cms_snippet_folders_tree_cache`
--
ALTER TABLE `cms_snippet_folders_tree_cache`
  ADD PRIMARY KEY (`child_id`,`__level`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `__level` (`__level`);

--
-- Индексы таблицы `cms_templates`
--
ALTER TABLE `cms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background` (`background`),
  ADD KEY `urn` (`urn`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Индексы таблицы `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`login`),
  ADD KEY `email` (`email`),
  ADD KEY `post_date` (`post_date`),
  ADD KEY `vis` (`vis`),
  ADD KEY `new` (`new`),
  ADD KEY `activated` (`activated`);

--
-- Индексы таблицы `cms_users_billing_accounts`
--
ALTER TABLE `cms_users_billing_accounts`
  ADD PRIMARY KEY (`uid`,`billing_type_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `billing_type_id` (`billing_type_id`),
  ADD KEY `balance` (`balance`);

--
-- Индексы таблицы `cms_users_billing_transactions`
--
ALTER TABLE `cms_users_billing_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `billing_type_id` (`billing_type_id`),
  ADD KEY `post_date` (`post_date`),
  ADD KEY `amount` (`amount`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `cms_users_billing_types`
--
ALTER TABLE `cms_users_billing_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_users_blocks_login`
--
ALTER TABLE `cms_users_blocks_login`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cms_users_blocks_recovery`
--
ALTER TABLE `cms_users_blocks_recovery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Индексы таблицы `cms_users_blocks_register`
--
ALTER TABLE `cms_users_blocks_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Индексы таблицы `cms_users_groups_assoc`
--
ALTER TABLE `cms_users_groups_assoc`
  ADD PRIMARY KEY (`uid`,`gid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `gid` (`gid`);

--
-- Индексы таблицы `cms_users_social`
--
ALTER TABLE `cms_users_social`
  ADD PRIMARY KEY (`uid`,`url`),
  ADD KEY `uid` (`uid`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `crontab`
--
ALTER TABLE `crontab`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `crontab_logs`
--
ALTER TABLE `crontab_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `post_date` (`post_date`),
  ADD KEY `attachment_id` (`attachment_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Индексы таблицы `groups_levels_assoc`
--
ALTER TABLE `groups_levels_assoc`
  ADD PRIMARY KEY (`gid`,`m`),
  ADD KEY `gid` (`gid`),
  ADD KEY `lid` (`lid`),
  ADD KEY `m` (`m`);

--
-- Индексы таблицы `groups_rights`
--
ALTER TABLE `groups_rights`
  ADD PRIMARY KEY (`gid`,`m`),
  ADD KEY `gid` (`gid`),
  ADD KEY `m` (`m`);

--
-- Индексы таблицы `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m` (`m`);

--
-- Индексы таблицы `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_date` (`post_date`);

--
-- Индексы таблицы `registry`
--
ALTER TABLE `registry`
  ADD PRIMARY KEY (`m`,`name`),
  ADD KEY `m` (`m`),
  ADD KEY `name` (`name`);


--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_groups_assoc`
--
ALTER TABLE `users_groups_assoc`
  ADD PRIMARY KEY (`uid`,`gid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `gid` (`gid`);

--
-- Индексы таблицы `users_levels_assoc`
--
ALTER TABLE `users_levels_assoc`
  ADD PRIMARY KEY (`uid`,`m`),
  ADD KEY `uid` (`uid`),
  ADD KEY `lid` (`lid`),
  ADD KEY `m` (`m`);

--
-- Индексы таблицы `users_rights`
--
ALTER TABLE `users_rights`
  ADD PRIMARY KEY (`uid`,`m`),
  ADD KEY `uid` (`uid`),
  ADD KEY `m` (`m`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `cms_access`
--
ALTER TABLE `cms_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cms_blocks`
--
ALTER TABLE `cms_blocks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `cms_dictionaries`
--
ALTER TABLE `cms_dictionaries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `cms_feedback`
--
ALTER TABLE `cms_feedback`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_fieldgroups`
--
ALTER TABLE `cms_fieldgroups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `cms_fields`
--
ALTER TABLE `cms_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `cms_forms`
--
ALTER TABLE `cms_forms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `cms_groups`
--
ALTER TABLE `cms_groups`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_materials`
--
ALTER TABLE `cms_materials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `cms_material_types`
--
ALTER TABLE `cms_material_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `cms_redirects`
--
ALTER TABLE `cms_redirects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_shop_blocks_yml`
--
ALTER TABLE `cms_shop_blocks_yml`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `cms_shop_cart_types`
--
ALTER TABLE `cms_shop_cart_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_shop_imageloaders`
--
ALTER TABLE `cms_shop_imageloaders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_shop_orders`
--
ALTER TABLE `cms_shop_orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `cms_shop_orders_history`
--
ALTER TABLE `cms_shop_orders_history`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `cms_shop_orders_statuses`
--
ALTER TABLE `cms_shop_orders_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cms_shop_priceloaders`
--
ALTER TABLE `cms_shop_priceloaders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_shop_priceloaders_columns`
--
ALTER TABLE `cms_shop_priceloaders_columns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `cms_snippets`
--
ALTER TABLE `cms_snippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `cms_snippet_folders`
--
ALTER TABLE `cms_snippet_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_templates`
--
ALTER TABLE `cms_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cms_users_billing_transactions`
--
ALTER TABLE `cms_users_billing_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `cms_users_billing_types`
--
ALTER TABLE `cms_users_billing_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `cms_users_blocks_login`
--
ALTER TABLE `cms_users_blocks_login`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `cms_users_blocks_recovery`
--
ALTER TABLE `cms_users_blocks_recovery`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `cms_users_blocks_register`
--
ALTER TABLE `cms_users_blocks_register`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `crontab`
--
ALTER TABLE `crontab`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `crontab_logs`
--
ALTER TABLE `crontab_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `levels`
--
ALTER TABLE `levels`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#';

--
-- AUTO_INCREMENT для таблицы `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=32653;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID#', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
