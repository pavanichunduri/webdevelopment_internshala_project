-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 25, 2020 at 02:09 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `specifications` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `specifications`, `cost`) VALUES
(1, 'Samsung Galaxy M01 Smart Phone', '5.7 inch Infinity-V 1520 x 720 HD+ PLS TFT LCD Display\r\n2 GHz, 1.45 GHz Octa-Core SDM439 Processor\r\n13 MP + 2 MP Primary Camera, 4000 mAh Battery\r\n5.0 MP Selfie Camera,Android 10 Operating System', 9099),
(2, 'Apple iPhone 11 128 GB, Purple', '6.1 inch Liquid Retina HD 1792 x 828 display\r\n12 MP + 12 MP dual primary camera\r\n12 MP selfie camera, iOS 13 operating system\r\nA13 Bionic chip, splash, water & dust resistant\r\n', 73600),
(3, 'Vivo Y50 128 GB, 8 GB RAM, Iri', '6.53 inch 2340x1080 FHD+ iView multi-touch display\r\n13 MP +8 MP + 2 MP + 2 MP Primary Camera\r\n16 MP Selfie Camera, Bluetooth 5.0 Connectivity\r\nQualcomm Snapdragon 665 Processor, 5000 mAh Battery', 17990),
(4, 'OPPO A11K 32 GB, 2 GB RAM, Flo', '6.22 inch Eye Protection Waterdrop 1520 x 720 Screen\r\n13 MP, 2 MP Dual Primary Camera, 4230 mAh Battery\r\n5 MP Selfie Camera, Fingerprint Sensor\r\n2.3 GHz Octa-core MT6765V/CB Processor', 8999),
(5, 'Redmi 8A Dual Smart Phone 32 G', '6.22 inch 1520 × 720 HD+ Dot Notch Display\r\nQualcomm Snapdragon 439 Octa-Core Processor\r\n13MP + 2MP AI Primary Camera, Supports 18W Fast Charge\r\n8MP AI Selfie Camera, 5000 mAh Battery', 7999),
(6, 'Nokia 2.3 32 GB, 2 GB RAM, Cha', '6.2 inch HD+ in-cell display with selfie notch and 19:9 aspect ratio\r\n13 MP f/2.2 + 2 MP depth sensing Rear Camera\r\n5 MP f/2.4 Selfie Camera, Non-removable 4000 mAh Battery\r\nAndroid 9 Pie Operating System, Biometric face unlock', 8999),
(7, 'Redmi Note 8 Pro 128 GB 8 GB R', '6.53 inch Dot Notch HDR 2340 x 1080 Display\r\n64 MP, 8 MP, 2 MP, 2 MP Primary Camera\r\n20MP Selfie Camera, 4500 mAh High-Capacity Battery\r\nHelio G90T Professional Gaming Octa-Core Processor', 19999),
(8, 'Redmi Note 8 64 GB 4 GB RAM, S', '6.3 inch FHD+ 2340 x 1080 Display\r\n48 MP, 8 MP, 2 MP, 2 MP Primary Camera\r\n13MP Selfie Camera, Dual Corning Gorilla Glass 5\r\nQualcomm Snapdragon 665 Processor', 12449);

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE IF NOT EXISTS `query` (
  `first_name` varchar(15) NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`first_name`, `email`, `message`) VALUES
('Pavani', 'pavanichunduri5028@g', 'rwptky57ihkgrefhjnymh'),
('x', 'pavanichunduri5028@g', 'dwfeagrhtrj');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact` bigint(10) NOT NULL,
  `register_time` timestamp NOT NULL,
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `contact`, `register_time`, `city`, `address`) VALUES
(20, '', 'x', '', 'd41d8cd9', 0, '0000-00-00 00:00:00', '', ''),
(21, 'mail.@gmail.com', 'pavani', 'chunduri', 'e137557e', 9182639638, '0000-00-00 00:00:00', 'uiop', 'qwerryui');

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

DROP TABLE IF EXISTS `user_products`;
CREATE TABLE IF NOT EXISTS `user_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `productid` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `userid`, `productid`) VALUES
(3, 21, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
