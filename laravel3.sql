-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 10:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel3`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `familys`
--

CREATE TABLE `familys` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `number_phone` int(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `familys`
--

INSERT INTO `familys` (`id`, `groups_id`, `first_name`, `last_name`, `number_phone`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 2, 'Gow', 'Swei Lie', 839274678, 'Kesambi', 'gow_sweilie@gmail.com', '2021-10-18 19:55:55', '2021-10-18 19:55:55'),
(2, 2, 'Gow', 'Ye Lie', 836742965, 'Kanoman', 'gow_yelie@gmail.com', '2021-10-18 13:53:36', '2021-10-18 13:53:36'),
(3, 2, 'Gow', 'Sin Lie', 847291763, 'Kolektoran', 'gow_sinlie@gmail.com', '2021-10-18 13:58:02', '2021-10-18 13:58:02'),
(4, 2, 'Gow', 'Kim Lie', 849382761, 'Kesambi', 'gow_kimlie@gmail.com', '2021-10-18 14:00:47', '2021-10-18 14:00:47'),
(5, 2, 'Gow', 'Beng Lie', 873619367, 'Kalijaga', 'gow_benglie@gmail.com', '2021-10-18 14:01:55', '2021-10-18 14:01:55'),
(6, 2, 'Gow', 'Chuan Beng', 874624986, 'Kalijaga', 'gow_chuanbeng@gmail.com', '2021-10-18 14:02:34', '2021-10-18 14:02:34'),
(7, 2, 'Gow', 'Sun Lie', 836962579, 'Jakarta', 'gow_sunlie@gmail.com', '2021-10-18 14:03:18', '2021-10-18 14:03:18'),
(8, 1, 'Berthiana', 'Susanthy', 839271683, 'Kalijaga', 'berthiana_susanthy@gmail.com', '2021-10-24 16:05:34', '2021-10-24 16:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(255) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `groups_id`, `nama`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anita Indah Permata Sari', 812245135, 'Perumnas', '2021-10-18 00:27:56', '2021-11-26 14:08:59'),
(2, 3, 'Abdul Wahid', 827391736, 'Talun', '2021-10-18 00:27:56', '2021-11-26 14:34:12'),
(3, 1, 'Achmad Fa\'iq Hafiz', 826371965, 'Bima', '2021-10-18 00:27:56', '2021-11-26 14:10:52'),
(4, 1, 'Hendra Wijaya', 837629462, 'Sindang', '2021-10-18 00:27:56', '2021-11-26 14:09:36'),
(5, 1, 'Tria Herlina Ningsih', 837291732, 'Pekalangan', '2021-10-18 00:27:56', '2021-11-26 14:09:22'),
(6, 1, 'Nabila Ayunissa Rachmaniar', 839261946, 'Siliwangi', '2021-10-18 00:27:56', '2021-11-26 14:09:29'),
(7, 3, 'Agus Permadi', 837294729, 'Gunung Jati', '2021-10-18 00:27:56', '2021-11-26 14:34:16'),
(8, 3, 'Ghina Alyaa Nabilah', 830173103, 'Pamengkang', '2021-10-18 00:27:56', '2021-11-26 14:34:19'),
(9, 1, 'Vitri Inayah Warohmah', 894729374, 'Rajawali', '2021-10-18 00:27:56', '2021-11-26 14:10:58'),
(10, 1, 'Dwi Fitri Meliani', 849028392, 'Wahidin', '2021-10-18 00:27:56', '2021-11-26 14:27:54'),
(18, 3, 'coba', 872937653, 'bandung', '2021-11-15 23:03:50', '2021-11-26 14:34:23'),
(21, 3, 'test', 867953674, 'Parujakan', '2021-11-26 14:12:52', '2021-11-26 14:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Family', 'Keluarga Inti', '2021-10-31 18:41:37', '2021-10-31 18:41:37'),
(2, 'Big Family', 'Keluarga Besar Gow Kuwei Xiang', '2021-10-31 18:42:17', '2021-10-31 18:42:17'),
(3, 'Friends', 'Teman-teman dan Kenalan', '2021-10-31 18:49:02', '2021-10-31 18:49:51');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_31_120607_create_groups_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayats`
--

CREATE TABLE `riwayats` (
  `id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `friends_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayats`
--

INSERT INTO `riwayats` (`id`, `groups_id`, `friends_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 18, 'inactive', '2021-11-26 14:08:08', '2021-11-26 14:08:08'),
(2, 1, 1, 'active', '2021-11-26 14:09:00', '2021-11-26 14:09:00'),
(3, 1, 5, 'active', '2021-11-26 14:09:23', '2021-11-26 14:09:23'),
(4, 1, 6, 'active', '2021-11-26 14:09:29', '2021-11-26 14:09:29'),
(5, 1, 4, 'inactive', '2021-11-26 14:09:36', '2021-11-26 14:09:36'),
(6, 3, 10, 'active', '2021-11-26 14:09:51', '2021-11-26 14:09:51'),
(7, 3, 7, 'active', '2021-11-26 14:09:56', '2021-11-26 14:09:56'),
(8, 3, 2, 'active', '2021-11-26 14:10:04', '2021-11-26 14:10:04'),
(9, 3, 8, 'active', '2021-11-26 14:10:31', '2021-11-26 14:10:31'),
(10, 1, 3, 'active', '2021-11-26 14:10:52', '2021-11-26 14:10:52'),
(11, 1, 9, 'active', '2021-11-26 14:10:58', '2021-11-26 14:10:58'),
(12, 1, 21, 'inactive', '2021-11-26 14:13:33', '2021-11-26 14:13:33'),
(13, 3, 21, 'active', '2021-11-26 14:16:14', '2021-11-26 14:16:14'),
(14, 1, 10, 'inactive', '2021-11-26 14:27:54', '2021-11-26 14:27:54'),
(15, 3, 2, 'active', '2021-11-26 14:34:12', '2021-11-26 14:34:12'),
(16, 3, 7, 'active', '2021-11-26 14:34:16', '2021-11-26 14:34:16'),
(17, 3, 8, 'active', '2021-11-26 14:34:19', '2021-11-26 14:34:19'),
(18, 3, 18, 'active', '2021-11-26 14:34:23', '2021-11-26 14:34:23'),
(19, 3, 21, 'active', '2021-11-26 14:34:26', '2021-11-26 14:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `familys`
--
ALTER TABLE `familys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `last_name` (`last_name`),
  ADD KEY `groups_id` (`groups_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `groups_id` (`groups_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `riwayats`
--
ALTER TABLE `riwayats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `friends_id` (`friends_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `familys`
--
ALTER TABLE `familys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayats`
--
ALTER TABLE `riwayats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayats`
--
ALTER TABLE `riwayats`
  ADD CONSTRAINT `riwayats_ibfk_1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayats_ibfk_2` FOREIGN KEY (`friends_id`) REFERENCES `friends` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
