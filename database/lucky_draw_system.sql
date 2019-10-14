-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 08:12 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucky_draw_system`
--
CREATE DATABASE IF NOT EXISTS `lucky_draw_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lucky_draw_system`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'Aung Pyae Phyo', '65123455', '2019-10-13 18:41:18', '2019-10-13 18:41:18'),
(2, 'Linn Linn Htet', '65123455', '2019-10-13 18:41:36', '2019-10-13 18:41:36'),
(3, 'Linn Linn Htun', '65123455', '2019-10-13 18:41:48', '2019-10-13 18:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `grand_prize_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `grand_prize_view`;
CREATE TABLE `grand_prize_view` (
`winning_number` int(11)
,`customer_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `lucky_draws`
--

DROP TABLE IF EXISTS `lucky_draws`;
CREATE TABLE `lucky_draws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prize_id` int(11) NOT NULL,
  `winning_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_10_12_050344_create_prizes_table', 1),
(20, '2019_10_12_060855_create_customers_table', 1),
(21, '2019_10_12_064203_create_lucky_draws_table', 1),
(22, '2019_10_12_065712_create_winning_numbers_table', 1),
(23, '2019_10_14_023024_other_prize_view', 2),
(24, '2019_10_14_024621_grand_prize_view', 3),
(25, '2019_10_14_030715_prize_winner_view', 4),
(26, '2019_10_14_032018_prize_winner_view', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `other_prize_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `other_prize_view`;
CREATE TABLE `other_prize_view` (
`winning_number` int(11)
,`customer_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

DROP TABLE IF EXISTS `prizes`;
CREATE TABLE `prizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Grand Prize', '2019-10-13 18:41:44', '2019-10-13 18:41:44'),
(2, 'Second Prize - First Winner', '2019-10-13 18:42:12', '2019-10-13 18:42:12'),
(3, 'Second Prize - Second Winner', '2019-10-13 18:42:34', '2019-10-13 18:42:34'),
(4, 'Third Prize - First Winner', '2019-10-13 18:42:47', '2019-10-13 18:42:47'),
(5, 'Third Prize - Second Winner', '2019-10-13 18:43:00', '2019-10-13 18:43:00'),
(6, 'Third Prize - Third  Winner', '2019-10-13 18:43:14', '2019-10-13 18:43:14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `prize_winner_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `prize_winner_view`;
CREATE TABLE `prize_winner_view` (
`customer_name` varchar(255)
,`prize_name` varchar(255)
,`winning_number` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Linn Linn Htun', 'linlintun1197@gmail.com', NULL, '$2y$10$2kr9bgYiNQvqWMWyzWHRVuIhavDytMWh.oVIuNUvjKUuPQWinKeC6', NULL, '2019-10-13 16:39:42', '2019-10-13 16:39:42'),
(2, 'Myat Thet Khaing', 'myatthetkhaing@gmail.com', NULL, '$2y$10$txtgv5i9YFwC0bgcIovO3.4LPVqz8xTI4vOcxDjVH7TUvE8mmIvaG', NULL, '2019-10-13 18:07:58', '2019-10-13 18:07:58'),
(3, 'Linn Linn Htet', 'linnlinnhtet115@gmail.com', NULL, '$2y$10$slI2fu.TbPCC6ZZch1sAseUVHX40WboLl9uYFUx4CMgjXUvO6x7Fm', NULL, '2019-10-13 19:22:59', '2019-10-13 19:22:59');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_grand_prize`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_grand_prize`;
CREATE TABLE `vw_grand_prize` (
`winning_number` int(11)
,`customer_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `winning_numbers`
--

DROP TABLE IF EXISTS `winning_numbers`;
CREATE TABLE `winning_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `winning_number` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winning_numbers`
--

INSERT INTO `winning_numbers` (`id`, `winning_number`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 12345, 1, '2019-10-13 18:42:19', '2019-10-13 18:42:19'),
(2, 23456, 1, '2019-10-13 18:42:37', '2019-10-13 18:42:37'),
(3, 34567, 1, '2019-10-13 18:43:01', '2019-10-13 18:43:01'),
(4, 45678, 2, '2019-10-13 18:43:22', '2019-10-13 18:43:22'),
(5, 56789, 3, '2019-10-13 18:43:38', '2019-10-13 18:43:38'),
(6, 17172, 3, '2019-10-13 20:41:57', '2019-10-13 20:41:57'),
(7, 87563, 3, '2019-10-13 21:20:05', '2019-10-13 21:20:05');

-- --------------------------------------------------------

--
-- Structure for view `grand_prize_view`
--
DROP TABLE IF EXISTS `grand_prize_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `grand_prize_view`  AS  (select `vw_grand_prize`.`winning_number` AS `winning_number`,`vw_grand_prize`.`customer_id` AS `customer_id` from `vw_grand_prize` where !(`vw_grand_prize`.`customer_id` in (select `winning`.`customer_id` from (`lucky_draws` `lucky` join `winning_numbers` `winning` on(`winning`.`winning_number` = `lucky`.`winning_number`))))) ;

-- --------------------------------------------------------

--
-- Structure for view `other_prize_view`
--
DROP TABLE IF EXISTS `other_prize_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `other_prize_view`  AS  (select `winning_numbers`.`winning_number` AS `winning_number`,`winning_numbers`.`customer_id` AS `customer_id` from `winning_numbers` where !(`winning_numbers`.`customer_id` in (select `winning`.`customer_id` from (`lucky_draws` `lucky` join `winning_numbers` `winning` on(`winning`.`winning_number` = `lucky`.`winning_number`))))) ;

-- --------------------------------------------------------

--
-- Structure for view `prize_winner_view`
--
DROP TABLE IF EXISTS `prize_winner_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prize_winner_view`  AS  (select `cus`.`name` AS `customer_name`,`prizes`.`name` AS `prize_name`,`winning`.`winning_number` AS `winning_number` from (((`lucky_draws` `lucky` join `winning_numbers` `winning` on(`winning`.`winning_number` = `lucky`.`winning_number`)) join `customers` `cus` on(`winning`.`customer_id` = `cus`.`id`)) join `prizes` on(`lucky`.`prize_id` = `prizes`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_grand_prize`
--
DROP TABLE IF EXISTS `vw_grand_prize`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_grand_prize`  AS  select `winning_numbers`.`winning_number` AS `winning_number`,`winning_numbers`.`customer_id` AS `customer_id` from `winning_numbers` where `winning_numbers`.`customer_id` in (select `winning_numbers`.`customer_id` from `winning_numbers` group by `winning_numbers`.`customer_id` having count(`winning_numbers`.`customer_id`) = (select max(`x`.`mycount`) from (select `winning_numbers`.`customer_id` AS `customer_id`,count(`winning_numbers`.`customer_id`) AS `mycount` from `winning_numbers` group by `winning_numbers`.`customer_id`) `x`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lucky_draws`
--
ALTER TABLE `lucky_draws`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `winning_numbers`
--
ALTER TABLE `winning_numbers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lucky_draws`
--
ALTER TABLE `lucky_draws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `winning_numbers`
--
ALTER TABLE `winning_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
