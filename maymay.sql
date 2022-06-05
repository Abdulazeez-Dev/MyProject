-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 07:26 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maymay`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fulname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `shoulder` varchar(100) NOT NULL,
  `hcl` varchar(100) NOT NULL,
  `bust` varchar(100) NOT NULL,
  `blousewaist` varchar(100) NOT NULL,
  `blouselength` varchar(100) NOT NULL,
  `skirtlength` varchar(100) NOT NULL,
  `skirtwaist` varchar(100) NOT NULL,
  `hips` varchar(100) NOT NULL,
  `sliplength` varchar(100) NOT NULL,
  `slipround` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fulname`, `address`, `phone`, `email`, `comment`, `shoulder`, `hcl`, `bust`, `blousewaist`, `blouselength`, `skirtlength`, `skirtwaist`, `hips`, `sliplength`, `slipround`) VALUES
(2, 'Rabiatu Sani', 'Marafa Estate', '0807899099', 'rabbs@ymail.com', '', '29', '65', '22', '55', '44', '44', '12', '32', '34', '32'),
(5, 'Maryam Muazu', 'no 8 west college road', '0806230657', 'swtmaymay@gmail.com', 'peplum top with six piece skirt. ', '', '', '', '', '', '', '', '', '', ''),
(6, 'Fari Aliyu', 'kaduna government house', '08097504878', 'mrwhite@gmail,com', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Yunus', 'kano,kano state', '09033248408', 'yunusisah123@gmail.com', 'Coming from Yunux', '9', '9', '2', '2', '5', '4', '5', '5', '4', '2'),
(8, 'Umar Harande', 'Kaduna Zaria', '07030923457', 'uha1700013.ift@buk.edu.ng', 'Coming from umar', '9', '9', '2', '2', '5', '4', '5', '5', '4', '40');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `id` int(11) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `Customer_id` varchar(11) NOT NULL,
  `Shoulder` varchar(100) NOT NULL,
  `HalfCutLength` varchar(100) NOT NULL,
  `Bust` varchar(100) NOT NULL,
  `BlouseWaist` varchar(100) NOT NULL,
  `BlouseLength` varchar(100) NOT NULL,
  `SkirtLength` varchar(100) NOT NULL,
  `SkirtWaist` varchar(100) NOT NULL,
  `Hips` varchar(100) NOT NULL,
  `SlipLength` varchar(100) NOT NULL,
  `SlipRound` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`id`, `CustomerName`, `Customer_id`, `Shoulder`, `HalfCutLength`, `Bust`, `BlouseWaist`, `BlouseLength`, `SkirtLength`, `SkirtWaist`, `Hips`, `SlipLength`, `SlipRound`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '22', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `SenderName` varchar(100) NOT NULL,
  `SenderEmail` varchar(100) NOT NULL,
  `EmailSubject` varchar(100) NOT NULL,
  `Message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `SenderName`, `SenderEmail`, `EmailSubject`, `Message`) VALUES
(1, 'Muhammad Buhari', '12345@g.com', 'Testing', 'coming from yunus'),
(2, 'Muhammad Buhari', '12345@g.com', 'Testing', 'nnnnnnnnnnn'),
(3, 'Muhammad Shehu', '12345@g.com', 'User Satf', 'this is coming from staff');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `NumberOfCloths` varchar(100) NOT NULL,
  `RecievedDate` date NOT NULL,
  `DueDate` date NOT NULL,
  `AssignedTailor` varchar(100) NOT NULL,
  `Comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `CustomerName`, `NumberOfCloths`, `RecievedDate`, `DueDate`, `AssignedTailor`, `Comment`) VALUES
(1, 'Maryam Muazu', '8', '2017-03-20', '2017-12-20', 'Garba Musa', 'European Gowns'),
(2, 'Jameelah Umar', '6', '2017-03-29', '2016-02-28', 'Garba Musa', 'borno style with beats work'),
(4, 'precious daniel', '3', '2018-04-04', '0008-04-09', 'salis', 'peplum top'),
(5, 'Yunus Isah', '10', '2022-06-05', '2022-06-07', 'Umar', 'Quick delivery please.'),
(6, 'Umar Harande', '133', '2022-06-05', '2022-06-09', 'Umar', 'Nigeria ');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `fulname` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `user_type`, `fulname`, `phone`, `address`) VALUES
(3, 'almohad', '827ccb0eea8a706c4c34a16891f84e7b', '12345@g.com', 'admin', 'Muhammad Buhari', '08078600665', 'Kano'),
(4, 'maymay', '827ccb0eea8a706c4c34a16891f84e7b', 'maymay@gmail.com', 'user', 'Maryam Mu\'azu', '08060077788', 'Zaria'),
(5, 'Yunux', '12345', 'yunus@gmail.com', 'admin', 'Yunus Isah', '09033248408', 'kano,kano state'),
(7, 'almuhad', '827ccb0eea8a706c4c34a16891f84e7b', '12345@g.com', 'user', 'Muhammad Shehu', '08078600665', 'Kaduna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
