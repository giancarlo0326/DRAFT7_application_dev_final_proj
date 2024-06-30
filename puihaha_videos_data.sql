-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 09:11 AM
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
-- Database: `puihaha_videos_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('Single','Married','Divorced','Widowed') NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `terms_agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `username`, `password`, `email`, `status`, `zip_code`, `terms_agreed`, `created_at`, `profile_picture`) VALUES
(15, 'Person', 'Name', 'Home', 'admin', '$2y$10$RVSywT/VfMPhI..anHIaLO10EPzi4TcG8jQ8OzrwiI.XvHjWbOKoW', 'person@company.com', 'Married', '1111', 0, '2024-06-28 12:38:56', NULL),
(16, 'Gian Carlo', 'Victorino', 'for the streets', 'giancarlo', '$2y$10$R1w4QE9xfV6mvrSu/MdOFevydPf0z7LmMwImWEOVwDIhAaikHQNE6', 'giancarlosvictorino@email.com', 'Married', '1111', 0, '2024-06-28 13:33:57', NULL),
(17, 'Carlo', 'Samson', 'homies', 'admin1', '$2y$10$8gOJ1ymyPjU6HeDCaxvDheeq0ialQbk/./iYm4m.VLVVAL1mkbKcq', 'email@email.com', 'Married', '11111', 0, '2024-06-28 13:59:41', NULL),
(18, 'Gian Carlo', 'Victorino', '100 California', 'giancarlo123', '$2y$10$jfI/0v1pWZ3UpdpL84Rq1OPoili7Ddq2EowMl0PYrYjRbaG5thiS6', 'someone@gmail.com', 'Single', '1111', 0, '2024-06-30 05:29:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
