-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 07:30 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `design_ids` varchar(500) NOT NULL,
  `total_rate` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `own_design_img` varchar(150) DEFAULT NULL,
  `cust_desc` text NOT NULL,
  `sizes` varchar(500) NOT NULL,
  `pro_price` int(11) NOT NULL COMMENT 'Adding product price',
  `total_price` int(11) NOT NULL COMMENT 'adding total price',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `cat_img` varchar(150) DEFAULT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `category_name`, `cat_img`, `status`, `customer_id`, `update_date`) VALUES
(1, 'Stitching', '707011_cat_img.jpg', 'NO', 1, '2022-06-09 18:03:39'),
(2, 'Fabric', '757703_cat_img.jpg', 'YES', 1, '2022-04-29 16:00:18'),
(3, 'Uniforms', '984059_cat_img.png', 'YES', 1, NULL),
(4, 'Accessories', '563816_cat_img.jpg', 'NO', 1, '2022-04-29 13:43:29'),
(5, 'Alteration', '663988_cat_img.png', 'YES', 1, NULL),
(6, 'Bridal', '261262_cat_img.jpg', 'YES', 1, NULL),
(7, 'Online Boutique', '886422_cat_img.jpg', 'NO', 1, '2022-04-29 13:43:15'),
(8, 'Rental', '530104_cat_img.png', 'YES', 1, NULL),
(9, 'Networking ', '699933_cat_img.png', 'YES', 1, '2022-06-09 17:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_design`
--

CREATE TABLE `tbl_design` (
  `design_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `design_name` varchar(150) NOT NULL,
  `design_img` varchar(150) NOT NULL,
  `design_rate` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` enum('YES','NO') NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_design`
--

INSERT INTO `tbl_design` (`design_id`, `cat_id`, `sub_cat_id`, `style_id`, `design_name`, `design_img`, `design_rate`, `customer_id`, `status`, `update_date`) VALUES
(1, 1, 1, 4, 'Single Button', '443862_design_img.jpg', '10', 1, 'NO', '2022-03-20 03:57:07'),
(2, 1, 1, 4, 'Double Button', '796138_design_img.jpg', '0', 1, 'YES', '2022-03-18 17:01:35'),
(3, 1, 1, 1, 'Regular', '136522_design_img.jpg', ' 349', 1, 'YES', '2022-03-21 15:52:13'),
(4, 1, 1, 1, 'Trim', '231865_design_img.jpg', ' 349', 1, 'YES', '2022-03-21 15:52:41'),
(5, 1, 1, 1, 'Slim', '163765_design_img.jpg', ' 349', 1, 'YES', '2022-03-21 15:53:03'),
(6, 1, 1, 2, 'Apple Cut', '248876_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:01:42'),
(7, 1, 1, 2, 'Tail', '929783_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:02:00'),
(8, 1, 1, 2, 'Round', '837725_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:02:21'),
(9, 1, 1, 2, 'Straight', '528883_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:02:46'),
(10, 1, 1, 3, 'Rounded', '462852_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:04:34'),
(11, 1, 1, 3, 'Mandarin', '646529_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:04:54'),
(12, 1, 1, 3, 'Eyelet', '886113_design_img.jpg', '40', 1, 'YES', '2022-03-21 16:05:11'),
(13, 1, 1, 3, 'Button Down', '410281_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:06:01'),
(14, 1, 1, 3, 'Spread', '275595_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:06:19'),
(15, 1, 1, 3, 'Narrow', '949762_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:06:47'),
(16, 1, 1, 3, 'Classic', '837660_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:07:11'),
(17, 1, 1, 5, 'French Angled', '134871_design_img.jpg', '30', 1, 'YES', '2022-03-21 16:09:31'),
(18, 1, 1, 5, 'French Rounded', '952580_design_img.jpg', '30', 1, 'YES', '2022-03-21 16:10:19'),
(19, 1, 1, 5, 'French Square', '461969_design_img.jpg', '30', 1, 'YES', '2022-03-21 16:10:38'),
(20, 1, 1, 5, 'Angled', '204145_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:11:03'),
(21, 1, 1, 5, 'Rounded', '646760_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:11:24'),
(22, 1, 1, 5, 'Square', '807480_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:11:58'),
(23, 1, 1, 6, 'Three Button', '911860_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:12:55'),
(24, 1, 1, 6, 'Two Button', '517039_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:13:10'),
(25, 1, 1, 6, 'One Button', '244230_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:13:27'),
(26, 1, 1, 7, 'Pencil', '269805_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:15:02'),
(27, 1, 1, 7, 'Concealed', '483787_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:15:26'),
(28, 1, 1, 7, 'French', '859676_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:15:44'),
(29, 1, 1, 7, 'Regular', '127131_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:16:03'),
(30, 1, 1, 8, 'Round', '535483_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:18:24'),
(31, 1, 1, 8, 'Square', '109762_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:18:48'),
(32, 1, 1, 8, 'Diamond', '941613_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:19:20'),
(33, 1, 1, 8, 'U Shape', '913583_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:19:47'),
(34, 1, 1, 8, 'Saddle', '191907_design_img.jpg', '30', 1, 'YES', '2022-03-21 16:20:15'),
(35, 1, 1, 8, 'Inverted Pleat', '514310_design_img.jpg', '40', 1, 'YES', '2022-03-21 16:20:37'),
(36, 1, 1, 8, 'Box Pleat', '604668_design_img.jpg', '40', 1, 'YES', '2022-03-21 16:21:10'),
(37, 1, 1, 9, 'Style 1', '620842_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:23:41'),
(38, 1, 1, 9, 'Style 2', '496978_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:24:04'),
(39, 1, 1, 9, 'Style 3', '792206_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:24:23'),
(40, 1, 1, 9, 'Style 4', '170963_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:24:47'),
(41, 1, 1, 9, 'None', '261511_design_img.jpg', '0', 1, 'YES', '2022-03-21 16:25:27'),
(42, 1, 1, 10, 'Box Pleat', '713943_design_img.jpg', '30', 1, 'YES', '2022-03-21 16:26:50'),
(43, 1, 1, 10, 'Double Side Pleat', '898534_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:27:09'),
(44, 1, 1, 10, 'Single Side Pleat', '858739_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:27:27'),
(45, 1, 1, 10, 'Darts', '949461_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:27:49'),
(46, 1, 1, 10, 'Plain', '892400_design_img.jpg', '20', 1, 'YES', '2022-03-21 16:28:10'),
(47, 9, 15, 11, 'Layout', '891834_design_img.jpeg', '55', 1, 'YES', '2022-06-09 17:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `customer_id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `email_id` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` enum('YES','NO') DEFAULT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `role` enum('customer','admin','seller') NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(15) DEFAULT NULL,
  `land_mark` varchar(150) NOT NULL,
  `about_me` varchar(150) DEFAULT NULL,
  `company_logo` varchar(150) NOT NULL,
  `company_app_doct` varchar(50) NOT NULL,
  `company_details` text NOT NULL,
  `admin_approve_cmy` enum('1','2') DEFAULT NULL,
  `rejection_reason` text,
  `otp` int(11) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `money_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`customer_id`, `user_name`, `email_id`, `password`, `status`, `mobile_no`, `photo`, `role`, `address`, `city`, `country`, `pincode`, `land_mark`, `about_me`, `company_logo`, `company_app_doct`, `company_details`, `admin_approve_cmy`, `rejection_reason`, `otp`, `update_date`, `money_type`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'YES', '7092887009', '571082_photo.png', 'admin', 'pondicherry', 'Kaduna', 'Nigeria', '700105', 'Kaduna Kaduna', 'Don\'t be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed des', '979438_company_logo.png', '', '', NULL, NULL, 0, '2022-06-09 17:15:21', '₹'),
(9, 'Yunux', 'customer@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'YES', '7092887009', '834852_photo.jpg', 'customer', 'pondicherry', 'Kano', 'Nigeria', '700105', 'BUK', 'Don\'t be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed des', '', '', '', NULL, NULL, 0, '2022-06-09 17:25:08', NULL),
(10, 'seller', 'seller@gmail.com', '$2y$10$K2bwNTxn9RMEKkhgLro0oOZmPnasmmNToE0mDm/GtUS9WG26XXtxe', 'NO', '7092887009', '140942_photo.png', 'seller', 'Smart Craft Pvt Ltd.,\r\nSmartcraft #48/2 block - 2,\r\nfirst floor kudlu main road near shree bhagya veg hotel\r\nBangalore,\r\nBANGALORE - 560068', 'PUDUCHERRY', 'India', '605105', 'dfgdf', 'dfgdfg', '618687_company_logo.png', '282767_company_app_doct.pdf', '.', '2', NULL, NULL, '2022-02-14 07:53:39', NULL),
(11, 'Yunux', 'yunusisah123@gmail.com', '$2y$10$anHoWoKHjyV6y5Vy6eFlj.C77Pi6o2Jvu84ztDdIixMaA3coGBVCO', 'YES', '0903324840', '526631_photo.png', 'customer', 'kano,kano state', 'kano', 'Nigeria', '700105', 'Kaduna Kaduna', 'Yunus', '', '', '', NULL, NULL, 0, '2022-06-23 21:19:22', NULL),
(13, 'Musa', 'admin@example.com', '$2y$10$cgcbiGB/vVI0R5qVGENkP.u/pMGaQxoD54u0TnIL/HP1uut3sCEW6', 'YES', '909999', '', 'customer', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `design_ids` varchar(500) NOT NULL,
  `total_rate` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `own_design_img` varchar(150) DEFAULT NULL,
  `cust_desc` text NOT NULL,
  `sizes` varchar(500) NOT NULL,
  `order_status` enum('PENDING','COMPLETED') NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `pro_id`, `design_ids`, `total_rate`, `customer_id`, `qty`, `own_design_img`, `cust_desc`, `sizes`, `order_status`, `update_date`) VALUES
(1, 1, '4,6,15,1,18,24,27,34,41,46', '439', 9, 3, '931134_own_design_img.jpg', 'design is good', 'Length=>5=>Shoulder=>5=>Waist_Length=>5=>Hip_Length=>5=>Sleeve_Length=>5=>Chest_Round=>5=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'COMPLETED', '2022-03-25 17:28:12'),
(2, 1, '4,7,15,2,18,24,27,35,38,43', '439', 9, 2, NULL, '', 'height=>=>shoulder=>=>hand_Length=>=>Chest=>=>Hip=>=>leglenth=>', 'COMPLETED', '2022-03-25 17:33:30'),
(3, 1, '4,13,2,19,25,28', '419', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'COMPLETED', '2022-03-25 17:33:33'),
(4, 1, '4,6,15,1,18,24,27,34,41,46', '439', 9, 3, '931134_own_design_img.jpg', 'design is good', 'Length=>5=>Shoulder=>5=>Waist_Length=>5=>Hip_Length=>5=>Sleeve_Length=>5=>Chest_Round=>5=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'COMPLETED', '2022-06-09 17:13:40'),
(5, 1, '4,7,15,2,18,24,27,35,38,43', '439', 9, 2, NULL, '', 'height=>=>shoulder=>=>hand_Length=>=>Chest=>=>Hip=>=>leglenth=>', 'PENDING', '2022-03-25 13:12:10'),
(6, 1, '4,13,2,19,25,28', '419', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-03-25 13:12:10'),
(7, 1, '', '0', 9, 1, '408850_own_design_img.png', '', 'Length=>6=>Shoulder=>8=>Waist_Length=>8=>Hip_Length=>7=>Sleeve_Length=>9=>Chest_Round=>8=>Waist_Round=>8=>Hip_Round=>5=>Bicep_Round=>6=>Elbow_Round=>5=>Wrist_Round=>7=>Collar=>7=>Armhole=>6=>Bottom=>2=>Bottom_Length=>6=>Knee_Length=>3=>Bottom_Waist_Round=>3=>Bottom_Hip_Round=>5=>Thigh_Round=>6=>Knee_Round=>3=>Calf_Round=>5=>Bottom_Hern=>4', 'PENDING', '2022-06-09 17:26:43'),
(8, 3, '', '0', 9, 1, '446286_own_design_img.png', '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-09 17:26:43'),
(9, 1, '4,7,15,2,22,24,27,35,38,43', '409', 9, 7, '172891_own_design_img.png', 'This is coming from yunus', 'Length=>6=>Shoulder=>8=>Waist_Length=>8=>Hip_Length=>7=>Sleeve_Length=>9=>Chest_Round=>8=>Waist_Round=>8=>Hip_Round=>5=>Bicep_Round=>6=>Elbow_Round=>=>Wrist_Round=>7=>Collar=>7=>Armhole=>6=>Bottom=>2=>Bottom_Length=>6=>Knee_Length=>3=>Bottom_Waist_Round=>3=>Bottom_Hip_Round=>5=>Thigh_Round=>6=>Knee_Round=>3=>Calf_Round=>5=>Bottom_Hern=>4', 'PENDING', '2022-06-27 20:54:04'),
(10, 2, '3,7,11,2,22,24,27,31,38,43', '369', 9, 6, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 20:54:04'),
(12, 1, '4,7,14,2,24,31,38,43', '369', 9, 1, '726887_own_design_img.jpg', 'testing the price featue ', 'Length=>6=>Shoulder=>8=>Waist_Length=>8=>Hip_Length=>7=>Sleeve_Length=>9=>Chest_Round=>8=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>7=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>5=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 21:34:53'),
(13, 2, '4,7,11,22,34,46', '399', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 21:36:31'),
(14, 1, '4,7,12,25,36,43', '449', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 21:38:48'),
(15, 3, '47', '55', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 21:47:31'),
(16, 2, '4,22,35', '389', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 22:15:06'),
(17, 2, '4,15,27', '349', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 22:20:31'),
(18, 1, '', '0', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 23:44:57'),
(19, 2, '', '0', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 23:50:03'),
(20, 3, '47', '55', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-27 23:52:41'),
(21, 1, '3,14,21,37', '349', 9, 1, NULL, '', 'Length=>=>Shoulder=>=>Waist_Length=>=>Hip_Length=>=>Sleeve_Length=>=>Chest_Round=>=>Waist_Round=>=>Hip_Round=>=>Bicep_Round=>=>Elbow_Round=>=>Wrist_Round=>=>Collar=>=>Armhole=>=>Bottom=>=>Bottom_Length=>=>Knee_Length=>=>Bottom_Waist_Round=>=>Bottom_Hip_Round=>=>Thigh_Round=>=>Knee_Round=>=>Calf_Round=>=>Bottom_Hern=>', 'PENDING', '2022-06-28 00:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `design_id` varchar(200) NOT NULL,
  `pro_name` varchar(150) NOT NULL,
  `pro_img` varchar(150) NOT NULL,
  `pro_details` text NOT NULL,
  `pro_rate` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `pro_price` int(11) NOT NULL COMMENT 'adding price to product',
  `status` enum('YES','NO') NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `cat_id`, `sub_cat_id`, `design_id`, `pro_name`, `pro_img`, `pro_details`, `pro_rate`, `customer_id`, `pro_price`, `status`, `update_date`) VALUES
(1, 1, 1, '3,4,5,6,7,8,9,10,11,12,13,14,15,16,1,2,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46', 'Men Blue Shirt', '608709_pro_img.jpg', 'This Product contain good fabric', '500', 1, 600, 'YES', '2022-06-10 09:23:39'),
(2, 1, 1, '3,4,5,6,7,8,9,10,11,12,13,14,15,16,2,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46', 'shirt', '749896_pro_img.jpeg', 'this product good faberic and dimension fixed', '500', 1, 100, 'YES', '2022-06-10 09:23:46'),
(3, 9, 15, '47', 'Test ', '419370_pro_img.jpg', 'resting from Yunux', '12', 1, 4500, 'YES', '2022-06-10 09:23:54'),
(4, 9, 15, '', 'Testing for Price', '558920_pro_img.jpg', 'testing for price', '11', 1, 5670, 'YES', '2022-06-11 20:49:46'),
(5, 2, 5, '', 'Test product one', '677743_pro_img.png', 'This is a test product from the admin 1', '288', 1, 400, 'YES', '2022-06-13 18:06:59'),
(6, 2, 6, '', 'Test From Admin', '705217_pro_img.jpg', 'This is a test product from the admin 2', '45', 1, 1500, 'YES', '2022-06-13 18:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_styles`
--

CREATE TABLE `tbl_styles` (
  `style_id` int(11) NOT NULL,
  `style_name` varchar(150) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_styles`
--

INSERT INTO `tbl_styles` (`style_id`, `style_name`, `cat_id`, `sub_cat_id`, `status`, `customer_id`, `update_date`) VALUES
(1, 'Fits', 1, 1, 'YES', 1, '2022-03-18 16:16:41'),
(2, 'Bottom Cut', 1, 1, 'YES', 1, '2022-03-18 16:15:44'),
(3, 'Collar Style', 1, 1, 'YES', 1, '2022-03-18 16:15:48'),
(4, 'Collar Top Button', 1, 1, 'YES', 1, '2022-03-18 16:15:53'),
(5, 'Cuff Shape', 1, 1, 'YES', 1, '2022-03-21 16:08:01'),
(6, 'Cuff Button', 1, 1, 'YES', 1, '2022-03-21 16:12:16'),
(7, 'Placket Style', 1, 1, 'YES', 1, '2022-03-21 16:13:55'),
(8, 'Patch Pocket', 1, 1, 'YES', 1, '2022-03-21 16:16:28'),
(9, 'Pocket Flaps', 1, 1, 'YES', 1, '2022-03-21 16:21:57'),
(10, 'Back Style', 1, 1, 'YES', 1, '2022-03-21 16:25:52'),
(11, 'Router ', 9, 15, 'YES', 1, '2022-06-09 17:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(50) NOT NULL,
  `status` enum('YES','NO') NOT NULL,
  `customer_id` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `cat_id`, `sub_cat_name`, `status`, `customer_id`, `update_date`) VALUES
(1, 1, 'Men', 'YES', 1, '2022-04-29 16:05:49'),
(2, 1, 'Women', 'YES', 1, '0000-00-00 00:00:00'),
(3, 1, 'Kids', 'YES', 1, '0000-00-00 00:00:00'),
(4, 2, 'Men', 'YES', 1, '0000-00-00 00:00:00'),
(5, 2, 'Women', 'YES', 1, '0000-00-00 00:00:00'),
(6, 2, 'Kids', 'YES', 1, '0000-00-00 00:00:00'),
(7, 3, 'Girls', 'YES', 1, '0000-00-00 00:00:00'),
(8, 3, 'Boys', 'YES', 1, '2022-04-29 16:07:05'),
(9, 4, 'Men', 'YES', 1, '0000-00-00 00:00:00'),
(10, 4, 'Women', 'YES', 1, '0000-00-00 00:00:00'),
(11, 4, 'Kids', 'YES', 1, '0000-00-00 00:00:00'),
(12, 5, 'Women', 'YES', 1, '0000-00-00 00:00:00'),
(13, 5, 'Men', 'YES', 1, '0000-00-00 00:00:00'),
(14, 5, 'Kids', 'YES', 1, '0000-00-00 00:00:00'),
(15, 9, 'Network Device', 'YES', 1, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_design`
--
ALTER TABLE `tbl_design`
  ADD PRIMARY KEY (`design_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tbl_styles`
--
ALTER TABLE `tbl_styles`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_design`
--
ALTER TABLE `tbl_design`
  MODIFY `design_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_styles`
--
ALTER TABLE `tbl_styles`
  MODIFY `style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
