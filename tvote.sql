-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 01:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'larrytouani237', 'd85924f171cd19388a683bd897c8c531', '2024-08-01 00:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `description` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `vote_id`, `name`, `age`, `description`, `position`, `picture`) VALUES
(5, 3, 'wqerty', 12, 'asdfgh', '0', 'uploads/logo.jpg'),
(6, 3, 'asdfghj', 11, 'qwert', '0', 'uploads/logo.jpg'),
(7, 3, 'qwert', 11, 'qwerty', '0', 'uploads/logo.jpg'),
(8, 3, 'qwertyu', 12, 'qwerty', '0', 'uploads/bluetick.jpg'),
(9, 3, 'qwertyu', 12, 'wqertwer', '0', 'uploads/bluetick.jpg'),
(10, 4, 'aSDFGH', 22, '1234567', '234567', 'uploads/logos.jpg'),
(11, 4, '324567', 12, '123456', '12345', 'uploads/logos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `preferred_contact_method` enum('email','phone') NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `whatsapp`, `country_code`, `dob`, `password`, `created_at`) VALUES
(3, 'Giovanni', 'touanilarry@gmail.com', '672467369', '+237', '2004-12-31', '$2y$10$u7ZHKJThGObDwuQ4DWGUQeBaJ6hyR.3EWUrfAaYlhNcLxavDzJcou', '2024-07-30 23:17:45'),
(7, 'PabloMin', 'touanilarryg@gmail.com', '672467369', '+237', '2014-12-31', '$2y$10$w11M2z21Egt/3LShLrAWOuHcqeUTvcZrHmhzmFFz.u31PYtrXLc/O', '2024-07-30 23:21:32'),
(8, 'larrytgl', 'touanilarryj@gmail.com', '672458596', '237', '2000-08-01', '00000000', '2024-07-31 23:07:26'),
(9, 'PabloMina', 'touanilarryh@gmail.com', '4514', '+237', '2022-08-01', '$2y$10$oYmDalXlLIUi1Wpr1jT54OLSlUZPUcd3CT4XMJDYseXM5riwuFMMy', '2024-08-01 00:42:59'),
(10, 'Giovannia', 'touani@gmail.com', '672467369', '+237', '2014-12-31', '$2y$10$REzbWdry606ZHFa2sVvAZ.uZeOuWU9NHqLwjj/WEiW6.JhDQEvFHK', '2024-08-01 00:49:14'),
(11, 'qwertyuiop', 'qwerty@gmail.com', '672467369', '+237', '2014-12-31', '$2y$10$TZE1VepKRzd1mwExuUQNG.nkLACip9eK1EcCbeMuxqmCDdn8EazWG', '2024-08-01 00:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `begin_date` date NOT NULL,
  `begin_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `result_date` date NOT NULL,
  `result_time` time NOT NULL,
  `referral_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `title`, `description`, `begin_date`, `begin_time`, `end_date`, `end_time`, `result_date`, `result_time`, `referral_code`) VALUES
(3, 'qwerty', 'qwertyui', '2024-07-31', '00:31:00', '2024-07-31', '00:45:00', '2024-07-31', '00:46:00', 'qwertyuiop'),
(4, 'qwer', 'qwerty', '2024-08-01', '11:10:00', '2024-08-01', '11:31:00', '2024-08-01', '11:31:00', 'asdfghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `vote_cast`
--

CREATE TABLE `vote_cast` (
  `id` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vote_cast`
--

INSERT INTO `vote_cast` (`id`, `vote_id`, `candidate_id`, `voter_id`, `timestamp`, `user_id`) VALUES
(4, 3, 5, NULL, '2024-07-30 23:36:27', 7),
(5, 4, 10, NULL, '2024-08-01 10:18:23', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vote_stats`
--

CREATE TABLE `vote_stats` (
  `id` int(11) NOT NULL,
  `vote_id` int(11) DEFAULT NULL,
  `total_votes` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote_id` (`vote_id`);

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referral_code` (`referral_code`);

--
-- Indexes for table `vote_cast`
--
ALTER TABLE `vote_cast`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vote_per_user` (`vote_id`,`user_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `vote_stats`
--
ALTER TABLE `vote_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vote_id` (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vote_cast`
--
ALTER TABLE `vote_cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vote_stats`
--
ALTER TABLE `vote_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`vote_id`) REFERENCES `votes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD CONSTRAINT `user_activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vote_cast`
--
ALTER TABLE `vote_cast`
  ADD CONSTRAINT `vote_cast_ibfk_1` FOREIGN KEY (`vote_id`) REFERENCES `votes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vote_cast_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vote_stats`
--
ALTER TABLE `vote_stats`
  ADD CONSTRAINT `vote_stats_ibfk_1` FOREIGN KEY (`vote_id`) REFERENCES `votes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
