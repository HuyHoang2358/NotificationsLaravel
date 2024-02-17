-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.24 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6376
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table noti_db.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table noti_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.migrations: ~7 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(43, '2014_10_12_000000_create_users_table', 1),
	(44, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(45, '2014_10_12_100000_create_password_resets_table', 1),
	(46, '2019_08_19_000000_create_failed_jobs_table', 1),
	(47, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(48, '2024_01_12_122811_create_notifications_table', 1),
	(49, '2024_01_12_122853_create_posts_table', 1);

-- Dumping structure for table noti_db.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.notifications: ~14 rows (approximately)
DELETE FROM `notifications`;
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('0c4e5f3f-1800-4612-aa13-ff1c0eb27ea1', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:30:55', '2024-01-12 06:30:55'),
	('48147611-9fbf-47c5-beda-4fba891d10e1', 'App\\Notifications\\PostViewedNotification', 'App\\Models\\User', 3, '{"post_id":4,"post_name":"Dr.","viewer_id":1}', NULL, '2024-01-12 06:56:06', '2024-01-12 06:56:06'),
	('4cbfd0e6-7d86-49bc-aed1-2531c71b099e', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:31:52', '2024-01-12 06:31:52'),
	('5896ca39-f812-45b4-8c76-dca7943a0549', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:30:34', '2024-01-12 06:30:34'),
	('590c9ebf-7b07-4a0e-a5d6-c76408766652', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:31:57', '2024-01-12 06:31:57'),
	('63e45815-b138-4220-99e2-9fa8573397a8', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:30:09', '2024-01-12 06:30:09'),
	('6b35bde9-de66-45d8-a3f1-4a55f7ea58f4', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:24:28', '2024-01-12 06:24:28'),
	('73814fc2-405a-4d53-ba9c-bf590e99cb73', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:31:18', '2024-01-12 06:31:18'),
	('bba3a361-81ea-4940-833d-7a8305987fc3', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:28:12', '2024-01-12 06:28:12'),
	('cb9cc3f7-aa17-402f-802c-c1bff24a00c8', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":2,"post_name":"Ms.","viewer_id":2}', NULL, '2024-01-12 06:24:00', '2024-01-12 06:24:00'),
	('dcef4aa9-3ff7-47c3-9188-60cfc7bc7fd7', 'App\\Notifications\\PostViewedNotification', 'App\\Models\\User', 2, '{"post_id":3,"post_name":"Mrs.","viewer_id":1}', NULL, '2024-01-12 06:50:09', '2024-01-12 06:50:09'),
	('e5f693e7-b6b7-4a29-bfb6-f2c41f671d98', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":4}', NULL, '2024-01-12 06:41:46', '2024-01-12 06:41:46'),
	('e79ebd95-3ce2-4626-9ac8-41aea8f5db67', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:17:46', '2024-01-12 06:17:46'),
	('e9901942-e977-4ed4-be9e-236e92cee220', 'App\\Notifications\\PostViewed', 'App\\Models\\User', 1, '{"post_id":1,"post_name":"Miss","viewer_id":2}', NULL, '2024-01-12 06:28:17', '2024-01-12 06:28:17');

-- Dumping structure for table noti_db.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table noti_db.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table noti_db.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table noti_db.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.posts: ~5 rows (approximately)
DELETE FROM `posts`;
INSERT INTO `posts` (`id`, `name`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
	(1, 'Miss', '1', 'Nihil et neque eos impedit dolorem. Vel non eos voluptatibus cupiditate sed. Voluptas non omnis est et ex quo facilis. Officia recusandae incidunt beatae in.', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(2, 'Ms.', '4', 'Tempora accusamus perspiciatis dolor enim et. Qui consequuntur quisquam accusamus earum. Facilis qui eos aperiam corporis eos modi architecto et.', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(3, 'Mrs.', '2', 'Dolor maxime praesentium quisquam. Fuga soluta debitis eius est. Non sed fugiat et doloremque consequatur veniam tenetur.', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(4, 'Dr.', '3', 'Tempore cum rerum hic possimus consequatur. Natus ad vero aliquam saepe repellat. Ut voluptas non velit vel quibusdam aut qui. Dolor impedit sed reprehenderit qui excepturi inventore repudiandae.', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(5, 'Mr.', '5', 'Amet sit quo quasi iste facilis expedita. Itaque nihil molestiae sapiente ut. Quis veritatis harum sit dolores dolor nam ut voluptatem. Et quos tenetur repellendus. Et laboriosam eos quis incidunt nisi.', '2024-01-12 06:02:32', '2024-01-12 06:02:32');

-- Dumping structure for table noti_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table noti_db.users: ~10 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Karlee Swaniawski', 'marjory40@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', '4aq0drNuGgj2EFH6UvTQTGXOGxnPw3hxoYUzWJhMQzpm0oz4MhwoWqrZpJYy', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(2, 'Estefania Mertz', 'lessie.kshlerin@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'fDoa5VHF4a7zA4YkbjpAlo8toU2dHAsnfiG39ZvV1KuskDfNayTFKsrnl0Qv', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(3, 'Will Smith IV', 'runte.lewis@example.com', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'svLMAYVhOV', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(4, 'Selina Zemlak', 'brakus.jacey@example.com', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'uCwaE8OX5OcqgkmDk9qPqp127tkWIjNZ4cqABiea4FXZfm2D0M8Agp3IhBrr', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(5, 'Mr. Mckenna Roob', 'flavie50@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'Oq4yOxiklm', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(6, 'Mrs. Orie Block', 'coby00@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'dBbet4liCQ', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(7, 'Greta Zieme I', 'mia.collins@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', '7O8tPtc7vn', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(8, 'Prof. Ward Langworth PhD', 'vandervort.adrienne@example.com', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'j6huEBJSes', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(9, 'Deon Metz', 'chasity.heaney@example.com', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'dg6cMjaraF', '2024-01-12 06:02:32', '2024-01-12 06:02:32'),
	(10, 'Lester Bins', 'lesley.heaney@example.org', '2024-01-12 06:02:32', '$2y$12$yZZMjkPNLQ9LQnYDQd.sde6EBEipLdkmXvG7Xc101RTufRtOhABe2', 'hPqgE5XeJ7', '2024-01-12 06:02:32', '2024-01-12 06:02:32');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
