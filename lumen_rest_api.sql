-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 06:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, '2024-06-15 15:35:03', '2024-06-15 15:35:03'),
(2, 2, 2, 3, '2024-06-15 15:42:57', '2024-06-15 15:42:57'),
(3, 3, 1, 3, '2024-06-15 15:45:13', '2024-06-15 15:45:13'),
(4, 2, 1, 3, '2024-06-15 15:45:29', '2024-06-15 15:45:29'),
(5, 1, 1, 3, '2024-06-15 15:45:43', '2024-06-15 15:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `p_price`, `created_at`, `updated_at`) VALUES
(1, 'abc', '120.00', '2024-06-15 14:08:26', '2024-06-15 14:08:26'),
(2, 'pqr', '200.00', '2024-06-15 14:10:44', '2024-06-15 14:10:44'),
(3, 'mnp', '400.00', '2024-06-15 14:14:10', '2024-06-15 14:14:10'),
(4, 'xyz', '400.00', '2024-06-15 14:14:36', '2024-06-15 14:14:36'),
(5, 'mnop', '400.00', '2024-06-15 14:15:04', '2024-06-15 14:15:04'),
(6, 'mnop', '400.00', '2024-06-15 14:17:23', '2024-06-15 14:17:23'),
(7, 'mnop', '400.00', '2024-06-15 16:04:13', '2024-06-15 16:04:13'),
(8, 'er', '1.00', '2024-06-15 16:04:29', '2024-06-15 16:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184605071.jpeg', '2024-06-15 14:08:27', '2024-06-15 14:08:27'),
(2, 1, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184605072.jpeg', '2024-06-15 14:08:27', '2024-06-15 14:08:27'),
(3, 1, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184605073.jpeg', '2024-06-15 14:08:27', '2024-06-15 14:08:27'),
(4, 2, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184606441.jpg', '2024-06-15 14:10:44', '2024-06-15 14:10:44'),
(5, 2, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184606442.jpg', '2024-06-15 14:10:44', '2024-06-15 14:10:44'),
(6, 3, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184608501.jpg', '2024-06-15 14:14:10', '2024-06-15 14:14:10'),
(7, 3, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184608502.jpg', '2024-06-15 14:14:10', '2024-06-15 14:14:10'),
(8, 7, 'http://localhost:8080/laravelPractice/cms/uploads/1506202417184674531.jpg', '2024-06-15 16:04:13', '2024-06-15 16:04:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
