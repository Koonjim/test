-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2025 at 06:16 PM
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
-- Database: `Project007`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location_string` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `num_reviews` int(11) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `price_Single_Bed` text DEFAULT NULL,
  `price_Twin_Bed` text DEFAULT NULL,
  `price_King_Size` text DEFAULT NULL,
  `star` float DEFAULT NULL,
  `photo_url` text DEFAULT NULL,
  `Service1` text DEFAULT NULL,
  `Service2` text DEFAULT NULL,
  `Service3` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `location_string`, `rating`, `num_reviews`, `latitude`, `longitude`, `price_Single_Bed`, `price_Twin_Bed`, `price_King_Size`, `star`, `photo_url`, `Service1`, `Service2`, `Service3`, `created_at`, `updated_at`) VALUES
(1, 'So/ Bangkok', 'กรุงเทพมหานคร (กทม.)', 4.7, 8810, 13.726300, 100.543160, '5999', '4999', '3999', 4.5, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/25/2b/19/exterior-view.jpg', '123', '456', '789', '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(2, 'โรงแรมสุโขทัย', 'กรุงเทพมหานคร (กทม.)', 4.7, 5001, 13.722989, 100.540870, '-', '-', '-', 5, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/29/89/19/sukhothai-urban-oasis.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:32:41'),
(3, 'Carlton Hotel Bangkok Sukhumvit', 'กรุงเทพมหานคร (กทม.)', 4.9, 2031, 13.734575, 100.564550, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/68/7b/8f/exterior.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(4, 'Capella Bangkok', 'กรุงเทพมหานคร (กทม.)', 4.9, 915, 13.713078, 100.510730, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/05/d0/74/getlstd-property-photo.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(5, 'อมารี กรุงเทพ', 'กรุงเทพมหานคร (กทม.)', 4.5, 10939, 13.751057, 100.540220, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/d5/0e/95/exterior.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(6, 'โรงแรมเลอ เมอริเดียน กรุงเทพ', 'กรุงเทพมหานคร (กทม.)', 4.7, 5395, 13.730004, 100.530290, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/9a/77/e2/living-room.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(7, 'โนโวเทล กรุงเทพ แพลตทินัม ประตูน้ำ', 'กรุงเทพมหานคร (กทม.)', 4.6, 6598, 13.749713, 100.540520, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/25/2c/67/exterior.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(8, 'โรงแรมเพนนินซูลา กรุงเทพฯ', 'กรุงเทพมหานคร (กทม.)', 4.7, 5870, 13.723123, 100.510800, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/60/27/bc/the-peninsula-exterior.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(9, 'โรงแรมโอกุระ เพรสทีจ กรุงเทพ', 'กรุงเทพมหานคร (กทม.)', 4.8, 5192, 13.742637, 100.548060, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/30/cb/12/the-okura-prestige-bangkok.jpg', NULL, NULL, NULL, '2025-05-04 08:55:39', '2025-05-04 09:04:21'),
(10, 'Bangkok Marriott Hotel Sukhumvit', 'กรุงเทพมหานคร (กทม.)', 4.6, 4964, 13.723330, 100.580480, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/d5/7b/c4/octave-rooftop-bar-lounge.jpg', NULL, NULL, NULL, '2025-05-04 08:57:28', '2025-05-04 09:04:21'),
(11, 'โรงแรมฝ้ายขิด', 'เมืองอำนาจเจริญ, จังหวัดอำนาจเจริญ', 4.0, 28, 15.860928, 104.620125, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/cb/a6/e0/fai-kid-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:04:39', '2025-05-04 09:04:39'),
(12, 'Ramiarndao Boutique Place', 'เมืองอำนาจเจริญ, จังหวัดอำนาจเจริญ', 4.5, 4, 15.851402, 104.610664, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/97/cb/c1/ramiarndao-boutique-place.jpg', NULL, NULL, NULL, '2025-05-04 09:04:39', '2025-05-04 09:04:39'),
(13, 'The C hotel', 'เมืองอำนาจเจริญ, จังหวัดอำนาจเจริญ', 3.7, 3, 15.855372, 104.632350, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/partner/bookingcom/photo-l/2e/16/58/e0/the-c-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:04:39', '2025-05-04 09:05:04'),
(14, 'Four Seasons Resort Koh Samui', 'อ่างทอง, เกาะสมุย, จังหวัดสุราษฎร์ธานี', 4.8, 2011, 9.572517, 99.923890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/2e/90/80/four-seasons-resort-koh.jpg', NULL, NULL, NULL, '2025-05-04 09:05:51', '2025-05-04 09:05:59'),
(15, 'มาย สมุย บีช รีสอร์ท แอนด์ สปา', 'อ่างทอง, เกาะสมุย, จังหวัดสุราษฎร์ธานี', 4.4, 1801, 9.569236, 99.918210, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/58/e9/42/mai-samui-villa.jpg', NULL, NULL, NULL, '2025-05-04 09:05:51', '2025-05-04 09:05:59'),
(16, 'TUI BLUE The Passage Samui', 'อ่างทอง, เกาะสมุย, จังหวัดสุราษฎร์ธานี', 4.3, 1182, 9.566582, 99.920190, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2b/a7/f9/17/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:05:51', '2025-05-04 09:05:59'),
(17, 'โรงแรม อ่างทอง', 'หลวงพระบาง, แขวงหลวงพระบาง ', 4.0, 55, 19.872646, 102.127770, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/13/77/49/20/ang-thong-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:05:51', '2025-05-04 09:05:59'),
(18, 'โรงแรม เดอะวัน', 'เมืองบึงกาฬ, จังหวัดบึงกาฬ', 4.1, 98, 18.358408, 103.647964, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/22/01/08/dc/the-one-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:06:34', '2025-05-04 09:06:34'),
(19, 'Century Grand Hotel', 'เมืองบึงกาฬ, จังหวัดบึงกาฬ', 4.0, 3, 18.353320, 103.655930, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/0e/04/99/b3/century-grand-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:06:34', '2025-05-04 09:06:34'),
(20, 'Kan Tulum', 'ตูลุม, แหลมยูคาทาน', 4.5, 144, 20.193874, -87.465675, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/29/5b/0e/ec/kan-tulum.jpg', NULL, NULL, NULL, '2025-05-04 09:06:34', '2025-05-04 09:06:34'),
(21, 'อมารี บุรีรัมย์ ยูไนเต็ด', 'เมืองบุรีรัมย์, จังหวัดบุรีรัมย์', 4.6, 501, 14.968062, 103.093330, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2d/18/06/a0/deluxe-room.jpg', NULL, NULL, NULL, '2025-05-04 09:07:09', '2025-05-04 09:07:09'),
(22, 'เดอะคริสตัล บุรีรัมย์', 'Isan, จังหวัดบุรีรัมย์', 4.6, 254, 14.973570, 103.069490, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/16/46/21/x2-vibe-buriram.jpg', NULL, NULL, NULL, '2025-05-04 09:07:09', '2025-05-04 09:07:09'),
(23, 'โมเดน่า บาย เฟรเซอร์ บุรีรัมย์', 'เมืองบุรีรัมย์, จังหวัดบุรีรัมย์', 4.7, 93, 14.964186, 103.093605, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/1f/00/41/modena-by-fraser-buriram.jpg', NULL, NULL, NULL, '2025-05-04 09:07:09', '2025-05-04 09:07:09'),
(24, 'Cresco Hotel Buriram', 'เมืองบุรีรัมย์, จังหวัดบุรีรัมย์', 4.5, 54, 14.971655, 103.105450, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/23/1b/ad/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:07:09', '2025-05-04 09:07:09'),
(25, 'เรย์ โฮเทล บุรีรัมย์', 'เมืองบุรีรัมย์, จังหวัดบุรีรัมย์', 4.0, 73, 14.999971, 103.093600, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/7e/3e/cf/hotel-exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:07:09', '2025-05-04 09:07:09'),
(26, 'Heaven Hotel Chachoengsao', 'เมืองฉะเชิงเทรา, จังหวัดฉะเชิงเทรา', 3.5, 4, 13.693270, 101.054280, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/03/c3/a8/heaven-hotel-chachoengsao.jpg', NULL, NULL, NULL, '2025-05-04 09:07:44', '2025-05-04 09:07:44'),
(27, 'Chai Lai Orchid', 'แม่วาง', 4.5, 775, 18.658272, 98.633750, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/b6/9a/c1/the-chai-lai-orchid-riverside.jpg', NULL, NULL, NULL, '2025-05-04 09:08:12', '2025-05-04 09:13:00'),
(28, 'Chao Phaya Thara Riverside Hotel', 'เมืองชัยนาท, จังหวัดชัยนาท', 3.8, 5, 15.166431, 100.132610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/57/c7/d1/chao-phraya-tara-river.jpg', NULL, NULL, NULL, '2025-05-04 09:08:12', '2025-05-04 09:13:00'),
(29, 'แฟนตาซี รีสอร์ท ชัยนาถ', 'เมืองชัยนาท, จังหวัดชัยนาท', 3.7, 7, NULL, NULL, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/c3/e1/0e/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:08:12', '2025-05-04 09:08:12'),
(30, 'Pestana Palace Lisboa', 'ลิสบอน, Lisbon District, Central Portugal', 4.5, 2893, 38.703747, -9.186803, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/7f/d4/79/pestana-palace-lisboa.jpg', NULL, NULL, NULL, '2025-05-04 09:08:12', '2025-05-04 09:08:12'),
(31, 'โรงเเรมฮ็อป อินน์ ชัยภูมิ', 'เมืองชัยภูมิ, จังหวัดชัยภูมิ', 3.0, 1, 15.802811, 102.029890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/22/60/40/61/hop-inn-chaiyaphum.jpg', NULL, NULL, NULL, '2025-05-04 09:14:52', '2025-05-04 09:14:52'),
(32, 'เลิศนิมิตร', 'เมืองชัยภูมิ, จังหวัดชัยภูมิ', 3.6, 24, 15.814704, 102.035805, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0a/47/1e/af/suite-room.jpg', NULL, NULL, NULL, '2025-05-04 09:14:52', '2025-05-04 09:14:52'),
(33, 'On The Rock Chaiyaphum Bed & Breakfast', 'ภูเขียว, จังหวัดชัยภูมิ', 4.4, 11, 16.034030, 102.063700, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/08/7f/48/c6/on-the-rock-chaiyaphum.jpg', NULL, NULL, NULL, '2025-05-04 09:14:52', '2025-05-04 09:14:52'),
(34, 'Pocket Park Chaiyaphum', 'เมืองชัยภูมิ, จังหวัดชัยภูมิ', 3.3, 8, 15.794400, 102.030610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/06/c9/20/21/pocket-park-chaiyaphum.jpg', NULL, NULL, NULL, '2025-05-04 09:14:52', '2025-05-04 09:14:52'),
(35, 'Chaiyaphum Park Hotel', 'เมืองชัยภูมิ, จังหวัดชัยภูมิ', 4.4, 5, 15.845465, 102.057360, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/70/6b/aa/car-parking-in-front.jpg', NULL, NULL, NULL, '2025-05-04 09:14:52', '2025-05-04 09:14:52'),
(36, 'เมโทร แซนด์ แอนด์ ซี รีสอร์ท', 'ท่าใหม่, จังหวัดจันทบุรี', 3.5, 8, 12.566869, 101.904940, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/94/e6/f8/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:15:24', '2025-05-04 09:15:24'),
(37, 'โรงแรมฮ็อป อินน์ จันทบุรี', 'เมืองจันทบุรี, จังหวัดจันทบุรี', 4.1, 36, 12.603502, 102.108830, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/c9/60/57/hop-inn-chanthaburi.jpg', NULL, NULL, NULL, '2025-05-04 09:15:24', '2025-05-04 09:15:24'),
(38, 'เจ้าหลาว คาบาน่า รีสอร์ท', 'เมืองจันทบุรี, จังหวัดจันทบุรี', 3.7, 71, 12.552533, 101.920900, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/95/e4/76/filename-dsc01543-jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:15:24', '2025-05-04 09:15:24'),
(39, 'Chanthaburi Center Hotel', 'เมืองจันทบุรี, จังหวัดจันทบุรี', 3.7, 12, 12.611948, 102.107350, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/12/3b/8d/53/chanthaburi-center-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:15:24', '2025-05-04 09:15:24'),
(40, 'อคิรา แมเนอร์ เชียงใหม่', 'เมืองเชียงใหม่', 4.9, 1761, 18.797268, 98.969410, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/21/c4/6a/rooftop-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(41, 'Meliá Chiang Mai', 'เมืองเชียงใหม่', 4.7, 281, 18.785429, 99.002860, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/24/fa/9d/19/melia-chiang-mai.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(42, 'โรงแรมเชียงใหม่ แมริออท โฮเทล', 'เมืองเชียงใหม่', 4.5, 4862, 18.784170, 98.999650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/23/2a/94/hotel-exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(43, 'Art Mai Gallery Hotel', 'เมืองเชียงใหม่', 4.7, 933, 18.799198, 98.968840, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/29/88/07/60/art-mai-gallery-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(44, 'Cross Chiang Mai Riverside Resort', 'เมืองเชียงใหม่', 4.9, 608, 18.801550, 99.005260, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/b5/9c/a2/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(45, 'The Chiang Mai Old Town', 'เมืองเชียงใหม่', 4.8, 322, 18.785896, 98.978730, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/16/3f/85/b5/the-chiang-mai-old-town.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(46, 'Away Chiang Mai Thapae Resort - A Vegan Retreat', 'Chang Moi, เมืองเชียงใหม่', 4.8, 613, 18.786390, 98.995000, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/b5/9c/a9/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(47, 'โรงแรมแชงกรีลา เชียงใหม่', 'เมืองเชียงใหม่', 4.6, 3201, 18.778337, 99.000010, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/a3/5b/d3/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:15:56', '2025-05-04 09:15:56'),
(48, 'โรงแรม เดอะ เลเจนด์ เชียงราย', 'เมืองเชียงราย, จังหวัดเชียงราย', 4.3, 1410, 19.917310, 99.840400, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2a/f6/61/f2/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:16:36', '2025-05-04 09:16:36'),
(49, 'The Heritage Chiang Rai Hotel and Convention', 'เมืองเชียงราย, จังหวัดเชียงราย', 4.4, 93, 19.880500, 99.832810, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/8f/e2/3f/the-heritage-chiang-rai.jpg', NULL, NULL, NULL, '2025-05-04 09:16:36', '2025-05-04 09:16:36'),
(50, 'เลอ เมอริเดียน เชียงราย รีสอร์ท', 'เมืองเชียงราย, จังหวัดเชียงราย', 4.6, 3008, 19.922842, 99.854004, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/82/4f/3b/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:16:36', '2025-05-04 09:16:36'),
(51, 'New Nikom Court', 'พัทยา, จังหวัดชลบุรี', 3.8, 32, 12.928277, 100.885470, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/1c/93/39/new-nikom-court.jpg', NULL, NULL, NULL, '2025-05-04 09:16:49', '2025-05-04 09:16:49'),
(52, 'The Hideaway Resort', 'พัทยา, จังหวัดชลบุรี', 3.5, 13, 12.920886, 100.862140, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/16/76/0c/90/photo2jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:16:49', '2025-05-04 09:16:49'),
(53, 'ชุมพรปาร์ครีสอร์ท', 'เมืองชุมพร, จังหวัดชุมพร', 3.0, 3, 10.493389, 99.172880, 'ยังไม่ใส่', '0', 'ยังไม่ใส่', NULL, 'https://media-cdn.tripadvisor.com/media/daodao/photo-s/04/dc/09/ce/chumphon-park-resort.jpg', '-', '-', '-', '2025-05-04 09:17:20', '2025-05-04 09:17:20'),
(54, 'โรงแรมเอเต้ ชุมพร ', 'เมืองชุมพร, จังหวัดชุมพร', 4.1, 226, 10.496121, 99.174790, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/c2/4f/28/a-te-chumphon-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:17:20', '2025-05-04 09:17:20'),
(55, 'ชุมพร คาบาน่า', 'ปะทิว, จังหวัดชุมพร', 3.2, 110, 10.557414, 99.273735, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0a/2f/4c/8d/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:17:20', '2025-05-04 09:17:20'),
(56, 'ฮ็อป อินน์ ชุมพร', 'เมืองชุมพร, จังหวัดชุมพร', 4.3, 40, 10.501714, 99.183876, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d4/38/96/hop-inn-chumphon.jpg', NULL, NULL, NULL, '2025-05-04 09:17:20', '2025-05-04 09:17:20'),
(57, 'ชลิชา รีสอร์ท', 'เมืองชุมพร, จังหวัดชุมพร', 4.0, 128, 10.494275, 99.170540, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/ea/84/f9/chalicha-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:17:20', '2025-05-04 09:17:20'),
(58, 'โรงแรมสุภัค', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 4.3, 3, 16.431074, 103.505295, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d8/d8/0e/supak-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(59, 'Chada View Resort', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 4.5, 4, 16.486780, 103.529610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/f9/da/bb/photo3jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(60, 'โรงแรมริมปาว', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 3.3, 49, 16.427141, 103.494400, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/01/b2/b5/55/deluxe-room.jpg', NULL, NULL, NULL, '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(61, 'โรงแรมร่มไทรทอง', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 4.5, 2, 16.431400, 103.505230, 'ยังไม่ใส่', '0', 'ยังไม่ใส่', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlfDdz-rg58R4nr0khSwuuTzoIPy7Nuodobg&s', '-', '-', '-', '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(62, 'Phaiboon Place Hotel', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 4.0, 32, 16.433360, 103.502710, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/06/28/c1/0f/phaiboon-place-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(63, 'ทีเค เรสซิเดนซ์', 'เมืองกาฬสินธุ์, จังหวัดกาฬสินธุ์', 3.6, 8, 16.426140, 103.521640, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/06/2f/25/a1/getlstd-property-photo.jpg', NULL, NULL, NULL, '2025-05-04 09:17:47', '2025-05-04 09:17:47'),
(64, 'ไม้ใหญ่รีสอร์ท', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 4.0, 8, 16.493109, 99.538020, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/a3/e6/bf/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(65, 'Three j guesthouse', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 4.2, 84, 16.478716, 99.535650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/02/77/a4/35/entrance-to-3j.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(66, 'ซีนิค ริเวอร์ไซด์ รีสอร์ท', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 4.1, 23, 16.491251, 99.508250, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/3c/57/bf/the-swimmingpool.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(67, 'Navarat Hotel', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 3.7, 70, 16.468798, 99.528630, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/50/9d/48/navarat-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(68, 'โซดารีสอร์ท', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 3.8, 9, 16.487550, 99.518240, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/0a/04/09/d7/photo1jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(69, 'FIG Boutique Hotel', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 3.4, 14, 16.479690, 99.545680, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/57/0f/94/fig-boutique-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(70, 'โรงแรมชากังราว ริเวอร์วิว', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 3.3, 82, 16.472954, 99.527720, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/c0/63/2d/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(71, 'เรือนไทยบ้านริมน้ำ', 'เมืองกำแพงเพชร, จังหวัดกำแพงเพชร', 4.4, 5, 16.530739, 99.494830, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/partner/bookingcom/photo-l/2e/02/f4/03/ruen-thai-ban-rim-nam.jpg', NULL, NULL, NULL, '2025-05-04 09:18:13', '2025-05-04 09:18:13'),
(72, 'ไมด้า รีสอร์ท กาญจนบุรี', 'เมืองกาญจนบุรี, จังหวัดกาญจนบุรี', 3.7, 348, 14.179244, 99.271560, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/c1/60/7d/mida-resort-kanchanaburi.jpg', NULL, NULL, NULL, '2025-05-04 09:18:28', '2025-05-04 09:18:28'),
(73, 'โรงแรมยู อินจันทรี กาญจนบุรี', 'เมืองกาญจนบุรี, จังหวัดกาญจนบุรี', 4.5, 1900, 14.044053, 99.501690, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2b/e4/56/b7/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:18:28', '2025-05-04 09:18:28'),
(74, 'เฟลิกซ์ ริเวอร์แคว รีสอร์ท กาญจนบุรี', 'เมืองกาญจนบุรี, จังหวัดกาญจนบุรี', 3.7, 880, 14.042111, 99.499810, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/54/86/af/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:18:28', '2025-05-04 09:18:28'),
(75, 'หินตกริเวอร์แคมป์', 'เมืองกาญจนบุรี, จังหวัดกาญจนบุรี', 4.2, 712, 14.353566, 98.928610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/1b/a2/85/hintok-river-camp-at.jpg', NULL, NULL, NULL, '2025-05-04 09:18:28', '2025-05-04 09:18:28'),
(76, 'Natee The Riverfront Hotel', 'เมืองกาญจนบุรี, จังหวัดกาญจนบุรี', 4.3, 203, 14.033137, 99.519120, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d8/51/df/every-room-has-a-private.jpg', NULL, NULL, NULL, '2025-05-04 09:18:28', '2025-05-04 09:18:28'),
(77, 'โรงแรมพูลแมน ขอนแก่น ราชา ออร์คิด', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 4.1, 1043, 16.429250, 102.830376, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/25/1f/f3/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(78, 'Ad Lib Khon Kaen', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 4.9, 433, 16.429998, 102.832184, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/29/88/87/af/ad-lib-khon-kaen.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(79, 'Rachawadee Khonkaen Airport Hotel', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 4.0, 100, 16.460217, 102.786385, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/ca/b4/7a/rachawadee-oasis-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(80, 'โรงแรมอวานี ขอนแก่น โฮเทล แอนด์ คอนเวนชั่น เซ็นเตอร์', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 4.5, 782, 16.436949, 102.846300, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/95/2c/45/royal-suite-living-room.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(81, 'B2 Khon Kaen Hotel', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 3.4, 49, 16.429861, 102.841530, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/4f/e7/d9/b2-hotel-khon-kaen.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(82, 'ชาดาเวอแรนด้า โฮเทล', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 4.2, 55, 16.430956, 102.830430, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/da/5f/3f/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(83, 'โรงแรมกลาเซียร์ขอนแก่น', 'เมืองขอนแก่น, จังหวัดขอนแก่น', 3.6, 155, 16.427568, 102.829110, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/f9/fb/6e/glacier-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:18:46', '2025-05-04 09:18:46'),
(84, 'โซฟิเทล กระบี่ โภคีธรา กอล์ฟ แอนด์ สปา รีสอร์ท ', 'หนองทะเล, เมืองกระบี่, จังหวัดกระบี่', 4.5, 4502, 8.063655, 98.746240, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/9e/d7/a5/other.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(85, 'บียอน กระบี่', 'หนองทะเล, เมืองกระบี่, จังหวัดกระบี่', 4.2, 2427, 8.055250, 98.751470, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/23/8e/ed/66/beyond-resort-krabi.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(86, 'ดุสิตธานี กระบี่ รีสอร์ท', 'หนองทะเล, เมืองกระบี่, จังหวัดกระบี่', 4.6, 3332, 8.053685, 98.756300, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/5f/64/1e/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(87, 'Sea Seeker Krabi Resort', 'อ่าวนาง, จังหวัดกระบี่', 4.8, 1601, 8.032158, 98.829270, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/18/12/58/fb/sea-seeker-krabi-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(88, 'Banyan Tree Krabi', 'หนองทะเล, เมืองกระบี่, จังหวัดกระบี่', 4.8, 571, 8.093006, 98.748055, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/93/5e/78/lobby.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(89, 'Venice Krabi Villa Resort', 'เมืองกระบี่, จังหวัดกระบี่', 3.9, 64, 8.037446, 98.865560, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/28/dd/d4/a2/venice-krabi-villa-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(90, 'Holiday Ao Nang Beach Resort Krabi', 'อ่าวนาง, จังหวัดกระบี่', 4.3, 3716, 8.041432, 98.814180, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/fa/af/20/holiday-inn-resort-krabi.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(91, 'ฮอลิเดย์อินน์ รีสอร์ท กระบี่อ่าวนางบีช กระบี่', 'อ่าวนาง, จังหวัดกระบี่', 4.7, 857, 8.033272, 98.826250, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/53/30/e7/view-from-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:19:02', '2025-05-04 09:19:02'),
(92, 'The Space Hotel Lampang', 'เมืองลำปาง, จังหวัดลำปาง', 4.7, 103, 18.285788, 99.485930, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/28/60/31/13/one-bedroom-suite.jpg', NULL, NULL, NULL, '2025-05-04 09:19:15', '2025-05-04 09:19:15'),
(93, 'โรงแรมลำปาง ริเวอร์ ลอดจ์', 'Chomphu, เมืองลำปาง, จังหวัดลำปาง', 3.6, 531, 18.227657, 99.426300, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2d/07/2f/d0/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:19:15', '2025-05-04 09:19:15'),
(94, 'โรงแรมลำปางเวียงทอง', 'เมืองลำปาง, จังหวัดลำปาง', 2.6, 75, 18.281643, 99.487610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/01/18/8b/35/cama.jpg', NULL, NULL, NULL, '2025-05-04 09:19:15', '2025-05-04 09:19:15'),
(95, 'HOP INN Lampang', 'เมืองลำปาง, จังหวัดลำปาง', 3.6, 40, 18.281824, 99.486180, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d4/7e/7b/hop-inn-lampang.jpg', NULL, NULL, NULL, '2025-05-04 09:19:15', '2025-05-04 09:19:15'),
(96, 'โรงแรมบี2ลำปาง', 'เมืองลำปาง, จังหวัดลำปาง', 3.3, 42, 18.279120, 99.489040, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/f0/a4/31/b2-lampang-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:19:15', '2025-05-04 09:19:15'),
(97, 'นอนลำพูน บูติกโฮเทล', 'เมืองลำพูน, จังหวัดลำพูน', 4.5, 2, 18.601322, 99.020020, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/partner/bookingcom/photo-l/2e/0a/16/1c/nornlamphun-boutique.jpg', NULL, NULL, NULL, '2025-05-04 09:19:42', '2025-05-04 09:19:42'),
(98, 'Loei Residence', 'เมืองเลย, จังหวัดเลย', 3.5, 4, 17.474640, 101.726620, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/7c/5b/be/loei-residence.jpg', NULL, NULL, NULL, '2025-05-04 09:19:54', '2025-05-04 09:19:54'),
(99, 'โรงแรมเลยพาเลซ', 'เมืองเลย, จังหวัดเลย', 3.8, 189, 17.484507, 101.734440, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/13/c1/29/b4/deluxe-king.jpg', NULL, NULL, NULL, '2025-05-04 09:19:54', '2025-05-04 09:19:54'),
(100, 'โรงแรมเลยพาวิลเลี่ยน', 'เมืองเลย, จังหวัดเลย', 3.8, 22, 17.493940, 101.715490, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/f0/a1/9d/loei-pavilion-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:19:54', '2025-05-04 09:19:54'),
(101, 'เลยวิลเลจ', 'เมืองเลย, จังหวัดเลย', 4.3, 41, 17.484322, 101.724304, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/19/e2/f4/c2/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:19:54', '2025-05-04 09:19:54'),
(102, 'โรงแรมลพบุรีอินน์', 'Tha Hin, จังหวัดลพบุรี', 2.7, 48, 14.799316, 100.648690, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/3d/b1/22/room-photo.jpg', NULL, NULL, NULL, '2025-05-04 09:20:17', '2025-05-04 09:20:17'),
(103, 'ลพบุรี อินน์', 'Tha Sala, จังหวัดลพบุรี', 3.0, 107, 14.792250, 100.680600, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/04/77/87/21/lopburi-inn-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:20:17', '2025-05-04 09:20:17'),
(104, 'Lopburi Residence Hotel', 'เมืองลพบุรี, จังหวัดลพบุรี', 3.0, 8, 14.815690, 100.649010, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/de/89/11/lopburi-residence-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:20:17', '2025-05-04 09:20:17'),
(105, 'The Tempo Lopburi', 'เมืองลพบุรี, จังหวัดลพบุรี', 3.6, 23, 14.804815, 100.672130, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/16/e0/40/37/photo3jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:20:17', '2025-05-04 09:20:17'),
(106, 'บ้าน ภูธดล', 'เมืองแม่ฮ่องสอน, จังหวัดแม่ฮ่องสอน', 3.4, 10, 19.275215, 97.966324, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/e3/19/bc/baan-phuthadol.jpg', NULL, NULL, NULL, '2025-05-04 09:20:48', '2025-05-04 09:20:48'),
(107, 'Huainamrin Resort Maehongson - The Creek', 'เมืองแม่ฮ่องสอน, จังหวัดแม่ฮ่องสอน', 4.5, 2, 19.298470, 97.976150, 'ยังไม่ใส่', '0', 'ยังไม่ใส่', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwXTRM5ag_jgzDq8gSu02UMjpSdf5tXACJzw&s', '-', '-', '-', '2025-05-04 09:20:48', '2025-05-04 09:20:48'),
(108, 'B2 Mae Hong Son Premier Hotel', 'เมืองแม่ฮ่องสอน, จังหวัดแม่ฮ่องสอน', 3.6, 32, 19.304300, 97.960650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/de/62/d7/b2-mae-hong-son-premier.jpg', NULL, NULL, NULL, '2025-05-04 09:20:48', '2025-05-04 09:20:48'),
(109, 'โรงแรม ดิ อิมพีเรียล แม่ฮ่องสอน', 'เมืองแม่ฮ่องสอน, จังหวัดแม่ฮ่องสอน', 3.5, 248, 19.279915, 97.958170, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/1d/75/2c/exterior-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:20:48', '2025-05-04 09:20:48'),
(110, 'ปิยะ เกสท์เฮ้าส์', 'เมืองแม่ฮ่องสอน, จังหวัดแม่ฮ่องสอน', 4.6, 238, 19.298567, 97.966680, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/04/c7/3a/bb/piya-guesthouse.jpg', NULL, NULL, NULL, '2025-05-04 09:20:48', '2025-05-04 09:20:48'),
(111, 'โรงแรมตักศิลา', 'เมืองมหาสารคาม, Maha Sarakham Province', 3.4, 64, 16.178818, 103.304610, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/10/5c/bf/25/img-20170821-131607-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:21:01', '2025-05-04 09:21:01'),
(112, 'Landmark Maha Sarakham', 'เมืองมหาสารคาม, Maha Sarakham Province', 3.0, 4, 16.186830, 103.304740, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/29/12/f9/eb/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:21:01', '2025-05-04 09:21:01'),
(113, 'เดอบัว มหาสารคาม', 'เมืองมหาสารคาม, Maha Sarakham Province', 4.2, 5, 16.190823, 103.286450, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/09/dd/c6/45/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:21:01', '2025-05-04 09:21:01'),
(114, 'Siam Tarapalace Hotel', 'เมืองมหาสารคาม, Maha Sarakham Province', 4.6, 7, 16.213320, 103.281850, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/f5/c6/a3/siam-tarapalace-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:21:01', '2025-05-04 09:21:01'),
(115, 'โรงแรมริเวอร์ฟร้อนท์ มุกดาหาร', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 4.1, 142, 16.539207, 104.732340, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/9f/e4/06/riverfront-mukdahan.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(116, 'โรงแรมริเวอร์ซิตี้', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 3.1, 55, 16.535637, 104.730484, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/29/10/94/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(117, 'HOP INN Mukdahan', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 4.0, 17, 16.543247, 104.711780, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d5/fa/a5/hop-inn-mukdahan.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(118, 'Hotel de Ladda', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 4.2, 33, 16.534176, 104.734110, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/f9/23/27/hotel-de-ladda.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(119, 'พลอยพาเลซ', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 3.9, 93, 16.540125, 104.723170, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/03/a0/59/db/ploy-palace-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(120, 'โรงแรมเวียงโขง', 'เมืองมุกดาหาร, จังหวัดมุกดาหาร', 4.5, 17, 16.524668, 104.738500, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/9c/9a/38/3.jpg', NULL, NULL, NULL, '2025-05-04 09:21:17', '2025-05-04 09:21:17'),
(121, 'ภูมนตรา รีสอร์ท Nakhon Nayok', 'เมืองนครนายก, จังหวัดนครนายก', 3.8, 6, 14.299837, 101.306206, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/5d/d5/6c/outdoor-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:21:35', '2025-05-04 09:21:35'),
(122, 'อิงธารรีสอร์ท', 'เมืองนครนายก, จังหวัดนครนายก', 3.4, 18, 14.307487, 101.308130, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/8f/fc/9d/photo5jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:21:35', '2025-05-04 09:21:35'),
(123, 'ภูสักธาร รีสอร์ท', 'เมืองนครนายก, จังหวัดนครนายก', 3.8, 15, 14.302038, 101.310770, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/94/d5/a9/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:21:35', '2025-05-04 09:21:35'),
(124, 'Reindeer Park Resort Nakhon Nayok', 'เมืองนครนายก, จังหวัดนครนายก', 4.6, 7, 14.311716, 101.210365, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/e9/15/a8/view-from-the-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:21:35', '2025-05-04 09:21:35'),
(125, 'โรวแรมไมด้า ทวารวดี แกรนด์', 'เมืองนครปฐม, จังหวัดนครปฐม', 3.8, 50, 13.807192, 100.058495, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/c1/ae/6c/mida-dhavaravati-grande.jpg', NULL, NULL, NULL, '2025-05-04 09:21:53', '2025-05-04 09:21:53'),
(126, 'โรงแรมเซน นครปฐม', 'เมืองนครปฐม, จังหวัดนครปฐม', 3.8, 34, 13.811951, 100.054520, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/c0/ff/26/xen-hotel-nakhon-pathom.jpg', NULL, NULL, NULL, '2025-05-04 09:21:53', '2025-05-04 09:21:53'),
(127, 'Hop Inn Nakhon Pathom', 'เมืองนครปฐม, จังหวัดนครปฐม', 5.0, 1, 13.811888, 100.055050, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1a/45/ad/b0/getlstd-property-photo.jpg', NULL, NULL, NULL, '2025-05-04 09:21:53', '2025-05-04 09:21:53'),
(128, 'โรงแรมฟอร์จูน ริเวอร์วิว นครพนม', 'เมืองนครพนม, จังหวัดนครพนม', 3.4, 143, 17.382500, 104.794170, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2d/bc/56/10/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:22:25', '2025-05-04 09:22:25'),
(129, 'Blu Hotel Nakhon Phanom', 'เมืองนครพนม, จังหวัดนครพนม', 3.9, 9, 17.432308, 104.762970, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/13/0c/28/06/blu-hotel-nakhon-phanom.jpg', NULL, NULL, NULL, '2025-05-04 09:22:25', '2025-05-04 09:22:25'),
(130, 'โรงแรม เดอะ ริเวอร์', 'เมืองนครพนม, จังหวัดนครพนม', 4.3, 139, 17.378122, 104.794075, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/22/19/2c/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:22:25', '2025-05-04 09:22:25'),
(131, 'HOP INN Nakhon Ratchasima', 'เมืองนครราชสีมา, จังหวัดนครราชสีมา (โคราช)', 3.4, 20, 14.959590, 102.060650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/02/33/hop-inn-nakhon-ratchasima.jpg', NULL, NULL, NULL, '2025-05-04 09:22:42', '2025-05-04 09:22:42'),
(132, 'โรงแรม แคนทารี โคราช', 'เมืองนครราชสีมา, จังหวัดนครราชสีมา (โคราช)', 4.5, 135, 14.974870, 102.064670, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/b9/33/1f/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:22:42', '2025-05-04 09:22:42'),
(133, 'Hop Inn Nakhon Sawan', 'เมืองนครสวรรค์, จังหวัดนครสวรรค์', 3.9, 10, 15.699653, 100.120544, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/06/c2/hop-inn-nakhon-sawan.jpg', NULL, NULL, NULL, '2025-05-04 09:22:59', '2025-05-04 09:22:59'),
(134, 'B2 Nakhon Sawan Premier Hotel', 'เมืองนครสวรรค์, จังหวัดนครสวรรค์', 3.9, 18, 15.704812, 100.135980, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/ae/cf/1d/img-20190525-184129-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:23:00', '2025-05-04 09:23:00'),
(135, '42C The Chic Hotel', 'เมืองนครสวรรค์, จังหวัดนครสวรรค์', 3.9, 87, 15.720088, 100.117300, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/17/58/0f/ee/42c-the-chic-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:23:00', '2025-05-04 09:23:00'),
(136, 'Grand Fortune Hotel Nakhon Si Thammarat', 'เมืองนครศรีธรรมราช, จังหวัดนครศรีธรรมราช', 4.3, 36, 8.396870, 99.976456, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/16/ad/ac/88/grand-fortune-hotel-nakhon.jpg', NULL, NULL, NULL, '2025-05-04 09:23:16', '2025-05-04 09:23:16'),
(137, 'HOP INN Nakhon Si Thammarat', 'เมืองนครศรีธรรมราช, จังหวัดนครศรีธรรมราช', 4.1, 18, 8.442840, 99.970430, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/0b/79/hop-inn-nakhon-si-thammarat.jpg', NULL, NULL, NULL, '2025-05-04 09:23:16', '2025-05-04 09:23:16'),
(138, 'Nan Boutique Resort', 'เมืองน่าน, จังหวัดน่าน', 4.8, 12, 18.802029, 100.798890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/75/c9/47/20171205-150843-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:23:32', '2025-05-04 09:23:32'),
(139, 'โรงแรมอิมพีเรียล นราธิวาส', 'เมืองนราธิวาส, จังหวัดนราธิวาส', 3.0, 28, 6.433472, 101.821526, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/19/23/54/e1/property.jpg', NULL, NULL, NULL, '2025-05-04 09:24:16', '2025-05-04 09:24:16'),
(140, 'โรงแรมตันหยง นราธิวาส', 'เมืองนราธิวาส, จังหวัดนราธิวาส', 4.1, 14, 6.436840, 101.824250, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/08/42/05/02/tan-yon-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:24:16', '2025-05-04 09:24:16'),
(141, 'Genting Hotel', 'เมืองนราธิวาส, จังหวัดนราธิวาส', 2.6, 17, 6.024780, 101.962620, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/47/fe/4e/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:24:16', '2025-05-04 09:24:16'),
(142, 'Marina Hotel', 'เมืองนราธิวาส, จังหวัดนราธิวาส', 2.0, 2, NULL, NULL, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/03/b6/ce/e3/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:24:16', '2025-05-04 09:24:16'),
(143, 'ฮ็อป อินน์ หนองคาย', 'Nai Mueang, จังหวัดหนองคาย', 3.8, 44, 17.878477, 102.743614, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/0d/a0/hop-inn-nong-khai.jpg', NULL, NULL, NULL, '2025-05-04 09:24:51', '2025-05-04 09:24:51'),
(144, 'วานา เวลเนส รีสอร์ท', 'เมืองหนองคาย, จังหวัดหนองคาย', 4.0, 46, 17.899899, 102.776470, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/e5/4c/8c/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:24:51', '2025-05-04 09:24:51'),
(145, 'พาร์ค แอนด์ พูลรีสอร์ท', 'เมืองหนองคาย, จังหวัดหนองคาย', 4.3, 163, 17.866707, 102.732260, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/14/42/09/47/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:24:51', '2025-05-04 09:24:51'),
(146, 'หนองคาย รีสอร์ท', 'เมืองหนองคาย, จังหวัดหนองคาย', 4.1, 63, 17.866160, 102.731780, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/01/d2/39/aa/the-vip-room.jpg', NULL, NULL, NULL, '2025-05-04 09:24:51', '2025-05-04 09:24:51'),
(147, 'Livotel Express Hotel Bang Kruai Nonthaburi', 'บางกรวย, จังหวัดนนทบุรี', 4.0, 1, 13.810873, 100.508000, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/1b/34/9d/af/livotel-express-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:25:02', '2025-05-04 09:25:02'),
(148, 'Sasi Nonthaburi Hotel', 'เมืองนนทบุรี, จังหวัดนนทบุรี', NULL, 0, 13.958699, 100.426750, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/11/e5/00/01/sasi-nonthaburi-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:25:02', '2025-05-04 09:25:02'),
(149, 'Dusit Thani Laguna Singapore', 'สิงคโปร์', 4.7, 1168, 1.323391, 103.962720, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1d/05/87/73/prestige-verandah-suite.jpg', NULL, NULL, NULL, '2025-05-04 09:25:16', '2025-05-04 09:35:26'),
(150, 'โรงแรม ซี.เอส. ปัตตานี', 'Rusamilae, จังหวัดปัตตานี', 4.4, 50, 6.864000, 101.233650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/64/b0/ca/cs-pattani-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:26:01', '2025-05-04 09:26:01'),
(151, 'Park Intown Hotel Pattani', 'Rusamilae, จังหวัดปัตตานี', NULL, 0, 6.859587, 101.230896, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 09:26:01', '2025-05-04 09:26:01'),
(152, 'Southern View Hotel Pattani', 'Rusamilae, จังหวัดปัตตานี', 3.5, 2, 6.854997, 101.217010, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/14/18/ab/photo1jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:26:01', '2025-05-04 09:26:01'),
(153, 'River Living Place', 'เมืองปัตตานี, จังหวัดปัตตานี', 4.7, 3, 6.868560, 101.252320, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1a/b5/d2/98/river-living-place.jpg', NULL, NULL, NULL, '2025-05-04 09:26:01', '2025-05-04 09:26:01'),
(154, 'เกาะยาวใหญ่ วิลเลจ', 'เกาะยาวใหญ่, จังหวัดพังงา', 4.4, 1335, 8.031662, 98.601970, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/99/d2/6e/bird-eye-view.jpg', NULL, NULL, NULL, '2025-05-04 09:26:16', '2025-05-04 09:26:16'),
(155, 'Sri Pakpra Boutique Resort Phatthalung', 'ควนขนุน, จังหวัดพัทลุง', 4.3, 76, 7.730032, 100.146540, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/16/b6/3b/d4/sripakpra-boutique-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:26:32', '2025-05-04 09:26:32'),
(156, 'โรงแรมเดอะ เซ็นทริส พัทลุง', 'เมืองพัทลุง, จังหวัดพัทลุง', 4.1, 52, 7.620149, 100.083984, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/3c/df/23/the-centris-hotel-phatthalung.jpg', NULL, NULL, NULL, '2025-05-04 09:26:33', '2025-05-04 09:26:33'),
(157, 'Dusit Princess Phatthalung', 'เมืองพัทลุง, จังหวัดพัทลุง', 4.8, 43, 7.604067, 100.066055, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2a/e8/6c/10/lobby.jpg', NULL, NULL, NULL, '2025-05-04 09:26:33', '2025-05-04 09:26:33'),
(158, 'โรงแรม ซิตี้ปาร์ค', 'เมืองพัทลุง, จังหวัดพัทลุง', 4.0, 20, 7.616000, 100.087690, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/56/ca/9a/city-park-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:26:33', '2025-05-04 09:26:33'),
(159, 'M2 Hotel', 'เมืองพะเยา, จังหวัดพะเยา', 4.3, 38, 19.173634, 99.901085, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/12/3e/9f/29/m2-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:43'),
(160, 'Magic Mountain Cafe', 'Pha Chang Noi, จังหวัดพะเยา', 4.5, 4, 19.355755, 100.511140, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/a8/8a/5d/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:49'),
(161, 'Dee Hotel Phayao', 'เมืองพะเยา, จังหวัดพะเยา', 4.0, 1, 19.186886, 99.891426, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:43'),
(162, 'Win Hotel Phayao', 'เมืองพะเยา, จังหวัดพะเยา', 3.0, 29, 19.170101, 99.899826, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/e3/e6/28/photo1jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:43'),
(163, 'Sabuy Best Hotel Phayao', 'เมืองพะเยา, จังหวัดพะเยา', 4.2, 10, 19.197610, 99.874100, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/13/78/e7/3d/sabuy-residence-phayao.jpg', NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:49'),
(164, 'โรงแรมพะเยาเกทเวย์', 'เมืองพะเยา, จังหวัดพะเยา', 3.1, 39, 19.173166, 99.898940, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/e4/2c/9a/photo5jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:26:43', '2025-05-04 09:26:49'),
(165, 'A Day in Phetchabun', 'เมืองเพชรบูรณ์, จังหวัดเพชรบูรณ์', 4.6, 21, 16.412800, 101.163720, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/10/c6/1e/ec/20170922-175331-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:26:56', '2025-05-04 09:26:56'),
(166, 'ลิวิสต์รีสอร์ทเพชรบูรณ์', 'เมืองเพชรบูรณ์, จังหวัดเพชรบูรณ์', 4.2, 10, 16.417961, 101.143555, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1d/7c/70/26/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:26:56', '2025-05-04 09:26:56'),
(167, 'HOP INN Phetchabun', 'เมืองเพชรบูรณ์, จังหวัดเพชรบูรณ์', 4.5, 2, 16.422960, 101.153350, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/23/19/9f/55/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:26:56', '2025-05-04 09:26:56'),
(168, 'เดอะบลูสกาย รีสอร์ท เขาค้อ', 'แคมป์สน, จังหวัดเพชรบูรณ์', 4.2, 160, 16.779457, 101.019860, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/14/f1/2e/3c/beautiful-garden.jpg', NULL, NULL, NULL, '2025-05-04 09:26:56', '2025-05-04 09:26:56'),
(169, 'Bestiny Hotel & Restaurant Phetchabun', 'เมืองเพชรบูรณ์, จังหวัดเพชรบูรณ์', 3.9, 15, 16.088680, 100.974560, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/09/14/00/7c/bestiny-hotel-restaurant.jpg', NULL, NULL, NULL, '2025-05-04 09:26:56', '2025-05-04 09:26:56'),
(170, 'โรงแรมจันทิมาบูติก', 'Don Khun Huai, จังหวัดเพชรบุรี', 4.2, 9, 12.871696, 99.916214, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/07/71/e5/0c/piscine.jpg', NULL, NULL, NULL, '2025-05-04 09:27:04', '2025-05-04 09:27:04'),
(171, 'โรงแรมเดอะรอยัลไดมอนด์ เพชรบุรี', 'เมืองเพชรบุรี, จังหวัดเพชรบุรี', 3.0, 40, 13.111265, 99.932890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/01/c5/73/ad/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:27:04', '2025-05-04 09:27:12'),
(172, 'โรงแรมดุสิตธานี หัวหิน', 'ชะอำ, จังหวัดเพชรบุรี', 4.6, 3424, 12.657903, 99.956040, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/25/25/81/f1/dusit-thani-hua-hin.jpg', NULL, NULL, NULL, '2025-05-04 09:27:04', '2025-05-04 09:27:12'),
(173, 'The Nest Hotel Phichit', 'เมืองพิจิตร, จังหวัดพิจิตร', 4.6, 8, 16.432398, 100.348870, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/12/32/e8/a6/the-nest-hotel-phichit.jpg', NULL, NULL, NULL, '2025-05-04 09:27:20', '2025-05-04 09:27:20'),
(174, 'โรงแรมพิจิตรพลาซ่า', 'เมืองพิจิตร, จังหวัดพิจิตร', 3.2, 24, 16.510270, 100.331970, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/05/5a/0d/cc/phichit-plaza-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:27:20', '2025-05-04 09:27:20'),
(175, 'ฟ้าหลวง เรสซิเด้นซ์', 'เมืองพิจิตร, จังหวัดพิจิตร', 4.7, 7, 16.430758, 100.351135, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/5d/d4/31/photo8jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:27:20', '2025-05-04 09:27:20'),
(176, 'B2 Phitsanulok Premier Hotel', 'Ban Khlong, จังหวัดพิษณุโลก', 2.8, 6, 16.813887, 100.236244, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1a/c2/71/46/img-25630130-144601-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:27:43', '2025-05-04 09:27:43'),
(177, 'The Imperial Hotel and Convention Centre Phitsanulok', 'เมืองพิษณุโลก, จังหวัดพิษณุโลก', 3.2, 345, 16.824356, 100.287670, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/19/33/2f/a8/pool.jpg', NULL, NULL, NULL, '2025-05-04 09:27:43', '2025-05-04 09:27:43'),
(178, 'โรงแรม ท็อปแลนด์', 'เมืองพิษณุโลก, จังหวัดพิษณุโลก', 3.2, 777, 16.821863, 100.264790, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0d/f6/73/43/un-hotel-elegante-con.jpg', NULL, NULL, NULL, '2025-05-04 09:27:43', '2025-05-04 09:27:43'),
(179, 'พีวัน เฮ้าส์', 'เมืองพิษณุโลก, จังหวัดพิษณุโลก', 3.9, 76, 16.820139, 100.269730, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/40/47/de/photo8jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:27:43', '2025-05-04 09:27:43'),
(180, 'พิษณุโลกออร์คิด โฮเต็ล', 'เมืองพิษณุโลก, จังหวัดพิษณุโลก', 4.3, 11, 16.844040, 100.266890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/4e/78/68/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:27:43', '2025-05-04 09:27:43'),
(181, 'Silp Pa Phra Nakhon Si Ayutthaya', 'เมืองพระนครศรีอยุธยา, จังหวัดพระนครศรีอยุธยา', 4.5, 87, 14.352310, 100.574570, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/6d/6a/48/silp-pa-phra-nakhon-si.jpg', NULL, NULL, NULL, '2025-05-04 09:27:59', '2025-05-04 09:27:59'),
(182, 'Centara Life Hotel Bangkok Phra Nakhon', 'กรุงเทพมหานคร (กทม.)', 4.6, 337, 13.761696, 100.504330, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/04/e7/d1/01-superior-1.jpg', NULL, NULL, NULL, '2025-05-04 09:27:59', '2025-05-04 09:27:59'),
(183, 'Hug Inn Phrae', 'เมืองแพร่, จังหวัดแพร่', 4.3, 24, 18.135600, 100.141130, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/9b/7e/72/hug-inn-phrae.jpg', NULL, NULL, NULL, '2025-05-04 09:28:26', '2025-05-04 09:28:26'),
(184, 'Phoomthai Garden Hotel Phrae', 'Nai Wiang, จังหวัดแพร่', 3.6, 131, 18.134310, 100.142624, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/01/0c/f7/40/a-view-visitor-to-my.jpg', NULL, NULL, NULL, '2025-05-04 09:28:26', '2025-05-04 09:28:26'),
(185, 'B2 Phrae Boutique & Budget Hotel', 'เมืองแพร่, จังหวัดแพร่', 2.7, 9, 18.127480, 100.137740, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1a/e2/20/b4/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:28:26', '2025-05-04 09:28:26'),
(186, 'โรงแรมแพร่นครา', 'Nai Wiang, จังหวัดแพร่', 3.0, 24, 18.136460, 100.144066, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/80/d5/5f/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:28:26', '2025-05-04 09:28:26'),
(187, 'Taris Art Hotel Phrae', 'เมืองแพร่, จังหวัดแพร่', 3.3, 15, 18.140390, 100.142730, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/12/3e/d8/2d/taris-art-hotel-phrae.jpg', NULL, NULL, NULL, '2025-05-04 09:28:26', '2025-05-04 09:28:26'),
(188, 'อินเตอร์คอนติเนนตัล ภูเก็ต รีสอร์ท', 'กมลา, กะทู้, จังหวัดภูเก็ต', 4.8, 2117, 7.962113, 98.284390, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/9a/ba/39/beach-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34');
INSERT INTO `hotels` (`id`, `name`, `location_string`, `rating`, `num_reviews`, `latitude`, `longitude`, `price_Single_Bed`, `price_Twin_Bed`, `price_King_Size`, `star`, `photo_url`, `Service1`, `Service2`, `Service3`, `created_at`, `updated_at`) VALUES
(189, 'Angsana Laguna Phuket', 'เชิงทะเล , ถลาง, จังหวัดภูเก็ต', 4.6, 5544, 8.005411, 98.297480, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/21/16/2c/angsana-laguna-phuket.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34'),
(190, 'อมารี ภูเก็ต', 'ป่าตอง, กะทู้, จังหวัดภูเก็ต', 4.7, 10688, 7.886679, 98.285690, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/d5/0e/ae/amari-phuket-samutr-bar.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34'),
(191, 'โอโซ่ ภูเก็ต', 'หาดกะตะ, กะรน, จังหวัดภูเก็ต', 4.7, 894, 7.825053, 98.296980, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/47/c8/6e/ozo-phuket-swimming-pools.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34'),
(192, 'Grand Mercure Phuket Patong', 'ป่าตอง, กะทู้, จังหวัดภูเก็ต', 4.6, 3674, 7.888039, 98.296555, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/b2/dd/ad/exterior-view.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34'),
(193, 'DoubleTree by Hilton Phuket Banthai Resort', 'ป่าตอง, กะทู้, จังหวัดภูเก็ต', 4.4, 4387, 7.890766, 98.294740, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/5b/69/f0/pool.jpg', NULL, NULL, NULL, '2025-05-04 09:28:34', '2025-05-04 09:28:34'),
(194, 'Poon Suk Resort Prachinburi', 'นาดี, จังหวัดปราจีนบุรี', NULL, 0, 14.127755, 101.832054, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/partner/bookingcom/photo-l/2e/13/ef/f3/poon-suk-resort-prach.jpg', NULL, NULL, NULL, '2025-05-04 09:28:42', '2025-05-04 09:28:42'),
(195, 'หัวหิน แมริออท รีสอร์ท แอนด์ สปา', 'หัวหิน, จังหวัดประจวบคีรีขันธ์', 4.8, 3768, 12.561089, 99.960720, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/a3/5c/c1/outdoor-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:28:53', '2025-05-04 09:28:53'),
(196, 'เซ็นทารา แกรนด์ รีสอร์ท แอนด์ วิลล่า หัวหิน ', 'หัวหิน, จังหวัดประจวบคีรีขันธ์', 4.7, 5410, 12.568428, 99.961950, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/01/bf/d3/exterior-1.jpg', NULL, NULL, NULL, '2025-05-04 09:28:53', '2025-05-04 09:28:53'),
(197, 'โรงแรมไฮแอท รีเจนซี่ หัวหิน', 'Nong Kae, หัวหิน, จังหวัดประจวบคีรีขันธ์', 4.6, 4293, 12.536897, 99.967710, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/ee/43/75/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:28:53', '2025-05-04 09:28:53'),
(198, 'ฮิลตัน หัวหิน รีสอร์ท แอนด์ สปา', 'หัวหิน, จังหวัดประจวบคีรีขันธ์', 4.1, 3768, 12.570934, 99.961080, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/86/0b/06/pool.jpg', NULL, NULL, NULL, '2025-05-04 09:28:53', '2025-05-04 09:28:53'),
(199, 'Deeland Bungalows', 'เกาะพยาม, จังหวัดระนอง', 3.3, 6, NULL, NULL, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/60/d2/8d/beach-front-bungalow.jpg', NULL, NULL, NULL, '2025-05-04 09:29:05', '2025-05-04 09:29:05'),
(200, 'เดอะ บี ระนอง เทรนด์ โฮเต็ล', 'เมืองระนอง, จังหวัดระนอง', 3.5, 99, 9.965100, 98.633440, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/04/5c/3a/25/the-b-ranong-trend-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:29:05', '2025-05-04 09:29:05'),
(201, 'Farmhouse Hotel Ranong', 'เขานิเวศน์, เมืองระนอง, จังหวัดระนอง', 4.0, 93, 9.967224, 98.632675, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0a/73/d1/7e/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:29:05', '2025-05-04 09:29:05'),
(202, 'โรงแรมทินิดี ระนอง', 'เมืองระนอง, จังหวัดระนอง', 3.4, 262, 9.962766, 98.628830, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/99/a3/3c/tinidee-hotel-ranong.jpg', NULL, NULL, NULL, '2025-05-04 09:29:05', '2025-05-04 09:29:05'),
(203, 'Wasana Resort', 'บ้านบางเบน, จังหวัดระนอง', 4.4, 60, 9.603980, 98.472520, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/c0/fa/90/bufalo-eiland.jpg', NULL, NULL, NULL, '2025-05-04 09:29:05', '2025-05-04 09:29:05'),
(204, 'Inlaya Ratchaburi', 'เมืองราชบุรี, จังหวัดราชบุรี', 4.2, 20, 13.575325, 99.738050, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/10/66/8a/af/inlaya-ratchaburi.jpg', NULL, NULL, NULL, '2025-05-04 09:29:15', '2025-05-04 09:29:15'),
(205, 'โรงแรม ณ เวลา ราชบุรี', 'เมืองราชบุรี, จังหวัดราชบุรี', 4.3, 38, 13.510806, 99.798950, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/18/c6/6c/55/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:29:15', '2025-05-04 09:29:15'),
(206, 'Mercure Rayong Lomtalay Villas & Resort', 'Kram, แกลง, จังหวัดระยอง', 4.2, 67, 12.643960, 101.636660, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/2a/24/fa/exterior.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(207, 'Holiday Inn & Suites Rayong City Centre By Ihg', 'เมืองระยอง, จังหวัดระยอง', 4.5, 207, 12.683235, 101.249580, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/9a/ea/27/welcome-to-holiday-inn.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(208, 'Plaai Prime Hotel Rayong', 'เมืองระยอง, จังหวัดระยอง', 4.4, 78, 12.683536, 101.250910, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/89/9b/c2/plaai-prime-hotel-rayong.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(209, 'ระยอง แมริออท รีสอร์ท แอนด์ สปา', 'ชากพง, แกลง, จังหวัดระยอง', 4.4, 1388, 12.629070, 101.554910, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/d5/66/60/raindance-kids-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(210, 'เซ็นทาราคิวรีสอร์ท ระยอง', 'แกลง, จังหวัดระยอง', 4.1, 564, 12.645310, 101.642850, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/03/83/b6/swimming-pool-6.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(211, 'Aksorn Rayong, The Vitality Collection', 'แกลง, จังหวัดระยอง', 4.3, 45, 12.651747, 101.572280, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/14/43/56/c6/deluxe-pool-access-room.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(212, 'โนโวเทล ระยอง ริมแพ รีสอร์ท', 'แกลง, จังหวัดระยอง', 3.9, 1028, 12.631256, 101.542260, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/25/1c/ea/guest-room.jpg', NULL, NULL, NULL, '2025-05-04 09:29:35', '2025-05-04 09:29:35'),
(213, 'HOP INN Roi Et', 'เมืองร้อยเอ็ด, จังหวัดร้อยเอ็ด', 4.0, 21, 16.067000, 103.660640, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/17/6d/hop-inn-roi-et.jpg', NULL, NULL, NULL, '2025-05-04 09:29:49', '2025-05-04 09:29:49'),
(214, 'Le Roi Floating Huts & Eco Rooms', 'Plas, Tehri Garhwal District, Uttarakhand', 4.8, 620, 30.431442, 78.428246, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/21/e5/e1/6d/floating-huts.jpg', NULL, NULL, NULL, '2025-05-04 09:29:49', '2025-05-04 09:29:49'),
(215, 'โรงแรม เพชรรัชต์การ์เด้น', 'เมืองร้อยเอ็ด, จังหวัดร้อยเอ็ด', 2.9, 64, 16.068281, 103.653880, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/01/dd/ef/e3/une-tres-grande-piscine.jpg', NULL, NULL, NULL, '2025-05-04 09:29:49', '2025-05-04 09:29:49'),
(216, 'Le Roi Digha', 'Digha, East Midnapore District, เบงกอลตะวันตก', 4.5, 969, 21.623182, 87.509020, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/19/62/dd/19/hotel-facade.jpg', NULL, NULL, NULL, '2025-05-04 09:29:49', '2025-05-04 09:29:49'),
(217, 'Le Roi', 'Dhikuli, Jim Corbett National Park, Nainital District, Uttarakhand', 4.3, 573, 29.458443, 79.145060, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/06/a4/72/39/le-roi.jpg', NULL, NULL, NULL, '2025-05-04 09:29:49', '2025-05-04 09:29:49'),
(218, 'HOP INN Sa Kaeo', 'เมืองสระแก้ว, จังหวัดสระแก้ว', 4.2, 25, 13.809052, 102.076050, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/1a/bd/hop-inn-sa-kaeo.jpg', NULL, NULL, NULL, '2025-05-04 09:30:08', '2025-05-04 09:30:08'),
(219, 'Sa-I-Mika Resort', 'Sohra, East Khasi Hills District, Meghalaya', 4.0, 245, 25.286713, 91.704340, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/b9/df/8e/getlstd-property-photo.jpg', NULL, NULL, NULL, '2025-05-04 09:30:08', '2025-05-04 09:32:20'),
(220, 'HOP INN Sakon Nakhon', 'เมืองสกลนคร, จังหวัดสกลนคร', 3.7, 19, 17.165316, 104.138540, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d6/23/59/hop-inn-sakon-nakhon.jpg', NULL, NULL, NULL, '2025-05-04 09:30:22', '2025-05-04 09:30:22'),
(221, 'Miracle Transit Hotel', 'เมืองสมุทรปราการ, จังหวัดสมุทรปราการ', 3.1, 108, 13.691106, 100.751680, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/11/0a/ae/08/view-from-the-room.jpg', NULL, NULL, NULL, '2025-05-04 09:30:38', '2025-05-04 09:30:38'),
(222, 'เรือนชายน้ำ รีสอร์ท สมุทรสาคร', 'เมืองสมุทรสาคร, จังหวัดสมุทรสาคร', 4.0, 1, NULL, NULL, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/ad/59/08/20200730-173138-largejpg.jpg', NULL, NULL, NULL, '2025-05-04 09:30:54', '2025-05-04 09:30:54'),
(223, 'Finland Resort Inn', 'เมืองสมุทรสาคร, จังหวัดสมุทรสาคร', 4.0, 1, 13.520043, 100.169780, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/79/94/ff/img-20200630-094713-453.jpg', NULL, NULL, NULL, '2025-05-04 09:30:54', '2025-05-04 09:30:54'),
(224, 'Saraburi Inn Hotel', 'Saraburi, จังหวัดสระบุรี', 2.9, 26, 14.548870, 100.962300, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/fa/11/e6/saraburi-inn-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:31:36', '2025-05-04 09:31:36'),
(225, 'ศูภาลัย ป่าสัก รีสอร์ท แอนด์ สปา', 'Saraburi, จังหวัดสระบุรี', 3.7, 25, 14.691421, 101.048460, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/d1/68/df/supalai-pasak-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:31:36', '2025-05-04 09:31:36'),
(226, 'Ten Moons Lipe Resort', 'เกาะหลีเป๊ะ, จังหวัดสตูล', 4.8, 1146, 6.484095, 99.310710, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/5b/90/2a/ten-moons-lipe-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:31:43', '2025-05-04 09:31:43'),
(227, 'ไอดีลลิค คอนเซปต์ รีสอร์ท', 'เกาะหลีเป๊ะ, จังหวัดสตูล', 4.4, 1229, 6.484965, 99.310326, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/e7/a8/6b/idyllic-concept-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:31:43', '2025-05-04 09:31:43'),
(228, 'เซเรนดิพิตี้ บีช รีสอร์ท', 'เกาะหลีเป๊ะ, จังหวัดสตูล', 4.7, 1141, 6.483454, 99.310486, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/cf/84/da/serendipity-beach-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:31:43', '2025-05-04 09:31:43'),
(229, 'Tolani Resort Kui Buri', 'Ao Noi, จังหวัดประจวบคีรีขันธ์', 4.3, 390, 11.918926, 99.821680, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/27/22/81/2a/tolani-resort-kui-buri.jpg', NULL, NULL, NULL, '2025-05-04 09:31:52', '2025-05-04 09:31:52'),
(230, 'โรงแรมบีพี สมิหลา บีช', 'เมืองสงขลา, จังหวัดสงขลา', 3.3, 154, 7.213878, 100.596275, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/02/10/7c/ee/the-poolside.jpg', NULL, NULL, NULL, '2025-05-04 09:32:32', '2025-05-04 09:32:32'),
(231, 'เลอชาร์ม สุโขทัย ฮีสทอริคอล ปาร์ค รีสอร์ท', 'เมืองสุโขทัย, จังหวัดสุโขทัย', 3.9, 478, 17.011730, 99.714966, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/85/3c/d1/le-charme-sukhothai-historical.jpg', NULL, NULL, NULL, '2025-05-04 09:32:41', '2025-05-04 09:32:41'),
(232, 'เลเจนด้า สุโขทัย', 'เมืองสุโขทัย, จังหวัดสุโขทัย', 3.9, 1145, 17.018444, 99.719670, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/85/08/6c/legendha-sukhothai-thai.jpg', NULL, NULL, NULL, '2025-05-04 09:32:41', '2025-05-04 09:32:41'),
(233, 'Thai Thai Sukhothai Resort', 'เมืองสุโขทัย, จังหวัดสุโขทัย', 4.6, 1144, 17.013311, 99.716330, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/23/3b/da/41/thai-thai-sukhothai-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:32:41', '2025-05-04 09:32:41'),
(234, 'เดิมบางวิลลา', 'เมืองสุพรรณบุรี, จังหวัดสุพรรณบุรี', 4.4, 30, 14.895239, 100.083405, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/10/37/8f/92/photo3jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:32:55', '2025-05-04 09:32:55'),
(235, 'โรงแรมเดอะสุรินทร์ ภูเก็ต', 'เชิงทะเล , ถลาง, จังหวัดภูเก็ต', 4.7, 3269, 7.981185, 98.277760, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/28/0a/20/suite-deluxe-beach-suite.jpg', NULL, NULL, NULL, '2025-05-04 09:33:28', '2025-05-04 09:33:47'),
(236, 'OUTRIGGER Surin Beach Resort', 'เชิงทะเล , ถลาง, จังหวัดภูเก็ต', 4.8, 158, 7.976963, 98.280420, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/29/a4/5b/d8/outrigger-surin-beach.jpg', NULL, NULL, NULL, '2025-05-04 09:33:28', '2025-05-04 09:33:47'),
(237, 'Surin Beach Resort', 'เชิงทะเล , ถลาง, จังหวัดภูเก็ต', 3.9, 511, 7.993020, 98.296100, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0b/c3/d1/22/rooftop-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:33:28', '2025-05-04 09:33:47'),
(238, 'Vinpearl Resort & Spa Nha Trang Bay', 'ญาจาง, แคงห์ฮวา', 4.8, 3791, 12.224792, 109.237760, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/12/98/c2/d5/overview.jpg', NULL, NULL, NULL, '2025-05-04 09:34:12', '2025-05-04 09:34:12'),
(239, 'Amiana Resort Nha Trang', 'ญาจาง, แคงห์ฮวา', 4.6, 2591, 12.295223, 109.233870, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/9e/38/7f/resort-overview.jpg', NULL, NULL, NULL, '2025-05-04 09:34:12', '2025-05-04 09:34:12'),
(240, 'เชอราตันนาชัง โฮเต็ล แอนด์ สปา', 'ญาจาง, แคงห์ฮวา', 4.7, 3993, 12.246327, 109.196000, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/82/50/af/infinity-pool.jpg', NULL, NULL, NULL, '2025-05-04 09:34:12', '2025-05-04 09:34:12'),
(241, 'เซ็นทาราชานทะเลรีสอร์ทและวิลลา ตราด', 'เมืองตราด, จังหวัดตราด', 4.1, 655, 11.996802, 102.770100, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2b/fe/df/72/swimming-pool-4.jpg', NULL, NULL, NULL, '2025-05-04 09:34:33', '2025-05-04 09:34:33'),
(242, 'โซเนวา คีรี', 'เกาะกูด, จังหวัดตราด', 4.8, 892, 11.698672, 102.531170, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2f/bc/22/b0/private-cliff-reserve.jpg', NULL, NULL, NULL, '2025-05-04 09:34:33', '2025-05-04 09:34:33'),
(243, 'KC Grande Resort Koh Chang', 'เกาะช้าง, จังหวัดตราด', 4.3, 1871, 12.110309, 102.269670, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1b/36/bd/63/kc-grande-resort-spa.jpg', NULL, NULL, NULL, '2025-05-04 09:34:33', '2025-05-04 09:34:33'),
(244, 'หาดทรายขาว รีสอร์ท', 'เกาะช้าง, จังหวัดตราด', 3.3, 264, 12.116919, 102.264950, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0a/94/4b/2f/white-sand-beach-resort.jpg', NULL, NULL, NULL, '2025-05-04 09:34:33', '2025-05-04 09:34:33'),
(245, 'Tolani Resort Koh Kood', 'เกาะกูด, จังหวัดตราด', 4.0, 507, 11.638660, 102.543310, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/28/0d/6d/09/tolani-resort-koh-kood.jpg', NULL, NULL, NULL, '2025-05-04 09:34:33', '2025-05-04 09:34:33'),
(246, 'วี โฮเทล อุบลราชธานี', 'เมืองอุบลราชธานี, จังหวัดอุบลราชธานี', 4.1, 66, 15.248725, 104.842026, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/e6/4e/94/getlstd-property-photo.jpg', NULL, NULL, NULL, '2025-05-04 09:34:44', '2025-05-04 09:34:44'),
(247, 'HOP INN Ubon Ratchathani', 'เมืองอุบลราชธานี, จังหวัดอุบลราชธานี', 4.2, 19, 15.287640, 104.833790, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/15/d8/89/9b/hop-inn-ubon-ratchathani.jpg', NULL, NULL, NULL, '2025-05-04 09:34:44', '2025-05-04 09:34:44'),
(248, 'โรงแรมสุนีย์แกรนด์', 'เมืองอุบลราชธานี, จังหวัดอุบลราชธานี', 3.8, 289, 15.256361, 104.848790, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/08/48/53/5d/photo0jpg.jpg', NULL, NULL, NULL, '2025-05-04 09:34:44', '2025-05-04 09:34:44'),
(249, 'บลูมูล ริเวอร์ไซด์ รีสอร์ต อุบลราชธานี', 'พิบูลมังสาหาร, จังหวัดอุบลราชธานี', 3.9, 17, 15.292610, 105.346410, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/2f/c9/29/modern-cottage.jpg', NULL, NULL, NULL, '2025-05-04 09:34:44', '2025-05-04 09:34:44'),
(250, 'Vela Dhi Udon Thani', 'เมืองอุดรธานี, จังหวัดอุดรธานี', 4.7, 51, 17.411024, 102.800010, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/1c/48/8e/7b/vela-dhi-udon-thani.jpg', NULL, NULL, NULL, '2025-05-04 09:35:02', '2025-05-04 09:35:02'),
(251, '9D Sport Hotel', 'เมืองอุดรธานี, จังหวัดอุดรธานี', 3.6, 17, 17.431177, 102.807755, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/13/d6/a7/1a/9d-sport-hotel.jpg', NULL, NULL, NULL, '2025-05-04 09:35:02', '2025-05-04 09:35:02'),
(252, 'เซ็นทารา อุดร', 'เมืองอุดรธานี, จังหวัดอุดรธานี', 4.1, 1452, 17.406569, 102.800540, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2c/01/91/7f/exterior-1.jpg', NULL, NULL, NULL, '2025-05-04 09:35:02', '2025-05-04 09:35:02'),
(253, 'De Princess Hotel Udon Thani', 'เมืองอุดรธานี, จังหวัดอุดรธานี', 4.7, 65, 17.394810, 102.809860, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2d/73/5d/c4/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:35:02', '2025-05-04 09:35:02'),
(254, 'กวินบุรี กรีน โฮเท็ล', 'เมืองอุดรธานี, จังหวัดอุดรธานี', 4.0, 131, 17.404076, 102.801920, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/07/5b/ea/82/deluxe-room.jpg', NULL, NULL, NULL, '2025-05-04 09:35:02', '2025-05-04 09:35:02'),
(255, 'Dusit Thani Mactan Cebu Resort', 'ลาปู ลาปู , Mactan Island, เซบู, วิซายา', 4.6, 1517, 10.330405, 124.039314, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/25/ca/d9/ff/sitting-elegantly-at.jpg', NULL, NULL, NULL, '2025-05-04 09:35:26', '2025-05-04 09:35:26'),
(256, 'Dusit Thani Abu Dhabi', 'อาบูดาบี, Emirate of Abu Dhabi', 4.7, 3610, 24.455194, 54.394890, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2d/5c/80/01/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:35:26', '2025-05-04 09:35:26'),
(257, 'บ้านริมน้ำ จังหวัดอุตรดิตถ์', 'เมืองอุตรดิตถ์, จังหวัดอุตรดิตถ์', 3.5, 14, 17.634657, 100.111650, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0e/01/a9/2b/car-park.jpg', NULL, NULL, NULL, '2025-05-04 09:35:45', '2025-05-04 09:35:45'),
(258, 'สุนีย์ บูทีค โฮเท็ล', 'เมืองอุตรดิตถ์, จังหวัดอุตรดิตถ์', 4.0, 15, 17.619831, 100.090710, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/14/17/86/caption.jpg', NULL, NULL, NULL, '2025-05-04 09:35:45', '2025-05-04 09:35:45'),
(259, 'โรงแรม บี-โคซี่ อุตรดิตถ์', 'เมืองอุตรดิตถ์, จังหวัดอุตรดิตถ์', 3.9, 15, 17.615080, 100.086880, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/09/95/b4/af/standard-twin-beds.jpg', NULL, NULL, NULL, '2025-05-04 09:35:45', '2025-05-04 09:35:45'),
(260, 'Camp Leopard - Yala Safari Glamping', 'Kataragama, Uva Province', 4.9, 205, 6.409744, 81.358870, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/25/3c/6d/7c/camp-leopard-yala-safari.jpg', NULL, NULL, NULL, '2025-05-04 09:36:19', '2025-05-04 09:36:19'),
(261, 'Jetwing Yala', 'Palatupana, Yala National Park', 4.6, 3129, 6.251383, 81.396065, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2a/42/7f/4e/jetwing-yala.jpg', NULL, NULL, NULL, '2025-05-04 09:36:19', '2025-05-04 09:36:19'),
(262, 'ชายา ไวล์ด ยาลา', 'Palatupana, Yala National Park', 4.6, 3995, 6.259364, 81.404330, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/2e/60/79/d5/beach-chalet.jpg', NULL, NULL, NULL, '2025-05-04 09:36:19', '2025-05-04 09:36:19'),
(263, 'โรงแรม เดอะกรีนปาร์ค แกรนด์', 'เมืองยโสธร, จังหวัดยโสธร', 4.2, 6, 15.804660, 104.144440, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-f/13/96/0f/b9/vip-motel-room-bed.jpg', NULL, NULL, NULL, '2025-05-04 09:36:40', '2025-05-04 09:52:15'),
(264, 'เจ.พี. เอ็มเมอรัลด์', 'เมืองยโสธร, จังหวัดยโสธร', 3.1, 31, 15.802511, 104.137100, NULL, '0', NULL, NULL, 'https://media-cdn.tripadvisor.com/media/photo-l/0f/87/16/93/muangyot-cafe-and-restaurant.jpg', NULL, NULL, NULL, '2025-05-04 09:36:40', '2025-05-04 09:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_04_155022_create_hotels_table', 2);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
