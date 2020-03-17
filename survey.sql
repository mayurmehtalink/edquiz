-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2018 at 06:19 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edstead`
--

-- --------------------------------------------------------

--
-- Table structure for table `ed_answers`
--

CREATE TABLE `ed_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `option_choice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ed_options`
--

CREATE TABLE `ed_options` (
  `id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL,
  `options` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ed_options`
--

INSERT INTO `ed_options` (`id`, `questions_id`, `options`) VALUES
(1, 1, 'Yes'),
(2, 1, 'No'),
(3, 2, 'Yes, we have a medical room and a dedicated doctor'),
(4, 2, 'We have a medical room, but we do not have a doctor, but we have a nurse'),
(5, 2, 'No, we neither have a medical room nor a doctor'),
(6, 2, 'We have a medical room, but that\'s never accessible, even when someone is ill or need assistance'),
(7, 3, 'Strongly Disagree'),
(8, 3, 'Disagree'),
(9, 3, 'Neutral'),
(10, 3, 'Agree'),
(11, 3, 'Strongly Agree'),
(12, 4, 'Always'),
(13, 4, 'Very Often'),
(14, 4, 'Sometimes'),
(15, 4, 'Rarely'),
(16, 4, 'Never'),
(17, 5, 'Most of the time'),
(18, 5, 'Some of the time'),
(19, 5, 'Never'),
(20, 6, 'Always'),
(21, 6, 'Very Often'),
(22, 6, 'Sometimes'),
(23, 6, 'Rarely'),
(24, 6, 'Never');

-- --------------------------------------------------------

--
-- Table structure for table `ed_questions`
--

CREATE TABLE `ed_questions` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ed_questions`
--

INSERT INTO `ed_questions` (`id`, `name`) VALUES
(1, 'Do you have free Wi-Fi facility at your campus?'),
(2, 'Do you have a medical room in your campus, with a dedicated doctor who visits the campus regularly?'),
(3, 'Our campus and infrastructure are very clean and hygienic'),
(4, 'The support staff of our school are helpful and provide support when ever needed'),
(5, 'The school\'s support staff treats everyone with care and respect'),
(6, 'In case of any emergency, the support staff is always there to help');

-- --------------------------------------------------------

--
-- Table structure for table `ed_users`
--

CREATE TABLE `ed_users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ed_users`
--

INSERT INTO `ed_users` (`id`, `email`) VALUES
(1, 'test@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ed_answers`
--
ALTER TABLE `ed_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ed_options`
--
ALTER TABLE `ed_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ed_questions`
--
ALTER TABLE `ed_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ed_users`
--
ALTER TABLE `ed_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ed_answers`
--
ALTER TABLE `ed_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ed_options`
--
ALTER TABLE `ed_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ed_questions`
--
ALTER TABLE `ed_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ed_users`
--
ALTER TABLE `ed_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
