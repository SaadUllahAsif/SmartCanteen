-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 06:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcanteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `uniqueid` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `uniqueid`, `email`, `address`, `phone`, `password`, `confirmpassword`) VALUES
(1, 'admin', 'admin1', 'admin@gmail.com', 'h#1 st#1', 1234, 'admin', 'admin');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` bigint(20) DEFAULT NULL,
  `aboutevnironment` varchar(100) NOT NULL,
  `aboutstaff` varchar(50) NOT NULL,
  `recommendations` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `number`, `aboutevnironment`, `aboutstaff`, `recommendations`) VALUES
(1, 'saad', 232323, 'good experiance.', '', ''),
(2, 'zain', 121212123445, 'nice', '', ''),
(3, 'abc', 78887, 'qwerty', '', ''),
(4, 'abc', 123, 'vvgood', 'okok', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `headchef`
--

CREATE TABLE `headchef` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headchef`
--

INSERT INTO `headchef` (`id`, `uniqueid`, `name`, `email`, `phone`, `address`, `password`, `confirmpassword`) VALUES
(1, 'ch1', 'chef1', 'chef1@hotmail.com', 1234444444, 'h#112 st#15', 'chef1', 'chef1'),
(2, 'ch02', 'chef2', 'saad@gmail.com', 12345, 'h#23 St#23', '111', '111'),
(5, 'ch03', 'chef3', 'ched3@gmail.com', 9876123, 'h#3 st#4', 'chef3', 'chef3');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `uniqueid`, `name`, `email`, `phone`, `address`, `password`, `confirmpassword`) VALUES
(1, 'mg1', 'manager', 'manager@gmail.com', 1234567, 'h#11 st#12', 'manager', 'manager'),
(2, 'mg02', 'Manager2', 'manager2@gmail.com', 12345, 'h#3 st#4', 'manager2', 'manager2'),
(6, 'mg03', 'manager3', 'manager3@gmail.com', 987654321, 'h#13 St#23', 'manager3', 'manager3');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item`, `time`, `price`, `image`, `status`) VALUES
(1, 'Boiled Egg', 'Breakfast', 10, 'boiled egg_1616084447.jpg', 'Available'),
(2, 'Fried Egg', 'Breakfast', 10, 'egg fry_1616084522.jpg', 'Available'),
(3, 'Bread', 'Breakfast', 3, 'bread_1616084584.jpg', 'Available'),
(4, 'Jam', 'Breakfast', 2, 'jam_1616084617.jpg', 'Available'),
(5, 'Chana', 'Breakfast', 50, 'channa_1616084649.jpg', 'Unavailable'),
(6, 'Paratha', 'Breakfast', 15, 'paratha_1616084676.jpg', 'Unavailable'),
(7, 'Halwa-Puri', 'Breakfast', 150, 'halwapuri_1616084713.jpg', 'Unavailable'),
(8, 'Chicken Pulao', 'Lunch/Dinner', 200, 'chicken Pulao_1616084792.jpg', 'Unavailable'),
(9, 'Beef Pulao', 'Lunch/Dinner', 300, 'beef pulao_1616084832.jpg', 'Available'),
(10, 'Chicken Biryani', 'Lunch/Dinner', 230, 'chicken biryani_1616084897.jpg', 'Available'),
(11, 'Beef Biryani', 'Lunch/Dinner', 250, 'beef biryani_1616084929.jpg', 'Unavailable'),
(12, 'Chicken Karahi', 'Lunch/Dinner', 150, 'chicken karahi_1616084971.jpg', 'Unavailable'),
(13, 'White Rice', 'Lunch/Dinner', 60, 'white rice_1616085006.jpg', 'Unavailable'),
(14, 'Roti', 'Lunch/Dinner', 15, 'roit_1616085034.jpg', 'Available'),
(15, 'Dal Chawal', 'Lunch/Dinner', 180, 'dal chawal_1616085215.png', 'Available'),
(16, 'Mix Vegetable', 'Lunch/Dinner', 70, 'mix vegetables_1616085248.jpg', 'Available'),
(17, 'Tea', 'Drinks', 30, 'tea_1616085284.jpg', 'Available'),
(18, 'Green Tea', 'Drinks', 45, 'green tea_1616085312.jpg', 'Unavailable'),
(19, 'Milk Shakes', 'Drinks', 80, 'milkshakes_1616085345.jpg', 'Available'),
(20, 'Soft Drinks', 'Drinks', 50, 'softdrink_1616085375.jpg', 'Available'),
(21, 'Lasi', 'Drinks', 70, 'lasi_1616085399.jpg', 'Available'),
(22, 'Shawarma', 'Snacks', 120, 'shawarma_1616085437.jpg', 'Available'),
(23, 'Pizza', 'Snacks', 600, 'pizza_1616085568.jpg', 'Unavailable'),
(24, 'Burger', 'Snacks', 350, 'burger_1616085609.jpg', 'Available'),
(25, 'Pasta', 'Snacks', 250, 'pasta_1616085636.jpg', 'Available'),
(26, 'Roll Paratha', 'Snacks', 120, 'roll paratha_1616085700.jpg', 'Unavailable'),
(27, 'Roll Paratha', 'Snacks', 120, 'roll paratha_1616085743.jpg', 'Unavailable'),
(28, 'BBQ', 'Snacks', 270, 'bbq_1616086943.jpg', 'Available'),
(29, 'Fries', 'Snacks', 60, 'fries_1616086976.jpg', 'Unavailable');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tableno` int(11) NOT NULL,
  `date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `items` varchar(20) NOT NULL,
  `marked` varchar(10) NOT NULL,
  `orderstatus` varchar(20) NOT NULL,
  `notificationmanager` int(11) NOT NULL,
  `notificationchef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tableno`, `date`, `quantity`, `items`, `marked`, `orderstatus`, `notificationmanager`, `notificationchef`) VALUES
(1, 2, '2021-03-16', 2, 'tea', 'served', '', 0, 0),
(2, 1, '2021-03-22', 2, 'Fries', 'accepted', '', 0, 0),
(3, 1, '2021-03-22', 2, 'Fries', 'pending', '', 0, 0),
(4, 1, '2021-03-22', 2, 'Bread', 'accepted', '', 0, 0),
(5, 3, '2021-03-22', 3, 'Lasi', 'pending', '', 0, 0),
(6, 4, '2021-03-22', 5, 'Boiled Egg', 'pending', '', 0, 0),
(7, 1, '2021-03-22', 2, 'Milk Shakes', 'accepted', '', 0, 0),
(8, 1, '2021-03-24', 2, 'Lasi', 'accepted', '', 0, 0),
(9, 1, '2021-03-24', 2, 'Halwa-Puri', 'accepted', '', 0, 0),
(10, 1, '2021-03-24', 2, 'Boiled Egg', 'pending', '', 0, 0),
(11, 1, '2021-03-24', 1, 'Bread', 'pending', '', 0, 0),
(12, 1, '2021-03-24', 2, 'White Rice', 'accepted', '', 0, 0),
(13, 1, '2021-03-25', 3, 'Boiled Egg', 'paid', 'served', 1, 0),
(14, 1, '2021-03-25', 3, 'Lasi', 'paid', 'served', 1, 0),
(15, 1, '2021-03-25', 2, 'Roll Paratha', 'rejected', '', 0, 0),
(16, 1, '2021-03-25', 2, 'Milk Shakes', 'paid', 'served', 1, 0),
(17, 1, '2021-03-25', 2, 'Chicken Pulao', 'paid', 'served', 1, 0),
(18, 1, '2021-03-25', 1, 'Tea', 'paid', 'served', 1, 0),
(19, 1, '2021-03-26', 1, 'Fried Egg', 'paid', 'served', 1, 0),
(20, 1, '2021-03-26', 2, 'Bread', 'paid', 'served', 1, 0),
(21, 1, '2021-03-26', 1, 'Jam', 'paid', 'served', 1, 0),
(22, 1, '2021-03-26', 1, 'BBQ', 'paid', 'served', 1, 0),
(23, 1, '2021-03-26', 1, 'Beef Pulao', 'paid', 'served', 1, 0),
(24, 1, '2021-03-26', 3, 'Soft Drinks', 'paid', 'served', 1, 0),
(25, 1, '2021-03-26', 2, 'Roti', 'rejected', 'served', 1, 0),
(26, 1, '2021-03-26', 2, 'Milk Shakes', 'accepted', 'pending', 0, 0),
(27, 1, '2021-03-26', 2, 'Bread', 'accepted', 'pending', 0, 0),
(28, 1, '2021-03-27', 2, 'Fried Egg', 'paid', 'served', 0, 0),
(29, 1, '2021-03-27', 2, 'Bread', 'paid', 'served', 0, 0),
(30, 1, '2021-03-27', 2, 'Jam', 'accepted', 'served', 0, 0),
(31, 1, '2021-03-27', 2, 'Tea', 'pending', 'CustomerRemove', 0, 1),
(32, 1, '2021-03-27', 1, 'Chicken Biryani', 'accepted', 'cooked', 0, 1),
(33, 1, '2021-03-27', 2, 'Lasi', 'accepted', 'CustomerRemove', 0, 1),
(34, 1, '2021-03-28', 2, 'Roti', 'paid', 'served', 1, 0),
(38, 1, '2021-03-28', 2, 'Dal Chawal', 'paid', 'served', 1, 1),
(40, 1, '2021-03-28', 3, 'BBQ', 'accepted', 'pending', 0, 0),
(41, 1, '2021-03-28', 2, 'Beef Pulao', 'accepted', 'pending', 0, 0),
(42, 1, '2021-03-29', 2, 'Chicken Biryani', 'accepted', 'pending', 0, 0),
(43, 1, '2021-03-29', 2, 'Soft Drinks', 'accepted', 'pending', 0, 0),
(44, 1, '2021-03-29', 1, 'Lasi', 'accepted', 'pending', 0, 0),
(45, 1, '2021-03-30', 2, 'Bread', 'paid', 'served', 1, 0),
(46, 1, '2021-03-30', 2, 'Mix Vegetable', 'accepted', 'served', 1, 1),
(48, 1, '2021-03-30', 2, 'Fried Egg', 'paid', 'served', 1, 0);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `uniqueid` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`id`, `name`, `uniqueid`, `email`, `phone`, `address`) VALUES
(1, 'waiter1', 'wt1', 'waiter@gmail.com', 123422222222, 'h#331 st#122'),
(2, 'Waiter2', 'wt2', 'saad@gmail.com', 12345, 'h#3 st#4'),
(4, 'waiter3', 'wt03', 'waiter3@gmail.com', 123789, 'h#3 st#4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headchef`
--
ALTER TABLE `headchef`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `headchef`
--
ALTER TABLE `headchef`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
