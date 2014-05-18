search
======
1) Create db 'search'

2) Import 
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `php_session_id` varchar(250) NOT NULL DEFAULT '',
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `search`;

CREATE TABLE `search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Search ID',
  `phrase` varchar(250) DEFAULT NULL COMMENT 'Search Phrase',
  `date_added` timestamp NULL DEFAULT NULL COMMENT 'Timestamp of created_at',
  `num_results` int(11) DEFAULT NULL COMMENT 'Total Number of Results',
  `php_session_id` varchar(250) DEFAULT NULL COMMENT 'PHP Session ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `search_click`;

CREATE TABLE `search_click` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `search_id` int(11) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `search_id` (`search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `search_flat`;

CREATE TABLE `search_flat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` varchar(250) NOT NULL DEFAULT '',
  `num_searches` int(11) NOT NULL,
  `num_clicks` int(11) NOT NULL,
  `revenue` decimal(11,2) NOT NULL,
  `num_orders` int(11) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phrase` (`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

3) Import Sample data from sample_data/search_sample.sql

4) Setup cron.php to run daily

5) Run Reports from index.php in your browser
