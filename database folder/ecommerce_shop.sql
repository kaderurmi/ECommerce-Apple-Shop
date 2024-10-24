-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 07:12 PM
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
-- Database: `ecommerce_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(50) NOT NULL,
  `brandImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'http://www.computerhouse.com.hk/wp-content/uploads/2024/01/cDZiwSJVRhEXkKCC.jpeg', '2023-08-15 12:00:16', '2024-10-22 07:27:18'),
(2, 'Xiaomi ', 'https://w7.pngwing.com/pngs/368/356/png-transparent-xiaomi-logo-icon-thumbnail.png', '2023-08-15 12:00:16', '2024-10-22 07:33:34'),
(3, 'HUAWEI', 'https://w7.pngwing.com/pngs/68/589/png-transparent-huawei-logo-huawei-logo-huawei-logo-thumbnail.png', '2023-08-15 12:00:16', '2024-10-22 07:31:23'),
(4, 'Vivo', 'https://w7.pngwing.com/pngs/61/868/png-transparent-vivo-hd-logo-thumbnail.png', '2023-08-15 12:00:16', '2024-10-22 07:36:07'),
(5, 'HP', 'https://gallerypng.com/wp-content/uploads/2024/07/hp-logo-png-transaprent-image-300x276.png', '2023-08-15 12:00:16', '2024-10-22 07:34:59'),
(6, 'DELL', 'http://www.computerhouse.com.hk/wp-content/uploads/2024/01/cDZiwSJVRhEXkKCC.jpeg', '2023-08-15 12:00:16', '2024-10-22 07:28:03'),
(7, 'Xiaomi ', 'https://w7.pngwing.com/pngs/368/356/png-transparent-xiaomi-logo-icon-thumbnail.png', '2023-08-15 12:00:16', '2024-10-22 07:33:42'),
(8, 'HUAWE', 'https://w7.pngwing.com/pngs/68/589/png-transparent-huawei-logo-huawei-logo-huawei-logo-thumbnail.png', '2023-08-15 12:00:16', '2024-10-22 07:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Television', 'https://e7.pngegg.com/pngimages/917/603/png-clipart-black-flat-screen-tv-lcd-television-led-backlit-lcd-haier-tv-television-electronics.png', '2023-08-15 11:59:11', '2024-10-22 07:41:35'),
(2, 'Mobile', 'https://oasis.opstatics.com/content/dam/oasis/page/2023/na/oneplus-11/specs/black-img.png', '2023-08-15 11:59:11', '2024-10-22 07:43:46'),
(3, 'Headphone', 'https://static.vecteezy.com/system/resources/previews/017/054/098/non_2x/headphones-design-3d-rendering-for-product-mockup-png.png', '2023-08-15 11:59:11', '2024-10-22 07:48:36'),
(4, 'Watch', 'https://w7.pngwing.com/pngs/313/947/png-transparent-gray-sony-smartwatch-sony-smartwatch-android-wear-smart-watches-gadget-electronics-mobile-phone-thumbnail.png', '2023-08-15 11:59:11', '2024-10-22 07:47:51'),
(5, 'Game', 'https://t4.ftcdn.net/jpg/05/64/31/67/360_F_564316725_zE8llusnCk3Sfr9rdfKya6fV7BQbjfyV.jpg', '2023-08-15 11:59:11', '2024-10-22 07:50:28'),
(6, 'Camera', 'https://cdn.mos.cms.futurecdn.net/4wpKrH93D37dDPTisdqGy4.jpg', '2023-08-15 11:59:11', '2024-10-22 07:51:51'),
(7, 'Audio', 'https://images.pexels.com/photos/1054713/pexels-photo-1054713.jpeg', '2023-08-15 11:59:11', '2024-10-22 07:55:16'),
(21, 'Television', 'https://e7.pngegg.com/pngimages/917/603/png-clipart-black-flat-screen-tv-lcd-television-led-backlit-lcd-haier-tv-television-electronics.png', '2023-08-15 11:59:11', '2024-10-22 07:41:35'),
(22, 'Mobile', 'https://oasis.opstatics.com/content/dam/oasis/page/2023/na/oneplus-11/specs/black-img.png', '2023-08-15 11:59:11', '2024-10-22 07:43:46'),
(23, 'Watch', 'https://w7.pngwing.com/pngs/313/947/png-transparent-gray-sony-smartwatch-sony-smartwatch-android-wear-smart-watches-gadget-electronics-mobile-phone-thumbnail.png', '2023-08-15 11:59:11', '2024-10-22 07:47:51'),
(24, 'Game', 'https://t4.ftcdn.net/jpg/05/64/31/67/360_F_564316725_zE8llusnCk3Sfr9rdfKya6fV7BQbjfyV.jpg', '2023-08-15 11:59:11', '2024-10-22 07:50:28'),
(25, 'Camera', 'https://cdn.mos.cms.futurecdn.net/4wpKrH93D37dDPTisdqGy4.jpg', '2023-08-15 11:59:11', '2024-10-22 07:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `customer_profiles`
--

CREATE TABLE `customer_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_add` varchar(500) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_state` varchar(50) NOT NULL,
  `cus_postcode` varchar(50) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_phone` varchar(50) NOT NULL,
  `cus_fax` varchar(50) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_add` varchar(100) NOT NULL,
  `ship_city` varchar(100) NOT NULL,
  `ship_state` varchar(100) NOT NULL,
  `ship_postcode` varchar(100) NOT NULL,
  `ship_country` varchar(100) NOT NULL,
  `ship_phone` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_profiles`
--

INSERT INTO `customer_profiles` (`id`, `cus_name`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', '01785388919', 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', 1, '2023-08-25 21:34:14', '2023-10-14 04:20:18'),
(3, 'Md Fazlul Kader', 'Bakolia', 'Chittagong', 'Chittagong', '4205', 'Bangladesh', '01678054692', '01678054692', 'InsufFoods', 'Bakolia', 'Chittagong', 'Chittagong', '4200', 'Bangladesh', '01678054692', 3, '2024-10-22 02:54:15', '2024-10-22 02:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `payable` varchar(50) NOT NULL,
  `cus_details` varchar(500) NOT NULL,
  `ship_details` varchar(500) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `val_id` varchar(100) NOT NULL DEFAULT '0',
  `delivery_status` enum('Pending','Processing','Completed') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(34, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '653498771fc9b', '0', 'Pending', 'Success', 1, '2023-10-21 21:35:19', '2023-10-21 21:35:40'),
(42, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6717d9deae6a5', '0', 'Pending', 'Pending', 3, '2024-10-22 10:59:10', '2024-10-22 10:59:10'),
(43, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6717e15eb9d8e', '0', 'Pending', 'Pending', 3, '2024-10-22 11:31:10', '2024-10-22 11:31:10'),
(44, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6717e16c40130', '0', 'Pending', 'Pending', 3, '2024-10-22 11:31:24', '2024-10-22 11:31:24'),
(45, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6717e17ae5a40', '0', 'Pending', 'Pending', 3, '2024-10-22 11:31:38', '2024-10-22 11:31:38'),
(55, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718ab00bf7b2', '0', 'Pending', 'Pending', 3, '2024-10-23 01:51:28', '2024-10-23 01:51:28'),
(56, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718ab149a6be', '0', 'Pending', 'Pending', 3, '2024-10-23 01:51:48', '2024-10-23 01:51:48'),
(57, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718ac524f0b3', '0', 'Pending', 'Pending', 3, '2024-10-23 01:57:06', '2024-10-23 01:57:06'),
(58, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718aca1c1f34', '0', 'Pending', 'Pending', 3, '2024-10-23 01:58:25', '2024-10-23 01:58:25'),
(59, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718b48576287', '0', 'Pending', 'Pending', 3, '2024-10-23 02:32:05', '2024-10-23 02:32:05'),
(66, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718bd08d440d', '0', 'Pending', 'Pending', 3, '2024-10-23 03:08:24', '2024-10-23 03:08:24'),
(67, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718c15262edd', '0', 'Pending', 'Pending', 3, '2024-10-23 03:26:42', '2024-10-23 03:26:42'),
(68, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718c57a2ea4f', '0', 'Pending', 'Pending', 3, '2024-10-23 03:44:26', '2024-10-23 03:44:26'),
(69, '94000', '2820', '96820', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718cda3efcfc', '0', 'Pending', 'Pending', 3, '2024-10-23 04:19:16', '2024-10-23 04:19:16'),
(73, '0', '0', '0', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718dcaa99241', '0', 'Pending', 'Pending', 3, '2024-10-23 05:23:22', '2024-10-23 05:23:22'),
(74, '0', '0', '0', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718dfa386061', '0', 'Pending', 'Pending', 3, '2024-10-23 05:36:03', '2024-10-23 05:36:03'),
(75, '0', '0', '0', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718dfa77eb4d', '0', 'Pending', 'Pending', 3, '2024-10-23 05:36:07', '2024-10-23 05:36:07'),
(76, '0', '0', '0', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718dfb119f81', '0', 'Pending', 'Pending', 3, '2024-10-23 05:36:17', '2024-10-23 05:36:17'),
(77, '0', '0', '0', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '6718dfc94fc58', '0', 'Pending', 'Pending', 3, '2024-10-23 05:36:41', '2024-10-23 05:36:41'),
(83, '188000', '5640', '193640', 'Name:Md Fazlul Kader,Address:Bakolia,City:Chittagong,Phone: 01678054692', 'Name:InsufFoods,Address:Bakolia ,City:Chittagong ,Phone: 01678054692', '67191ffac5733', '0', 'Pending', 'Pending', 3, '2024-10-23 10:10:34', '2024-10-23 10:10:34'),
(84, '188000', '5640', '193640', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '671920e0ad348', '0', 'Pending', 'Pending', 1, '2024-10-23 10:14:24', '2024-10-23 10:14:24'),
(85, '188000', '5640', '193640', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '67192110ed3ba', '0', 'Pending', 'Pending', 1, '2024-10-23 10:15:13', '2024-10-23 10:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) NOT NULL,
  `sale_price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(57, 34, 9, 1, '5', '470000', '2023-10-21 21:35:19', '2023-10-21 21:35:19'),
(67, 42, 1, 3, '1', '94000', '2024-10-22 10:59:10', '2024-10-22 10:59:10'),
(68, 43, 1, 3, '1', '94000', '2024-10-22 11:31:10', '2024-10-22 11:31:10'),
(69, 44, 1, 3, '1', '94000', '2024-10-22 11:31:24', '2024-10-22 11:31:24'),
(70, 45, 1, 3, '1', '94000', '2024-10-22 11:31:39', '2024-10-22 11:31:39'),
(76, 55, 1, 3, '1', '94000', '2024-10-23 01:51:28', '2024-10-23 01:51:28'),
(77, 56, 1, 3, '1', '94000', '2024-10-23 01:51:48', '2024-10-23 01:51:48'),
(78, 57, 1, 3, '1', '94000', '2024-10-23 01:57:06', '2024-10-23 01:57:06'),
(79, 58, 1, 3, '1', '94000', '2024-10-23 01:58:25', '2024-10-23 01:58:25'),
(80, 59, 1, 3, '1', '94000', '2024-10-23 02:32:05', '2024-10-23 02:32:05'),
(87, 66, 1, 3, '1', '94000', '2024-10-23 03:08:24', '2024-10-23 03:08:24'),
(88, 67, 1, 3, '1', '94000', '2024-10-23 03:26:42', '2024-10-23 03:26:42'),
(89, 68, 1, 3, '1', '94000', '2024-10-23 03:44:26', '2024-10-23 03:44:26'),
(90, 69, 1, 3, '1', '94000', '2024-10-23 04:19:16', '2024-10-23 04:19:16'),
(95, 83, 1, 3, '2', '188000', '2024-10-23 10:10:34', '2024-10-23 10:10:34'),
(96, 84, 1, 1, '2', '188000', '2024-10-23 10:14:24', '2024-10-23 10:14:24'),
(97, 85, 1, 1, '2', '188000', '2024-10-23 10:15:13', '2024-10-23 10:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_16_065502_create_users', 1),
(3, '2023_02_16_065520_create_customer_profiles', 1),
(4, '2023_02_16_065529_create_categories', 1),
(5, '2023_02_16_065654_create_brands', 1),
(6, '2023_02_17_114815_create_products', 1),
(7, '2023_02_17_144756_create_product_reviews', 1),
(8, '2023_02_17_164424_create_product_details', 1),
(9, '2023_02_17_184723_create_product_sliders', 1),
(10, '2023_02_17_191300_create_product_wishes', 1),
(11, '2023_02_17_194301_create_product_carts', 1),
(12, '2023_08_06_131501_create_sslcommerz_accounts', 1),
(13, '2023_08_06_131940_create_invoices', 1),
(14, '2023_08_06_131941_create_invoice_products', 1),
(15, '2023_08_08_051859_create_policies', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(17, '2019_08_19_000000_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('about','refund','terms','how to buy','contact','complain') NOT NULL,
  `des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `des`) VALUES
(1, 'about', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'refund', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'terms', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'how to buy', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'contact', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(6, 'complain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:00:38'),
(2, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:17'),
(3, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:24'),
(4, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:32'),
(5, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:40'),
(6, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:48'),
(7, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:04:55'),
(8, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:05:00'),
(9, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:05:05'),
(10, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:05:15'),
(11, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:05:21'),
(12, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:05:27'),
(13, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:22'),
(14, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:28'),
(15, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:34'),
(16, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:38'),
(17, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:44'),
(18, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:51'),
(19, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:06:56'),
(20, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:01'),
(21, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:08'),
(22, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:14'),
(23, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:20'),
(24, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:33'),
(25, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://adminapi.applegadgetsbd.com/storage/media/large/2324-58451.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-10-22 08:07:39'),
(26, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(27, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(28, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(29, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(30, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(31, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(32, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(33, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(34, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(35, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(36, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(37, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(38, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(39, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(40, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(41, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 'Red', 'X', '5', '470000', '2023-10-10 18:41:33', '2023-10-10 18:41:33'),
(18, 3, 1, 'Green', '2X', '2', '188000', '2024-10-23 08:01:48', '2024-10-23 08:01:48'),
(19, 1, 1, 'Green', '2X', '2', '188000', '2024-10-23 10:14:14', '2024-10-23 10:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `des` longtext NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809mbp16touch-space-2019.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 1, '2023-08-20 13:49:16', '2024-10-22 09:00:30'),
(2, 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 2, '2023-08-20 13:49:16', '2024-10-22 12:58:13'),
(3, 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111932_sp809-mbp16touch-silver-2019.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 9, '2023-08-20 13:49:16', '2024-10-22 12:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `rating`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'Reference site about Lorem Ipsum,', '90', 1, 1, '2023-10-14 21:17:09', '2023-10-14 21:17:09'),
(3, 'Lorem ipsum dolor sit amet,', '90', 1, 9, '2023-10-21 21:41:11', '2023-10-21 21:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '50% off in all products', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ22A9_OyZRNV3LjPRigNwU-pG0LP5Zo_zI2ZJHV4kNYvSRdQh2', 1, '2023-08-15 12:42:46', '2024-10-22 08:22:24'),
(2, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '51% off in all products', 'https://wallpapers.com/images/hd/black-ghostrunner-1920-x-1080-gaming-cdm46jmm2tazmqsa.jpg', 2, '2023-08-15 12:42:46', '2024-10-22 08:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2023-09-23 20:30:24', '2023-09-23 20:30:24'),
(9, 1, 3, '2024-10-23 01:02:05', '2024-10-23 01:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_accounts`
--

CREATE TABLE `sslcommerz_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_passwd` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `success_url` varchar(255) NOT NULL,
  `fail_url` varchar(255) NOT NULL,
  `cancel_url` varchar(255) NOT NULL,
  `ipn_url` varchar(255) NOT NULL,
  `init_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_accounts`
--

INSERT INTO `sslcommerz_accounts` (`id`, `store_id`, `store_passwd`, `currency`, `success_url`, `fail_url`, `cancel_url`, `ipn_url`, `init_url`, `created_at`, `updated_at`) VALUES
(1, 'itins6717dca350d78', 'itins6717dca350d78@ssl', 'BDT', 'http://127.0.0.1:8000/PaymentSuccess', 'http://127.0.0.1:8000/PaymentFail', 'http://127.0.0.1:8000/PaymentCancel', 'http://127.0.0.1:8000/api/PaymentIPN', 'https://sandbox.sslcommerz.com/gwprocess/v3/api.php', '2023-08-25 21:35:23', '2023-08-25 21:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'engr.rabbil@yahoo.com', '0', '2023-08-20 09:13:06', '2024-10-23 10:12:59'),
(2, 'engr.rabbil@outlook.com', '0', '2023-09-23 19:16:21', '2023-10-13 23:28:08'),
(3, 'kaderurmi@gmail.com', '0', '2024-10-22 02:48:52', '2024-10-24 10:50:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`),
  ADD KEY `product_wishes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
