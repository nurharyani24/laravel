-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 04:32 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak16`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nur', 'nur@gmail.com', 'CEO', '$2y$10$rUw1/7KCa/PmoGqLtg7BEeDqmaYNu/yJZDIMUHHwQli4sAu1oH8Ji', NULL, '2018-11-05 22:54:42', '2018-11-05 22:54:42'),
(2, 'Admin', 'nurharyani2407@gmail.com', 'CEO', '$2y$10$S9WeUyF/P5NVZHzMHeu.OeNZIJRHX.MZkHDyL88lZWsB2fmA7fRwa', 'AjidvPHv6BeeGo4qf8UHHT74VRoB5xfAWHpRdOj39NJfcDGzbupvNa11e2Ew', '2018-11-05 22:57:57', '2018-11-13 22:21:12'),
(3, 'Eliana', 'eliana@gmail.com', 'staff', '$2y$10$IAuXveiAYacJA3NJJAXSDuVurbmJQRb5olZuuzQj.aN103wpCwfHK', NULL, '2018-11-13 23:06:12', '2018-11-13 23:06:12'),
(4, 'User222', 'user1@gmail.com', 'staff', '$2y$10$ztLmi50h5e5/zwy3YJhHJebpp3xQNBisexfBEtjKGtpQhJ/S17Ute', NULL, '2018-11-13 23:32:48', '2018-11-13 23:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_31_060734_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$p6pxsBu0.dUIulThpyZf5Og1YQ.nIrTFvltaUs2mnBBGIA2s7lVnq', '2018-11-12 22:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nur Haryani', 'nurharyani2407@gmail.com', '$2y$10$pTYhVwl.qGUekR51wEodX./E7rlx.KOQNehtqaBUJx0WbSEJ2k/lC', 'QVDthQStt2cmQl7xTeKd10uZN24yGF3pGWuOEFKhj05IZ561oTd2AWcz6P4s', '2018-10-30 23:49:59', '2018-10-30 23:49:59'),
(2, 'Nur', 'admin@tokovirtualpro.com', 'nurharyani12345', 'SDskPGfu3Nwz2NGVVKqHApU2meZTMeIXMVnhc8Rlj4PD21Lqh8alpIwbjYKd', '2018-11-05 22:19:25', '2018-11-05 22:19:25'),
(4, 'User', 'user@gmail.com', '$2y$10$Aqnpde4MlRu2jI9EcMywFOTeSkqQf2kydN2hxHoTOOFqiGis6xZwG', 'LkgrKcVy0YIVGyW3xBZIhr487JiketRwjjxg5SXMCuXQ9uJAqcZ4J4rZVOUa', '2018-11-06 22:45:33', '2018-11-06 22:45:33'),
(5, 'Nuri', 'nharyaniie@gmail.com', '$2y$10$dQg.k3oVZTteUXinV2ccXOl24qFoOvKZDTQV1h1IvRHCeRlpVE6gm', 'kjBnotsTKbem0x24wsG4Q78JUwuWHp3ZKZo6qtxrZSlDQq2NmiiGu413zEQF', '2018-11-12 22:48:47', '2018-11-12 23:13:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
