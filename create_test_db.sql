-- --------------------------------------------------------
-- ホスト:                          192.168.0.2
-- サーバのバージョン:                    5.1.73 - Source distribution
-- サーバー OS:                      redhat-linux-gnu
-- HeidiSQL バージョン:               9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for テーブル test.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table test.companies: 7 rows
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `address`) VALUES
	(1, 'com1', 'TOKYO'),
	(2, 'com22', 'NEWYORK'),
	(3, 'com3', 'TOKYO'),
	(4, 'com4', ''),
	(5, 'com5', 'NEWYORK'),
	(0, 'user1', 'TOKYO'),
	(7, 'com6', '');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;


-- Dumping structure for テーブル test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `company_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table test.users: 6 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `company_id`, `address`) VALUES
	(1, 'user1', 0, 'TOKYO'),
	(2, 'user2', 1, 'TOKYO'),
	(3, 'user3', 4, 'OSAKA'),
	(4, 'user4', 9999, 'NEWYORK'),
	(5, 'user5', 4, ''),
	(6, 'user6', 3, 'EDO');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
