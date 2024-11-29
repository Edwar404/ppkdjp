-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 02:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkatan3_learning_laravel_ppkd_w9`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Edie', '1234', 'Jl. Kayu Manis', '2024-11-28 07:35:45', '2024-11-28 07:35:45'),
(3, 'Ibrahim', '2345', 'Jl. Kayu Pahit', '2024-11-29 04:38:45', '2024-11-29 04:38:45'),
(4, 'Wawan', '07986', 'Jl. Kayu Asem', '2024-11-29 04:39:04', '2024-11-29 04:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_26_125902_create_type_of_services_table', 2),
(5, '2024_11_28_090553_create_customers_table', 3),
(6, '2024_11_28_112813_create_orders_table', 4),
(7, '2024_11_29_113711_create_orders_detail_table', 5),
(8, '2024_11_29_114843_add_total_price_to_orders', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_end_date` date NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `order_code`, `order_date`, `order_end_date`, `order_status`, `created_at`, `updated_at`, `total_price`) VALUES
(5, 1, 'L29112024001', '2024-11-29', '2024-11-29', 0, '2024-11-29 11:17:36', '2024-11-29 11:17:36', 60000),
(6, 3, 'L29112024006', '2024-11-29', '2024-11-29', 0, '2024-11-29 11:47:59', '2024-11-29 11:47:59', 60000),
(7, 1, 'L29112024007', '2024-11-29', '2024-11-29', 0, '2024-11-29 11:50:43', '2024-11-29 11:50:43', 36000),
(8, 1, 'L29112024008', '2024-11-29', '2024-11-29', 0, '2024-11-29 11:51:43', '2024-11-29 11:51:43', 60000),
(9, 1, 'L29112024009', '2024-11-29', '2024-11-29', 0, '2024-11-29 11:53:12', '2024-11-29 11:53:12', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `id_service` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price_service` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `id_order`, `id_service`, `qty`, `price_service`, `subtotal`, `created_at`, `updated_at`) VALUES
(2, 5, 4, 10, 3000, 30000, '2024-11-29 11:17:36', '2024-11-29 11:17:36'),
(3, 5, 3, 10, 3000, 30000, '2024-11-29 11:17:36', '2024-11-29 11:17:36'),
(4, 6, 1, 12, 5000, 60000, '2024-11-29 11:47:59', '2024-11-29 11:47:59'),
(5, 7, 3, 12, 3000, 36000, '2024-11-29 11:50:43', '2024-11-29 11:50:43'),
(6, 8, 1, 12, 5000, 60000, '2024-11-29 11:51:43', '2024-11-29 11:51:43'),
(7, 9, 1, 12, 5000, 60000, '2024-11-29 11:53:12', '2024-11-29 11:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4BUlbdS6C544bsGL1xaFacigxsuDf44qgbqKfJht', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZnBsRXFaSjFJdnhhbXV4RlJjTFBOUEt0UGJvekdNZjljWXRTZ0IzQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuc19vcmRlci9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1732861629),
('b8EfoseDmUMqC1DMYPhChJNnqaQMNGzDMQbPVH6t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOXR3dGNweWFkRFMzSHUzNm5MOHVuQzlLVFNJdkFiS1JVQ0p4d2RLMyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdHJhbnNfb3JkZXIvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6ImFsZXJ0IjthOjA6e319', 1732873380),
('ogFg45xGnabSoctbVyaNwCoLz7qpka4m7y2kHBzF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRWxZellxbmliQU9rSXI0NWN1Y3Q2bHdqdERvVE42SjJZNzZRMDczcSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdHJhbnNfb3JkZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1732888392),
('s39hpc9xU8m0f7OaJeq018Py7vqbxyvWWpFuGWUJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWmVXcEc3SjhwZDNDamZYUEpoNmYzSlVZSmJGREZJUzRhV3NyOWlLVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZ2V0LXBha2V0LzQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1732864176),
('UZqmJoWyIK6MPCNmVUKbCHAdxsayWGJDGRZFPoYZ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibHF3cVZJMVllUG9ER2ZCVWY4Mk5aNmppUWV2R0hvdkFvVHVNd3dxMCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1732864111);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_services`
--

CREATE TABLE `type_of_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_of_services`
--

INSERT INTO `type_of_services` (`id`, `service_name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cuci dan Gosok', 5000, 'Pakaian Dicuci dengan deterjen terbaik dan digosok dengan pengharum', '2024-11-28 06:15:11', '2024-11-28 06:15:11'),
(3, 'Gosok', 3000, 'Gosok doang', '2024-11-29 04:39:29', '2024-11-29 04:39:29'),
(4, 'Cuci', 3000, 'Cuci doang', '2024-11-29 04:39:45', '2024-11-29 04:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$6btH8eZzjx7FgHUr03bRV.THiKerAyf7Dy7fK8xuHikTWpVZQ1jXm', NULL, '2024-11-25 10:05:11', '2024-11-25 10:05:11'),
(2, 'Edwar', 'edwar@gmail.com', NULL, '$2y$12$uIVijbGRI3J4nZ.tLGYZkO8tyRymO1P246baMAIiXGBQ2glAIL0xG', NULL, '2024-11-25 10:45:02', '2024-11-25 10:45:02'),
(3, 'Rangga', 'rangga@gmail.com', NULL, '$2y$12$TtEoqJJ982o2atFDsTMriuirCHk7KrvXVk4sAZkNQlltemHr7pnea', NULL, '2024-11-25 11:22:41', '2024-11-25 11:22:41'),
(4, 'Yusuf', 'yusuf@gmail.com', NULL, '$2y$12$mLYwZnu9L5eAqNcLmBH1r.biECZdFQMzjPStXSkjZQIFoTegWaa4a', NULL, '2024-11-25 11:23:03', '2024-11-25 11:23:03'),
(5, 'Atio', 'atio@gmail.com', NULL, '$2y$12$xKwpMz6/LV4TLGwvLOMDRuKk1zPX5ss077LiRfQ/YsvosLWhYA4.m', NULL, '2024-11-25 11:24:46', '2024-11-25 11:29:20'),
(6, 'Ozi', 'ozi@gmail.com', NULL, '$2y$12$ffX1uH.T4ezuyoTkusPsWeetfeSv6VmZ9qGdSdP1iAAXm5aVqySBe', NULL, '2024-11-25 11:28:19', '2024-11-25 11:28:19'),
(7, 'Gilang', 'gilang@gmail.com', NULL, '$2y$12$22uZ2JmtyqXwHqj0CdGCqOduN5vgD7ipCNlCgQ9unrzcY9eabb0KC', NULL, '2024-11-25 11:28:46', '2024-11-25 11:28:46'),
(8, 'Rizky', 'rizki@gmail.com', NULL, '$2y$12$Q34g6Vq4HljK6lvS20SZXO/JLgI3JH98.Ms9tb7Ka/9B640kdPUD.', NULL, '2024-11-25 11:29:08', '2024-11-25 11:29:08'),
(9, 'Eben', 'eben@gmail.com', NULL, '$2y$12$e8hSGL9XAH3wA3WZlUtzHOc7TbyFU7GfEx7QsKlJi4N1o/M6RJ.0.', NULL, '2024-11-25 11:29:39', '2024-11-25 11:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_customer_foreign` (`id_customer`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_detail_id_order_foreign` (`id_order`),
  ADD KEY `orders_detail_id_service_foreign` (`id_service`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `type_of_services`
--
ALTER TABLE `type_of_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type_of_services`
--
ALTER TABLE `type_of_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_detail_id_service_foreign` FOREIGN KEY (`id_service`) REFERENCES `type_of_services` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
