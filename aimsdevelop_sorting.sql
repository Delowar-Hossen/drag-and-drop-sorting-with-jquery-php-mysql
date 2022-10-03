-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 11:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aimsdevelop_sorting`
--

-- --------------------------------------------------------

--
-- Table structure for table `reorder`
--

CREATE TABLE `reorder` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(5) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reorder`
--

INSERT INTO `reorder` (`id`, `image_name`, `display_order`, `created`, `modified`, `status`) VALUES
(1, '1.jpg', 1, '2021-11-12 10:26:23', '2021-11-12 10:26:23', '1'),
(2, '2.jpg', 6, '2021-11-12 10:26:23', '2021-11-12 10:26:23', '1'),
(3, '3.jpg', 0, '2021-11-12 10:27:49', '2021-11-12 10:27:49', '1'),
(4, '4.jpg', 5, '2021-11-12 10:27:49', '2021-11-12 10:27:49', '1'),
(5, '5.jpg', 7, '2021-11-12 11:10:18', '2021-11-12 11:10:18', '1'),
(6, '6.jpg', 3, '2021-11-12 11:10:18', '2021-11-12 11:10:18', '1'),
(7, '7.jpg', 2, '2021-11-12 11:10:31', '2021-11-12 11:10:31', '1'),
(8, '8.jpg', 4, '2021-11-12 11:10:31', '2021-11-12 11:10:31', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reorder`
--
ALTER TABLE `reorder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reorder`
--
ALTER TABLE `reorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
