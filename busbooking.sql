-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 01:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `my_key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `my_key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'jay', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry_date` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_id`, `token`, `expiry_date`, `created_at`) VALUES
(1, 1, '7a3c4992d2ab11060c5e12277903a4f835ba96b1f87701a14196970804524323', '2024-09-18 18:10:18', '2024-09-17 18:10'),
(2, 7, '5962442d8f972ba6c4e27446f17816729b6cbe9af93166d5980b3ef47b22b432', '2024-10-05 19:15:32', '2024-10-04 19:15');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `phone`, `email`, `deleted_at`) VALUES
(9, 'Daniel', 'Taylor', '7778889999', 'daniel.taylor@example.com', NULL),
(10, 'Art Of Livingg5', 'Internal Centerg5', '565656565675', 'jayravi@artofliving.orgj5', NULL),
(11, 'gurudev', 'Gurudev', '9433532329', 'hj@gmail.com', NULL),
(13, 'Art Of Livingg', 'Internal Centerg', '56565656567', 'jayravi@artofliving.orgj', NULL),
(14, 'chitta Ranjan', 'Dalui', '8528528523', 'chitta@dalui.com', NULL),
(15, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL),
(16, 'sri sri', 'Ravishankar', '8568568569', 'kr@gmail.com', NULL),
(17, 'Krishnendu', 'Dalui', '09433532329', 'krishnendudalui@gmail.com', NULL),
(18, 'Krishnendu', 'Dalui', '09433532329', 'krishnendudalui@gmail.com', NULL),
(19, 'Krishnendu', 'Dalui', '09433532329', 'krishnendudalui@gmail.com', NULL),
(21, 'Krishnenduf', 'Dalui', '09433532329', 'krishnendalui@gmail.com', NULL),
(22, 'krishendu', 'dalui', '6789900897', 'krishennd@gmail.com', NULL),
(23, 'Alam', 'Husen', '7537537539', 'alam@gmail.com', NULL),
(24, 'Sushama', 'Didi', '1856589656', 'sushma@gmail.com', NULL),
(25, 'sri sri', 'Rqavishankar', '9433532329', 'krishennd@gmail.com', NULL),
(26, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL),
(27, 'sri sri ', 'sris sri Rvishankar', '94335258258', 'srisri@artofliving.org', NULL),
(28, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL),
(29, 'sr sri ', 'arvi shankar', '8528528523', 'srisri@artofliving.org', NULL),
(30, 'Apple', 'Apple', '8528528523', 'srisri@artofliving.org', NULL),
(31, 'Apple', 'Apple', '8528528523', 'srisri@artofliving.org', NULL),
(32, 'Apple', 'Apple', '8528528523', 'srisri@artofliving.org', NULL),
(33, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL),
(34, 'love ', 'gurudev', '458545852', 'lovegurudev@gmail.com', NULL),
(38, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL),
(39, 'ma go ma', 'dalui', '567567567', 'ma@gmail.com', NULL),
(40, 'gurudev', 'love', '97537537528', 'jay@gmail.comh', NULL),
(41, 'Jay ', 'Gurudev', '67787788788', 'jay@gmail.com', NULL),
(42, 'sri sri ', 'sris sri Rvishankar', '94335258258', 'srisri@artofliving.org', NULL),
(43, 'sri sri 1', 'sris sri Rvishankar1', '943352582581', 'srisri@artofliving.org1', NULL),
(44, 'Jay sss', 'Gurudevs', '677877887885', 'admin@gmail.comf', NULL),
(45, 'Danielllljj', 'Taylorlll', '7778889999000', 'daniel.taylor@emple.com', NULL),
(46, 'Jay ', 'Gurudev', '67787788788', 'jaygurudev@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lfy_users`
--

CREATE TABLE `lfy_users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lfy_users`
--

INSERT INTO `lfy_users` (`userId`, `userName`, `password`) VALUES
(1, 'john_doe', 'password123'),
(2, 'jane_smith', 'pass1234'),
(3, 'mike_jones', 'mikepass'),
(4, 'emma_watson', 'emma456'),
(5, 'will_smith', 'will_pass'),
(6, 'julia_roberts', 'julia789'),
(7, 'tom_cruise', 'tom987'),
(8, 'kevin_durant', 'kdpass'),
(9, 'stephen_curry', 'curry123'),
(10, 'lebron_james', 'lebron789'),
(11, 'elon_musk', 'musk123'),
(12, 'bill_gates', 'billpass'),
(13, 'mark_zuckerberg', 'mark789'),
(14, 'sundar_pichai', 'google123'),
(15, 'tim_cook', 'applepass'),
(16, 'jeff_bezos', 'amazonpass'),
(17, 'warren_buffett', 'investor123'),
(18, 'larry_page', 'search456'),
(19, 'sergey_brin', 'search789'),
(20, 'jack_ma', 'alibaba123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'SriSri ', 'rkish@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(3, 'krishenndu dalui', 'admin@gmailcom', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(4, 'Rudra Dalui', 'rudra@gmail.com', '4cbed80510b122b87efbdadd3f69d697425cbf7f'),
(5, 'krishenndu dalui', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(6, 'krishenndu dalui', 'ad@gmail.com', '454c7bda62ab8f9b4ff994d78058bb0316495361'),
(7, 'srisris', 'krish@gmail.coms', '6e728ebe26dc99e24cc8717778c6be4caf996f6a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lfy_users`
--
ALTER TABLE `lfy_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `lfy_users`
--
ALTER TABLE `lfy_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
