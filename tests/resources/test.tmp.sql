DROP TABLE IF EXISTS tmp_entities;
CREATE TABLE tmp_entities (
  id int UNSIGNED NOT NULL COMMENT 'ID#',
  pid int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID#',
  vis tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Visibility',
  pvis tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Parent visibility',
  urn varchar(255) NOT NULL DEFAULT '' COMMENT 'URN',
  name varchar(255) NOT NULL DEFAULT '' COMMENT 'Name',
  priority int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority',
  cache_url varchar(255) NOT NULL DEFAULT '/' COMMENT 'Cached URL',
  
   PRIMARY KEY (id),
   KEY (pid),
   KEY (urn),
   KEY (priority),
   KEY (cache_url)
);


--
-- Дамп данных таблицы tmp_entities
--

INSERT INTO tmp_entities (id, pid, vis, pvis, urn, name, priority, cache_url) VALUES
(1, 0, 1, 1, 'test', 'Главная', 1, '/'),
(2, 1, 1, 1, 'about', 'О компании', 2, '/about/'),
(3, 1, 1, 1, 'services', 'Услуги', 3, '/services/'),
(4, 3, 1, 2, 'service1', 'Услуга 1', 4, '/services/service1/'),
(5, 3, 1, 1, 'service2', 'Услуга 2', 5, '/services/service2/'),
(6, 3, 0, 1, 'service3', 'Услуга 3', 6, '/services/service3/'),
(7, 1, 1, 1, 'news', 'Новости', 7, '/news/'),
(8, 1, 1, 1, 'contacts', 'Контакты', 8, '/contacts/'),
(9, 1, 1, 1, '404', '404 — страница не найдена', 9, '/404/'),
(10, 1, 1, 1, 'map', 'Карта сайта', 10, '/map/'),
(11, 1, 1, 1, 'sitemaps', 'sitemap.xml', 11, '/sitemaps/'),
(12, 1, 1, 1, 'robots', 'robots.txt', 12, '/robots/'),
(13, 1, 1, 1, 'custom_css', 'custom.css', 13, '/custom_css/'),
(14, 1, 1, 1, 'ajax', 'AJAX', 14, '/ajax/'),
(15, 1, 1, 1, 'catalog', 'Каталог продукции', 15, '/catalog/'),
(16, 15, 1, 1, 'category1', 'Категория 1', 16, '/catalog/category1/'),
(17, 16, 1, 1, 'category11', 'Категория 11', 17, '/catalog/category1/category11/'),
(18, 17, 1, 1, 'category111', 'Категория 111', 18, '/catalog/category1/category11/category111/'),
(19, 17, 1, 1, 'category112', 'Категория 112', 19, '/catalog/category1/category11/category112/'),
(20, 17, 1, 1, 'category113', 'Категория 113', 20, '/catalog/category1/category11/category113/'),
(21, 16, 1, 1, 'category12', 'Категория 12', 21, '/catalog/category1/category12/'),
(22, 16, 1, 1, 'category13', 'Категория 13', 22, '/catalog/category1/category13/'),
(23, 15, 1, 1, 'category2', 'Категория 2', 23, '/catalog/category2/'),
(24, 15, 1, 1, 'category3', 'Категория 3', 24, '/catalog/category3/'),
(25, 1, 1, 1, 'cart', 'Корзина', 25, '/cart/'),
(26, 14, 1, 1, 'cart', 'Корзина', 26, '/ajax/cart/'),
(27, 1, 1, 1, 'favorites', 'Избранное', 27, '/favorites/'),
(28, 14, 1, 1, 'favorites', 'Избранное', 28, '/ajax/favorites/'),
(29, 1, 1, 1, 'yml', 'Яндекс.Маркет', 29, '/yml/'),
(30, 1, 1, 1, 'register', 'Регистрация', 30, '/register/'),
(31, 1, 1, 1, 'activate', 'Активация', 31, '/activate/'),
(32, 1, 1, 1, 'login', 'Вход в систему', 32, '/login/'),
(33, 1, 1, 1, 'recovery', 'Восстановление пароля', 33, '/recovery/');
