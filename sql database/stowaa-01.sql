-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2024 at 03:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stowaa-01`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience_years` int NOT NULL,
  `happy_customers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_satisfaction` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title1`, `title2`, `short_description`, `experience_years`, `happy_customers`, `client_satisfaction`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'COMNAY HISTORY', 'Electro is a clean, modern, user friendly, responsive', 'Collaboratively administrate empowered markets via plug-and-play maintain networks. Dynamically usable procrastinate B2B users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.', 12, '10', 100, 'storage/about/a8019b41-fce3-4ddb-b198-98685aee9f07.jpg', 1, NULL, '2024-02-18 04:13:43', '2024-02-18 04:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `google_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_closes_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `touch_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `touch_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `google_link`, `title`, `short_description`, `list_title`, `location`, `open_closes_time`, `email`, `phone`, `touch_title`, `touch_description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Quo magni assumenda', 'Voluptatem autem di', 'Laborum architecto d', 'Lorem voluptatem quo', 'Labore dolor et inve', 'Nesciunt voluptatem', 'setiwydysy@mailinator.com', '+1 (908) 979-4235', 'Proident molestiae', 'Iusto rerum doloremq', 0, NULL, '2024-02-18 22:00:50', '2024-02-18 22:00:50'),
(2, 'https://maps.app.goo.gl/Att95Lf31V8yGMeZA', 'Address Information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Colourbar U.S.A', 'Dhaka In Twin Tower Concord Shopping Complex', 'Open Closes 8:30PM', 'yourinfo@gmail.com', '(1200)-0989-568-331', 'Get In Touch Inform Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, NULL, '2024-02-18 22:17:37', '2024-02-18 22:17:37'),
(3, 'https://maps.app.goo.gl/cGk48vWgBwp1W9uB8', 'Fugiat cupiditate ne', 'Voluptatibus tempori', 'Deserunt sint perfe', 'Consequat Voluptate', 'Accusantium asperior', 'cowi@mailinator.com', '+1 (592) 916-6535', 'Sequi repudiandae ex', 'Similique beatae qui', 0, NULL, '2024-02-18 22:43:35', '2024-02-18 22:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `short_description`, `price`, `sale_price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nulla mollitia moles', 'Quidem reprehenderit', '176.00', NULL, NULL, 0, '2024-01-24 08:05:00', '2024-01-24 08:05:00'),
(2, 'Unde nihil odit prae', 'Debitis laborum Mai', '948.00', NULL, NULL, 0, '2024-01-24 08:05:22', '2024-01-24 08:05:22'),
(3, 'In corporis aut et r', 'Reiciendis illum ut', '991.00', '991.00', NULL, 0, '2024-01-24 08:06:44', '2024-01-24 08:06:44'),
(4, 'Et velit ea et comm', 'Nobis nihil pariatur', '192.00', '192.00', NULL, 0, '2024-01-24 08:35:15', '2024-01-24 08:35:15'),
(5, 'Sed eveniet et est', 'Lorem minus voluptat', '489.00', '661.00', NULL, 0, '2024-01-24 20:11:00', '2024-01-24 20:11:00'),
(6, 'Quod nisi eveniet u', 'Et at cum irure illu', '899.00', '410.00', NULL, 0, '2024-01-24 20:12:23', '2024-01-24 20:12:23'),
(7, 'Eaque id dolor vel e', 'Enim id iusto omnis', '88.00', '129.00', '60b4dad4-91ad-48a0-8914-69700d26b7c3.png', 0, '2024-01-24 20:19:43', '2024-01-24 20:19:43'),
(8, 'Dragon', 'In reprehenderit quo', '152.00', '668.00', '053aeab3-ee75-43e4-b3ff-265983af8d9e.png', 0, '2024-01-24 20:24:59', '2024-01-24 20:24:59'),
(9, 'MacBook Pro', 'Ducimus voluptatem', '417.00', '726.00', '045cb536-dc16-4ff5-8368-193f2de88289.png', 0, '2024-01-24 20:25:26', '2024-01-24 20:25:26'),
(10, 'Dell', 'Iusto eum eveniet l', '259.00', '663.00', '754faa42-4678-41bb-b3b7-3fb3e64b4af7.png', 0, '2024-01-24 20:25:53', '2024-01-24 20:25:53'),
(11, 'Hp', 'Repellendus Recusan', '830.00', '563.00', 'storage/banner/22878eda-5a06-431e-a278-4f454097ec19.png', 1, '2024-01-25 02:42:33', '2024-01-25 02:42:33'),
(12, 'Apache', 'Ea ipsum cum sed ei', '958.00', '184.00', 'storage/banner/4a16e831-a93f-4d2d-907b-6044f88ae3e5.png', 1, '2024-01-25 02:42:53', '2024-01-25 02:42:53'),
(13, 'Iphone', 'Consequatur voluptat', '310.00', '866.00', 'storage/banner/07cbd78f-6cde-4ab2-aede-12b595f589e1.png', 1, '2024-01-25 02:43:14', '2024-01-25 02:43:14'),
(14, 'Chocklet', 'Et cumque non invent', '243.00', '112.00', 'storage/banner/39b7ef14-e6d0-47de-98c9-3a7eec5f2d7f.png', 0, '2024-01-26 08:11:13', '2024-01-26 08:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `color_id` bigint NOT NULL,
  `size_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `add_price` decimal(8,2) DEFAULT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `color_id`, `size_id`, `quantity`, `price`, `add_price`, `total_price`, `created_at`, `updated_at`) VALUES
(49, 1, 18, 1010, 3, 1, '617.00', '45.00', '662.00', '2024-01-18 02:38:20', '2024-01-18 02:38:20'),
(50, 1, 18, 1010, 3, 1, '617.00', '45.00', '662.00', '2024-01-18 02:38:49', '2024-01-18 02:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Blaine', 'blaine', 'ebef564a-7710-4979-8a26-06701eee876b.png', 'Quia ex cupiditate', 1, NULL, '2023-10-25 21:44:49', '2023-11-01 23:33:31'),
(3, 2, 'Joan Hopkins', 'joan-hopkins', '2f748bc0-e1ea-4179-965a-7142cc5c3029.png', 'Blanditiis non aperi', 1, NULL, '2023-10-25 21:45:05', '2023-10-25 21:45:05'),
(4, NULL, 'Victor Bass', 'victor-bass', 'a9030b24-0854-40d3-b72e-1e0ea6439a9a.png', 'Rem non accusamus ve', 1, NULL, '2023-10-31 05:17:54', '2023-11-03 12:44:16'),
(8, NULL, 'Apple', 'apple', NULL, NULL, 1, NULL, '2023-11-20 09:45:34', '2023-11-20 09:45:34'),
(9, NULL, 'Mango', 'mango', NULL, NULL, 1, NULL, '2023-11-20 09:47:59', '2023-11-20 09:47:59'),
(10, 4, 'Ruth Burgess', 'ruth-burgess', '50f66667-abb6-42f1-a918-280262e3df49.png', 'Reiciendis et accusa', 1, NULL, '2024-01-24 09:32:59', '2024-01-24 09:32:59'),
(11, 3, 'Hyatt Nichols', 'hyatt-nichols', 'storage/category/e2fc2d7e-e5a6-4591-b77c-a61cfac57f74.png', 'Ipsum maxime laborum', 1, NULL, '2024-02-19 10:22:48', '2024-02-19 10:22:48'),
(12, 2, 'Dane Phillips', 'dane-phillips', 'storage/category/31adbcc8-7fce-479a-8c37-45fa27ceba63.png', 'Sint dicta voluptatu', 1, NULL, '2024-02-19 11:55:30', '2024-02-19 11:55:30'),
(13, 3, 'Olga Gibson', 'olga-gibson', 'storage/category/5bc31049-a429-4b31-83fb-058d2fcc46f3.png', 'Sed consequat Rerum', 1, NULL, '2024-02-19 11:55:55', '2024-02-19 11:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(2, 5),
(4, 5),
(1, 6),
(4, 6),
(1, 7),
(3, 8),
(3, 9),
(4, 9),
(1, 10),
(3, 10),
(1, 11),
(3, 11),
(1, 12),
(2, 12),
(4, 12),
(2, 13),
(3, 13),
(8, 14),
(9, 15),
(4, 16),
(2, 17),
(3, 17),
(8, 17),
(8, 18),
(1, 19),
(2, 19),
(1, 20),
(9, 20),
(1, 21),
(1, 22),
(11, 23),
(13, 24),
(12, 25);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'red', 1, NULL, '2023-10-30 11:36:32', '2023-10-30 11:36:32'),
(2, 'Green', 'green', 0, NULL, '2023-10-30 11:36:41', '2023-10-30 11:36:41'),
(3, 'Yellow', 'yellow', 1, NULL, '2023-10-30 11:36:49', '2023-10-30 11:36:49'),
(4, 'Magenda', 'magenda', 0, NULL, '2023-10-30 11:37:09', '2023-10-30 11:37:09'),
(5, 'Violet', 'violet', 1, NULL, '2023-10-30 11:37:21', '2023-10-30 11:37:21'),
(6, 'indigo', 'indigo', 1, NULL, '2023-10-30 11:37:29', '2023-10-30 11:37:29'),
(7, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(8, 'FloralWhite', 'floralwhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(9, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(10, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(11, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(12, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(13, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(14, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(15, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(16, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(17, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(18, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(19, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(20, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(21, 'DarkSlateBlue', 'darkslateblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(22, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(23, 'Maroon', 'maroon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(24, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(25, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(26, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(27, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(28, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(29, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(30, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(31, 'FloralWhite', 'floralwhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(32, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(33, 'OldLace', 'oldlace', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(34, 'Green', 'green', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(35, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(36, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(37, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(38, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(39, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(40, 'MistyRose', 'mistyrose', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(41, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(42, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(43, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(44, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(45, 'White', 'white', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(46, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(47, 'DarkSlateGray', 'darkslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(48, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(49, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(50, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(51, 'Gainsboro', 'gainsboro', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(52, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(53, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(54, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(55, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(56, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(57, 'Brown', 'brown', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(58, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(59, 'Blue', 'blue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(60, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(61, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(62, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(63, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(64, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(65, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(66, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(67, 'DarkOrchid', 'darkorchid', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(68, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(69, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(70, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(71, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(72, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(73, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(74, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(75, 'DarkSlateGray', 'darkslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(76, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(77, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(78, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(79, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(80, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(81, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(82, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(83, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(84, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(85, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(86, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(87, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(88, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(89, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(90, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(91, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(92, 'Yellow', 'yellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(93, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(94, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(95, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(96, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(97, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(98, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(99, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(100, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(101, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(102, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(103, 'DarkTurquoise', 'darkturquoise', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(104, 'SeaGreen', 'seagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(105, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(106, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(107, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(108, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(109, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(110, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(111, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(112, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(113, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(114, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(115, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(116, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(117, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(118, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(119, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(120, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(121, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(122, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(123, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(124, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(125, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(126, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(127, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(128, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(129, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(130, 'FloralWhite', 'floralwhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(131, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(132, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(133, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(134, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(135, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(136, 'IndianRed', 'indianred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(137, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(138, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(139, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(140, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(141, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(142, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(143, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(144, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(145, 'LightGreen', 'lightgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(146, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(147, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(148, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(149, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(150, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(151, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(152, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(153, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(154, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(155, 'MediumPurple', 'mediumpurple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(156, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(157, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(158, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(159, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(160, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(161, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(162, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(163, 'DarkSlateGray', 'darkslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(164, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(165, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(166, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(167, 'DarkTurquoise', 'darkturquoise', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(168, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(169, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(170, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(171, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(172, 'DarkViolet', 'darkviolet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(173, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(174, 'OliveDrab', 'olivedrab', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(175, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(176, 'LightCoral', 'lightcoral', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(177, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(178, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(179, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(180, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(181, 'Black', 'black', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(182, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(183, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(184, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(185, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(186, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(187, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(188, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(189, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(190, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(191, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(192, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(193, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(194, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(195, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(196, 'Gainsboro', 'gainsboro', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(197, 'PaleGoldenRod', 'palegoldenrod', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(198, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(199, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(200, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(201, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(202, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(203, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(204, 'Indigo', 'indigo', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(205, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(206, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(207, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(208, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(209, 'MediumPurple', 'mediumpurple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(210, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(211, 'Red', 'red', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(212, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(213, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(214, 'GoldenRod', 'goldenrod', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(215, 'SlateGray', 'slategray', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(216, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(217, 'DodgerBlue', 'dodgerblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(218, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(219, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(220, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(221, 'White', 'white', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(222, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(223, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(224, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(225, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(226, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(227, 'Indigo', 'indigo', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(228, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(229, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(230, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(231, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(232, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(233, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(234, 'Tan', 'tan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(235, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(236, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(237, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(238, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(239, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(240, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(241, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(242, 'Orchid', 'orchid', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(243, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(244, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(245, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(246, 'OliveDrab', 'olivedrab', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(247, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(248, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(249, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(250, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(251, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(252, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(253, 'LightSeaGreen', 'lightseagreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(254, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(255, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(256, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:44', '2023-10-31 08:43:44'),
(257, 'PaleGoldenRod', 'palegoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(258, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(259, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(260, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(261, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(262, 'LavenderBlush', 'lavenderblush', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(263, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(264, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(265, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(266, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(267, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(268, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(269, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(270, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(271, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(272, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(273, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(274, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(275, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(276, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(277, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(278, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(279, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(280, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(281, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(282, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(283, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(284, 'SeaGreen', 'seagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(285, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(286, 'OliveDrab', 'olivedrab', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(287, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(288, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(289, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(290, 'OldLace', 'oldlace', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(291, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(292, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(293, 'Orchid', 'orchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(294, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(295, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(296, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(297, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(298, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(299, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(300, 'Blue', 'blue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(301, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(302, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(303, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(304, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(305, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(306, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(307, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(308, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(309, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(310, 'LightCoral', 'lightcoral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(311, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(312, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(313, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(314, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(315, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(316, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(317, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(318, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(319, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(320, 'Black', 'black', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(321, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(322, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(323, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(324, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(325, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(326, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(327, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(328, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(329, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(330, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(331, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(332, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(333, 'GoldenRod', 'goldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(334, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(335, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(336, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(337, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(338, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(339, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(340, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(341, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(342, 'DarkOrchid', 'darkorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(343, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(344, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(345, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(346, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(347, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(348, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(349, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(350, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(351, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(352, 'Lime', 'lime', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(353, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(354, 'MidnightBlue', 'midnightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(355, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(356, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(357, 'Black', 'black', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(358, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(359, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(360, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(361, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(362, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(363, 'Gainsboro', 'gainsboro', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(364, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(365, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(366, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(367, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(368, 'Maroon', 'maroon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(369, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(370, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(371, 'LavenderBlush', 'lavenderblush', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(372, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(373, 'RoyalBlue', 'royalblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(374, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(375, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(376, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(377, 'DarkSlateGray', 'darkslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(378, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(379, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(380, 'DarkTurquoise', 'darkturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(381, 'Thistle', 'thistle', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(382, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(383, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(384, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(385, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(386, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(387, 'NavajoWhite', 'navajowhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(388, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(389, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(390, 'OldLace', 'oldlace', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(391, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(392, 'Gainsboro', 'gainsboro', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(393, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(394, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(395, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(396, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(397, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(398, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(399, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(400, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(401, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(402, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(403, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(404, 'RoyalBlue', 'royalblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(405, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(406, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(407, 'MediumPurple', 'mediumpurple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(408, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(409, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(410, 'Black', 'black', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(411, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(412, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(413, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(414, 'OliveDrab', 'olivedrab', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(415, 'RoyalBlue', 'royalblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(416, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(417, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(418, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(419, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(420, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(421, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(422, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(423, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(424, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(425, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(426, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(427, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(428, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(429, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(430, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(431, 'LightGreen', 'lightgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(432, 'IndianRed', 'indianred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(433, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(434, 'Lime', 'lime', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(435, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(436, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(437, 'FloralWhite', 'floralwhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(438, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(439, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(440, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(441, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(442, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(443, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(444, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(445, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(446, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(447, 'Linen', 'linen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(448, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(449, 'DarkViolet', 'darkviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(450, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(451, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(452, 'DodgerBlue', 'dodgerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(453, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(454, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(455, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(456, 'DarkViolet', 'darkviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(457, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(458, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(459, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(460, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(461, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(462, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(463, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(464, 'SandyBrown', 'sandybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(465, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(466, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(467, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(468, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(469, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(470, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(471, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(472, 'IndianRed', 'indianred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(473, 'LightSalmon', 'lightsalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(474, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(475, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(476, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(477, 'PaleGoldenRod', 'palegoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(478, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(479, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(480, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(481, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(482, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(483, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(484, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(485, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(486, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(487, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(488, 'LightGreen', 'lightgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(489, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(490, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(491, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(492, 'LightSeaGreen', 'lightseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(493, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(494, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(495, 'LightSeaGreen', 'lightseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(496, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(497, 'SeaGreen', 'seagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(498, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(499, 'DarkSlateGray', 'darkslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(500, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(501, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(502, 'LightGreen', 'lightgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(503, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(504, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(505, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(506, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(507, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(508, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(509, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(510, 'Yellow', 'yellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(511, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(512, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(513, 'Green', 'green', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(514, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(515, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(516, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(517, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(518, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(519, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(520, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(521, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(522, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(523, 'Chartreuse', 'chartreuse', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(524, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(525, 'Yellow', 'yellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(526, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(527, 'MediumPurple', 'mediumpurple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(528, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(529, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(530, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(531, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(532, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(533, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(534, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(535, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(536, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(537, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(538, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(539, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(540, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(541, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(542, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(543, 'Red', 'red', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(544, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(545, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(546, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(547, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(548, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(549, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(550, 'Indigo', 'indigo', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(551, 'DarkSlateBlue', 'darkslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(552, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(553, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(554, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(555, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(556, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(557, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(558, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(559, 'Plum', 'plum', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(560, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(561, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(562, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(563, 'DarkSeaGreen', 'darkseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(564, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(565, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(566, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(567, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(568, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(569, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(570, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(571, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(572, 'Plum', 'plum', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(573, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(574, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(575, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(576, 'PeachPuff', 'peachpuff', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(577, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(578, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(579, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(580, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(581, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(582, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(583, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45');
INSERT INTO `colors` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(584, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(585, 'SlateGray', 'slategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(586, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(587, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(588, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(589, 'Orchid', 'orchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(590, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(591, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(592, 'Black', 'black', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(593, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(594, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(595, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(596, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(597, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(598, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(599, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(600, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(601, 'MediumOrchid', 'mediumorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(602, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(603, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(604, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(605, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(606, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(607, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(608, 'Red', 'red', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(609, 'DarkSlateBlue', 'darkslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(610, 'SandyBrown', 'sandybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(611, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(612, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(613, 'Linen', 'linen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(614, 'Orange', 'orange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(615, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(616, 'DarkOrchid', 'darkorchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(617, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(618, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(619, 'IndianRed', 'indianred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(620, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(621, 'MistyRose', 'mistyrose', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(622, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(623, 'Tan', 'tan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(624, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(625, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(626, 'Red', 'red', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(627, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(628, 'LavenderBlush', 'lavenderblush', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(629, 'MidnightBlue', 'midnightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(630, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(631, 'MediumPurple', 'mediumpurple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(632, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(633, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(634, 'DarkKhaki', 'darkkhaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(635, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(636, 'LightGreen', 'lightgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(637, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(638, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(639, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(640, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(641, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(642, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(643, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(644, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(645, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(646, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(647, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(648, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(649, 'Snow', 'snow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(650, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(651, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(652, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(653, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(654, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(655, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(656, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(657, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(658, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(659, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(660, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(661, 'Black', 'black', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(662, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(663, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(664, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(665, 'DodgerBlue', 'dodgerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(666, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(667, 'GhostWhite', 'ghostwhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(668, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(669, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(670, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(671, 'DodgerBlue', 'dodgerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(672, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(673, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(674, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(675, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(676, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(677, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(678, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(679, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(680, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(681, 'Tan', 'tan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(682, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(683, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(684, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(685, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(686, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(687, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(688, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(689, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(690, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(691, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(692, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(693, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(694, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(695, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(696, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(697, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(698, 'Lime', 'lime', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(699, 'Linen', 'linen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(700, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(701, 'Brown', 'brown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(702, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(703, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(704, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(705, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(706, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(707, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(708, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(709, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(710, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(711, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(712, 'LightSeaGreen', 'lightseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(713, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(714, 'Brown', 'brown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(715, 'DarkViolet', 'darkviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(716, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(717, 'GoldenRod', 'goldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(718, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(719, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(720, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(721, 'Indigo', 'indigo', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(722, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(723, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(724, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(725, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(726, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(727, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(728, 'RoyalBlue', 'royalblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(729, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(730, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(731, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(732, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(733, 'DodgerBlue', 'dodgerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(734, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(735, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(736, 'AliceBlue', 'aliceblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(737, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(738, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(739, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(740, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(741, 'Tan', 'tan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(742, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(743, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(744, 'LavenderBlush', 'lavenderblush', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(745, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(746, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(747, 'Gray', 'gray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(748, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(749, 'LightCoral', 'lightcoral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(750, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(751, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(752, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(753, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(754, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(755, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(756, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(757, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(758, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(759, 'Blue', 'blue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(760, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(761, 'Purple', 'purple', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(762, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(763, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(764, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(765, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(766, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(767, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(768, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(769, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(770, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(771, 'Beige', 'beige', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(772, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(773, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(774, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(775, 'DarkSlateBlue', 'darkslateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(776, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(777, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(778, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(779, 'Cornsilk', 'cornsilk', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(780, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(781, 'Wheat', 'wheat', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(782, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(783, 'Indigo', 'indigo', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(784, 'Gold', 'gold', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(785, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(786, 'Gold', 'gold', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(787, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(788, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(789, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(790, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(791, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(792, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(793, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(794, 'GoldenRod', 'goldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(795, 'IndianRed', 'indianred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(796, 'RoyalBlue', 'royalblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(797, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(798, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(799, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(800, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(801, 'Blue', 'blue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(802, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(803, 'White', 'white', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(804, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(805, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(806, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(807, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(808, 'Orchid', 'orchid', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(809, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(810, 'WhiteSmoke', 'whitesmoke', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(811, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(812, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(813, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(814, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(815, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(816, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(817, 'PeachPuff', 'peachpuff', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(818, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(819, 'LightPink', 'lightpink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(820, 'DimGrey', 'dimgrey', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(821, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(822, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(823, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(824, 'YellowGreen', 'yellowgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(825, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(826, 'Magenta', 'magenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(827, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(828, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(829, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(830, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(831, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(832, 'PaleVioletRed', 'palevioletred', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(833, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(834, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(835, 'PaleGoldenRod', 'palegoldenrod', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(836, 'LimeGreen', 'limegreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(837, 'LightCoral', 'lightcoral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(838, 'Chocolate', 'chocolate', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(839, 'LightSlateGray', 'lightslategray', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(840, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(841, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(842, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(843, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(844, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(845, 'Azure', 'azure', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(846, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(847, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(848, 'MidnightBlue', 'midnightblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(849, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(850, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(851, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(852, 'Ivory', 'ivory', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(853, 'DarkMagenta', 'darkmagenta', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(854, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(855, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(856, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(857, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(858, 'LavenderBlush', 'lavenderblush', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(859, 'LightCoral', 'lightcoral', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(860, 'LightYellow', 'lightyellow', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(861, 'Lavender', 'lavender', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(862, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(863, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:45', '2023-10-31 08:43:45'),
(864, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(865, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(866, 'CadetBlue', 'cadetblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(867, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(868, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(869, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(870, 'DarkSlateBlue', 'darkslateblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(871, 'Tomato', 'tomato', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(872, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(873, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(874, 'Navy', 'navy', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(875, 'MediumSpringGreen', 'mediumspringgreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(876, 'Silver', 'silver', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(877, 'Sienna', 'sienna', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(878, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(879, 'LightCyan', 'lightcyan', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(880, 'SpringGreen', 'springgreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(881, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(882, 'Red', 'red', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(883, 'DarkCyan', 'darkcyan', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(884, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(885, 'Peru', 'peru', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(886, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(887, 'White', 'white', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(888, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(889, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(890, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(891, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(892, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(893, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(894, 'MediumSeaGreen', 'mediumseagreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(895, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(896, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(897, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(898, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(899, 'LawnGreen', 'lawngreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(900, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(901, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(902, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(903, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(904, 'Brown', 'brown', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(905, 'Orchid', 'orchid', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(906, 'Crimson', 'crimson', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(907, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(908, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(909, 'AntiqueWhite', 'antiquewhite', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(910, 'DarkViolet', 'darkviolet', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(911, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(912, 'Lime', 'lime', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(913, 'Olive', 'olive', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(914, 'DarkGray', 'darkgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(915, 'LightBlue', 'lightblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(916, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(917, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(918, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(919, 'DimGray', 'dimgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(920, 'MintCream', 'mintcream', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(921, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(922, 'Turquoise', 'turquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(923, 'FireBrick', 'firebrick', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(924, 'DarkTurquoise', 'darkturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(925, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(926, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(927, 'MistyRose', 'mistyrose', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(928, 'PowderBlue', 'powderblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(929, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(930, 'DarkSalmon', 'darksalmon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(931, 'Teal', 'teal', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(932, 'LightSkyBlue', 'lightskyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(933, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(934, 'Cyan', 'cyan', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(935, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(936, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(937, 'MediumAquaMarine', 'mediumaquamarine', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(938, 'DeepPink', 'deeppink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(939, 'SteelBlue', 'steelblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(940, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(941, 'Coral', 'coral', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(942, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(943, 'Bisque', 'bisque', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(944, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(945, 'CornflowerBlue', 'cornflowerblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(946, 'DeepSkyBlue', 'deepskyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(947, 'Brown', 'brown', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(948, 'Moccasin', 'moccasin', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(949, 'Linen', 'linen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(950, 'Gainsboro', 'gainsboro', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(951, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(952, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(953, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(954, 'Green', 'green', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(955, 'Aquamarine', 'aquamarine', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(956, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(957, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(958, 'DarkTurquoise', 'darkturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(959, 'Violet', 'violet', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(960, 'DarkOliveGreen', 'darkolivegreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(961, 'SaddleBrown', 'saddlebrown', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(962, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(963, 'PaleGoldenRod', 'palegoldenrod', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(964, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(965, 'MediumVioletRed', 'mediumvioletred', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(966, 'PaleTurquoise', 'paleturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(967, 'ForestGreen', 'forestgreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(968, 'Salmon', 'salmon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(969, 'Fuchsia', 'fuchsia', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(970, 'HoneyDew', 'honeydew', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(971, 'Pink', 'pink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(972, 'BurlyWood', 'burlywood', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(973, 'SlateBlue', 'slateblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(974, 'PaleGreen', 'palegreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(975, 'MediumTurquoise', 'mediumturquoise', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(976, 'Yellow', 'yellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(977, 'LightSteelBlue', 'lightsteelblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(978, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(979, 'DarkGoldenRod', 'darkgoldenrod', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(980, 'SkyBlue', 'skyblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(981, 'MidnightBlue', 'midnightblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(982, 'LightGray', 'lightgray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(983, 'GreenYellow', 'greenyellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(984, 'BlueViolet', 'blueviolet', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(985, 'Blue', 'blue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(986, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(987, 'SeaShell', 'seashell', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(988, 'RosyBrown', 'rosybrown', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(989, 'MediumSlateBlue', 'mediumslateblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(990, 'MediumBlue', 'mediumblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(991, 'LightGoldenRodYellow', 'lightgoldenrodyellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(992, 'LemonChiffon', 'lemonchiffon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(993, 'SlateGray', 'slategray', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(994, 'DarkGreen', 'darkgreen', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(995, 'BlanchedAlmond', 'blanchedalmond', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(996, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(997, 'Aqua', 'aqua', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(998, 'Yellow', 'yellow', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(999, 'Khaki', 'khaki', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1000, 'Darkorange', 'darkorange', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1001, 'Maroon', 'maroon', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1002, 'OrangeRed', 'orangered', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1003, 'DarkBlue', 'darkblue', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1004, 'PapayaWhip', 'papayawhip', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1005, 'DarkRed', 'darkred', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1006, 'HotPink', 'hotpink', 1, NULL, '2023-10-31 08:43:46', '2023-10-31 08:43:46'),
(1007, 'bangla', 'bangla', 1, NULL, '2023-11-30 11:10:48', '2023-11-30 11:10:48'),
(1008, 'Red1', 'red1', 1, NULL, '2023-12-06 00:11:27', '2023-12-06 00:11:27'),
(1009, 'Blue1', 'blue1', 1, NULL, '2023-12-06 00:11:43', '2023-12-06 00:11:43'),
(1010, 'Green1', 'green1', 1, NULL, '2023-12-06 00:11:52', '2023-12-06 00:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `coupon_discount` decimal(8,2) NOT NULL,
  `min_applicable_amount` decimal(8,2) NOT NULL,
  `limit` int NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0=deactive, 1=active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `start_date`, `expire_date`, `coupon_discount`, `min_applicable_amount`, `limit`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cu_1', '2023-12-21', '2023-12-30', '500.00', '1000.00', 9, 1, NULL, '2023-12-12 23:20:01', '2023-12-21 10:53:48'),
(2, 'Cu_2', '2023-12-21', '2023-12-31', '600.00', '500.00', 9, 1, NULL, '2023-12-12 23:20:33', '2023-12-21 10:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `color_id` bigint DEFAULT NULL,
  `size_id` bigint DEFAULT NULL,
  `quantity` int NOT NULL,
  `add_price` decimal(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `color_id`, `size_id`, `quantity`, `add_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 5, 840, '960.00', NULL, '2023-10-30 23:53:46', '2023-10-30 23:53:46'),
(2, 1, 5, 2, 710, '996.00', NULL, '2023-10-30 23:54:20', '2023-10-30 23:54:20'),
(3, 1, 3, 2, 849, '151.00', NULL, '2023-10-30 23:54:32', '2023-10-30 23:54:32'),
(4, 1, 2, 5, 393, '882.00', NULL, '2023-10-31 05:19:24', '2023-10-31 05:19:24'),
(5, 3, 152, 5, 107, '307.00', NULL, '2023-11-03 10:14:58', '2023-11-03 10:14:58'),
(6, 3, 620, 5, 266, '754.00', NULL, '2023-11-05 11:21:37', '2023-11-05 11:21:37'),
(7, 11, 322, 6, 287, '903.00', NULL, '2023-11-12 11:21:41', '2023-11-12 11:21:41'),
(8, 11, 443, 6, 417, '344.00', NULL, '2023-11-12 11:21:49', '2023-11-12 11:21:49'),
(9, 13, 983, 3, 4, '20.00', NULL, '2023-11-30 05:36:21', '2023-11-30 05:36:21'),
(10, 13, 5, 6, 7, '15.00', NULL, '2023-11-30 05:36:35', '2023-11-30 05:36:35'),
(11, 13, 76, 2, 5, '66.00', NULL, '2023-11-30 07:00:09', '2023-11-30 07:00:09'),
(12, 13, 171, 2, 7, '50.00', NULL, '2023-11-30 11:09:57', '2023-11-30 11:09:57'),
(13, 13, 1007, 2, 0, '12.00', NULL, '2023-11-30 11:11:32', '2024-01-08 23:39:00'),
(14, 13, 1007, 3, 4, '45.00', NULL, '2023-11-30 11:11:49', '2024-01-09 00:18:19'),
(15, 16, 1008, 7, 4, '50.00', NULL, '2023-12-06 00:12:27', '2024-01-09 00:51:34'),
(16, 16, 1010, 8, 0, '45.00', NULL, '2023-12-06 00:12:59', '2024-01-09 21:23:50'),
(17, 16, 1009, 9, 0, '39.00', NULL, '2023-12-06 00:13:25', '2024-01-13 09:02:16'),
(18, 16, 1008, 3, 0, '55.00', NULL, '2023-12-06 01:19:30', '2024-01-09 00:54:19'),
(19, 13, 1007, 3, 100, '45.00', NULL, '2024-01-03 02:12:29', '2024-01-03 02:12:29'),
(20, 13, 1007, 2, 200, '67.00', NULL, '2024-01-03 02:13:10', '2024-01-03 02:13:10'),
(21, 18, 1010, 3, 113, '45.00', NULL, '2024-01-13 09:11:14', '2024-02-19 11:32:24'),
(22, 19, 1008, 3, 17, '46.00', NULL, '2024-01-23 23:03:06', '2024-02-11 23:42:13'),
(23, 23, 1008, 3, 100, '30.00', NULL, '2024-02-19 10:29:41', '2024-02-19 10:31:41'),
(24, 22, 1008, 2, 0, '100.00', NULL, '2024-02-19 11:27:15', '2024-02-19 11:30:13'),
(25, 24, 1008, 8, 460, '100.00', NULL, '2024-02-19 11:56:53', '2024-02-19 12:01:29'),
(26, 25, 1008, 7, 256, '100.00', NULL, '2024-02-19 11:58:06', '2024-02-19 12:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2023_10_02_124708_create_permission_tables', 1),
(39, '2023_10_24_030215_create_sizes_table', 4),
(40, '2023_10_24_030530_create_colors_table', 5),
(41, '2023_10_24_031234_create_product_galleries_table', 6),
(43, '2023_10_24_031638_create_inventories_table', 7),
(44, '2023_10_26_031444_create_category_product_table', 7),
(45, '2023_10_24_025301_create_products_table', 8),
(46, '2023_10_16_125142_create_categories_table', 9),
(47, '2023_12_01_052126_create_carts_table', 10),
(53, '2023_12_06_102418_create_coupons_table', 11),
(55, '2023_12_13_021816_create_shipping_setups_table', 12),
(63, '2023_12_13_053511_create_orders_table', 13),
(64, '2023_12_21_093510_create_user_details_table', 13),
(65, '2023_12_21_094244_create_shipping_addresses_table', 13),
(66, '2023_12_25_110244_create_order_details_table', 13),
(67, '2024_01_19_085804_create_service_table', 14),
(71, '2024_01_24_074604_create_banners_table', 15),
(72, '2024_01_25_051853_create_promotions_table', 16),
(77, '2024_02_12_081350_create_product_reviews_table', 17),
(78, '2024_02_16_071626_create_user_email_table', 18),
(79, '2024_02_16_102628_create_user_emails_table', 19),
(81, '2024_02_18_043146_create_abouts_table', 20),
(82, '2024_02_18_062336_create_us_services_table', 21),
(83, '2024_02_18_064120_create_teams_table', 22),
(85, '2024_02_19_025146_create_addresses_table', 23),
(88, '2024_02_19_045429_create_applications_table', 24),
(93, '2024_02_19_084527_create_user_applications_table', 25),
(94, '2024_02_20_044612_create_wishlists_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `coupon_id` bigint DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` decimal(8,2) DEFAULT NULL,
  `shipping_charge` decimal(8,2) DEFAULT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `transaction_id`, `invoice_no`, `coupon_discount`, `shipping_charge`, `total_price`, `note`, `order_status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '6595185061a04', NULL, NULL, '100.00', '824.00', 'gdhh', 'pending', 'unpaid', '2024-01-03 02:18:24', '2024-01-03 02:18:24'),
(2, 1, NULL, '65951ad131a23', NULL, NULL, '100.00', '824.00', 'gdhh', 'pending', 'unpaid', '2024-01-03 02:29:05', '2024-01-03 02:29:05'),
(3, 1, NULL, '6595243751b4c', NULL, NULL, '100.00', '824.00', 'gdhh', 'pending', 'unpaid', '2024-01-03 03:09:11', '2024-01-03 03:09:11'),
(4, 1, NULL, '6598ffcec9625', NULL, NULL, '100.00', '824.00', NULL, 'pending', 'unpaid', '2024-01-06 01:22:55', '2024-01-06 01:22:55'),
(5, 1, NULL, '659ab10c4dc1e', NULL, NULL, '50.00', '774.00', NULL, 'pending', 'unpaid', '2024-01-07 08:11:24', '2024-01-07 08:11:24'),
(6, 1, NULL, '659cc9b6c65af', NULL, NULL, '50.00', '774.00', NULL, 'pending', 'unpaid', '2024-01-08 22:21:11', '2024-01-08 22:21:11'),
(7, 1, NULL, '659cd409d7fcc', NULL, NULL, '50.00', '774.00', NULL, 'pending', 'unpaid', '2024-01-08 23:05:13', '2024-01-08 23:05:13'),
(8, 1, NULL, '659cd78fbb162', NULL, NULL, '100.00', '3640.00', NULL, 'pending', 'unpaid', '2024-01-08 23:20:15', '2024-01-08 23:20:15'),
(9, 1, NULL, '659cdb2796ca2', NULL, NULL, '50.00', '840.00', NULL, 'pending', 'unpaid', '2024-01-08 23:35:35', '2024-01-08 23:35:35'),
(10, 1, NULL, '659cdb90e3028', NULL, NULL, '50.00', '445.00', NULL, 'pending', 'unpaid', '2024-01-08 23:37:20', '2024-01-08 23:37:20'),
(11, 1, NULL, '659cdbf4b341b', NULL, NULL, '50.00', '412.00', NULL, 'pending', 'unpaid', '2024-01-08 23:39:00', '2024-01-08 23:39:00'),
(12, 1, NULL, '659ce52b8e065', NULL, NULL, '50.00', '445.00', NULL, 'processing', 'paid', '2024-01-09 00:18:19', '2024-01-09 00:18:19'),
(13, 1, NULL, '659ce7b1d9c86', NULL, NULL, '50.00', '868.00', NULL, 'failed', 'unpaid', '2024-01-09 00:29:05', '2024-01-09 00:29:05'),
(14, 1, NULL, '659cecf6b657e', NULL, NULL, '50.00', '863.00', NULL, 'pending', 'unpaid', '2024-01-09 00:51:34', '2024-01-09 00:51:34'),
(15, 1, NULL, '659ced9b2ce7d', NULL, NULL, '50.00', '868.00', NULL, 'pending', 'unpaid', '2024-01-09 00:54:19', '2024-01-09 00:54:19'),
(16, 1, NULL, '659d3a9b1b503', NULL, NULL, '50.00', '852.00', NULL, 'processing', 'paid', '2024-01-09 06:22:51', '2024-01-09 06:22:51'),
(17, 1, NULL, '659d3d5ac52e6', NULL, NULL, '50.00', '858.00', NULL, 'pending', 'unpaid', '2024-01-09 06:34:34', '2024-01-09 06:34:34'),
(18, 1, NULL, '659d408b99693', NULL, NULL, '50.00', '852.00', NULL, 'canceled', 'unpaid', '2024-01-09 06:48:11', '2024-01-09 06:48:11'),
(19, 1, NULL, '659d40f327a59', NULL, NULL, '100.00', '902.00', NULL, 'processing', 'paid', '2024-01-09 06:49:55', '2024-01-09 06:49:55'),
(20, 1, NULL, '659d448da4a91', NULL, NULL, '50.00', '852.00', NULL, 'pending', 'unpaid', '2024-01-09 07:05:17', '2024-01-09 07:05:17'),
(21, 1, NULL, '659d44cf03e88', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:06:23', '2024-01-09 07:06:23'),
(22, 1, NULL, '659d44f714a8f', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:07:03', '2024-01-09 07:07:03'),
(23, 1, NULL, '659d454c31d2d', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:08:28', '2024-01-09 07:08:28'),
(24, 1, NULL, '659d4583745ce', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:09:23', '2024-01-09 07:09:23'),
(25, 1, NULL, '659d469c3a276', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:14:04', '2024-01-09 07:14:04'),
(26, 1, NULL, '659d46e213304', NULL, NULL, '50.00', '858.00', NULL, 'pending', 'unpaid', '2024-01-09 07:15:14', '2024-01-09 07:15:14'),
(27, 1, NULL, '659d46f733648', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 07:15:35', '2024-01-09 07:15:35'),
(28, 1, NULL, '659e0dc6aa1a3', NULL, NULL, '50.00', '858.00', NULL, 'pending', 'unpaid', '2024-01-09 21:23:50', '2024-01-09 21:23:50'),
(29, 1, NULL, '659e0e19c5849', NULL, NULL, '50.00', '50.00', NULL, 'pending', 'unpaid', '2024-01-09 21:25:13', '2024-01-09 21:25:13'),
(30, 1, NULL, '659e1de4e8ad3', NULL, NULL, '50.00', '852.00', NULL, 'pending', 'unpaid', '2024-01-09 22:32:36', '2024-01-09 22:32:36'),
(31, 1, NULL, '65a0fe83b35d5', NULL, NULL, '50.00', '852.00', NULL, 'pending', 'unpaid', '2024-01-12 02:55:31', '2024-01-12 02:55:31'),
(32, 1, NULL, '65a0ff22aa316', NULL, NULL, '100.00', '902.00', NULL, 'pending', 'unpaid', '2024-01-12 02:58:10', '2024-01-12 02:58:10'),
(33, 1, NULL, '65a2a5f7ebcc9', NULL, NULL, '50.00', '852.00', NULL, 'pending', 'unpaid', '2024-01-13 09:02:16', '2024-01-13 09:02:16'),
(34, 1, NULL, '65a2a84db25fe', NULL, NULL, '50.00', '712.00', NULL, 'processing', 'paid', '2024-01-13 09:12:13', '2024-01-13 09:12:13'),
(35, 1, NULL, '65a352fc1dd5b', NULL, NULL, '50.00', '712.00', NULL, 'pending', 'unpaid', '2024-01-13 21:20:28', '2024-01-13 21:20:28'),
(36, 1, NULL, '65a36140f12cc', NULL, NULL, '50.00', '712.00', NULL, 'pending', 'unpaid', '2024-01-13 22:21:21', '2024-01-13 22:21:21'),
(37, 1, NULL, '65a362924a11e', 'stowaa-37', NULL, '50.00', '712.00', NULL, 'processing', 'paid', '2024-01-13 22:26:58', '2024-01-13 22:26:58'),
(38, 1, NULL, '65a3637d5bb76', 'stowaa-38', NULL, NULL, '662.00', NULL, 'processing', 'paid', '2024-01-13 22:30:53', '2024-01-13 22:30:53'),
(39, 1, NULL, '65a363fba518e', 'stowaa-39', NULL, '50.00', '712.00', NULL, 'processing', 'paid', '2024-01-13 22:32:59', '2024-01-13 22:32:59'),
(42, 20, NULL, '65c9a967e8441', 'stowaa-42', NULL, '50.00', '690.00', 'Perferendis dolorem', 'processing', 'paid', '2024-02-11 23:15:19', '2024-02-11 23:15:19'),
(43, 20, NULL, '65c9afb5b98c7', NULL, NULL, '100.00', '740.00', NULL, 'pending', 'unpaid', '2024-02-11 23:42:13', '2024-02-11 23:42:13'),
(44, 20, NULL, '65c9aff4ce096', 'stowaa-44', NULL, '100.00', '100.00', NULL, 'processing', 'paid', '2024-02-11 23:43:16', '2024-02-11 23:43:16'),
(45, 20, NULL, '65c9ba4f72090', NULL, NULL, '100.00', '762.00', NULL, 'pending', 'unpaid', '2024-02-12 00:27:27', '2024-02-12 00:27:27'),
(46, 20, NULL, '65c9ba639d1b0', 'stowaa-46', NULL, '100.00', '100.00', NULL, 'processing', 'paid', '2024-02-12 00:27:47', '2024-02-12 00:27:47'),
(47, 20, NULL, '65d3826d1ec8d', 'stowaa-47', NULL, '50.00', '2850.00', 'Omnis optio omnis a', 'processing', 'paid', '2024-02-19 10:31:41', '2024-02-19 10:31:41'),
(48, 20, NULL, '65d390256e2e3', 'stowaa-48', NULL, '100.00', '13620.00', 'Sint non dolor proi', 'processing', 'paid', '2024-02-19 11:30:13', '2024-02-19 11:30:13'),
(49, 20, NULL, '65d390a7f2873', 'stowaa-49', NULL, '50.00', '19910.00', 'Veniam aut voluptat', 'processing', 'paid', '2024-02-19 11:32:24', '2024-02-19 11:32:24'),
(50, 20, NULL, '65d397231b3c5', 'stowaa-50', NULL, '50.00', '42774.00', 'Do iure est adipisic', 'processing', 'paid', '2024-02-19 12:00:03', '2024-02-19 12:00:03'),
(51, 20, NULL, '65d3977971129', 'stowaa-51', NULL, '50.00', '36850.00', 'Duis labore quisquam', 'processing', 'paid', '2024-02-19 12:01:29', '2024-02-19 12:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `color_id` bigint NOT NULL,
  `size_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `add_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `quantity`, `price`, `add_price`, `created_at`, `updated_at`) VALUES
(23, 8, 16, 1008, 3, 3, '763.00', '55.00', '2024-01-08 23:20:15', '2024-01-08 23:20:15'),
(27, 12, 13, 1007, 3, 1, '350.00', '45.00', '2024-01-09 00:18:19', '2024-01-09 00:18:19'),
(28, 13, 16, 1008, 3, 1, '763.00', '55.00', '2024-01-09 00:29:05', '2024-01-09 00:29:05'),
(29, 14, 16, 1008, 7, 1, '763.00', '50.00', '2024-01-09 00:51:34', '2024-01-09 00:51:34'),
(30, 15, 16, 1008, 3, 1, '763.00', '55.00', '2024-01-09 00:54:19', '2024-01-09 00:54:19'),
(31, 16, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-09 06:22:51', '2024-01-09 06:22:51'),
(32, 17, 16, 1010, 8, 1, '763.00', '45.00', '2024-01-09 06:34:34', '2024-01-09 06:34:34'),
(33, 18, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-09 06:48:11', '2024-01-09 06:48:11'),
(34, 19, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-09 06:49:55', '2024-01-09 06:49:55'),
(35, 20, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-09 07:05:17', '2024-01-09 07:05:17'),
(36, 26, 16, 1010, 8, 1, '763.00', '45.00', '2024-01-09 07:15:14', '2024-01-09 07:15:14'),
(37, 28, 16, 1010, 8, 1, '763.00', '45.00', '2024-01-09 21:23:50', '2024-01-09 21:23:50'),
(38, 30, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-09 22:32:36', '2024-01-09 22:32:36'),
(39, 31, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-12 02:55:31', '2024-01-12 02:55:31'),
(40, 32, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-12 02:58:10', '2024-01-12 02:58:10'),
(41, 33, 16, 1009, 9, 1, '763.00', '39.00', '2024-01-13 09:02:16', '2024-01-13 09:02:16'),
(42, 34, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 09:12:13', '2024-01-13 09:12:13'),
(43, 35, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 21:20:28', '2024-01-13 21:20:28'),
(44, 36, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 22:21:21', '2024-01-13 22:21:21'),
(45, 37, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 22:26:58', '2024-01-13 22:26:58'),
(46, 38, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 22:30:53', '2024-01-13 22:30:53'),
(47, 39, 18, 1010, 3, 1, '617.00', '45.00', '2024-01-13 22:32:59', '2024-01-13 22:32:59'),
(49, 42, 19, 1008, 3, 1, '594.00', '46.00', '2024-02-11 23:15:19', '2024-02-11 23:15:19'),
(50, 43, 19, 1008, 3, 1, '594.00', '46.00', '2024-02-11 23:42:13', '2024-02-11 23:42:13'),
(51, 45, 18, 1010, 3, 1, '617.00', '45.00', '2024-02-12 00:27:27', '2024-02-12 00:27:27'),
(52, 47, 23, 1008, 3, 50, '26.00', '30.00', '2024-02-19 10:31:41', '2024-02-19 10:31:41'),
(53, 48, 22, 1008, 2, 40, '238.00', '100.00', '2024-02-19 11:30:13', '2024-02-19 11:30:13'),
(54, 49, 18, 1010, 3, 30, '617.00', '45.00', '2024-02-19 11:32:24', '2024-02-19 11:32:24'),
(55, 50, 25, 1008, 7, 44, '871.00', '100.00', '2024-02-19 12:00:03', '2024-02-19 12:00:03'),
(56, 51, 24, 1008, 8, 40, '820.00', '100.00', '2024-02-19 12:01:29', '2024-02-19 12:01:29');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add user', 'web', NULL, NULL),
(2, 'edit user', 'web', NULL, NULL),
(3, 'view user', 'web', NULL, NULL),
(4, 'delete user', 'web', NULL, NULL),
(5, 'add role', 'web', NULL, NULL),
(6, 'view role', 'web', NULL, NULL),
(7, 'edit role', 'web', NULL, NULL),
(8, 'delete role', 'web', NULL, NULL),
(9, 'create product', 'web', NULL, NULL),
(10, 'view product', 'web', NULL, NULL),
(11, 'delete product', 'web', NULL, NULL),
(12, 'edit product', 'web', NULL, NULL),
(13, 'create category', 'web', NULL, NULL),
(14, 'view category', 'web', NULL, NULL),
(15, 'delete category', 'web', NULL, NULL),
(16, 'edit category', 'web', NULL, NULL),
(17, 'create color', 'web', NULL, NULL),
(18, 'view color', 'web', NULL, NULL),
(19, 'delete color', 'web', NULL, NULL),
(20, 'edit color', 'web', NULL, NULL),
(21, 'create size', 'web', NULL, NULL),
(22, 'view size', 'web', NULL, NULL),
(23, 'delete size', 'web', NULL, NULL),
(24, 'edit size', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'app-login', '7318438ad49b41431b1a5116f82130caabffdd6ae24514dbaa0b178dc41091ee', '[\"*\"]', NULL, NULL, '2024-03-11 03:55:04', '2024-03-11 03:55:04'),
(2, 'App\\Models\\User', 1, 'app-login', 'edc3a7479ee1182bbeff59cb1c18ded9efc5784d8a26eaa51f6ac02e4cf2c16b', '[\"*\"]', NULL, NULL, '2024-03-11 04:02:22', '2024-03-11 04:02:22'),
(3, 'App\\Models\\User', 1, 'app-login', 'e7e2eabbfa6710115bc7044b52a8d3a481b681111514d07833dd10b0bf7a7d59', '[\"*\"]', '2024-03-11 08:44:17', NULL, '2024-03-11 04:02:50', '2024-03-11 08:44:17'),
(4, 'App\\Models\\User', 1, 'app-login', '860fe30bcaacedcaa8ec196b2adf99477e6cfed8a63b03fddc29d35c0f972407', '[\"*\"]', '2024-03-11 10:13:13', NULL, '2024-03-11 08:43:58', '2024-03-11 10:13:13'),
(5, 'App\\Models\\User', 21, 'mobile', '770c6ff7955565fb6413e44dde7ed5075fc709cbd321cc4196b353b778d0ea31', '[\"*\"]', NULL, NULL, '2024-03-21 07:30:26', '2024-03-21 07:30:26'),
(6, 'App\\Models\\User', 22, 'mobile', '59dc3aee54afdd7193b49bace6a9f2991a279a0042a8a6ee42cf1f3b41339a77', '[\"*\"]', NULL, NULL, '2024-03-21 10:40:04', '2024-03-21 10:40:04'),
(7, 'App\\Models\\User', 23, 'mobile', 'd8a0073cc26e901d31f7dd46a11ea80589d18af9e23dc72baf00a00fdafe84d4', '[\"*\"]', '2024-03-21 11:06:40', NULL, '2024-03-21 10:46:46', '2024-03-21 11:06:40'),
(8, 'App\\Models\\User', 24, 'mobile', 'f1e548324c2e1a6ecf5ed8151234db49d8f44cf0c6cd851b6224e30a828499cc', '[\"*\"]', NULL, NULL, '2024-03-21 11:13:12', '2024-03-21 11:13:12'),
(10, 'App\\Models\\User', 26, 'mobile', '509a78366da521813e9fbf3e1c7e7d6bbc67c83e5dd3ad65239ffa2078b4efe4', '[\"*\"]', NULL, NULL, '2024-03-21 12:07:47', '2024-03-21 12:07:47'),
(11, 'App\\Models\\User', 26, 'app-login', '3258ad892bac4b1b002c67eab9179d3df6ba8f07b5b46a7bc4d5f145fc400533', '[\"*\"]', '2024-03-21 12:15:56', NULL, '2024-03-21 12:09:12', '2024-03-21 12:15:56'),
(13, 'App\\Models\\User', 27, 'app-login', '1e0c46d9c9c2da69dc7bc20a79579cca1bdb901f458965976acb8de53a8e30cc', '[\"*\"]', '2024-03-21 23:29:48', NULL, '2024-03-21 23:26:59', '2024-03-21 23:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `add_info` longtext COLLATE utf8mb4_unicode_ci,
  `view` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `short_description`, `price`, `sale_price`, `description`, `add_info`, `view`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Quasi sint perferen', 'quasi-sint-perferen', 'Minima aspernatur eo', '434.00', '103.00', NULL, NULL, NULL, 1, '2023-11-23 06:39:25', '2023-11-12 10:49:46', '2023-11-23 06:39:25'),
(10, 'Eu deserunt exercita', 'eu-deserunt-exercita', 'Recusandae Quo face', '324.00', '144.00', NULL, NULL, NULL, 0, '2023-11-17 10:44:56', '2023-11-12 11:21:01', '2023-11-17 10:44:56'),
(11, 'Nostrud architecto o', 'nostrud-architecto-o', 'Ut aliqua Alias nos', '782.00', '421.00', NULL, NULL, NULL, 0, NULL, '2023-11-12 11:21:29', '2024-02-14 23:13:08'),
(12, 'Sunt voluptate sequi', 'sunt-voluptate-sequi', 'Ut labore et dolore', '343.00', '676.00', NULL, NULL, NULL, 0, NULL, '2023-11-17 10:43:51', '2024-02-14 23:13:08'),
(13, 'Macbook Pro', 'macbook-pro', 'It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate', '400.00', '400.00', '<p><span style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate</span><span style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px; text-align: var(--bs-body-text-align);\">It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate</span><br></p>', '<p><span style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate</span><span style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px; text-align: var(--bs-body-text-align);\">It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate</span><span style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px; text-align: var(--bs-body-text-align);\">It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate</span><br></p>', 3, 1, NULL, '2023-11-19 23:13:11', '2024-02-15 02:19:28'),
(14, 'Voluptates qui eius', 'voluptates-qui-eius', 'Deserunt dolor volup', '960.00', '707.00', NULL, NULL, NULL, 1, '2023-11-23 06:39:07', '2023-11-20 09:46:24', '2023-11-23 06:39:07'),
(15, 'Obcaecati corporis t', 'obcaecati-corporis-t', 'Cumque dolor qui lab', '990.00', '246.00', NULL, NULL, 1, 1, NULL, '2023-11-20 09:48:43', '2024-02-14 23:13:08'),
(16, 'Dragon', 'dragon', 'Est ut quis beatae', '169.00', '763.00', NULL, NULL, 1, 1, NULL, '2023-11-23 06:41:20', '2024-02-15 02:19:42'),
(17, 'Dell', 'dell', 'Sit Nam quia asperi', '506.00', '533.00', NULL, NULL, 1, 1, NULL, '2023-11-23 06:42:16', '2024-02-14 23:13:08'),
(18, 'Mobile', 'mobile', 'Commodi odit et susc', '984.00', '617.00', NULL, NULL, 3, 1, NULL, '2024-01-13 09:10:01', '2024-02-26 09:35:58'),
(19, 'Amet quasi impedit', 'amet-quasi-impedit', 'Officiis aut est do', '940.00', '594.00', NULL, NULL, 5, 1, NULL, '2024-01-23 23:01:35', '2024-03-04 09:50:12'),
(20, 'Perspiciatis amet', 'perspiciatis-amet', 'Veritatis mollitia i', '683.00', '424.00', NULL, NULL, 2, 1, NULL, '2024-01-26 08:14:14', '2024-02-15 04:47:56'),
(21, 'Dress', 'dress', 'Ad delectus reprehe', '634.00', '194.00', NULL, NULL, NULL, 1, NULL, '2024-02-15 04:53:12', '2024-02-15 04:53:12'),
(22, 'Sarees', 'sarees', 'Odit illum blanditi', '323.00', '238.00', NULL, NULL, 2, 1, NULL, '2024-02-15 04:57:03', '2024-03-04 09:39:44'),
(23, 'Quae aspernatur repu', 'quae-aspernatur-repu', 'Et cum incididunt te', '144.00', '26.00', NULL, NULL, 6, 1, NULL, '2024-02-19 10:28:08', '2024-03-04 09:39:00'),
(24, 'Sed pariatur Verita', 'sed-pariatur-verita', 'Enim qui repellendus', '669.00', '820.00', NULL, NULL, 1, 1, NULL, '2024-02-19 11:56:28', '2024-02-19 12:00:43'),
(25, 'Unde magni placeat', 'unde-magni-placeat', 'Nostrud velit non c', '585.00', '871.00', NULL, NULL, 1, 1, NULL, '2024-02-19 11:57:41', '2024-02-19 11:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image_path`, `image_name`, `created_at`, `updated_at`) VALUES
(16, 10, 'storage/products/a5977092-8c2c-4c19-9314-ecf88c6c1d1a.png', 'a5977092-8c2c-4c19-9314-ecf88c6c1d1a.png', NULL, NULL),
(17, 10, 'storage/products/8a3bf0f9-bc81-4fa7-a80f-e8930614dd2f.png', '8a3bf0f9-bc81-4fa7-a80f-e8930614dd2f.png', NULL, NULL),
(18, 10, 'storage/products/600a3309-c554-4463-bdef-a8513f258b1e.png', '600a3309-c554-4463-bdef-a8513f258b1e.png', NULL, NULL),
(19, 11, 'storage/products/3fe2a191-0c9f-44a1-8f55-191d70e76d12.png', '3fe2a191-0c9f-44a1-8f55-191d70e76d12.png', NULL, NULL),
(20, 11, 'storage/products/c0420934-5960-47a9-9ad4-365e45279075.png', 'c0420934-5960-47a9-9ad4-365e45279075.png', NULL, NULL),
(21, 11, 'storage/products/61577518-5805-457b-add4-4483073e2d57.png', '61577518-5805-457b-add4-4483073e2d57.png', NULL, NULL),
(22, 12, 'storage/products/13ea7af2-4333-4674-a9c0-bf053aec2be9.png', '13ea7af2-4333-4674-a9c0-bf053aec2be9.png', NULL, NULL),
(23, 12, 'storage/products/47aa70f2-354d-4fc8-9423-43f5a1604631.png', '47aa70f2-354d-4fc8-9423-43f5a1604631.png', NULL, NULL),
(24, 12, 'storage/products/e6cd91c3-456c-4c7b-9526-6473dfe4a3bc.png', 'e6cd91c3-456c-4c7b-9526-6473dfe4a3bc.png', NULL, NULL),
(25, 13, 'storage/products/45dbf64c-a1ff-4fb7-99ee-1728430b989b.png', '45dbf64c-a1ff-4fb7-99ee-1728430b989b.png', NULL, NULL),
(26, 13, 'storage/products/81cdd7fc-0bb5-44ad-945b-07eaf0cc3c95.png', '81cdd7fc-0bb5-44ad-945b-07eaf0cc3c95.png', NULL, NULL),
(27, 13, 'storage/products/018cd7ae-dfec-4265-a452-8ba124d04d09.png', '018cd7ae-dfec-4265-a452-8ba124d04d09.png', NULL, NULL),
(28, 13, 'storage/products/dff696f4-cb33-47bf-9770-a870b16b0aa9.png', 'dff696f4-cb33-47bf-9770-a870b16b0aa9.png', NULL, NULL),
(29, 15, 'storage/products/813c4d78-84f4-4aed-975d-dbc623bc7fd7.png', '813c4d78-84f4-4aed-975d-dbc623bc7fd7.png', NULL, NULL),
(30, 15, 'storage/products/6b1f6276-eee4-403b-a1c9-2acd2faa8c30.png', '6b1f6276-eee4-403b-a1c9-2acd2faa8c30.png', NULL, NULL),
(31, 15, 'storage/products/5bc71e72-afcd-4a2f-9d8b-9c23819aca55.png', '5bc71e72-afcd-4a2f-9d8b-9c23819aca55.png', NULL, NULL),
(32, 16, 'storage/products/6f6deb42-a29d-475c-8cf8-560d972648e8.png', '6f6deb42-a29d-475c-8cf8-560d972648e8.png', NULL, NULL),
(33, 16, 'storage/products/33bca368-2d3b-4c23-9f20-10dd736325fe.png', '33bca368-2d3b-4c23-9f20-10dd736325fe.png', NULL, NULL),
(34, 17, 'storage/products/805740d2-18b2-40d3-bb4f-12342f9d7dcd.png', '805740d2-18b2-40d3-bb4f-12342f9d7dcd.png', NULL, NULL),
(35, 17, 'storage/products/3f387558-433d-4590-ac89-7294acc9dc68.png', '3f387558-433d-4590-ac89-7294acc9dc68.png', NULL, NULL),
(36, 18, 'storage/products/b600e82e-439b-4910-8e19-752d869425b5.png', 'b600e82e-439b-4910-8e19-752d869425b5.png', NULL, NULL),
(37, 18, 'storage/products/697172ee-d353-490f-83d2-dc88577f1edf.png', '697172ee-d353-490f-83d2-dc88577f1edf.png', NULL, NULL),
(38, 18, 'storage/products/47a4f55e-e698-4b89-8b17-9d4d6adbeb51.png', '47a4f55e-e698-4b89-8b17-9d4d6adbeb51.png', NULL, NULL),
(39, 18, 'storage/products/20873fdb-677b-4e7e-bc97-daa2ad66201b.png', '20873fdb-677b-4e7e-bc97-daa2ad66201b.png', NULL, NULL),
(40, 18, 'storage/products/8d974bc2-b082-4237-9e7e-edfacf8597f3.png', '8d974bc2-b082-4237-9e7e-edfacf8597f3.png', NULL, NULL),
(41, 18, 'storage/products/3d5c4e89-f319-4081-9148-a8c1736c4bf3.png', '3d5c4e89-f319-4081-9148-a8c1736c4bf3.png', NULL, NULL),
(42, 18, 'storage/products/df53db8f-4baf-48a0-9567-4c9a228ac3c6.png', 'df53db8f-4baf-48a0-9567-4c9a228ac3c6.png', NULL, NULL),
(43, 18, 'storage/products/4b54cd2c-26d9-4019-98c0-67a9176c040f.png', '4b54cd2c-26d9-4019-98c0-67a9176c040f.png', NULL, NULL),
(44, 18, 'storage/products/bd34cac5-4db7-44a4-8048-ad27d758f6e8.png', 'bd34cac5-4db7-44a4-8048-ad27d758f6e8.png', NULL, NULL),
(45, 18, 'storage/products/a2a558f1-f780-41ef-a38b-201707123e05.png', 'a2a558f1-f780-41ef-a38b-201707123e05.png', NULL, NULL),
(46, 19, 'storage/products/053bf975-c38a-41d5-b471-144d5d893b51.png', '053bf975-c38a-41d5-b471-144d5d893b51.png', NULL, NULL),
(47, 19, 'storage/products/2f8118cd-dc6b-44c6-8f1a-57ff32bfe06a.png', '2f8118cd-dc6b-44c6-8f1a-57ff32bfe06a.png', NULL, NULL),
(48, 19, 'storage/products/9462b34d-f2e2-4f9f-b30c-f6940f35c24c.png', '9462b34d-f2e2-4f9f-b30c-f6940f35c24c.png', NULL, NULL),
(49, 19, 'storage/products/b27817d0-c99e-4b54-bba0-4864555e531c.png', 'b27817d0-c99e-4b54-bba0-4864555e531c.png', NULL, NULL),
(50, 20, 'storage/products/c2a1b4f9-0c3e-42d2-9d6b-940dafda66b3.png', 'c2a1b4f9-0c3e-42d2-9d6b-940dafda66b3.png', NULL, NULL),
(51, 21, 'storage/products/ce719013-d655-429e-a93e-c15595bc1f62.png', 'ce719013-d655-429e-a93e-c15595bc1f62.png', NULL, NULL),
(52, 22, 'storage/products/c3ec4249-360a-4369-a9fd-b02fc8772978.png', 'c3ec4249-360a-4369-a9fd-b02fc8772978.png', NULL, NULL),
(53, 22, 'storage/products/707e0d26-a271-46f3-a829-37f1f0c0d353.png', '707e0d26-a271-46f3-a829-37f1f0c0d353.png', NULL, NULL),
(54, 22, 'storage/products/47aa162c-cfd4-466a-9922-d9cfaf64a2f6.png', '47aa162c-cfd4-466a-9922-d9cfaf64a2f6.png', NULL, NULL),
(55, 22, 'storage/products/166e8ae6-e9db-4b23-ae91-62f54f433934.png', '166e8ae6-e9db-4b23-ae91-62f54f433934.png', NULL, NULL),
(56, 23, 'storage/products/f14b3067-7ad0-459f-b42f-9c6cb1a9d3a5.png', 'f14b3067-7ad0-459f-b42f-9c6cb1a9d3a5.png', NULL, NULL),
(57, 24, 'storage/products/5c4e5c36-581e-499b-8006-b8194b0554e6.png', '5c4e5c36-581e-499b-8006-b8194b0554e6.png', NULL, NULL),
(58, 24, 'storage/products/9cb965a0-c451-437a-8f10-cc2d253526f4.png', '9cb965a0-c451-437a-8f10-cc2d253526f4.png', NULL, NULL),
(59, 24, 'storage/products/a6b4237c-5767-4ee7-8cc4-b2e1c0ea7535.png', 'a6b4237c-5767-4ee7-8cc4-b2e1c0ea7535.png', NULL, NULL),
(60, 25, 'storage/products/0234ab7e-d1ea-4238-be7b-dcbf5f6cded8.png', '0234ab7e-d1ea-4238-be7b-dcbf5f6cded8.png', NULL, NULL),
(61, 25, 'storage/products/abd900ae-b651-4c25-98f6-20188410c767.png', 'abd900ae-b651-4c25-98f6-20188410c767.png', NULL, NULL),
(62, 25, 'storage/products/3616d57e-c8df-49d1-8179-6cea76dad97f.png', '3616d57e-c8df-49d1-8179-6cea76dad97f.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `order_detail_id` bigint NOT NULL,
  `rating` decimal(8,2) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `order_detail_id`, `rating`, `comments`, `created_at`, `updated_at`) VALUES
(1, 20, 19, 49, '4.50', 'good', '2024-02-12 22:34:03', '2024-02-12 22:34:03'),
(4, 20, 19, 50, '2.00', 'hh', '2024-02-12 23:42:14', '2024-02-12 23:42:14'),
(6, 20, 18, 51, '2.50', 'fkdjghkf', '2024-02-26 09:33:23', '2024-02-26 09:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `short_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Protective sleeves combo.', 'It is a long established fact that a reader will be distracted', '5815ef36-e4ff-4fbb-be7a-546f558f71a5.png', 0, '2024-01-24 23:31:30', '2024-01-24 23:31:30'),
(2, 'Nutrillet blender combo.', 'It is a long established fact that a reader will be distracted', '88af99c9-fdaf-49d4-85d7-07ea2080f521.png', 0, '2024-01-24 23:32:07', '2024-01-24 23:32:07'),
(3, 'Nutrillet blender combo.', 'It is a long established fact that a reader will be distracted', 'storage/promotion/20a10323-e622-43d8-8bc4-2940fbee1e88.png', 1, '2024-01-25 02:34:54', '2024-01-25 02:34:54'),
(4, 'Protective sleeves combo.', 'It is a long established fact that a reader will be distracted', 'storage/promotion/46f47af6-d9b1-4309-a508-cd3b692b18f1.png', 1, '2024-01-25 02:35:20', '2024-01-25 02:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2023-10-23 09:37:59', '2023-10-23 09:37:59'),
(2, 'user', 'web', '2023-10-23 09:37:59', '2023-10-23 09:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `short_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'Free shipping on all US order', 1, '2024-01-19 04:08:31', '2024-01-19 04:08:31'),
(2, 'Support 24/ 7', 'Contact us 24 hours a day', 1, '2024-01-19 04:27:34', '2024-01-19 04:27:34'),
(3, '100% Money Back', 'You have 30 days to Return', 1, '2024-01-19 04:27:52', '2024-01-19 04:27:52'),
(4, '90 Days Return', 'If goods have problems', 1, '2024-01-19 04:28:30', '2024-01-19 04:28:30'),
(5, 'abcd', 'safdgfhfgj fghghg', 0, '2024-01-19 05:21:35', '2024-01-19 05:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `order_id`, `name`, `phone`, `company`, `address`, `city`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'wewtw', '67588', 'ryrey', 'tyty', 'gfhf', '45346', '2024-01-03 02:18:24', '2024-01-03 02:18:24'),
(2, 2, 'wewtw', '67588', 'ryrey', 'tyty', 'gfhf', '45346', '2024-01-03 02:29:05', '2024-01-03 02:29:05'),
(3, 3, 'wewtw', '67588', 'ryrey', 'tyty', 'gfhf', '45346', '2024-01-03 03:09:11', '2024-01-03 03:09:11'),
(4, 41, 'Byron Wolf', '+1 (112) 122-3295', 'Christensen and Boyle LLC', '90 North New Parkway', 'Commodo amet exerci', 'Voluptatem fuga Pr', '2024-02-11 23:04:11', '2024-02-11 23:04:11'),
(5, 42, 'Branden Hooper', '+1 (846) 705-8302', 'Coleman Sullivan Inc', '51 Nobel Street', 'Ipsum sunt nihil do', 'Ea consequatur Aute', '2024-02-11 23:15:20', '2024-02-11 23:15:20'),
(6, 47, 'Sigourney Sandoval', '+1 (992) 789-7486', 'Reilly and Gentry Traders', '86 Green Clarendon Road', 'Voluptatibus corpori', 'Hic est rerum qui n', '2024-02-19 10:31:41', '2024-02-19 10:31:41'),
(7, 48, 'Desirae Mullins', '+1 (626) 636-6135', 'Barber Becker LLC', '54 Cowley Freeway', 'Ut eius nostrum repr', 'Ut vero tempora veri', '2024-02-19 11:30:13', '2024-02-19 11:30:13'),
(8, 49, 'Nola Gilliam', '+1 (405) 743-9447', 'Young Farley Traders', '87 New Freeway', 'Qui perferendis aliq', 'Aut debitis laboris', '2024-02-19 11:32:24', '2024-02-19 11:32:24'),
(9, 50, 'Phoebe Pacheco', '+1 (465) 954-2465', 'Walsh Lott Associates', '299 Cowley Freeway', 'Perspiciatis eius v', 'Eum commodo molestia', '2024-02-19 12:00:03', '2024-02-19 12:00:03'),
(10, 51, 'Tamekah Ortega', '+1 (278) 654-5373', 'Guerrero and Bates Plc', '557 Nobel Road', 'Sint possimus quia', 'Aut aute consequuntu', '2024-02-19 12:01:29', '2024-02-19 12:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_setups`
--

CREATE TABLE `shipping_setups` (
  `id` bigint UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_setups`
--

INSERT INTO `shipping_setups` (`id`, `shipping_name`, `add_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'xyz', NULL, NULL, '2023-12-12 21:02:08', '2023-12-12 21:02:08'),
(2, 'inside Dhaka', '50', NULL, '2023-12-12 21:03:18', '2023-12-12 21:03:18'),
(3, 'outside Dhaka', '100', NULL, '2023-12-12 21:04:05', '2023-12-12 21:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'M', 'm', 1, '2023-11-23 06:54:38', '2023-10-30 11:58:44', '2023-11-23 06:54:38'),
(2, 'L', 'l', 1, NULL, '2023-10-30 12:00:05', '2023-10-30 12:00:05'),
(3, 'XL', 'xl', 1, NULL, '2023-10-30 12:00:17', '2023-10-30 12:00:17'),
(4, 'XXl', 'xxl', 1, '2023-11-15 11:32:16', '2023-10-30 12:00:29', '2023-11-15 11:32:16'),
(5, 'XX', 'xx', 1, '2023-11-15 11:40:52', '2023-10-30 12:00:36', '2023-11-15 11:40:52'),
(6, 'L', 'l', 1, NULL, '2023-10-30 12:00:41', '2023-11-23 06:54:28'),
(7, 'M', 'm', 1, NULL, '2023-12-06 00:09:41', '2023-12-06 00:09:41'),
(8, 'S', 's', 1, NULL, '2023-12-06 00:09:59', '2023-12-06 00:09:59'),
(9, 'XXl', 'xxl', 1, NULL, '2023-12-06 00:10:09', '2023-12-06 00:10:09'),
(10, 'XXXl', 'xxxl', 1, NULL, '2023-12-06 00:10:20', '2023-12-06 00:10:20'),
(11, 'xxxI', 'xxxi', 1, NULL, '2023-12-08 09:05:30', '2023-12-08 09:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `short_description`, `image`, `name`, `designation`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(14, 'Omnis sed et qui lab', 'storage/team/a39c5e2a-0092-4b61-896b-cb609c72a868.jpg', 'Eaton Mullen', 'Fugit in et quidem', 1, NULL, '2024-02-18 04:44:19', '2024-02-18 04:44:19'),
(15, 'Est amet fugit nu', 'storage/team/fc162117-fa5d-4151-8af4-25dc5c02f57a.jpg', 'Candace Becker', 'Ullam sint aut ab op', 1, NULL, '2024-02-18 04:46:21', '2024-02-18 04:46:21'),
(16, 'Rerum aut iste tempo', 'storage/team/1fadab60-9fa6-4ec7-92df-d03a18581bad.jpg', 'Tiger Dillon', 'Facere esse hic nost', 1, NULL, '2024-02-18 04:46:34', '2024-02-18 04:46:34'),
(17, 'Lorem lorem facere m', 'storage/team/9872cc77-65cf-49d6-9799-d0ce89dacc7d.jpg', 'Fredericka Rush', 'Qui tempore ipsam a', 1, NULL, '2024-02-18 04:46:44', '2024-02-18 04:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'super@gmail.com', '2023-10-23 09:37:58', '$2y$10$Fs.GPEAhtsTzt4uM9iLygOcuM0SNE5L7Sz.q5Vd.TUA9jAepWx5gq', NULL, 'zq8zwY78J0PDZbhdYEXz0o8TsFoSKQskHYtvZ17VwNt4RmMCqgL0CqRfeMAk', '2023-10-23 09:37:58', '2023-10-23 09:37:58'),
(2, 'user', 'user@gmail.com', '2023-10-23 09:37:59', '$2y$10$SVpduUpaCKzCsCWgoJMsauuUS/ahgXwekfA5XT/rFPt/uq13FNRqS', NULL, 'ObJb2B9QLALTYTkHiIIlTf5hWZgEHkkCRXxLGs8f7X4Z24IOapucf2YJdCme', '2023-10-23 09:37:59', '2023-10-23 09:37:59'),
(18, 'hezaw', 'kiwamizajo@mailinator.com', '2024-02-05 22:15:08', '$2y$10$yzKvfzT5setd3DLmtwpJW.mwGGbeQfxRXUFLNSX6wAcvRXwRDPYQi', NULL, 'qpC6F5YMzLO0UtYmdk0exFL1IA2x6Acmk3lSxrtHUno5XI0HklAtIZI3DjBA', '2024-02-05 22:13:56', '2024-02-05 22:15:08'),
(19, 'galuke', 'qyrywiwiwi@mailinator.com', '2024-02-06 00:12:26', '$2y$10$/pVg2XeR6xPVih9gYmE2W..lV.YVTYs2emHcGzoToT8q3Z/01oKD6', NULL, NULL, '2024-02-06 00:11:59', '2024-02-06 00:12:26'),
(20, 'mujuxomeci', 'covibere@mailinator.com', '2024-02-06 00:28:29', '$2y$10$bE6CGb8LMmhn9L6.TBkYFOZitkfXB/JEstQ.qV42cT24Hxf/5tf4W', NULL, 'AZmF6mIeYCoptBtnVKBpCwEDcJxXbBZXBYdu95xeMaUq8LIirxtGDFb8aGPa', '2024-02-06 00:28:04', '2024-02-06 00:28:29'),
(21, 'abc api', 'abc@gmail.com', NULL, '$2y$10$oLrYmO.6XVw2eHjNhc.n8eosUkKC2FA7roJEdu7m8UTcKWoPwX3F.', NULL, NULL, '2024-03-21 07:30:22', '2024-03-21 07:30:22'),
(22, 'abc api', 'abc1@gmail.com', NULL, '$2y$10$QH.TAL7X3e49KxN/SLEF5.OCfkZE/woHigOFtYpLB58F1PwRG2d36', NULL, NULL, '2024-03-21 10:40:04', '2024-03-21 10:40:04'),
(23, 'abc api', 'abc2@gmail.com', NULL, '$2y$10$Ww.RasoRXQM15.g0kFgVg.Fb.s/QjIyy5GOkLfgo95Pt40tL8Uq0y', NULL, NULL, '2024-03-21 10:46:46', '2024-03-21 10:46:46'),
(24, 'abc api', 'abc3@gmail.com', NULL, '$2y$10$J52WKCDbZRBo7QaSTlC9.OcmWn3k0bbCQYcJnCkf8seCPAVDNs/FO', NULL, NULL, '2024-03-21 11:13:12', '2024-03-21 11:13:12'),
(25, 'sdfdfdd', 'faddfdaf@gmail.com', NULL, '$2y$10$bUaeC4r.7j3bzdlNkaBtNOKA1DlU8wI9mH8LR./YnS1sFxyqANKaq', NULL, NULL, '2024-03-21 11:13:50', '2024-03-21 11:37:01'),
(27, 'suma', 'suma6789@gmail.com', NULL, '$2y$10$uucZzm3oeRRaxlDMYR0g1.ufRd9ot7I5v7KiJMRTWYUr4BNTeo5YC', NULL, NULL, '2024-03-21 23:24:22', '2024-03-21 23:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_applications`
--

CREATE TABLE `user_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_applications`
--

INSERT INTO `user_applications` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Moses Prince', 'zofa@mailinator.com', 'Architecto quidem am', 'Quo aut ut libero ex', '2024-02-23 03:51:44', '2024-02-23 03:51:44'),
(2, 'Deborah Francis', 'libobo@mailinator.com', 'Nihil laboriosam bl', 'Optio et aspernatur', '2024-02-26 09:31:48', '2024-02-26 09:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `company`, `address`, `city`, `zipcode`, `created_at`, `updated_at`) VALUES
(2, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-03 02:18:24', '2024-01-03 02:18:24'),
(3, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-03 02:29:05', '2024-01-03 02:29:05'),
(4, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-03 03:09:11', '2024-01-03 03:09:11'),
(5, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-06 01:22:55', '2024-01-06 01:22:55'),
(6, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-07 08:11:24', '2024-01-07 08:11:24'),
(7, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 22:21:10', '2024-01-08 22:21:10'),
(8, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 23:05:13', '2024-01-08 23:05:13'),
(9, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 23:20:15', '2024-01-08 23:20:15'),
(10, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 23:35:35', '2024-01-08 23:35:35'),
(11, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 23:37:20', '2024-01-08 23:37:20'),
(12, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-08 23:39:00', '2024-01-08 23:39:00'),
(13, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 00:18:19', '2024-01-09 00:18:19'),
(14, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 00:29:05', '2024-01-09 00:29:05'),
(15, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 00:51:34', '2024-01-09 00:51:34'),
(16, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 00:54:19', '2024-01-09 00:54:19'),
(17, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 06:22:51', '2024-01-09 06:22:51'),
(18, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 06:34:34', '2024-01-09 06:34:34'),
(19, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 06:48:11', '2024-01-09 06:48:11'),
(20, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 06:49:55', '2024-01-09 06:49:55'),
(21, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:05:17', '2024-01-09 07:05:17'),
(22, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:06:23', '2024-01-09 07:06:23'),
(23, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:07:03', '2024-01-09 07:07:03'),
(24, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:08:28', '2024-01-09 07:08:28'),
(25, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:09:23', '2024-01-09 07:09:23'),
(26, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:14:04', '2024-01-09 07:14:04'),
(27, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:15:14', '2024-01-09 07:15:14'),
(28, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 07:15:35', '2024-01-09 07:15:35'),
(29, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 21:23:50', '2024-01-09 21:23:50'),
(30, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 21:25:13', '2024-01-09 21:25:13'),
(31, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-09 22:32:36', '2024-01-09 22:32:36'),
(32, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-12 02:55:31', '2024-01-12 02:55:31'),
(33, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-12 02:58:10', '2024-01-12 02:58:10'),
(34, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 09:02:16', '2024-01-13 09:02:16'),
(35, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 09:12:13', '2024-01-13 09:12:13'),
(36, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 21:20:28', '2024-01-13 21:20:28'),
(37, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 22:21:21', '2024-01-13 22:21:21'),
(38, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 22:26:58', '2024-01-13 22:26:58'),
(39, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 22:30:53', '2024-01-13 22:30:53'),
(40, 1, '43536', 'gdfd', 'fghj', 'mmn,n', '978', '2024-01-13 22:32:59', '2024-01-13 22:32:59'),
(41, 20, NULL, NULL, NULL, NULL, NULL, '2024-02-11 23:03:50', '2024-02-11 23:03:50'),
(42, 20, '+1 (139) 425-7818', 'Fleming and Ratliff Plc', '70 East White First Boulevard', 'Sequi quo atque ut v', '64996', '2024-02-11 23:04:11', '2024-02-11 23:04:11'),
(43, 20, '+1 (831) 532-1669', 'Lynn and Holden Plc', '32 South Cowley Parkway', 'Unde autem iste est', '43316', '2024-02-11 23:15:19', '2024-02-11 23:15:19'),
(44, 20, NULL, NULL, NULL, NULL, NULL, '2024-02-11 23:42:13', '2024-02-11 23:42:13'),
(45, 20, '01780669178', 'tyy', '32 South Cowley Parkway', 'y', '564', '2024-02-11 23:43:16', '2024-02-11 23:43:16'),
(46, 20, NULL, NULL, NULL, NULL, NULL, '2024-02-12 00:27:27', '2024-02-12 00:27:27'),
(47, 20, '67687688', 'tuu', 'cfc', NULL, '6767', '2024-02-12 00:27:47', '2024-02-12 00:27:47'),
(48, 20, '+1 (223) 183-9966', 'Cook Cleveland Trading', '10 South Rocky Clarendon Drive', 'Aut officiis laborum', '74345', '2024-02-19 10:31:41', '2024-02-19 10:31:41'),
(49, 20, '+1 (218) 425-8121', 'Miranda Battle Plc', '496 East Clarendon Road', 'Enim qui adipisci bl', '32125', '2024-02-19 11:30:13', '2024-02-19 11:30:13'),
(50, 20, '+1 (569) 816-1043', 'Wilder Rich Trading', '189 North Oak Extension', 'Voluptates nulla qui', '95071', '2024-02-19 11:32:24', '2024-02-19 11:32:24'),
(51, 20, '+1 (185) 659-6746', 'Kelley Olson Plc', '60 Hague Lane', 'Molestiae nesciunt', '99931', '2024-02-19 12:00:03', '2024-02-19 12:00:03'),
(52, 20, '+1 (453) 191-1927', 'Wallace and Solis Trading', '95 West Second Avenue', 'Odio commodo saepe e', '20634', '2024-02-19 12:01:29', '2024-02-19 12:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_emails`
--

CREATE TABLE `user_emails` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_emails`
--

INSERT INTO `user_emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'rifat@gmail.com', '2024-02-16 04:41:10', '2024-02-16 04:41:10'),
(2, 'abc@gmail.com', '2024-02-16 09:01:13', '2024-02-16 09:01:13'),
(3, 'fojiso@mailinator.com', '2024-02-19 00:02:20', '2024-02-19 00:02:20'),
(4, 'xyz@gmail.com', '2024-02-26 09:27:06', '2024-02-26 09:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `us_services`
--

CREATE TABLE `us_services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `us_services`
--

INSERT INTO `us_services` (`id`, `title`, `short_description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Praesentium sed et q', 'Numquam ex consectet', 0, NULL, '2024-02-18 00:35:00', '2024-02-18 00:35:00'),
(2, 'Creative Design', 'Collaboratively administrate empowered markets via plug-and-play maintain networks revolutionary ROI.', 1, NULL, '2024-02-18 01:46:47', '2024-02-18 01:46:47'),
(3, 'Money Back Guarantee', 'Collaboratively administrate empowered markets via plug-and-play maintain networks revolutionary ROI.', 1, NULL, '2024-02-18 01:47:11', '2024-02-18 01:47:11'),
(4, 'Online Support 24/7', 'Collaboratively administrate empowered markets via plug-and-play maintain networks revolutionary ROI.', 1, NULL, '2024-02-18 01:47:27', '2024-02-18 01:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 20, 0, '2024-02-19 23:17:04', '2024-02-19 23:17:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_setups`
--
ALTER TABLE `shipping_setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_applications`
--
ALTER TABLE `user_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_applications_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_emails`
--
ALTER TABLE `user_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_emails_email_unique` (`email`);

--
-- Indexes for table `us_services`
--
ALTER TABLE `us_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipping_setups`
--
ALTER TABLE `shipping_setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_applications`
--
ALTER TABLE `user_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_emails`
--
ALTER TABLE `user_emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `us_services`
--
ALTER TABLE `us_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
