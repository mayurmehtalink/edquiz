-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 05:49 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ed_question`
--

CREATE TABLE `ed_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ed_question`
--

INSERT INTO `ed_question` (`id`, `quiz_id`, `page_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', 'survey_one', 'where you from ', NULL, NULL),
(2, '2', 'survey_one', 'willing to relocate', NULL, NULL),
(3, '3', 'survey_two', 'do you have passport', NULL, NULL),
(4, '4', 'survey_two', 'where is your age', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ed_question_option`
--

CREATE TABLE `ed_question_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ed_question_option`
--

INSERT INTO `ed_question_option` (`id`, `quiz_question_id`, `text`, `created_at`, `updated_at`) VALUES
(1, '1', 'delhi', NULL, '0000-00-00 00:00:00'),
(2, '1', 'Other', NULL, NULL),
(3, '2', 'yes', NULL, NULL),
(4, '2', 'no', NULL, NULL),
(5, '3', 'yes', NULL, NULL),
(6, '3', 'no', NULL, NULL),
(7, '4', 'below 18', NULL, NULL),
(8, '4', 'above 18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ed_user_ans`
--

CREATE TABLE `ed_user_ans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_ans1` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_ans2` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question1` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question2` varchar(122) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ed_user_ans`
--

INSERT INTO `ed_user_ans` (`id`, `user_id`, `survey_ans1`, `survey_ans2`, `question1`, `question2`, `survey_name`, `created_at`, `updated_at`) VALUES
(48, '1', 'delhi', 'yes', 'where you from', 'willing to relocate', 'survey_one', '2020-03-12 23:17:59', '2020-03-12 23:17:59'),
(49, '1', 'yes', 'below 18', 'do you have passport', 'where is your age', 'survey_two', '2020-03-12 23:18:04', '2020-03-12 23:18:04');

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
(3, '2020_03_12_114619_create_ed_question_table', 2),
(4, '2020_03_12_120737_create_ed_question_option_table', 3),
(5, '2020_03_12_120818_create_ed_user_ans_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_ans` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `page_ans`, `created_at`, `updated_at`) VALUES
(1, 'MAYUR MEHTA', 'mayurmehtalink@gmail.com', NULL, '$2y$10$oSKufgpcfNb9Yydz4oF5neuESWD2ZcAFfV0456txkXkR8tyK/hwoa', NULL, 1, '2020-03-12 06:14:23', '2020-03-12 23:18:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ed_question`
--
ALTER TABLE `ed_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ed_question_option`
--
ALTER TABLE `ed_question_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ed_user_ans`
--
ALTER TABLE `ed_user_ans`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ed_users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ed_question`
--
ALTER TABLE `ed_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ed_question_option`
--
ALTER TABLE `ed_question_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ed_user_ans`
--
ALTER TABLE `ed_user_ans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
