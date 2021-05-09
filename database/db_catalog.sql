-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 04:07 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `price` int(9) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Madison Matching Footboard Traditional Bed', 'AR8646034_RS_L_30-1200x900.jpg', 5947665, '2021-05-09 04:16:06', '2021-05-09 04:16:06'),
(4, 'Madison Traditional Bed', 'AR8621039_RS_L_30-1200x900.jpg', 5237665, '2021-05-09 04:16:06', '2021-05-09 04:16:06'),
(5, 'Mission Matching Footboard Traditional Bed', 'AR8746039_RS_L_30-1200x900.jpg', 7000000, '2021-05-09 07:27:07', '2021-05-09 07:27:07'),
(6, 'Richmond Matching Footboard Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 9000000, '2021-05-09 07:27:36', '2021-05-09 07:27:36'),
(7, 'Mission Traditional Bed', 'AR8721039_RS_L_30-1200x900.jpg', 4500000, '2021-05-09 07:28:13', '2021-05-09 07:28:13'),
(8, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 07:29:10', '2021-05-09 07:29:10'),
(9, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:16:59', '2021-05-09 08:16:59'),
(10, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:09', '2021-05-09 08:17:09'),
(11, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18'),
(12, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18'),
(13, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18'),
(14, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18'),
(15, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18'),
(16, 'Richmond Traditional Bed', 'AR8831031_RS_L_30-1-1200x900.jpg', 8000000, '2021-05-09 08:17:18', '2021-05-09 08:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
