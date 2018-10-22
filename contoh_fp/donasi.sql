-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.23-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for donasi
CREATE DATABASE IF NOT EXISTS `donasi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `donasi`;

-- Dumping structure for table donasi.donasis
CREATE TABLE IF NOT EXISTS `donasis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caradonasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_transfer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donasi.donasis: ~0 rows (approximately)
/*!40000 ALTER TABLE `donasis` DISABLE KEYS */;
INSERT INTO `donasis` (`id`, `name`, `email`, `hp`, `caradonasi`, `pilihan_paket`, `kode_transfer`, `status`, `created_at`, `updated_at`) VALUES
	(2, 'wkwkw', 'kjkj@y.c', '3', 'mandiri', 'standard', '1336081', '1', '2018-09-09 04:26:06', '2018-09-09 05:03:59'),
	(3, 'wkwkw', 'kjkj@y.c', '2', 'mandiri', 'standard', '1349200', '0', '2018-09-09 04:26:09', '2018-09-09 04:26:09'),
	(4, 'wkwkw', 'kjkj@y.c', '1', 'mandiri', 'standard', '1347872', '0', '2018-09-09 04:26:18', '2018-09-09 04:26:18'),
	(5, 'wkwkw', 'kjkj@y.c', '1', 'mandiri', 'standard', '1378323', '0', '2018-09-09 04:27:04', '2018-09-09 04:27:04'),
	(6, 'wkwkw', 'kjkj@y.c', '4343443', 'mandiri', 'standard', '1378800', '0', '2018-09-09 04:28:44', '2018-09-09 04:28:44');
/*!40000 ALTER TABLE `donasis` ENABLE KEYS */;

-- Dumping structure for table donasi.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donasi.messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `isi`, `created_at`, `updated_at`) VALUES
	(1, 'Cek', 'kjkl@y.c', 'jkljljlk', 'jlkjkl', '2018-09-09 04:04:53', '2018-09-09 04:04:53'),
	(2, 'Cek', 'kjkl@y.c', 'jkljljlk', 'jlkjkl', '2018-09-09 04:09:31', '2018-09-09 04:09:31'),
	(3, 'Cek', 'kljl@y.c', 'klj', 'kljlk', '2018-09-09 04:29:03', '2018-09-09 04:29:03');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table donasi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donasi.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2014_10_12_000000_create_users_table', 1),
	(6, '2014_10_12_100000_create_password_resets_table', 1),
	(7, '2018_09_09_034700_create_messages_table', 1),
	(8, '2018_09_09_034723_create_donasis_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table donasi.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donasi.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table donasi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table donasi.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', '$2y$10$E/rbeWMnWqryEpFo9l8IVuq9yf.bpGnnQwCEAq.jP7fT/33OLpcAG', 'Wtsu0VAwXxLBDkaULsX8Z8ncQ6UiWYA3v0wsh6LoN9Jfz8yBWjFjC6hDuzLq', '2018-09-09 04:30:03', '2018-09-09 04:30:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
