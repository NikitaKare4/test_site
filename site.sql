-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.23 - MySQL Community Server - GPL
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица site.courier
CREATE TABLE IF NOT EXISTS `courier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.courier: 10 rows
DELETE FROM `courier`;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` (`id`, `name`) VALUES
	(1, 'Галкин Максим Александрович'),
	(2, 'Сергей Бурунов Александрович'),
	(3, 'Сергей Безруков Витальевич'),
	(4, 'Дмитрий Нагиев Владимирович'),
	(5, 'Алексей Щербаков Сергеевич'),
	(6, 'Стивен Кинг'),
	(7, 'Николай Басков'),
	(8, 'Побег из Шоушенка'),
	(9, 'Сумерки'),
	(10, 'Сияние');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;


-- Дамп структуры для таблица site.region
CREATE TABLE IF NOT EXISTS `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `travel_time` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.region: 10 rows
DELETE FROM `region`;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`id`, `name`, `travel_time`) VALUES
	(1, 'Санкт-Петербург', 1),
	(2, 'Уфа', 2),
	(3, 'Нижний Новгород', 3),
	(4, 'Владимир', 4),
	(5, 'Кострома', 5),
	(6, 'Екатеринбург', 6),
	(7, 'Ковров', 7),
	(8, 'Воронеж', 8),
	(9, 'Самара', 9),
	(10, 'Астрахань', 10);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;


-- Дамп структуры для таблица site.travel
CREATE TABLE IF NOT EXISTS `travel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int NOT NULL,
  `departure` date NOT NULL,
  `courier_id` int NOT NULL,
  `arrive` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courier_id` (`courier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы site.travel: ~7 rows (приблизительно)
DELETE FROM `travel`;
/*!40000 ALTER TABLE `travel` DISABLE KEYS */;
INSERT INTO `travel` (`id`, `region_id`, `departure`, `courier_id`, `arrive`) VALUES
	(1, 1, '2019-06-15', 1, '2019-06-16'),
	(2, 2, '2019-06-01', 2, '2019-06-03'),
	(3, 3, '2019-06-16', 3, '2019-06-19'),
	(4, 4, '2019-06-19', 4, '2019-06-23'),
	(5, 5, '2019-06-04', 5, '2019-06-09'),
	(6, 6, '2019-06-03', 6, '2019-06-09'),
	(7, 7, '2019-06-23', 7, '2019-07-01');
/*!40000 ALTER TABLE `travel` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
