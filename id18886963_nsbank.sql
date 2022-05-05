-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2022 at 01:20 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18886963_nsbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(5) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `acc_no` int(10) NOT NULL,
  `balance` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `customer_name`, `acc_no`, `balance`) VALUES
(1, 'SanjayKumar', 10001, 987722.00),
(2, 'Abhinavan', 10002, 28189.00),
(3, 'Dharani', 10003, 89184.00),
(4, 'Somesh', 10004, 76353.00),
(5, 'Ramu', 10005, 28518.00),
(6, 'Sinu', 10006, 95410.00),
(7, 'Raju', 10007, 87015.00),
(8, 'Vinay', 10008, 87513.00),
(9, 'Srija', 10009, 11995.00),
(10, 'Laxman', 10010, 87663.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(5) NOT NULL,
  `sender` varchar(35) NOT NULL,
  `receiver` varchar(35) NOT NULL,
  `amount` double(12,2) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `sender`, `receiver`, `amount`, `time`) VALUES
(1, 'SanjayKumar', 'Raju', 657.00, '2022-05-05 13:17:43'),
(2, 'Abhinavan', 'Srija', 600.00, '2022-05-05 13:17:58'),
(3, 'Ramu', 'Raju', 120.00, '2022-05-05 13:18:09'),
(4, 'Srija', 'Dharani', 50.00, '2022-05-05 13:18:23'),
(5, 'Laxman', 'SanjayKumar', 900.00, '2022-05-05 13:18:34'),
(6, 'SanjayKumar', 'Vinay', 600.00, '2022-05-05 13:18:54'),
(7, 'Raju', 'Dharani', 680.00, '2022-05-05 13:19:11'),
(8, 'Srija', 'Sinu', 900.00, '2022-05-05 13:19:23'),
(9, 'Vinay', 'Dharani', 776.00, '2022-05-05 13:19:37'),
(10, 'Raju', 'Sinu', 780.00, '2022-05-05 13:19:57'),
(11, 'SanjayKumar', 'Laxman', 909.00, '2022-05-05 13:20:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
