-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 09:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geocode`
--

-- --------------------------------------------------------

--
-- Table structure for table `robert`
--

CREATE TABLE `robert` (
  `id` varchar(100) DEFAULT NULL,
  `wikidata` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `text_en_US` varchar(100) DEFAULT NULL,
  `language_en_US` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `robert`
--

INSERT INTO `robert` (`id`, `wikidata`, `short_code`, `text_en_US`, `language_en_US`, `text`, `language`) VALUES
('place.14018334812122320', 'Q8652', 'US-FL', 'Florida', 'en', 'Florida', 'en'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('region.10932882153544800', 'Q1852202', 'KE-31', 'Nakuru', 'en', 'Nakuru', 'en'),
('region.10932882153544800', 'Q1852202', 'KE-31', 'Nakuru', 'en', 'Nakuru', 'en'),
('region.9358027036082930', 'Q33225335', '', 'Bungoma', 'en', 'Bungoma', 'en');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
