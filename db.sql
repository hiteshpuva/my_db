-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 10:15 AM
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
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_hitesh_pages`
--

CREATE TABLE `cms_hitesh_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_hitesh_pages`
--

INSERT INTO `cms_hitesh_pages` (`id`, `title`, `description`, `featured_image`, `created_at`, `status`, `slug`) VALUES
(1, 'The Story of my Life', '<p><strong>&quot;The Story of My Life&quot;</strong> is the inspiring autobiography of <strong>Helen Keller</strong>, a deaf-blind woman who overcame immense challenges to become a symbol of courage, education, and human resilience. Written when she was just 22, the book chronicles her early childhood, the illness that left her without sight and hearing, and the breakthrough moment when she first connected with language through her teacher, <strong>Anne Sullivan</strong>.</p>\r\n\r\n<p>Keller recounts how Sullivan patiently taught her to communicate, read, and eventually speak, opening up the world of learning and literature. The book also reflects Helen&rsquo;s experiences at the Perkins Institute, her interactions with prominent figures like Alexander Graham Bell and Mark Twain, and her academic journey at Radcliffe College.</p>\r\n', 'hitesh_1.jpg', '2025-06-11 10:54:24', 'Draft', 'the-story-of-my-life');

-- --------------------------------------------------------

--
-- Table structure for table `cms_hitesh_users`
--

CREATE TABLE `cms_hitesh_users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_hitesh_users`
--

INSERT INTO `cms_hitesh_users` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'HITESH', 'hitesh@gmail.com', '4444444444', 'jdjrf');

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_details`
--

CREATE TABLE `cms_user_details` (
  `serial_no` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date_of_joining` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_user_details`
--

INSERT INTO `cms_user_details` (`serial_no`, `name`, `username`, `password`, `date_of_joining`) VALUES
(1, 'HITESH', 'hitesh', 'varman', '2025-06-11 10:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(6, 'pqr', 'pqr@gmail.com', '9876543456', '4324'),
(7, 'rst', 'rst@gmail.com', '7865412344', '5672');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `serial_no` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date_of_joining` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`serial_no`, `name`, `username`, `password`, `date_of_joining`) VALUES
(1, 'P. Hitesh Varman', 'hitesh', '123', '2025-05-22 12:23:46'),
(2, 'ABC', 'abc', 'abc', '2025-05-22 14:20:28'),
(3, 'DEF', 'def', 'qwert', '2025-05-23 10:10:27'),
(4, 'GHI', 'ghi', 'abcd', '2025-05-23 10:13:44'),
(5, 'JKL', 'jkl', 'asdfghjkl', '2025-05-23 11:14:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_hitesh_pages`
--
ALTER TABLE `cms_hitesh_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_hitesh_users`
--
ALTER TABLE `cms_hitesh_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user_details`
--
ALTER TABLE `cms_user_details`
  ADD PRIMARY KEY (`serial_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`serial_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_hitesh_pages`
--
ALTER TABLE `cms_hitesh_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_hitesh_users`
--
ALTER TABLE `cms_hitesh_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_user_details`
--
ALTER TABLE `cms_user_details`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
