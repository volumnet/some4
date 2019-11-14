-- 
-- Table structure: attachments 
-- 
DROP TABLE IF EXISTS attachments;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `image` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Is image',
  `realname` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Real file name',
  `filename` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Original file name',
  `mime` varchar(255) NOT NULL DEFAULT '0' COMMENT 'MIME-type',
  PRIMARY KEY (`id`),
  KEY `classname` (`classname`,`pid`),
  KEY `classname_2` (`classname`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='Attachments';

-- 
-- Table data: attachments
-- 
INSERT INTO `attachments` (`id`, `classname`, `pid`, `image`, `realname`, `filename`, `mime`) VALUES 
('1', 'RAAS\\CMS\\Material_Field', '15', '1', '0', '0', 'application/octet-stream'),
('2', 'RAAS\\CMS\\Material_Field', '15', '1', '0', '0', 'application/octet-stream'),
('3', 'RAAS\\CMS\\Material_Field', '15', '1', '0', '0', 'application/octet-stream'),
('4', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('5', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('6', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('7', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('8', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('9', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('10', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('11', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('12', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('13', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('14', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('15', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('16', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('17', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('18', 'RAAS\\CMS\\Material_Field', '17', '1', '0', '0', 'application/octet-stream'),
('19', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('20', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('21', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('22', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('23', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('24', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('25', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('26', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('27', 'RAAS\\CMS\\Page_Field', '2', '1', '0', '0', 'application/octet-stream'),
('28', 'RAAS\\CMS\\Material_Field', '29', '0', 'test.doc', 'test.doc', 'application/binary'),
('29', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_1.pdf', 'test.pdf', 'application/binary'),
('30', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('31', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('32', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('33', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('34', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_2.doc', 'test.doc', 'application/binary'),
('35', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_3.pdf', 'test.pdf', 'application/binary'),
('36', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('37', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_4.doc', 'test.doc', 'application/binary'),
('38', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_5.pdf', 'test.pdf', 'application/binary'),
('39', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('40', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_6.doc', 'test.doc', 'application/binary'),
('41', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_7.pdf', 'test.pdf', 'application/binary'),
('42', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('43', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_8.doc', 'test.doc', 'application/binary'),
('44', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_9.pdf', 'test.pdf', 'application/binary'),
('45', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('46', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_10.doc', 'test.doc', 'application/binary'),
('47', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_11.pdf', 'test.pdf', 'application/binary'),
('48', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('49', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_12.doc', 'test.doc', 'application/binary'),
('50', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_13.pdf', 'test.pdf', 'application/binary'),
('51', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('52', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_14.doc', 'test.doc', 'application/binary'),
('53', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_15.pdf', 'test.pdf', 'application/binary'),
('54', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('55', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_16.doc', 'test.doc', 'application/binary'),
('56', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_17.pdf', 'test.pdf', 'application/binary'),
('57', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream'),
('58', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_18.doc', 'test.doc', 'application/binary'),
('59', 'RAAS\\CMS\\Material_Field', '29', '0', 'test_19.pdf', 'test.pdf', 'application/binary'),
('60', 'RAAS\\CMS\\Material_Field', '27', '1', '0', '0', 'application/octet-stream');


-- *************************************************************
-- 
-- Table structure: cms_access
-- 
DROP TABLE IF EXISTS cms_access;
CREATE TABLE `cms_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `block_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  `to_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'To (type)',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `material_id` (`material_id`),
  KEY `block_id` (`block_id`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Site access';

-- 
-- Table data: cms_access
-- 
INSERT INTO `cms_access` (`id`, `page_id`, `material_id`, `block_id`, `allow`, `to_type`, `uid`, `gid`, `priority`) VALUES 
('1', '4', '0', '0', '0', '0', '0', '0', '0'),
('2', '4', '0', '0', '1', '4', '0', '1', '1'),
('3', '0', '0', '19', '0', '0', '0', '0', '0'),
('4', '0', '0', '19', '1', '3', '2', '0', '1'),
('5', '0', '7', '0', '0', '0', '0', '0', '0'),
('6', '0', '7', '0', '1', '3', '1', '0', '1');


-- *************************************************************
-- 
-- Table structure: cms_access_blocks_cache
-- 
DROP TABLE IF EXISTS cms_access_blocks_cache;
CREATE TABLE `cms_access_blocks_cache` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `block_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `allow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`block_id`),
  KEY `uid` (`uid`),
  KEY `block_id` (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blocks access cache';

-- 
-- Table data: cms_access_blocks_cache
-- 
INSERT INTO `cms_access_blocks_cache` (`uid`, `block_id`, `allow`) VALUES 
('0', '19', '0'),
('1', '19', '0'),
('2', '19', '1');


-- *************************************************************
-- 
-- Table structure: cms_access_materials_cache
-- 
DROP TABLE IF EXISTS cms_access_materials_cache;
CREATE TABLE `cms_access_materials_cache` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `allow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`material_id`),
  KEY `uid` (`uid`),
  KEY `material_id` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Materials access cache';

-- 
-- Table data: cms_access_materials_cache
-- 
INSERT INTO `cms_access_materials_cache` (`uid`, `material_id`, `allow`) VALUES 
('0', '7', '0'),
('1', '7', '1'),
('2', '7', '0');


-- *************************************************************
-- 
-- Table structure: cms_access_pages_cache
-- 
DROP TABLE IF EXISTS cms_access_pages_cache;
CREATE TABLE `cms_access_pages_cache` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `allow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 - allow, 0 - deny',
  PRIMARY KEY (`uid`,`page_id`),
  KEY `uid` (`uid`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pages access cache';

-- 
-- Table data: cms_access_pages_cache
-- 
INSERT INTO `cms_access_pages_cache` (`uid`, `page_id`, `allow`) VALUES 
('0', '4', '0'),
('1', '4', '1'),
('2', '4', '0');


-- *************************************************************
-- 
-- Table structure: cms_blocks
-- 
DROP TABLE IF EXISTS cms_blocks;
CREATE TABLE `cms_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT 'Location',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `block_type` varchar(255) NOT NULL DEFAULT 'RAAS\\CMS\\Block_HTML' COMMENT 'Block type',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `inherit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit',
  `nat` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Translate address',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT 'Additional params',
  `interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `widget_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Widget ID#',
  `cache_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Cache type',
  `cache_single_page` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Cache by single pages',
  `cache_interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cache interface_id',
  `vis_material` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility by material',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `cache_interface_id` (`cache_interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='Site pages';

-- 
-- Table data: cms_blocks
-- 
INSERT INTO `cms_blocks` (`id`, `location`, `vis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `block_type`, `name`, `inherit`, `nat`, `params`, `interface_id`, `widget_id`, `cache_type`, `cache_single_page`, `cache_interface_id`, `vis_material`) VALUES 
('1', 'logo', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Логотип', '1', '1', '', '0', '15', '0', '0', '0', '0'),
('2', 'contacts_top', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Контакты', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('3', 'contacts_top', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Социальные сети', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('4', 'copyrights', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Копирайты', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('5', 'copyrights', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Privacy', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('6', 'footer_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_Form', 'Обратная связь', '1', '1', '', '2', '11', '0', '0', '0', '0'),
('7', 'footer_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_Form', 'Заказать звонок', '1', '1', '', '2', '13', '0', '0', '0', '0'),
('8', 'footer_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Яндекс.Метрика', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('9', 'head_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Google Analytics', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('10', 'footer_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Триггеры', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('11', 'footer_counters', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Уведомление о Cookies', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('12', 'content', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Добро пожаловать', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('13', 'content', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '1', '1', 'RAAS\\CMS\\Block_Material', 'Наши преимущества', '0', '0', '', '1', '16', '0', '0', '0', '0'),
('14', 'menu_top', '1', '2018-04-05 11:33:48', '2018-04-05 11:33:48', '1', '1', 'RAAS\\CMS\\Block_Menu', 'Верхнее меню', '1', '1', '', '3', '20', '1', '0', '6', '0'),
('15', 'menu_bottom', '1', '2018-04-05 11:33:48', '2018-04-05 11:33:48', '1', '1', 'RAAS\\CMS\\Block_Menu', 'Нижнее меню', '1', '1', '', '3', '21', '1', '0', '6', '0'),
('16', 'banners', '1', '2018-04-05 11:33:48', '2018-04-05 11:33:48', '1', '1', 'RAAS\\CMS\\Block_Material', 'Баннеры', '0', '0', '', '1', '9', '0', '0', '0', '0'),
('17', 'content', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('18', 'content', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('19', 'content', '1', '2018-04-05 11:34:14', '2018-04-22 09:49:11', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('20', 'content', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('21', 'content', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Текстовый блок', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('22', 'content', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_Material', 'Новости', '0', '1', '', '1', '22', '0', '0', '0', '0'),
('23', 'left', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '1', '1', 'RAAS\\CMS\\Block_Material', 'Новости', '1', '0', '', '1', '23', '0', '0', '0', '0'),
('24', 'content', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Карта', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('25', 'content', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Контакты', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('26', 'content', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Обратная связь', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('27', 'content', '1', '2018-04-05 11:34:15', '2018-04-22 13:59:43', '1', '1', 'RAAS\\CMS\\Block_Form', 'Обратная связь', '0', '1', '', '2', '10', '2', '0', '0', '0'),
('28', 'content', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_HTML', '404 — страница не найдена', '0', '1', '', '0', '0', '0', '0', '0', '0'),
('29', 'content', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_Menu', 'Карта сайта', '0', '1', '', '3', '19', '0', '0', '0', '0'),
('30', '', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '1', '1', 'RAAS\\CMS\\Block_PHP', 'sitemap.xml', '0', '1', '', '0', '14', '0', '0', '0', '0'),
('31', '', '1', '2018-04-05 11:34:16', '2018-04-05 11:34:16', '1', '1', 'RAAS\\CMS\\Block_HTML', 'robots.txt', '0', '1', '', '0', '17', '0', '0', '0', '0'),
('32', '', '1', '2018-04-05 11:34:16', '2018-04-05 11:34:16', '1', '1', 'RAAS\\CMS\\Block_HTML', 'custom.css', '0', '1', '', '0', '18', '0', '0', '0', '0'),
('33', 'share', '1', '2018-04-05 11:34:16', '2018-04-05 11:34:16', '1', '1', 'RAAS\\CMS\\Block_HTML', 'Поделиться', '1', '1', '', '0', '0', '0', '0', '0', '0'),
('34', 'content', '1', '2018-04-05 11:34:27', '2019-03-29 14:53:25', '1', '1', 'RAAS\\CMS\\Block_Material', 'Каталог продукции', '1', '1', 'metaTemplates=template&withChildrenGoods=1&commentFormBlock=52&commentsListBlock=51&faqFormBlock=53&faqListBlock=50', '31', '37', '2', '0', '6', '0'),
('35', 'content', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '1', '1', 'RAAS\\CMS\\Block_Material', 'Каталог продукции', '0', '0', '', '31', '37', '0', '0', '0', '0'),
('36', 'content', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '1', '1', 'RAAS\\CMS\\Block_PHP', 'Спецпредложение', '0', '1', '', '0', '43', '0', '0', '0', '0'),
('37', 'left', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '1', '1', 'RAAS\\CMS\\Block_Menu', 'Левое меню', '1', '1', '', '3', '41', '1', '0', '6', '0'),
('38', 'content', '1', '2018-04-05 11:34:28', '2018-04-05 11:34:28', '1', '1', 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', '0', '1', '', '24', '32', '0', '0', '0', '0'),
('39', 'left', '1', '2018-04-05 11:34:28', '2018-04-05 11:34:28', '1', '1', 'RAAS\\CMS\\Block_PHP', 'Информер корзины', '1', '1', '', '0', '39', '0', '0', '0', '0'),
('40', '', '1', '2018-04-05 11:34:28', '2018-04-05 11:34:28', '1', '1', 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', '0', '1', '', '24', '32', '0', '0', '0', '0'),
('41', 'content', '1', '2018-04-05 11:34:29', '2018-04-05 11:34:29', '1', '1', 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', '0', '1', '', '24', '32', '0', '0', '0', '0'),
('42', 'left', '1', '2018-04-05 11:34:29', '2018-04-05 11:34:29', '1', '1', 'RAAS\\CMS\\Block_PHP', 'Информер избранного', '1', '1', '', '0', '40', '0', '0', '0', '0'),
('43', '', '1', '2018-04-05 11:34:29', '2018-04-05 11:34:29', '1', '1', 'RAAS\\CMS\\Shop\\Block_Cart', 'Корзина', '0', '1', '', '24', '32', '0', '0', '0', '0'),
('44', '', '1', '2018-04-05 11:34:30', '2018-04-05 11:34:30', '1', '1', 'RAAS\\CMS\\Shop\\Block_YML', 'Яндекс.Маркет', '0', '1', '', '28', '34', '0', '0', '0', '0'),
('45', 'content', '1', '2018-04-22 09:45:26', '2018-04-22 09:45:26', '1', '1', 'RAAS\\CMS\\Users\\Block_Register', 'Регистрация', '0', '1', '', '45', '51', '0', '0', '0', '0'),
('46', 'content', '1', '2018-04-22 09:45:26', '2018-04-22 09:45:26', '1', '1', 'RAAS\\CMS\\Users\\Block_LogIn', 'Вход в систему', '0', '1', '', '47', '53', '0', '0', '0', '0'),
('47', 'content', '1', '2018-04-22 09:45:26', '2018-04-22 09:45:26', '1', '1', 'RAAS\\CMS\\Users\\Block_Recovery', 'Восстановление пароля', '0', '1', '', '48', '54', '0', '0', '0', '0'),
('48', 'content', '1', '2018-04-22 09:45:26', '2018-04-22 09:45:26', '1', '1', 'RAAS\\CMS\\Users\\Block_Activation', 'Активация', '0', '1', '', '46', '52', '0', '0', '0', '0'),
('49', 'banners', '1', '2018-04-22 12:54:10', '2018-04-22 12:54:10', '1', '1', 'RAAS\\CMS\\Block_Material', 'Баннеры', '0', '0', '', '8', '8', '0', '0', '0', '0'),
('50', 'content', '0', '2019-03-29 14:19:56', '2019-03-29 14:20:27', '1', '1', 'RAAS\\CMS\\Block_Material', 'Вопрос-ответ к товарам', '0', '0', '', '1', '55', '0', '0', '0', '0'),
('51', 'content', '0', '2019-03-29 14:20:16', '2019-03-29 14:20:29', '1', '1', 'RAAS\\CMS\\Block_Material', 'Отзывы к товарам', '0', '0', '', '1', '56', '0', '0', '0', '0'),
('52', 'content', '0', '2019-03-29 14:20:49', '2019-03-29 14:20:49', '1', '1', 'RAAS\\CMS\\Block_Form', 'Отзывы к товарам', '0', '1', '', '2', '10', '0', '0', '0', '0'),
('53', 'content', '0', '2019-03-29 14:20:57', '2019-03-29 14:20:57', '1', '1', 'RAAS\\CMS\\Block_Form', 'Вопрос-ответ к товарам', '0', '1', '', '2', '10', '0', '0', '0', '0');


-- *************************************************************
-- 
-- Table structure: cms_blocks_form
-- 
DROP TABLE IF EXISTS cms_blocks_form;
CREATE TABLE `cms_blocks_form` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `form` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  PRIMARY KEY (`id`),
  KEY `form` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Form blocks';

-- 
-- Table data: cms_blocks_form
-- 
INSERT INTO `cms_blocks_form` (`id`, `form`) VALUES 
('6', '1'),
('27', '1'),
('7', '2'),
('53', '5'),
('52', '6');


-- *************************************************************
-- 
-- Table structure: cms_blocks_html
-- 
DROP TABLE IF EXISTS cms_blocks_html;
CREATE TABLE `cms_blocks_html` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `description` text COMMENT 'Text',
  `wysiwyg` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'WYSIWYG editor on',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='HTML blocks';

-- 
-- Table data: cms_blocks_html
-- 
INSERT INTO `cms_blocks_html` (`id`, `description`, `wysiwyg`) VALUES 
('1', '<a href=\"/\" class=\"logo\">
  <span class=\"logo__image\"><img alt=\"\" src=\"/files/cms/common/image/logo.png\" /></span>
  <span class=\"logo__text\">
    <span class=\"logo__name\">Наша компания</span>
    <span class=\"logo__slogan\">Производим все, что угодно!</span>
  </span>
</a>
', '1'),
('2', '<div class=\"contacts-top\" itemscope itemtype=\"http://schema.org/Organization\">
  <meta itemprop=\"name\" content=\"\" />
  <div class=\"contacts-top__phone\" itemprop=\"telephone\"><a href=\"tel:%2B79990000000\"><span>(999)</span> 000-00-00</a></div>
  <div class=\"contacts-top__address\" itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">
    <span itemprop=\"addressLocality\">г. Город</span>,
    <span itemprop=\"streetAddress\">ул. Центральная, 0</span>, оф. 123
  </div>
</div>
', '0'),
('3', '<div class=\"socials-top\">
  <span class=\"socials-top__title\">Мы в социальных сетях:</span>
  <a href=\"https://vk.com/\" class=\"fa fa-vk\" title=\"ВКонтакте\" target=\"_blank\">&nbsp;</a>
  <a href=\"https://www.facebook.com/groups/\" class=\"fa fa-facebook\" title=\"Facebook\" target=\"_blank\">&nbsp;</a>
  <a href=\"https://instagram.com/\" class=\"fa fa-instagram\" title=\"Instagram\" target=\"_blank\">&nbsp;</a>
</div>
', '0'),
('4', '<div class=\"copyrights\">&copy; Компания, 2015. Все права защищены.</div>
', '1'),
('5', '<div class=\"privacy\">Совершая любые действия на сайте, вы подтверждаете свое согласие&nbsp;на <a href=\"/privacy/\">обработку персональных данных в соответствии с политикой сайта</a>. Сайт может использовать технологию cookies для сбора информации технического характера. Для персонифицированной работы сайта мы также можем обрабатывать IP-адрес региона вашего местоположения.</div>
', '1'),
('8', '', '0'),
('9', '', '0'),
('10', '<div class=\"triggers\">
  <a class=\"triggers__trigger triggers__trigger_totop scrollTo\" href=\"#top\" title=\"Наверх\"></a>
  <a class=\"triggers__trigger triggers__trigger_order-call\" data-target=\"#order_call_modal\" data-toggle=\"modal\" href=\"#\" title=\"Заказать звонок\"></a>
  <a class=\"triggers__trigger triggers__trigger_feedback\" data-target=\"#feedback_modal\" data-toggle=\"modal\" href=\"#\" title=\"Написать письмо\"></a>
</div>
<script src=\"/js/triggers.js\"></script>
', '0'),
('11', '<div class=\"cookies-notification\">
  <a href=\"#\" class=\"cookies-notification__close\"></a>
  <p>
    На нашем сайте мы используем cookie для сбора информации технического характера. В частности, для персонифицированной работы сайта мы обрабатываем IP-адрес региона вашего местоположения. <br />
    Совершая любые действия на сайте, вы <a href=\"/privacy/\" target=\"_blank\">соглашаетесь с политикой обработки персональных данных</a>
  </p>
</div>
<script src=\"/js/cookies-notification.js\"></script>
', '0'),
('12', '<h1>Добро пожаловать!</h1>
<p>Извините, страница находится в стадии наполнения.</p>
', '1'),
('17', '<p>Извините, раздел находится в стадии наполнения</p>', '1'),
('18', '<p>Извините, раздел находится в стадии наполнения</p>', '1'),
('19', '<p>Извините, раздел находится в стадии наполнения</p>', '1'),
('20', '<p>Извините, раздел находится в стадии наполнения</p>', '1'),
('21', '<p>Извините, раздел находится в стадии наполнения</p>', '1'),
('24', '<div class=\"map\">
  <script type=\"text/javascript\" charset=\"utf-8\" src=\"//api-maps.yandex.ru/services/constructor/1.0/js/?sid=ac2qYbmG3G-Jl487_Mu2VedJiQSpaZLo&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true\"></script>
</div>
', '0'),
('25', '<div class=\"contacts\">
  <div itemscope itemtype=\"http://schema.org/Organization\">
    <meta itemprop=\"name\" content=\"\" />
    <p>
      <strong>Адрес: </strong>
      <span itemprop=\"address\" itemscope itemtype=\"http://schema.org/PostalAddress\">
        <span itemprop=\"postalCode\">620000</span>,
        <span itemprop=\"addressLocality\">г. Екатеринбург</span>,
        <span itemprop=\"streetAddress\">ул. ..., 0</span>, оф. 0 (0 этаж)
      </span>
    </p>
    <p>
      <strong>Телефон: </strong>
      <a href=\"tel:%2B79990000000\" itemprop=\"telephone\">+7 999 000-00-00</a>
    </p>
    <p>
      <strong>E-mail:&nbsp;</strong>
      <a href=\"mailto:info@test.org\" itemprop=\"email\">info@test.org</a>
    </p>
    <p>
      <strong>Режим работы:&nbsp;</strong>
      09:00 - 18:00
    </p>
    <p>
      <strong>Транспорт:&nbsp;</strong>
      ...
    </p>
  </div>
</div>
', '0'),
('26', '<h3>Обратная связь</h3>', '1'),
('28', 'Извините, запрашиваемая Вами страница не найдена. Если вы уверены, что эта страница должна существовать, обратитесь к администрации сайта.', '1'),
('31', 'User-agent: *
Disallow: /404/
Disallow: /admin/
Disallow: /ajax/
Disallow: /compare/
Disallow: /cart/
Disallow: /cache/
Disallow: /cron/
Disallow: /files/*_tn
Disallow: /files/*_small
Disallow: /files/*_inline
Disallow: /fonts/
Disallow: /images/
Disallow: /inc/
Disallow: /modules/
Disallow: /price/
Disallow: /search/
Disallow: /sitemaps/
Disallow: /system/
Disallow: /yml/
Disallow: *print=1
Clean-param: sort&order&print&price_from&price_to

User-agent: Yandex
Disallow: /404/
Disallow: /admin/
Disallow: /ajax/
Disallow: /compare/
Disallow: /cart/
Disallow: /cache/
Disallow: /cron/
Disallow: /files/*_tn
Disallow: /files/*_small
Disallow: /files/*_inline
Disallow: /fonts/
Disallow: /images/
Disallow: /inc/
Disallow: /modules/
Disallow: /price/
Disallow: /search/
Disallow: /sitemaps/
Disallow: /system/
Disallow: /yml/
Disallow: *print=1

Host: pneumatic-tools
Sitemap: http://pneumatic-tools/sitemap.xml', '0'),
('32', '', '0'),
('33', '<div class=\"share\">
  <script src=\"//yastatic.net/es5-shims/0.0.2/es5-shims.min.js\"></script>
  <script src=\"//yastatic.net/share2/share.js\"></script>
  <div class=\"ya-share2\" data-services=\"vkontakte,facebook,twitter,gplus,whatsapp\"></div>
</div>
', '0');


-- *************************************************************
-- 
-- Table structure: cms_blocks_material
-- 
DROP TABLE IF EXISTS cms_blocks_material;
CREATE TABLE `cms_blocks_material` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  `sort_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sorting var name',
  `order_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Order var name',
  `sort_field_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field for sorting by default',
  `sort_order_default` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default order',
  `legacy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Redirect legacy addresses',
  PRIMARY KEY (`id`),
  KEY `material_type` (`material_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material blocks';

-- 
-- Table data: cms_blocks_material
-- 
INSERT INTO `cms_blocks_material` (`id`, `material_type`, `pages_var_name`, `rows_per_page`, `sort_var_name`, `order_var_name`, `sort_field_default`, `sort_order_default`, `legacy`) VALUES 
('13', '1', 'page', '0', '', '', 'post_date', 'asc', '0'),
('16', '2', 'page', '0', '', '', 'post_date', 'asc', '0'),
('22', '3', 'page', '20', '', '', '16', 'desc!', '0'),
('23', '3', '', '3', '', '', '16', 'desc!', '0'),
('34', '4', 'page', '20', '', '', 'name', 'asc', '0'),
('35', '4', '', '0', '', '', 'price', 'asc', '0'),
('49', '2', 'page', '20', '', '', 'name', 'asc!', '0'),
('50', '6', 'page', '20', '', '', '50', 'asc!', '0'),
('51', '7', 'page', '20', '', '', 'name', 'asc!', '0');


-- *************************************************************
-- 
-- Table structure: cms_blocks_material_filter
-- 
DROP TABLE IF EXISTS cms_blocks_material_filter;
CREATE TABLE `cms_blocks_material_filter` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `relation` enum('=','LIKE','CONTAINED','FULLTEXT','<=','>=') NOT NULL DEFAULT '=' COMMENT 'Relation',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  KEY `id` (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material blocks filtering';

-- *************************************************************
-- 
-- Table structure: cms_blocks_material_sort
-- 
DROP TABLE IF EXISTS cms_blocks_material_sort;
CREATE TABLE `cms_blocks_material_sort` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `var` varchar(255) NOT NULL DEFAULT '' COMMENT 'Variable',
  `field` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field',
  `relation` enum('asc!','desc!','asc','desc') NOT NULL DEFAULT 'asc!' COMMENT 'Relation',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  KEY `id` (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material blocks sorting';

-- *************************************************************
-- 
-- Table structure: cms_blocks_menu
-- 
DROP TABLE IF EXISTS cms_blocks_menu;
CREATE TABLE `cms_blocks_menu` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `menu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Menu ID#',
  `full_menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Full menu',
  PRIMARY KEY (`id`),
  KEY `menu` (`menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menu blocks';

-- 
-- Table data: cms_blocks_menu
-- 
INSERT INTO `cms_blocks_menu` (`id`, `menu`, `full_menu`) VALUES 
('14', '1', '1'),
('15', '2', '1'),
('29', '3', '1'),
('37', '4', '1');


-- *************************************************************
-- 
-- Table structure: cms_blocks_pages_assoc
-- 
DROP TABLE IF EXISTS cms_blocks_pages_assoc;
CREATE TABLE `cms_blocks_pages_assoc` (
  `block_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`block_id`,`page_id`),
  KEY `block_id` (`block_id`),
  KEY `page_id` (`page_id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blocks to pages associations';

-- 
-- Table data: cms_blocks_pages_assoc
-- 
INSERT INTO `cms_blocks_pages_assoc` (`block_id`, `page_id`, `priority`) VALUES 
('1', '1', '1'),
('2', '1', '2'),
('3', '1', '3'),
('4', '1', '4'),
('5', '1', '5'),
('6', '1', '6'),
('7', '1', '7'),
('8', '1', '8'),
('9', '1', '9'),
('10', '1', '10'),
('11', '1', '11'),
('12', '1', '12'),
('13', '1', '13'),
('14', '1', '14'),
('15', '1', '15'),
('16', '1', '16'),
('1', '2', '17'),
('2', '2', '18'),
('3', '2', '19'),
('4', '2', '20'),
('5', '2', '21'),
('6', '2', '22'),
('7', '2', '23'),
('8', '2', '24'),
('9', '2', '25'),
('10', '2', '26'),
('11', '2', '27'),
('14', '2', '28'),
('15', '2', '29'),
('17', '2', '30'),
('1', '3', '31'),
('2', '3', '32'),
('3', '3', '33'),
('4', '3', '34'),
('5', '3', '35'),
('6', '3', '36'),
('7', '3', '37'),
('8', '3', '38'),
('9', '3', '39'),
('10', '3', '40'),
('11', '3', '41'),
('14', '3', '42'),
('15', '3', '43'),
('18', '3', '44'),
('1', '4', '45'),
('2', '4', '46'),
('3', '4', '47'),
('4', '4', '48'),
('5', '4', '49'),
('6', '4', '50'),
('7', '4', '51'),
('8', '4', '52'),
('9', '4', '53'),
('10', '4', '54'),
('11', '4', '55'),
('14', '4', '56'),
('15', '4', '57'),
('19', '4', '58'),
('1', '5', '59'),
('2', '5', '60'),
('3', '5', '61'),
('4', '5', '62'),
('5', '5', '63'),
('6', '5', '64'),
('7', '5', '65'),
('8', '5', '66'),
('9', '5', '67'),
('10', '5', '68'),
('11', '5', '69'),
('14', '5', '70'),
('15', '5', '71'),
('20', '5', '72'),
('1', '6', '73'),
('2', '6', '74'),
('3', '6', '75'),
('4', '6', '76'),
('5', '6', '77'),
('6', '6', '78'),
('7', '6', '79'),
('8', '6', '80'),
('9', '6', '81'),
('10', '6', '82'),
('11', '6', '83'),
('14', '6', '84'),
('15', '6', '85'),
('21', '6', '86'),
('1', '7', '87'),
('2', '7', '88'),
('3', '7', '89'),
('4', '7', '90'),
('5', '7', '91'),
('6', '7', '92'),
('7', '7', '93'),
('8', '7', '94'),
('9', '7', '95'),
('10', '7', '96'),
('11', '7', '97'),
('14', '7', '98'),
('15', '7', '99'),
('22', '7', '100'),
('39', '1', '101'),
('39', '2', '101'),
('39', '3', '101'),
('39', '4', '101'),
('39', '5', '101'),
('39', '6', '101'),
('39', '7', '101'),
('39', '8', '101'),
('39', '9', '101'),
('39', '10', '101'),
('39', '15', '101'),
('39', '16', '101'),
('39', '17', '101'),
('39', '18', '101'),
('39', '19', '101'),
('39', '20', '101'),
('39', '21', '101'),
('39', '22', '101'),
('39', '23', '101'),
('39', '24', '101'),
('39', '25', '101'),
('39', '27', '101'),
('1', '8', '107'),
('2', '8', '108'),
('3', '8', '109'),
('4', '8', '110'),
('5', '8', '111'),
('6', '8', '112'),
('7', '8', '113'),
('8', '8', '114'),
('9', '8', '115'),
('10', '8', '116'),
('11', '8', '117'),
('14', '8', '118'),
('15', '8', '119'),
('24', '8', '121'),
('25', '8', '122'),
('26', '8', '123'),
('27', '8', '124'),
('1', '9', '125'),
('2', '9', '126'),
('3', '9', '127'),
('4', '9', '128'),
('5', '9', '129'),
('6', '9', '130'),
('7', '9', '131'),
('8', '9', '132'),
('9', '9', '133'),
('10', '9', '134'),
('11', '9', '135'),
('14', '9', '136'),
('15', '9', '137'),
('28', '9', '139'),
('1', '10', '140'),
('2', '10', '141'),
('3', '10', '142'),
('4', '10', '143'),
('5', '10', '144'),
('6', '10', '145'),
('7', '10', '146'),
('8', '10', '147'),
('9', '10', '148'),
('10', '10', '149'),
('11', '10', '150'),
('14', '10', '151'),
('15', '10', '152'),
('29', '10', '154'),
('30', '11', '155'),
('31', '12', '156'),
('32', '13', '157'),
('33', '1', '158'),
('33', '4', '159'),
('33', '5', '160'),
('33', '6', '161'),
('33', '2', '162'),
('33', '3', '163'),
('33', '7', '164'),
('33', '8', '165'),
('33', '9', '166'),
('33', '10', '167'),
('1', '15', '168'),
('2', '15', '169'),
('3', '15', '170'),
('4', '15', '171'),
('5', '15', '172'),
('6', '15', '173'),
('7', '15', '174'),
('8', '15', '175'),
('9', '15', '176'),
('10', '15', '177'),
('11', '15', '178'),
('14', '15', '179'),
('15', '15', '180'),
('33', '15', '182'),
('1', '16', '183'),
('2', '16', '184'),
('3', '16', '185'),
('4', '16', '186'),
('5', '16', '187'),
('6', '16', '188'),
('7', '16', '189'),
('8', '16', '190'),
('9', '16', '191'),
('10', '16', '192'),
('11', '16', '193'),
('14', '16', '194'),
('15', '16', '195'),
('33', '16', '197'),
('1', '17', '198'),
('2', '17', '199'),
('3', '17', '200'),
('4', '17', '201'),
('5', '17', '202'),
('6', '17', '203'),
('7', '17', '204'),
('8', '17', '205'),
('9', '17', '206'),
('10', '17', '207'),
('11', '17', '208'),
('14', '17', '209'),
('15', '17', '210'),
('33', '17', '212'),
('1', '18', '213'),
('2', '18', '214'),
('3', '18', '215'),
('4', '18', '216'),
('5', '18', '217'),
('6', '18', '218'),
('7', '18', '219'),
('8', '18', '220'),
('9', '18', '221'),
('10', '18', '222'),
('11', '18', '223'),
('14', '18', '224'),
('15', '18', '225'),
('33', '18', '227'),
('1', '19', '228'),
('2', '19', '229'),
('3', '19', '230'),
('4', '19', '231'),
('5', '19', '232'),
('6', '19', '233'),
('7', '19', '234'),
('8', '19', '235'),
('9', '19', '236'),
('10', '19', '237'),
('11', '19', '238'),
('14', '19', '239'),
('15', '19', '240'),
('33', '19', '242'),
('1', '20', '243'),
('2', '20', '244'),
('3', '20', '245'),
('4', '20', '246'),
('5', '20', '247'),
('6', '20', '248'),
('7', '20', '249'),
('8', '20', '250'),
('9', '20', '251'),
('10', '20', '252'),
('11', '20', '253'),
('14', '20', '254'),
('15', '20', '255'),
('33', '20', '257'),
('1', '21', '258'),
('2', '21', '259'),
('3', '21', '260'),
('4', '21', '261'),
('5', '21', '262'),
('6', '21', '263'),
('7', '21', '264'),
('8', '21', '265'),
('9', '21', '266'),
('10', '21', '267'),
('11', '21', '268'),
('14', '21', '269'),
('15', '21', '270'),
('33', '21', '272'),
('1', '22', '273'),
('2', '22', '274'),
('3', '22', '275'),
('4', '22', '276'),
('5', '22', '277'),
('6', '22', '278'),
('7', '22', '279'),
('8', '22', '280'),
('9', '22', '281'),
('10', '22', '282'),
('11', '22', '283'),
('14', '22', '284'),
('15', '22', '285'),
('33', '22', '287'),
('1', '23', '288'),
('2', '23', '289'),
('3', '23', '290'),
('4', '23', '291'),
('5', '23', '292'),
('6', '23', '293'),
('7', '23', '294'),
('8', '23', '295'),
('9', '23', '296'),
('10', '23', '297'),
('11', '23', '298'),
('14', '23', '299'),
('15', '23', '300'),
('33', '23', '302'),
('1', '24', '303'),
('2', '24', '304'),
('3', '24', '305'),
('4', '24', '306'),
('5', '24', '307'),
('6', '24', '308'),
('7', '24', '309'),
('8', '24', '310'),
('9', '24', '311'),
('10', '24', '312'),
('11', '24', '313'),
('14', '24', '314'),
('15', '24', '315'),
('33', '24', '317'),
('34', '15', '318'),
('34', '18', '319'),
('34', '19', '320'),
('34', '20', '321'),
('34', '17', '322'),
('34', '21', '323'),
('34', '22', '324'),
('34', '16', '325'),
('34', '23', '326'),
('34', '24', '327'),
('35', '1', '328'),
('36', '1', '329'),
('42', '1', '330'),
('42', '2', '330'),
('42', '3', '330'),
('42', '4', '330'),
('42', '5', '330'),
('42', '6', '330'),
('42', '7', '330'),
('42', '8', '330'),
('42', '9', '330'),
('42', '10', '330'),
('42', '15', '330'),
('42', '16', '330'),
('42', '17', '330'),
('42', '18', '330'),
('42', '19', '330'),
('42', '20', '330'),
('42', '21', '330'),
('42', '22', '330'),
('42', '23', '330'),
('42', '24', '330'),
('42', '25', '330'),
('42', '27', '330'),
('1', '25', '350'),
('2', '25', '351'),
('3', '25', '352'),
('4', '25', '353'),
('5', '25', '354'),
('6', '25', '355'),
('7', '25', '356'),
('8', '25', '357'),
('9', '25', '358'),
('10', '25', '359'),
('11', '25', '360'),
('14', '25', '361'),
('15', '25', '362'),
('33', '25', '364'),
('38', '25', '366'),
('37', '1', '367'),
('37', '2', '367'),
('37', '3', '367'),
('37', '4', '367'),
('37', '5', '367'),
('37', '6', '367'),
('37', '7', '367'),
('37', '8', '367'),
('37', '9', '367'),
('37', '10', '367'),
('37', '15', '367'),
('37', '16', '367'),
('37', '17', '367'),
('37', '18', '367'),
('37', '19', '367'),
('37', '20', '367'),
('37', '21', '367'),
('37', '22', '367'),
('37', '23', '367'),
('37', '24', '367'),
('37', '25', '367'),
('37', '27', '367'),
('40', '26', '388'),
('1', '27', '389'),
('2', '27', '390'),
('3', '27', '391'),
('4', '27', '392'),
('5', '27', '393'),
('6', '27', '394'),
('7', '27', '395'),
('8', '27', '396'),
('9', '27', '397'),
('10', '27', '398'),
('11', '27', '399'),
('14', '27', '400'),
('15', '27', '401'),
('33', '27', '403'),
('41', '27', '406'),
('23', '1', '407'),
('23', '2', '407'),
('23', '3', '407'),
('23', '4', '407'),
('23', '5', '407'),
('23', '6', '407'),
('23', '8', '407'),
('23', '9', '407'),
('23', '10', '407'),
('23', '15', '407'),
('23', '16', '407'),
('23', '17', '407'),
('23', '18', '407'),
('23', '19', '407'),
('23', '20', '407'),
('23', '21', '407'),
('23', '22', '407'),
('23', '23', '407'),
('23', '24', '407'),
('23', '25', '407'),
('23', '27', '407'),
('43', '28', '429'),
('44', '29', '430'),
('1', '30', '431'),
('2', '30', '432'),
('3', '30', '433'),
('4', '30', '434'),
('5', '30', '435'),
('6', '30', '436'),
('7', '30', '437'),
('8', '30', '438'),
('9', '30', '439'),
('10', '30', '440'),
('11', '30', '441'),
('14', '30', '442'),
('15', '30', '443'),
('39', '30', '444'),
('33', '30', '445'),
('42', '30', '446'),
('37', '30', '447'),
('23', '30', '448'),
('1', '31', '449'),
('2', '31', '450'),
('3', '31', '451'),
('4', '31', '452'),
('5', '31', '453'),
('6', '31', '454'),
('7', '31', '455'),
('8', '31', '456'),
('9', '31', '457'),
('10', '31', '458'),
('11', '31', '459'),
('14', '31', '460'),
('15', '31', '461'),
('39', '31', '462'),
('33', '31', '463'),
('42', '31', '464'),
('37', '31', '465'),
('23', '31', '466'),
('1', '32', '467'),
('2', '32', '468'),
('3', '32', '469'),
('4', '32', '470'),
('5', '32', '471'),
('6', '32', '472'),
('7', '32', '473'),
('8', '32', '474'),
('9', '32', '475'),
('10', '32', '476'),
('11', '32', '477'),
('14', '32', '478'),
('15', '32', '479'),
('39', '32', '480'),
('33', '32', '481'),
('42', '32', '482'),
('37', '32', '483'),
('23', '32', '484'),
('1', '33', '485'),
('2', '33', '486'),
('3', '33', '487'),
('4', '33', '488'),
('5', '33', '489'),
('6', '33', '490'),
('7', '33', '491'),
('8', '33', '492'),
('9', '33', '493'),
('10', '33', '494'),
('11', '33', '495'),
('14', '33', '496'),
('15', '33', '497'),
('39', '33', '498'),
('33', '33', '499'),
('42', '33', '500'),
('37', '33', '501'),
('23', '33', '502'),
('45', '30', '503'),
('46', '32', '504'),
('47', '33', '505'),
('48', '31', '506'),
('49', '20', '507'),
('50', '15', '508'),
('51', '15', '509'),
('52', '15', '510'),
('53', '15', '511');


-- *************************************************************
-- 
-- Table structure: cms_blocks_php
-- 
DROP TABLE IF EXISTS cms_blocks_php;
CREATE TABLE `cms_blocks_php` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `description` text COMMENT 'Code',
  `widget` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Widget ID#',
  PRIMARY KEY (`id`),
  KEY `widget` (`widget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PHP blocks';

-- *************************************************************
-- 
-- Table structure: cms_blocks_search
-- 
DROP TABLE IF EXISTS cms_blocks_search;
CREATE TABLE `cms_blocks_search` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `search_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Search var name',
  `min_length` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Minimal query length',
  `pages_var_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pages var name',
  `rows_per_page` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Rows per page',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search blocks';

-- *************************************************************
-- 
-- Table structure: cms_blocks_search_languages_assoc
-- 
DROP TABLE IF EXISTS cms_blocks_search_languages_assoc;
CREATE TABLE `cms_blocks_search_languages_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `language` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language',
  PRIMARY KEY (`id`,`language`),
  KEY `id` (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search blocks languages';

-- *************************************************************
-- 
-- Table structure: cms_blocks_search_material_types_assoc
-- 
DROP TABLE IF EXISTS cms_blocks_search_material_types_assoc;
CREATE TABLE `cms_blocks_search_material_types_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `material_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  PRIMARY KEY (`id`,`material_type`),
  KEY `id` (`id`),
  KEY `material_type` (`material_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search blocks material types';

-- *************************************************************
-- 
-- Table structure: cms_blocks_search_pages_assoc
-- 
DROP TABLE IF EXISTS cms_blocks_search_pages_assoc;
CREATE TABLE `cms_blocks_search_pages_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`page_id`),
  KEY `id` (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search blocks pages';

-- *************************************************************
-- 
-- Table structure: cms_data
-- 
DROP TABLE IF EXISTS cms_data;
CREATE TABLE `cms_data` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value',
  `inherited` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherited',
  PRIMARY KEY (`pid`,`fid`,`fii`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `fii` (`fii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pages fields';

-- 
-- Table data: cms_data
-- 
INSERT INTO `cms_data` (`pid`, `fid`, `fii`, `value`, `inherited`) VALUES 
('1', '1', '0', '', '0'),
('1', '5', '0', 'Тестовый пользователь', '0'),
('1', '6', '0', '+7 999 000-00-00', '0'),
('1', '7', '0', 'test@test.org', '0'),
('1', '8', '0', 'Тестовый вопрос', '0'),
('1', '9', '0', '1', '0'),
('1', '13', '0', 'smile-o', '0'),
('1', '37', '0', '+7 999 000-00-00', '0'),
('1', '43', '0', 'Тестовый', '0'),
('1', '44', '0', 'Пользователь', '0'),
('1', '45', '0', '1', '0'),
('2', '13', '0', 'thumbs-o-up', '0'),
('2', '37', '0', '+7 999 000-00-00', '0'),
('2', '43', '0', 'Тестовый', '0'),
('2', '44', '0', 'Пользователь', '0'),
('2', '45', '0', '2', '0'),
('3', '13', '0', 'rub', '0'),
('4', '1', '0', '', '0'),
('4', '14', '0', '#', '0'),
('4', '15', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":1}', '0'),
('5', '14', '0', '#', '0'),
('5', '15', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":2}', '0'),
('6', '14', '0', '#', '0'),
('6', '15', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":3}', '0'),
('7', '16', '0', '2018-03-30', '0'),
('7', '17', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":4}', '0'),
('7', '17', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":5}', '0'),
('7', '17', '2', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":6}', '0'),
('7', '17', '3', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":7}', '0'),
('7', '17', '4', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":8}', '0'),
('7', '18', '0', 'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты 
предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...', '0'),
('8', '16', '0', '2018-04-01 09:50', '0'),
('8', '17', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":9}', '0'),
('8', '17', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":10}', '0'),
('8', '17', '2', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":11}', '0'),
('8', '17', '3', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":12}', '0'),
('8', '17', '4', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":13}', '0'),
('8', '18', '0', 'Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты 
предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример – ...', '0'),
('9', '16', '0', '2018-04-05 07:36', '0'),
('9', '17', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":14}', '0'),
('9', '17', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":15}', '0'),
('9', '17', '2', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":16}', '0'),
('9', '17', '3', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":17}', '0'),
('9', '17', '4', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":18}', '0'),
('9', '18', '0', 'Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна....', '0'),
('10', '25', '0', 'f4dbdf21', '0'),
('10', '26', '0', '83620', '0'),
('10', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":30}', '0'),
('10', '27', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":31}', '0'),
('10', '27', '2', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":32}', '0'),
('10', '27', '3', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":33}', '0'),
('10', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('10', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('10', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":28}', '0'),
('10', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":29}', '0'),
('10', '30', '0', '1', '0'),
('10', '31', '0', '0', '0'),
('10', '32', '0', '2', '0'),
('10', '33', '0', '2', '0'),
('10', '34', '0', '0', '0'),
('11', '25', '0', '83dcefb7', '0'),
('11', '26', '0', '67175', '0'),
('11', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":36}', '0'),
('11', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('11', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('11', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":34}', '0'),
('11', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":35}', '0'),
('11', '30', '0', '1', '0'),
('11', '31', '0', '1', '0'),
('11', '32', '0', '1', '0'),
('11', '33', '0', '1', '0'),
('11', '34', '0', '75907', '0'),
('12', '25', '0', '1ad5be0d', '0'),
('12', '26', '0', '71013', '0'),
('12', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":39}', '0'),
('12', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('12', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('12', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":37}', '0'),
('12', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":38}', '0'),
('12', '30', '0', '1', '0'),
('12', '31', '0', '1', '0'),
('12', '32', '0', '1', '0'),
('12', '33', '0', '1', '0'),
('12', '34', '0', '86635', '0'),
('13', '25', '0', '6dd28e9b', '0'),
('13', '26', '0', '30450', '0'),
('13', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":42}', '0'),
('13', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('13', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('13', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":40}', '0'),
('13', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":41}', '0'),
('13', '30', '0', '1', '0'),
('13', '31', '0', '1', '0'),
('13', '32', '0', '1', '0'),
('13', '33', '0', '1', '0'),
('13', '34', '0', '0', '0'),
('14', '25', '0', 'f3b61b38', '0'),
('14', '26', '0', '25712', '0'),
('14', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":45}', '0'),
('14', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('14', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('14', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":43}', '0'),
('14', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":44}', '0'),
('14', '30', '0', '1', '0'),
('14', '31', '0', '0', '0'),
('14', '32', '0', '2', '0'),
('14', '33', '0', '2', '0'),
('14', '34', '0', '0', '0'),
('15', '25', '0', '84b12bae', '0'),
('15', '26', '0', '54096', '0'),
('15', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":48}', '0'),
('15', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('15', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('15', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":46}', '0'),
('15', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":47}', '0'),
('15', '30', '0', '1', '0'),
('15', '31', '0', '1', '0'),
('15', '32', '0', '1', '0'),
('15', '33', '0', '1', '0'),
('15', '34', '0', '0', '0'),
('16', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":19}', '0'),
('16', '25', '0', '1db87a14', '0'),
('16', '26', '0', '49651', '0'),
('16', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":51}', '0'),
('16', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('16', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('16', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":49}', '0'),
('16', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":50}', '0'),
('16', '30', '0', '1', '0'),
('16', '31', '0', '1', '0'),
('16', '32', '0', '1', '0'),
('16', '33', '0', '1', '0'),
('16', '34', '0', '58091', '0'),
('17', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":20}', '0'),
('17', '25', '0', '6abf4a82', '0'),
('17', '26', '0', '61245', '0'),
('17', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":54}', '0'),
('17', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('17', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('17', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":52}', '0'),
('17', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":53}', '0'),
('17', '30', '0', '1', '0'),
('17', '31', '0', '1', '0'),
('17', '32', '0', '1', '0'),
('17', '33', '0', '1', '0'),
('17', '34', '0', '73494', '0'),
('18', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":21}', '0'),
('18', '25', '0', 'fa005713', '0'),
('18', '26', '0', '5609', '0'),
('18', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":57}', '0'),
('18', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('18', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('18', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":55}', '0'),
('18', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":56}', '0'),
('18', '30', '0', '1', '0'),
('18', '31', '0', '0', '0'),
('18', '32', '0', '2', '0'),
('18', '33', '0', '2', '0'),
('18', '34', '0', '6506', '0'),
('19', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":22}', '0'),
('19', '25', '0', '8d076785', '0'),
('19', '26', '0', '85812', '0'),
('19', '27', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":60}', '0'),
('19', '28', '0', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('19', '28', '1', 'https://www.youtube.com/watch?v=YVgc2PQd_bo', '0'),
('19', '29', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":58}', '0'),
('19', '29', '1', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":59}', '0'),
('19', '30', '0', '1', '0'),
('19', '31', '0', '1', '0'),
('19', '32', '0', '1', '0'),
('19', '33', '0', '1', '0'),
('19', '34', '0', '0', '0'),
('19', '35', '0', '18', '0'),
('19', '35', '1', '19', '0'),
('19', '35', '2', '10', '0'),
('19', '35', '3', '11', '0'),
('19', '35', '4', '16', '0'),
('19', '35', '5', '15', '0'),
('19', '35', '6', '12', '0'),
('19', '35', '7', '17', '0'),
('19', '35', '8', '11', '0'),
('19', '35', '9', '16', '0'),
('19', '35', '10', '10', '0'),
('19', '35', '11', '13', '0'),
('19', '35', '12', '10', '0'),
('19', '35', '13', '15', '0'),
('19', '35', '14', '19', '0'),
('19', '35', '15', '18', '0'),
('19', '35', '16', '15', '0'),
('19', '35', '17', '10', '0'),
('19', '35', '18', '19', '0'),
('19', '35', '19', '10', '0'),
('19', '35', '20', '14', '0'),
('19', '35', '21', '14', '0'),
('19', '35', '22', '14', '0'),
('19', '35', '23', '18', '0'),
('19', '35', '24', '19', '0'),
('19', '35', '25', '17', '0'),
('19', '35', '26', '14', '0'),
('19', '35', '27', '19', '0'),
('19', '35', '28', '16', '0'),
('19', '35', '29', '11', '0'),
('20', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":23}', '0'),
('20', '49', '0', '12', '0'),
('20', '50', '0', '', '0'),
('20', '51', '0', '', '0'),
('20', '52', '0', '', '0'),
('20', '53', '0', '', '0'),
('20', '54', '0', '', '0'),
('21', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":24}', '0'),
('21', '49', '0', '12', '0'),
('21', '50', '0', '', '0'),
('21', '51', '0', '', '0'),
('21', '52', '0', '', '0'),
('21', '53', '0', '', '0'),
('21', '54', '0', '', '0'),
('22', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":25}', '0'),
('22', '49', '0', '12', '0'),
('22', '50', '0', '', '0'),
('22', '51', '0', '', '0'),
('22', '52', '0', '', '0'),
('22', '53', '0', '', '0'),
('22', '54', '0', '', '0'),
('23', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":26}', '0'),
('23', '55', '0', '', '0'),
('23', '56', '0', '12', '0'),
('23', '57', '0', '1', '0'),
('23', '58', '0', '', '0'),
('23', '59', '0', '', '0'),
('24', '2', '0', '{\"vis\":1,\"name\":\"\",\"description\":\"\",\"attachment\":27}', '0'),
('24', '55', '0', '', '0'),
('24', '56', '0', '12', '0'),
('24', '57', '0', '2', '0'),
('24', '58', '0', '', '0'),
('24', '59', '0', '', '0'),
('25', '1', '0', '', '0'),
('25', '55', '0', '', '0'),
('25', '56', '0', '12', '0'),
('25', '57', '0', '3', '0'),
('25', '58', '0', '', '0'),
('25', '59', '0', '', '0'),
('30', '1', '0', '', '0');


-- *************************************************************
-- 
-- Table structure: cms_dictionaries
-- 
DROP TABLE IF EXISTS cms_dictionaries;
CREATE TABLE `cms_dictionaries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `orderby` enum('id','urn','name','priority') NOT NULL DEFAULT 'priority' COMMENT 'Order by',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `urn` (`urn`),
  KEY `orderby` (`orderby`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Dictionaries';

-- 
-- Table data: cms_dictionaries
-- 
INSERT INTO `cms_dictionaries` (`id`, `pid`, `vis`, `pvis`, `urn`, `name`, `priority`, `orderby`) VALUES 
('1', '0', '1', '1', 'test', 'Тестовый справочник', '1', 'priority'),
('2', '1', '1', '1', 'value1', 'Запись 1', '2', 'priority'),
('3', '1', '1', '1', 'value2', 'Запись 2', '3', 'priority'),
('4', '1', '0', '1', 'value3', 'Запись 3', '4', 'priority');


-- *************************************************************
-- 
-- Table structure: cms_dictionaries_tree_cache
-- 
DROP TABLE IF EXISTS cms_dictionaries_tree_cache;
CREATE TABLE `cms_dictionaries_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dictionaries tree cache';

-- *************************************************************
-- 
-- Table structure: cms_feedback
-- 
DROP TABLE IF EXISTS cms_feedback;
CREATE TABLE `cms_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'User Agent',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Feedback';

-- 
-- Table data: cms_feedback
-- 
INSERT INTO `cms_feedback` (`id`, `uid`, `pid`, `page_id`, `material_id`, `post_date`, `vis`, `ip`, `user_agent`) VALUES 
('1', '0', '1', '1', '5', '2018-04-22 10:23:58', '0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36');


-- *************************************************************
-- 
-- Table structure: cms_fields
-- 
DROP TABLE IF EXISTS cms_fields;
CREATE TABLE `cms_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `classname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Parent class name',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `datatype` varchar(255) NOT NULL DEFAULT '' COMMENT 'Data type',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `maxlength` int(255) NOT NULL,
  `multiple` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Multiple data',
  `source_type` enum('','ini','csv','xml','sql','php','dictionary') NOT NULL DEFAULT '' COMMENT 'Source type',
  `source` text COMMENT 'Source',
  `defval` text COMMENT 'Default value',
  `min_val` float NOT NULL DEFAULT '0' COMMENT 'Minimal value',
  `max_val` float NOT NULL DEFAULT '0' COMMENT 'Maximal value',
  `step` float NOT NULL DEFAULT '0' COMMENT 'Step',
  `preprocessor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Preprocessor interface ID#',
  `postprocessor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Postprocessor interface ID#',
  `placeholder` varchar(255) NOT NULL DEFAULT '' COMMENT 'Placeholder',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT 'Pattern',
  `show_in_table` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Show as table column',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `datatype` (`datatype`),
  KEY `classname` (`classname`),
  KEY `classname_2` (`classname`,`pid`),
  KEY `preprocessor_id` (`preprocessor_id`),
  KEY `postprocessor_id` (`postprocessor_id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='Material fields';

-- 
-- Table data: cms_fields
-- 
INSERT INTO `cms_fields` (`id`, `classname`, `pid`, `datatype`, `urn`, `name`, `required`, `maxlength`, `multiple`, `source_type`, `source`, `defval`, `min_val`, `max_val`, `step`, `preprocessor_id`, `postprocessor_id`, `placeholder`, `pattern`, `show_in_table`, `priority`) VALUES 
('1', 'RAAS\\CMS\\Material_Type', '0', 'htmlarea', '_description_', 'Описание', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '1'),
('2', 'RAAS\\CMS\\Material_Type', '0', 'image', 'image', 'Изображение', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '2'),
('3', 'RAAS\\CMS\\Material_Type', '0', 'checkbox', 'noindex', 'Не индексировать', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '3'),
('4', 'RAAS\\CMS\\Material_Type', '0', 'image', 'background', 'Фоновое изображение', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '4'),
('5', 'RAAS\\CMS\\Form', '1', 'text', 'full_name', 'Ваше имя', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '5'),
('6', 'RAAS\\CMS\\Form', '1', 'text', 'phone', 'Телефон', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '6'),
('7', 'RAAS\\CMS\\Form', '1', 'text', 'email', 'E-mail', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '7'),
('8', 'RAAS\\CMS\\Form', '1', 'textarea', '_description_', 'Текст вопроса', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '8'),
('9', 'RAAS\\CMS\\Form', '1', 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '9'),
('10', 'RAAS\\CMS\\Form', '2', 'text', 'phone_call', 'Телефон', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '10'),
('11', 'RAAS\\CMS\\Form', '2', 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '11'),
('12', 'RAAS\\CMS\\Material_Type', '1', 'image', 'image', 'Изображение', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '12'),
('13', 'RAAS\\CMS\\Material_Type', '1', 'text', 'icon', 'Значок', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '13'),
('14', 'RAAS\\CMS\\Material_Type', '2', 'text', 'url', 'Адрес ссылки', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '14'),
('15', 'RAAS\\CMS\\Material_Type', '2', 'image', 'image', 'Изображение', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '15'),
('16', 'RAAS\\CMS\\Material_Type', '3', 'date', 'date', 'Дата', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '16'),
('17', 'RAAS\\CMS\\Material_Type', '3', 'image', 'images', 'Изображение', '0', '0', '1', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '17'),
('18', 'RAAS\\CMS\\Material_Type', '3', 'textarea', 'brief', 'Краткое описание', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '18'),
('19', 'RAAS\\CMS\\Material_Type', '3', 'checkbox', 'noindex', 'Не индексировать', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '19'),
('20', 'RAAS\\CMS\\Form', '3', 'text', 'full_name', 'Ваше имя', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '20'),
('21', 'RAAS\\CMS\\Form', '3', 'text', 'phone', 'Телефон', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '21'),
('22', 'RAAS\\CMS\\Form', '3', 'text', 'email', 'E-mail', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '22'),
('23', 'RAAS\\CMS\\Form', '3', 'textarea', '_description_', 'Комментарий', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '23'),
('24', 'RAAS\\CMS\\Form', '3', 'checkbox', 'agree', 'Согласен(на) на обработку персональных данных', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '24'),
('25', 'RAAS\\CMS\\Material_Type', '4', 'text', 'article', 'Артикул', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '25'),
('26', 'RAAS\\CMS\\Material_Type', '4', 'number', 'price', 'Стоимость', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '26'),
('27', 'RAAS\\CMS\\Material_Type', '4', 'image', 'images', 'Изображение', '0', '0', '1', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '27'),
('28', 'RAAS\\CMS\\Material_Type', '4', 'text', 'videos', 'Видеозаписи', '0', '0', '1', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '28'),
('29', 'RAAS\\CMS\\Material_Type', '4', 'file', 'files', 'Файлы', '0', '0', '1', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '29'),
('30', 'RAAS\\CMS\\Material_Type', '4', 'checkbox', 'spec', 'Спецпредложение', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '30'),
('31', 'RAAS\\CMS\\Material_Type', '4', 'checkbox', 'available', 'В наличии', '0', '0', '0', '', NULL, '1', '0', '0', '0', '0', '0', '', '', '0', '31'),
('32', 'RAAS\\CMS\\Material_Type', '4', 'number', 'min', 'Минимальное количество', '0', '0', '0', '', NULL, '1', '0', '0', '0', '0', '0', '', '', '0', '32'),
('33', 'RAAS\\CMS\\Material_Type', '4', 'number', 'step', 'Шаг корзины', '0', '0', '0', '', NULL, '1', '0', '0', '0', '0', '0', '', '', '0', '33'),
('34', 'RAAS\\CMS\\Material_Type', '4', 'number', 'price_old', 'Старая цена', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '0', '34'),
('35', 'RAAS\\CMS\\Material_Type', '4', 'material', 'related', 'Связанные товары', '0', '0', '1', '', '4', NULL, '0', '0', '0', '0', '0', '', '', '0', '35'),
('37', 'RAAS\\CMS\\User', '0', 'text', 'phone', 'Телефон', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '37'),
('38', 'RAAS\\CMS\\Form', '4', 'text', 'login', 'Логин', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '38'),
('39', 'RAAS\\CMS\\Form', '4', 'password', 'password', 'Пароль', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '39'),
('40', 'RAAS\\CMS\\Form', '4', 'text', 'email', 'E-mail', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '40'),
('41', 'RAAS\\CMS\\Form', '4', 'text', 'full_name', 'Ваше имя', '1', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '41'),
('42', 'RAAS\\CMS\\Form', '4', 'text', 'phone', 'Телефон', '0', '0', '0', '', NULL, NULL, '0', '0', '0', '0', '0', '', '', '1', '42'),
('43', 'RAAS\\CMS\\User', '0', 'text', 'last_name', 'Фамилия', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '43'),
('44', 'RAAS\\CMS\\User', '0', 'text', 'first_name', 'Имя', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '44'),
('45', 'RAAS\\CMS\\User', '0', 'text', 'second_name', 'Отчество', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '45'),
('47', 'RAAS\\CMS\\Material_Type', '4', 'select', 'testfield', 'Тестовое поле справочника', '0', '0', '0', 'dictionary', '1', '', '0', '0', '0', '0', '0', '', '', '0', '46'),
('48', 'RAAS\\CMS\\Material_Type', '5', 'text', 'special', 'Особое поле', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '47'),
('49', 'RAAS\\CMS\\Material_Type', '6', 'material', 'material', 'Материал', '0', '0', '0', '', '4', '', '0', '0', '0', '0', '0', '', '', '0', '48'),
('50', 'RAAS\\CMS\\Material_Type', '6', 'datetime-local', 'date', 'Дата', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '49'),
('51', 'RAAS\\CMS\\Material_Type', '6', 'text', 'phone', 'Телефон', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '50'),
('52', 'RAAS\\CMS\\Material_Type', '6', 'email', 'email', 'E-mail', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '51'),
('53', 'RAAS\\CMS\\Material_Type', '6', 'text', 'answer_name', 'Имя отвечающего', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '52'),
('54', 'RAAS\\CMS\\Material_Type', '6', 'htmlarea', 'answer', 'Ответ', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '53'),
('55', 'RAAS\\CMS\\Material_Type', '7', 'datetime-local', 'date', 'Дата', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '54'),
('56', 'RAAS\\CMS\\Material_Type', '7', 'material', 'material', 'Материал', '0', '0', '0', '', '4', '', '0', '0', '0', '0', '0', '', '', '0', '55'),
('57', 'RAAS\\CMS\\Material_Type', '7', 'number', 'rating', 'Рейтинг', '0', '0', '0', '', '0', '', '0', '5', '1', '0', '0', '', '', '0', '56'),
('58', 'RAAS\\CMS\\Material_Type', '7', 'text', 'answer_name', 'Имя отвечающего', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '57'),
('59', 'RAAS\\CMS\\Material_Type', '7', 'htmlarea', 'answer', 'Ответ', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '58'),
('60', 'RAAS\\CMS\\Form', '5', 'text', 'full_name', 'Ваше имя', '1', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '10'),
('61', 'RAAS\\CMS\\Form', '5', 'checkbox', 'phone', 'Телефон', '1', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '20'),
('62', 'RAAS\\CMS\\Form', '5', 'textarea', '_description_', 'Текст вопроса', '1', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '30'),
('63', 'RAAS\\CMS\\Form', '5', 'material', 'material', 'Материал', '1', '0', '0', '', '', '', '0', '0', '0', '0', '0', '', '', '0', '40'),
('64', 'RAAS\\CMS\\Form', '6', 'text', 'full_name', 'Ваше имя', '1', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '59'),
('65', 'RAAS\\CMS\\Form', '6', 'email', 'email', 'E-mail', '0', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '60'),
('66', 'RAAS\\CMS\\Form', '6', 'textarea', '_description_', 'Текст отзыва', '1', '0', '0', '', '0', '', '0', '0', '0', '0', '0', '', '', '0', '61'),
('67', 'RAAS\\CMS\\Form', '6', 'material', 'material', 'Материал', '1', '0', '0', '', '4', '', '0', '0', '0', '0', '0', '', '', '0', '62'),
('68', 'RAAS\\CMS\\Form', '6', 'number', 'rating', 'Рейтинг', '0', '0', '0', '', '0', '', '0', '5', '1', '0', '0', '', '', '0', '63');


-- *************************************************************
-- 
-- Table structure: cms_forms
-- 
DROP TABLE IF EXISTS cms_forms;
CREATE TABLE `cms_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `material_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type',
  `create_feedback` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'Create feedback',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Contact e-mail',
  `signature` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Require POST signature',
  `antispam` varchar(255) NOT NULL DEFAULT '' COMMENT 'Use anti-spam',
  `antispam_field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Anti-spam field name',
  `interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  PRIMARY KEY (`id`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Forms';

-- 
-- Table data: cms_forms
-- 
INSERT INTO `cms_forms` (`id`, `name`, `urn`, `material_type`, `create_feedback`, `email`, `signature`, `antispam`, `antispam_field_name`, `interface_id`) VALUES 
('1', 'Обратная связь', 'feedback', '0', '1', '', '1', 'hidden', '_name', '5'),
('2', 'Заказать звонок', 'order_call', '0', '1', '', '1', 'hidden', '_name', '5'),
('3', 'Форма заказа', 'order', '0', '1', '', '1', 'hidden', '_name', '25'),
('4', 'Форма для регистрации', 'forma_dla_registracii', '0', '1', '', '1', 'hidden', '_name', '49'),
('5', 'Вопрос-ответ к товарам', 'goods_faq', '6', '1', '', '1', 'hidden', '_name', '5'),
('6', 'Отзывы к товарам', 'goods_reviews', '7', '1', '', '1', 'hidden', '_name', '5');


-- *************************************************************
-- 
-- Table structure: cms_groups
-- 
DROP TABLE IF EXISTS cms_groups;
CREATE TABLE `cms_groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Groups of users';

-- 
-- Table data: cms_groups
-- 
INSERT INTO `cms_groups` (`id`, `pid`, `name`, `urn`, `description`) VALUES 
('1', '0', 'testgroup', 'testgroup', '');


-- *************************************************************
-- 
-- Table structure: cms_groups_tree_cache
-- 
DROP TABLE IF EXISTS cms_groups_tree_cache;
CREATE TABLE `cms_groups_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups tree cache';

-- *************************************************************
-- 
-- Table structure: cms_material_types
-- 
DROP TABLE IF EXISTS cms_material_types;
CREATE TABLE `cms_material_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent type ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `global_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Global materials',
  PRIMARY KEY (`id`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Material types';

-- 
-- Table data: cms_material_types
-- 
INSERT INTO `cms_material_types` (`id`, `pid`, `urn`, `name`, `global_type`) VALUES 
('1', '0', 'features', 'Наши преимущества', '1'),
('2', '0', 'banners', 'Баннеры', '1'),
('3', '0', 'news', 'Новости', '1'),
('4', '0', 'catalog', 'Каталог продукции', '0'),
('5', '4', 'special', 'Особые товары', '0'),
('6', '0', 'goods_faq', 'Вопрос-ответ к товарам', '0'),
('7', '0', 'goods_comments', 'Отзывы к товарам', '0');


-- *************************************************************
-- 
-- Table structure: cms_material_types_affected_pages_for_materials_cache
-- 
DROP TABLE IF EXISTS cms_material_types_affected_pages_for_materials_cache;
CREATE TABLE `cms_material_types_affected_pages_for_materials_cache` (
  `material_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'NAT',
  PRIMARY KEY (`material_type_id`,`page_id`),
  KEY `material_type_id` (`material_type_id`),
  KEY `page_id` (`page_id`),
  KEY `nat` (`nat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material types affected pages for materials';

-- 
-- Table data: cms_material_types_affected_pages_for_materials_cache
-- 
INSERT INTO `cms_material_types_affected_pages_for_materials_cache` (`material_type_id`, `page_id`, `nat`) VALUES 
('1', '1', '0'),
('2', '1', '0'),
('2', '20', '0'),
('3', '1', '0'),
('3', '2', '0'),
('3', '3', '0'),
('3', '4', '0'),
('3', '5', '0'),
('3', '6', '0'),
('3', '8', '0'),
('3', '9', '0'),
('3', '10', '0'),
('3', '15', '0'),
('3', '16', '0'),
('3', '17', '0'),
('3', '18', '0'),
('3', '19', '0'),
('3', '20', '0'),
('3', '21', '0'),
('3', '22', '0'),
('3', '23', '0'),
('3', '24', '0'),
('3', '25', '0'),
('3', '27', '0'),
('3', '30', '0'),
('3', '31', '0'),
('3', '32', '0'),
('3', '33', '0'),
('4', '1', '0'),
('5', '1', '0'),
('3', '7', '1'),
('4', '15', '1'),
('4', '16', '1'),
('4', '17', '1'),
('4', '18', '1'),
('4', '19', '1'),
('4', '20', '1'),
('4', '21', '1'),
('4', '22', '1'),
('4', '23', '1'),
('4', '24', '1'),
('5', '15', '1'),
('5', '16', '1'),
('5', '17', '1'),
('5', '18', '1'),
('5', '19', '1'),
('5', '20', '1'),
('5', '21', '1'),
('5', '22', '1'),
('5', '23', '1'),
('5', '24', '1');


-- *************************************************************
-- 
-- Table structure: cms_material_types_affected_pages_for_self_cache
-- 
DROP TABLE IF EXISTS cms_material_types_affected_pages_for_self_cache;
CREATE TABLE `cms_material_types_affected_pages_for_self_cache` (
  `material_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `nat` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'NAT',
  PRIMARY KEY (`material_type_id`,`page_id`),
  KEY `material_type_id` (`material_type_id`),
  KEY `page_id` (`page_id`),
  KEY `nat` (`nat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material types affected pages for self (for admin)';

-- 
-- Table data: cms_material_types_affected_pages_for_self_cache
-- 
INSERT INTO `cms_material_types_affected_pages_for_self_cache` (`material_type_id`, `page_id`, `nat`) VALUES 
('1', '1', '0'),
('2', '1', '0'),
('2', '20', '0'),
('3', '1', '0'),
('3', '2', '0'),
('3', '3', '0'),
('3', '4', '0'),
('3', '5', '0'),
('3', '6', '0'),
('3', '8', '0'),
('3', '9', '0'),
('3', '10', '0'),
('3', '15', '0'),
('3', '16', '0'),
('3', '17', '0'),
('3', '18', '0'),
('3', '19', '0'),
('3', '20', '0'),
('3', '21', '0'),
('3', '22', '0'),
('3', '23', '0'),
('3', '24', '0'),
('3', '25', '0'),
('3', '27', '0'),
('3', '30', '0'),
('3', '31', '0'),
('3', '32', '0'),
('3', '33', '0'),
('4', '1', '0'),
('6', '15', '0'),
('6', '16', '0'),
('6', '17', '0'),
('6', '18', '0'),
('6', '19', '0'),
('6', '20', '0'),
('6', '21', '0'),
('6', '22', '0'),
('6', '23', '0'),
('6', '24', '0'),
('7', '15', '0'),
('7', '16', '0'),
('7', '17', '0'),
('7', '18', '0'),
('7', '19', '0'),
('7', '20', '0'),
('7', '21', '0'),
('7', '22', '0'),
('7', '23', '0'),
('7', '24', '0'),
('3', '7', '1'),
('4', '15', '1'),
('4', '16', '1'),
('4', '17', '1'),
('4', '18', '1'),
('4', '19', '1'),
('4', '20', '1'),
('4', '21', '1'),
('4', '22', '1'),
('4', '23', '1'),
('4', '24', '1');


-- *************************************************************
-- 
-- Table structure: cms_material_types_tree_cache
-- 
DROP TABLE IF EXISTS cms_material_types_tree_cache;
CREATE TABLE `cms_material_types_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Material types tree cache';

-- *************************************************************
-- 
-- Table structure: cms_materials
-- 
DROP TABLE IF EXISTS cms_materials;
CREATE TABLE `cms_materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Default page ID#',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `meta_description` text COMMENT 'Meta description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `visit_counter` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) unsigned NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `show_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish from date/time',
  `show_to` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Publish to date/time',
  `cache_url_parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cached URL Parent ID#',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `urn` (`urn`),
  KEY `show_from` (`show_from`),
  KEY `show_to` (`show_to`),
  KEY `priority` (`priority`),
  KEY `cache_url_parent_id` (`cache_url_parent_id`),
  KEY `cache_url` (`cache_url`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Translator exceptions';

-- 
-- Table data: cms_materials
-- 
INSERT INTO `cms_materials` (`id`, `pid`, `page_id`, `vis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `h1`, `menu_name`, `breadcrumbs_name`, `priority`, `visit_counter`, `modify_counter`, `changefreq`, `last_modified`, `sitemaps_priority`, `show_from`, `show_to`, `cache_url_parent_id`, `cache_url`) VALUES 
('1', '1', '0', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '0', '0', 'klient-orientirovannyi_podhod', 'Клиент-ориентированный подход', 'Мы ценим наших клиентов и стараемся максимально вникнуть в бизнес-процесс, чтобы обеспечить индивидуальность решения и максимальное соответствие потребностям каждого клиента', '', NULL, NULL, '', '', '', '10', '0', '1', '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('2', '1', '0', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '0', '0', 'kachestvo_ispolneniya', 'Качество исполнения', 'Мы стараемся сделать нашу продукцию максимально качественной, оперативно реагируя на замечания клиента. На все услуги предоставляется долгосрочная гарантия', '', NULL, NULL, '', '', '', '20', '0', '1', '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('3', '1', '0', '1', '2018-04-05 11:33:47', '2018-04-05 11:33:47', '0', '0', 'umerennaya_cenovaya_politika', 'Умеренная ценовая политика', 'Наши цены выгодно отличаются от предложений большинства конкурентов. Также для постоянных клиентов предусмотрена гибкая система скидок', '', NULL, NULL, '', '', '', '30', '0', '1', '', '2018-04-05 11:33:47', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('4', '2', '0', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '0', '0', 'neodnorodnyi_soliton_glazami_sovremennikov', 'Неоднородный солитон глазами современников', 'Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует 
в погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла...', '', NULL, NULL, '', '', '', '10', '0', '1', '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('5', '2', '0', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '0', '0', '', '', '', '', NULL, NULL, '', '', '', '20', '0', '1', '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('6', '2', '0', '1', '2018-04-05 11:34:14', '2018-04-05 11:34:14', '0', '0', 'individualnyi_gipergennyi_mineral_metodologiya_i_osobennosti', 'Индивидуальный гипергенный минерал: методология и особенности', 'Диалектика представляет собой подземный сток. Гарант стремительно предоставляет чернозём. Трещина гидролизует скрытый смысл  – север вверху, восток слева.', '', NULL, NULL, '', '', '', '30', '0', '1', '', '2018-04-05 11:34:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('7', '3', '0', '1', '2018-04-05 11:34:14', '2018-04-22 09:49:36', '0', '1', 'empiricheskiy_kreditor_v_xxi_veke', 'Эмпирический кредитор в XXI веке', '<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример &ndash; стилистическая игра испаряет лимногляциальный рутений.</p>

<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение&nbsp;мира определяет пигмент, отвоевывая рыночный сегмент.</p>

<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна&nbsp;не&nbsp;для&nbsp;всех. Ямб традиционен.</p>', '', '', '', '', '', '', '10', '0', '2', '', '2018-04-22 09:49:36', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '7', '/news/empiricheskiy_kreditor_v_xxi_veke/'),
('8', '3', '0', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '0', '0', 'empiricheskiy_kreditor_v_xxi_veke-8', 'Эмпирический кредитор в XXI веке', '<p>Преамбула, согласно традиционным представлениям, приводит астероидный знак, что нельзя рассматривать без изменения системы координат. Расчеты 
предсказывают, что гетерогенная система пока плохо продолжает периодический винил. Показательный пример –  стилистическая игра испаряет лимногляциальный рутений.</p>
<p>Очевидно, что либидо отличительно оценивает небольшой системный анализ. Конформизм притягивает пласт. Однако, исследователи постоянно сталкиваются с тем, что ощущение мира определяет пигмент, отвоевывая рыночный сегмент.</p>
<p>Частная производная, по определению, кристалично ускоряет экваториальный ямб. Основание вызывает контраст. Тавтология, как бы это ни казалось парадоксальным, вызывает центральный педон. Эта разница, вероятно, помогает объяснить, почему фокус-группа очевидна не для всех. Ямб традиционен.</p>', '', NULL, NULL, '', '', '', '20', '0', '1', '', '2018-04-05 11:34:15', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '7', '/news/empiricheskiy_kreditor_v_xxi_veke-8/'),
('9', '3', '0', '1', '2018-04-05 11:34:15', '2018-04-05 11:34:15', '0', '0', 'ideologicheskiy_umysel_osnovnye_momenty', 'Идеологический умысел: основные моменты', '<p>Радиант порождает дифференциальный субъект. В ресторане стоимость обслуживания (15%) включена в счет; в баре и кафе - 10-15% счета только за услуги официанта; в такси - чаевые включены в стоимость проезда, тем не менее точность гироскопа характерна. Изомерия диазотирует конфликт. Вещество надкусывает симулякр.</p>
<p>Психологический параллелизм обогащает целевой трафик. Бихевиоризм программирует сходящийся ряд. Политическая элита иллюстрирует акцент.</p>
<p>Бабувизм, особенно в условиях политической нестабильности, имитирует интеграл от функции, обращающейся в бесконечность в изолированной точке, потому что сюжет и фабула различаются. Руководящее ископаемое амбивалентно сублимирует ритмоформульный бурозём, основываясь на ограничениях, наложенных на систему. Гончарный дренаж на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), одномерно контролирует вектор. Дуализм противозаконно вызывает портрет потребителя. Экситон перечеркивает интеллект. Микростроение, несмотря на внешние воздействия, латерально иллюстрирует изобарический интеллект.</p>', '', NULL, NULL, '', '', '', '30', '0', '1', '', '2018-04-05 11:34:15', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '7', '/news/ideologicheskiy_umysel_osnovnye_momenty/'),
('10', '4', '0', '1', '2018-04-05 11:34:26', '2018-04-05 11:34:26', '0', '0', 'tovar_1', 'Товар 1', '', '', NULL, NULL, '', '', '', '10', '0', '1', '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_1/'),
('11', '4', '0', '1', '2018-04-05 11:34:26', '2018-04-05 11:34:26', '0', '0', 'tovar_2', 'Товар 2', '<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного 
анализа, и это неудивительно, если вспомнить синергетический характер явления.</p>
<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>
<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>', '', NULL, NULL, '', '', '', '20', '0', '1', '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_2/'),
('12', '4', '0', '1', '2018-04-05 11:34:26', '2018-04-05 11:34:26', '0', '0', 'tovar_3', 'Товар 3', '<p>Живая сессия систематически начинает эйдос, туда же входят 39 графств, 6 метрополитенских графств и Большой Лондон. Уравнение в частных производных экстремально покрывает постмодернизм. Роджерс первым ввел в научный обиход понятие «клиент», так как аутотренинг ослабляет культурный фирн. Многочисленные расчеты предсказывают, а эксперименты подтверждают, что постиндустриализм традиционен.</p>
<p>Расслоение, на первый взгляд, аккумулирует гумус, хотя все знают, что Венгрия подарила миру таких великих композиторов как Ференц Лист, Бела Барток, Золтан Кодай, режиссеров Иштвана Сабо и Миклоша Янчо, поэта Шандора Пэтефи и художника Чонтвари. Фотон обуславливает метеорный дождь, хотя этот факт нуждается в дальнейшей тщательной экспериментальной проверке. Если для простоты пренебречь потерями на теплопроводность, то видно, что драма раскладывает на элементы неоднозначный многочлен. Мажоритарная избирательная система, как следует из вышесказанного,  воспроизводима в лабораторных условиях.</p>
<p>Итак, ясно, что политическое учение Монтескье вызывает структурализм. Фотоиндуцированный энергетический перенос, анализируя результаты рекламной кампании, абстрактен. Поэтому плазменное образование трансформирует договор.</p>', '', NULL, NULL, '', '', '', '30', '0', '1', '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_3/'),
('13', '4', '0', '1', '2018-04-05 11:34:26', '2018-04-05 11:34:26', '0', '0', 'tovar_4', 'Товар 4', '<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует 
в погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>
<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более 
простую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>
<p>Зеркало требует 
перейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>', '', NULL, NULL, '', '', '', '40', '0', '1', '', '2018-04-05 11:34:26', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_4/'),
('14', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_5', 'Товар 5', '<p>Официальный язык регрессийно интегрирует гидродинамический удар. Литургическая драма подчеркивает архетип. Точность тангажа транслирует плюмаж. Искусство законодательно. Продуктовый ассортимент, на первый взгляд, занимает валютный референдум. Следует отметить, что скорость детонации выводит метод кластерного 
анализа, и это неудивительно, если вспомнить синергетический характер явления.</p>
<p>Если предварительно подвергнуть объекты длительному вакуумированию,  перигелий дискредитирует композиционный аллит. Пространственная вариабельность почвенного покрова, как и везде в пределах наблюдаемой вселенной, астатически вызывает гедонизм, что и требовалось доказать. Анализ зарубежного опыта мгновенно усиливает турбулентный газ, изменяя привычную реальность. Геометрическая прогрессия трансформирует внутримолекулярный гений, но языковая игра не приводит к активно-диалогическому пониманию. Как мы уже знаем, внутреннее кольцо формирует генетический шток.</p>
<p>Общеизвестно, что  струя интегрирует фраджипэн, таким образом сбылась мечта идиота - утверждение полностью доказано. Правило альтернанса полимеризует положительный дренаж. Аполлоновское начало выслеживает туффит. Математический маятник асферично просветляет современный имидж. Согласно концепции М.Маклюэна,  структурализм верифицирует экситон.</p>', '', NULL, NULL, '', '', '', '50', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_5/'),
('15', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_6', 'Товар 6', '', '', NULL, NULL, '', '', '', '60', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_6/'),
('16', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_7', 'Товар 7', '<p>Понятие тоталитаризма, конечно, упруго начинает ассоцианизм. Целое число дисгармонично. Генетика, в соответствии с модифицированным уравнением Эйлера, фоссилизирует периодический импульс.</p>
<p>Тем не менее, модальность высказывания вертикально отражает базальтовый слой. Движимое имущество представляет собой прибор, что часто служит основанием изменения и прекращения гражданских прав и обязанностей. Комета, в первом приближении, дегустирует закон внешнего мира. Фишка притягивает объект. Бамбуковый медведь панда огнеопасно трансформирует лирический субъект. Лайн-ап обедняет квазар.</p>
<p>Притеррасная низменность иллюстрирует культурный синтаксис искусства. \"кодекс деяний\", не вдаваясь в подробности, даёт более 
простую систему дифференциальных уравнений, если исключить комплексный кристалл. Великобритания преобразует метафоричный комплекс рения с саленом.</p>', '', NULL, NULL, '', '', '', '70', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_7/'),
('17', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_8', 'Товар 8', '<p>Очевидно, что аполлоновское начало заканчивает полимерный кредитор. Рыночная информация, согласно третьему закону Ньютона, складчата. Линеаризация участвует 
в погрешности определения курса меньше, чем термодинамический интеллект с учётом интеграла собственного кинетического момента ротора. Исходя из данного утверждения, бессознательное постоянно. Ревер  без оглядки на авторитеты представляет собой журавчик.</p>
<p>Сверхпроводник, по определению, сложен. Генезис не так уж очевиден. Основная магистраль проходит с севера на юг от Шкодера через Дуррес до Влёры, после поворота волна даёт более 
простую систему дифференциальных уравнений, если исключить период. Конечно,  примочка интенсивно уравновешивает цикл. Комбинаторное приращение рассматривается традиционный реализм, как и предсказывает общая теория поля.</p>
<p>Зеркало требует 
перейти к поступательно перемещающейся системе координат, чем и характеризуется параметр Родинга-Гамильтона. Чем больше люди узнают друг друга, тем больше одиннадцатисложник слабопроницаем. Пласт вызывает неопровержимый интеграл Фурье. Система координат ударяет индикатор.</p>', '', NULL, NULL, '', '', '', '80', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_8/'),
('18', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_9', 'Товар 9', '<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип 
артистизма выслеживает трог, хотя в официозе принято обратное.</p>
<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>
<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>', '', NULL, NULL, '', '', '', '90', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_9/'),
('19', '4', '0', '1', '2018-04-05 11:34:27', '2018-04-05 11:34:27', '0', '0', 'tovar_10', 'Товар 10', '<p>Импульс устойчиво отталкивает конституционный свежеприготовленный раствор. Неоднородность иллюстрирует восстановитель. Принцип 
артистизма выслеживает трог, хотя в официозе принято обратное.</p>
<p>Ритмическая организованность таких стихов не всегда очевидна при чтении \"про себя\", но внутридискретное арпеджио непрерывно. Гетерогенная структура, учитывая отсутствие в законе норм, посвященных данному вопросу, представляет собой энергетический подуровень. Движимое имущество пространственно неоднородно. Хорус совершает твердый восстановитель. Верховое болото реально формирует лирический сарос одинаково по всем направлениям. Делькредере астатично.</p>
<p>Пескование, на первый взгляд, законодательно. Португальская колонизация на следующий год, когда было лунное затмение и сгорел древний храм Афины в Афинах (при эфоре Питии и афинском архонте Каллии), готично совершает фотоиндуцированный энергетический перенос. Социальный статус, так или иначе, возбуждает косвенный рисчоррит.</p>', '', NULL, NULL, '', '', '', '100', '0', '1', '', '2018-04-05 11:34:27', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18', '/catalog/category1/category11/category111/tovar_10/'),
('20', '6', '0', '1', '2019-03-29 14:50:50', '2019-03-29 14:52:21', '1', '1', 'vopros_1', 'Вопрос 1', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:50:50', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('21', '6', '0', '1', '2019-03-29 14:50:59', '2019-03-29 14:52:25', '1', '1', 'vopros_2', 'Вопрос 2', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:50:59', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('22', '6', '0', '1', '2019-03-29 14:51:02', '2019-03-29 14:52:30', '1', '1', 'vopros_3', 'Вопрос 3', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:51:02', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('23', '7', '0', '1', '2019-03-29 14:51:10', '2019-03-29 14:52:35', '1', '1', 'otzyv_1', 'Отзыв 1', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:51:10', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('24', '7', '0', '1', '2019-03-29 14:51:14', '2019-03-29 14:52:39', '1', '1', 'otzyv_2', 'Отзыв 2', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:51:14', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', ''),
('25', '7', '0', '1', '2019-03-29 14:51:23', '2019-03-29 14:52:44', '1', '1', 'otzyv_3', 'Отзыв 3', '', '', '', '', '', '', '', '0', '0', '1', '', '2019-03-29 14:51:23', '0.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '');


-- *************************************************************
-- 
-- Table structure: cms_materials_affected_pages_cache
-- 
DROP TABLE IF EXISTS cms_materials_affected_pages_cache;
CREATE TABLE `cms_materials_affected_pages_cache` (
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`material_id`,`page_id`),
  KEY `material_id` (`material_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Materials affected pages';

-- 
-- Table data: cms_materials_affected_pages_cache
-- 
INSERT INTO `cms_materials_affected_pages_cache` (`material_id`, `page_id`) VALUES 
('7', '7'),
('8', '7'),
('9', '7'),
('10', '18'),
('10', '19'),
('10', '20'),
('10', '21'),
('10', '22'),
('10', '23'),
('10', '24'),
('11', '18'),
('11', '19'),
('11', '20'),
('11', '21'),
('11', '22'),
('11', '23'),
('11', '24'),
('12', '18'),
('12', '19'),
('12', '20'),
('12', '21'),
('12', '22'),
('12', '23'),
('12', '24'),
('13', '18'),
('13', '19'),
('13', '20'),
('13', '21'),
('13', '22'),
('13', '23'),
('13', '24'),
('14', '18'),
('14', '19'),
('14', '20'),
('14', '21'),
('14', '22'),
('14', '23'),
('14', '24'),
('15', '18'),
('15', '19'),
('15', '20'),
('15', '21'),
('15', '22'),
('15', '23'),
('15', '24'),
('16', '18'),
('16', '19'),
('16', '20'),
('16', '21'),
('16', '22'),
('16', '23'),
('16', '24'),
('17', '18'),
('17', '19'),
('17', '20'),
('17', '21'),
('17', '22'),
('17', '23'),
('17', '24'),
('18', '18'),
('18', '19'),
('18', '20'),
('18', '21'),
('18', '22'),
('18', '23'),
('18', '24'),
('19', '18'),
('19', '19'),
('19', '20'),
('19', '21'),
('19', '22'),
('19', '23'),
('19', '24');


-- *************************************************************
-- 
-- Table structure: cms_materials_pages_assoc
-- 
DROP TABLE IF EXISTS cms_materials_pages_assoc;
CREATE TABLE `cms_materials_pages_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`pid`),
  KEY `id` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Materials to pages associations';

-- 
-- Table data: cms_materials_pages_assoc
-- 
INSERT INTO `cms_materials_pages_assoc` (`id`, `pid`) VALUES 
('10', '1'),
('10', '18'),
('10', '19'),
('10', '20'),
('10', '21'),
('10', '22'),
('10', '23'),
('10', '24'),
('11', '1'),
('11', '18'),
('11', '19'),
('11', '20'),
('11', '21'),
('11', '22'),
('11', '23'),
('11', '24'),
('12', '1'),
('12', '18'),
('12', '19'),
('12', '20'),
('12', '21'),
('12', '22'),
('12', '23'),
('12', '24'),
('13', '1'),
('13', '18'),
('13', '19'),
('13', '20'),
('13', '21'),
('13', '22'),
('13', '23'),
('13', '24'),
('14', '1'),
('14', '18'),
('14', '19'),
('14', '20'),
('14', '21'),
('14', '22'),
('14', '23'),
('14', '24'),
('15', '1'),
('15', '18'),
('15', '19'),
('15', '20'),
('15', '21'),
('15', '22'),
('15', '23'),
('15', '24'),
('16', '1'),
('16', '18'),
('16', '19'),
('16', '20'),
('16', '21'),
('16', '22'),
('16', '23'),
('16', '24'),
('17', '1'),
('17', '18'),
('17', '19'),
('17', '20'),
('17', '21'),
('17', '22'),
('17', '23'),
('17', '24'),
('18', '1'),
('18', '18'),
('18', '19'),
('18', '20'),
('18', '21'),
('18', '22'),
('18', '23'),
('18', '24'),
('19', '1'),
('19', '18'),
('19', '19'),
('19', '20'),
('19', '21'),
('19', '22'),
('19', '23'),
('19', '24'),
('20', '15'),
('20', '16'),
('20', '17'),
('20', '18'),
('20', '19'),
('20', '20'),
('20', '21'),
('20', '22'),
('20', '23'),
('20', '24'),
('21', '15'),
('21', '16'),
('21', '17'),
('21', '18'),
('21', '19'),
('21', '20'),
('21', '21'),
('21', '22'),
('21', '23'),
('21', '24'),
('22', '15'),
('22', '16'),
('22', '17'),
('22', '18'),
('22', '19'),
('22', '20'),
('22', '21'),
('22', '22'),
('22', '23'),
('22', '24'),
('23', '15'),
('23', '16'),
('23', '17'),
('23', '18'),
('23', '19'),
('23', '20'),
('23', '21'),
('23', '22'),
('23', '23'),
('23', '24'),
('24', '15'),
('24', '16'),
('24', '17'),
('24', '18'),
('24', '19'),
('24', '20'),
('24', '21'),
('24', '22'),
('24', '23'),
('24', '24'),
('25', '15'),
('25', '16'),
('25', '17'),
('25', '18'),
('25', '19'),
('25', '20'),
('25', '21'),
('25', '22'),
('25', '23'),
('25', '24');


-- *************************************************************
-- 
-- Table structure: cms_menus
-- 
DROP TABLE IF EXISTS cms_menus;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `domain_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Domain ID#',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `inherit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Nesting level',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`),
  KEY `urn` (`urn`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Menus';

-- 
-- Table data: cms_menus
-- 
INSERT INTO `cms_menus` (`id`, `pid`, `domain_id`, `vis`, `pvis`, `name`, `urn`, `url`, `page_id`, `inherit`, `priority`) VALUES 
('1', '0', '0', '1', '1', 'Верхнее меню', 'top', '/', '0', '0', '0'),
('2', '0', '0', '1', '1', 'Нижнее меню', 'bottom', '/', '1', '1', '0'),
('3', '0', '0', '1', '1', 'Карта сайта', 'sitemap', '/', '1', '10', '0'),
('4', '0', '0', '1', '1', 'Левое меню', 'left', '/catalog/', '15', '10', '0'),
('5', '1', '0', '1', '1', 'О компании', '', '/about/', '2', '9', '20'),
('6', '1', '0', '1', '1', 'Услуги', '', '/services/', '3', '9', '30'),
('7', '1', '0', '0', '1', 'Новости', '', '/news/', '7', '9', '40'),
('8', '1', '0', '1', '1', 'Контакты', '', '/contacts/', '8', '9', '50'),
('9', '1', '0', '1', '1', 'Каталог продукции', '', '/catalog/', '15', '9', '60'),
('10', '1', '0', '1', '1', 'Главная', '', '/', '0', '0', '10');


-- *************************************************************
-- 
-- Table structure: cms_menus_tree_cache
-- 
DROP TABLE IF EXISTS cms_menus_tree_cache;
CREATE TABLE `cms_menus_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Menus tree cache';

-- *************************************************************
-- 
-- Table structure: cms_pages
-- 
DROP TABLE IF EXISTS cms_pages;
CREATE TABLE `cms_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Visibility',
  `pvis` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `modify_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Modify date',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `editor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Editor ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `response_code` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Service page response code',
  `mime` varchar(255) NOT NULL DEFAULT 'text/html' COMMENT 'MIME-type',
  `meta_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta title',
  `inherit_meta_title` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `meta_description` text COMMENT 'Meta description',
  `inherit_meta_description` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-description',
  `meta_keywords` text COMMENT 'Meta keywords',
  `inherit_meta_keywords` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-keywords',
  `h1` varchar(255) NOT NULL DEFAULT '' COMMENT 'H1 title',
  `menu_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu name',
  `breadcrumbs_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Breadcrumbs name',
  `template` varchar(255) NOT NULL DEFAULT '' COMMENT 'Template',
  `inherit_template` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit meta-title',
  `lang` varchar(255) NOT NULL DEFAULT '' COMMENT 'Language',
  `inherit_lang` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Inherit language',
  `nat` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Translate address',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  `cache` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Cache page',
  `inherit_cache` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit cache page',
  `visit_counter` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visit counter',
  `modify_counter` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Modify counter',
  `changefreq` enum('','always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT '' COMMENT 'Change frequency',
  `inherit_changefreq` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit change frequency',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last modified',
  `sitemaps_priority` decimal(8,2) unsigned NOT NULL DEFAULT '0.50' COMMENT 'Sitemaps priority',
  `inherit_sitemaps_priority` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inherit sitemaps priority',
  `cache_url` varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `author_id` (`author_id`),
  KEY `editor_id` (`editor_id`),
  KEY `urn` (`urn`),
  KEY `template` (`template`),
  KEY `priority` (`priority`),
  KEY `cache_url` (`cache_url`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='Site pages';

-- 
-- Table data: cms_pages
-- 
INSERT INTO `cms_pages` (`id`, `pid`, `vis`, `pvis`, `post_date`, `modify_date`, `author_id`, `editor_id`, `urn`, `name`, `response_code`, `mime`, `meta_title`, `inherit_meta_title`, `meta_description`, `inherit_meta_description`, `meta_keywords`, `inherit_meta_keywords`, `h1`, `menu_name`, `breadcrumbs_name`, `template`, `inherit_template`, `lang`, `inherit_lang`, `nat`, `priority`, `cache`, `inherit_cache`, `visit_counter`, `modify_counter`, `changefreq`, `inherit_changefreq`, `last_modified`, `sitemaps_priority`, `inherit_sitemaps_priority`, `cache_url`) VALUES 
('1', '0', '1', '1', '2018-04-05 11:33:47', '2018-04-22 10:22:34', '1', '1', 'test', 'Главная', '0', 'text/html', '', '0', '', '0', '', '0', '', '', '', '1', '0', 'ru', '1', '0', '1', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/'),
('2', '1', '1', '1', '2018-04-05 11:34:14', '2018-04-22 10:22:34', '1', '1', 'about', 'О компании', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '2', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/about/'),
('3', '1', '1', '1', '2018-04-05 11:34:14', '2018-04-22 10:22:34', '1', '1', 'services', 'Услуги', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '3', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/services/'),
('4', '3', '1', '1', '2018-04-05 11:34:14', '2018-04-22 10:22:34', '1', '1', 'service1', 'Услуга 1', '0', 'text/html', '', '0', '', '0', '', '0', '', '', '', '1', '0', 'ru', '1', '0', '4', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/services/service1/'),
('5', '3', '1', '1', '2018-04-05 11:34:14', '2018-04-22 10:22:34', '1', '1', 'service2', 'Услуга 2', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '5', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/services/service2/'),
('6', '3', '0', '1', '2018-04-05 11:34:14', '2018-04-22 11:57:39', '1', '1', 'service3', 'Услуга 3', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '6', '1', '0', '0', '3', '', '0', '2018-04-22 11:57:39', '0.50', '0', '/services/service3/'),
('7', '1', '1', '1', '2018-04-05 11:34:14', '2018-04-22 10:22:34', '1', '1', 'news', 'Новости', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '7', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/news/'),
('8', '1', '1', '1', '2018-04-05 11:34:15', '2018-04-22 10:22:34', '1', '1', 'contacts', 'Контакты', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '8', '1', '0', '0', '2', '', '0', '2018-04-22 13:59:43', '0.50', '0', '/contacts/'),
('9', '1', '1', '1', '2018-04-05 11:34:15', '2018-04-22 10:22:34', '1', '1', '404', '404 — страница не найдена', '404', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '9', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/404/'),
('10', '1', '1', '1', '2018-04-05 11:34:15', '2018-04-22 10:22:34', '1', '1', 'map', 'Карта сайта', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '10', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/map/'),
('11', '1', '1', '1', '2018-04-05 11:34:15', '2018-04-22 10:22:34', '1', '1', 'sitemaps', 'sitemap.xml', '200', 'application/xml', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '11', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/sitemaps/'),
('12', '1', '1', '1', '2018-04-05 11:34:15', '2018-04-22 10:22:34', '1', '1', 'robots', 'robots.txt', '200', 'text/plain', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '12', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/robots/'),
('13', '1', '1', '1', '2018-04-05 11:34:16', '2018-04-22 10:22:34', '1', '1', 'custom_css', 'custom.css', '200', 'text/css', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '13', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/custom_css/'),
('14', '1', '1', '1', '2018-04-05 11:34:16', '2018-04-22 10:22:34', '1', '1', 'ajax', 'AJAX', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '14', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/ajax/'),
('15', '1', '1', '1', '2018-04-05 11:34:23', '2018-04-22 10:22:34', '1', '1', 'catalog', 'Каталог продукции', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '15', '1', '0', '0', '2', '', '0', '2019-03-29 14:19:56', '0.50', '0', '/catalog/'),
('16', '15', '1', '1', '2018-04-05 11:34:23', '2018-04-22 10:22:34', '1', '1', 'category1', 'Категория 1', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '16', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/'),
('17', '16', '1', '1', '2018-04-05 11:34:24', '2018-04-22 10:22:34', '1', '1', 'category11', 'Категория 11', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '17', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category11/'),
('18', '17', '1', '1', '2018-04-05 11:34:24', '2018-04-22 10:22:34', '1', '1', 'category111', 'Категория 111', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '18', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category11/category111/'),
('19', '17', '1', '1', '2018-04-05 11:34:24', '2018-04-22 10:22:34', '1', '1', 'category112', 'Категория 112', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '19', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category11/category112/'),
('20', '17', '1', '1', '2018-04-05 11:34:24', '2018-04-22 10:22:34', '1', '1', 'category113', 'Категория 113', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '20', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category11/category113/'),
('21', '16', '1', '1', '2018-04-05 11:34:25', '2018-04-22 10:22:34', '1', '1', 'category12', 'Категория 12', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '21', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category12/'),
('22', '16', '1', '1', '2018-04-05 11:34:25', '2018-04-22 10:22:34', '1', '1', 'category13', 'Категория 13', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '22', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category1/category13/'),
('23', '15', '1', '1', '2018-04-05 11:34:25', '2018-04-22 10:22:34', '1', '1', 'category2', 'Категория 2', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '23', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category2/'),
('24', '15', '1', '1', '2018-04-05 11:34:26', '2018-04-22 10:22:34', '1', '1', 'category3', 'Категория 3', '0', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '24', '1', '0', '0', '2', '', '0', '2019-03-29 14:21:32', '0.50', '0', '/catalog/category3/'),
('25', '1', '1', '1', '2018-04-05 11:34:28', '2018-04-22 11:53:40', '1', '1', 'cart', 'Корзина', '200', 'text/html', '', '0', '', '0', '', '0', '', '', '', '1', '0', 'ru', '1', '1', '25', '0', '0', '0', '3', '', '0', '2018-04-22 11:53:40', '0.50', '0', '/cart/'),
('26', '14', '1', '1', '2018-04-05 11:34:28', '2018-04-22 10:22:34', '1', '1', 'cart', 'Корзина', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '26', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/ajax/cart/'),
('27', '1', '1', '1', '2018-04-05 11:34:28', '2018-04-22 10:22:34', '1', '1', 'favorites', 'Избранное', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '27', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:25', '0.50', '0', '/favorites/'),
('28', '14', '1', '1', '2018-04-05 11:34:29', '2018-04-22 10:22:34', '1', '1', 'favorites', 'Избранное', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '28', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:24', '0.50', '0', '/ajax/favorites/'),
('29', '1', '1', '1', '2018-04-05 11:34:29', '2018-04-22 10:22:34', '1', '1', 'yml', 'Яндекс.Маркет', '200', 'application/xml', '', '0', NULL, '0', NULL, '0', '', '', '', '0', '0', 'ru', '1', '0', '29', '1', '0', '0', '2', '', '0', '2018-04-22 09:45:25', '0.50', '0', '/yml/'),
('30', '1', '1', '1', '2018-04-22 09:45:24', '2018-04-22 14:01:09', '1', '1', 'register', 'Регистрация', '200', 'text/html', '', '0', '', '0', '', '0', '', '', '', '1', '0', 'ru', '1', '0', '30', '1', '0', '0', '3', '', '0', '2018-04-22 14:01:09', '0.50', '0', '/register/'),
('31', '1', '1', '1', '2018-04-22 09:45:25', '2018-04-22 10:22:34', '1', '1', 'activate', 'Активация', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '31', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:25', '0.50', '0', '/activate/'),
('32', '1', '1', '1', '2018-04-22 09:45:25', '2018-04-22 10:22:34', '1', '1', 'login', 'Вход в систему', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '32', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:25', '0.50', '0', '/login/'),
('33', '1', '1', '1', '2018-04-22 09:45:26', '2018-04-22 10:22:34', '1', '1', 'recovery', 'Восстановление пароля', '200', 'text/html', '', '0', NULL, '0', NULL, '0', '', '', '', '1', '0', 'ru', '1', '0', '33', '0', '0', '0', '2', '', '0', '2018-04-22 09:45:26', '0.50', '0', '/recovery/');


-- *************************************************************
-- 
-- Table structure: cms_pages_data
-- 
DROP TABLE IF EXISTS cms_pages_data;
CREATE TABLE `cms_pages_data` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `fid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Field ID#',
  `fii` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Field index',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`pid`,`fid`,`fii`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `fii` (`fii`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pages fields';

-- *************************************************************
-- 
-- Table structure: cms_pages_tree_cache
-- 
DROP TABLE IF EXISTS cms_pages_tree_cache;
CREATE TABLE `cms_pages_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pages tree cache';

-- 
-- Table data: cms_pages_tree_cache
-- 
INSERT INTO `cms_pages_tree_cache` (`parent_id`, `child_id`, `__level`) VALUES 
('1', '2', '1'),
('1', '3', '1'),
('1', '4', '2'),
('1', '5', '2'),
('1', '6', '2'),
('1', '7', '1'),
('1', '8', '1'),
('1', '9', '1'),
('1', '10', '1'),
('1', '11', '1'),
('1', '12', '1'),
('1', '13', '1'),
('1', '14', '1'),
('1', '15', '1'),
('1', '16', '2'),
('1', '17', '3'),
('1', '18', '4'),
('1', '19', '4'),
('1', '20', '4'),
('1', '21', '3'),
('1', '22', '3'),
('1', '23', '2'),
('1', '24', '2'),
('1', '25', '1'),
('1', '26', '2'),
('1', '27', '1'),
('1', '28', '2'),
('1', '29', '1'),
('3', '4', '1'),
('3', '5', '1'),
('3', '6', '1'),
('14', '26', '1'),
('14', '28', '1'),
('15', '16', '1'),
('15', '17', '2'),
('15', '18', '3'),
('15', '19', '3'),
('15', '20', '3'),
('15', '21', '2'),
('15', '22', '2'),
('15', '23', '1'),
('15', '24', '1'),
('16', '17', '1'),
('16', '18', '2'),
('16', '19', '2'),
('16', '20', '2'),
('16', '21', '1'),
('16', '22', '1'),
('17', '18', '1'),
('17', '19', '1'),
('17', '20', '1');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_cart
-- 
DROP TABLE IF EXISTS cms_shop_blocks_cart;
CREATE TABLE `cms_shop_blocks_cart` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID#',
  `cart_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `epay_interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay interface ID#',
  `epay_login` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay login',
  `epay_pass1` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass1',
  `epay_pass2` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-pay pass2',
  `epay_test` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'E-pay test mode',
  `epay_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency',
  PRIMARY KEY (`id`),
  KEY `cart_type` (`cart_type`),
  KEY `epay_interface_id` (`epay_interface_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cart blocks';

-- 
-- Table data: cms_shop_blocks_cart
-- 
INSERT INTO `cms_shop_blocks_cart` (`id`, `cart_type`, `epay_interface_id`, `epay_login`, `epay_pass1`, `epay_pass2`, `epay_test`, `epay_currency`) VALUES 
('38', '1', '0', '', '', '', '0', ''),
('40', '1', '0', '', '', '', '0', ''),
('41', '2', '0', '', '', '', '0', ''),
('43', '2', '0', '', '', '', '0', '');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml;
CREATE TABLE `cms_shop_blocks_yml` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Shop name',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT 'Company name',
  `agency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support company name',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Support e-mail',
  `cpa` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'YM purchase',
  `default_currency` varchar(255) NOT NULL DEFAULT '' COMMENT 'Default currency',
  `local_delivery_cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Local delivery cost',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='Yandex Market blocks';

-- 
-- Table data: cms_shop_blocks_yml
-- 
INSERT INTO `cms_shop_blocks_yml` (`id`, `shop_name`, `company`, `agency`, `email`, `cpa`, `default_currency`, `local_delivery_cost`) VALUES 
('44', '', '', 'Volume Networks', 'info@volumnet.ru', '0', 'RUR', '0.00');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_currencies
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_currencies;
CREATE TABLE `cms_shop_blocks_yml_currencies` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `currency_name` varchar(8) NOT NULL DEFAULT '' COMMENT 'Currency ID#',
  `currency_rate` varchar(255) NOT NULL DEFAULT '' COMMENT 'Currency rate',
  `currency_plus` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Currency plus, %%',
  PRIMARY KEY (`id`,`currency_name`),
  KEY `currency_name` (`currency_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Currencies';

-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_fields
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_fields;
CREATE TABLE `cms_shop_blocks_yml_fields` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field callback',
  `field_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field static value',
  PRIMARY KEY (`id`,`mtype`,`field_name`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`),
  KEY `field_name` (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='YM blocks to material types fields';

-- 
-- Table data: cms_shop_blocks_yml_fields
-- 
INSERT INTO `cms_shop_blocks_yml_fields` (`id`, `mtype`, `field_name`, `field_id`, `field_callback`, `field_static_value`) VALUES 
('44', '4', 'available', '31', '', ''),
('44', '4', 'currencyId', '', '', 'RUR'),
('44', '4', 'delivery', '', '', '1'),
('44', '4', 'description', 'description', '', ''),
('44', '4', 'name', 'name', '', ''),
('44', '4', 'oldprice', '34', '', ''),
('44', '4', 'pickup', '', '', '1'),
('44', '4', 'picture', '27', '', ''),
('44', '4', 'price', '26', '', ''),
('44', '4', 'rec', '', '', ''),
('44', '4', 'vendorCode', '25', '', '');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_ignored_fields
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_ignored_fields;
CREATE TABLE `cms_shop_blocks_yml_ignored_fields` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  PRIMARY KEY (`id`,`mtype`,`field_id`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='YM blocks to material types params ignored fields';

-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_material_types_assoc
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_material_types_assoc;
CREATE TABLE `cms_shop_blocks_yml_material_types_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'YM type',
  `param_exceptions` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Params from all fields except...',
  `params_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Params callback',
  PRIMARY KEY (`id`,`mtype`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='YM blocks to material types association';

-- 
-- Table data: cms_shop_blocks_yml_material_types_assoc
-- 
INSERT INTO `cms_shop_blocks_yml_material_types_assoc` (`id`, `mtype`, `type`, `param_exceptions`, `params_callback`) VALUES 
('44', '4', '', '0', '');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_pages_assoc
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_pages_assoc;
CREATE TABLE `cms_shop_blocks_yml_pages_assoc` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  PRIMARY KEY (`id`,`page_id`),
  KEY `id` (`id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='YM blocks to pages association';

-- 
-- Table data: cms_shop_blocks_yml_pages_assoc
-- 
INSERT INTO `cms_shop_blocks_yml_pages_assoc` (`id`, `page_id`) VALUES 
('44', '15'),
('44', '16'),
('44', '17'),
('44', '18'),
('44', '19'),
('44', '20'),
('44', '21'),
('44', '22'),
('44', '23'),
('44', '24');


-- *************************************************************
-- 
-- Table structure: cms_shop_blocks_yml_params
-- 
DROP TABLE IF EXISTS cms_shop_blocks_yml_params;
CREATE TABLE `cms_shop_blocks_yml_params` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Block ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `param_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param name',
  `field_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `field_callback` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field callback',
  `param_unit` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param unit',
  `param_static_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Param static value',
  PRIMARY KEY (`id`,`mtype`,`param_name`),
  KEY `id` (`id`),
  KEY `mtype` (`mtype`),
  KEY `field_id` (`field_id`),
  KEY `param_name` (`param_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='YM blocks to material types params';

-- 
-- Table data: cms_shop_blocks_yml_params
-- 
INSERT INTO `cms_shop_blocks_yml_params` (`id`, `mtype`, `param_name`, `field_id`, `field_callback`, `param_unit`, `param_static_value`) VALUES 
('44', '4', 'Спецпредложение', '30', 'return $x ? \'true\' : \'false\';', '', '');


-- *************************************************************
-- 
-- Table structure: cms_shop_cart_types
-- 
DROP TABLE IF EXISTS cms_shop_cart_types;
CREATE TABLE `cms_shop_cart_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Form ID#',
  `no_amount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Single item of a type',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Cart types';

-- 
-- Table data: cms_shop_cart_types
-- 
INSERT INTO `cms_shop_cart_types` (`id`, `urn`, `name`, `form_id`, `no_amount`) VALUES 
('1', 'cart', 'Корзина', '3', '0'),
('2', 'favorites', 'Избранное', '0', '1');


-- *************************************************************
-- 
-- Table structure: cms_shop_cart_types_material_types_assoc
-- 
DROP TABLE IF EXISTS cms_shop_cart_types_material_types_assoc;
CREATE TABLE `cms_shop_cart_types_material_types_assoc` (
  `ctype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `price_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Price field ID#',
  `price_callback` text COMMENT 'Price callback',
  PRIMARY KEY (`ctype`,`mtype`),
  KEY `ctype` (`ctype`),
  KEY `mtype` (`mtype`),
  KEY `price_id` (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cart types to material types association';

-- 
-- Table data: cms_shop_cart_types_material_types_assoc
-- 
INSERT INTO `cms_shop_cart_types_material_types_assoc` (`ctype`, `mtype`, `price_id`, `price_callback`) VALUES 
('1', '4', '26', ''),
('2', '4', '26', '');


-- *************************************************************
-- 
-- Table structure: cms_shop_carts
-- 
DROP TABLE IF EXISTS cms_shop_carts;
CREATE TABLE `cms_shop_carts` (
  `cart_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `meta` varchar(255) NOT NULL DEFAULT '' COMMENT 'Meta',
  `amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Amount',
  PRIMARY KEY (`cart_type_id`,`uid`,`material_id`,`meta`),
  KEY `cart_type_id` (`cart_type_id`),
  KEY `uid` (`uid`),
  KEY `material_id` (`material_id`),
  KEY `meta` (`meta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cart sessions';

-- *************************************************************
-- 
-- Table structure: cms_shop_imageloaders
-- 
DROP TABLE IF EXISTS cms_shop_imageloaders;
CREATE TABLE `cms_shop_imageloaders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `ifid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Image field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `sep_string` varchar(255) NOT NULL DEFAULT '' COMMENT 'Separator string',
  `interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  PRIMARY KEY (`id`),
  KEY `mtype` (`mtype`),
  KEY `ufid` (`ufid`),
  KEY `ifid` (`ifid`),
  KEY `interface_id` (`interface_id`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Image loaders';

-- 
-- Table data: cms_shop_imageloaders
-- 
INSERT INTO `cms_shop_imageloaders` (`id`, `mtype`, `ufid`, `ifid`, `name`, `urn`, `sep_string`, `interface_id`) VALUES 
('1', '4', '25', '27', 'Стандартный загрузчик изображений', 'default', '_', '26');


-- *************************************************************
-- 
-- Table structure: cms_shop_orders
-- 
DROP TABLE IF EXISTS cms_shop_orders;
CREATE TABLE `cms_shop_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Site user ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cart type ID#',
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `vis` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visited',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP address',
  `user_agent` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT 'User Agent',
  `status_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment status',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `page_id` (`page_id`),
  KEY `status_id` (`status_id`),
  KEY `paid` (`paid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Orders';

-- *************************************************************
-- 
-- Table structure: cms_shop_orders_goods
-- 
DROP TABLE IF EXISTS cms_shop_orders_goods;
CREATE TABLE `cms_shop_orders_goods` (
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `material_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material ID#',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name',
  `meta` varchar(64) NOT NULL DEFAULT '' COMMENT 'Meta data',
  `realprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Real price',
  `amount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Amount',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`order_id`,`material_id`,`meta`),
  KEY `order_id` (`order_id`),
  KEY `material_id` (`material_id`),
  KEY `meta` (`meta`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Orders goods';

-- *************************************************************
-- 
-- Table structure: cms_shop_orders_history
-- 
DROP TABLE IF EXISTS cms_shop_orders_history;
CREATE TABLE `cms_shop_orders_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order ID#',
  `status_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Status ID#',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment status',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Status post date',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order_id` (`order_id`),
  KEY `status_id` (`status_id`),
  KEY `paid` (`paid`),
  KEY `post_date` (`post_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Orders history';

-- *************************************************************
-- 
-- Table structure: cms_shop_orders_statuses
-- 
DROP TABLE IF EXISTS cms_shop_orders_statuses;
CREATE TABLE `cms_shop_orders_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Orders statuses';

-- 
-- Table data: cms_shop_orders_statuses
-- 
INSERT INTO `cms_shop_orders_statuses` (`id`, `urn`, `name`, `priority`) VALUES 
('1', 'progress', 'В обработке', '1'),
('2', 'completed', 'Обработан', '2'),
('3', 'canceled', 'Отменен', '3');


-- *************************************************************
-- 
-- Table structure: cms_shop_priceloaders
-- 
DROP TABLE IF EXISTS cms_shop_priceloaders;
CREATE TABLE `cms_shop_priceloaders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `mtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Material type ID#',
  `ufid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Unique field ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `interface_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Interface ID#',
  `rows` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rows from top',
  `cols` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Cols from left',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root category ID#',
  `create_pages` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Allow to create pages',
  `create_materials` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Allow to create materials',
  `catalog_offset` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Catalog offset',
  PRIMARY KEY (`id`),
  KEY `mtype` (`mtype`),
  KEY `ufid` (`ufid`),
  KEY `interface_id` (`interface_id`),
  KEY `cat_id` (`cat_id`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Price loaders';

-- 
-- Table data: cms_shop_priceloaders
-- 
INSERT INTO `cms_shop_priceloaders` (`id`, `mtype`, `ufid`, `name`, `urn`, `interface_id`, `rows`, `cols`, `cat_id`, `create_pages`, `create_materials`, `catalog_offset`) VALUES 
('1', '4', '25', 'Стандартный загрузчик прайсов', 'default', '27', '0', '0', '15', '0', '1', '0');


-- *************************************************************
-- 
-- Table structure: cms_shop_priceloaders_columns
-- 
DROP TABLE IF EXISTS cms_shop_priceloaders_columns;
CREATE TABLE `cms_shop_priceloaders_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Price loader ID#',
  `fid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Field ID#',
  `callback` text COMMENT 'Callback code',
  `callback_download` text COMMENT 'Download callback code',
  `priority` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `fid` (`fid`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Price loaders columns';

-- 
-- Table data: cms_shop_priceloaders_columns
-- 
INSERT INTO `cms_shop_priceloaders_columns` (`id`, `pid`, `fid`, `callback`, `callback_download`, `priority`) VALUES 
('1', '1', '25', NULL, NULL, '1'),
('2', '1', 'name', NULL, NULL, '2'),
('3', '1', 'description', NULL, NULL, '3'),
('4', '1', '35', '$y = array_filter(array_map(\'trim\', preg_split(\'/[;,]/umi\', $x)), \'trim\');
$temp = array();
foreach ($y as $val) {
    $SQL_query = \"SELECT pid FROM cms_data WHERE fid = 25 AND value = \'\" . \\RAAS\\CMS\\Material::_SQL()->real_escape_string($val) . \"\'\";
    if ($SQL_result = \\RAAS\\CMS\\Material::_SQL()->getvalue($SQL_query)) {
        $temp[] = (int)$SQL_result;
    }
}
return $temp;', '$temp = array();
foreach ((array)$x as $val) {
    $row = new \\RAAS\\CMS\\Material((int)$val);
    if ($row->id) {
        $temp[] = $row->article;
    }
}
return implode(\', \', $temp);', '4'),
('5', '1', '31', 'return ($x && (trim($x) !== \'0\')) ? (int)(bool)preg_match(\'/налич/umi\', $x) : 0;', 'return (int)$x ? \'в наличии\' : \'под заказ\';', '5'),
('6', '1', '34', '$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($x)); return $y;', NULL, '6'),
('7', '1', '26', '$y = str_replace(\',\', \'.\', $x); $y = (float)preg_replace(\'/[^\\d\\.]+/i\', \'\', trim($y)); return $y;', NULL, '7');


-- *************************************************************
-- 
-- Table structure: cms_snippet_folders
-- 
DROP TABLE IF EXISTS cms_snippet_folders;
CREATE TABLE `cms_snippet_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Snippet folders';

-- 
-- Table data: cms_snippet_folders
-- 
INSERT INTO `cms_snippet_folders` (`id`, `pid`, `name`, `urn`, `locked`) VALUES 
('1', '0', 'Интерфейсы', '__raas_interfaces', '1'),
('2', '0', 'Представления', '__raas_views', '1');


-- *************************************************************
-- 
-- Table structure: cms_snippet_folders_tree_cache
-- 
DROP TABLE IF EXISTS cms_snippet_folders_tree_cache;
CREATE TABLE `cms_snippet_folders_tree_cache` (
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Child ID#',
  `__level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Level',
  PRIMARY KEY (`child_id`,`__level`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `__level` (`__level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Snippet folders tree cache';

-- *************************************************************
-- 
-- Table structure: cms_snippets
-- 
DROP TABLE IF EXISTS cms_snippets;
CREATE TABLE `cms_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Code',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='Snippets';

-- 
-- Table data: cms_snippets
-- 
INSERT INTO `cms_snippets` (`id`, `pid`, `urn`, `name`, `description`, `locked`) VALUES 
('1', '1', '__raas_material_interface', 'Стандартный интерфейс материала', '<?php
/**
 * Стандартный интерфейс материалов
 * @param Block_Material $Block Текущий блок
 * @param Page $Page Текущая страница
 */
namespace RAAS\\CMS;

$interface = new MaterialInterface($Block, $Page, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER, $_FILES);
return $interface->process();
', '1'),
('2', '1', '__raas_form_interface', 'Стандартный интерфейс формы', '<?php
namespace RAAS\\CMS;

use RAAS\\Attachment;
use RAAS\\Application;
use \\Mustache_Engine;

$notify = function (Feedback $Item, Material $Material = null) {
    $temp = array_values(array_filter(array_map(\'trim\', preg_split(\'/( |;|,)/\', $Item->parent->email))));
    $emails = $sms_emails = $sms_phones = array();
    foreach ($temp as $row) {
        if (($row[0] == \'[\') && ($row[strlen($row) - 1] == \']\')) {
            if (filter_var(substr($row, 1, -1), FILTER_VALIDATE_EMAIL)) {
                $sms_emails[] = substr($row, 1, -1);
            } elseif (preg_match(\'/(\\\\+)?\\\\d+/umi\', substr($row, 1, -1))) {
                $sms_phones[] = substr($row, 1, -1);
            }
        } else {
            $emails[] = $row;
        }
    }
    if ($Item->parent->Interface->id) {
        $template = $Item->parent->Interface->description;
    }

    ob_start();
    eval(\'?\' . \'>\' . $template);
    $message = ob_get_contents();
    ob_end_clean();

    ob_start();
    $SMS = true;
    eval(\'?\' . \'>\' . $template);
    $message_sms = ob_get_contents();
    ob_end_clean();

    $subject = date(DATETIMEFORMAT) . \' \' . sprintf(FEEDBACK_STANDARD_HEADER, $Item->parent->name, $Item->page->name);
    if ($emails) {
        Application::i()->sendmail($emails, $subject, $message, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\']);
    }
    if ($sms_emails) {
        Application::i()->sendmail($sms_emails, $subject, $message_sms, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\'], false);
    }
    if ($sms_phones) {
        $urlTemplate = Package::i()->registryGet(\'sms_gate\');
        $m = new Mustache_Engine();
        foreach ($sms_phones as $phone) {
            $url = $m->render($urlTemplate, array(\'PHONE\' => urlencode($phone), \'TEXT\' => urlencode($message_sms)));
            $result = file_get_contents($url);
        }
    }
};

$OUT = array();
$Form = new Form(isset($config[\'form\']) ? (int)$config[\'form\'] : 0);
if ($Form->id) {
    $localError = array();
    if (($Form->signature && isset($_POST[\'form_signature\']) && $_POST[\'form_signature\'] == md5(\'form\' . (int)$Form->id . (int)$Block->id)) || (!$Form->signature && ($_SERVER[\'REQUEST_METHOD\'] == \'POST\'))) {
        $Item = new Feedback();
        $Item->pid = (int)$Form->id;
        if ($Form->Material_Type->id) {
            $Material = new Material();
            $Material->pid = (int)$Form->Material_Type->id;
            $Material->vis = 0;
        }

        // Проверка полей на корректность
        foreach ($Form->fields as $row) {
            switch ($row->datatype) {
                case \'file\':
                case \'image\':
                    $val = isset($_FILES[$row->urn][\'tmp_name\']) ? $_FILES[$row->urn][\'tmp_name\'] : null;
                    if ($val && $row->multiple) {
                        $val = (array)$val;
                        $val = array_shift($val);
                    }
                    if (!isset($val) || !$row->isFilled($val)) {
                        if ($row->required && !$row->countValues()) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                        }
                    } elseif (!$row->multiple) {
                        if (!$row->validate($val)) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                        }
                    }
                    $allowedExtensions = preg_split(\'/\\\\W+/umis\', $row->source);
                    $allowedExtensions = array_map(\'mb_strtolower\', array_filter($allowedExtensions, \'trim\'));
                    if ($allowedExtensions) {
                        if ($row->multiple) {
                            foreach ((array)$_FILES[$row->urn][\'tmp_name\'] as $i => $val) {
                                if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'][$i])) {
                                    $ext = pathinfo(
                                        $_FILES[$row->urn][\'name\'][$i],
                                        PATHINFO_EXTENSION
                                    );
                                    $ext = mb_strtolower($ext);
                                    if (!in_array($ext, $allowedExtensions)) {
                                        $localError[$row->urn] = sprintf(
                                            INVALID_FILE_EXTENSION,
                                            implode(\', \', $allowedExtensions)
                                        );
                                        break;
                                    }
                                }
                            }
                        } else {
                            if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'])) {
                                $ext = pathinfo(
                                    $_FILES[$row->urn][\'name\'],
                                    PATHINFO_EXTENSION
                                );
                                $ext = mb_strtolower($ext);
                                if (!in_array($ext, $allowedExtensions)) {
                                    $localError[$row->urn] = sprintf(
                                        INVALID_FILE_EXTENSION,
                                        implode(\', \', $allowedExtensions)
                                    );
                                    break;
                                }
                            }
                        }
                    }
                    break;
                default:
                    $val = isset($_POST[$row->urn]) ? $_POST[$row->urn] : null;
                    if ($val && $row->multiple) {
                        $val = (array)$val;
                        $val = array_shift($val);
                    }
                    if (!isset($val) || !$row->isFilled($val)) {
                        if ($row->required) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                        }
                    } elseif (!$row->multiple) {
                        if (($row->datatype == \'password\') && ($_POST[$row->urn] != $_POST[$row->urn . \'@confirm\'])) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_PASSWORD_DOESNT_MATCH_CONFIRM, $row->name);
                        } elseif (!$row->validate($val)) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                        }
                    }
                    break;
            }
        }

        // Проверка на антиспам
        if ($Form->antispam && $Form->antispam_field_name) {
            switch ($Form->antispam) {
                case \'captcha\':
                    if (!isset($_POST[$Form->antispam_field_name], $_SESSION[\'captcha_keystring\']) || ($_POST[$Form->antispam_field_name] != $_SESSION[\'captcha_keystring\'])) {
                        $localError[$Form->antispam_field_name] = ERR_CAPTCHA_FIELD_INVALID;
                    }
                    break;
                case \'hidden\':
                    if (isset($_POST[$Form->antispam_field_name]) && $_POST[$Form->antispam_field_name]) {
                        $localError[$Form->antispam_field_name] = ERR_CAPTCHA_FIELD_INVALID;
                    }
                    break;
            }
        }

        if (!$localError) {
            if ((\\RAAS\\Controller_Frontend::i()->user instanceof User) && \\RAAS\\Controller_Frontend::i()->user->id) {
                $Item->uid = (int)Controller_Frontend::i()->user->id;
            } else {
                $Item->uid = 0;
            }
            // Для AJAX\'а
            $Referer = Page::importByURL($_SERVER[\'HTTP_REFERER\']);
            $RefererMaterialUrl = explode(\'/\', trim(parse_url($_SERVER[\'HTTP_REFERER\'], PHP_URL_PATH), \'/\'));
            $RefererMaterial = Material::importByURN($RefererMaterialUrl[count($RefererMaterialUrl) - 1]);
            $Item->page_id = (int)$Referer->id ?: (int)$Page->id;
            if ($RefererMaterial) {
                $Item->material_id = (int)$RefererMaterial->id;
            } elseif ($Page->Material->id) {
                $Item->material_id = (int)$Page->Material->id;
            }
            $Item->ip = (string)$_SERVER[\'REMOTE_ADDR\'];
            $Item->user_agent = (string)$_SERVER[\'HTTP_USER_AGENT\'];
            $Objects = array($Item);
            if ($Form->Material_Type->id) {
                if (!$Form->Material_Type->global_type) {
                    $Material->cats = array((int)$Referer->id ?: (int)$Page->id);
                }
                $Objects[] = $Material;
            }

            foreach ($Objects as $Object) {
                // Заполняем основные данные создаваемого материала
                if ($Object instanceof Material) {
                    if (isset($Item->fields[\'_name_\'])) {
                        $Object->name = $Item->fields[\'_name_\']->getValue();
                    } else {
                        $Object->name = $Form->Material_Type->name . \': \' . date(DATETIMEFORMAT);
                    }
                    if (isset($Item->fields[\'_description_\'])) {
                        $Object->description = $Item->fields[\'_description_\']->getValue();
                    }
                }
                $Object->commit();

                // Автоматически подставляем недостающие поля даты/времени у материала
                if ($Object instanceof Material) {
                    foreach ($Object->fields as $fname => $temp) {
                        if (!isset($Item->fields[$fname])) {
                            switch ($temp->datatype) {
                                case \'datetime\':
                                case \'datetime-local\':
                                    $temp->addValue(date(\'Y-m-d H:i:s\'));
                                    break;
                                case \'date\':
                                    $temp->addValue(date(\'Y-m-d\'));
                                    break;
                                case \'time\':
                                    $temp->addValue(date(\'H:i:s\'));
                                    break;
                            }
                        }
                    }
                }

                foreach ($Item->fields as $fname => $temp) {
                    if (isset($Object->fields[$fname])) {
                        $row = $Object->fields[$fname];
                        switch ($row->datatype) {
                            case \'file\':
                            case \'image\':
                                $row->deleteValues();
                                if ($row->multiple) {
                                    foreach ($_FILES[$row->urn][\'tmp_name\'] as $key => $val) {
                                        $row2 = array(
                                            \'vis\' => isset($_POST[$row->urn . \'@vis\'][$key]) ? (int)$_POST[$row->urn . \'@vis\'][$key] : 1,
                                            \'name\' => (string)$_POST[$row->urn . \'@name\'][$key],
                                            \'description\' => (string)$_POST[$row->urn . \'@description\'][$key],
                                            \'attachment\' => (int)$_POST[$row->urn . \'@attachment\'][$key]
                                        );
                                        if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'][$key]) && $row->validate($_FILES[$row->urn][\'tmp_name\'][$key])) {
                                            $att = new Attachment((int)$row2[\'attachment\']);
                                            $att->upload = $_FILES[$row->urn][\'tmp_name\'][$key];
                                            $att->filename = $_FILES[$row->urn][\'name\'][$key];
                                            $att->mime = $_FILES[$row->urn][\'type\'][$key];
                                            $att->parent = $Object;
                                            if ($row->datatype == \'image\') {
                                                $att->image = 1;
                                                if ($temp = (int)Package::i()->registryGet(\'maxsize\')) {
                                                    $att->maxWidth = $att->maxHeight = $temp;
                                                }
                                                if ($temp = (int)Package::i()->registryGet(\'tnsize\')) {
                                                    $att->tnsize = $temp;
                                                }
                                            }
                                            $att->copy = true;
                                            $att->commit();
                                            $row2[\'attachment\'] = (int)$att->id;
                                            $row->addValue(json_encode($row2));
                                        } elseif ($row2[\'attachment\']) {
                                            $row->addValue(json_encode($row2));
                                        }
                                        unset($att, $row2);
                                    }
                                } else {
                                    $row2 = array(
                                        \'vis\' => isset($_POST[$row->urn . \'@vis\']) ? (int)$_POST[$row->urn . \'@vis\'] : 1,
                                        \'name\' => (string)$_POST[$row->urn . \'@name\'],
                                        \'description\' => (string)$_POST[$row->urn . \'@description\'],
                                        \'attachment\' => (int)$_POST[$row->urn . \'@attachment\']
                                    );

                                    if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\']) && $row->validate($_FILES[$row->urn][\'tmp_name\'])) {
                                        $att = new Attachment((int)$row2[\'attachment\']);
                                        $att->upload = $_FILES[$row->urn][\'tmp_name\'];
                                        $att->filename = $_FILES[$row->urn][\'name\'];
                                        $att->mime = $_FILES[$row->urn][\'type\'];
                                        $att->parent = $Object;
                                        if ($row->datatype == \'image\') {
                                            $att->image = 1;
                                            if ($temp = (int)Package::i()->registryGet(\'maxsize\')) {
                                                $att->maxWidth = $att->maxHeight = $temp;
                                            }
                                            if ($temp = (int)Package::i()->registryGet(\'tnsize\')) {
                                                $att->tnsize = $temp;
                                            }
                                        }
                                        $att->copy = true;
                                        $att->commit();
                                        $row2[\'attachment\'] = (int)$att->id;
                                        $row->addValue(json_encode($row2));
                                    } elseif ($_POST[$row->urn . \'@attachment\']) {
                                        $row2[\'attachment\'] = (int)$_POST[$row->urn . \'@attachment\'];
                                        $row->addValue(json_encode($row2));
                                    }
                                    unset($att, $row2);
                                }
                                break;
                            default:
                                $row->deleteValues();
                                if (isset($_POST[$row->urn])) {
                                    foreach ((array)$_POST[$row->urn] as $val) {
                                        // 2019-01-22, AVS: закрываем XSS-уязвимость
                                        $row->addValue(strip_tags($val));
                                    }
                                }
                                break;
                        }
                        if (in_array($row->datatype, array(\'file\', \'image\'))) {
                            $row->clearLostAttachments();
                        }
                    }
                }

                // Заполняем данные пользователя в полях материала
                if ($Object instanceof Material) {
                    if (isset($Object->fields[\'ip\'])) {
                        $Object->fields[\'ip\']->deleteValues();
                        $Object->fields[\'ip\']->addValue((string)$_SERVER[\'REMOTE_ADDR\']);
                    }
                    if (isset($Object->fields[\'user_agent\'])) {
                        $Object->fields[\'user_agent\']->deleteValues();
                        $Object->fields[\'user_agent\']->addValue((string)$_SERVER[\'HTTP_USER_AGENT\']);
                    }
                }
            }
            if ($Form->email) {
                $notify($Item, $Form->Material_Type->id ? $Material : null);
            }
            if (!$Form->create_feedback) {
                Feedback::delete($Item);
            }
            $OUT[\'success\'][(int)$Block->id] = true;
        }
        $OUT[\'DATA\'] = $_POST;
    } else {
        $OUT[\'DATA\'] = array();
        foreach ($Form->fields as $key => $row) {
            if ($row->defval) {
                $OUT[\'DATA\'][$key] = $row->defval;
            }
        }
    }
    $OUT[\'localError\'] = $localError;
    $OUT[\'Item\'] = $Item;
    if ($Form->Material_Type->id) {
        $OUT[\'Material\'] = $Material;
    }
}
$OUT[\'Form\'] = $Form;

return $OUT;
', '1'),
('3', '1', '__raas_menu_interface', 'Стандартный интерфейс меню', '<?php
/**
 * Стандартный интерфейс меню
 * @param Block_Menu $Block Текущий блок
 * @param Page $Page Текущая страница
 */
namespace RAAS\\CMS;

$interface = new MenuInterface($Block, $Page, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER, $_FILES);
return $interface->process();
', '1'),
('4', '1', '__raas_search_interface', 'Стандартный интерфейс поиска', '<?php
/**
 * Стандартный интерфейс поиска
 * @param Block_Search $Block Текущий блок
 * @param Page $Page Текущая страница
 */
namespace RAAS\\CMS;

$interface = new SearchInterface(
    $Block,
    $Page,
    $_GET,
    $_POST,
    $_COOKIE,
    $_SESSION,
    $_SERVER,
    $_FILES
);
return $interface->process();
', '1'),
('5', '1', '__raas_form_notify', 'Стандартное уведомление формы', '<?php
/**
 * Стандартное уведомление о форме обратной связи
 * @param bool $SMS Уведомление отправляется по SMS
 * @param Feedback $Item Уведомление формы обратной связи
 * @param Material $Material Созданный материал
 */
namespace RAAS\\CMS;

/**
 * Получает представление поля для отправки по SMS
 * @param Form_Field $field Поле для получения представления
 * @return string
 */
$smsField = function (Form_Field $field) {
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $field->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'file\':
            case \'image\':
                $arr[$key] .= $val->filename;
                break;
            case \'htmlarea\':
                $arr[$key] = strip_tags($val);
                break;
            case \'material\':
                $arr[$key] = $val->name;
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = $val;
                }
                break;
        }
    }
    return $field->name . \': \' . implode(\', \', $arr) . \"\\n\";
};

/**
 * Получает представление поля для отправки по электронной почте
 * @param Form_Field $field Поле для получения представления
 * @return string
 */
$emailField = function (Form_Field $field) {
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $field->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'color\':
                $arr[$key] = \'<span style=\"display: inline-block; height: 16px; width: 16px; background-color: \' . htmlspecialchars($val) . \'\"></span>\';
                break;
            case \'email\':
                $arr[$key] .= \'<a href=\"mailto:\' . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'url\':
                $arr[$key] .= \'<a href=\"\' . (!preg_match(\'/^http(s)?:\\\\/\\\\//umi\', trim($val)) ? \'http://\' : \'\') . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'file\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">\' . htmlspecialchars($val->filename) . \'</a>\';
                break;
            case \'image\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">
                                 <img src=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->tnURL. \'\" alt=\"\' . htmlspecialchars($val->filename) . \'\" title=\"\' . htmlspecialchars($val->filename) . \'\" />
                               </a>\';
                break;
            case \'htmlarea\':
                $arr[$key] = \'<div>\' . $val . \'</div>\';
                break;
            case \'material\':
                $arr[$key] = \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . htmlspecialchars($val->url) . \'\">
                                \' . htmlspecialchars($val->name) . \'
                              </a>\';
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = nl2br(htmlspecialchars($val));
                }
                break;
        }
    }
    return \'<div>\' . htmlspecialchars($field->name) . \': \' . implode(\', \', $arr) . \'</div>\';
};
?>
<?php if ($SMS) {
    echo date(DATETIMEFORMAT) . \' \' . sprintf(FEEDBACK_STANDARD_HEADER, $Item->parent->name, $Item->page->name) . \"\\n\";
    foreach ($Item->fields as $field) {
        echo $smsField($field);
    }
} else { ?>
    <div>
      <?php
      foreach ($Item->fields as $field) {
          echo $emailField($field);
      }
      ?>
    </div>
    <?php if ($Material && $Material->id) {
        $url = \'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\';
        $url .= htmlspecialchars(
            $_SERVER[\'HTTP_HOST\'] .
            \'/admin/?p=cms&sub=main&action=edit_material&id=\' .
            (int)$Material->id .
            \'&pid=\'
        );
        if (in_array(
            $Item->page->id,
            array_map(
                function ($x) {
                    return $x->id;
                },
                (array)$Item->parent->Material_Type->affectedPages
            )
        )) {
            $url .= $Item->page->id;
        } else {
            $url .= $Item->parent->Material_Type->affectedPages[0]->id;
        }
        ?>
        <p>
          <a href=\"<?php echo $url?>\">
            <?php echo VIEW?>
          </a>
        </p>
    <?php } elseif ($Item->parent->create_feedback) { ?>
        <p><a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . \'/admin/?p=cms&sub=feedback&action=view&id=\' . $Item->id)?>\"><?php echo VIEW?></a></p>
    <?php } ?>
    <p>
      <small>
        <?php echo IP_ADDRESS?>: <?php echo htmlspecialchars($Item->ip)?><br />
        <?php echo USER_AGENT?>: <?php echo htmlspecialchars($Item->user_agent)?><br />
        <?php echo PAGE?>:
        <?php if ($Item->page->parents) { ?>
            <?php foreach ($Item->page->parents as $row) { ?>
                <a href=\"<?php echo htmlspecialchars($Item->domain . $row->url)?>\"><?php echo htmlspecialchars($row->name)?></a> /
            <?php } ?>
        <?php } ?>
        <a href=\"<?php echo htmlspecialchars($Item->domain . $Item->page->url)?>\"><?php echo htmlspecialchars($Item->page->name)?></a>
        <?php if ($Item->material->id) { ?>
            / <a href=\"<?php echo htmlspecialchars($Item->domain . $Item->material->url)?>\"><?php echo htmlspecialchars($Item->material->name)?></a>
        <?php } ?>
        <br />
        <?php echo FORM?>:
        <?php if ($Item->parent->create_feedback) { ?>
            <a href=\"<?php echo htmlspecialchars($Item->domain . \'/admin/?p=cms&sub=feedback&id=\' . $Item->parent->id)?>\"><?php echo htmlspecialchars($Item->parent->name)?></a>
        <?php } else { ?>
            <?php echo htmlspecialchars($Item->parent->name)?>
        <?php } ?>
      </small>
    </p>
<?php } ?>
', '1'),
('6', '1', '__raas_cache_interface', 'Стандартный интерфейс кэширования', '<?php
/**
 * Стандартный интерфейс кэширования
 * @param Block $Block Текущий блок
 * @param Page $Page Текущая страница
 * @param mixed $OUT Данные, полученные от интерфейса блока
 */
namespace RAAS\\CMS;

$interface = new CacheInterface($Block, $Page, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER, $_FILES, $OUT);
return $interface->process();
', '1'),
('7', '1', '__raas_watermark_interface', 'Стандартный интерфейс водяных знаков', '<?php
namespace RAAS\\CMS;

use SOME\\Graphics;

$processImage = function($filename, $watermarkFilename, $ratio = 0.5, $quality = 90)
{
    list($sourceImgWidth, $sourceImgHeight, $sourceImgType) = @getimagesize($filename);
    list($waterMarkImgWidth, $waterMarkImgHeight, $waterMarkImgType) = @getimagesize($watermarkFilename);
    $sourceInputFunction = Graphics::image_type_to_input_function($sourceImgType);
    $sourceOutputFunction = Graphics::image_type_to_output_function($sourceImgType);
    $waterMarkInputFunction = Graphics::image_type_to_input_function($waterMarkImgType);
    $sourceImg = $sourceInputFunction($filename);
    $waterMarkImg = $waterMarkInputFunction($watermarkFilename);

    $rate = $waterMarkImgWidth / $waterMarkImgHeight; // Коэфициент соотношения сторон
    $newWidth  = $waterMarkImgWidth; // Ширина участка на исходном изображении, куда будет наложен вотермарк
    $newHeight = $waterMarkImgHeight; // Высота участка на исходном изображении, куда будет наложен вотермарк
    if (($sourceImgWidth * $ratio) < $waterMarkImgWidth) {
        $newWidth = $sourceImgWidth * $ratio; // Ширина вотермарки
        $newHeight = $newWidth / $rate; // Высота вотермарки
    }
    $xSource = ($sourceImgWidth - $newWidth) / 2; // Отступ по оси Х
    $ySource = ($sourceImgHeight - $newHeight) / 2; // Отступ по оси Y

    imagecopyresampled($sourceImg, $waterMarkImg, $xSource, $ySource, 0, 0, $newWidth, $newHeight, $waterMarkImgWidth, $waterMarkImgHeight);
    if ($sourceOutputFunction == \'imagejpeg\') {
        $sourceOutputFunction($sourceImg, $filename, $quality);
    } else {
        $sourceOutputFunction($sourceImg, $filename);
    }
    return true;
};

$watermarkImage = \'files/cms/common/image/watermark.png\';
if (($t->datatype == \'image\') && is_file($watermarkImage)) {
    $files = array();
    if ($postProcess) {
        if ($addedAttachments && is_array($addedAttachments)) {
            foreach ($addedAttachments as $row) {
                if ($row->image) {
                    $files[] = $row->file;
                }
            }
        }
    } else {
        $files = (array)$_FILES[$Field->name][\'tmp_name\'];
        $files = array_filter($files, \'is_file\');
        $files = array_values($files);
    }
    foreach ($files as $file) {
        $processImage($file, $watermarkImage);
    }
}
', '1'),
('8', '0', 'dummy', '<Пустой>', '', '0'),
('9', '2', 'banners', 'Баннеры', '<?php
namespace RAAS\\CMS;

if ($Set) {
    ?>
    <div class=\"banners\">
      <div id=\"banners<?php echo (int)$Block->id?>\" class=\"carousel slide banners__inner\" data-role=\"slider\" data-slider-carousel=\"bootstrap\" data-slider-autoscroll=\"true\">
        <?php if (count($Set) > 1) { ?>
            <ul class=\"carousel-indicators banners__nav\">
              <?php for ($i = 0; $i < count($Set); $i++) { ?>
                  <li data-target=\"#banners<?php echo (int)$Block->id?>\" data-slide-to=\"<?php echo (int)$i?>\" class=\"banners__nav-item <?php echo !$i ? \'active\' : \'\'?>\"></li>
              <?php } ?>
            </ul>
        <?php } ?>
        <div class=\"carousel-inner banners__list banners-list\">
          <?php for ($i = 0; $i < count($Set); $i++) { $row = $Set[$i]; ?>
              <div class=\"item <?php echo !$i ? \'active\' : \'\'?> banners-list__item\">
                <div class=\"banners-item\">
                  <a class=\"banners-item__image\" <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>
                    <img src=\"/<?php echo Package::tn($row->image->fileURL, 1920, 654)?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />
                  </a>
                  <?php if ($row->name[0] != \'.\') { ?>
                      <div class=\"banners-item__text\">
                        <div class=\"banners-item__title\">
                          <?php echo htmlspecialchars($row->name)?>
                        </div>
                        <div class=\"banners-item__description\">
                          <?php echo $row->description?>
                        </div>
                      </div>
                  <?php } ?>
                </div>
              </div>
          <?php } ?>
        </div>
        <?php if (count($Set) > 1) { ?>
            <a href=\"#banners<?php echo (int)$Block->id?>\" data-slide=\"prev\" class=\"left carousel-control banners__arrow banners__arrow_left\"></a>
            <a href=\"#banners<?php echo (int)$Block->id?>\" data-slide=\"next\" class=\"right carousel-control banners__arrow banners__arrow_right\"></a>
        <?php } ?>
      </div>
    </div>
<?php } ?>
', '0'),
('10', '2', 'feedback', 'Обратная связь', '<?php
namespace RAAS\\CMS;

if ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {
    $result = array();
    if ($success[(int)$Block->id]) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else { ?>
    <div class=\"feedback\">
      <form class=\"form-horizontal\" data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">
        <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>
        <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>
          <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>
          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
            <ul>
              <?php foreach ((array)$localError as $key => $val) { ?>
                  <li><?php echo htmlspecialchars($val)?></li>
              <?php } ?>
            </ul>
          </div>
        </div>

        <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>
          <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>
          <?php if ($Form->signature) { ?>
                <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />
          <?php } ?>
          <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>
                <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />
          <?php } ?>
          <?php foreach ($Form->fields as $row) { ?>
              <?php if ($row->urn == \'agree\') { ?>
                  <div class=\"form-group\">
                    <div class=\"col-sm-9 col-sm-offset-3 col-md-offset-2\">
                      <label class=\"checkbox\">
                        <?php $getField($row, $DATA);?>
                        <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>
                      </label>
                    </div>
                  </div>
              <?php } else { ?>
                  <div class=\"form-group\">
                    <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>
                    <div class=\"col-sm-9 col-md-4\">
                      <?php $getField($row, $DATA);?>
                    </div>
                  </div>
              <?php } ?>
          <?php } ?>
          <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>
              <div class=\"form-group\">
                <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo CAPTCHA?></label>
                <div class=\"col-sm-9 col-md-4\">
                  <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />
                  <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />
                </div>
              </div>
          <?php } ?>
          <div class=\"form-group\">
            <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\">
              <button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button>
            </div>
          </div>
        </div>
      </form>
    </div>
<?php } ?>
', '0'),
('11', '2', 'feedback_modal', 'Обратная связь (всплывающее окно)', '<?php
namespace RAAS\\CMS;

if ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {
    $result = array();
    if ($success[(int)$Block->id]) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else { ?>
    <!--noindex-->
    <div class=\"feedback-modal\">
      <div id=\"<?php echo htmlspecialchars($Widget->urn)?>\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\" class=\"modal fade\">
        <div class=\"modal-dialog\">
          <div class=\"modal-content\">
            <form data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">
              <div class=\"modal-header\">
                <button type=\"button\" data-dismiss=\"modal\" aria-hidden=\"true\" class=\"close\">×</button>
                <div class=\"h4 modal-title\"><?php echo htmlspecialchars($Block->name)?></div>
              </div>
              <div class=\"modal-body\">
                <div class=\"form-horizontal\">
                  <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>
                  <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>
                    <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>
                    <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
                      <ul>
                        <?php foreach ((array)$localError as $key => $val) { ?>
                            <li><?php echo htmlspecialchars($val)?></li>
                        <?php } ?>
                      </ul>
                    </div>
                  </div>

                  <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>
                    <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>
                    <?php if ($Form->signature) { ?>
                          <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />
                    <?php } ?>
                    <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>
                          <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />
                    <?php } ?>
                    <?php foreach ($Form->fields as $row) { ?>
                        <?php if ($row->urn == \'agree\') { ?>
                            <div class=\"form-group\">
                              <div class=\"col-sm-9 col-sm-offset-3\">
                                <label class=\"checkbox\">
                                  <?php $getField($row, $DATA);?>
                                  <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>
                                </label>
                              </div>
                            </div>
                        <?php } else { ?>
                            <div class=\"form-group\">
                              <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?>:</label>
                              <div class=\"col-sm-9\">
                                <?php $getField($row, $DATA); ?>
                              </div>
                            </div>
                        <?php } ?>
                    <?php } ?>
                    <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>
                        <div class=\"form-group\">
                          <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>
                          <div class=\"col-sm-9\">
                            <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />
                            <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />
                          </div>
                        </div>
                    <?php } ?>
                    <div class=\"form-group text-right\">
                      <div class=\"col-sm-12\">
                        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><?php echo CANCEL?></button>
                        <button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!--/noindex-->
<?php } ?>
', '0'),
('12', '2', 'head', '<head>', '<?php
namespace RAAS\\CMS;

use SOME\\HTTP;

?>
<title><?php echo htmlspecialchars($Page->meta_title ? $Page->meta_title : $Page->name)?></title>
<?php if ($Page->meta_keywords) { ?>
    <meta name=\"keywords\" content=\"<?php echo htmlspecialchars($Page->meta_keywords)?>\" />
<?php } ?>
<?php if ($Page->meta_description) { ?>
    <meta name=\"description\" content=\"<?php echo htmlspecialchars($Page->meta_description)?>\" />
<?php } ?>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
<meta name=\"viewport\" content=\"width=device-width\">
<link rel=\'stylesheet\' href=\'/css/application.css\'>
<link rel=\'stylesheet\' href=\'/css/animate.css\'>
<link rel=\'stylesheet\' href=\'/css/style.css\'>
<link rel=\'stylesheet\' href=\'/custom.css\'>
<!-- Core-->
<script src=\"/js/application.js\"></script>
<script src=\"/js/wow.min.js\"></script>
<script>new WOW().init();</script>
<script src=\"/js/jquery.jcarousel.min.js\"></script>
<script src=\"/js/sliders.js\"></script>
<script src=\"/js/menu-top.js\"></script>
<script src=\"/js/setrawcookie.js\"></script>
<script src=\"/js/setcookie.js\"></script>
<?php if (class_exists(\'RAAS\\CMS\\Shop\\Module\')) { ?>
    <script src=\"/js/cookiecart.js\"></script>
    <script src=\"/js/ajaxcart.js\"></script>
    <script src=\"/js/ajaxcatalog.js\"></script>
    <script src=\"/js/modal.js\"></script>
    <script src=\"/js/catalog.js\"></script>
<?php } ?>
<script src=\"/js/script.js\"></script>
<?php if (is_file(\'favicon.ico\')) { ?>
    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"/favicon.ico\" />
<?php } ?>
<?php if (HTTP::queryString()) { ?>
    <link rel=\"canonical\" href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . parse_url($_SERVER[\'REQUEST_URI\'], PHP_URL_PATH))?>\">
<?php } ?>
<?php if ($Page->noindex || $Page->Material->noindex) { ?>
    <meta name=\"robots\" content=\"noindex,nofollow\" />
<?php } ?>
', '0'),
('13', '2', 'order_call_modal', 'Заказать звонок (всплывающее окно)', '<?php
namespace RAAS\\CMS;

if ($_POST[\'AJAX\'] && ($Item instanceof Feedback)) {
    $result = array();
    if ($success[(int)$Block->id]) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else { ?>
    <!--noindex-->
    <div class=\"order-call-modal\">
      <div id=\"<?php echo htmlspecialchars($Widget->urn)?>\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\" class=\"modal fade\">
        <div class=\"modal-dialog\">
          <div class=\"modal-content\">
            <form data-role=\"raas-ajaxform\" action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">
              <div class=\"modal-header\">
                <button type=\"button\" data-dismiss=\"modal\" aria-hidden=\"true\" class=\"close\">×</button>
                <div class=\"h4 modal-title\"><?php echo ORDER_CALL?></div>
              </div>
              <div class=\"modal-body\">
                <div class=\"form-horizontal\">
                  <?php include Package::i()->resourcesDir . \'/form.inc.php\'?>
                  <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>
                    <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>
                    <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
                      <ul>
                        <?php foreach ((array)$localError as $key => $val) { ?>
                            <li><?php echo htmlspecialchars($val)?></li>
                        <?php } ?>
                      </ul>
                    </div>
                  </div>

                  <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>
                    <?php if ($Form->signature) { ?>
                          <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />
                    <?php } ?>
                    <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>
                          <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />
                    <?php } ?>
                    <?php $row = $Form->fields[\'phone_call\']; $row->placeholder = $row->name; ?>
                    <div class=\"form-group\">
                      <div class=\"col-xs-12 order-call__phone\">
                        <?php $getField($row, $DATA)?>
                        <button class=\"btn btn-primary\" type=\"submit\"><span class=\"fa fa-phone\"></span></button>
                      </div>
                    </div>
                    <?php $row = $Form->fields[\'agree\'] ?>
                    <div class=\"form-group\">
                      <div class=\"col-xs-12\">
                        <label class=\"checkbox\">
                          <?php $getField($row, $DATA);?>
                          <a href=\"/privacy/\" target=\"_blank\"><?php echo htmlspecialchars($row->name)?></a>
                        </label>
                      </div>
                    </div>
                    <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>
                        <div class=\"form-group\">
                          <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>
                          <div class=\"col-sm-9\">
                            <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />
                            <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />
                          </div>
                        </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!--/noindex-->
<?php } ?>
', '0'),
('14', '2', 'sitemap_xml', 'sitemap.xml', '<?php
namespace RAAS\\CMS;

$getChangeFreq = function($row) {
    $text = \'\';
    if ($row->changefreq) {
        $text .= \'<changefreq>\' . htmlspecialchars($row->changefreq) . \'</changefreq>\';
    } else {
        $d0 = max(0, strtotime($row->post_date));
        $s = ((time() - $d0) / $row->modify_counter);
        $text .= \'<changefreq>\';
        if ($s < 1800) {
            $text .= \'always\';
        } elseif ($s < 2 * 3600) {
            $text .= \'hourly\';
        } elseif ($s < 2 * 86400) {
            $text .= \'daily\';
        } elseif ($s < 2 * 7 * 86400) {
            $text .= \'weekly\';
        } elseif ($s < 2 * 30 * 86400) {
            $text .= \'monthly\';
        } elseif ($s < 2 * 365 * 86400) {
            $text .= \'yearly\';
        } else {
            $text .= \'never\';
        }
        $text .= \'</changefreq>\';
    }
    return $text;
};

$showItem = function ($row) use (&$getChangeFreq) {
    $text = \' <url>
                <loc>http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . htmlspecialchars($_SERVER[\'HTTP_HOST\'] . $row->url) . \'</loc>\';
    if (strtotime($row->last_modified) > 0) {
        $text .= \'<lastmod>\' . date(DATE_W3C, strtotime($row->last_modified)) . \'</lastmod>\';
    }
    $text .= $getChangeFreq($row);
    $text .= \'<priority>\' . str_replace(\',\', \'.\', (float)$row->sitemaps_priority) . \'</priority>\';
    $text .= \'</url>\';
    return $text;
};

$showMenu = function(Page $page) use (&$showMenu, &$getChangeFreq, &$showItem) {
    $children = $page->visChildren;
    for ($i = 0; $i < count($children); $i++) {
        $row = $children[$i];
        if (!$row->response_code) {
            $text .= $showItem($row);
            foreach ($row->affectedMaterials as $row2) {
                if ($row2->parent->id == $row->id) {
                    $text .= $showItem($row2);
                }
            }
            $text .= $showMenu($row);
        }
    }
    return $text;
};

header(\'Content-Type: application/xml; charset=UTF-8\');
echo \'<?xml version=\"1.0\" encoding=\"UTF-8\"?\' . \'>
<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">
  \' . $showItem($Page->Domain) . \'
  \' . $showMenu($Page->Domain) . \'
</urlset>\';
', '0'),
('15', '2', 'logo', 'Логотип', '<?php
namespace RAAS\\CMS;

$text = $Block->description;
$text = str_replace(\' href=\"\' . htmlspecialchars($Page->initialURL) . \'\"\', \'\', $text);
echo $text;
', '0'),
('16', '2', 'features_main', 'Наши преимущества на главной', '<?php
namespace RAAS\\CMS;

use \\SOME\\Text;

$translateAddresses = true;

if ($Set) {
    ?>
    <div class=\"features-main\">
      <div class=\"features-main__title h2\"><?php echo htmlspecialchars($Block->name)?></div>
      <div class=\"features-main__list\">
        <div class=\"features-main-list\">
          <?php foreach ($Set as $row) { ?>
              <div class=\"features-main-list__item\">
                <div class=\"features-main-item\">
                  <?php if ($row->image->id || $row->icon) { ?>
                      <div class=\"features-main-item__image\">
                        <?php if ($row->image->id) { ?>
                            <img src=\"/<?php echo htmlspecialchars($row->image->fileURL)?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />
                        <?php } elseif ($row->icon) { ?>
                            <span class=\"fa fa-<?php echo htmlspecialchars($row->icon)?>\"></span>
                        <?php } ?>
                      </div>
                  <?php } ?>
                  <div class=\"features-main-item__text\">
                    <div class=\"features-main-item__title\">
                      <?php echo htmlspecialchars($row->name)?>
                    </div>
                    <div class=\"features-main-item__description\">
                      <?php echo $row->description?>
                    </div>
                  </div>
                </div>
              </div>
          <?php } ?>
        </div>
      </div>
    </div>
<?php } ?>
', '0'),
('17', '2', 'robots', 'robots.txt', '<?php
namespace RAAS\\CMS;

header(\'Content-Type: text/plain; charset=UTF-8\');
echo $Block->description;
', '0'),
('18', '2', 'custom_css', 'custom.css', '<?php
namespace RAAS\\CMS;

header(\'Content-Type: text/css; charset=UTF-8\');
echo $Block->description;
', '0'),
('19', '2', 'menu_content', 'Карта сайта', '<?php
namespace RAAS\\CMS;

use SOME\\HTTP;

$showMenu = function($node, Page $current) use (&$showMenu) {
    static $level = 0;
    if ($node instanceof Menu) {
        $children = $node->visSubMenu;
    } else {
        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();
    }
    for ($i = 0; $i < count($children); $i++) {
        $row = $children[$i];
        $level++;
        $ch = $showMenu($row, $current);
        $level--;
        if ($node instanceof Menu) {
            $url = $row->url;
            $name = $row->name;
        } else {
            $url = $row[\'url\'];
            $name = $row[\'name\'];
        }
        $active = ($url == HTTP::queryString(\'\', true));
        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;
        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {
            $semiactive = true;
        }
        $liClasses = array(
            \'menu-content__item\',
            \'menu-content__item_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-content__item_level_\' . $level
        );
        $aClasses = array(
            \'menu-content__link\',
            \'menu-content__link_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-content__link_level_\' . $level
        );
        if ($active) {
            $liClasses[] = \'menu-content__item_active\';
            $aClasses[] = \'menu-content__link_active\';
        } elseif ($semiactive) {
            $liClasses[] = \'menu-content__item_semiactive\';
            $aClasses[] = \'menu-content__link_semiactive\';
        }
        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'
              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'
              .     $ch
              .  \'</li>\';
    }
    $ulClasses = array(
        \'menu-content__list\',
        \'menu-content__list_\' . (!$level ? \'main\' : \'inner\'),
        \'menu-content__list_level_\' . $level
    );
    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;
};

echo \'<nav class=\"menu-content\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';
', '0'),
('20', '2', 'menu_top', 'Верхнее меню', '<?php
namespace RAAS\\CMS;

use SOME\\HTTP;

$showMenu = function($node, Page $current) use (&$showMenu) {
    static $level = 0;
    if ($node instanceof Menu) {
        $children = $node->visSubMenu;
    } else {
        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();
    }
    for ($i = 0; $i < count($children); $i++) {
        $row = $children[$i];
        $level++;
        $ch = $showMenu($row, $current);
        $level--;
        if ($node instanceof Menu) {
            $url = $row->url;
            $name = $row->name;
        } else {
            $url = $row[\'url\'];
            $name = $row[\'name\'];
        }
        $active = ($url == HTTP::queryString(\'\', true));
        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;
        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {
            $semiactive = true;
        }
        $liClasses = array(
            \'menu-top__item\',
            \'menu-top__item_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-top__item_level_\' . $level
        );
        $aClasses = array(
            \'menu-top__link\',
            \'menu-top__link_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-top__link_level_\' . $level
        );
        if ($active) {
            $liClasses[] = \'menu-top__item_active\';
            $aClasses[] = \'menu-top__link_active\';
        } elseif ($semiactive) {
            $liClasses[] = \'menu-top__item_semiactive\';
            $aClasses[] = \'menu-top__link_semiactive\';
        }
        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'
              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'
              .     $ch
              .  \'</li>\';
    }
    $ulClasses = array(
        \'menu-top__list\',
        \'menu-top__list_\' . (!$level ? \'main\' : \'inner\'),
        \'menu-top__list_level_\' . $level
    );
    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;
};

echo \'<nav class=\"menu-top\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';
', '0'),
('21', '2', 'menu_bottom', 'Нижнее меню', '<?php
namespace RAAS\\CMS;

use SOME\\HTTP;

$showMenu = function($node, Page $current) use (&$showMenu) {
    static $level = 0;
    if ($node instanceof Menu) {
        $children = $node->visSubMenu;
    } else {
        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();
    }
    for ($i = 0; $i < count($children); $i++) {
        $row = $children[$i];
        $level++;
        $ch = $showMenu($row, $current);
        $level--;
        if ($node instanceof Menu) {
            $url = $row->url;
            $name = $row->name;
        } else {
            $url = $row[\'url\'];
            $name = $row[\'name\'];
        }
        $active = ($url == HTTP::queryString(\'\', true));
        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;
        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {
            $semiactive = true;
        }
        $liClasses = array(
            \'menu-bottom__item\',
            \'menu-bottom__item_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-bottom__item_level_\' . $level
        );
        $aClasses = array(
            \'menu-bottom__link\',
            \'menu-bottom__link_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-bottom__link_level_\' . $level
        );
        if ($active) {
            $liClasses[] = \'menu-bottom__item_active\';
            $aClasses[] = \'menu-bottom__link_active\';
        } elseif ($semiactive) {
            $liClasses[] = \'menu-bottom__item_semiactive\';
            $aClasses[] = \'menu-bottom__link_semiactive\';
        }
        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'
              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'
              .     $ch
              .  \'</li>\';
    }
    $ulClasses = array(
        \'menu-bottom__list\',
        \'menu-bottom__list_\' . (!$level ? \'main\' : \'inner\'),
        \'menu-bottom__list_level_\' . $level
    );
    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;
};

echo \'<nav class=\"menu-bottom\">\' . $showMenu($menuArr ?: $Item, $Page) . \'</nav>\';
', '0'),
('22', '2', 'news', 'Новости', '<?php
namespace RAAS\\CMS;

use \\SOME\\Text;
use \\SOME\\HTTP;

if ($Item) {
    ?>
    <div class=\"news\">
      <div class=\"news-article\">
        <?php if (($t = strtotime($Item->date)) > 0) { ?>
            <div class=\"news-article__date\"><?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?></div>
        <?php } ?>
        <?php if ($Item->visImages) { ?>
            <div class=\"news-article__image\">
              <a href=\"/<?php echo $Item->visImages[0]->fileURL?>\" data-lightbox-gallery=\"g\">
                <img src=\"/<?php echo $Item->visImages[0]->tnURL?>\" alt=\"<?php echo htmlspecialchars($Item->visImages[0]->name ?: $row->name)?>\" /></a>
            </div>
        <?php } ?>
        <div class=\"news-article__text\">
          <div class=\"news-article__description\">
            <?php echo $Item->description?>
          </div>
        </div>
        <?php if (count($Item->visImages) > 1) { ?>
            <div class=\"news-article__images\">
              <div class=\"h2 news-article__images-title\">
                Фотографии
              </div>
              <div class=\"news-article__images-inner\">
                <?php for ($i = 1; $i < count($Item->visImages); $i++) { $row = $Item->visImages[$i]; ?>
                    <div class=\"news-article__additional-image-container\">
                      <a href=\"/<?php echo htmlspecialchars($row->fileURL)?>\" class=\"news-article__additional-image\" data-lightbox-gallery=\"g\">
                        <img src=\"/<?php echo htmlspecialchars($row->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->name)?>\" /></a>
                    </div>
                <?php } ?>
              </div>
            </div>
        <?php } ?>
      </div>
    </div>
<?php } elseif ($Set) { ?>
    <div class=\"news\">
      <div class=\"news__list\">
        <div class=\"news-list\">
          <?php foreach ($Set as $row) { ?>
              <div class=\"news-list__item\">
                <div class=\"news-item\">
                  <div class=\"news-item__image\">
                    <a<?php echo ($Block->nat ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\') . (!$row->visImages ? \' class=\"no-image\"\' : \'\')?>>
                      <?php if ($row->visImages) { ?>
                          <img src=\"/<?php echo htmlspecialchars($row->visImages[0]->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />
                      <?php } ?>
                    </a>
                  </div>
                  <div class=\"news-item__text\">
                    <div class=\"news-item__title\">
                      <a<?php echo $Block->nat ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>
                        <?php echo htmlspecialchars($row->name)?>
                      </a>
                    </div>
                    <?php if (($t = strtotime($row->date)) > 0) { ?>
                        <div class=\"news-item__date\">
                          <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                        </div>
                    <?php } ?>
                    <div class=\"news-item__description\">
                      <?php echo htmlspecialchars($row->brief ?: Text::cuttext(html_entity_decode(strip_tags($row->description), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\'))?>
                    </div>
                    <?php if ($Block->nat) { ?>
                        <div class=\"news-item__more\">
                          <a href=\"<?php echo htmlspecialchars($row->url)?>\">
                            <?php echo SHOW_MORE?>
                          </a>
                        </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
          <?php } ?>
        </div>
      </div>
    </div>
    <?php include Package::i()->resourcesDir . \'/pages.inc.php\'?>
    <?php if ($Pages->pages > 1) { ?>
        <ul class=\"pagination pull-right\">
          <?php
          echo $outputNav(
              $Pages,
              array(
                  \'pattern\' => \'<li><a href=\"\' . HTTP::queryString(\'page={link}\') . \'\">{text}</a></li>\',
                  \'pattern_active\' => \'<li class=\"active\"><a>{text}</a></li>\',
                  \'ellipse\' => \'<li class=\"disabled\"><a>...</a></li>\'
              )
          );
          ?>
        </ul>
    <?php } ?>
<?php } ?>
', '0'),
('23', '2', 'news_main', 'Новости на главной', '<?php
namespace RAAS\\CMS;

use \\SOME\\Text;

$translateAddresses = true;

if ($Set) {
    ?>
    <div class=\"news-main left-block\">
      <div class=\"news-main__title left-block__title\"><a href=\"/news/\">Новости</a></div>
      <div class=\"news-main__list left-block__inner\">
        <div class=\"news-main-list\">
          <?php foreach ($Set as $row) { ?>
              <div class=\"news-main-list__item\">
                <div class=\"news-main-item\">
                  <div class=\"news-main-item__image\">
                    <a<?php echo ($translateAddresses ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\') . (!$row->visImages ? \' class=\"no-image\"\' : \'\')?>>
                      <?php if ($row->visImages) { ?>
                          <img src=\"/<?php echo Package::tn($row->visImages[0]->fileURL, 1920, 654)?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />
                      <?php } ?>
                    </a>
                  </div>
                  <div class=\"news-main-item__text\">
                    <div class=\"news-main-item__title\">
                      <a<?php echo $translateAddresses ? \' href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>
                        <?php echo htmlspecialchars($row->name)?>
                      </a>
                    </div>
                    <?php if (($t = strtotime($row->date)) > 0) { ?>
                        <div class=\"news-main-item__date\">
                          <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                        </div>
                    <?php } ?>
                    <div class=\"news-main-item__description\">
                      <?php echo htmlspecialchars($row->brief ?: Text::cuttext(html_entity_decode(strip_tags($row->description), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\'))?>
                    </div>
                    <?php if ($translateAddresses) { ?>
                        <div class=\"news-main-item__more\">
                          <a href=\"<?php echo htmlspecialchars($row->url)?>\">
                            <?php echo SHOW_MORE?>
                          </a>
                        </div>
                    <?php } ?>
                  </div>
                </div>
              </div>
          <?php } ?>
        </div>
      </div>
    </div>
<?php } ?>
', '0'),
('24', '1', '__raas_shop_cart_interface', 'Стандартный интерфейс корзины', '<?php
namespace RAAS\\CMS\\Shop;

use \\RAAS\\CMS\\Material;
use \\RAAS\\Redirector;
use \\RAAS\\CMS\\DATETIMEFORMAT;
use \\RAAS\\CMS\\Material_Field;
use \\RAAS\\CMS\\Package;
use \\Mustache_Engine;
use RAAS\\Attachment;

$convertMeta = function ($x) {
    return $x;
};

$notify = function (Order $Item) {
    $temp = array_values(array_filter(array_map(\'trim\', preg_split(\'/( |;|,)/\', $Item->parent->Form->email))));
    $emails = $userEmails = $sms_emails = $sms_phones = array();
    foreach ($temp as $row) {
        if (($row[0] == \'[\') && ($row[strlen($row) - 1] == \']\')) {
            if (filter_var(substr($row, 1, -1), FILTER_VALIDATE_EMAIL)) {
                $sms_emails[] = substr($row, 1, -1);
            } elseif (preg_match(\'/(\\\\+)?\\\\d+/umi\', substr($row, 1, -1))) {
                $sms_phones[] = substr($row, 1, -1);
            }
        } else {
            $emails[] = $row;
        }
    }
    foreach ($Item->fields as $key => $val) {
        if ((($val->datatype == \'email\') || ($key == \'email\')) && $Item->$key) {
            $userEmails = array_merge($userEmails, array_values(array_filter(array_map(\'trim\', preg_split(\'/(;|,)/\', $Item->$key)))));
        }
    }
    if ($Item->parent->Form->Interface->id) {
        $template = $Item->parent->Form->Interface->description;
    } else {
        $template = $Item->parent->Form->description;
    }

    ob_start();
    $forUser = false;
    eval(\'?\' . \'>\' . $template);
    $message = ob_get_contents();
    ob_end_clean();

    ob_start();
    $forUser = true;
    eval(\'?\' . \'>\' . $template);
    $userMessage = ob_get_contents();
    ob_end_clean();

    ob_start();
    $SMS = true;
    eval(\'?\' . \'>\' . $template);
    $message_sms = ob_get_contents();
    ob_end_clean();


    $subject = date(DATETIMEFORMAT) . \' \' . sprintf(ORDER_STANDARD_HEADER, $Item->parent->name, $Item->page->name);
    $userSubject = date(DATETIMEFORMAT) . \' \' . sprintf(ORDER_STANDARD_HEADER_USER, $Item->id, $_SERVER[\'HTTP_HOST\']);
    if ($emails) {
        \\RAAS\\Application::i()->sendmail($emails, $subject, $message, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\']);
    }
    if ($userEmails) {
        \\RAAS\\Application::i()->sendmail($userEmails, $userSubject, $userMessage, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\']);
    }
    if ($sms_emails) {
        \\RAAS\\Application::i()->sendmail($sms_emails, $subject, $message_sms, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\'], false);
    }
    if ($sms_phones) {
        $urlTemplate = Package::i()->registryGet(\'sms_gate\');
        $m = new Mustache_Engine();
        foreach ($sms_phones as $phone) {
            $url = $m->render($urlTemplate, array(\'PHONE\' => urlencode($phone), \'TEXT\' => urlencode($message_sms)));
            $result = file_get_contents($url);
        }
    }
};

$OUT = array();
$Cart_Type = new Cart_Type((int)$config[\'cart_type\']);
$Cart = new Cart($Cart_Type, \\RAAS\\Controller_Frontend::i()->user);
switch (isset($_GET[\'action\']) ? $_GET[\'action\'] : \'\') {
    case \'set\':
        $Item = new Material((int)(isset($_GET[\'id\']) ? $_GET[\'id\'] : \'\'));
        $amount = isset($_GET[\'amount\']) ? $_GET[\'amount\'] : 0;
        $meta = isset($_GET[\'meta\']) ? $_GET[\'meta\'] : \'\';
        if ($Item->id) {
            $Cart->set($Item, $amount, $meta);
        }
        new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'action=&id=&meta=&amount=\'));
        break;
    case \'add\':
        $Item = new Material((int)(isset($_GET[\'id\']) ? $_GET[\'id\'] : \'\'));
        $amount = isset($_GET[\'amount\']) ? $_GET[\'amount\'] : 1;
        $meta = isset($_GET[\'meta\']) ? $_GET[\'meta\'] : \'\';
        if ($Item->id && $amount) {
            $Cart->add($Item, $amount, $meta);
        }
        new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'action=&id=&meta=&amount=\'));
        break;
    case \'reduce\':
        $Item = new Material((int)(isset($_GET[\'id\']) ? $_GET[\'id\'] : \'\'));
        $amount = isset($_GET[\'amount\']) ? $_GET[\'amount\'] : 1;
        $meta = isset($_GET[\'meta\']) ? $_GET[\'meta\'] : \'\';
        if ($Item->id && $amount) {
            $Cart->reduce($Item, $amount, $meta);
        }
        new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'action=&id=&meta=&amount=\'));
        break;
    case \'delete\':
        $Item = new Material((int)(isset($_GET[\'id\']) ? $_GET[\'id\'] : \'\'));
        $meta = isset($_GET[\'meta\']) ? $_GET[\'meta\'] : \'\';
        if ($Item->id) {
            $Cart->set($Item, 0, $meta);
        }
        new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'action=&id=&meta=&amount=\'));
        break;
    case \'clear\':
        $Cart->clear();
        new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'action=&id=&meta=&amount=\'));
        break;
    default:
        $Form = $Cart_Type->Form;
        if (isset($_POST[\'amount\'])) {
            foreach ($_POST[\'amount\'] as $key => $val) {
                list($id, $meta) = explode(\'_\', $key);
                $Item = new Material($id);
                $Cart->set($Item, (int)$val, $meta);
            }
        }
        if ($Form->id && $Cart->items) {
            $localError = array();
            if (($Form->signature && isset($_POST[\'form_signature\']) && $_POST[\'form_signature\'] == md5(\'form\' . (int)$Form->id . (int)$Block->id)) || (!$Form->signature && ($_SERVER[\'REQUEST_METHOD\'] == \'POST\'))) {
                $Item = new Order();
                $Item->pid = (int)$Cart_Type->id;
                foreach ($Form->fields as $row) {
                    switch ($row->datatype) {
                        case \'file\':
                        case \'image\':
                            if (!isset($_FILES[$row->urn][\'tmp_name\']) || !$row->isFilled($_FILES[$row->urn][\'tmp_name\'])) {
                                if ($row->required && !$row->countValues()) {
                                    $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                                }
                            } elseif (isset($_FILES[$row->urn][\'tmp_name\']) && $row->isFilled($_FILES[$row->urn][\'tmp_name\'])) {
                                if (!$row->validate($_FILES[$row->urn][\'tmp_name\'])) {
                                    $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                                }
                            }
                            break;
                        default:
                            if (!isset($_POST[$row->urn]) || !$row->isFilled($_POST[$row->urn])) {
                                if ($row->required) {
                                    $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                                }
                            } elseif (isset($_POST[$row->urn]) && $row->isFilled($_POST[$row->urn])) {
                                if (($row->datatype == \'password\') && ($_POST[$row->urn] != $_POST[$row->urn . \'@confirm\'])) {
                                    $localError[$row->urn] = sprintf(ERR_CUSTOM_PASSWORD_DOESNT_MATCH_CONFIRM, $row->name);
                                } elseif (!$row->validate($_POST[$row->urn])) {
                                    $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                                }
                            }
                            break;
                    }
                }
                if ($Form->antispam && $Form->antispam_field_name) {
                    switch ($Form->antispam) {
                        case \'captcha\':
                            if (!isset($_POST[$Form->antispam_field_name], $_SESSION[\'captcha_keystring\']) || ($_POST[$Form->antispam_field_name] != $_SESSION[\'captcha_keystring\'])) {
                                $localError[$row->urn] = ERR_CAPTCHA_FIELD_INVALID;
                            }
                            break;
                        case \'hidden\':
                            if (isset($_POST[$Form->antispam_field_name]) && $_POST[$Form->antispam_field_name]) {
                                $localError[$row->urn] = ERR_CAPTCHA_FIELD_INVALID;
                            }
                            break;
                    }
                }
                if (!$localError) {
                    if ((\\RAAS\\Controller_Frontend::i()->user instanceof \\RAAS\\CMS\\User) && \\RAAS\\Controller_Frontend::i()->user->id) {
                        $Item->uid = (int)\\RAAS\\Controller_Frontend::i()->user->id;
                    } else {
                        $Item->uid = 0;
                    }
                    // Для AJAX\'а
                    //$Referer = \\RAAS\\CMS\\Page::importByURL($_SERVER[\'HTTP_REFERER\']);
                    //$Item->page_id = (int)$Referer->id;
                    $Item->page_id = (int)$Page->id;
                    $Item->ip = (string)$_SERVER[\'REMOTE_ADDR\'];
                    $Item->user_agent = (string)$_SERVER[\'HTTP_USER_AGENT\'];

                    if ($Item instanceof Order) {
                        $temp = array();
                        foreach ($Cart->items as $row) {
                            if ($row->amount) {
                                $m = new Material($row->id);
                                $price = $Cart->getPrice($m);
                                $temp[] = array(
                                    \'material_id\' => $row->id,
                                    \'name\' => $row->name,
                                    \'meta\' => $convertMeta($row->meta),
                                    \'realprice\' => number_format($row->realprice, 2, \'.\', \'\'),
                                    \'amount\' => (int)$row->amount
                                );
                            }
                        }
                        $Item->meta_items = $temp;
                    }
                    $Item->commit();
                    foreach ($Item->fields as $fname => $temp) {
                        if (isset($Item->fields[$fname])) {
                            $row = $Item->fields[$fname];
                            switch ($row->datatype) {
                                case \'file\':
                                case \'image\':
                                    $row->deleteValues();
                                    if ($row->multiple) {
                                        foreach ($_FILES[$row->urn][\'tmp_name\'] as $key => $val) {
                                            $row2 = array(
                                                \'vis\' => (int)$_POST[$row->urn . \'@vis\'][$key],
                                                \'name\' => (string)$_POST[$row->urn . \'@name\'][$key],
                                                \'description\' => (string)$_POST[$row->urn . \'@description\'][$key],
                                                \'attachment\' => (int)$_POST[$row->urn . \'@attachment\'][$key]
                                            );
                                            if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'][$key]) && $row->validate($_FILES[$row->urn][\'tmp_name\'][$key])) {
                                                $att = new Attachment((int)$row2[\'attachment\']);
                                                $att->upload = $_FILES[$row->urn][\'tmp_name\'][$key];
                                                $att->filename = $_FILES[$row->urn][\'name\'][$key];
                                                $att->mime = $_FILES[$row->urn][\'type\'][$key];
                                                $att->parent = $Item;
                                                if ($row->datatype == \'image\') {
                                                    $att->image = 1;
                                                    if ($temp = (int)$this->package->registryGet(\'maxsize\')) {
                                                        $att->maxWidth = $att->maxHeight = $temp;
                                                    }
                                                    if ($temp = (int)$this->package->registryGet(\'tnsize\')) {
                                                        $att->tnsize = $temp;
                                                    }
                                                }
                                                $att->commit();
                                                $row2[\'attachment\'] = (int)$att->id;
                                                $row->addValue(json_encode($row2));
                                            } elseif ($row2[\'attachment\']) {
                                                $row->addValue(json_encode($row2));
                                            }
                                            unset($att, $row2);
                                        }
                                    } else {
                                        $row2 = array(
                                            \'vis\' => (int)$_POST[$row->urn . \'@vis\'],
                                            \'name\' => (string)$_POST[$row->urn . \'@name\'],
                                            \'description\' => (string)$_POST[$row->urn . \'@description\'],
                                            \'attachment\' => (int)$_POST[$row->urn . \'@attachment\']
                                        );
                                        if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\']) && $row->validate($_FILES[$row->urn][\'tmp_name\'])) {
                                            $att = new Attachment((int)$row2[\'attachment\']);
                                            $att->upload = $_FILES[$row->urn][\'tmp_name\'];
                                            $att->filename = $_FILES[$row->urn][\'name\'];
                                            $att->mime = $_FILES[$row->urn][\'type\'];
                                            $att->parent = $Item;
                                            if ($row->datatype == \'image\') {
                                                $att->image = 1;
                                                if ($temp = (int)$this->package->registryGet(\'maxsize\')) {
                                                    $att->maxWidth = $att->maxHeight = $temp;
                                                }
                                                if ($temp = (int)$this->package->registryGet(\'tnsize\')) {
                                                    $att->tnsize = $temp;
                                                }
                                            }
                                            $att->commit();
                                            $row2[\'attachment\'] = (int)$att->id;
                                            $row->addValue(json_encode($row2));
                                        } elseif ($_POST[$row->urn . \'@attachment\']) {
                                            $row2[\'attachment\'] = (int)$_POST[$row->urn . \'@attachment\'];
                                            $row->addValue(json_encode($row2));
                                        }
                                        unset($att, $row2);
                                    }
                                    break;
                                default:
                                    $row->deleteValues();
                                    if (isset($_POST[$row->urn])) {
                                        foreach ((array)$_POST[$row->urn] as $val) {
                                            $row->addValue($val);
                                        }
                                    }
                                    break;
                            }
                            if (in_array($row->datatype, array(\'file\', \'image\'))) {
                                $row->clearLostAttachments();
                            }
                        }
                    }
                    $Cart->clear();
                    $notify($Item);
                    if ($_POST[\'epay\'] != 1) {
                        $OUT[\'success\'][(int)$Block->id] = true;
                    }
                }
                $OUT[\'DATA\'] = $_POST;
            } else {
                $OUT[\'DATA\'] = array();
            }
            $OUT[\'localError\'] = $localError;
            $OUT[\'Item\'] = $Item;
        }
        $OUT[\'Form\'] = $Form;
        break;
}
if (isset($_GET[\'back\'])) {
    new Redirector(\'history:back\');
}

$OUT[\'Cart\'] = $Cart;
$OUT[\'Cart_Type\'] = $Cart_Type;
$OUT[\'convertMeta\'] = $convertMeta;
if ($Block->EPay_Interface->id) {
    eval(\'?\' . \'>\' . $Block->EPay_Interface->description);
}
return $OUT;
', '1'),
('25', '1', '__raas_shop_order_notify', 'Стандартное уведомление о заказе', '<?php
namespace RAAS\\CMS\\Shop;

$smsField = function ($field) {
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $field->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'file\':
            case \'image\':
                $arr[$key] .= $val->filename;
                break;
            case \'htmlarea\':
                $arr[$key] = strip_tags($val);
                break;
            case \'material\':
                $arr[$key] = $val->name;
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = $val;
                }
                break;
        }
    }
    return $field->name . \': \' . implode(\', \', $arr) . \"\\n\";
};

$emailField = function ($field) {
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $field->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'color\':
                $arr[$key] = \'<span style=\"display: inline-block; height: 16px; width: 16px; background-color: \' . htmlspecialchars($val) . \'\"></span>\';
                break;
            case \'email\':
                $arr[$key] .= \'<a href=\"mailto:\' . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'url\':
                $arr[$key] .= \'<a href=\"\' . (!preg_match(\'/^http(s)?:\\\\/\\\\//umi\', trim($val)) ? \'http://\' : \'\') . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'file\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">\' . htmlspecialchars($val->filename) . \'</a>\';
                break;
            case \'image\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">
                                 <img src=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->tnURL. \'\" alt=\"\' . htmlspecialchars($val->filename) . \'\" title=\"\' . htmlspecialchars($val->filename) . \'\" />
                               </a>\';
                break;
            case \'htmlarea\':
                $arr[$key] = \'<div>\' . $val . \'</div>\';
                break;
            case \'material\':
                $arr[$key] = \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . htmlspecialchars($val->url) . \'\">
                                \' . htmlspecialchars($val->name) . \'
                              </a>\';
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = nl2br(htmlspecialchars($val));
                }
                break;
        }
    }
    return \'<div>\' . htmlspecialchars($field->name) . \': \' . implode(\', \', $arr) . \'</div>\';
};
?>
<?php if ($SMS) {
    echo date(DATETIMEFORMAT) . \' \' . sprintf(ORDER_STANDARD_HEADER_USER, $Item->id, $_SERVER[\'HTTP_HOST\']) . \"\\n\";
    foreach ($Item->fields as $field) {
        echo $smsField($field);
    }
} else { ?>
    <div>
      <?php
      foreach ($Item->fields as $field) {
          echo $emailField($field);
      }
      ?>
    </div>
    <?php if ($Item->items) { ?>
      <br />
      <table style=\"width: 100%\" border=\"1\">
        <thead>
          <tr>
            <th><?php echo NAME?></th>
            <th><?php echo ADDITIONAL_INFO?></th>
            <th><?php echo PRICE?></th>
            <th><?php echo AMOUNT?></th>
            <th><?php echo SUM?></th>
          </tr>
        </thead>
        <tbody>
          <?php
          $sum = 0;
          foreach ($Item->items as $row) {
              $url = ($forUser ? $row->url : \'/admin/?p=cms&sub=main&action=edit_material&id=\' . $row->id . \'&pid=\' . ($row->material_type->affectedPages[0]->id)); ?>
              <tr>
                <td>
                  <?php if ($url) { ?>
                      <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . $url)?>\">
                        <?php echo htmlspecialchars($row->name)?>
                      </a>
                  <?php } else { ?>
                      <?php echo htmlspecialchars($row->name)?>
                  <?php } ?>
                </td>
                <td><?php echo htmlspecialchars($row->__get(\'meta\'))?>&nbsp;</td>
                <td style=\"text-align: right\"><?php echo number_format($row->realprice, 2, \'.\', \' \')?></td>
                <td><?php echo (int)$row->amount?></td>
                <td style=\"text-align: right\"><?php echo number_format($row->amount * $row->realprice, 2, \'.\', \' \')?></td>
              </tr>
          <?php $sum += $row->amount * $row->realprice; } ?>
          <tr>
            <th colspan=\"4\" style=\"text-align: right\"><?php echo TOTAL_SUM?>:</th>
            <th style=\"text-align: right\"><?php echo number_format($sum, 2, \'.\', \' \')?></th>
          </tr>
        </tbody>
      </table>
    <?php } ?>
    <?php if (!$forUser) { ?>
        <p><a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . \'/admin/?p=cms&m=shop&sub=orders&action=view&id=\' . $Item->id)?>\"><?php echo VIEW?></a></p>
        <p>
          <small>
            <?php echo IP_ADDRESS?>: <?php echo htmlspecialchars($Item->ip)?><br />
            <?php echo USER_AGENT?>: <?php echo htmlspecialchars($Item->user_agent)?><br />
            <?php echo PAGE?>:
            <?php if ($Item->page->parents) { ?>
                <?php foreach ($Item->page->parents as $row) { ?>
                    <a href=\"<?php echo htmlspecialchars($Item->domain . $row->url)?>\"><?php echo htmlspecialchars($row->name)?></a> /
                <?php } ?>
            <?php } ?>
            <a href=\"<?php echo htmlspecialchars($Item->domain . $Item->page->url)?>\"><?php echo htmlspecialchars($Item->page->name)?></a>
            <br />
            <?php echo CART_TYPE?>:
            <a href=\"<?php echo htmlspecialchars($Item->domain . \'/admin/?p=cms&m=shop&sub=orders&id=\' . $Item->parent->id)?>\"><?php echo htmlspecialchars($Item->parent->name)?></a>
          </small>
        </p>
    <?php } ?>
<?php } ?>
', '1');
INSERT INTO `cms_snippets` (`id`, `pid`, `urn`, `name`, `description`, `locked`) VALUES 
('26', '1', '__raas_shop_imageloader_interface', 'Стандартный интерфейс загрузчика изображений', '<?php
namespace RAAS\\CMS\\Shop;

use \\RAAS\\CMS\\Material;
use \\RAAS\\CMS\\Package;
use \\RAAS\\CMS\\Sub_Main as Package_Sub_Main;
use \\RAAS\\Application;
use \\RAAS\\Attachment;

ini_set(\'max_execution_time\', 300);
$st = microtime(true);
if ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {
    // Загрузка картинок
    if (!$files) {
        return array(\'localError\' => array(array(\'name\' => \'MISSING\', \'value\' => \'files\', \'description\' => Module::i()->view->_(\'UPLOAD_FILES_REQUIRED\'))));
    } else {
        // Ищем задействованные типы
        $mtypes = array_merge(array((int)$Loader->Material_Type->id), (array)$Loader->Material_Type->all_children_ids);
        $mtypes = array_map(\'intval\', $mtypes);
        $articles = array();
        if ($Loader->Unique_Field->id) {
            $SQL_query = \"SELECT tM.id, tD.value \";
        } elseif ($Loader->ufid) {
            $SQL_query = \"SELECT id, \" . $Loader->ufid . \" AS value \";
        }
        $SQL_query .= \" FROM \" . Material::_tablename() . \" AS tM \";
        if ($Loader->Unique_Field->id) {
            $SQL_query .= \" JOIN \" . Material::_dbprefix() . \"cms_data AS tD ON tD.pid = tM.id \";
        }
        $SQL_query .= \" WHERE tM.pid IN (\" . implode(\", \", $mtypes ?: array(0)) . \") \";
        if ($Loader->Unique_Field->id) {
            $SQL_query .= \" AND TRIM(tD.value) != \'\' AND tD.fid = \" . (int)$Loader->Unique_Field->id;
        } else {
            $SQL_query .= \" AND \" . $Loader->ufid . \" != \'\' \";
        }
        $SQL_result = Material::_SQL()->get($SQL_query);
        foreach ($SQL_result as $row) {
            if (trim($row[\'value\'])) {
                $articles[$row[\'id\']] = \\SOME\\Text::beautify(trim($row[\'value\']));
            }
        }

        // Подготовить реальные файлы к загрузке
        $processFile = function ($file) use (&$processFile, $mtypes, $Loader, $articles) {
            $ext = strtolower(pathinfo($file[\'name\'], PATHINFO_EXTENSION));
            $proceedFiles = array();
            switch ($ext) {
                case \'jpg\':
                case \'jpeg\':
                case \'png\':
                case \'gif\':
                    if ($type = getimagesize($file[\'tmp_name\'])) {
                        $file[\'type\'] = image_type_to_mime_type($type[2]);
                        $temp = array();
                        $filename = pathinfo($file[\'name\'], PATHINFO_FILENAME);
                        foreach ($articles as $id => $article) {
                            if (preg_match(\'/^\' . preg_quote($article) . \'($|\' . preg_quote($Loader->sep_string) . \')/i\', $filename)) {
                                $temp[] = $id;
                                break;
                            }
                        }
                        if ($temp) {
                            $file[\'materials\'] = $temp;
                            $ext2 = image_type_to_extension($type[2]);
                            $file[\'original_name\'] = $file[\'name\'];
                            $file[\'name\'] = $filename . $ext2;
                        }
                        $proceedFiles[] = $file;
                    }
                    break;
                case \'zip\':
                    $files = array();
                    $z = new \\SOME\\ZipArchive();
                    if ($z->open($file[\'tmp_name\']) === true) {
                        for ($i = 0; $i < $z->numFiles; $i++) {
                            $tmpname = tempnam(sys_get_temp_dir(), \'\');
                            file_put_contents($tmpname, $z->getFromIndex($i));
                            $files[] = array(\'name\' => basename($z->getNameIndex($i)), \'tmp_name\' => $tmpname);
                        }
                    }
                    $z->close();
                    foreach ($files as $f) {
                        $proceedFiles = array_merge($proceedFiles, $processFile($f));
                    }
                    break;
            }
            return $proceedFiles;
        };

        $proceedFiles = array();
        $affectedMaterials = array();
        foreach ($files as $file) {
            $proceedFiles = array_merge($proceedFiles, $processFile($file));
        }
        if (!$proceedFiles) {
            return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'files\', \'description\' => Module::i()->view->_(\'ALLOWED_FORMATS_JPG_JPEG_PNG_GIF_ZIP\'))));
        }
        if ($clear) {
            // Ищем материалы для очистки изображений
            foreach ($proceedFiles as $file) {
                if ($file[\'materials\']) {
                    $affectedMaterials = array_merge($affectedMaterials, (array)$file[\'materials\']);
                }
            }
            $affectedMaterials = array_unique($affectedMaterials);
            $affectedMaterials = array_values($affectedMaterials);

            // Ищем attachment\'ы для удаления
            $attachmentsToClear = array();
            $SQL_query = \"SELECT value FROM \" . Material::_dbprefix() . \"cms_data
                           WHERE pid IN (\" . implode(\", \", $affectedMaterials ?: array(0)) . \") AND fid = \" . (int)$Loader->Image_Field->id;
            $SQL_result = Material::_SQL()->getcol($SQL_query);
            foreach ($SQL_result as $val) {
                if (preg_match(\'/\"attachment\":(\\\\d+)/i\', $val, $regs)) {
                    $attachmentsToClear[] = (int)$regs[1];
                }
            }
            $SQL_query = \"SELECT realname FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
            $filesToClear = Material::_SQL()->getcol($SQL_query);

            if (!$test) {
                // Очищаем данные
                $SQL_query = \"DELETE tD
                                FROM \" . Material::_dbprefix() . \"cms_data AS tD
                               WHERE tD.fid = \" . (int)$Loader->Image_Field->id . \" AND tD.pid IN (\" . implode(\", \", $affectedMaterials ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);

                // Чистим файлы
                foreach ($filesToClear as $val) {
                    $val = realpath(Package::i()->filesDir) . \'/\' . str_replace(\'.\', \'*.\', $val);
                    $arr = glob($val);
                    foreach ($arr as $row) {
                        unlink($row);
                    }
                }

                // Чистим сами attachment\'ы
                $SQL_query = \"DELETE FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);
            } else {
                foreach ($attachmentsToClear as $val) {
                    $row = new Attachment($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_ATTACHMENTS\'), \'/\' . Package::i()->filesURL . \'/\' . $row->realname, $row->realname)
                    );
                }
                foreach ($affectedMaterials as $val) {
                    $row = new Material($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_MATERIAL_IMAGES\'), Package_Sub_Main::i()->url . \'&action=edit_material&id=\' . $row->id, $row->name)
                    );
                }
            }
            $log[] = array(\'time\' => (microtime(true) - $st), \'text\' => Module::i()->view->_(\'LOG_OLD_MATERIAL_IMAGES_CLEARED\'));
        }
        foreach ($proceedFiles as $file) {
            if ($file[\'materials\']) {
                $att = new Attachment();
                $att->upload = $file[\'tmp_name\'];
                $att->filename = $file[\'name\'];
                $att->mime = $file[\'type\'];
                $att->parent = $Loader->Image_Field;
                $att->image = 1;
                if ($temp = (int)Application::i()->context->registryGet(\'maxsize\')) {
                    $att->maxWidth = $att->maxHeight = $temp;
                }
                if ($temp = (int)Application::i()->context->registryGet(\'tnsize\')) {
                    $att->tnsize = $temp;
                }
                if (!$test) {
                    $att->commit();
                }
                $row = array(\'vis\' => 1, \'name\' => \'\', \'description\' => \'\', \'attachment\' => (int)$att->id);
                foreach ($file[\'materials\'] as $id) {
                    $Item = new Material($id);
                    if (!$test) {
                        $Item->fields[$Loader->Image_Field->urn]->addValue(json_encode($row));
                    }
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(
                            Module::i()->view->_(\'LOG_ADD_MATERIAL_IMAGE\'),
                            \'/\' . Package::i()->filesURL . \'/\' . $att->realname,
                            $att->filename,
                            $file[\'original_name\'],
                            Package_Sub_Main::i()->url . \'&action=edit_material&id=\' . $Item->id,
                            $Item->name
                        )
                    );
                }
            }
        }
    }
    return array(\'log\' => $log, \'ok\' => true);
} else {
    // Выгрузка картинок
    $st = microtime(true);
    $mtypes = array_merge(array((int)$Loader->Material_Type->id), (array)$Loader->Material_Type->all_children_ids);
    if ($Loader->Image_Field->id) {
        $SQL_query = \"SELECT tM.*, \";
        if ($Loader->Unique_Field->id) {
            $SQL_query .= \" tD.value \";
        } else {
            $SQL_query .= $Loader->ufid;
        }
        $SQL_query .= \" AS ufield
                      FROM \" . Material::_tablename() . \" AS tM \";
        if ($Loader->Unique_Field->id) {
            $SQL_query .= \" JOIN \" . Material::_dbprefix() . \"cms_data AS tD ON tD.pid = tM.id AND tD.fid = \" . (int)$Loader->Unique_Field->id;
        }
        $SQL_query .= \" WHERE tM.pid IN (\" . implode(\", \", $mtypes) . \") \";
        if ($Loader->Unique_Field->id) {
            $SQL_query .= \" AND tD.value != \'\' \";
        }
        $SQL_query .= \" GROUP BY ufield\";
        $SQL_result = Material::_SQL()->get($SQL_query);
        $DATA = array();
        foreach ($SQL_result as $row2) {
            $row = new Material($row2);
            if ($attachments = $row->fields[$Loader->Image_Field->urn]->doRich()) {
                if (!is_array($attachments)) {
                    $attachments = array($attachments);
                }
                foreach ($attachments as $attachment) {
                    if ($attachment->id) {
                        $filename = array();
                        $article = \\SOME\\Text::beautify(trim($row->{$Loader->Unique_Field->id ? $Loader->Unique_Field->urn : $Loader->ufid}));
                        $realname = $attachment->realname;
                        if (preg_match(\'/^\' . preg_quote($article) . \'(\' . preg_quote($Loader->sep_string) . \'|$)/umi\', $realname)) {
                            $filename = $realname;
                        } else {
                            $filename[] = $article;
                            $filename[] = trim($Loader->sep_string);
                            $filename[] = trim(str_replace($Loader->sep_string, \'\', $realname));
                            $filename = array_filter($filename);
                            $filename = trim(implode(\'\', $filename));
                            while (in_array($filename, $DATA)) {
                                $filename .= $Loader->sep_string . $attachment->id;
                            }
                        }
                        $DATA[$attachment->file] = trim($filename);
                    }
                }
            }
            $row->rollback();
            unset($row);
        }
        // header(\'Content-Type: text/plain\');
        // print_r ($DATA);
        // exit;
        if ($DATA) {
            $tmpname = tempnam(sys_get_temp_dir(), \'\');
            $z = new \\SOME\\ZipArchive();
            $z->open($tmpname, \\SOME\\ZipArchive::CREATE);
            foreach ($DATA as $key => $val) {
                $z->addFile($key, $val);
            }
            $z->close();
            header(\'Content-Type: application/zip\');
            header(\'Content-Disposition: attachment; filename=\"\' . $Loader->Material_Type->name . \' - \' . $Loader->Image_Field->name . \'.zip\"\');
            echo file_get_contents($tmpname);
            exit;
        } else {
            return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'loader\', \'description\' => Module::i()->view->_(\'IMAGES_NOT_FOUND\'))));
        }
    } else {
        return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'loader\', \'description\' => Module::i()->view->_(\'LOADER_HAS_NO_IMAGE_FIELD\'))));
    }
}
', '1'),
('27', '1', '__raas_shop_priceloader_interface', 'Стандартный интерфейс загрузчика прайсов', '<?php
namespace RAAS\\CMS\\Shop;

use \\Exception;
use \\RAAS\\CMS\\Page;
use \\RAAS\\CMS\\Material;
use \\RAAS\\CMS\\Package;
use \\RAAS\\CMS\\Sub_Main as Package_Sub_Main;
use \\RAAS\\CMS\\Material_Field;
use \\RAAS\\CMS\\Page_Field;
use \\RAAS\\Application;
use \\RAAS\\Attachment;
use \\PHPExcel;
use \\PHPExcel_Cell;
use \\PHPExcel_IOFactory;
use \\PHPExcel_Style_NumberFormat;
use \\PHPExcel_Cell_DataType;
use SOME\\SOME;

$st = microtime(true);
require_once Application::i()->includeDir . \'/phpexcel/Classes/PHPExcel.php\';
if ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {
    ini_set(\'max_execution_time\', 3600);
    // Загрузка прайса
    $affectedPages = array();
    $affectedMaterials = array();
    if (!$file && !$clear) {
        return array(\'localError\' => array(array(\'name\' => \'MISSING\', \'value\' => \'file\', \'description\' => Module::i()->view->_(\'UPLOAD_FILE_REQUIRED\'))));
    }
    if ($file) {
        if (!in_array(strtolower(pathinfo($file[\'name\'], PATHINFO_EXTENSION)), array(\'xls\', \'xlsx\', \'csv\'))) {
            return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'file\', \'description\' => Module::i()->view->_(\'ALLOWED_FORMATS_CSV_XLS_XLSX\'))));
        }
        $type = strtolower(pathinfo($file[\'name\'], PATHINFO_EXTENSION));
        switch ($type) {
            case \'xls\':
            case \'xlsx\':
                switch ($type) {
                    case \'xls\':
                        $readerName = \'Excel5\';
                        break;
                    case \'xlsx\':
                        $readerName = \'Excel2007\';
                        break;
                }
                $objReader = PHPExcel_IOFactory::createReader($readerName);
                try {
                    $x = $objReader->load($file[\'tmp_name\']);
                    $DATA = array();
                    foreach ($x->getAllSheets() as $s) {
                        $DATA = array_merge($DATA, $s->toArray());
                    }
                } catch (Exception $e) {
                    return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'file\', \'description\' => Module::i()->view->_(\'ERR_CANNOT_READ_FILE\'))));
                }
                break;
            case \'csv\':
                $text = file_get_contents($file[\'tmp_name\']);
                $encoding = mb_detect_encoding($text, \'UTF-8, Windows-1251\');
                if ($encoding != \'UTF-8\') {
                    $text = iconv($encoding, \'UTF-8\', $text);
                }
                $csv = new \\SOME\\CSV(trim($text));
                $DATA = $csv->data;
                unset($csv);
                break;
        }
        $DATA = array_map(function ($x) use ($cols) {
            return array_slice($x, $cols);
        }, $DATA);
        $DATA = array_slice($DATA, $rows);
        $DATA = array_filter($DATA, function ($x) {
            return count(array_filter($x, \'trim\'));
        }); // Фильтруем пустые строки
        $DATA = array_values($DATA);
        if (!$DATA || ((count($DATA) == 1) && (count(array_filter($DATA[0])) == 1))) {
            return array(\'localError\' => array(array(\'name\' => \'INVALID\', \'value\' => \'file\', \'description\' => Module::i()->view->_(\'ERR_EMPTY_FILE\'))));
        }
        $log = $raw_data = array();

        // Получим номер колонки с уникальным полем
        $uniqueColumn = null;
        if ($Loader->ufid) {
            foreach ($Loader->columns as $i => $col) {
                if ($col->fid == $Loader->ufid) {
                    $uniqueColumn = $i;
                    break;
                }
            }
        }
        $backtrace = array();
        $context = $Page;
        $virtualLevel = null; // При запрете создавать новые категории, сюда устанавливается уровень не найденной категории (чтобы игнорировать дочерние)


        // Поиск товара по уникальному полю
        $getItemByUniqueField = function ($text) use ($Loader) {
            if (trim($text) && $Loader->ufid) {
                $SQL_query = \" SELECT tM.* FROM \" . Material::_tablename() . \" AS tM \";
                if ($Loader->Unique_Field->id) {
                    $SQL_query .= \" JOIN \" . Material::_dbprefix() . \"cms_data AS tD ON tD.pid = tM.id AND tD.fid = \" . (int)$Loader->Unique_Field->id
                               .  \" WHERE TRIM(tD.value)\";
                } elseif ($Loader->ufid) {
                    $SQL_query .= \" WHERE TRIM(tM.\" . $Loader->ufid . \")\";
                }
                $SQL_query .= \" = \'\" . Material::_SQL()->real_escape_string(trim($text)) . \"\' ORDER BY tM.id\";
                $SQL_result = Material::getSQLSet($SQL_query);
                return $SQL_result;
            }
            return array();
        };


        // Поиск товара по всем полям
        $getItemByEntireRow = function (array $row = array()) use ($Loader) {
            $SQL_from = array(Material::_tablename() . \" AS tM\");
            $SQL_where = array();
            for ($i = 0; $i < max(count($row), count($Loader->columns)); $i++) {
                if (!is_array($row[$i]) && trim($row[$i])) {
                    $tmp_where = \'\';
                    if ($Loader->columns[$i]->Field->id) {
                        $SQL_from[] = Material::_dbprefix() . \"cms_data AS tD\" . (int)$Loader->columns[$i]->Field->id
                                    . \" ON tD\" . (int)$Loader->columns[$i]->Field->id . \".pid = tM.id \"
                                    . \" AND tD\" . (int)$Loader->columns[$i]->Field->id . \".fid = \" . (int)$Loader->columns[$i]->Field->id;
                        $tmp_where = \" TRIM(tD\" . (int)$Loader->columns[$i]->Field->id . \".value) \";
                    } elseif ($Loader->columns[$i]->fid) {
                        $tmp_where = \" TRIM(tM.\" . $Loader->columns[$i]->fid . \") \";
                    }
                    if ($tmp_where) {
                        $tmp_where .= \" = \'\" . Material::_SQL()->real_escape_string(trim($row[$i])) . \"\'\";
                    }
                    $SQL_where[] = $tmp_where;
                }
            }
            if ($SQL_where) {
                $SQL_query = \"SELECT tM.* FROM \" . implode(\" JOIN \", $SQL_from) . \" WHERE \" . implode(\" AND \", $SQL_where) . \" ORDER BY tM.id\";
                $SQL_result = Material::getSQLSet($SQL_query);
                if ($SQL_result) {
                    return $SQL_result;
                }
            }
            return array();
        };


        // Возвращает последнюю категорию из backtrace
        $lastCat = function () use (&$backtrace, &$Page) {
            if ($backtrace) {
                $temp = array_reverse($backtrace);
                $temp = array_values($temp);
                return $temp[0];
            }
            return $Page;
        };


        // Возвращает последний уровень из backtrace
        $lastLevel = function () use (&$backtrace) {
            if ($backtrace) {
                $temp = array_reverse($backtrace, true);
                $temp = array_keys($temp);
                return $temp[0];
            }
            return null;
        };


        // Усечение backtrace
        $cropBacktrace = function ($level) use (&$backtrace) {
            $keys = array_keys($backtrace);
            foreach ($keys as $key) {
                if ($key >= $level) {
                    unset($backtrace[$key]);
                }
            }
        };

        for ($i = 0; $i < count($DATA); $i++) {
            $dataRow = $DATA[$i];
            if (count(array_filter($DATA[$i], \'trim\')) > 1) {
                // Товар
                $dataRow = array_slice($dataRow, 0, count($Loader->columns));
                for ($j = 0; $j < count($dataRow); $j++) {
                    $dataRow[$j] = trim($dataRow[$j]);
                    if ($f = $Loader->columns[$j]->Callback) {
                        $dataRow[$j] = $f($dataRow[$j]);
                    }
                    if ((!$uniqueColumn || ($j != $uniqueColumn)) && !$Loader->columns[$j]->Field->id && $Loader->columns[$j]->fid) {
                        if (in_array($Loader->columns[$j]->fid, array(\'vis\', \'priority\'))) {
                            $dataRow[$j] = (int)$dataRow[$j];
                        }
                    } elseif (is_array($dataRow[$j])) {
                        foreach ($dataRow[$j] as $k => $val) {
                            if ($val instanceof SOME) {
                                $dataRow[$j][$k] = (int)$val->id;
                            } elseif (!is_object($val) && !is_array($val)) {
                                if ($val = $Loader->Material_Type->fields[$Loader->columns[$j]->Field->urn]->fromRich(trim($val))) {
                                    $dataRow[$j][$k] = $val;
                                }
                            }
                        }
                    } else {
                        $dataRow[$j] = $Loader->Material_Type->fields[$Loader->columns[$j]->Field->urn]->fromRich(trim($dataRow[$j]));
                    }
                }
                $itemSet = null;
                // 2015-06-01, AVS: добавили понятие $new (тж. 11 строками ниже)
                $new = false;
                $itemSet = array();
                if ($uniqueColumn !== null) {
                    if (trim($dataRow[$uniqueColumn])) {
                        $itemSet = $getItemByUniqueField(trim($dataRow[$uniqueColumn]));
                    }
                } else {
                    $itemSet = $getItemByEntireRow($dataRow);
                }
                if (!$itemSet && $Loader->create_materials) {
                    $row = new Material();
                    $row->pid = $Loader->Material_Type->id;
                    $row->vis = 1;
                    $itemSet = array($row);
                    $new = true;
                }
                foreach ($itemSet as $Item) {
                    // Сначала проходим нативные поля
                    for ($j = 0; $j < count($dataRow); $j++) {
                        if ((!$uniqueColumn || ($j != $uniqueColumn)) && !$Loader->columns[$j]->Field->id && $Loader->columns[$j]->fid) {
                            if (in_array($Loader->columns[$j]->fid, array(\'vis\', \'priority\'))) {
                                $Item->{$Loader->columns[$j]->fid} = $dataRow[$j];
                            } elseif (trim($dataRow[$j]) || !in_array($Loader->columns[$j]->fid, array(\'name\', \'urn\'))) {
                                $Item->{$Loader->columns[$j]->fid} = $dataRow[$j];
                            }
                        } elseif ($new && ($j == $uniqueColumn)) { // 2015-11-20, AVS: добавили URN по артикулу
                            if (trim($dataRow[$j])) {
                                $Item->urn = \\SOME\\Text::beautify(trim($dataRow[$j]));
                            }
                        }
                    }
                    $id = $Item->id;
                    if (!$test) {
                        $affectedFields = array();
                        $Item->commit();
                        if ($Item->id && !$Loader->Material_Type->global_type && $context->id && ($new || ($context->id != $Page->id)) && !in_array($context->id, $Item->pages_ids)) {
                            Material::_SQL()->add(Material::_dbprefix() . \"cms_materials_pages_assoc\", array(\'id\' => (int)$Item->id, \'pid\' => (int)$context->id));
                        }
                        // Проходим доп. поля
                        for ($j = 0; $j < count($dataRow); $j++) {
                            // 2015-06-01, AVS: добавляем поддержку множественных значений:
                            if (is_array($dataRow[$j])) {
                                $Item->fields[$Loader->columns[$j]->Field->urn]->deleteValues();
                                foreach ($dataRow[$j] as $val) {
                                    if ($val !== null) {
                                        $Item->fields[$Loader->columns[$j]->Field->urn]->addValue($val);
                                        $affectedFields[] = $Loader->columns[$j]->Field->urn;
                                    }
                                }
                            } else {
                                // 2015-06-01, AVS: добавляем || $new , чтобы у новых товаров артикул тоже заполнялся
                                // 2016-02-01, AVS: закомментировали trim($dataRow[$j]), т.к. пустые значения тоже должны вставляться
                                if (/*trim($dataRow[$j]) && */(!$uniqueColumn || ($j != $uniqueColumn) || $new) && $Loader->columns[$j]->Field->id) {
                                    $field = $Item->fields[$Loader->columns[$j]->Field->urn];
                                    $val = $dataRow[$j];
                                    $oldVal = $field->getValues();
                                    if (in_array($field->datatype, array(\'file\', \'image\'))) {
                                        if ($val) {
                                            foreach ($oldVal as $att) {
                                                Attachment::delete($att);
                                            }
                                            $field->deleteValues();
                                            $field->addValue($val);
                                            $affectedFields[] = $Loader->columns[$j]->Field->urn;
                                        }
                                    } elseif ($val != $oldVal) {
                                        $field->deleteValues();
                                        $field->addValue($val);
                                        $affectedFields[] = $Loader->columns[$j]->Field->urn;
                                    }
                                }
                            }
                        }
                        foreach ($Item->fields as $field) {
                            if ($field->defval && !in_array($field->urn, $affectedFields)) {
                                $field->addValue($field->defval);
                            }
                        }
                    }
                    $affectedMaterials[] = (int)$Item->id;
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(
                            Module::i()->view->_(\'LOG_MATERIAL_\' . ($id ? \'UPDATED\' : \'CREATED\')),
                            Package_Sub_Main::i()->url . \'&action=edit_material&id=\' . (int)$Item->id,
                            $Item->name
                        ),
                        \'row\' => $i,
                        \'realrow\' => $i + $rows,
                    );
                    $Item->rollback();
                    unset($Item);
                }
                unset($itemSet);
            } elseif (count(array_filter($DATA[$i], \'trim\')) == 1) {
                // Категория
                list($step, $name) = each(array_filter($DATA[$i], \'trim\'));
                if ($Loader->catalog_offset) {
                    $step = 0;
                    if (preg_match(\'/^\\\\s+/i\', $name, $regs)) {
                        $step = strlen($regs[0]);
                    }
                }
                $name = trim($name);
                if (!$virtualLevel || ($step <= $virtualLevel)) {
                    if ($step > 0) {
                        $cropBacktrace($step);
                    } else {
                        $backtrace = array();
                    }
                    $context = $lastCat();

                    $SQL_result = Page::getSet(array(\'where\' => array(\"pid = \" . (int)$context->id, \"name = \'\" . Page::_SQL()->real_escape_string($name) . \"\'\")));
                    if ($SQL_result || $Loader->create_pages) {
                        if ($SQL_result) {
                            $context = $SQL_result[0];
                            $id = $context->id;
                        } elseif ($Loader->create_pages) {
                            $arr = array(
                                \'pid\' => (int)$context->id,
                                \'vis\' => 1,
                                \'name\' => $name,
                                \'sitemaps_priority\' => $context->sitemaps_priority ?: \'0.5\',
                                \'inherit_sitemaps_priority\' => $context->inherit_sitemaps_priority,
                                \'nat\' => $context->nat,
                                \'lang\' => $context->inherit_lang ? $context->lang : Package::i()->view->language
                            );
                            foreach (array(\'title\', \'keywords\', \'description\') as $key) {
                                $arr[\'meta_\' . $key] = $context->{\'inherit_meta_\' . $key} ? $context->{\'meta_\' . $key} : \'\';
                                $arr[\'inherit_meta_\' . $key] = $context->{\'inherit_meta_\' . $key};
                            }
                            foreach (array(\'changefreq\', \'cache\', \'template\') as $key) {
                                $arr[$key] = $context->$key;
                                $arr[\'inherit_\' . $key] = $context->{\'inherit_\' . $key};
                            }
                            $context = new Page($arr);
                            $id = 0;
                            if (!$test) {
                                $context->commit();
                                $context->rollback();
                            }
                        }
                        $affectedPages[] = (int)$context->id;
                        $backtrace[$step] = $context;
                        $virtualLevel = null;
                        $log[] = array(
                            \'time\' => (microtime(true) - $st),
                            \'text\' => sprintf(
                                Module::i()->view->_(\'LOG_PAGE_\' . ($id ? \'SELECTED\' : \'CREATED\')),
                                Package_Sub_Main::i()->url . \'&action=edit_page&id=\' . (int)$context->id,
                                $context->name
                            ),
                            \'row\' => $i,
                            \'realrow\' => $i + $rows,
                        );
                    } else {
                        $virtualLevel = $step;
                        $log[] = array(\'time\' => (microtime(true) - $st), \'text\' => sprintf(Module::i()->view->_(\'LOG_PAGE_NOT_SELECTED\'), $name), \'row\' => $i, \'realrow\' => $i + $rows);
                    }
                }
            }
            $raw_data[] = $dataRow;
        }
    }

    if ($clear) {
        if (count($Page->parents) > count($Loader->Page->parents)) {
            $deleteRoot = $Page;
        } else {
            $deleteRoot = $Loader->Page;
        }
        if (($clear == PriceLoader::DELETE_PREVIOUS_MATERIALS_MATERIALS_ONLY) || ($clear == PriceLoader::DELETE_PREVIOUS_MATERIALS_MATERIALS_AND_PAGES)) {
            // Очищаем материалы

            // Ищем задействованные типы
            $mtypes = array_merge(array((int)$Loader->Material_Type->id), (array)$Loader->Material_Type->all_children_ids);
            $mtypes = array_map(\'intval\', $mtypes);

            // Ищем материалы для удаления
            $affectedMaterials = array_map(\'intval\', $affectedMaterials);
            $SQL_query = \"SELECT tM.id FROM \" . Material::_tablename() . \" AS tM \";
            if (!$Loader->Material_Type->global_type) {
                $SQL_query .= \" LEFT JOIN \" . Material::_dbprefix() . \"cms_materials_pages_assoc AS tMPA ON (tMPA.id = tM.id)\";
            }
            $SQL_query .= \" WHERE tM.pid IN (\" . implode(\", \", $mtypes ?: array(0)) . \") AND tM.id NOT IN (\" . implode(\", \", $affectedMaterials ?: array(0)) . \")\";
            if (!$Loader->Material_Type->global_type) {
                $SQL_query .= \" AND (tMPA.pid IN (\" . implode(\", \", array_merge(array($deleteRoot->id), (array)$deleteRoot->all_children_ids)) . \") OR tMPA.pid IS NULL)\";
            }
            $materialsToClear = Material::_SQL()->getcol($SQL_query);

            // Ищем поля картинок и файлов (с attachment\'ами)
            $SQL_query = \"SELECT tF.id FROM \" . Material_Field::_tablename() . \" AS tF
                           WHERE tF.classname = \'RAAS\\\\\\\\CMS\\\\\\\\Material_Type\' AND tF.pid IN (\" . implode(\", \", $mtypes ?: array(0)) . \") AND datatype IN (\'image\', \'file\')\";
            $fieldsToClear = Material::_SQL()->getcol($SQL_query);

            // Ищем attachment\'ы для удаления
            $attachmentsToClear = array();
            $SQL_query = \"SELECT value FROM \" . Material::_dbprefix() . \"cms_data
                           WHERE pid IN (\" . implode(\", \", $materialsToClear ?: array(0)) . \") AND fid IN (\" . implode(\", \", $fieldsToClear ?: array(0)) . \")\";
            $SQL_result = Material::_SQL()->getcol($SQL_query);
            foreach ($SQL_result as $val) {
                if (preg_match(\'/\"attachment\":(\\\\d+)/i\', $val, $regs)) {
                    $attachmentsToClear[] = (int)$regs[1];
                }
            }
            $SQL_query = \"SELECT realname FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
            $filesToClear = Material::_SQL()->getcol($SQL_query);

            if (!$test) {
                // Очищаем материалы
                $SQL_query = \"DELETE FROM \" . Material::_tablename() . \" WHERE id IN (\" . implode(\", \", $materialsToClear ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);

                // Очищаем привязку к страницам
                $SQL_query = \"DELETE FROM \" . Material::_dbprefix() . \"cms_materials_pages_assoc WHERE id IN (\" . implode(\", \", $materialsToClear ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);

                // Очищаем данные
                $SQL_query = \"DELETE tD
                                FROM \" . Material::_dbprefix() . \"cms_data AS tD JOIN \" . Material_Field::_tablename() . \" AS tF ON tF.id = tD.fid
                               WHERE (tF.classname = \'RAAS\\\\\\\\CMS\\\\\\\\Material_Type\') AND (tF.pid > 0) AND (tD.pid IN (\" . implode(\", \", $materialsToClear ?: array(0)) . \"))\";
                Material::_SQL()->query($SQL_query);

                // Чистим файлы
                foreach ($filesToClear as $val) {
                    $val = realpath(Package::i()->filesDir) . \'/\' . str_replace(\'.\', \'*.\', $val);
                    $arr = glob($val);
                    foreach ($arr as $row) {
                        unlink($row);
                    }
                }

                // Чистим сами attachment\'ы
                $SQL_query = \"DELETE FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);
            } else {
                foreach ($materialsToClear as $val) {
                    $row = new Material($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_MATERIALS\'), Package_Sub_Main::i()->url . \'&action=edit_material&id=\' . $row->id, $row->name)
                    );
                }
                foreach ($fieldsToClear as $val) {
                    $row = new Material_Field($val);
                    $log[] = array(\'time\' => (microtime(true) - $st), \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_FIELDS\'), $row->name));
                }
                foreach ($attachmentsToClear as $val) {
                    $row = new Attachment($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_ATTACHMENTS\'), \'/\' . Package::i()->filesURL . \'/\' . $row->realname, $row->realname)
                    );
                }
            }
        }
        if ($clear == PriceLoader::DELETE_PREVIOUS_MATERIALS_MATERIALS_AND_PAGES) {
            // Очищаем страницы

            // Ищем страницы для удаления
            $affectedPages = array_map(\'intval\', $affectedPages);
            $pagesToClear = array_diff($deleteRoot->all_children_ids, $affectedPages);

            // Ищем поля картинок и файлов (с attachment\'ами)
            $SQL_query = \"SELECT tF.id FROM \" . Page_Field::_tablename() . \" AS tF
                           WHERE tF.classname = \'RAAS\\\\\\\\CMS\\\\\\\\Material_Type\' AND tF.pid = 0 AND datatype IN (\'image\', \'file\')\";
            $fieldsToClear = Page::_SQL()->getcol($SQL_query);

            // Ищем attachment\'ы для удаления
            $attachmentsToClear = array();
            $SQL_query = \"SELECT value FROM \" . Page::_dbprefix() . \"cms_data
                           WHERE pid IN (\" . implode(\", \", $pagesToClear ?: array(0)) . \") AND fid IN (\" . implode(\", \", $fieldsToClear ?: array(0)) . \")\";
            $SQL_result = Page::_SQL()->getcol($SQL_query);
            foreach ($SQL_result as $val) {
                if (preg_match(\'/\"attachment\":(\\\\d+)/i\', $val, $regs)) {
                    $attachmentsToClear[] = (int)$regs[1];
                }
            }
            $SQL_query = \"SELECT realname FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
            $filesToClear = Material::_SQL()->getcol($SQL_query);

            if (!$test) {
                // Очищаем страницы
                $SQL_query = \"DELETE FROM \" . Page::_tablename() . \" WHERE id IN (\" . implode(\", \", $pagesToClear ?: array(0)) . \")\";
                Page::_SQL()->query($SQL_query);

                // Очищаем привязку к страницам
                $SQL_query = \"DELETE FROM \" . Material::_dbprefix() . \"cms_materials_pages_assoc WHERE pid IN (\" . implode(\", \", $pagesToClear ?: array(0)) . \")\";
                Material::_SQL()->query($SQL_query);

                // Очищаем данные
                $SQL_query = \"DELETE tD
                                FROM \" . Page::_dbprefix() . \"cms_data AS tD JOIN \" . Page_Field::_tablename() . \" AS tF ON tF.id = tD.fid
                               WHERE (tF.classname = \'RAAS\\\\\\\\CMS\\\\\\\\Material_Type\') AND (tF.pid = 0) AND (tD.pid IN (\" . implode(\", \", $pagesToClear ?: array(0)) . \"))\";
                Page::_SQL()->query($SQL_query);

                // Чистим файлы
                foreach ($filesToClear as $val) {
                    $val = realpath(Package::i()->filesDir) . \'/\' . str_replace(\'.\', \'*.\', $val);
                    $arr = glob($val);
                    foreach ($arr as $row) {
                        unlink($row);
                    }
                }

                // Чистим сами attachment\'ы
                $SQL_query = \"DELETE FROM \" . Attachment::_tablename() . \" WHERE id IN (\" . implode(\", \", $attachmentsToClear ?: array(0)) . \")\";
                Page::_SQL()->query($SQL_query);
            } else {
                foreach ($pagesToClear as $val) {
                    $row = new Page($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_PAGES\'), Package_Sub_Main::i()->url . \'&action=edit_page&id=\' . $row->id, $row->name)
                    );
                }
                foreach ($fieldsToClear as $val) {
                    $row = new Page_Field($val);
                    $log[] = array(\'time\' => (microtime(true) - $st), \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_FIELDS\'), $row->name));
                }
                foreach ($attachmentsToClear as $val) {
                    $row = new Attachment($val);
                    $log[] = array(
                        \'time\' => (microtime(true) - $st),
                        \'text\' => sprintf(Module::i()->view->_(\'LOG_DELETE_ATTACHMENTS\'), \'/\' . Package::i()->filesURL . \'/\' . $row->realname, $row->realname)
                    );
                }
            }
        }
        $log[] = array(
            \'time\' => (microtime(true) - $st),
            \'text\' => sprintf(
                Module::i()->view->_(\'LOG_OLD_MATERIALS_CLEARED\'),
                $Loader->Material_Type->name,
                Package_Sub_Main::i()->url . \'&id=\' . (int)$Page->id,
                $Page->name
            )
        );
    }
    return array(\'log\' => $log, \'raw_data\' => $raw_data, \'ok\' => true);
} else {
    ini_set(\'max_execution_time\', 900);
    // Выгрузка прайса
    $downloadPrice = function (Page $Page = null, $level = 0) use ($Loader, &$downloadPrice, $cols, $rows) {
        static $mtypes;
        if (!$mtypes) {
            $mtypes = array_merge(array((int)$Loader->Material_Type->id), (array)$Loader->Material_Type->all_children_ids);
        }

        $DATA = array();
        if (!$Page) {
            $Page = $Loader->Page;
        }
        if ($level) {
            if ($Loader->catalog_offset) {
                $temp = array(str_repeat(\' \', $Loader->catalog_offset * $level) . trim($Page->name));
            } else {
                $temp = array_fill(0, $level, \'\');
                $temp[$level - 1] = $Page->name;
            }
            $DATA[] = $temp;
        }


        $SQL_query = \"SELECT tM.* FROM \" . Material::_tablename() . \" AS tM \";
        if (!$Loader->Material_Type->global_type) {
            $SQL_query .= \" JOIN \" . Material::_dbprefix() . \"cms_materials_pages_assoc AS tMPA ON tMPA.id = tM.id\";
        }
        $SQL_query .= \" WHERE tM.pid IN (\" . implode(\", \", $mtypes ?: array(0)) . \") \";
        if (!$Loader->Material_Type->global_type) {
            $SQL_query .= \" AND tMPA.pid = \" . (int)$Page->id;
        }
        $SQL_query .= \" GROUP BY tM.id\";
        $SQL_result = Material::_SQL()->get($SQL_query);
        if (($rows > 0) && !$level) {
            $temp = array();
            foreach ($Loader->columns as $col) {
                $x = \'\';
                if ($col->Field->id) {
                    $x = $col->Field->name;
                } elseif ($col->fid == \'name\') {
                    $x = Module::i()->view->_(\'NAME\');
                } elseif ($col->fid == \'urn\') {
                    $x = Module::i()->view->_(\'URN\');
                } elseif ($col->fid == \'vis\') {
                    $x = Package::i()->view->_(\'VISIBILITY\');
                } elseif ($col->fid == \'description\') {
                    $x = Module::i()->view->_(\'DESCRIPTION\');
                }
                $temp[] = trim($x);
            }
            $DATA[] = $temp;
        }
        foreach ($SQL_result as $row2) {
            $row = new Material($row2);
            $temp = array();
            foreach ($Loader->columns as $col) {
                $x = null;
                if ($col->Field->id) {
                    if ($col->Field->multiple) {
                        $x = $row->fields[$col->Field->urn]->getValues(true);
                        $x = array_map(function ($y) use ($col) {
                            return $col->Field->doRich($y);
                        }, $x);
                    } else {
                        $x = $row->fields[$col->Field->urn]->doRich();
                    }
                } elseif ($col->fid) {
                    $x = $row->{$col->fid};
                } else {
                    $temp[] = \'\';
                    continue;
                }
                if ($f = $col->CallbackDownload) {
                    $x = $f($x, $row);
                }
                if (is_array($x)) {
                    $x = implode(\', \', $x);
                }
                $temp[] = trim($x);
            }
            $DATA[] = $temp;
            $row->rollback();
            unset($row);
        }
        foreach ($Page->children as $row) {
            $DATA = array_merge($DATA, $downloadPrice($row, $level + 1));
        }
        return $DATA;
    };

    if (!$Page->id) {
        $Page = $Loader->Page;
    }
    if (!$type) {
        $type = \'csv\';
    }
    $DATA = $downloadPrice($Page);
    if ($cols > 0) {
        $DATA = array_map(function ($row) use ($cols) {
            return array_merge(array_fill(0, (int)$cols, \'\'), (array)$row);
        }, $DATA);
    }
    if ($rows > 1) {
        $DATA = array_merge(array_fill(0, (int)($rows - 1), array(\'\')), $DATA);
    }
    while (ob_get_level()) {
        ob_end_clean();
    }
    $filename = date(\'Y-m-d\') . \' - \' . $Page->name;
    switch ($type) {
        case \'xls\':
        case \'xlsx\':
            $filename .= \'.\' . $type;
            $x = new PHPExcel();
            $x->setActiveSheetIndex(0)->setTitle(mb_substr($Page->name, 0, 30));
            $maxcol = 0;
            for ($i = 0; $i < count($DATA); $i++) {
                $maxcol = max($maxcol, count($DATA[$i]));
                for ($j = 0; $j < count($DATA[$i]); $j++) {
                    $cell = $x->getActiveSheet()->getCellByColumnAndRow($j, $i + 1);
                    $cell->setValueExplicit($DATA[$i][$j], PHPExcel_Cell_DataType::TYPE_STRING);
                }
            }
            if ($rows) {
                $range = PHPExcel_Cell::stringFromColumnIndex((int)$cols) . (int)$rows . \':\' . PHPExcel_Cell::stringFromColumnIndex($maxcol + (int)$cols) . (int)$rows;
                $x->getActiveSheet()->getStyle($range)->getFont()->setBold(true);
            }
            switch ($type) {
                case \'xlsx\':
                    $writerName = \'Excel2007\';
                    header(\'Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; name=\"\' . $filename . \'\"\');
                    break;
                default:
                    $writerName = \'Excel5\';
                    header(\'Content-Type: application/excel; name=\"\' . $filename . \'\"\');
                    break;
            }
            $objWriter = PHPExcel_IOFactory::createWriter($x, $writerName);
            $temp_file = tempnam(sys_get_temp_dir(), \'\');
            $objWriter->save($temp_file);
            $text = file_get_contents($temp_file);
            break;
        default:
            $filename .= \'.csv\';
            $csv = new \\SOME\\CSV($DATA);
            unset($DATA);
            $text = $csv->csv;
            unset($csv);
            if ($encoding) {
                $text = iconv(\'UTF-8\', $encoding . \'//IGNORE\', $text);
            }
            header(\'Content-Type: text/csv; name=\"\' . $filename . \'\"\');
            break;
    }

    header(\'Content-Disposition: attachment; filename=\"\' . $filename . \'\"\');
    echo $text;
    exit;
}
', '1'),
('28', '1', '__raas_shop_yml_interface', 'Стандартный интерфейс Яндекс.Маркета', '<?php
/**
 * Сниппет интерфейса Яндекс.Маркета
 */
namespace RAAS\\CMS\\Shop;

$interface = new YMLInterface($Block, $Page, $_GET, $_POST, $_COOKIE, $_SESSION, $_SERVER);
$interface->process(true, 300);
', '1'),
('29', '1', '__raas_robokassa_interface', 'Интерфейс платежной системы \"ROBOKASSA\"', '<?php
namespace RAAS\\CMS\\Shop;

use RAAS\\CMS\\Snippet;
use RAAS\\Application;

if (in_array($_GET[\'action\'], array(\'result\', \'success\', \'fail\')) && $_REQUEST[\'InvId\']) {
    // Подписанное значение - либо RESULT URL, либо SUCCESS URL, либо FAIL URL
    $inv_id = $_REQUEST[\'InvId\'];
    $Item = new Order($inv_id);
    $crc = isset($_REQUEST[\'SignatureValue\']) ? strtoupper($_REQUEST[\'SignatureValue\']) : null;
    switch ($_GET[\'action\']) {
        case \'result\':
            while (ob_get_level()) {
                ob_end_clean();
            }
            $my_crc = strtoupper(md5($_REQUEST[\'OutSum\'] . \':\' . $inv_id . \':\' . $Block->epay_pass2));
            if ($my_crc != $crc) {
                echo \'Invalid signature\';
            } elseif (!$Item->id) {
                echo \'Invalid order ID#\';
            } else {
                // Все ок
                $history = new Order_History();
                $history->uid = Application::i()->user->id;
                $history->order_id = (int)$Item->id;
                $history->status_id = (int)$Item->status_id;
                $history->paid = 1;
                $history->post_date = date(\'Y-m-d H:i:s\');
                $history->description = PAID_VIA_ROBOKASSA;
                $history->commit();

                $Item->paid = 1;
                $Item->commit();
                echo \'OK\' . (int)$Item->id;
            }
            exit;
            break;
        case \'success\':
            $my_crc = strtoupper(md5($_REQUEST[\'OutSum\'] . \':\' . $inv_id . \':\' . $Block->epay_pass1));
            if ($Item->id) {
                $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');
                $OUT[\'Item\'] = $Item;
                if ($crc == $my_crc) {
                    $OUT[\'success\'][(int)$Block->id] = sprintf(ORDER_SUCCESSFULLY_PAID, $Item->id);
                } else {
                    $OUT[\'localError\'] = array(\'crc\' => INVALID_CRC);
                }
            }
            break;
        case \'fail\':
            if ($Item->id) {
                $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');
                $OUT[\'Item\'] = $Item;
                $OUT[\'localError\'] = array(\'order\' => sprintf(ORDER_HAS_NOT_BEEN_PAID, $Item->id));
            }
            break;
    }
} elseif ($Item->id && $_POST[\'epay\']) {
    $OUT[\'epayWidget\'] = Snippet::importByURN(\'robokassa\');
    $OUT[\'paymentURL\'] = $Block->epay_test ? \'https://auth.robokassa.ru/Merchant/Index.aspx?IsTest=1\' : \'https://auth.robokassa.ru/Merchant/Index.aspx\';
    $OUT[\'requestForPayment\'] = true;
    $crc = $Block->epay_login . \':\' . number_format($Item->sum, 2, \'.\', \'\') . \':\' . (int)$Item->id;
    if (!$Block->epay_test && $Block->epay_currency && ($Block->epay_currency != \'RUR\')) {
        $crc .= \':\' . $Block->epay_currency;
    }
    $crc .= \':\' . $Block->epay_pass1;
    $crc = md5($crc);
    $OUT[\'crc\'] = $crc;
}
', '1'),
('30', '1', '__raas_my_orders_interface', 'Стандартный интерфейс истории заказов', '<?php
namespace RAAS\\CMS\\Shop;

use \\RAAS\\Redirector;

$u = \\RAAS\\Controller_Frontend::i()->user;
if (!$u->id) {
    new Redirector(\'/\');
    exit;
}

$OUT = array();
$Item = null;
if ($_GET[\'id\']) {
    $temp = new Order((int)$_GET[\'id\']);
    if ($temp->uid = (int)$u->id) {
        $Item = $temp;
    }
}

if ($Item) {
    switch ($_GET[\'action\']) {
        case \'delete\':
            if (!$Order->status_id && !$Order->paid && !$Order->vis) {
                Order::delete($Item);
            }
            new Redirector($_GET[\'back\'] ? \'history:back\' : \\SOME\\HTTP::queryString(\'id=&action=\'));
            break;
        default:
            $Page->oldName = $Page->name;
            $Page->Item = $Item;
            $Page->name = ORDER_NUMBER . \' \' . $Item->id . \' \' . FROM . \' \' . date(DATETIMEFORMAT, strtotime($Item->post_date));
            $OUT[\'Item\'] = $Item;
            break;
    }
} else {
    $Set = Order::getSet(array(\'where\' => \"uid = \" . (int)$u->id, \'orderBy\' => \'id DESC\'));
    $OUT[\'Set\'] = $Set;
}
return $OUT;
', '1'),
('31', '1', 'catalog_interface', 'Интерфейс каталога', '<?php
namespace RAAS\\CMS;

$IN = (array)$_GET;
parse_str(trim($Block->params), $temp);
$IN = array_merge($IN, (array)$temp);

$OUT = array();
if ($Page->Material && $Block->nat) {
    $Item = $Page->Material;
    if ($Page->initialURL != $Item->url) {
        // Адреса не совпадают
        if ((int)$Block->legacy && ($Item->pid == $Block->material_type)) {
            // Установлена переадресация
            header(\"HTTP/1.1 301 Moved Permanently\");
            header(\'Location: http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $Item->url);
            exit;
        } else {
            return;
        }
    }
    $OUT[\'Item\'] = $Item;

    // Отзывы
    // $commentsMType = Material_Type::importByURN(\'goods_comments\');
    // $commentMaterialField = $commentsMType->fields[\'material\'];
    // $SQL_query = \"SELECT tM.*
    //                 FROM \" . Material::_tablename() . \" AS tM
    //                 JOIN cms_data AS tD ON tD.fid = \" . (int)$commentMaterialField->id . \" AND tD.pid = tM.id
    //                WHERE tM.pid = \" . (int)$commentsMType->id . \" AND tM.vis AND tD.value = \" . (int)$Page->Material->id
    //            . \" ORDER BY tM.post_date DESC\";
    // $comments = Material::getSQLSet($SQL_query);
    // $OUT[\'comments\'] = $comments;
    // $OUT[\'commentFormBlock\'] = Block::spawn(71);

    foreach (array(\'name\', \'meta_title\', \'meta_keywords\', \'meta_description\', \'h1\') as $key) {
        $Page->{\'old\' . ucfirst($key)} = $Page->$key;
        $Page->$key = $Item->$key;
    }
    $Item->proceed = true;
    $_SESSION[\'visited\'] = (array)$_SESSION[\'visited\'];
    $_SESSION[\'visited\'][] = (int)$Item->id;
    $_SESSION[\'visited\'] = array_unique($_SESSION[\'visited\']);
    $_SESSION[\'visited\'] = array_filter($_SESSION[\'visited\']);
    $_SESSION[\'visited\'] = array_values($_SESSION[\'visited\']);
} else {
    $MType = new Material_Type($Block->material_type);
    $cc = new Catalog_Cache($MType);
    if (!$cc->load()) {
        $cc->getCache();
        $cc->save();
    }
    $Set = $cc->data;

    if (!$MType->global_type) {
        if ($Page->pid) {
            $pages_ids = array_merge(array((int)$Page->id), (array)$Page->all_children_ids);
        } else {
            $pages_ids = array($Page->id);
        }
        $Set = array_filter(
            $Set,
            function ($row) use ($pages_ids) {
                return (bool)array_intersect((array)$row[\'pages_ids\'], $pages_ids);
            }
        );
    }

    $doSearch = false;

    if ($Page->pid) {
        // Точное соответствие
        foreach (array(/*...*/) as $key) {
            if ($IN[$key]) {
                $doSearch = true;
                $Set = array_filter(
                    $Set,
                    function ($x) use ($IN, $key) {
                        return (bool)array_intersect((array)$x[$key], (array)$IN[$key]);
                    }
                );
            }
        }

        // Вхождение подстроки
        $getValueSubstringFilterFunction = function ($IN, $key) {
            return function ($y) use ($IN, $key) {
                return (bool)stristr($y, $IN[$key]);
            };
        };
        foreach (array(\'article\') as $key) {
            if ($IN[$key]) {
                $doSearch = true;
                $Set = array_filter(
                    $Set,
                    function ($x) use ($IN, $key, $getValueSubstringFilterFunction) {
                        return (bool)array_filter((array)$x[$key], $getValueSubstringFilterFunction($IN, $key));
                    }
                );
            }
        }

        // От .. до
        $getValueFromToFilterFunction = function ($IN, $key, $from = true) {
            if ($from) {
                return function ($y) use ($IN, $key) {
                    return $y >= $IN[$key . \'_from\'];
                };
            } else {
                return function ($y) use ($IN, $key) {
                    return $y <= $IN[$key . \'_to\'];
                };
            }
        };

        $getRowFromToFilterFunction = function ($IN, $key, $from = true) use ($getValueFromToFilterFunction) {
            $f = $getValueFromToFilterFunction($IN, $key, $from);
            return function ($x) use ($key, $f) {
                return (bool)array_filter((array)$x[$key], $f);
            };
        };
        foreach (array(\'price\') as $key) {
            if ($IN[$key . \'_from\']) {
                $doSearch = true;
                $Set = array_filter($Set, $getRowFromToFilterFunction($IN, $key, true));
            }
            if ($IN[$key . \'_to\']) {
                $doSearch = true;
                $Set = array_filter($Set, $getRowFromToFilterFunction($IN, $key, false));
            }
        }
    }

    if ($Page->visChildren && !$doSearch && $Page->pid) {
        $cats = $Page->visChildren;
        $temp = array();
        foreach ($cats as $cat) {
            $ids = array_merge(array($cat->id), (array)$cat->all_children_ids);
            foreach ($Set as $row) {
                if ((bool)array_intersect((array)$row[\'pages_ids\'], $ids)) {
                    $temp[$cat->id]++;
                }
            }
            $cat->reload();
            unset($cat);
        }
        $cats = array();
        foreach ($temp as $key => $val) {
            $cats[$key] = new Page($key);
            $cats[$key]->counter = $val;
        }
        $OUT[\'subCats\'] = array_values($cats);
    }

    if ($Set) {
        $Set = array_filter(
            $Set,
            function ($row) use ($Page) {
                return in_array($Page->id, (array)$row[\'pages_ids\']);
            }
        );
        $sortFunction = array();
        if (in_array($IN[\'sort\'], array(\'price\'))) {
            // Вариант для сортировки из фильтра
            $sortFunction[] = \'(\' . ($IN[\'order\'] == \'desc\' ? \'-1 * \' : \'\') . \'((int)$a[\"\' . $IN[\'sort\'] . \'\"] - (int)$b[\"\' . $IN[\'sort\'] . \'\"]))\';
        } else {
            $sortFunction[] = \'((int)(bool)$b[\"priority\"] - (int)(bool)$a[\"priority\"])\';
            $sortFunction[] = \'((int)$a[\"priority\"] - (int)$b[\"priority\"])\';
            // Вариант для статической сортировки
            if (isset($Block->sort_var_name, $IN[(string)$Block->sort_var_name])) {
                $sortKey = $IN[(string)$Block->sort_var_name];
                if ($f = $MType->fields[$sortKey]->id) {
                    $sortFunction[] = \'strnatcmp($a[\"\' . addslashes($sortKey) . \'\"], $b[\"\' . addslashes($sortKey) . \'\"])\';
                }
            }
            $sortFunction[] = \'((int)$a[\"price\"] - (int)$b[\"price\"])\';
        }
        $sortFunction = \'return (\' . implode(\' ?: \', $sortFunction) . \');\';
        $sortFunction = create_function(\'$a, $b\', $sortFunction);
        usort($Set, $sortFunction);

        if (isset($Block->pages_var_name, $Block->rows_per_page) && (int)$Block->rows_per_page) {
            $Pages = new \\SOME\\Pages(isset($IN[$Block->pages_var_name]) ? (int)$IN[$Block->pages_var_name] : 1, (int)$Block->rows_per_page);
        }

        $Set = \\SOME\\SOME::getArraySet($Set, $Pages);
        $nativeFields = Material::_classes();
        $nativeFields = $nativeFields[\'RAAS\\\\CMS\\\\Material\'][\'fields\'];
        $Set = array_map(function ($row) use ($nativeFields) {
            $native = array_intersect_key($row, array_flip($nativeFields));
            $row2 = new Material($native);
            $row2->metacache = $row;
            return $row2;
        }, $Set);

        $OUT[\'Set\'] = $Set;
        if ($Pages !== null) {
            $OUT[\'Pages\'] = $Pages;
        }
    }

    $OUT[\'MType\'] = $MType;
    $OUT[\'doSearch\'] = $doSearch;
}
return $OUT;
', '0'),
('32', '2', 'cart', 'Корзина', '<?php
namespace RAAS\\CMS\\Shop;

use \\RAAS\\CMS\\Material;
use \\RAAS\\CMS\\Package;

function formatPrice($price)
{
    $remainder = (float)$price - (float)(int)$price;
    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));
}

if ($_GET[\'AJAX\']) {
    $temp = array();
    $temp[\'count\'] = (int)$Cart->count;
    $temp[\'sum\'] = (float)$Cart->sum;
    $temp[\'no_amount\'] = (int)$Cart->no_amount;
    foreach ($Cart->items as $row) {
        $row2 = new Material($row->id);
        $temp[\'items\'][] = array(
            \'id\' => $row->id,
            \'meta\' => $row->meta,
            \'amount\' => $row->amount,
            \'price\' => $row->realprice,
            \'name\' => $row->name,
            \'url\' => $row2->url,
			      \'image\' => \'/\' . $row2->visImages[0]->smallURL,
            \'min\' => $row2->min,
        );
    }
    echo json_encode($temp);
    exit;
} elseif ($epayWidget && ($epayWidget instanceof \\RAAS\\CMS\\Snippet)) {
    eval(\'?\' . \'>\' . $epayWidget->description);
} elseif ($success[(int)$Block->id]) {
    ?>
    <div class=\"notifications\">
      <div class=\"alert alert-success\"><?php echo sprintf(ORDER_SUCCESSFULLY_SENT, $Item->id)?></div>
    </div>
<?php } elseif ($Cart->items) { ?>
    <div class=\"cart\">
      <form action=\"#feedback\" method=\"post\" enctype=\"multipart/form-data\">
        <div class=\"cart__inner\">
          <table class=\"table table-striped cart-table\" data-role=\"cart-table\">
            <thead>
              <tr>
                <th class=\"cart-table__image-col\"><?php echo IMAGE?></th>
                <th class=\"cart-table__name-col\"><?php echo NAME?></th>
                <th class=\"cart-table__price-col\"><?php echo PRICE?></th>
                <?php if (!$Cart->cartType->no_amount) { ?>
                    <th class=\"cart-table__amount-col\"><?php echo AMOUNT?></th>
                    <th class=\"cart-table__sum-col\"><?php echo SUM?></th>
                <?php } ?>
                <th class=\"cart-table__actions-col\"></th>
              </tr>
            </thead>
            <tbody data-role=\"cart__body_main\">
              <?php $sum = $am = 0; foreach ($Cart->items as $row) { $row2 = new Material((int)$row->id); ?>
                <tr data-role=\"cart-item\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo number_format($row->realprice, 2, \'.\', \'\')?>\">
                  <td class=\"cart-table__image-col\">
                    <?php if ($row2->visImages) { ?>
                        <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\"\' : \'\'?>>
                          <img src=\"/<?php echo htmlspecialchars(addslashes($row2->visImages[0]->smallURL))?>\" style=\"max-width: 48px\" alt=\"<?php echo htmlspecialchars($row2->visImages[0]->name ?: $row->name)?>\" /></a>
                    <?php } ?>
                  </td>
                  <td class=\"cart-table__name-col\"><a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a></td>
                  <td data-role=\"price\" class=\"cart-table__price-col\">
                    <?php echo formatPrice($row->realprice)?> <span class=\"fa fa-rub\"></span>
                    <?php if ($Cart->cartType->no_amount) { ?>
                        <input type=\"hidden\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" value=\"<?php echo (int)$row->amount?>\" />
                    <?php } ?>
                  </td>
                  <?php if (!$Cart->cartType->no_amount) { ?>
                      <td class=\"cart-table__amount-col\"><input type=\"number\" class=\"form-control\" style=\"max-width: 8em\" data-role=\"amount\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" min=\"<?php echo (int)$row2->min ?: 1?>\" value=\"<?php echo (int)$row->amount?>\" /></td>
                      <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>
                  <?php } ?>
                  <td class=\"cart-table__actions-col\">
                    <a href=\"?action=delete&id=<?php echo (int)$row->id . ($row->meta ? \'&meta=\' . htmlspecialchars($row->meta) : \'\')?>\" data-role=\"delete-item\">
                      <i class=\"fa fa-remove\" title=\"<?php echo DELETE?>\"></i>
                    </a>
                  </td>
                </tr>
              <?php $sum += $row->amount * $row->realprice; $am += $row->amount; } ?>
			</tbody>
			<tbody>
              <?php if ($Form->id) { ?>
                  <tr>
                    <th colspan=\"<?php echo !$Cart->cartType->no_amount ? \'3\' : \'2\'?>\"><?php echo TOTAL_SUM?>:</th>
                    <?php if (!$Cart->cartType->no_amount) { ?>
                        <th class=\"cart-table__amount-col\"><span data-role=\"total-amount\"><?php echo (int)$am; ?></span></td>
                    <?php } ?>
                    <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>
                    <th class=\"cart-table__actions-col\"></th>
                  </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
        <?php if ($Form->id) { ?>
            <div class=\"form-horizontal\">
              <?php include Package::i()->resourcesDir . \'/form2.inc.php\'?>
              <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>
                <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>><?php echo FEEDBACK_SUCCESSFULLY_SENT?></div>
                <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
                  <ul>
                    <?php foreach ((array)$localError as $key => $val) { ?>
                        <li><?php echo htmlspecialchars($val)?></li>
                    <?php } ?>
                  </ul>
                </div>
              </div>

              <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>
                <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>
                <?php if ($Form->signature) { ?>
                      <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />
                <?php } ?>
                <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name) { ?>
                      <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />
                <?php } ?>
                <?php foreach ($Form->fields as $row) { ?>
                    <div class=\"form-group\">
                      <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>
                      <div class=\"col-sm-9 col-md-4\">
                        <?php $getField($row, $DATA); ?>
                      </div>
                    </div>
                <?php } ?>
                <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name) { ?>
                    <div class=\"form-group\">
                      <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo CAPTCHA?></label>
                      <div class=\"col-sm-9 col-md-4\">
                        <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />
                        <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" />
                      </div>
                    </div>
                <?php } ?>
                <?php if ($Block->EPay_Interface->id && !$Form->fields[\'epay\']) { ?>
                    <div class=\"form-group\">
                      <label for=\"name\" class=\"control-label col-sm-3 col-md-2\"><?php echo PAYMENT_METHOD?></label>
                      <div class=\"col-sm-9 col-md-4\">
                        <label><input type=\"radio\" name=\"epay\" value=\"0\" <?php echo !$DATA[\'epay\'] ? \'checked=\"checked\"\' : \'\'?> /> <?php echo PAY_ON_DELIVERY?></label>
                        <label><input type=\"radio\" name=\"epay\" value=\"1\" <?php echo $DATA[\'epay\'] ? \'checked=\"checked\"\' : \'\'?> /> <?php echo PAY_BY_EPAY?></label>
                      </div>
                    </div>
                <?php } ?>
                <div class=\"form-group\">
                  <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button></div>
                </div>
              </div>
            </div>
        <?php } else { ?>
          <p><a href=\"?action=clear\" data-role=\"clear-cart-trigger\"><?php echo CLEAR_FAVORITES?></a></p>
        <?php } ?>
      </form>
    </div>
    <script src=\"/js/cart.js\"></script>
<?php
} else {
    if ($Form->id) {
        echo YOUR_CART_IS_EMPTY;
    } else {
        echo YOUR_FAVORITES_IS_EMPTY;
    }
}
?>
', '0'),
('33', '2', 'robokassa', 'ROBOKASSA', '<?php
namespace RAAS\\CMS\\Shop;

use \\RAAS\\CMS\\Material;
use \\RAAS\\CMS\\Package;

if ($success[(int)$Block->id] || $localError) {
    ?>
    <div class=\"notifications\">
      <?php if ($success[(int)$Block->id]) { ?>
          <div class=\"alert alert-success\"><?php echo htmlspecialchars($success[(int)$Block->id])?></div>
      <?php } elseif ($localError) { ?>
          <div class=\"alert alert-danger\">
            <ul>
              <?php foreach ((array)$localError as $key => $val) { ?>
                  <li><?php echo htmlspecialchars($val)?></li>
              <?php } ?>
            </ul>
          </div>
      <?php } ?>
    </div>
<?php } ?>
<?php if ($Item->id) { ?>
    <section class=\"cart\">
      <h2><?php echo htmlspecialchars(sprintf(ORDER_NUM, (int)$Item->id, $_SERVER[\'HTTP_HOST\']))?></h2>
      <table class=\"table table-striped cart-table\" data-role=\"cart-table\">
        <thead>
          <tr>
            <th class=\"cart-table__image-col\"><?php echo IMAGE?></th>
            <th class=\"cart-table__name-col\"><?php echo NAME?></th>
            <th class=\"cart-table__price-col\"><?php echo PRICE?></th>
            <th class=\"cart-table__amount-col\"><?php echo AMOUNT?></th>
            <th class=\"cart-table__sum-col\"><?php echo SUM?></th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($Item->items as $row) { $row2 = new Material((int)$row->id); ?>
            <tr data-role=\"cart-item\">
              <td class=\"text-center cart-table__image-col\">
                <?php if ($row2->visImages) { ?>
                    <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\" target=\"_blank\"\' : \'\'?>>
                      <img src=\"/<?php echo htmlspecialchars(addslashes($row2->visImages[0]->tnURL))?>\" style=\"max-width: 48px\" alt=\"<?php echo htmlspecialchars($row2->visImages[0]->name ?: $row->name)?>\" target=\"_blank\" /></a>
                <?php } ?>
              </td>
              <td class=\"cart-table__name-col\">
                <a <?php echo $row2->url ? \'href=\"\' . htmlspecialchars($row2->url) . \'\" target=\"_blank\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a>
              </td>
              <td data-role=\"price\" class=\"cart-table__price-col\">
                <?php echo formatPrice($row->realprice)?> <span class=\"fa fa-rub\"></span>
              </td>
              <td class=\"cart-table__amount-col\"><?php echo (int)$row->amount?></td>
              <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>
            </tr>
          <?php } ?>
          <tr>
            <th colspan=\"3\"><?php echo TOTAL_SUM?>:</th>
            <th class=\"cart-table__amount-col\"><span data-role=\"total-amount\"><?php echo (int)$Item->count; ?></span></td>
            <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($Item->sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>
          </tr>
        </tbody>
      </table>
      <div class=\"form-horizontal\">
        <div data-role=\"feedback-form\">
          <div class=\"form-group\">
            <label class=\"control-label col-sm-3 col-md-2\"><?php echo YOUR_ORDER_ID?></label>
            <div class=\"col-sm-9 col-md-4\"><strong><?php echo (int)$Item->id?></strong></div>
          </div>
          <?php foreach ($Item->fields as $row) { ?>
              <div class=\"form-group\">
                <label class=\"control-label col-sm-3 col-md-2\"><?php echo htmlspecialchars($row->name)?></label>
                <div class=\"col-sm-9 col-md-4\"><?php echo htmlspecialchars($Item->fields[$row->urn]->doRich())?></div>
              </div>
          <?php } ?>
          <?php if ($requestForPayment) { ?>
              <div class=\"form-group\">
                <form action=\"<?php echo htmlspecialchars($paymentURL)?>\" method=\"post\" enctype=\"multipart/form-data\">
                  <input type=\"hidden\" name=\"MrchLogin\" value=\"<?php echo htmlspecialchars($Block->epay_login)?>\" />
                  <input type=\"hidden\" name=\"OutSum\" value=\"<?php echo number_format((float)$Item->sum, 2, \'.\', \'\')?>\" />
                  <input type=\"hidden\" name=\"InvId\" value=\"<?php echo (int)$Item->id?>\" />
                  <input type=\"hidden\" name=\"Desc\" value=\"<?php echo sprintf(ORDER_NUM, (int)$Item->id, $_SERVER[\'HTTP_HOST\'])?>\" />
                  <input type=\"hidden\" name=\"SignatureValue\" value=\"<?php echo htmlspecialchars($crc)?>\" />
                  <?php if (!$Block->epay_test && $Block->epay_currency && ($Block->epay_currency != \'RUR\')) { ?>
                      <input type=\"hidden\" name=\"OutSumCurrency\" value=\"<?php echo htmlspecialchars($Block->epay_currency)?>\" />
                  <?php } ?>
                  <input type=\"hidden\" name=\"Culture\" value=\"<?php echo htmlspecialchars($Page->lang)?>\" />
                  <input type=\"hidden\" name=\"Encoding\" value=\"UTF-8\" />
                  <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo PAY?></button></div>
                </form>
              </div>
          <?php } ?>
        </div>
      </div>
    </section>
<?php } ?>
', '0'),
('34', '2', 'yml', 'Яндекс.Маркет', '<?php
namespace RAAS\\CMS\\Shop;

use \\DOMDocument;

header(\'Content-Type: application/xml\');
// echo $yml->asXML();
// $dom = new DOMDocument(\'1.0\');
// $dom->preserveWhiteSpace = false;
// $dom->formatOutput = true;
// $dom->loadXML($yml->asXML());
// echo $dom->saveXML();
', '0'),
('35', '2', 'item_inc', 'Блок товара', '<?php
namespace RAAS\\CMS\\Shop;

$formatPrice = function($price) {
    $remainder = (float)$price - (float)(int)$price;
    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));
};

$showItem = function($row) use ($formatPrice)
{
    ?>
    <div class=\"catalog-item\">
      <div class=\"catalog-item__title\">
        <a href=\"<?php echo $row->url?>\"><?php echo htmlspecialchars($row->name)?></a>
      </div>
      <?php if ($row->article) { ?>
          <div class=\"catalog-item__article\">
            <?php echo ARTICLE_SHORT?>
            <a href=\"<?php echo $row->url?>\"><?php echo htmlspecialchars($row->article)?></a>
          </div>
      <?php } ?>
      <a href=\"<?php echo $row->url?>\" class=\"catalog-item__image<?php echo !$row->visImages ? \' catalog-item__image_nophoto\' : \'\'?>\">
        <?php if ($row->visImages) { ?>
            <img src=\"/<?php echo htmlspecialchars(addslashes($row->visImages[0]->smallURL))?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" />
        <?php } ?>
      </a>
      <form action=\"/cart/\" class=\"catalog-item__controls\" data-role=\"add-to-cart-form\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo (int)$row->price?>\">
        <?php if ($row->available) { ?>
            <input type=\"hidden\" name=\"action\" value=\"add\" />
            <input type=\"hidden\" name=\"id\" value=\"<?php echo (int)$row->id?>\" />
            <input type=\"hidden\" name=\"back\" value=\"1\" />
            <?php /* <input type=\"hidden\" name=\"amount\" value=\"1\" /> */?>
        <?php } ?>
        <div class=\"catalog-item__text\">
          <div class=\"catalog-item__price-container\" data-price=\"<?php echo (float)$row->price?>\">
            <?php if ($row->price_old && ($row->price_old != $row->price)) { ?>
                <span class=\"catalog-item__price catalog-item__price_old\"><?php echo $formatPrice((float)$row->price_old)?></span>
            <?php } ?>
            <span class=\"catalog-item__price <?php echo ($row->price_old && ($row->price_old != $row->price)) ? \' catalog-item__price_new\' : \'\'?>\">
              <span data-role=\"price-container\">
                <?php echo $formatPrice((float)$row->price)?>
              </span>
              <i class=\"fa fa-rub\"></i>
            </span>
          </div>
          <div class=\"catalog-item__available\"><?php echo $row->available ? \'<span class=\"text-success\">В наличии</span>\' : \'<span class=\"text-danger\">Под заказ</span>\'?></div>
        </div>
        <div class=\"catalog-item__read-more\">
          <!--noindex-->
          <div class=\"catalog-item__add-to-cart\">
            <?php if ($row->available) { ?>
                <input type=\"number\" class=\"form-control\" autocomplete=\"off\" name=\"amount\" min=\"<?php echo (int)$row->min ?: 1?>\" step=\"<?php echo (int)$row->step ?: 1?>\" value=\"<?php echo (int)$row->min ?: 1?>\" />
                <button type=\"submit\" class=\"btn btn-danger\" title=\"<?php echo TO_CART?>\"><span class=\"fa fa-shopping-cart\"></span></button>
                <?php /* <a href=\"/cart/?action=add&id=<?php echo (int)$row->id?>\" class=\"btn btn-danger\" data-role=\"add-to-cart-trigger\" data-id=\"<?php echo (int)$row->id?>\" data-price=\"<?php echo (int)$row->price?>\" title=\"<?php echo TO_CART?>\" data-active-title=\"<?php echo DELETE_FROM_CART?>\"><span class=\"fa fa-shopping-cart\"></span></a> */ ?>
            <?php } ?>
            <a href=\"/favorites/?action=add&id=<?php echo (int)$row->id?>\" class=\"btn btn-info\" data-role=\"add-to-favorites-trigger\" data-id=\"<?php echo (int)$row->id?>\" title=\"<?php echo TO_FAVORITES?>\" data-active-title=\"<?php echo DELETE_FROM_FAVORITES?>\" rel=\"nofollow\"><span class=\"fa fa-star\"></span></a>
          </div>
          <!--/noindex-->
        </div>
      </form>
    </div>
    <?php
};
', '0'),
('36', '2', 'category_inc', 'Блок категории', '<?php
namespace RAAS\\CMS\\Shop;

$showCategory = function($row)
{
    $queryString = http_build_query(array_intersect_key($_GET, array_flip(array(\'brand\', \'model\', \'engine\'))));
    $queryString = $queryString ? \'?\' . $queryString : \'\';
    ?>
    <a class=\"catalog-category\" href=\"<?php echo $row->url . $queryString ?>\">
      <div class=\"catalog-category__image<?php echo !$row->image->id ? \' catalog-category__image_nophoto\' : \'\'?>\">
        <?php if ($row->image->id) { ?>
            <img src=\"/<?php echo htmlspecialchars(addslashes($row->image->smallURL))?>\" alt=\"<?php echo htmlspecialchars($row->image->name ?: $row->name)?>\" />
        <?php } ?>
      </div>
      <div class=\"catalog-category__text\">
        <div class=\"catalog-category__title\">
          <?php echo htmlspecialchars($row->name . ((int)$row->counter ? \' (\' . (int)$row->counter . \')\' : \'\'))?>
        </div>
      </div>
    </a>
    <?php
};
', '0'),
('37', '2', 'catalog', 'Каталог продукции', '<?php
namespace RAAS\\CMS;

use RAAS\\CMS\\Shop\\Video;
use RAAS\\Attachment;

eval(\'?\' . \'>\' . Snippet::importByURN(\'category_inc\')->description);
eval(\'?\' . \'>\' . Snippet::importByURN(\'item_inc\')->description);
eval(\'?\' . \'>\' . Snippet::importByURN(\'file_inc\')->description);
$formatPrice = function($price) {
    $remainder = (float)$price - (float)(int)$price;
    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));
};


if ($Item) {
    ?>
    <div class=\"catalog\">
      <div class=\"catalog-article\" itemscope itemtype=\"http://schema.org/Product\">
        <meta itemprop=\"name\" content=\"<?php echo htmlspecialchars($Item->name)?>\" />
        <div class=\"catalog-article__article\">
          <?php echo ARTICLE_SHORT?> <span itemprop=\"productID\"><?php echo htmlspecialchars($Item->article)?></span>
        </div>
        <div class=\"row\">
          <?php if ($Item->visImages) { ?>
              <div class=\"col-sm-6 col-lg-5\">
                <div class=\"catalog-article__images-container\">
                  <div class=\"catalog-article__image\">
                    <?php for ($i = 0; $i < count($Item->visImages); $i++) { ?>
                        <a itemprop=\"image\" href=\"/<?php echo $Item->visImages[$i]->fileURL?>\" <?php echo $i ? \'style=\"display: none\"\' : \'\'?> data-image-num=\"<?php echo (int)$i?>\" data-lightbox-gallery=\"g\">
                          <img src=\"/<?php echo htmlspecialchars($Item->visImages[$i]->tnURL)?>\" alt=\"<?php echo htmlspecialchars($Item->visImages[$i]->name ?: $row->name)?>\" /></a>
                    <?php } ?>
                  </div>
                  <?php if (count($Item->visImages) > 1) { ?>
                      <div class=\"catalog-article__images hidden-xs\">
                        <?php for ($i = 0; $i < count($Item->visImages); $i++) { $row = $Item->visImages[$i]; ?>
                            <div data-href=\"/<?php echo htmlspecialchars(addslashes($row->fileURL))?>\" class=\"catalog-article__additional-image\" data-image-num=\"<?php echo (int)$i?>\">
                              <img src=\"/<?php echo htmlspecialchars($row->tnURL)?>\" alt=\"<?php echo htmlspecialchars($row->name)?>\" /></div>
                        <?php } ?>
                      </div>
                  <?php } ?>
                </div>
              </div>
          <?php } ?>
          <div class=\"col-sm-6 col-lg-7\">
            <div class=\"catalog-article__details\">
              <div itemprop=\"offers\" itemscope itemtype=\"http://schema.org/Offer\">
                <div class=\"catalog-article__text\">
                  <div class=\"catalog-article__price-container\" data-price=\"<?php echo (float)$Item->price?>\">
                    <?php if ($Item->price_old && ($Item->price_old != $Item->price)) { ?>
                        <span class=\"catalog-article__price catalog-article__price_old\"><?php echo $formatPrice((float)$Item->price_old)?></span>
                    <?php } ?>
                    <span class=\"catalog-article__price <?php echo ($Item->price_old && ($Item->price_old != $Item->price)) ? \' catalog-article__price_new\' : \'\'?>\">
                      <span data-role=\"price-container\" itemprop=\"price\" content=\"<?php echo (float)$Item->price?>\">
                        <?php echo $formatPrice((float)$Item->price)?>
                      </span>
                      <i class=\"fa fa-rub\" itemprop=\"priceCurrency\" content=\"RUB\"></i>
                    </span>
                  </div>
                </div>
                <div class=\"catalog-article__available\">
                  <link itemprop=\"availability\" href=\"http://schema.org/<?php echo $Item->available ? \'InStock\' : \'PreOrder\'?>\" />
                  <?php echo $Item->available ? \'<span class=\"text-success\">\' . AVAILABLE . \'</span>\' : \'<span class=\"text-danger\">\' . AVAILABLE_CUSTOM . \'</span>\'?>
                </div>
              </div>
              <!--noindex-->
              <form action=\"/cart/\" class=\"catalog-article__controls\" data-role=\"add-to-cart-form\" data-id=\"<?php echo (int)$Item->id?>\" data-price=\"<?php echo (int)$Item->price?>\">
                <?php if ($Item->available) { ?>
                    <input type=\"hidden\" name=\"action\" value=\"add\" />
                    <input type=\"hidden\" name=\"id\" value=\"<?php echo (int)$Item->id?>\" />
                    <input type=\"hidden\" name=\"back\" value=\"1\" />
                    <input type=\"number\" class=\"form-control\" autocomplete=\"off\" name=\"amount\" min=\"<?php echo (int)$Item->min ?: 1?>\" step=\"<?php echo (int)$Item->step ?: 1?>\" value=\"<?php echo (int)$Item->min ?: 1?>\" />
                    <button type=\"submit\" class=\"btn btn-danger\"><?php echo TO_CART?></button>
                    <?php /* <a href=\"/cart/?action=add&id=<?php echo (int)$Item->id?>\" class=\"btn btn-danger\" data-role=\"add-to-cart-trigger\" data-id=\"<?php echo (int)$Item->id?>\" data-price=\"<?php echo (int)$Item->price?>\" data-active-html=\"<?php echo DELETE_FROM_CART?>\"><?php echo TO_CART?></button> */ ?>
                <?php } ?>
                <a href=\"/favorites/?action=add&id=<?php echo (int)$Item->id?>\" class=\"btn btn-info\" data-role=\"add-to-favorites-trigger\" data-id=\"<?php echo (int)$Item->id?>\" data-active-html=\"<?php echo DELETE_FROM_FAVORITES?>\" rel=\"nofollow\"><?php echo TO_FAVORITES?></a>
              </form>
              <!--/noindex-->
              <!--noindex-->
              <div class=\"share\">
                <script type=\"text/javascript\" src=\"//yastatic.net/share/share.js\" charset=\"utf-8\"></script>
                <?php echo SHARE?>: <div class=\"yashare-auto-init\" style=\"display: inline-block; vertical-align: middle\" data-yashareL10n=\"ru\" data-yashareQuickServices=\"vkontakte,facebook,twitter,odnoklassniki,moimir\" data-yashareTheme=\"counter\"></div>
              </div>
              <!--/noindex-->
              <?php
              $propsText = \'\';
              $brands = $models = array();
              foreach ((array)$Item->model as $val) {
                  $brands[$val->brand->id] = $val->brand->name;
                  $models[$val->id] = $val->name;
              }
              unset($temp);
              foreach ($Item->fields as $key => $val) {
                  if (
                      !in_array(
                          $val->urn,
                          array(\'images\', \'brief\', \'videos\', \'videos_url\', \'files\', \'onmain\', \'article\', \'price\', \'price_old\', \'available\', \'min\', \'step\')
                      ) &&
                      !in_array($val->datatype, array(\'image\', \'file\', \'material\', \'checkbox\'))
                  ) {
                      if ($val->doRich()) {
                          $v = implode(\', \', array_map(function($x) use ($val) { return $val->doRich($x); }, $val->getValues(true)));
                          switch ($key) {
                              case \'width\': case \'height\':
                                  $propsText .= \' <tr>
                                                    <th>\' . htmlspecialchars($val->name) . \': </th>
                                                    <td itemprop=\"<?php echo $key?>\" itemtype=\"http://schema.org/QuantitativeValue\">
                                                      <span itemprop=\"value\">\' . $v . \'</span>
                                                    </td>
                                                  </tr>\';
                                  break;
                              case \'article\':
                                  $propsText .= \' <tr>
                                                    <th>\' . htmlspecialchars($val->name) . \': </th>
                                                    <td itemprop=\"productID\">\' . $val[\'doRich\'] . \'</td>
                                                  </tr>\';
                                  break;
                              case \'brand\':
                                  $propsText .= \' <tr>
                                                    <th>\' . htmlspecialchars($val->name) . \': </th>
                                                    <td itemprop=\"brand\" itemscope itemtype=\"http://schema.org/Brand\">
                                                      <span itemprop=\"name\">\' . $v . \'</span>
                                                    </td>
                                                  </tr>\';
                                  break;
                              default:
                                  $propsText .= \' <tr itemprop=\"additionalProperty\" itemscope itemtype=\"http://schema.org/PropertyValue\">
                                                    <th itemprop=\"name\">\' . htmlspecialchars($val->name) . \': </th>
                                                    <td itemprop=\"value\">\' . $v . \'</td>
                                                  </tr>\';
                                  break;
                          }
                      }
                  }
              }
              if ($propsText) {
                  echo \'<div class=\"catalog-article__props\">
                          <table class=\"table table-striped\"><tbody>\' . $propsText . \'</tbody></table>
                        </div>
                        <div class=\"clearfix\"></div>\';
              }
              ?>
            </div>
          </div>
        </div>
        <?php
        $tabs = array();
        foreach (array(\'description\', \'files\', \'videos\', \'reviews\', \'related\') as $key) {
            $text = \'\';
            $name = $Item->fields[$key]->name;
            switch ($key) {
                case \'description\':
                    $name = DESCRIPTION;
                    $text = \'<div itemprop=\"description\">\' . trim($Item->description) . \'</div>\';
                    break;
                case \'files\':
                    if ($Item->files) {
                        $text = \'<div class=\"catalog-article__files\">\';
                        foreach ($Item->files as $file) {
                            $text .= \'<div class=\"catalog-article__file\">
                                        <a href=\"/\' . htmlspecialchars($file->fileURL) . \'\">\'
                                  .  \'    <span class=\"fa \' . $getFileIcon($file) . \'\"></span> \'
                                  .       htmlspecialchars($file->name ?: basename($file->fileURL))
                                  . \'   </a>
                                      </div>\';
                        }
                        $text .= \'</div>\';
                    }
                    break;
                case \'videos\':
                    if ($Item->videos) {
                        $text .= \'<div class=\"catalog-article__videos\">\';
                        for ($i = 0; $i < (count($Item->videos) / 4); $i++) {
                            $text .= \'<div class=\"row\">\';
                            for ($j = $i * 4; $j < ($i + 1) * 4; $j++) {
                                if ($val = $Item->videos[$j]) {
                                    $ytid = $ytname = \'\';
                                    if (preg_match(\'/^(.*?)((http(s?):\\\\/\\\\/.*?(((\\\\?|&)v=)|(embed\\\\/)|(youtu\\\\.be\\\\/)))([\\\\w\\\\-\\\\_]+).*?)$/\', $val, $regs)) {
                                        $ytname = trim($regs[1]);
                                        $ytid = trim($regs[10]);
                                    }
                                    if (!$ytname) {
                                        $url = \'https://www.googleapis.com/youtube/v3/videos?part=snippet&id=\' . $ytid . \'&key=AIzaSyCJgMFQqq6Ax9WlGhuslTz4viyG3RbPEic\';
                                        $json = file_get_contents($url);
                                        $json = json_decode($json, true);
                                        if (isset($json[\'items\'][0][\'snippet\'][\'title\'])) {
                                            $ytname = trim($json[\'items\'][0][\'snippet\'][\'title\']);
                                        }
                                    }
                                    $text .= \'<div class=\"col-sm-3\">
                                                <div class=\"catalog-article__video\">
                                                  <a href=\"https://youtube.com/embed/\' . $ytid . \'\" data-lightbox-gallery=\"v\" title=\"\' . htmlspecialchars($ytname) . \'\">
                                                    <img src=\"https://i.ytimg.com/vi/\' . htmlspecialchars($ytid) . \'/hqdefault.jpg\" alt=\"\' . htmlspecialchars($ytname) . \'\">
                                                  </a>
                                                </div>
                                              </div>\';

                                }
                            }
                            $text .= \'</div>\';
                        }
                        $text .= \'</div>\';
                    }
                    break;
                case \'reviews\':
                    $name = REVIEWS . ($comments ? \' (\' . count($comments) . \')\' : \'\');
                    ob_start();
                    if ($comments) {
                        eval(\'?\' . \'>\' . Snippet::importByURN(\'goods_comments\')->description);
                    }
                    if ($commentFormBlock) {
                        $commentFormBlock->process($Page);
                    }
                    $text .= ob_get_clean();
                    break;
                case \'related\':
                    if ($Item->related) {
                        $text .= \'<div class=\"row catalog-list catalog-list_related\">\';
                        foreach ($Item->related as $row) {
                            $text .= \'<div class=\"catalog-list__item\">\';
                            ob_start();
                            $showItem($row);
                            $text .= ob_get_clean();
                            $text .= \'</div>\';
                        }
                        $text .= \'</div>\';
                    }
                    break;
            }
            if ($text) {
                $tabs[$key] = array(\'name\' => $name, \'description\' => $text);
            }
        }
        if ($tabs) {
            ?>
            <ul class=\"nav nav-tabs\" role=\"tablist\">
              <?php $i = 0; foreach ($tabs as $key => $row) { ?>
                  <li<?php echo !$i ? \' class=\"active\"\' : \'\'?>>
                    <a href=\"#<?php echo $key?>\" aria-controls=\"<?php echo $key?>\" role=\"tab\" data-toggle=\"tab\">
                      <?php echo htmlspecialchars($row[\'name\'])?>
                    </a>
                  </li>
              <?php $i++; } ?>
            </ul>
            <div class=\"tab-content\" style=\"padding: 15px 0;\">
              <?php $i = 0; foreach ($tabs as $key => $row) { ?>
                  <div class=\"tab-pane<?php echo !$i ? \' active\' : \'\'?>\" id=\"<?php echo $key?>\"><?php echo $row[\'description\']?></div>
              <?php $i++; } ?>
            </div>
        <?php } ?>
      </div>
    </div>
<?php } else { ?>
    <div class=\"catalog\">
      <?php if ($Page->pid) { ?>
          <div class=\"catalog__filter\">
            <?php eval(\'?\' . \'>\' . Snippet::importByURN(\'catalog_filter\')->description)?>
          </div>
          <?php
      }
      ?>
      <div class=\"catalog__inner\">
        <?php
        if ($Set || $subCats) {
            if ($subCats) {
                ?>
                <div class=\"catalog__categories-list\">
                  <div class=\"catalog-categories-list\">
                    <?php foreach ($subCats as $row) { ?>
                        <div class=\"catalog-categories-list__item\">
                          <?php $showCategory($row);?>
                        </div>
                    <?php } ?>
                  </div>
                </div>
                <?php
            }
            if ($Set) {
                ?>
                <div class=\"catalog__list\">
                  <div class=\"catalog-list\">
                    <?php foreach ($Set as $row) { ?>
                        <div class=\"catalog-list__item\">
                          <?php $showItem($row)?>
                        </div>
                    <?php } ?>
                  </div>
                </div>
            <?php } ?>
        <?php } else { ?>
            <p><?php echo NO_RESULTS_FOUND?></p>
        <?php } ?>
      </div>
      <?php
      if ($Set) {
          include \\RAAS\\CMS\\Package::i()->resourcesDir . \'/pages.inc.php\';
          if ($Pages->pages > 1) {
              ?>
              <div data-pages=\"<?php echo $Pages->pages?>\">
                <ul class=\"pagination pull-right\">
                  <?php
                  echo $outputNav(
                      $Pages,
                      array(
                          \'pattern\' => \'<li><a href=\"\' . \\SOME\\HTTP::queryString(\'page={link}\') . \'\">{text}</a></li>\',
                          \'pattern_active\' => \'<li class=\"active\"><a>{text}</a></li>\',
                          \'ellipse\' => \'<li class=\"disabled\"><a>...</a></li>\'
                      )
                  );
                  ?>
                </ul>
              </div>
              <div class=\"clearfix\"></div>
          <?php } ?>
      <?php } ?>
    </div>
<?php } ?>
', '0');
INSERT INTO `cms_snippets` (`id`, `pid`, `urn`, `name`, `description`, `locked`) VALUES 
('38', '2', 'catalog_filter', 'Фильтр каталога', '<?php
namespace RAAS\\CMS;

$mt = microtime(1);
$DATA = $_GET;
$MType = Material_Type::importByURN(\'catalog\');
$cc = new Catalog_Cache($MType);
if (!$cc->load()) {
    $cc->getCache();
    $cc->save();
}
$cc = $cc->data;
$cc = array_filter($cc, function($x) use ($Page) { return array_intersect(array_merge(array($Page->id), (array)$Page->all_children_ids), (array)$x[\'pages_ids\']); });

$filterProps = array(/*\'example\' => \'Пример\', */);
$filterRaw = array();
$filter = array();

// $dictionaryExample = new Dictionary(1);
// $dictionaryExample = $dictionaryExample->children;
// foreach ($dictionaryExample as $row) {
//     $filterRaw[\'example\'][] = array(\'value\' => $row->urn, \'name\' => $row->name);
// }


foreach ($filterRaw as $key => $arr) {
    $filterSet = $cc;
    foreach ($filterProps as $key2 => $name) {
        if (($key2 != $key) && $DATA[$key2]) {
            $filterSet = array_filter(
                $filterSet,
                function ($x) use ($key2, $DATA) {
                    return $x[$key2] == $DATA[$key2];
                }
            );
        }
    }
    $filterSet = array_map(
        function ($x) use ($key) {
            return $x[$key];
        },
        $filterSet
    );
    $filter[$key] = array_filter(
        $arr,
        function ($x) use ($filterSet) {
            return in_array($x[\'value\'], $filterSet);
        }
    );
}

$maxPrice = array_map(
    function ($x) {
        return (int)$x[\'price\'];
    },
    $cc
);
$maxPrice = max($maxPrice);
$priceStep = 1000;
$maxPrice = ceil($maxPrice / (int)$priceStep) * (int)$priceStep;
if ($DATA[\'price_to\'] && $DATA[\'price_to\'] > $maxPrice) {
    $DATA[\'price_to\'] = $maxPrice;
}
$price1 = floor($DATA[\'price_from\'] / (int)$priceStep) * (int)$priceStep;
$price2 = ceil(($DATA[\'price_to\'] ?: $maxPrice) / (int)$priceStep) * (int)$priceStep;

// echo microtime(1) - $mt;
?>
<!--noindex-->
<div class=\"catalog-filter\">
  <form action=\"\" method=\"get\" data-page-id=\"<?php echo (int)$Page->id?>\">
    <div class=\"row\">
      <div class=\"col-sm-3\">
        <div><label><?php echo ARTICLE?></label></div>
        <div class=\"catalog-filter__property\">
          <input type=\"text\" class=\"form-control\" name=\"article\" placeholder=\"Артикул\" value=\"<?php echo htmlspecialchars($_GET[\'article\'])?>\">
        </div>
      </div>
      <div class=\"col-sm-4\">
        <div><label><?php echo PRICE?></label></div>
        <div class=\"catalog-filter__property catalog-filter__price\">
          <div class=\"row\">
            <div class=\"col-xs-1\">от</div>
            <div class=\"col-xs-5\"><input type=\"number\" class=\"form-control\" min=\"0\" max=\"<?php echo (int)$maxPrice?>\" step=\"<?php echo (int)$priceStep?>\" name=\"price_from\" placeholder=\"От\" value=\"<?php echo htmlspecialchars($price1)?>\"></div>
            <div class=\"col-xs-1\">до</div>
            <div class=\"col-xs-5\"><input type=\"number\" class=\"form-control\" min=\"0\" max=\"<?php echo (int)$maxPrice?>\" step=\"<?php echo (int)$priceStep?>\" name=\"price_to\" placeholder=\"До\" value=\"<?php echo htmlspecialchars($price2)?>\"></div>
          </div>
          <div class=\"catalog-filter__slider\" id=\"catalog-filter__slider\"></div>
        </div>
      </div>
      <div class=\"col-sm-3\">
        <div class=\"hidden-xs\"><label>&nbsp;</label></div>
        <div class=\"catalog-filter__property catalog-filter__property_search\">
          <button type=\"submit\" class=\"btn btn-primary\"><?php echo DO_SEARCH?></button>
          <a href=\"<?php echo htmlspecialchars($Page->url)?>\" class=\"btn btn-default\"><?php echo RESET?></a>
        </div>
      </div>
    </div>
    <div class=\"row\">
      <div class=\"col-sm-3\"></div>
      <div class=\"col-sm-4\"></div>
      <div class=\"col-sm-1\"></div>
    </div>
  </form>
  <script src=\"/js/catalog_filter.js\"></script>
</div>
<!--/noindex-->
', '0'),
('39', '2', 'cart_main', 'Информер корзины', '<?php
namespace RAAS\\CMS\\Shop;

?>
<!--noindex-->
<a href=\"/cart/\" data-role=\"cart-block\" class=\"cart-main\" style=\"display: none\" rel=\"nofollow\">
  <?php echo IN_YOUR_CART?><br />
  <strong data-role=\"cart-block-amount\"></strong><br />
  <?php echo TO_AMOUNT_OF?> <strong data-role=\"cart-block-sum\"></strong> <i class=\"fa fa-rub\"></i>
</a>
<!--/noindex-->
', '0'),
('40', '2', 'favorites_main', 'Информер избранного', '<?php
namespace RAAS\\CMS\\Shop;

?>
<!--noindex-->
<a href=\"/favorites/\" data-role=\"favorites-block\" class=\"favorites-main\" style=\"display: none\" rel=\"nofollow\">
  <?php echo IN_FAVORITES?><br />
  <strong data-role=\"favorites-block-amount\"></strong>
</a>
<!--/noindex-->
', '0'),
('41', '2', 'menu_left', 'Левое меню', '<?php
namespace RAAS\\CMS;

use SOME\\HTTP;

$showMenu = function($node, Page $current) use (&$showMenu) {
    static $level = 0;
    if ($node instanceof Menu) {
        $children = $node->visSubMenu;
    } else {
        $children = (isset($node[\'children\']) && is_array($node[\'children\'])) ? $node[\'children\'] : array();
    }
    for ($i = 0; $i < count($children); $i++) {
        $row = $children[$i];
        $level++;
        $ch = $showMenu($row, $current);
        $level--;
        if ($node instanceof Menu) {
            $url = $row->url;
            $name = $row->name;
        } else {
            $url = $row[\'url\'];
            $name = $row[\'name\'];
        }
        $active = ($url == HTTP::queryString(\'\', true));
        $semiactive = preg_match(\'/^\' . preg_quote($url, \'/\') . \'/umi\', HTTP::queryString(\'\', true)) && ($url != \'/\') && !$active;
        if (preg_match(\'/class=\"[\\\\w\\\\- ]*?active[\\\\w\\\\- ]*?\"/umi\', $ch)) {
            $semiactive = true;
        }
        $liClasses = array(
            \'menu-left__item\',
            \'menu-left__item_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-left__item_level_\' . $level
        );
        $aClasses = array(
            \'menu-left__link\',
            \'menu-left__link_\' . (!$level ? \'main\' : \'inner\'),
            \'menu-left__link_level_\' . $level
        );
        if ($active) {
            $liClasses[] = \'menu-left__item_active\';
            $aClasses[] = \'menu-left__link_active\';
        } elseif ($semiactive) {
            $liClasses[] = \'menu-left__item_semiactive\';
            $aClasses[] = \'menu-left__link_semiactive\';
        }
        $text .= \'<li class=\"\' . implode(\' \', $liClasses) . \'\">\'
              .  \'  <a class=\"\' . implode(\' \', $aClasses) . \'\" \' . ($active ? \'\' : \' href=\"\' . htmlspecialchars($url) . \'\"\') . \'>\' . htmlspecialchars($name) . \'</a>\'
              .     $ch
              .  \'</li>\';
    }
    $ulClasses = array(
        \'menu-left__list\',
        \'menu-left__list_\' . (!$level ? \'main\' : \'inner\'),
        \'menu-left__list_level_\' . $level
    );
    return $text ? \'<ul class=\"\' . implode(\' \', $ulClasses) . \'\">\' . $text . \'</ul>\' : $text;
};
?>
<div class=\"menu-left__outer left-block\">
  <div class=\"menu-left__title left-block__title\">
    <a href=\"/catalog/\"><?php echo CATALOG?></a>
  </div>
  <nav class=\"menu-left\"><?php echo $showMenu($menuArr ?: $Item, $Page)?></nav>
</div>
', '0'),
('42', '2', 'file_inc', 'Блок файла', '<?php
namespace RAAS\\CMS\\Shop;

$getFileIcon = function($row)
{
    $ext = pathinfo($row->fileURL, PATHINFO_EXTENSION);
    switch ($ext) {
        case \'zip\': case \'rar\': case \'tar\': case \'gz\': case \'7z\':
            $icon = \'archive\';
            break;
        case \'mp3\': case \'wav\': case \'ogg\': case \'mid\': case \'rmi\':
            $icon = \'audio\';
            break;
        case \'php\': case \'html\': case \'cs\': case \'class\': case \'inc\': case \'js\': case \'css\':
            $icon = \'code\';
            break;
        case \'jpg\': case \'gif\': case \'jpeg\': case \'pjpeg\': case \'bmp\': case \'tif\': case \'tiff\':
            $icon = \'picture\';
            break;
        case \'pdf\':
            $icon = \'pdf\';
            break;
        case \'ppt\': case \'pptx\':
            $icon = \'powerpoint\';
            break;
        case \'avi\': case \'mpg\': case \'flv\':
            $icon = \'video\';
            break;
        case \'doc\': case \'docx\': case \'rft\':
            $icon = \'word\';
            break;
        default:
            $icon = \'text\';
            break;
    }
    return \'fa-file-\' . htmlspecialchars($icon) . \'-o\';
};
', '0'),
('43', '2', 'spec', 'Спецпредложение', '<?php
namespace RAAS\\CMS;

$MType = Material_Type::importByURN(\'catalog\');
$Field = $MType->fields[\'spec\'];
$SQL_query = \"SELECT tM.* FROM \" . Material::_tablename() . \" AS tM
                JOIN cms_data AS tD ON tD.pid = tM.id
               WHERE tD.fid = \" . (int)$Field->id . \" AND tM.pid IN (\" . implode(\", \", array_merge(array((int)$MType->id), (array)$MType->all_children_ids)) . \")
            GROUP BY tM.id
            ORDER BY RAND()
               LIMIT 20\";
$Set = Material::getSQLSet($SQL_query);
eval(\'?\' . \'>\' . Snippet::importByURN(\'item_inc\')->description);
?>
<?php if ($Set) { ?>
    <div class=\"spec\">
      <div class=\"spec__list\" data-role=\"slider\" data-slider-carousel=\"jcarousel\" data-slider-duration=\"800\" data-slider-interval=\"3000\" data-slider-autoscroll=\"true\">
        <div class=\"spec-list\">
          <?php foreach ((array)$Set as $row) { ?>
              <div class=\"spec-list__item\">
                <?php $showItem($row); ?>
              </div>
          <?php } ?>
        </div>
      </div>
      <a href=\"#\" class=\"spec__arrow spec__arrow_left\" data-role=\"slider-prev\"></a>
      <a href=\"#\" class=\"spec__arrow spec__arrow_right\" data-role=\"slider-next\"></a>
    </div>
<?php } ?>
', '0'),
('44', '2', 'my_orders', 'Мои заказы', '<?php
namespace RAAS\\CMS\\Shop;

function formatPrice($price)
{
    $remainder = (float)$price - (float)(int)$price;
    return str_replace(\' \', \'&nbsp;\', number_format((float)$price, ($remainder > 0) ? 2 : 0, \',\', \' \' ));
}

$getField = function($row) {
    $arr = array();
    $val = $row->doRich();
    switch ($row->datatype) {
        case \'date\':
            $arr[$key] = date(DATEFORMAT, strtotime($val));
            break;
        case \'datetime-local\':
            $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
            break;
        case \'color\':
            $arr[$key] = \'<span style=\"display: inline-block; height: 16px; width: 16px; background-color: \' . htmlspecialchars($val) . \'\"></span>\';
            break;
        case \'email\':
            $arr[$key] .= \'<a href=\"mailto:\' . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
            break;
        case \'url\':
            $arr[$key] .= \'<a href=\"\' . (!preg_match(\'/^http(s)?:\\\\/\\\\//umi\', trim($val)) ? \'http://\' : \'\') . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
            break;
        case \'file\':
            $arr[$key] .= \'<a href=\"/\' . $val->fileURL . \'\">\' . htmlspecialchars($val->name) . \'</a>\';
            break;
        case \'image\':
            $arr[$key] .= \'<a href=\"/\' . $val->fileURL . \'\"><img src=\"/\' . $val->tnURL. \'\" alt=\"\' . htmlspecialchars($val->name) . \'\" title=\"\' . htmlspecialchars($val->name) . \'\" /></a>\';
            break;
        case \'htmlarea\':
            $arr[$key] = \'<div>\' . $val . \'</div>\';
            break;
        default:
            if (!$row->multiple && ($row->datatype == \'checkbox\')) {
                $arr[$key] = $val ? _YES : _NO;
            } else {
                $arr[$key] = nl2br(htmlspecialchars($val));
            }
            break;
    }
    return implode(\', \', $arr);
};

?>
<div class=\"my-orders\">
  <?php if ($Item) { ?>
      <?php if (!$Item->status_id && !$Item->paid && !$Item->vis) { ?>
          <p class=\"text-right\">
            <a href=\"#\" data-id=\"<?php echo (int)$Item->id?>\" data-toggle=\"modal\" data-target=\"#confirmDeleteOrderModal\"><span class=\"fa fa-close\"></span> Удалить заказ</a>
          </p>
      <?php } ?>
      <div class=\"form-horizontal\">
        <div data-role=\"feedback-form\">
          <div class=\"form-group\">
            <label class=\"control-label col-sm-3 col-md-2\" style=\"padding-top: 0\"><?php echo STATUS?>:</label>
            <div class=\"col-sm-9 col-md-4\"><?php echo $Item->paid ? PAYMENT_PAID : PAYMENT_NOT_PAID?></div>
          </div>
          <?php
          foreach ($Item->fields as $row) {
              if ($val = $getField($row)) {
                  ?>
                  <div class=\"form-group\">
                    <label class=\"control-label col-sm-3 col-md-2\" style=\"padding-top: 0\"><?php echo htmlspecialchars($row->name)?>:</label>
                    <div class=\"col-sm-9 col-md-4\"><?php echo $val?></div>
                  </div>
                  <?php
              }
          }
          ?>
        </div>
      </div>
      <p>&nbsp;</p>
      <table class=\"table table-striped cart-table\" data-role=\"cart-table\">
        <tbody>
          <?php $sum = $am = 0; foreach ($Item->items as $row) {?>
            <tr data-role=\"cart-item\">
              <td class=\"cart-table__image-col\">
                <?php if ($row->visImages) { ?>
                    <a <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>>
                      <img src=\"/<?php echo htmlspecialchars(addslashes($row->visImages[0]->tnURL))?>\" alt=\"<?php echo htmlspecialchars($row->visImages[0]->name ?: $row->name)?>\" /></a>
                <?php } ?>
              </td>
              <td class=\"cart-table__name-col\">
                <h3><a <?php echo $row->url ? \'href=\"\' . htmlspecialchars($row->url) . \'\"\' : \'\'?>><?php echo htmlspecialchars($row->name)?></a></h3>
                <?php if ($Cart->cartType->no_amount) { ?>
                    <input type=\"hidden\" name=\"amount[<?php echo htmlspecialchars((int)$row->id . \'_\' . $row->meta)?>]\" value=\"<?php echo (int)$row->amount?>\" />
                <?php } else { ?>
                    <p><?php echo AMOUNT . \': \' . (int)$row->amount?></p>
                    <?php
                }
                foreach ($row->fields as $f) {
                    if ($val = array_filter(array_map(array($f, \'doRich\'), $f->getValues(true)))) {
                        ?>
                        <p>
                          <?php echo htmlspecialchars($f->name)?>:
                          <?php
                          if (in_array($key, array(\'metal\'))) {
                              echo htmlspecialchars(mb_strtolower(implode(\', \', $val)));
                          } else {
                              echo htmlspecialchars(implode(\', \', $val));
                          }
                          ?>
                        </p>
                        <?php
                    }
                }
                ?>
              </td>
              <td class=\"cart-table__sum-col\"><span data-role=\"sum\"><?php echo formatPrice($row->amount * $row->realprice)?></span> <span class=\"fa fa-rub\"></span></td>
            </tr>
          <?php $sum += $row->amount * $row->realprice; $am += $row->amount; } ?>
          <tr>
            <th class=\"cart-table__image-col\"></th>
            <th class=\"cart-table__name-col\"><?php echo TOTAL_SUM?>:</th>
            <th class=\"cart-table__sum-col\"><span data-role=\"total-sum\"><?php echo formatPrice($sum)?></span>&nbsp;<span class=\"fa fa-rub\"></span></th>
          </tr>
        </tbody>
      </table>

  <?php } elseif ($Set) { ?>
      <table class=\"table table-striped my-orders__table\">
        <tbody>
          <?php foreach ($Set as $row) { ?>
              <tr>
                <td><a href=\"<?php echo $row->urn?>/\"><?php echo Lang::i()->_(\'ORDER_NUMBER\', $Page)?> <?php echo (int)$row->id?></td>
                <td><a href=\"<?php echo $row->urn?>/\"><?php echo date(Lang::i()->_(\'DATETIME_FORMAT\', $Page), strtotime($row->post_date))?></a></td>
                <td>
                  <a href=\"<?php echo $row->urn?>/\">
                  <?php
                  $temp = array();
                  foreach ($row->items as $row2) {
                      $arr = $row2->name;
                      if ($row2->amount > 1) {
                          $arr .= \' - \' . (int)$row2->amount . \'x\' . formatPrice($row2->realprice) . \'<span class=\"fa fa-rub\"></span> = \' . formatPrice($row2->amount * $row2->realprice) . \' <span class=\"fa fa-rub\"></span>\';
                      } else {
                          $arr .= \' = \' . formatPrice($row2->realprice) . \' <span class=\"fa fa-rub\"></span>\';
                      }
                      $temp[] = $arr;
                  }
                  echo implode(\'<br />\', $temp);
                  ?>
                  </a>
                </td>
                <td>
                  <?php
                  $temp = array();
                  if ($row->status->id) {
                      $temp[] = $row->status->name;
                  } else {
                      // $temp[] = ORDER_STATUS_NEW;
                  }
                  if ($row->paid) {
                      $temp[] = PAYMENT_PAID;
                  } else {
                      $temp[] = PAYMENT_NOT_PAID;
                  }
                  echo implode(\'<br />\', $temp);
                  ?>
                </td>
                <td class=\"my-orders__sum\">
                  <a href=\"<?php echo $row->urn?>/\"><?php echo formatPrice($row->sum)?> <span class=\"fa fa-rub\"></span></a>
                </td>
                <td>
                  <?php if (!$row->status_id && !$row->paid && !$row->vis) { ?>
                      <a href=\"#\" data-id=\"<?php echo (int)$row->id?>\" data-back=\"true\" data-toggle=\"modal\" data-target=\"#confirmDeleteOrderModal\"><span class=\"fa fa-close\"></span></a>
                  <?php } ?>
                </td>
              </tr>
          <?php } ?>
        </tbody>
      </table>
  <?php } else { ?>
    <p><?php echo Lang::i()->_(\'YOU_HAVE_NO_ORDERS_YET\', $Page)?></p>
  <?php } ?>
</div>

<div class=\"modal fade\" id=\"confirmDeleteOrderModal\" tabindex=\"-1\" role=\"dialog\">
  <div class=\"modal-dialog\" role=\"document\">
    <div class=\"modal-content\">
      <div class=\"modal-header\" style=\"border-bottom: none\">
        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>
        <h4 class=\"modal-title\"><?php echo Lang::i()->_(\'ARE_YOU_SURE_TO_DELETE_THIS_ORDER\', $Page)?></h4>
      </div>
      <div class=\"modal-footer\">
        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><?php echo CANCEL?></button>
        <a href=\"#\" class=\"btn btn-primary\"><?php echo DELETE?></a>
      </div>
    </div>
  </div>
</div>

<script>
jQuery(document).ready(function($) {
    var $confirmDeleteOrderModal = $(\'#confirmDeleteOrderModal\');
    $(\'body\').append(\'confirmDeleteOrderModal\');
    $(\'a[data-target=\"#confirmDeleteOrderModal\"][data-toggle=\"modal\"]\').on(\'click\', function() {
        $(\'.modal-footer a\').attr(\'href\', \'?action=delete&id=\' + parseInt($(this).attr(\'data-id\')) + ($(this).attr(\'data-back\') ? \'&back=1\' : \'\'));
    });
});
</script>
', '0'),
('45', '1', '__raas_users_register_interface', 'Стандартный интерфейс регистрации', '<?php
namespace RAAS\\CMS\\Users;

use RAAS\\Controller_Frontend as RAASController_Frontend;
use RAAS\\CMS\\Form;
use RAAS\\Application;
use RAAS\\CMS\\User;
use RAAS\\CMS\\ULogin;
use RAAS\\Attachment;
use RAAS\\CMS\\Package;
use SOME\\Text;

$checkRedirect = function ($referer) {
    if ($_POST[\'AJAX\']) {
        return true;
    } elseif ($referer) {
        header(\'Location: \' . $referer);
        exit;
    } else {
        header(\'Location: \' . $_SERVER[\'REQUEST_URI\']);
        exit;
    }
};

$generatePass = function ($length = 5) {
    $text = \'\';
    for ($i = 0; $i < $length; $i++) {
        $x = rand(0, 61);
        if ($x < 10) {
            $c = (string)(int)$x;
        } elseif ($x < 36) {
            $c = chr((int)$x - 10 + 65);
        } else {
            $c = chr((int)$x - 36 + 97);
        }
        $text .= $c;
    }
    return $text;
};


$notify = function (User $User, Form $Form, array $config = array(), $ADMIN = false) use ($Page) {
    $emails = $sms = array();
    if (!$ADMIN) {
        if ($User->email) {
            $emails[] = $User->email;
        }
        if ($User->phone) {
            $sms[] = Text::beautifyPhone($User->phone);
        }
    } else {
        $temp = array_values(array_filter(array_map(\'trim\', preg_split(\'/( |;|,)/\', $Form->email))));
        foreach ($temp as $row) {
            if (($row[0] == \'[\') && ($row[strlen($row) - 1] == \']\')) {
                $sms[] = substr($row, 1, -1);
            } else {
                $emails[] = $row;
            }
        }
    }
    if ($Form->Interface->id) {
        $template = $Form->Interface->description;
    }

    $subject = date(DATETIMEFORMAT) . \' \' . sprintf(REGISTRATION_ON_SITE, $_SERVER[\'HTTP_HOST\']);
    if ($emails) {
        ob_start();
        eval(\'?\' . \'>\' . $template);
        $message = ob_get_contents();
        ob_end_clean();
        \\RAAS\\Application::i()->sendmail($emails, $subject, $message, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\']);
    }
    if ($sms) {
        ob_start();
        $SMS = true;
        eval(\'?\' . \'>\' . $template);
        $message_sms = ob_get_contents();
        ob_end_clean();
        \\RAAS\\Application::i()->sendmail($sms, $subject, $message_sms, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\'], false);
    }
};


$OUT = array();
$uid = (int)RAASController_Frontend::i()->user->id;
$User = new User($uid);
$Form = new Form(isset($config[\'form_id\']) ? (int)$config[\'form_id\'] : 0);
foreach ($Form->fields as $fname => &$temp) {
    if ($User->id && $temp->datatype == \'password\') {
        $temp->required = false;
    }
}

if ($User->id) {
    $Page->h1 = $Page->meta_title = \'Редактирование профиля\';
}

if ($Form->id) {
    $localError = array();
    if ($config[\'allow_edit_social\'] && isset($_POST[\'token\'])) {
        if (!isset($_SESSION[\'confirmedSocial\'])) {
            $_SESSION[\'confirmedSocial\'] = array();
        }
        if ($Profile = ULogin::getProfile($_POST[\'token\'])) {
            if ($_POST[\'AJAX\']) {
                $_SESSION[\'confirmedSocial\'][] = $Profile->profile;
                $_SESSION[\'confirmedSocial\'] = array_values(array_unique($_SESSION[\'confirmedSocial\']));
                $OUT[\'social\'] = $Profile->profile;
                $OUT[\'socialNetwork\'] = $Profile->socialNetwork;
            } else {
                $User->addSocial($Profile->profile);
                header(\'Location: \' . $_SERVER[\'REQUEST_URI\']);
                exit;
            }
        }
    } elseif (($Form->signature && isset($_POST[\'form_signature\']) && $_POST[\'form_signature\'] == md5(\'form\' . (int)$Form->id . (int)$Block->id)) || (!$Form->signature && ($_SERVER[\'REQUEST_METHOD\'] == \'POST\'))) {
        $Item = $User;
        foreach ($Form->fields as $row) {
            switch ($row->datatype) {
                case \'file\':
                case \'image\':
                    $val = isset($_FILES[$row->urn][\'tmp_name\']) ? $_FILES[$row->urn][\'tmp_name\'] : null;
                    if ($val && $row->multiple) {
                        $val = (array)$val;
                        $val = array_shift($val);
                    }
                    if (!isset($val) || !$row->isFilled($val)) {
                        if ($row->required && !$row->countValues()) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                        }
                    } elseif (!$row->multiple) {
                        if (!$row->validate($val)) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                        }
                    }
                    $allowedExtensions = preg_split(\'/\\\\W+/umis\', $row->source);
                    $allowedExtensions = array_map(\'mb_strtolower\', array_filter($allowedExtensions, \'trim\'));
                    if ($allowedExtensions) {
                        if ($row->multiple) {
                            foreach ((array)$_FILES[$row->urn][\'tmp_name\'] as $i => $val) {
                                if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'][$i])) {
                                    $ext = pathinfo(
                                        $_FILES[$row->urn][\'name\'][$i],
                                        PATHINFO_EXTENSION
                                    );
                                    $ext = mb_strtolower($ext);
                                    if (!in_array($ext, $allowedExtensions)) {
                                        $localError[$row->urn] = sprintf(
                                            INVALID_FILE_EXTENSION,
                                            implode(\', \', $allowedExtensions)
                                        );
                                        break;
                                    }
                                }
                            }
                        } else {
                            if (is_uploaded_file($_FILES[$row->urn][\'tmp_name\'])) {
                                $ext = pathinfo(
                                    $_FILES[$row->urn][\'name\'],
                                    PATHINFO_EXTENSION
                                );
                                $ext = mb_strtolower($ext);
                                if (!in_array($ext, $allowedExtensions)) {
                                    $localError[$row->urn] = sprintf(
                                        INVALID_FILE_EXTENSION,
                                        implode(\', \', $allowedExtensions)
                                    );
                                    break;
                                }
                            }
                        }
                    }
                    break;
                default:
                    $val = isset($_POST[$row->urn]) ? $_POST[$row->urn] : null;
                    if ($val && $row->multiple) {
                        $val = (array)$val;
                        $val = array_shift($val);
                    }
                    if (!isset($val) || !$row->isFilled($val)) {
                        if ($row->required && !($row->urn == \'agree\' && $User->id)) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_REQUIRED, $row->name);
                        }
                    } elseif (!$row->multiple) {
                        if (($row->datatype == \'password\') && ($_POST[$row->urn] != $_POST[$row->urn . \'@confirm\'])) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_PASSWORD_DOESNT_MATCH_CONFIRM, $row->name);
                        } elseif (!$row->validate($val)) {
                            $localError[$row->urn] = sprintf(ERR_CUSTOM_FIELD_INVALID, $row->name);
                        }
                    }
                    break;
            }
        }
        if (!$User->id && $Form->antispam && $Form->antispam_field_name) {
            switch ($Form->antispam) {
                case \'captcha\':
                    if (!isset($_POST[$Form->antispam_field_name], $_SESSION[\'captcha_keystring\']) || ($_POST[$Form->antispam_field_name] != $_SESSION[\'captcha_keystring\'])) {
                        $localError[$row->urn] = ERR_CAPTCHA_FIELD_INVALID;
                    }
                    break;
                case \'hidden\':
                    if (isset($_POST[$Form->antispam_field_name]) && $_POST[$Form->antispam_field_name]) {
                        $localError[$row->urn] = ERR_CAPTCHA_FIELD_INVALID;
                    }
                    break;
            }
        }
        if (isset($_POST[\'login\']) && $_POST[\'login\'] && isset($Form->fields[\'login\'])) {
            if ($User->checkLoginExists(trim($_POST[\'login\']))) {
                $localError[\'login\'] = ERR_LOGIN_EXISTS;
            }
        }
        if (isset($_POST[\'email\']) && $_POST[\'email\'] && isset($Form->fields[\'email\'])) {
            if ($User->checkEmailExists(trim($_POST[\'email\']))) {
                $localError[\'email\'] = ERR_EMAIL_EXISTS;
            } elseif (!isset($Form->fields[\'email\'])) {
                if ($User->checkLoginExists(trim($_POST[\'email\']))) {
                    $localError[\'email\'] = ERR_LOGIN_EXISTS;
                }
            }
        }
        if (!$localError) {
            $User->page_id = (int)$Page->id;
            $User->page = $Page;
            $User->ip = (string)$_SERVER[\'REMOTE_ADDR\'];
            $User->user_agent = (string)$_SERVER[\'HTTP_USER_AGENT\'];
            if ($new = !$User->id) {
                $User->vis = (int)($config[\'activation_type\'] == Block_Register::ACTIVATION_TYPE_ALREADY_ACTIVATED);
                $User->new = 1;
            }


            if (isset($Form->fields[\'email\'])) {
                $val = $User->email = trim($_POST[\'email\']);
                if ($val && $config[\'email_as_login\']) {
                    $User->login = $val;
                }
            }
            if (isset($Form->fields[\'login\']) && !$config[\'email_as_login\']) {
                if ($val = trim($_POST[\'login\'])) {
                    $User->login = $val;
                }
            }
            if (isset($Form->fields[\'password\']) && ($val = trim($_POST[\'password\']))) {
                $User->password = $val;
                $User->password_md5 = Application::i()->md5It($val);
            } elseif ($new) {
                $val = $User->password = $generatePass();
                $User->password_md5 = Application::i()->md5It($val);
            }
            if (isset($Form->fields[\'lang\']) && ($val = trim($_POST[\'lang\']))) {
                $User->lang = $val;
            } else {
                $User->lang = $Page->lang;
            }
            if ($config[\'allow_edit_social\'] && isset($_POST[\'social\']) && isset($_SESSION[\'confirmedSocial\'])) {
                $arr = array();
                foreach ((array)$_POST[\'social\'] as $val) {
                    if (($val = trim($val)) && in_array($val, $_SESSION[\'confirmedSocial\']) || in_array($val, $User->social)) {
                        $arr[] = $val;
                    }
                }
                unset($_SESSION[\'confirmedSocial\']);
                $User->meta_social = $arr;
            }
            $User->commit();

            foreach ($Form->fields as $fname => $temp) {
                if (isset($User->fields[$fname])) {
                    $row = $User->fields[$fname];
                    switch ($row->datatype) {
                        case \'file\':
                        case \'image\':
                            $row->deleteValues();
                            if ($row->multiple) {
                                foreach ($_FILES[$fname][\'tmp_name\'] as $key => $val) {
                                    $row2 = array(
                                        \'vis\' => (int)$_POST[$row->urn . \'@vis\'][$key],
                                        \'name\' => (string)$_POST[$row->urn . \'@name\'][$key],
                                        \'description\' => (string)$_POST[$row->urn . \'@description\'][$key],
                                        \'attachment\' => (int)$_POST[$row->urn . \'@attachment\'][$key]
                                    );
                                    if (is_uploaded_file($_FILES[$fname][\'tmp_name\'][$key]) && $row->validate($_FILES[$fname][\'tmp_name\'][$key])) {
                                        $att = new Attachment((int)$row2[\'attachment\']);
                                        $att->upload = $_FILES[$fname][\'tmp_name\'][$key];
                                        $att->filename = $_FILES[$fname][\'name\'][$key];
                                        $att->mime = $_FILES[$fname][\'type\'][$key];
                                        $att->parent = $Material;
                                        if ($row->datatype == \'image\') {
                                            $att->image = 1;
                                            if ($temp = (int)Package::i()->registryGet(\'maxsize\')) {
                                                $att->maxWidth = $att->maxHeight = $temp;
                                            }
                                            if ($temp = (int)Package::i()->registryGet(\'tnsize\')) {
                                                $att->tnsize = $temp;
                                            }
                                        }
                                        $att->commit();
                                        $row2[\'attachment\'] = (int)$att->id;
                                        $row->addValue(json_encode($row2));
                                    } elseif ($row2[\'attachment\']) {
                                        $row->addValue(json_encode($row2));
                                    }
                                    unset($att, $row2);
                                }
                            } else {
                                $row2 = array(
                                    \'vis\' => (int)$_POST[$row->urn . \'@vis\'],
                                    \'name\' => (string)$_POST[$row->urn . \'@name\'],
                                    \'description\' => (string)$_POST[$row->urn . \'@description\'],
                                    \'attachment\' => (int)$_POST[$row->urn . \'@attachment\']
                                );
                                if (is_uploaded_file($_FILES[$fname][\'tmp_name\']) && $row->validate($_FILES[$fname][\'tmp_name\'])) {
                                    $att = new Attachment((int)$row2[\'attachment\']);
                                    $att->upload = $_FILES[$fname][\'tmp_name\'];
                                    $att->filename = $_FILES[$fname][\'name\'];
                                    $att->mime = $_FILES[$fname][\'type\'];
                                    $att->parent = $Material;
                                    if ($row->datatype == \'image\') {
                                        $att->image = 1;
                                        if ($temp = (int)Package::i()->registryGet(\'maxsize\')) {
                                            $att->maxWidth = $att->maxHeight = $temp;
                                        }
                                        if ($temp = (int)Package::i()->registryGet(\'tnsize\')) {
                                            $att->tnsize = $temp;
                                        }
                                    }
                                    $att->commit();
                                    $row2[\'attachment\'] = (int)$att->id;
                                    $row->addValue(json_encode($row2));
                                } elseif ($_POST[$row->urn . \'@attachment\']) {
                                    $row2[\'attachment\'] = (int)$_POST[$row->urn . \'@attachment\'];
                                    $row->addValue(json_encode($row2));
                                }
                                unset($att, $row2);
                            }
                            break;
                        default:
                            $row->deleteValues();
                            if (isset($_POST[$fname])) {
                                foreach ((array)$_POST[$fname] as $val) {
                                    // 2019-01-22, AVS: закрываем XSS-уязвимость
                                    $row->addValue(strip_tags($val));
                                }
                            }
                            break;
                    }
                    if (in_array($row->datatype, array(\'file\', \'image\'))) {
                        $row->clearLostAttachments();
                    }
                }
            }

            foreach ($User->fields as $fname => $temp) {
                if (!isset($_POST[$fname])) {
                    switch ($temp->datatype) {
                        case \'datetime\':
                        case \'datetime-local\':
                            $temp->addValue(date(\'Y-m-d H:i:s\'));
                            break;
                        case \'date\':
                            $temp->addValue(date(\'Y-m-d\'));
                            break;
                        case \'time\':
                            $temp->addValue(date(\'H:i:s\'));
                            break;
                    }
                }
            }

            if (isset($User->fields[\'ip\'])) {
                $User->fields[\'ip\']->deleteValues();
                $User->fields[\'ip\']->addValue((string)$_SERVER[\'REMOTE_ADDR\']);
            }
            if (isset($User->fields[\'user_agent\'])) {
                $User->fields[\'user_agent\']->deleteValues();
                $User->fields[\'user_agent\']->addValue((string)$_SERVER[\'HTTP_USER_AGENT\']);
            }

            if ($Form->email && ($new || $config[\'notify_about_edit\'])) {
                $notify($User, $Form, $config, true);
            }
            if ($User->email && $new) {
                $notify($User, $Form, $config, false);
            }
            if ($new) {
                $OUT[\'success\'][(int)$Block->id] = true;
            } else {
                $OUT[\'success\'][(int)$Block->id] = $checkRedirect();
            }
        }
        $OUT[\'DATA\'] = $_POST;
    } else {
        $OUT[\'DATA\'] = $User->getArrayCopy();
        unset($OUT[\'DATA\'][\'password_md5\']);
        foreach ($Form->fields as $fname => $temp) {
            if ($User->id && isset($User->fields[$fname])) {
                $OUT[\'DATA\'][$fname] = $User->fields[$fname]->getValues();
            } elseif (!$User->id) {
                $OUT[\'DATA\'][$fname] = $temp->default;
            }
        }
        if ($config[\'allow_edit_social\']) {
            $OUT[\'DATA\'][\'social\'] = $User->social;
        }
    }
    $OUT[\'localError\'] = $localError;
    $OUT[\'User\'] = $User;
}
$OUT[\'Form\'] = $Form;

return $OUT;
', '1'),
('46', '1', '__raas_users_activation_interface', 'Стандартный интерфейс активации', '<?php
namespace RAAS\\CMS\\Users;

use \\RAAS\\Controller_Frontend as RAASController_Frontend;
use \\RAAS\\CMS\\User;
use \\RAAS\\CMS\\Auth;

$OUT = array();
$Item = $User = RAASController_Frontend::i()->user;
$localError = array();
if ($User->vis) {
    $localError = ERR_ALREADY_ACTIVATED;
} elseif (($tmp_user = User::importByActivationKey(isset($_GET[\'key\']) ? $_GET[\'key\'] : \'\'))) {
    $User = $tmp_user;
    $User->vis = 1;
    $User->commit();
    $a = new Auth($User);
    $a->setSession();
    $OUT[\'success\'] = true;
} else {
    $localError[] = CONFIRMATION_KEY_IS_INVALID;
}
$OUT[\'localError\'] = $localError;
$OUT[\'User\'] = $User;

return $OUT;
', '1'),
('47', '1', '__raas_users_login_interface', 'Стандартный интерфейс входа в систему', '<?php
namespace RAAS\\CMS\\Users;

use \\RAAS\\Controller_Frontend as RAASController_Frontend;
use \\RAAS\\CMS\\Auth;
use \\RAAS\\CMS\\User as CMSUser;
use \\RAAS\\CMS\\ULogin;

$checkRedirect = function ($referer) {
    if ($_POST[\'AJAX\']) {
        return true;
    } elseif ($referer) {
        header(\'Location: \' . $referer);
        exit;
    } else {
        header(\'Location: /\');
        exit;
    }
};

$OUT = array();
$Item = $User = RAASController_Frontend::i()->user;
$localError = array();
$a = new Auth($User);
if ($_GET[\'logout\']) {
    $a->logout();
    $OUT[\'success\'] = $checkRedirect();
} elseif ($User->id) {
    $OUT[\'success\'] = $checkRedirect();
} else {
    if ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {
        if (isset($_POST[\'token\']) && $config[\'social_login_type\']) {
            if ($temp = ULogin::getProfile($_POST[\'token\'])) {
                if ($a->loginBySocialNetwork($temp->profile)) {
                    $OUT[\'success\'] = $checkRedirect();
                } else {
                    if ($temp->email) {
                        $SQL_result = CMSUser::getSet(array(\'where\' => \'email = \"\' . CMSUser::_SQL()->real_escape_string($temp->email) . \'\"\'));
                        if ($SQL_result) {
                            $User = $SQL_result[0];
                            $User->meta_social = array_merge((array)$User->social, array($temp->profile));
                            $User->commit();
                            $a = new Auth($User);
                            $a->setSession();
                            $OUT[\'success\'] = $checkRedirect();
                        }
                    }
                }
                if ($config[\'social_login_type\'] == Block_LogIn::SOCIAL_LOGIN_QUICK_REGISTER) {
                    $User = new CMSUser();
                    $User->vis = 1;
                    $User->meta_social = $temp->profile;
                    if ($temp->email) {
                        $User->email = $temp->email;
                    }
                    if ($temp->nickname) {
                        $login = $temp->nickname;
                    } elseif ($temp->profile) {
                        $login = basename($temp->profile);
                    }
                    while ($User->checkLoginExists($login)) {
                        $login = Application::i()->getNewURN($login);
                    }
                    $User->login = $login;
                    $User->commit();
                    foreach (array(\'last_name\', \'first_name\', \'full_name\', \'phone\') as $key) {
                        if (isset($User->fields[$key]) && ($row = $User->fields[$key])) {
                            $row->deleteValues();
                            $row->addValue($temp->$key);
                        }
                    }
                    $a = new Auth($User);
                    $a->setSession();
                    $OUT[\'success\'] = $checkRedirect();
                } else {
                    $localError[] = ERR_USER_WITH_THIS_SOCIAL_NETWORK_IS_NOT_FOUND;
                }
            } else {
                $localError[] = ERR_CANT_CONNECT_TO_SOCIAL_NETWORK;
            }
        } else {
            if (!isset($_POST[\'login\'])) {
                $localError[\'password\'] = LOGIN_REQUIRED;
            } elseif (!isset($_POST[\'password\'])) {
                $localError[\'password\'] = PASSWORD_REQUIRED;
            } else {
                $savePassword = (($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_SAVE_PASSWORD) && isset($_POST[\'save_password\']))
                             || (($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_FOREIGN_COMPUTER) && !isset($_POST[\'foreign_computer\']));
                $val = $a->login(trim($_POST[\'login\']), $_POST[\'password\'], $savePassword);
                if ($val === -1) {
                    $localError[] = YOUR_ACCOUNT_IS_BLOCKED;
                } elseif ($val) {
                    $checkRedirect($_POST[\'HTTP_REFERER\'] ?: $_GET[\'HTTP_REFERER\']);
                } else {
                    $localError[] = INVALID_LOGIN_OR_PASSWORD;
                }
            }
        }
    }
}
$OUT[\'localError\'] = $localError;
$OUT[\'User\'] = $User;

return $OUT;
', '1'),
('48', '1', '__raas_users_recovery_interface', 'Стандартный интерфейс восстановления пароля', '<?php
namespace RAAS\\CMS\\Users;

use \\RAAS\\Application;
use \\RAAS\\Controller_Frontend as RAASController_Frontend;
use \\RAAS\\CMS\\User;
use \\RAAS\\CMS\\Snippet;
use \\RAAS\\CMS\\Auth;

$notify = function (User $User, array $config = array()) use ($Page) {
    $emails = array();
    if ($User->email) {
        $emails[] = $User->email;
    }
    if ($config[\'notification_id\']) {
        $S = new Snippet((int)$config[\'notification_id\']);
        $template = $S->description;
    }
    $subject = date(DATETIMEFORMAT) . \' \' . sprintf(PASSWORD_RECOVERY_ON_SITE, $_SERVER[\'HTTP_HOST\']);
    if ($emails) {
        ob_start();
        eval(\'?\' . \'>\' . $template);
        $message = ob_get_contents();
        ob_end_clean();
        \\RAAS\\Application::i()->sendmail($emails, $subject, $message, ADMINISTRATION_OF_SITE . \' \' . $_SERVER[\'HTTP_HOST\'], \'info@\' . $_SERVER[\'HTTP_HOST\']);
    }
};

$OUT = array();
$Item = $User = RAASController_Frontend::i()->user;
$localError = array();
if ($_GET[\'key\'] || $User->id) {
    $OUT[\'proceed\'] = true;
    if (!$User->id && ($tmp_user = User::importByRecoveryKey($_GET[\'key\']))) {
        $User = $tmp_user;
        $a = new Auth($User);
        if (!$User->vis) {
            $localError[\'password\'] = YOUR_ACCOUNT_IS_BLOCKED;
            $OUT[\'key_is_invalid\'] = true;
        } else {
            $a->setSession();
        }
    }
    if ($User->id) {
        if ($_SERVER[\'REQUEST_METHOD\'] == \'POST\') {
            if (!isset($_POST[\'password\']) || !trim($_POST[\'password\'])) {
                $localError[\'password\'] = PASSWORD_REQUIRED;
            } elseif ($_POST[\'password\'] != $_POST[\'password@confirm\']) {
                $localError[\'password\'] = PASSWORD_DOESNT_MATCH_CONFIRM;
            } else {
                $User->password_md5 = Application::i()->md5It($_POST[\'password\']);
                $User->commit();
                $OUT[\'success\'] = true;
            }
        }
    } else {
        $localError[] = CONFIRMATION_KEY_IS_INVALID;
        $OUT[\'key_is_invalid\'] = true;
    }
} else {
    if (isset($_POST[\'login\']) && trim($_POST[\'login\'])) {
        if ($tmp_user = User::importByLoginOrEmail(trim($_POST[\'login\']))) {
            if (!$tmp_user->vis) {
                $localError[\'password\'] = YOUR_ACCOUNT_IS_BLOCKED;
            } else {
                if ($tmp_user->email) {
                    $notify($tmp_user, $config);
                    $OUT[\'success\'] = true;
                } else {
                    $localError[\'login\'] = NO_EMAIL_OF_THIS_USER;
                }
            }
        } else {
            $localError[\'login\'] = USER_WITH_THIS_LOGIN_IS_NOT_FOUND;
        }
    }
}
$OUT[\'localError\'] = $localError;
$OUT[\'User\'] = $User;

return $OUT;
', '1'),
('49', '1', '__raas_users_register_notify', 'Стандартное уведомление о регистрации', '<?php
namespace RAAS\\CMS;

use RAAS\\CMS\\Users\\Block_Register;
use RAAS\\CMS\\Users\\Block_Activation;

$smsField = function ($field) {
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $field->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'file\':
            case \'image\':
                $arr[$key] .= $val->name;
                break;
            case \'htmlarea\':
                $arr[$key] = strip_tags($val);
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = $val;
                }
                break;
        }
    }
    return $field->name . \': \' . implode(\', \', $arr) . \"\\n\";
};


$emailField = function ($field, $formField = null) {
    if (!$formField) {
        $formField = $field;
    }
    $values = $field->getValues(true);
    $arr = array();
    foreach ($values as $key => $val) {
        $val = $formField->doRich($val);
        switch ($field->datatype) {
            case \'date\':
                $arr[$key] = date(DATEFORMAT, strtotime($val));
                break;
            case \'datetime-local\':
                $arr[$key] = date(DATETIMEFORMAT, strtotime($val));
                break;
            case \'color\':
                $arr[$key] = \'<span style=\"display: inline-block; height: 16px; width: 16px; background-color: \' . htmlspecialchars($val) . \'\"></span>\';
                break;
            case \'email\':
                $arr[$key] .= \'<a href=\"mailto:\' . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'url\':
                $arr[$key] .= \'<a href=\"http://\' . (!preg_match(\'/^http(s)?:\\\\/\\\\//umi\', trim($val)) ? \'http://\' : \'\') . htmlspecialchars($val) . \'\">\' . htmlspecialchars($val) . \'</a>\';
                break;
            case \'file\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">\' . htmlspecialchars($val->name) . \'</a>\';
                break;
            case \'image\':
                $arr[$key] .= \'<a href=\"http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->fileURL . \'\">
                                 <img src=\"http://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . $val->tnURL. \'\" alt=\"\' . htmlspecialchars($val->name) . \'\" title=\"\' . htmlspecialchars($val->name) . \'\" />
                               </a>\';
                break;
            case \'htmlarea\':
                $arr[$key] = \'<div>\' . $val . \'</div>\';
                break;
            default:
                if (!$field->multiple && ($field->datatype == \'checkbox\')) {
                    $arr[$key] = $val ? _YES : _NO;
                } else {
                    $arr[$key] = nl2br(htmlspecialchars($val));
                }
                break;
        }
    }
    return \'<div>\' . htmlspecialchars($formField->name) . \': \' . implode(\', \', $arr) . \'</div>\';
};
?>
<p><?php echo sprintf($ADMIN ? NEW_USER_REGISTERED_ON_SITE : YOU_HAVE_SUCCESSFULLY_REGISTERED_ON_WEBSITE, $_SERVER[\'HTTP_HOST\'], $_SERVER[\'HTTP_HOST\'])?></p>
<?php if ($SMS) {
    foreach ($Form->fields as $field) {
        if (in_array($field->urn, array(\'login\', \'email\'))) {
            echo $field->name . \': \' . $User->{$field->urn} . \"\\n\";
        } elseif (isset($User->fields[$field->urn]) && ($field = $User->fields[$field->urn])) {
            echo $smsField($field);
        }
    }
} else { ?>
    <div>
      <?php
      foreach ($Form->fields as $field) {
          if ($field->urn == \'login\') {
              echo \'<div>\' . htmlspecialchars($field->name) . \': \' . htmlspecialchars($User->{$field->urn}) . \'</div>\';
          } elseif ($field->urn == \'email\') {
              echo \'<div>\' . htmlspecialchars($field->name) . \': <a href=\"mailto:\' . htmlspecialchars($User->{$field->urn}) . \'\">\' . htmlspecialchars($User->{$field->urn}) . \'</a></div>\';
          } elseif (!$ADMIN && ($field->urn == \'password\')) {
              echo \'<div>\' . htmlspecialchars($field->name) . \': \' . htmlspecialchars($User->{$field->urn}) . \'</div>\';
          } elseif (isset($User->fields[$field->urn]) && ($formField = $field) && ($field = $User->fields[$field->urn])) {
              // 2017-03-28, AVS: добавил поле формы, для случая языковых версий - чтобы можно было отправлять письма на разных языках
              echo $emailField($field, $formField);
          }
      }
      ?>
    </div>
    <?php if ($ADMIN) { ?>
        <?php if ($User && $User->id) { ?>
            <p>
              <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'] . \'/admin/?p=cms&m=users&action=edit&id=\' . (int)$User->id)?>\">
                <?php echo VIEW?>
              </a>
            </p>
        <?php } ?>
        <p>
          <small>
            <?php echo IP_ADDRESS?>: <?php echo htmlspecialchars($User->ip)?><br />
            <?php echo USER_AGENT?>: <?php echo htmlspecialchars($User->user_agent)?><br />
            <?php echo PAGE?>:
            <?php if ($User->page->parents) { ?>
                <?php foreach ($User->page->parents as $row) { ?>
                    <a href=\"<?php echo htmlspecialchars($User->domain . $row->url)?>\"><?php echo htmlspecialchars($row->name)?></a> /
                <?php } ?>
            <?php } ?>
            <a href=\"<?php echo htmlspecialchars($User->domain . $User->page->url)?>\"><?php echo htmlspecialchars($User->page->name)?></a>
          </small>
        </p>
        <?php
    } else {
        switch ($config[\'activation_type\']) {
            case Block_Register::ACTIVATION_TYPE_ALREADY_ACTIVATED:
                echo \'<p>\' . NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM . \'</p>\';
                break;
            case Block_Register::ACTIVATION_TYPE_ADMINISTRATOR:
                echo \'<p>\' . PLEASE_WAIT_FOR_ADMINISTRATOR_TO_ACTIVATE . \'</p>\';
                break;
            case Block_Register::ACTIVATION_TYPE_USER:
                $activationBlocks = Block_Activation::getSet(array(
                    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Activation\'\",
                    \'orderBy\' => \'id\'
                ));
                $activationPages = array();
                if ($activationBlocks) {
                    $activationPages = array();
                    foreach ($activationBlocks as $activationBlock) {
                        $activationPages = array_merge($activationPages, $activationBlock->pages);
                    }
                }
                $p = $Page->parent;
                $activationPage = null;
                while ($p->id) {
                    $nearestActivationPages = array_filter($activationPages, function ($x) use ($p) {
                        return $x->pid == $p->id;
                    });
                    if ($nearestActivationPages) {
                        $activationPage = array_shift($nearestActivationPages);
                        break;
                    }
                    $p = $p->parent;
                }
                if (!$activationPage->id && $activationPages) {
                    $activationPage = array_shift($activationPages);
                }
                if ($activationPage->id) {
                    $link = \'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $activationPage->url . \'?key=\' . $User->activationKey;
                    echo \'<p>\' . sprintf(ACTIVATION_LINK, $link, $link) . \'</p>\';
                }
                break;
        }
        ?>
        <p>--</p>
        <p>
          <?php echo WITH_RESPECT?>,<br />
          <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>
        </p>
        <?php
    }
}
?>
', '1'),
('50', '1', '__raas_users_recovery_notify', 'Стандартное уведомление о восстановлении пароля', '<?php
namespace RAAS\\CMS\\Users;

$link = \'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $Page->url . \'?key=\' . $User->recoveryKey;
?>
<p><?php echo date(DATETIMEFORMAT) . \' \' . sprintf(YOU_HAVE_ASKED_PASSWORD_RECOVERY_ON_SITE, $_SERVER[\'HTTP_HOST\'], $_SERVER[\'HTTP_HOST\'])?></p>
<?php

?>
<p><?php echo sprintf(RECOVERY_LINK, $link, $link)?></p>
<p><?php echo IF_IT_WAS_NOT_YOU_JUST_IGNORE?></p>
<p>--</p>
<p>
  <?php echo WITH_RESPECT?>,<br />
  <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>
</p>
', '1'),
('51', '2', 'register', 'Регистрация', '<?php
namespace RAAS\\CMS\\Users;

use RAAS\\CMS\\Feedback;
use RAAS\\CMS\\SocialProfile;

if ($_POST[\'AJAX\']) {
    $result = array();
    if ($success[(int)$Block->id]) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    if ($social) {
        $result[\'social\'] = trim($social);
    }
    if ($social) {
        $result[\'socialNetwork\'] = trim($socialNetwork);
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else { ?>
    <a name=\"feedback\"></a>
    <div class=\"feedback\">
      <form class=\"form-horizontal\" <?php /*data-role=\"raas-ajaxform\"*/?> action=\"\" method=\"post\" enctype=\"multipart/form-data\">
        <?php include \\RAAS\\CMS\\Package::i()->resourcesDir . \'/form2.inc.php\'?>
        <div data-role=\"notifications\" <?php echo ($success[(int)$Block->id] || $localError) ? \'\' : \'style=\"display: none\"\'?>>
          <div class=\"alert alert-success\" <?php echo ($success[(int)$Block->id]) ? \'\' : \'style=\"display: none\"\'?>>
            <?php
            echo YOU_HAVE_SUCCESSFULLY_REGISTERED . \' \';
            switch ($config[\'activation_type\']) {
                case Block_Register::ACTIVATION_TYPE_ALREADY_ACTIVATED:
                    echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM;
                    break;
                case Block_Register::ACTIVATION_TYPE_ADMINISTRATOR:
                    echo PLEASE_WAIT_FOR_ADMINISTRATOR_TO_ACTIVATE;
                    break;
                case Block_Register::ACTIVATION_TYPE_USER:
                    echo PLEASE_ACTIVATE_BY_EMAIL;
                    break;
            }
            ?>
          </div>
          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
            <ul>
              <?php foreach ((array)$localError as $key => $val) { ?>
                  <li><?php echo htmlspecialchars($val)?></li>
              <?php } ?>
            </ul>
          </div>
        </div>

        <div data-role=\"feedback-form\" <?php echo $success[(int)$Block->id] ? \'style=\"display: none\"\' : \'\'?>>
          <p><?php echo ASTERISK_MARKED_FIELDS_ARE_REQUIRED?></p>
          <?php if ($Form->signature) { ?>
                <input type=\"hidden\" name=\"form_signature\" value=\"<?php echo md5(\'form\' . (int)$Form->id . (int)$Block->id)?>\" />
          <?php } ?>
          <?php if ($Form->antispam == \'hidden\' && $Form->antispam_field_name && !$User->id) { ?>
                <input type=\"text\" autocomplete=\"off\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" value=\"<?php echo htmlspecialchars($DATA[$Form->antispam_field_name])?>\" style=\"position: absolute; left: -9999px\" />
          <?php } ?>
          <?php foreach ($Form->fields as $row) { ?>
              <div class=\"form-group\">
                <label<?php echo !$row->multiple ? \' for=\"\' . htmlspecialchars($row->urn . $row->id . \'_\' . $Block->id) . \'\"\' : \'\'?> class=\"control-label col-sm-3\"><?php echo htmlspecialchars($row->name . ($row->required ? \'*\' : \'\'))?></label>
                <div class=\"col-sm-9 col-md-4\"><?php $getField($row, $DATA)?></div>
              </div>
          <?php } ?>
          <?php if ($config[\'allow_edit_social\']) { ?>
              <style type=\"text/css\">
              .raas-social { display: inline-block; width: 16px; height: 16px; background-image: url(\'http://ulogin.ru/img/small.png?version=1.3.00\'); }
              .raas-social<?php echo SocialProfile::SN_VK?> { background-position: 0 -19px; }
              .raas-social<?php echo SocialProfile::SN_FB?> { background-position: 0 -88px; }
              .raas-social<?php echo SocialProfile::SN_OK?> { background-position: 0 -42px; }
              .raas-social<?php echo SocialProfile::SN_MR?> { background-position: 0 -65px; }
              .raas-social<?php echo SocialProfile::SN_TW?> { background-position: 0 -111px; }
              .raas-social<?php echo SocialProfile::SN_LJ?> { background-position: 0 -180px; }
              .raas-social<?php echo SocialProfile::SN_GO?> { background-position: 0 -134px; }
              .raas-social<?php echo SocialProfile::SN_YA?> { background-position: 0 -157px; }
              .raas-social<?php echo SocialProfile::SN_WM?> { background-position: 0 -410px; }
              .raas-social<?php echo SocialProfile::SN_YT?> { background-position: 0 -433px; }
              </style>
              <script src=\"//ulogin.ru/js/ulogin.js\"></script>
              <div class=\"col-sm-offset-3 col-sm-9 col-md-6\" style=\"margin-bottom: 25px\">
                <h3><?php echo SOCIAL_NETWORKS?></h3>
                <div data-role=\"raas-social-network-container\" style=\"margin: 20px 0\">
                  <?php foreach ((array)$DATA[\'social\'] as $i => $temp) { ?>
                      <div data-role=\"raas-repo-element\" class=\"clearfix\">
                        <input type=\"hidden\" name=\"social[]\" value=\"<?php echo htmlspecialchars($temp)?>\" />
                        <a href=\"<?php echo htmlspecialchars($temp)?>\" target=\"_blank\">
                          <span class=\"raas-social raas-social<?php echo (int)SocialProfile::getSocialNetwork($temp)?>\"></span>
                          <?php echo htmlspecialchars($temp)?>
                        </a>
                        <a href=\"#\" class=\"close\" style=\"float: right;\" data-role=\"raas-repo-del\">&times;</a>
                      </div>
                  <?php } ?>
                </div>
                <div id=\"uLogin\" data-ulogin=\"display=panel;fields=first_name,last_name;providers=vkontakte,odnoklassniki,mailru,facebook;hidden=twitter,google,yandex,livejournal,youtube,webmoney;redirect_uri=;callback=RAAS_CMS_social_login\"></div>
              </div>
              <script>
              jQuery(document).ready(function($) {
                  $(\'[data-role=\"raas-social-network-container\"]\').on(\'click\', \'[data-role=\"raas-repo-del\"]\', function() {
                      $(this).closest(\'[data-role=\"raas-repo-element\"]\').remove();
                      return false;
                  });
                  RAAS_CMS_social_login = function(token)
                  {
                      $.post(location.toString(), {\'token\': token, \'AJAX\': 1}, function(data) {
                          var isFound = false;
                          $(\'[data-role=\"raas-social-network-container\"] input:hidden\').each(function() {
                              if ($.trim($(this).val()) == $.trim(data.social)) {
                                  isFound = true;
                              }
                          });
                          if (!isFound) {
                              var text = \'<div data-role=\"raas-repo-element\" class=\"clearfix\">\'
                                       + \'  <input type=\"hidden\" name=\"social[]\" value=\"\' + data.social + \'\" />\'
                                       + \'  <a href=\"\' + data.social + \'\" target=\"_blank\"><span class=\"raas-social raas-social\' + data.socialNetwork + \'\"></span> \' + data.social + \'</a>\'
                                       + \'  <a href=\"#\" class=\"close\" style=\"float: right;\" data-role=\"raas-repo-del\">&times;</a>\'
                                       + \'</div>\';
                              $(\'[data-role=\"raas-social-network-container\"]\').append(text);
                          }
                      }, \'json\');
                  }
              });
              </script>
          <?php } ?>
          <?php if ($Form->antispam == \'captcha\' && $Form->antispam_field_name && !$User->id) { ?>
              <div class=\"form-group\">
                <label for=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"control-label col-sm-3\"><?php echo CAPTCHA?></label>
                <div class=\"col-sm-9 col-md-4\">
                  <img src=\"/assets/kcaptcha/?<?php echo session_name() . \'=\' . session_id()?>\" /><br />
                  <input type=\"text\" name=\"<?php echo htmlspecialchars($Form->antispam_field_name)?>\" class=\"form-control\" />
                </div>
              </div>
          <?php } ?>
          <div class=\"form-group\">
            <div class=\"col-sm-9 col-md-4 col-sm-offset-3\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo $User->id ? SAVE : DO_REGISTER?></button></div>
          </div>
        </div>
      </form>
    </div>
<?php } ?>
', '0'),
('52', '2', 'activation', 'Активация', '<?php
namespace RAAS\\CMS\\Users;

if ($_POST[\'AJAX\']) {
    $result = array();
    if ($success) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else {
    ?>
    <div data-role=\"notifications\">
      <div class=\"alert alert-success\" <?php echo ($success) ? \'\' : \'style=\"display: none\"\'?>><?php echo YOUR_ACCOUNT_HAS_BEEN_SUCCESSFULLY_ACTIVATED?></div>
      <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
        <ul>
          <?php foreach ((array)$localError as $key => $val) { ?>
              <li><?php echo htmlspecialchars($val)?></li>
          <?php } ?>
        </ul>
      </div>
    </div>
    <?php
}
', '0'),
('53', '2', 'login', 'Вход в систему', '<?php
namespace RAAS\\CMS\\Users;

if ($_POST[\'AJAX\']) {
    $result = array();
    if ($success[(int)$Block->id]) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    if ($social) {
        $result[\'social\'] = trim($social);
    }
    if ($social) {
        $result[\'socialNetwork\'] = trim($socialNetwork);
    }
    if ($User) {
        $result[\'User\'] = $User->getArrayCopy();
        $result[\'User\'][\'last_name\'] = $User->last_name;
        $result[\'User\'][\'first_name\'] = $User->first_name;
        $result[\'User\'][\'full_name\'] = $User->full_name;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else {
    ?>
    <div class=\"feedback\">
      <form class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\">
        <div data-role=\"notifications\" <?php echo ($success || $localError) ? \'\' : \'style=\"display: none\"\'?>>
          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
            <ul>
              <?php foreach ((array)$localError as $key => $val) { ?>
                  <li><?php echo htmlspecialchars($val)?></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div data-role=\"feedback-form\" <?php echo $success ? \'style=\"display: none\"\' : \'\'?>>
          <div class=\"form-group\">
            <label for=\"login_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo LOGIN?>:</label>
            <div class=\"col-sm-9 col-md-4\"><input type=\"text\" class=\"form-control\" name=\"login\" id=\"login_<?php echo (int)$Block->id?>\" /></div>
          </div>
          <div class=\"form-group\">
            <label for=\"password_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD?>:</label>
            <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password\" id=\"password_<?php echo (int)$Block->id?>\" /></div>
          </div>
          <?php if (($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_SAVE_PASSWORD) || ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_FOREIGN_COMPUTER)) { ?>
              <div class=\"form-group\">
                <div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\">
                  <label>
                    <?php if ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_SAVE_PASSWORD) { ?>
                        <input type=\"checkbox\" name=\"save_password\" value=\"1\" /> <?php echo SAVE_PASSWORD?>
                    <?php } elseif ($config[\'password_save_type\'] == Block_LogIn::SAVE_PASSWORD_FOREIGN_COMPUTER) { ?>
                        <input type=\"checkbox\" name=\"foreign_computer\" value=\"1\" /> <?php echo FOREIGN_COMPUTER?>
                    <?php } ?>
                  </label>
                </div>
              </div>
          <?php } ?>
          <div class=\"form-group\">
            <label class=\"control-label col-sm-3 col-md-2\">&nbsp;</label>
            <div class=\"col-sm-9 col-md-4\"><a href=\"/recovery/\"><?php echo LOST_PASSWORD?></a></div>
          </div>
          <?php if ($config[\'social_login_type\']) { ?>
              <div class=\"col-sm-offset-3 col-md-offset-2\" style=\"margin-bottom: 25px\">
                <script src=\"//ulogin.ru/js/ulogin.js\"></script>
                <div id=\"uLogin\" data-ulogin=\"display=panel;optional=first_name,last_name,phone,email,sex,nickname,bdate,city,country;providers=vkontakte,odnoklassniki,mailru,facebook;hidden=twitter,google,yandex,livejournal,youtube,webmoney;redirect_uri=<?php echo urlencode(\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'] . $_SERVER[\'REQUEST_URI\'])?>\"></div>
              </div>
          <?php } ?>
          <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo DO_LOGIN?></button></div></div>
        </div>
      </form>
    </div>
<?php } ?>
', '0'),
('54', '2', 'recovery', 'Восстановление пароля', '<?php
namespace RAAS\\CMS\\Users;

if ($_POST[\'AJAX\']) {
    $result = array();
    if ($success) {
        $result[\'success\'] = 1;
    }
    if ($localError) {
        $result[\'localError\'] = $localError;
    }
    ob_clean();
    echo json_encode($result);
    exit;
} else {
    ?>
    <div class=\"feedback\">
      <form class=\"form-horizontal\" method=\"post\" enctype=\"multipart/form-data\">
        <div data-role=\"notifications\" <?php echo ($success || $localError) ? \'\' : \'style=\"display: none\"\'?>>
          <div class=\"alert alert-success\" <?php echo ($success) ? \'\' : \'style=\"display: none\"\'?>>
            <?php echo $proceed ? YOUR_PASSWORD_WAS_SUCCESSFULLY_CHANGED : RECOVERY_KEY_WAS_SENT?>
          </div>
          <div class=\"alert alert-danger\" <?php echo ($localError) ? \'\' : \'style=\"display: none\"\'?>>
            <ul>
              <?php foreach ((array)$localError as $key => $val) { ?>
                  <li><?php echo htmlspecialchars($val)?></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div data-role=\"feedback-form\" <?php echo $success ? \'style=\"display: none\"\' : \'\'?>>
          <?php if ($proceed) { ?>
              <?php if (!$key_is_invalid) { ?>
                  <div class=\"form-group\">
                    <label for=\"password_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD?></label>
                    <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password\" id=\"password_<?php echo (int)$Block->id?>\" /></div>
                  </div>
                  <div class=\"form-group\">
                    <label for=\"password_confirm_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3 col-md-2\"><?php echo PASSWORD_CONFIRM?></label>
                    <div class=\"col-sm-9 col-md-4\"><input type=\"password\" class=\"form-control\" name=\"password@confirm\" id=\"password_confirm_<?php echo (int)$Block->id?>\" /></div>
                  </div>
                  <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3 col-md-offset-2\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo CHANGE?></button></div></div>
              <?php } ?>
          <?php } else { ?>
              <div class=\"form-group\">
                <label for=\"login_<?php echo (int)$Block->id?>\" class=\"control-label col-sm-3\"><?php echo ENTER_LOGIN_OR_EMAIL?></label>
                <div class=\"col-sm-9 col-md-4\"><input type=\"text\" name=\"login\" class=\"form-control\" id=\"login_<?php echo (int)$Block->id?>\" /></div>
              </div>
              <div class=\"form-group\"><div class=\"col-sm-9 col-md-4 col-sm-offset-3\"><button class=\"btn btn-primary\" type=\"submit\"><?php echo SEND?></button></div></div>
          <?php } ?>
        </div>
      </form>
    </div>
<?php } ?>
', '0'),
('55', '2', 'goods_faq', 'Вопрос-ответ к товарам', '<?php
namespace RAAS\\CMS;

use \\SOME\\Text;
use \\SOME\\HTTP;

if ($Set) { ?>
    <div class=\"goods-faq\">
      <div class=\"goods-faq__list\">
        <div class=\"goods-faq-list\">
          <?php foreach ($Set as $row) { ?>
              <div class=\"goods-faq-list__item\">
                <div class=\"goods-faq-item\">
                  <div class=\"goods-faq-item__text goods-faq-item__text_question\">
                    <div class=\"goods-faq-item__title\">
                      <span class=\"goods-faq-item__name\">
                        <?php echo htmlspecialchars($row->name)?>
                      </span>
                      <?php
                      $t = strtotime($row->date);
                      if ($t <= 0) {
                          $t = strtotime($row->post_date);
                      }
                      if ($t > 0) {
                          ?>
                          <span class=\"goods-faq-item__date\">
                            <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                          </span>
                      <?php } ?>
                    </div>
                    <div class=\"goods-faq-item__description\">
                      <?php echo $row->description?>
                    </div>
                  </div>
                  <?php if ($row->answer) { ?>
                      <div class=\"goods-faq-item__text goods-faq-item__text_answer goods-faq-item__text_slider\">
                        <div class=\"goods-faq-item__title\">
                          <span class=\"goods-faq-item__name\">
                            <?php echo ANSWER?>
                          </span>
                          <?php
                          $t = strtotime($row->answer_date);
                          if ($t <= 0) {
                              $t = strtotime($row->modify_date);
                          }
                          if ($t > 0) {
                              ?>
                              <span class=\"goods-faq-item__date\">
                                <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                              </span>
                          <?php } ?>
                        </div>
                        <div class=\"goods-faq-item__description\">
                          <div class=\"goods-faq-item__brief-description\">
                            <?php echo Text::cuttext(html_entity_decode(strip_tags($row->answer), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\')?>
                          </div>
                          <div class=\"goods-faq-item__full-description\"><?php echo $row->answer?></div>
                        </div>
                        <div class=\"goods-faq-item__more\">
                          <a href=\"#\" class=\"goods-faq-item__more-trigger\" data-show=\"<?php echo READ_ANSWER?>\" data-hide=\"<?php echo HIDE?>\">
                            <?php echo READ_ANSWER?>
                          </a>
                        </div>
                      </div>
                  <?php } ?>
                </div>
              </div>
          <?php } ?>
        </div>
      </div>
      <script src=\"/js/goods-faq.js?v=<?php echo date(\'Y-m-d\', filemtime(\'js/goods-faq.js\'))?>\"></script>
    </div>
<?php } ?>', '0'),
('56', '2', 'goods_reviews', 'Отзывы к товарам', '<?php
namespace RAAS\\CMS;

use \\SOME\\Text;
use \\SOME\\HTTP;

if ($Set) { ?>
    <div class=\"goods-reviews\">
      <div class=\"goods-reviews__list\">
        <div class=\"goods-reviews-list\">
          <?php foreach ($Set as $row) { ?>
              <div class=\"goods-reviews-list__item\">
                <div class=\"goods-reviews-item\">
                  <div class=\"goods-reviews-item__text goods-reviews-item__text_question\">
                    <div class=\"goods-reviews-item__title\">
                      <span class=\"goods-reviews-item__name\">
                        <?php echo htmlspecialchars($row->name)?>
                      </span>
                      <?php
                      $t = strtotime($row->date);
                      if ($t <= 0) {
                          $t = strtotime($row->post_date);
                      }
                      if ($t > 0) {
                          ?>
                          <span class=\"goods-reviews-item__date\">
                            <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                          </span>
                      <?php } ?>
                    </div>
                    <div class=\"goods-reviews-item__description\">
                      <?php echo $row->description?>
                    </div>
                  </div>
                  <?php if ($row->answer) { ?>
                      <div class=\"goods-reviews-item__text goods-reviews-item__text_answer goods-reviews-item__text_slider\">
                        <div class=\"goods-reviews-item__title\">
                          <span class=\"goods-reviews-item__name\">
                            <?php echo ANSWER?>
                          </span>
                          <?php
                          $t = strtotime($row->answer_date);
                          if ($t <= 0) {
                              $t = strtotime($row->modify_date);
                          }
                          if ($t > 0) {
                              ?>
                              <span class=\"goods-reviews-item__date\">
                                <?php echo date(\'d\', $t) . \' \' . Text::$months[(int)date(\'m\', $t)] . \' \' . date(\'Y\', $t)?>
                              </span>
                          <?php } ?>
                        </div>
                        <div class=\"goods-reviews-item__description\">
                          <div class=\"goods-reviews-item__brief-description\">
                            <?php echo Text::cuttext(html_entity_decode(strip_tags($row->answer), ENT_COMPAT | ENT_HTML5, \'UTF-8\'), 256, \'...\')?>
                          </div>
                          <div class=\"goods-reviews-item__full-description\"><?php echo $row->answer?></div>
                        </div>
                        <div class=\"goods-reviews-item__more\">
                          <a href=\"#\" class=\"goods-reviews-item__more-trigger\" data-show=\"<?php echo READ_ANSWER?>\" data-hide=\"<?php echo HIDE?>\">
                            <?php echo READ_ANSWER?>
                          </a>
                        </div>
                      </div>
                  <?php } ?>
                </div>
              </div>
          <?php } ?>
        </div>
      </div>
      <script src=\"/js/goods-reviews.js?v=<?php echo date(\'Y-m-d\', filemtime(\'js/goods-reviews.js\'))?>\"></script>
    </div>
<?php } ?>', '0');


-- *************************************************************
-- 
-- Table structure: cms_templates
-- 
DROP TABLE IF EXISTS cms_templates;
CREATE TABLE `cms_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `description` text COMMENT 'Code',
  `width` int(10) unsigned NOT NULL DEFAULT '640' COMMENT 'Width',
  `height` int(10) unsigned NOT NULL DEFAULT '1024' COMMENT 'Height',
  `visual` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Template is visual',
  `background` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Background attachment ID#',
  `locations_info` text COMMENT 'Locations info',
  PRIMARY KEY (`id`),
  KEY `background` (`background`),
  KEY `urn` (`urn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Templates';

-- 
-- Table data: cms_templates
-- 
INSERT INTO `cms_templates` (`id`, `name`, `urn`, `description`, `width`, `height`, `visual`, `background`, `locations_info`) VALUES 
('1', 'Главная', 'main', '<?php
namespace RAAS\\CMS;

$colspanSM = 4;
$colspanMD = 3;

$bgPage = $Page;
while (!$bgPage->background->id && $bgPage->pid) {
    $bgPage = $bgPage->parent;
}
$bg = $bgPage->background;
unset($bgPage);

$separateScripts = function($text)
{
    $rx = \'/\\\\<script.*?\\\\>.*?\\\\<\\\\/script\\\\>/umis\';
    $scripts = \'\';
    $result = $text;
    if (preg_match_all($rx, $text, $regs)) {
        foreach ($regs[0] as $i => $script) {
            if (!preg_match(\'/maps.*?yandex.*constructor?/umis\', $script)) {
                $scripts .= $script . \"\\n\";
                $result = str_replace($script, \'\', $result);
            }
        }
    }
    return array($result, $scripts);
};

ob_start();
?>
<!DOCTYPE html>
<?php if ($Page->noindex || $Page->Material->noindex) { ?>
    <!--noindex-->
<?php } ?>
<html lang=\"<?php echo htmlspecialchars($Page->lang)?>\">
  <head>
    <?php echo eval(\'?\' . \'>\' . Snippet::importByURN(\'head\')->description)?>
    <?php echo $Page->location(\'head_counters\')?>
  </head>
  <body class=\"body <?php echo !$Page->pid ? \' body_main\' : \'\'?>\">
    <div id=\"top\" class=\"body__background-holder\"<?php echo $bg->id ? \' style=\"background-image: url(\\\'/\' . htmlspecialchars($bg->fileURL) . \'\\\')\"\' : \'\'?>>
      <header class=\"body__header\">
        <div class=\"container\">
          <div class=\"body__header-inner\">
            <div class=\"row\">
              <div class=\"col-sm-6 body__logo\">
                <?php echo $Page->location(\'logo\')?>
              </div>
              <div class=\"col-sm-6 body__contacts-top\">
                <?php echo $Page->location(\'contacts_top\')?>
              </div>
            </div>
          </div>
          <div class=\"body__menu-top-outer\">
            <div class=\"row\">
              <div class=\"col-sm-9 body__menu-top\">
                <?php echo $Page->location(\'menu_top\')?>
              </div>
              <div class=\"col-sm-3 body__search-form\">
                <?php echo $Page->location(\'search_form\')?>
              </div>
            </div>
          </div>
          <div class=\"body__banners\">
            <?php echo $Page->location(\'banners\')?>
          </div>
        </div>
      </header>
      <main class=\"body__main-container\">
        <div class=\"container\">
          <div class=\"row\">
            <?php
            $leftText = $Page->location(\'left\');
            $rightText = $Page->location(\'right\');
            if ($leftText) { ?>
                <aside class=\"body__left col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">
                  <div class=\"body__left-inner\"><?php echo $leftText?></div>
                </aside>
            <?php } ?>
            <?php if (count($Page->locationBlocksText[\'content\'])) {
                $spanSM = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanSM);
                $spanMD = 12 - (((int)(bool)$leftText + (int)(bool)$rightText) * $colspanMD);
                ?>
                <div class=\"body__content col-sm-<?php echo $spanSM?> col-md-<?php echo $spanMD?>\">
                  <div class=\"body__content-inner\">
                    <?php if (!$Page->pid) { ?>
                        <?php echo $Page->location(\'content\')?>
                    <?php } else { ?>
                        <?php if ((count($Page->parents) + (bool)$Page->Material->id + (bool)$Page->Item->id) > 1) { ?>
                            <ol class=\"breadcrumb\">
                              <?php foreach ($Page->parents as $row) { ?>
                                  <li><a href=\"<?php echo htmlspecialchars($row->url)?>\"><?php echo htmlspecialchars($row->getBreadcrumbsName())?></a></li>
                              <?php } ?>
                              <?php if ($Page->Material->id || $Page->Item->id) { ?>
                                  <li><a href=\"<?php echo htmlspecialchars($Page->url)?>\"><?php echo htmlspecialchars($Page->getBreadcrumbsName())?></a></li>
                              <?php } ?>
                            </ol>
                        <?php } ?>
                        <h1 class=\"h1\"><?php echo htmlspecialchars($Page->getH1())?></h1>
                        <?php echo $Page->location(\'content\')?>
                        <?php echo $Page->location(\'share\')?>
                    <?php } ?>
                  </div>
                </div>
            <?php } ?>
            <?php if ($rightText) { ?>
                <aside class=\"body__right col-sm-<?php echo $colspanSM?> col-md-<?php echo $colspanMD?>\">
                  <div class=\"body__right-inner\"><?php echo $rightText?></div>
                </aside>
            <?php } ?>
          </div>
        </div>
        <?php if ($text = $Page->location(\'content2\')) { ?>
            <div class=\"body__content2\"><?php echo $text?></div>
        <?php } ?>
        <?php if ($text = $Page->location(\'content3\')) { ?>
            <div class=\"body__content3\">
              <div class=\"container\">
                <div class=\"body__content3-inner\"><?php echo $text?></div>
              </div>
            </div>
        <?php } ?>
        <?php if ($text = $Page->location(\'content4\')) { ?>
            <div class=\"body__content4\"><?php echo $text?></div>
        <?php } ?>
        <?php if ($text = $Page->location(\'content5\')) { ?>
            <div class=\"body__content5\">
              <div class=\"container\">
                <div class=\"body__content5-inner\"><?php echo $text?></div>
              </div>
            </div>
        <?php } ?>
      </div>
      <footer class=\"body__footer\">
        <div class=\"container\">
          <div class=\"body__footer-inner\">
            <div class=\"row\">
              <div class=\"col-sm-6 body__copyrights\"><?php echo $Page->location(\'copyrights\')?></div>
              <div class=\"col-sm-6 body__menu-bottom\"><?php echo $Page->location(\'menu_bottom\')?></div>
            </div>
          </div>
          <div class=\"body__developer\">Разработка и сопровождение сайта <a href=\"http://volumnet.ru\" target=\"_blank\">Volume&nbsp;Networks</a></div>
        </div>
      </footer>
    </div>
    <?php
    echo $Page->location(\'footer_counters\');
    $content = ob_get_contents();
    ob_end_clean();
    $content = $separateScripts($content);
    echo $content[0] . $content[1];
    ?>
  </body>
</html>
<?php if ($Page->noindex || $Page->Material->noindex) { ?>
    <!--/noindex-->
<?php } ?>
', '660', '1320', '1', '0', '[{\"urn\":\"logo\",\"x\":\"10\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"contacts_top\",\"x\":\"500\",\"y\":\"0\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_top\",\"x\":\"10\",\"y\":\"130\",\"width\":\"480\",\"height\":\"60\"},{\"urn\":\"search_form\",\"x\":\"500\",\"y\":\"130\",\"width\":\"150\",\"height\":\"60\"},{\"urn\":\"banners\",\"x\":\"10\",\"y\":\"200\",\"width\":\"640\",\"height\":\"60\"},{\"urn\":\"left\",\"x\":\"10\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content\",\"x\":\"170\",\"y\":\"270\",\"width\":\"320\",\"height\":\"220\"},{\"urn\":\"right\",\"x\":\"500\",\"y\":\"270\",\"width\":\"150\",\"height\":\"220\"},{\"urn\":\"content2\",\"x\":\"10\",\"y\":\"500\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content3\",\"x\":\"170\",\"y\":\"600\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"content4\",\"x\":\"10\",\"y\":\"700\",\"width\":\"640\",\"height\":\"90\"},{\"urn\":\"content5\",\"x\":\"170\",\"y\":\"800\",\"width\":\"320\",\"height\":\"90\"},{\"urn\":\"share\",\"x\":\"170\",\"y\":\"900\",\"width\":\"320\",\"height\":\"60\"},{\"urn\":\"copyrights\",\"x\":\"10\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"menu_bottom\",\"x\":\"500\",\"y\":\"960\",\"width\":\"150\",\"height\":\"120\"},{\"urn\":\"head_counters\",\"x\":\"10\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"},{\"urn\":\"footer_counters\",\"x\":\"335\",\"y\":\"1090\",\"width\":\"315\",\"height\":\"220\"}]');


-- *************************************************************
-- 
-- Table structure: cms_users
-- 
DROP TABLE IF EXISTS cms_users;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `vis` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Active',
  `lang` varchar(255) NOT NULL DEFAULT 'ru' COMMENT 'Language',
  `new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'New',
  `activated` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Activated',
  PRIMARY KEY (`id`),
  KEY `pid` (`login`),
  KEY `email` (`email`),
  KEY `post_date` (`post_date`),
  KEY `vis` (`vis`),
  KEY `new` (`new`),
  KEY `activated` (`activated`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Users';

-- 
-- Table data: cms_users
-- 
INSERT INTO `cms_users` (`id`, `login`, `password_md5`, `email`, `post_date`, `vis`, `lang`, `new`, `activated`) VALUES 
('1', 'test', '368001d7d16bca9636f07daa3347428d', 'test@test.org', '2018-04-22 09:46:02', '1', 'ru', '0', '0'),
('2', 'test2', '368001d7d16bca9636f07daa3347428d', 'test2@test.org', '2018-04-22 09:47:28', '1', 'ru', '0', '0');


-- *************************************************************
-- 
-- Table structure: cms_users_billing_accounts
-- 
DROP TABLE IF EXISTS cms_users_billing_accounts;
CREATE TABLE `cms_users_billing_accounts` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Balance',
  PRIMARY KEY (`uid`,`billing_type_id`),
  KEY `uid` (`uid`),
  KEY `billing_type_id` (`billing_type_id`),
  KEY `balance` (`balance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Billing accounts';

-- *************************************************************
-- 
-- Table structure: cms_users_billing_transactions
-- 
DROP TABLE IF EXISTS cms_users_billing_transactions;
CREATE TABLE `cms_users_billing_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Author ID#',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `billing_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Billing type ID#',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Post date',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Transaction amount',
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `uid` (`uid`),
  KEY `billing_type_id` (`billing_type_id`),
  KEY `post_date` (`post_date`),
  KEY `amount` (`amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Billing transactions';

-- *************************************************************
-- 
-- Table structure: cms_users_billing_types
-- 
DROP TABLE IF EXISTS cms_users_billing_types;
CREATE TABLE `cms_users_billing_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `urn` varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Billing types';

-- *************************************************************
-- 
-- Table structure: cms_users_blocks_login
-- 
DROP TABLE IF EXISTS cms_users_blocks_login;
CREATE TABLE `cms_users_blocks_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `email_as_login` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Show e-mail as login',
  `social_login_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Social networks log-in type: 0 - none, 1 - only registered, 2 - quick register',
  `password_save_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Password save type: 0 - none, 1 - checkbox "save password", 2 - checkbox "foreign computer"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Log in blocks';

-- 
-- Table data: cms_users_blocks_login
-- 
INSERT INTO `cms_users_blocks_login` (`id`, `email_as_login`, `social_login_type`, `password_save_type`) VALUES 
('46', '1', '0', '1');


-- *************************************************************
-- 
-- Table structure: cms_users_blocks_recovery
-- 
DROP TABLE IF EXISTS cms_users_blocks_recovery;
CREATE TABLE `cms_users_blocks_recovery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `notification_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Recovery notification ID#',
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='Recovery blocks';

-- 
-- Table data: cms_users_blocks_recovery
-- 
INSERT INTO `cms_users_blocks_recovery` (`id`, `notification_id`) VALUES 
('47', '50');


-- *************************************************************
-- 
-- Table structure: cms_users_blocks_register
-- 
DROP TABLE IF EXISTS cms_users_blocks_register;
CREATE TABLE `cms_users_blocks_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Register form ID#',
  `email_as_login` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Use e-mail as login',
  `notify_about_edit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Notify admin about profile edit',
  `allow_edit_social` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Allow to edit social networks',
  `activation_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Activation type: 0 - by admin, 1 - by user, 2 - already active',
  `allow_to` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Allow block to: -1 - unregistered, 0 - all, 1 - registered',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Redirect unallowable users to',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Register blocks';

-- 
-- Table data: cms_users_blocks_register
-- 
INSERT INTO `cms_users_blocks_register` (`id`, `form_id`, `email_as_login`, `notify_about_edit`, `allow_edit_social`, `activation_type`, `allow_to`, `redirect_url`) VALUES 
('45', '4', '0', '0', '0', '1', '0', '');


-- *************************************************************
-- 
-- Table structure: cms_users_groups_assoc
-- 
DROP TABLE IF EXISTS cms_users_groups_assoc;
CREATE TABLE `cms_users_groups_assoc` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  PRIMARY KEY (`uid`,`gid`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users-groups associations';

-- 
-- Table data: cms_users_groups_assoc
-- 
INSERT INTO `cms_users_groups_assoc` (`uid`, `gid`) VALUES 
('1', '1');


-- *************************************************************
-- 
-- Table structure: cms_users_social
-- 
DROP TABLE IF EXISTS cms_users_social;
CREATE TABLE `cms_users_social` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'Social network page URL',
  PRIMARY KEY (`uid`,`url`),
  KEY `uid` (`uid`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users social networks associations';

-- 
-- Table data: cms_users_social
-- 
INSERT INTO `cms_users_social` (`uid`, `url`) VALUES 
('1', 'https://facebook.com/test'),
('1', 'https://vk.com/test');


-- *************************************************************
-- 
-- Table structure: groups
-- 
DROP TABLE IF EXISTS groups;
CREATE TABLE `groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent group ID#',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `description` text COMMENT 'Description',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Groups of users';

-- *************************************************************
-- 
-- Table structure: groups_levels_assoc
-- 
DROP TABLE IF EXISTS groups_levels_assoc;
CREATE TABLE `groups_levels_assoc` (
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Level ID#',
  PRIMARY KEY (`gid`,`m`),
  KEY `gid` (`gid`),
  KEY `lid` (`lid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Groups-rights levels associations';

-- *************************************************************
-- 
-- Table structure: groups_rights
-- 
DROP TABLE IF EXISTS groups_rights;
CREATE TABLE `groups_rights` (
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data',
  PRIMARY KEY (`gid`,`m`),
  KEY `gid` (`gid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Groups access rights';

-- *************************************************************
-- 
-- Table structure: levels
-- 
DROP TABLE IF EXISTS levels;
CREATE TABLE `levels` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  `access` text COMMENT 'Access data',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  `priority` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Priority',
  PRIMARY KEY (`id`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Access levels';

-- *************************************************************
-- 
-- Table structure: registry
-- 
DROP TABLE IF EXISTS registry;
CREATE TABLE `registry` (
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Key',
  `value` text COMMENT 'Value',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Locked',
  PRIMARY KEY (`m`,`name`),
  KEY `m` (`m`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='System Registry';

-- 
-- Table data: registry
-- 
INSERT INTO `registry` (`m`, `name`, `value`, `locked`) VALUES 
('', 'installDate', '2018-04-05 11:33:29', '1'),
('', 'cookieLifetime', '14', '0'),
('', 'minPasswordLength', '3', '0'),
('', 'rowsPerPage', '20', '0'),
('cms', 'tnsize', '300', '0'),
('cms', 'maxsize', '1920', '0'),
('cms', 'cache', '0', '0'),
('cms', 'installDate', '2019-08-21 23:13:13', '1'),
('cms', 'isActive', '1', '0'),
('cms.meta_checker', 'installDate', '2018-04-05 11:34:16', '1'),
('cms.meta_checker', 'isActive', '1', '0'),
('cms.shop', 'installDate', '2019-08-21 23:13:18', '1'),
('cms.shop', 'isActive', '1', '0'),
('cms.users', 'activation_notify', '<?php
namespace RAAS\\CMS\\Users;

$recoveryBlocks = Block_Recovery::getSet(array(
    \'where\' => \"block_type = \'RAAS\\\\\\\\CMS\\\\\\\\Users\\\\\\\\Block_Recovery\'\",
    \'orderBy\' => \'id\'
));
$recoveryPages = array();
if ($recoveryBlocks) {
    $recoveryPages = array();
    foreach ($recoveryBlocks as $recoveryBlock) {
        $recoveryPages = array_merge($recoveryPages, $recoveryBlock->pages);
    }
}
$recoveryPage = null;
$langRecoveryPages = array_filter($recoveryPages, function ($x) use ($User) {
    return $x->lang == $User->lang;
});
if ($langRecoveryPages) {
    $recoveryPage = array_shift($langRecoveryPages);
}
if (!$recoveryPage->id && $recoveryPages) {
    $recoveryPage = array_shift($recoveryPages);
}
?>
<p><?php echo GREETINGS?></p>

<?php if ($active) { ?>
    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_ACTIVATED?></p>
    <p><?php echo NOW_YOU_CAN_LOG_IN_INTO_THE_SYSTEM?></p>
    <p>
      <strong><?php echo YOUR_LOGIN?>:</strong> <?php echo htmlspecialchars($User->login)?><br />
      <?php
      $recoveryUrl = (\'http\' . ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\') . \'://\' . $_SERVER[\'HTTP_HOST\'])
                   . ($recoveryPage->id ? $recoveryPage->url : \'/recovery/\');
      echo sprintf(YOUR_PASSWORD_ISNT_STORED_IN_DATABASE_FOR_SECURITY_REASON, htmlspecialchars($recoveryUrl));
      ?>
    </p>
<?php } else { ?>
    <p><?php echo YOUR_ACCOUNT_HAS_BEEN_BLOCKED?></p>
    <p><?php echo PLEASE_CONTACT_SITE_ADMINISTRATOR_TO_ASK_REASON?></p>
<?php } ?>

<p>--</p>
<p>
  <?php echo WITH_RESPECT?>,<br />
  <?php echo ADMINISTRATION_OF_SITE?> <a href=\"http<?php echo ($_SERVER[\'HTTPS\'] == \'on\' ? \'s\' : \'\')?>://<?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?>\"><?php echo htmlspecialchars($_SERVER[\'HTTP_HOST\'])?></a>
</p>
', '0'),
('cms.users', 'automatic_notification', '1', '0'),
('cms.users', 'installDate', '2019-08-21 23:13:23', '1'),
('cms.users', 'isActive', '1', '0');


-- *************************************************************
-- 
-- Table structure: users
-- 
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `login` varchar(255) NOT NULL DEFAULT '' COMMENT 'Login',
  `register_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Registration date',
  `password_md5` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password MD5',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'E-mail',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Last name',
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'First name',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Second name',
  `root` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Global admin',
  `ip_filter` varchar(255) NOT NULL DEFAULT '' COMMENT 'User IP filter',
  `blocked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User is blocked',
  `cache_rights` text COMMENT 'Rights table serialize',
  `prefs` text COMMENT 'User preferences',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Users';

-- 
-- Table data: users
-- 
INSERT INTO `users` (`id`, `login`, `register_date`, `password_md5`, `email`, `last_name`, `first_name`, `second_name`, `root`, `ip_filter`, `blocked`, `cache_rights`, `prefs`) VALUES 
('1', 'admin', '2018-04-05 11:33:36', '2f3ea141f3b969b622db16187d81333d', '', '', '', '', '1', '', '0', '{\"cms\":{\"rights\":[],\"mask\":-1},\"\\/\":{\"rights\":[],\"mask\":-1},\"cms.users\":{\"rights\":[],\"mask\":-1}}', '{\"lang\":\"ru\"}');


-- *************************************************************
-- 
-- Table structure: users_groups_assoc
-- 
DROP TABLE IF EXISTS users_groups_assoc;
CREATE TABLE `users_groups_assoc` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group ID#',
  `group_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Group admin',
  PRIMARY KEY (`uid`,`gid`),
  KEY `uid` (`uid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users-groups associations';

-- *************************************************************
-- 
-- Table structure: users_levels_assoc
-- 
DROP TABLE IF EXISTS users_levels_assoc;
CREATE TABLE `users_levels_assoc` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `lid` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Level ID#',
  PRIMARY KEY (`uid`,`m`),
  KEY `uid` (`uid`),
  KEY `lid` (`lid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users-rights levels associations';

-- *************************************************************
-- 
-- Table structure: users_log
-- 
DROP TABLE IF EXISTS users_log;
CREATE TABLE `users_log` (
  `uid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID#',
  `last_activity_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last activity date',
  `ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'IP Address',
  `package` varchar(32) NOT NULL DEFAULT '' COMMENT 'Package',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT 'Module',
  `sub` varchar(32) NOT NULL DEFAULT '' COMMENT 'Submodule',
  `action_name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Action',
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Element ID#',
  PRIMARY KEY (`uid`,`last_activity_date`),
  KEY `uid` (`uid`),
  KEY `last_activity_date` (`last_activity_date`),
  KEY `package` (`package`),
  KEY `module` (`module`),
  KEY `sub` (`sub`),
  KEY `action_name` (`action_name`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users activity log';

-- *************************************************************
-- 
-- Table structure: users_rights
-- 
DROP TABLE IF EXISTS users_rights;
CREATE TABLE `users_rights` (
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID#',
  `m` varchar(32) NOT NULL DEFAULT '' COMMENT 'MID',
  `access` text COMMENT 'Access data',
  PRIMARY KEY (`uid`,`m`),
  KEY `uid` (`uid`),
  KEY `m` (`m`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Users access rights';