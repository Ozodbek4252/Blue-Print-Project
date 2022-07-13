-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2022 at 10:02 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blueprintproject_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `data`, `created_at`, `updated_at`) VALUES
(1, 'laptop', 23, NULL, NULL),
(2, 'laptop', 11, NULL, NULL),
(3, 'laptop', 22, NULL, NULL),
(4, 'laptop', 27, NULL, NULL),
(5, 'laptop', 13, NULL, NULL),
(6, 'laptop', 22, NULL, NULL),
(7, 'laptop', 37, NULL, NULL),
(8, 'laptop', 21, NULL, NULL),
(9, 'laptop', 44, NULL, NULL),
(10, 'laptop', 22, NULL, NULL),
(11, 'laptop', 30, NULL, NULL),
(12, 'desktop', 44, NULL, NULL),
(13, 'desktop', 55, NULL, NULL),
(14, 'desktop', 41, NULL, NULL),
(15, 'desktop', 67, NULL, NULL),
(16, 'desktop', 22, NULL, NULL),
(17, 'desktop', 43, NULL, NULL),
(18, 'desktop', 21, NULL, NULL),
(19, 'desktop', 41, NULL, NULL),
(20, 'desktop', 56, NULL, NULL),
(21, 'desktop', 27, NULL, NULL),
(22, 'desktop', 43, NULL, NULL),
(23, 'Tablets', 30, NULL, NULL),
(24, 'Tablets', 25, NULL, NULL),
(25, 'Tablets', 36, NULL, NULL),
(26, 'Tablets', 30, NULL, NULL),
(27, 'Tablets', 45, NULL, NULL),
(28, 'Tablets', 35, NULL, NULL),
(29, 'Tablets', 64, NULL, NULL),
(30, 'Tablets', 52, NULL, NULL),
(31, 'Tablets', 59, NULL, NULL),
(32, 'Tablets', 36, NULL, NULL),
(33, 'Tablets', 39, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_24_133625_create_sessions_table', 1),
(7, '2022_07_07_101328_create_notifications_table', 2),
(8, '2022_07_13_090010_create_data_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9e6d530f-28e2-444f-b33d-e72f50adc2a2', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 1, '{\"user_id\":1,\"user_name\":\"Ozodbek\"}', NULL, '2022-07-07 05:48:34', '2022-07-07 05:48:34'),
('3a829dbd-7099-4204-a4ee-f4515bbe764c', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 1, '{\"user_id\":149,\"user_name\":\"Petra\"}', NULL, '2022-07-07 05:50:13', '2022-07-07 05:50:13'),
('b5ddc41e-c047-482b-a15f-2499c81ab00f', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":155,\"user_name\":\"Jeanie\"}', '2022-07-07 06:19:35', '2022-07-07 05:51:51', '2022-07-07 06:19:35'),
('819f4d19-cd4a-419a-af0a-3f2b1f39c900', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":140,\"user_name\":\"Adam\"}', '2022-07-07 06:03:43', '2022-07-07 05:57:47', '2022-07-07 06:03:43'),
('7c8a60dc-4470-4217-a28d-b82ff453a43f', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":134,\"user_name\":\"Jakayla\"}', '2022-07-07 06:19:35', '2022-07-07 06:14:49', '2022-07-07 06:19:35'),
('67737512-3511-4142-83d2-a514f44245a1', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":130,\"user_name\":\"Favian\"}', '2022-07-07 06:21:03', '2022-07-07 06:20:15', '2022-07-07 06:21:03'),
('3152c8d7-edac-468f-a9b4-876bad11573c', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":134,\"user_name\":\"Jakayla\"}', '2022-07-07 06:21:03', '2022-07-07 06:20:17', '2022-07-07 06:21:03'),
('21b630a4-45b7-4442-ac1e-ff878d57fa47', 'App\\Notifications\\UserFollowNotification', 'App\\Models\\User', 158, '{\"user_id\":130,\"user_name\":\"Favian\"}', '2022-07-13 02:38:56', '2022-07-13 02:35:01', '2022-07-13 02:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Af7ziYvW9d5eVG9DyhVRrkRv2vuTdawEVHVRPU4j', 158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWFg0bGJzamZPWXBrdmZHU29qYUhrbTRoclNubFE3dWM2NWRtNDlpVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTg7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkcXhqaHdRYm1Fclp2eFNBZHdNODZWT0M0R2dxYTEvYmM3R1NWN3dveDVpQ1hzclRVMlVMbS4iO30=', 1657706516);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `type`, `phone`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ozodbek', NULL, 'admin', NULL, 'ozodbek1111@gmail.com', NULL, '$2y$10$xzPE82NYcXPiEGcTcZMFle8Fa7hTTv8aFLPkDbLJV7I3mWTykSXAS', NULL, NULL, NULL, NULL, NULL, '2022-06-24 08:39:48', '2022-06-24 08:39:48'),
(149, 'Petra', 'Stokes', 'user', '+1.773.414.6411', 'altenwerth.bernice@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OJiCucZeZV', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(148, 'Blaise', 'Schulist', 'user', '+1-680-805-3214', 'kenyon.volkman@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uACgDRXrCv', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(147, 'Griffin', 'Murray', 'user', '(415) 398-1325', 'alexandre.mann@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'iPScUMayJ4', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(146, 'Guiseppe', 'Hackett', 'user', '1-520-615-4798', 'dean02@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xAZeRSyUWp', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(145, 'Brigitte', 'Raynor', 'user', '689.323.1772', 'corwin.melvin@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '020quVWbPe', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(144, 'Bonnie', 'Kub', 'user', '1-985-820-2410', 'wkoss@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NDL5bMkufG', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(143, 'Verna', 'Bayer', 'user', '970.719.4309', 'dorothy19@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wR4b6lCMuo', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(142, 'Carley', 'Hudson', 'user', '1-423-932-0678', 'derick63@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZW60hAzNZq', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(141, 'Jamey', 'Ledner', 'user', '+1-781-244-8101', 'horacio39@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yFpgFHBAeH', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(140, 'Adam', 'Hickle', 'user', '602-838-6193', 'ernestine62@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JsPoTOLHkz', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(139, 'Ofelia', 'Cartwright', 'user', '1-734-269-5262', 'jessy23@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UpgcsFpReJ', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(138, 'Marisol', 'Abshire', 'user', '+1.618.970.8714', 'elliot62@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PySMWddUkT', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(137, 'Efrain', 'Powlowski', 'user', '+1-248-223-2666', 'alfonzo.damore@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6QFRnwaGPD', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(136, 'Jolie', 'Borer', 'user', '(628) 389-2999', 'langworth.kolby@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'avmcJQUW0e', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(135, 'Devonte', 'Kris', 'user', '1-321-250-3669', 'jbode@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'u6bcKGxFML', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(134, 'Jakayla', 'Williamson', 'user', '302-873-2588', 'smith.patricia@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ry0vhZNe8H', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(133, 'Hettie', 'Borer', 'user', '407.444.8741', 'maybelle.windler@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MlKRlpKDo8', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(132, 'Brandyn', 'Roob', 'user', '+1-413-974-0334', 'kweber@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LPwzasuLBq', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(131, 'Savion', 'Mitchell', 'user', '1-757-229-4403', 'carolanne.rippin@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PVXy85kA8s', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(130, 'Favian', 'Bartoletti', 'user', '(317) 552-4739', 'enolan@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xbagaXDZyd', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(129, 'Brennon', 'Anderson', 'user', '+13477638119', 'ariane.pacocha@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TnlUSW4jCn', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(128, 'Rita', 'Yundt', 'user', '904.584.4166', 'xpadberg@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lyacQhcwga', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(127, 'Lauriane', 'Johns', 'user', '+1 (754) 846-1549', 'volkman.lilliana@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JjlK9zjYj5', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(126, 'Howell', 'Cummings', 'user', '1-607-514-3275', 'angelita56@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xkvo7Di2PG', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(125, 'Vaughn', 'Toy', 'user', '+1.802.518.9797', 'towne.humberto@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'XajVMxw49q', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(124, 'Thora', 'Romaguera', 'user', '1-279-322-0270', 'hallie10@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Xf1e08bZsO', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(123, 'Mitchel', 'Abbott', 'user', '(212) 958-3736', 'marquardt.mekhi@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zb8IcQEqqb', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(122, 'Carleton', 'Bednar', 'user', '(252) 665-2241', 'johnston.bernadine@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'U2oiBWOpPt', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(121, 'Daija', 'Stroman', 'user', '+1-559-470-7804', 'mireille.jones@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ScIJGEH3Pj', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(120, 'Jairo', 'Pouros', 'user', '1-623-462-3522', 'yazmin.cremin@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TzkO9DZKzt', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(119, 'Laisha', 'McLaughlin', 'user', '+1.770.850.2440', 'sbrakus@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'oIiJCUpnEh', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(118, 'Kristoffer', 'Ratke', 'user', '+1-272-759-2076', 'jayden.konopelski@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JM7p0cti5x', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(117, 'Michaela', 'Kirlin', 'user', '520-755-7383', 'ramona27@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dHWsuePrW9', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(116, 'Cale', 'Donnelly', 'user', '(424) 417-0517', 'susanna.schoen@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vx92YOBnTR', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(115, 'Coty', 'Schumm', 'user', '(940) 721-6740', 'kenny.keeling@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lIE1dHV21e', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(114, 'Lelah', 'Shields', 'user', '1-717-426-8521', 'fidel.boyer@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k5Jr7vZEJo', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(113, 'Bert', 'Morar', 'user', '559-476-8445', 'reilly.jo@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dTbU8oh1LC', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(112, 'Cleora', 'Haag', 'user', '828.417.4887', 'lorna.hill@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '09lXIDMRFi', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(111, 'Trever', 'McClure', 'user', '430.423.4187', 'ryan35@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Dyho0HiR97', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(110, 'Abelardo', 'Gutmann', 'user', '+1-617-928-3311', 'rae.lebsack@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'n8fLb4pvo5', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(109, 'Joana', 'Howell', 'user', '680.345.3993', 'weber.vita@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BXkJ1uNIk4', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(108, 'Cayla', 'Wisozk', 'user', '+1-518-561-5396', 'kelvin84@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'iigbEsNikM', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(150, 'Makenna', 'Towne', 'user', '(303) 423-0229', 'bernier.adriel@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qMiM2Z6xiv', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(151, 'Vella', 'Schmeler', 'user', '+15072295918', 'weber.aiyana@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lVMEtwG2LQ', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(152, 'Carli', 'Wolff', 'user', '217.262.5234', 'ygorczany@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'u2g5aNYReZ', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(153, 'Ollie', 'Bernier', 'user', '+1-734-385-0688', 'earlene.gottlieb@example.com', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'v6oATA2kVa', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(154, 'Emely', 'O\'Conner', 'user', '+1.408.488.3872', 'lakin.onie@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'paQzhXivIa', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(155, 'Jeanie', 'Hills', 'user', '+1-305-612-8933', 'yvette08@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'f1jAQ7yf0J', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(156, 'Carissa', 'Kemmer', 'user', '+1-223-802-5208', 'emertz@example.org', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Y9vPVA703m', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(157, 'Alexanne', 'Barton', 'user', '469.587.9955', 'tsawayn@example.net', '2022-07-07 02:53:35', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'M9pddpi7BR', NULL, '2022-07-07 02:53:35', '2022-07-07 02:53:35'),
(158, 'Ahror', NULL, 'admin', NULL, 'ahror1111@gmail.com', NULL, '$2y$10$qxjhwQbmErZvxSAdwM86VOC4Ggqa1/bc7GSV7wox5iCXsrTU2ULm.', NULL, NULL, NULL, NULL, NULL, '2022-07-07 05:51:14', '2022-07-07 05:51:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
