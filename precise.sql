-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2017 at 10:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `precise`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_image`
--

DROP TABLE IF EXISTS `about_image`;
CREATE TABLE `about_image` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `category_id`, `nama`, `address_1`, `address_2`, `telp`, `fax`, `image`, `kota`, `email`, `prov`) VALUES
(1, 12, 'Ayu Kayun', 'Jl. Kayun 14D', 'Surabaya Pusat', '031 5317316 / 081554221889', '', '6a030-car-profile-tls.jpg', 'Surabaya', 'deo@markdesign.net', 'Jawa Timur'),
(2, 12, 'Embong Jakarta', 'Jl. Embong Kenongo 79A', 'Sunter, Jakarta Utara', '089 6054 72237', '', 'cd7ec-pict-big-cars-exm.jpg', 'Jakarta Utara', '', 'DKI Jakarta'),
(3, 13, 'Uluwatu', 'Jl. Uluwatu - Gigit Sari no 11', 'Uluwatu, Denpasar', '089 6054 72237', '', '4896b-car-profile-tls.jpg', 'Denpasar', '', 'Bali'),
(4, 0, 'Hotel Test', 'Jl. Tenggilis Utara 14, Jemursari', 'Surabaya Selatan', '031 8472098 ext 102', '', '', 'Surabaya', '', 'Jawa Timur'),
(5, 0, 'Ayani', 'Jl. Ayani - Gigit Sari no 11', 'Uluwatu, Denpasar', '089 6054 72237', '', '', 'Uluwatu', '', 'Bali'),
(6, 0, 'Embong Bali', 'Jl. Embong Bali79A', 'Surabaya Pusat', '031 - 5346879', '031 - 5454591', '', 'Malang', '', 'Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_big` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `image`, `image_big`, `sort`) VALUES
(1, 'Creative Communication Division', '9f4df-Banner Career_CC.jpg', 'f451f-PopUp_Banner CC.jpg', 1),
(4, 'Public Relation & Sales', '60b6c-Banner Career_PR.jpg', '60b6c-PopUp_Banner PR.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23600'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23700'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23000'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23600'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23700'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24700'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24400'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24500'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24600'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24400'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24300'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26000'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85800'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97000'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21000'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99700'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80361'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71400'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76100'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23000'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35000'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40000'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40000'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40000'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94791'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94791'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33200'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33300'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33700'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33600'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69100'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80600'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70600'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46300'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70700'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70000'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53400'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92400'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55700'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30758'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53100'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68400'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70500'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73700'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73600'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73800'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90700'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29400'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51200'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36600'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21200'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93700'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17000'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17000'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33400'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33400'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85700'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24500'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28700'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79200'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38000'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38500'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38000'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38600'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77300'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98100'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84100'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84100'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20700'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29100'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24200'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95500'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66100'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66100'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58200'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96200'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16000'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16000'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62100'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95700'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95700'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95700'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95700'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93700'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68200'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92552'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96184'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75300'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99600'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57300'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52200'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26100'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81100'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92500'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77200'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37200'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94500'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97500'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97500'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93700'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93600'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46200'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43200'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53200'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42400'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40500'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45100'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45100'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22200'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98700'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20500'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59500'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80000'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16400'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27600'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98800'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84200'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94351'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28800'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31500'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86300'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91700'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98600'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86200'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44100'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24600'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80500'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96100'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96100'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96100'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92100'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61100'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58152'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55800'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74500'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22800'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97700'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97700'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97800'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97800'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97700'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71200'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71300'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71400'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22400'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29200'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29300'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45200'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98700'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11000'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10000'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12000'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13000'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14000'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36000'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99000'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99000'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99500'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68100'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82200'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92300'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59400'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61400'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98654'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28400'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73500'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78700'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57700'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80800'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41300'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29600'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22100'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74400'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38000'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78800'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54300'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64100'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64100'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99000'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51300'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93000'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39172'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29700'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97600'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25391'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28700'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95800'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14530'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95800'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97700'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95800'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98200'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37100'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78800'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57400'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80700'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93500'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93500'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93400'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93000'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93000'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72100'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95700'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74100'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74300'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29500'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78000'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59300'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55600'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45500'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85000'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85000'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75000'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75500'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75556'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21400'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21400'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21400'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31400'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74100'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '62200'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '35000'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35000'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34100'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34100'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34500'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '79357'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20800'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24400'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99500'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42300'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39200'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86600'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24300'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26200'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29800'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83363'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83500'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83600'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83300'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31600'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67300'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91900'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '91900'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '91900'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63100'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63100'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56100'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56100'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63300'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45400'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91400'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90000'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65100'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65100'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77154'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97000'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97500'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97600'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97600'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91363'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99500'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99500'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91500'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91500'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95000'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22919'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86500'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86753'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86500'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98300'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98300'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99000'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90500'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83000'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '99000'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20000'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78672'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37300'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99600'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34500'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34100'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99900'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95600'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95000'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95000'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95000'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61300'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61300'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94000'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31300'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36365'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38365'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93600'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73900'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30700'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31600'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98800'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23600'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86400'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29700'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99500'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86400'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64400'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63200'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22800'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22800'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22800'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22800'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77182'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30600'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30600'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32100'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32100'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32100'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63500'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25000'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22700'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22700'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27100'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25500'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22700'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31500'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22200'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73000'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30000'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91900'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94000'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69300'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42200'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46396'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90600'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33100'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98700'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91100'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25500'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94371'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26300'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26300'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76200'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67100'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67100'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59100'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26200'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98300'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99500'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51100'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51100'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28000'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28300'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52300'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21100'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76141'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35000'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '34574'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25600'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24100'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24100'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91200'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96200'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91300'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63400'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78000'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78000'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94600'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31100'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35373'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67200'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67200'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '73561'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98900'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98900'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53300'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41100'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54100'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98400'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39100'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59200'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28991'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28455'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85974'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23500'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50700'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75000'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79400'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22300'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69200'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78500'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37300'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27400'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '78582'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92800'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38000'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50000'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50000'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97500'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97500'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42100'),
(403, 3, 'Banten', 'Kota', 'Serang', '42100'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20000'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74200'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28686'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22500'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91600'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61200'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94000'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27500'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86100'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21100'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23000'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79100'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92600'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78600'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68300'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55500'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27300'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27300'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27300'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90800'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98400'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98400'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98400'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57200'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41200'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '23782'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43100'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43100'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74172'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57500'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87200'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87200'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87200'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87100'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84300'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84300'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45300'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69400'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37100'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98100'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60000'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57100'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71500'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82100'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92200'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98400'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77152'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91800'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '70000'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27200'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70800'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15000'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15000'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15000'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35000'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21300'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36500'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36500'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29100'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22700'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22500'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22400'),
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71100'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77100'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46100'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46100'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20600'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37200'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52100'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52100'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98300'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98300'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56200'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97700'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97800'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85500'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85600'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22300'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94600'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94500'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99562'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95362'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91890'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66300'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97600'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62300'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34500'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34500'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66200'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90900'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93700'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98200'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '35000'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57600'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56300'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99500'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99500'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55000');

-- --------------------------------------------------------

--
-- Table structure for table `cs_customer`
--

DROP TABLE IF EXISTS `cs_customer`;
CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cs_customer_address`
--

DROP TABLE IF EXISTS `cs_customer_address`;
CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
CREATE TABLE `factory` (
  `id` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factory`
--

INSERT INTO `factory` (`id`, `nama`, `alamat`, `telp`, `email`, `peta`) VALUES
(3, 'FACTORY BOJONEGORO', 'Jl. Mahakam 225\r\nBojonegoro 20456\r\nEast Java', '+62 31 5015588', 'factory@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(4, 'OFFICE SURABAYA', 'Jl. Ngagel Jaya 12\r\nSurabaya 60456\r\nEast Java', '+62 31 5015588', 'office@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(5, 'OFFICE JAKARTA', 'Jl. Mahakam 225\r\nSidoarjo 20456\r\nEast Java', '+62 31 5015588', 'realfood@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1978.075813030622!2d112.71914446656403!3d-7.448471635049679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7e6b5e9bccdbd%3A0xfb1776699d75a67a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Sidoarjo%2C+Sidoarjo%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1450785636022');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `sort`) VALUES
(4, 'Apa manfaat utama produk Xado Revitalizant?', 'Xado Revitalizant dapat memberikan perlindungan pada mesin agar terjaga dari keausan sehingga mempermudah anda dalam merawat mesin', 1),
(5, 'Apa yang membedakan produk Xado dengan produk – produk additive yang lain?', 'Xado bukanlah additive, namun merupakan produk revitalizant. Additive memperbaiki kulitas oli sedangkan Xado memperbaiki kualiatas mesin. Additive bercampur dengan oli sedangkan Xado hanya menggunakan oli sebagai media untuk bereaksi dengan lapisan mesin yang mengalami keausan', 2),
(6, 'Apakah produk Xado Revitalizant dapat digunakan untuk merek oli apa saja?', 'Bisa, karena Xado tidak bereaksi dengan oli sehingga tidak berpengaruh jika menggunakan merek oli apa saja selama oli yang digunakan masih baru', 3),
(7, 'Produk Xado dapat digunakan untuk mesin apa saja?', 'Xado dapat digunakan untuk mesin apa saja selama di dalam mesin tersebut terdapat komponen dua logam yang bergesekan dengan temperature yang tinggi serta menggunakan pelumasan. Misalnya : Mesin kendaraan bermotor, Genset, Kompresor, Hidrolis, Gearbox, Alat pemotong rumput dan lain – lain', 4),
(8, 'Apakah  setiap ganti oli saya harus memasukkan produk Xado kembali', 'Tidak perlu, karena produk Xado akan tetap melekat dalam permukaan mesin selama 100.000 km jika  setelah memasukkan produk Xado penggantian oli dilakukan setelah 4.000 km. Pada kilometer tersebut proses revitalisasi sudah sempurna sehingga produk Xado tidak akan ikut terbuang meskipun dilakukan pergantian oli yang berulang – ulang', 5),
(9, 'Apa yang membuat produk Xado tetap melekat pada permukaan mesin meskipun oli di buang?', 'Reviltalizant bekerja dengan prinsip nanopartikel. Pada saat temperatur dan tekanan tinggi produk Xado bereaksi dengan logam permukaan mesin membentuk karbida logam yang meresap ke permukaan logam dengan ukuran yang sangat kecil (nanometer)', 6),
(10, 'Apakah produk Xado Revitalizant bisa digunakan untuk bahan bakar solar?', 'Bisa, Xado memiliki berbagai macam produk yang digunakan untuk bahan bakar bensin, solar dan gas (BBG)', 7),
(11, 'Apakah produk Xado bisa menghemat bahan bakar?', 'Prinsip utama produk Xado adalah membentuk lapisan baru pada permukaan mesin sehingga dengan usaha yang sama dengan sebelumnya (putaran) mesin bekerja dengan tenaga yang lebih, maka terjadilah penghematan bahan bakar.', 8),
(12, 'Apa yang membedakan antara Xado One Stage dengan AMC New Car atau AMC Maximum?', 'Pada dasarnya Xado One Stage dan AMC memiliki kandungan Revitlaizant yang sama, yang menjadi perbedaan adalah dalam AMC terdapat dua zat lain yaitu metal conditioner dan sliding agent yang membuat proses revitalisasi jadi lebih cepat. Sedangkan untuk perbedaan AMC new Car dengan Maximum adalah jika New car digunakan untuk mesin mobil yang odometernya dibawah 20.000 km sedangkan Maximum digunakan untuk mobil dengan odometer lebih dari 20.000 km', 9),
(13, 'Odometer mobil saya adalah 150.000 km, apakah masih bisa menggunakan produk Xado Revitalizant?', 'Bisa, namun karena odometer telah mencapai 150.000 yang dapat digolongkan mesin yang lama maka sebelum dimasukkan produk AMC Maximum, sistem pelumasannya harus di bersihkan dengan produk Vitaflush demi menjamin keefektifan Revitalizant', 10),
(14, 'JIka saya sudah mengganti oli dan sudah berjalan 600 km apakah masih bisa dimasukkan produk Xado tanpa mengganti oli baru?', 'Bisa, selama odometer belum mencapai 1000 km maka bisa dimasukkan produk Xado Revitalizant tanpa mengganti oli', 11),
(15, 'Jika kendaran saya mengalami kebocoran oli apakah bisa bisa ditanggulangi oleh produk Xado?', 'Bisa, selama kebocoran oli tersebut tidak lebih dari 15% selama jarak tempuh 1000 km dan kebocoran tidak terjadi pada gasket atau seal – sealnya', 12),
(16, 'Jika asap putih sudah keluar dari saluran pembuangan apakah masih bisa ditanggulangi dengan produk Xado?', 'Biasanya jika sudah mengeluarkan asap berwarna putih pekat maka kebocoran telah lebih dari 15% maka produk Xado tidak dapat menganggulangi kebocoran mesin', 13),
(17, 'Mesin mobil saya mengalami “kepincangan”, apakah masih bisa digunakan produk Xado?', 'Produk Xado hanya dapat mengatasi problematika mesin yang sederhana, jika mesin sudah mengalami kepincangan disarankan untuk memeperbaiki sistem di dalam silinder terlebih dahulu, lalu setelah itu di masukkan produk Xado untuk menjaga mesin agar tidak terjadi kepincangan kembali', 14),
(18, 'Apakah petroltank dapat merubah premium yang kita pakai menjadi pertamax?', 'Prinsip utama petroltank adalah membersihkan zat pengotor pada bahan bakar dan saluran  bahan bakar sehingga dapat memperbaiki kualitas premium namun tidak untuk menaikkan nilai oktan. Jadi premium menjadi lebih bersih namun tidak berubah jadi pertamax', 15),
(19, 'Apakah ada produk Xado untuk menaikkan nilai oktan dan nilai cetan?', 'Ada, Octane Booster dapat menaikkan nilai oktan hingga 6 poin, sedangkan Cetane Booster dapat menaikkan nilai cetane hingga 7 poin', 16),
(20, 'Apakah terdapat produk Xado untuk sepeda motor dua tak? Dan bagaimana cara penggunaannya?', 'Produk Xado untuk motor adalah Small Engine, dapat digunakan baik untuk 4 tak ataupun dua tak. Cara penggunaannya adalah untuk 4 tak produk xado di masukkan pada tabung pengisian oli sedangkan untuk 2 tak produk Xado dimasukkan ke dalam tabung bahan bakar karena dalam 2 tak oli bercampur dengan bahan bakar', 17),
(21, 'Apakah perbedaan oli Xado dengan merek – merek oli yang lain?', 'Di dalam produk xado terdapat revitalizant, sehingga oli Xado tidak hanya berfungsi sebagai pelumas tapi juga berfungsi sebagai pelindung dari keausan. Oli Xado juga memiliki umur pakai yang lebih lama dibandingkan dengan oli yang lain', 18),
(22, 'Apakah saya hanya memasukkan produk Xado Revitalizant tanpa perlu menggunakan oli khusus Xado?', 'Karena pada dasarnya Xado Revitalizant dapat digunakan dapat digunakan untuk semua merek oli maka Xado revitalizant bisa digunakan tanpa perlu menggunakan oli khusus Xado, namun agar perlindungan kendaraan anda lebih maksimal maka kami merekomendasikan untuk menggunakan oli Xado juga', 19),
(23, 'Apakah Xado dapat di gunakan untuk mesin – mesin industri?', 'Kami memiliki produk untuk mesin – mesin industry seperti XGR for Compresor, XGR 3 Stage dan XGR 1 stage untuk genset dan alat – alat berat serta XGR for Hidrolics untuk mesin – mesin hidrolis', 20);

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery`
--

DROP TABLE IF EXISTS `gal_gallery`;
CREATE TABLE `gal_gallery` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gal_gallery`
--

INSERT INTO `gal_gallery` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `city`, `harga`, `orientation`, `color`, `image2`) VALUES
(8, 0, '58674-ex-picts_promotions.jpg', 1, '2017-02-22 10:36:21', '2017-08-01 11:00:30', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(6, 0, 'd8a2d-ex-picts_promotions.jpg', 1, '2017-02-22 22:33:00', '2017-08-01 10:59:10', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', ''),
(7, 0, 'd3b6b-ex-picts_promotions.jpg', 1, '2017-02-22 10:35:42', '2017-08-01 11:00:03', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery_description`
--

DROP TABLE IF EXISTS `gal_gallery_description`;
CREATE TABLE `gal_gallery_description` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gal_gallery_description`
--

INSERT INTO `gal_gallery_description` (`id`, `gallery_id`, `language_id`, `title`, `sub_title`, `sub_title_2`, `content`) VALUES
(8, 1, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat  eu magna id laoreet. Donec accumsan mauris congue consectetur congue.  Morbi rutrum ipsum nec ligula convallis viverra. Fusce vehicula  efficitur nisl in aliquam. Nullam non dictum ligula. Nunc in orci  viverra, consequat sapien ac, auctor erat. Sed rutrum tincidunt dictum.  Maecenas pharetra lobortis volutpat. Cras euismod ultricies nisl vitae  bibendum. Vestibulum eget lorem a sem aliquet mattis id sodales purus.  Praesent finibus aliquam laoreet. Vivamus vel tortor nec justo mattis  venenatis. Fusce varius tellus sit amet purus varius tempus.\r\n</p>\r\n<p>\r\n	    Donec enim lectus, condimentum a fermentum  eget, volutpat sit amet nisl. Nunc sit amet enim sagittis, congue nunc  id, euismod nulla. Nullam porttitor mi tortor, vitae vulputate leo  egestas vel. Pellentesque convallis vestibulum nisl pretium hendrerit.  Donec egestas, mauris ut molestie posuere, mauris mauris porta libero,  tristique imperdiet turpis nisl sed arcu. Quisque at augue non felis  facilisis semper ac a orci. Cras porta nulla consectetur arcu finibus  blandit. Mauris sodales, risus sit amet dictum cursus, orci lorem  egestas dui, maximus viverra tortor odio imperdiet quam. Donec placerat,  mi eu vestibulum luctus, augue metus consequat enim, varius accumsan  quam erat eleifend ante. Fusce porta ipsum vitae nibh interdum, vel  elementum odio aliquet. Ut dui tortor, convallis eget finibus vitae,  malesuada sed justo. Mauris tempor in nibh quis sodales.\r\n</p>'),
(9, 2, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quaerat deserunt quod dignissimos consectetur id atque maxime at natus, ipsum. Eaque adipisci sit blanditiis error. Perspiciatis debitis ducimus doloribus odit animi doloremque dolore, laboriosam commodi voluptates nobis similique optio sunt.\r\n</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic suscipit aperiam repellendus minima enim ipsa iure minus ab velit! At nam, ducimus blanditiis earum quis ad neque, voluptates aspernatur veritatis.\r\n</p>'),
(60, 3, 2, 'Soon', '', 'WE ARE STILL COOKING', '<p>\r\n	              We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(62, 4, 2, 'BARISTA WORSKHOP', 'SYDNEY, NSW', '', '<p>\r\n	               We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(57, 5, 2, 'CLASSIC', 'Drink With Purpose', 'Bird''s Nest Daily Drink', '<p>\r\n	                            Bird''s Nest Daily drink with Classic variant. Low calories because sweetened with natural stevia leaves\r\n</p>'),
(69, 6, 2, 'Lebaran Hemat', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	   Hanya berlaku untuk pembelanjaan dengan nominal di atas Rp 1.000.000  (satu juta rupiah), dan tidak berlaku untuk produk dengan harga discount  / potongan.\r\n</p>\r\n<p>\r\n	   Barang yang dibeli tidak dapat dikembalikan\r\n</p>\r\n<p>\r\n	   Valid untuk segala macam metode pembayaran\r\n</p>'),
(74, 8, 2, 'New Product With Discount', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>'),
(73, 7, 2, 'Murah Hemat Tetep Gaya', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gal_gallery_image`
--

DROP TABLE IF EXISTS `gal_gallery_image`;
CREATE TABLE `gal_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gal_gallery_image`
--

INSERT INTO `gal_gallery_image` (`id`, `gallery_id`, `image`) VALUES
(24, 1, '5a715-Bombay pre wedding shoot.jpg'),
(22, 1, '5a715-37b9e4e8-f39f-4e8d-b53a-0b43c2d632c7.jpg'),
(23, 1, '5a715-6815400-wedding-wallpaper.jpg'),
(25, 2, 'e4a80-Bombay pre wedding shoot.jpg'),
(26, 2, 'e4a80-PuChai-Prewedding-retouches-4.jpg'),
(27, 2, 'e4a80-PuChai-Prewedding-retouches-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `list_product`
--

DROP TABLE IF EXISTS `list_product`;
CREATE TABLE `list_product` (
  `a` int(3) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` varchar(54) DEFAULT NULL,
  `d` varchar(17) DEFAULT NULL,
  `e` varchar(20) DEFAULT NULL,
  `f` varchar(11) DEFAULT NULL,
  `g` varchar(42) DEFAULT NULL,
  `h` varchar(73) DEFAULT NULL,
  `i` varchar(12) DEFAULT NULL,
  `j` int(6) DEFAULT NULL,
  `k` varchar(245) DEFAULT NULL,
  `l` varchar(18) DEFAULT NULL,
  `m` int(4) DEFAULT NULL,
  `o` int(7) DEFAULT NULL,
  `p` varchar(40) DEFAULT NULL,
  `q` varchar(67) DEFAULT NULL,
  `r` int(2) DEFAULT NULL,
  `s` varchar(37) DEFAULT NULL,
  `t` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_product`
--

INSERT INTO `list_product` (`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `o`, `p`, `q`, `r`, `s`, `t`) VALUES
(1, 1, 'Baskom Plastik 10 Florent', 'WSG - 210', '21 (d) x 6,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, tidak mudah pecah', 'Galaxy Plast', 1150, 'Baskom / waskom bulat kecil berwarna cerah polos serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '42 x 20 x 74', 480, 462000, 'DSC09844', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(2, 2, 'Baskom Plastik 10 Super', 'WSG - 310', '21 (d) x 6,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 800, 'Baskom / waskom bulat kecil warna-warni polos serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '42 x 20 x 74', 480, 308000, 'DSC09845', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(3, 3, 'Baskom Plastik 10 Renda Florent', 'WRG - 110', '21 (d) x 6,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, tidak mudah pecah', 'Galaxy Plast', 1300, 'Baskom / waskom bulat kecil dengan gerigi berwarna cerah serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '42 x 20 x 75', 360, 396000, 'DSC09788', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(4, 4, 'Baskom Plastik 10 Renda Super', 'WRG - 120', '21 (d) x 6,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 700, 'Baskom / waskom bulat kecil warna-warni serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '42 x 20 x 75', 360, 214500, 'waskom10renda(3).jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(5, 5, 'Baskom Plastik Buah 104 Super', 'WSG - 404', '24 (d) x 8', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 1300, 'Baskom / waskom bulat kecil warna-warni dengan ukiran bentuk buah serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '56 x 50 x 25', 180, 208000, 'waskom 104 (5) EDIT.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(6, 6, 'Baskom Plastik Anggur 10 Super', 'WSG - 311', '20,5 (d) x 6', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 600, 'Baskom / waskom bulat kecil warna-warni dengan ukiran bentuk buah serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '22 x 20 x 65', 600, 288750, 'DSC09785', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(7, 7, 'Baskom Plastik Buah 14 Super', 'WBS - 014', '24 (d) x 10,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 1800, 'Baskom / waskom bulat kecil warna-warni dengan ukiran bentuk buah serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '50 x 24 x 80', 180, 272250, 'DSC09789', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(8, 8, 'Baskom Plastik Anggur 12 Super', 'WSG - 312', '23 (d) x 6,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 750, 'Baskom / waskom bulat kecil warna-warni dengan uliran bentuk buah serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '47 x 23 x 54', 480, 297000, 'Anggur 12 spr.png', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(9, 9, 'Baskom Plastik 14 Super', 'WSR - 001', '27 (d) x 8', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah pecah', 'Galaxy Plast', 1300, 'Baskom / waskom bulat warna-warni polos serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan, dll.', '60 x 28 x 28', 180, 198000, 'waskom 14 spr.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(10, 10, 'Baskom Plastik USA 42 Dx', 'WSG - 420/421', '73 (d) x 28', 'HDPE', 'Merah dan Biru', 'Ukuran Besar, tahan banting, 100 % anti pecah, warna cerah ', 'Tong Kuat', 92000, 'Baskom / waskom bulat besar berwarna cerah dengan ukiran TongKuat serbaguna. 100% anti pecah, sangat awet dan kuat. Biasa digunakan untuk wadah ikan, cuci pakaian, dll.', '73 x 73 x 42', 12, 925000, 'emberUSA (3).jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(11, 11, 'Baskom Plastik USA 42 Hitam', 'WSG - 422', '73 (d) x 28', 'HDPE', 'Hitam', 'Ukuran Besar, tahan banting, 100 % anti pecah', 'Tong Kuat', 71500, 'Baskom / waskom bulat berwarna hitam dengan ukiran TongKuat serbaguna. 100% anti pecah, sangat awet dan kuat. Biasa digunakan untuk wadah ikan, cuci pakaian, dll.', '73 x 73 x 42', 12, 726000, 'DSC09869', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(12, 12, 'Baskom Oval Plastik 18 Hitam', 'WAS - 018', '47 x 32,2 x 7,1', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Pacific', 7100, 'Baskom / bak oval besar warna hitam dengan pegangan di samping serbaguna. Biasa digunakan untuk cucian, wadah sayur, ikan, dan buah, dll.', '89 x 46 x 32', 48, 286000, 'DSC09802', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(13, 13, 'Baskom Oval Plastik 20 Kuping Hitam', 'WAS - 109', '41 (d) x 23', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Pacific', 7300, 'Baskom / bak oval besar hitam dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayuran, ikan, dll.', '70 x 40 x 43', 60, 371250, 'DSC09803', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(14, 14, 'Baskom Segi Plastik Serbaguna Abu', 'WSE - 106', '39 x 29 x 12,5', 'PP', 'Abu - abu', 'Kilap, tebal, kuat, dan ukuran besar', 'Pacific', 8700, 'Baskom / bak segi besar abu -abu serbaguna. Biasa digunakan untuk tempat beras, bak cat, cuci piring, dll.', '113 x 39 x 29', 48, 352000, 'DSC09807', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(15, 15, 'Baskom Segi Plastik Serbaguna Dx', 'WSE - 105', '39 x 29 x 12,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan kuat', 'Pacific', 11900, 'Baskom / bak segi besar berwarna cerah serbaguna. Biasa digunakan untuk tempat beras, bak cat, cuci piring, dll.', '113 x 39 x 29', 48, 484000, 'DSC09809', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(16, 16, 'Baskom Segi Plastik 101 Dx', 'BSE - 101', '31 x 20 x 10', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan kuat', 'Panda Star', 6000, 'Baskom / bak segi berwarna cerah serbaguna. Biasa digunakan untuk bak beras, bak cat, wadah makanan, cuci piring, dll.', '81 x 43,5 x 37', 120, 605000, 'VGT_4396', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(17, 17, 'Baskom Segi Plastik 102 Dx', 'BSE - 102', '36 x 25,5 x 11,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan kuat', 'Panda Star', 9200, 'Baskom / bak segi berwarna cerah serbaguna. Biasa digunakan untuk bak beras, bak cat, wadah makanan, cuci piring, dll.', '80,5 x 52 x 36', 96, 748000, 'VGT_4961', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(18, 18, 'Baskom Segi Plastik 103 Dx', 'BSE - 103', '43 x 31 x 13', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan kuat', 'Panda Star', 13000, 'Baskom / bak segi berwarna cerah serbaguna. Biasa digunakan untuk bak beras, bak cat, wadah makanan, cuci piring, dll.', '43 x 30 x 94', 48, 528000, 'VGT_4396', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(19, 19, 'Baskom Segi Plastik 104 Dx', 'BSE - 104', '52 x 36,5 x 14', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan kuat', 'Panda Star', 19000, 'Baskom / bak segi besar berwarna cerah serbaguna. Biasa digunakan untuk bak beras, bak cat, wadah makanan, cuci piring, dll.', '73,5 x 52 x 35,5', 48, 770000, 'VGT_4961', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(20, 20, 'Baskom Plastik 10 Kuping Putih Sablon', 'WSN - 101', '21 (d) x 8', 'PP', 'Kuping warna Orange, Hijau, Pink', '2 warna, tebal, kilap, ada gambar sablon', 'Panda Star', 3900, 'Baskom / waskom bulat putih kecil bergambar dengan kuping berwarna-warni serbaguna. Biasa digunakan untuk tempat air, cuci tangan, slametan / syukuran / hajatan, dll.', '40 x 40 x 72', 240, 792000, 'DSC09839', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(21, 21, 'Baskom Plastik Jerman 16 Abu', 'WSO - 016', '30,5 (d) x 13', 'PP', 'Abu - abu', 'Kilap, tebal, dan kuat', 'Panda Star', 4100, 'Baskom / waskom bulat besar abu-abu dengan ukiran bunga serbaguna. Biasa digunakan untuk tempat air, slametan / syukuran / hajatan, dll.', '86,5 x 61,7 x 34', 120, 412500, 'VGT_4426', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(22, 22, 'Baskom Plastik Jerman 16 Hitam', 'WSO - 019', '30,5 (d) x 13', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Panda Star', 3250, 'Baskom / waskom bulat besar hitam dengan ukiran bunga serbaguna. Biasa digunakan untuk tempat air, slametan / syukuran / hajatan, dll.', '86,5 x 61,7 x 34', 120, 330000, 'VGT_4426', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(23, 23, 'Baskom Plastik USA 10 Hitam', 'WSO - 109', '16 (d) x 8', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Panda Star', 900, 'Baskom / waskom bulat kecil dengan ukiran bunga serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan,dll.', '98 x 80 x 16', 480, 352000, 'DSC09791', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(24, 24, 'Baskom Plastik USA 12 Hitam', 'WSO - 129', '20,5 (d) x 10', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Panda Star', 1300, 'Baskom / waskom bulat kecil dengan ukiran bunga serbaguna. Biasa digunakan untuk tempat air, kobokan, slametan / syukuran / hajatan,dll.', '85 x 61,2 x 23', 360, 396000, 'DSC09791', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(25, 25, 'Baskom Plastik USA 16 Florent', 'WSO - 216', '34 (d) x 16', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tidak mudah pecah', 'Panda Star', 9100, 'Baskom / waskom bulat berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '34 x 34 x 97', 72, 554400, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(26, 26, 'Baskom Plastik USA 18 Florent', 'WSO - 218', '38 (d) x 19', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tidak mudah pecah', 'Panda Star', 12000, 'Baskom / waskom bulat berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '104 x 37,5 x 37,5', 60, 605000, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(27, 27, 'Baskom Kocokan Telur Plastik', 'WSO - 003', '25,5 x 22,5 x 12', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, tidak mudah pecah', 'Panda Star', 3250, 'Baskom / waskom oval kecil berwarna cerah polos serbaguna. Biasa digunakan untuk tempat air, kocok telur, wadah makanan, slametan / syukuran / hajatan, dll.', '76 x 48,6 x 24', 240, 660000, 'VGT_4544', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(28, 28, 'Baskom Plastik USA 20 Dx', 'WSU - 220', '44 (d) x 18', 'PP', 'Orange, Biru, Hijau, Pink', 'Ukuran besar, warna cerah, kilap, tebal dan kuat', 'Bison Star', 14700, 'Baskom / waskom bulat besar berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '43 x 43 x 69', 48, 594000, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(29, 29, 'Baskom Plastik USA 20 Abu', 'WSU - 020', '44 (d) x 18', 'PP', 'Abu - abu', 'Ukuran besar, kilap, tebal dan kuat', 'Bison Star', 9750, 'Baskom / waskom bulat besar abu-abu dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '43 x 43 x 69', 48, 396000, 'DSC09873', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(30, 30, 'Baskom Plastik USA 22 Dx', 'WSU - 221', '51 (d) x 30', 'PP', 'Orange, Biru, Hijau, Pink', 'Ukuran besar, warna cerah, kilap, tebal dan kuat', 'Bison Star', 19500, 'Baskom / waskom bulat besar berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '50,5 x 50,5 x 50', 36, 594000, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(31, 31, 'Baskom Plastik USA 22 Abu', 'WSU - 022', '51 (d) x 30', 'PP', 'Abu - abu', 'Ukuran besar, kilap, tebal dan kuat', 'Bison Star', 11400, 'Baskom / waskom bulat besar abu-abu dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '50,5 x 50,5 x 50', 36, 346500, 'DSC09873', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(32, 32, 'Baskom Plastik USA 24 Dx', 'WSU - 224', '52,7 (d) x 26', 'PP', 'Orange, Biru, Hijau, Pink', 'Ukuran besar, warna cerah, kilap, tebal dan kuat', 'Bison Star', 27100, 'Baskom / waskom bulat besar berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '53 x 53 x 63', 24, 550000, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(33, 33, 'Baskom Plastik USA 24 Abu', 'WSU - 024', '52,7 (d) x 26', 'PP', 'Abu - abu', 'Ukuran besar, kilap, tebal dan kuat', 'Bison Star', 15200, 'Baskom / waskom bulat besar abu-abu dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '53 x 53 x 63', 24, 308000, 'DSC09873', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(34, 34, 'Baskom Plastik USA 45 Dx', 'WSU - 245', '50,5 (d) x 29', 'PP', 'Orange, Biru, Hijau, Pink', 'Ukuran besar, warna cerah, kilap, tebal dan kuat', 'Bison Star', 27100, 'Baskom / waskom bulat besar berwarna cerah dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '50 x 50 x 66', 24, 550000, 'Waskom 22 USA Sct.jpg', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(35, 35, 'Baskom Plastik USA 45 Abu', 'WSU - 045', '50,5 (d) x 29', 'PP', 'Abu - abu', 'Ukuran besar, kilap, tebal dan kuat', 'Bison Star', 15200, 'Baskom / waskom bulat besar abu-abu dengan ukiran ikan serbaguna. Biasa digunakan untuk tempat air, cuci piring, cuci pakaian, dll.', '50 x 50 x 66', 24, 308000, 'DSC09873', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(36, 36, 'Baskom Plastik Memble Anti Pecah 23 Hitam', 'BML - 239', '44 (d) x 17', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 14700, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '55 x 55 x 95', 60, 742500, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(37, 37, 'Baskom Plastik Memble Anti Pecah 24 Hitam', 'BML - 249', '51 (d) x 22', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 22750, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '56 x 56 x 86', 48, 924000, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(38, 38, 'Baskom Plastik Memble Anti Pecah 26 Hitam', 'BML - 269', '52 (d) x 23', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 27100, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '60 x 60 x 73', 36, 825000, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(39, 39, 'Baskom Plastik Memble Anti Pecah 28 Hitam', 'BML - 289', '54 (d) x 24', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 30900, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '63 x 63 x 78', 36, 940500, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(40, 40, 'Baskom Plastik Memble Anti Pecah 32 Hitam', 'BML - 329', '58 (d) x 24,5', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 39000, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '65 x 65 x 76', 36, 1188000, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(41, 41, 'Baskom Plastik Memble Anti Pecah 36 Hitam', 'BML - 369', '60 (d) x 26,5', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 42250, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '70 x 70 x 67', 30, 1072500, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(42, 42, 'Baskom Plastik Memble Anti Pecah 45 Hitam', 'BML - 459', '56,5 (d) x 29,5', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 30900, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak karet.', '64 x 64 x 89', 30, 783750, 'DSCN0480', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(43, 43, 'Baskom Kuping Plastik Anti Pecah 18 Hitam', 'BKP - 189', '37,5 (d) x 14', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 8200, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak kuping karet.', '39 x 39 x 104', 96, 660000, 'DSCN0472', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(44, 44, 'Baskom Kuping Plastik Anti Pecah 20 Hitam', 'BKP - 209', '42 (d) x 16', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 10900, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak kuping karet.', '40 x 40 x 96', 60, 550000, 'DSCN0472', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(45, 45, 'Baskom Kuping Plastik Anti Pecah 22 Hitam', 'BKP - 229', '51 (d) x 15', 'LDPE', 'Hitam', 'Ukuran besar, tebal, kuat, 100% anti pecah', 'Beruang Star', 14700, 'Baskom / bak plastik bulat hitam anti pecah dengan pegangan di samping serbaguna. Biasa digunakan untuk tempat air, cucian, wadah buah / sayur, dll. Biasa juga disebut bak kuping karet.', '48 x 48 x 113', 72, 891000, 'DSCN0472', 'BATHROOM / KAMAR MANDI - WASH BASINS / BASKOM', 7, '', ''),
(46, 1, 'Celengan Nanas', 'CNN - 101', '13 x 13 x 17', 'HDPE', 'Kuning', 'Tebal, tidak mudah pesok, warna cerah, sangat detail', 'Tong Kuat', 7100, 'Celengan / tabungan berbentuk nanas. Cocok untuk anak-anak.', '82 x 53 x 36', 48, 286000, 'DSC09899', 'OTHERS / LAIN-LAIN - KIDS / ANAK-ANAK', 34, '', ''),
(47, 1, 'Sekrop Sampah Gagang Plastik Dx', 'SEK - 101', '33,5 x 28,8 x 65', 'PP & HDPE', 'Orange, Hijau, Pink', 'Ukuran besar, tebal, warna cerah, kilap, gagang kuat, ringan.', 'Pacific', 8200, 'Sekrop / sekop / pengki / cikrak sampah segi besar plastik berwarna cerah dengan gagang plastik. Cocok digunakan untuk kebersihan lantai dalam dan luar rumah.', '70 x 57,5 x 56,3', 72, 495000, 'Sekop Sampah DX.jpg', 'CLEANING / KEBERSIHAN - DUSTPAN / SEKROP SAMPAH', 13, '', ''),
(48, 2, 'Sekrop Sampah Tangan Plastik Korea', 'SEK - 010', '29,2 x 21,5 x 11,5', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft, tebal, kilap, gagang kuat, ringan.', 'Pacific', 2700, 'Sekrop / sekop / pengki / cikrak sampah segi kecil plastik berwarna soft dengan gagang plastik pendek. Cocok untuk digunakan untuk meja, mobil, dll.', '83 x 65 x 35', 192, 440000, 'Sekop kecil .jpg', 'CLEANING / KEBERSIHAN - DUSTPAN / SEKROP SAMPAH', 13, '', ''),
(49, 3, 'Sekrop Sampah Gagang Plastik Bella Dx', 'SRB - 111', '28 x 25 x 62,5', 'PP & HDPE', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, gagang kuat, ringan.', 'Panda Star', 7100, 'Sekrop / sekop / pengki / cikrak sampah plastik berwarna cerah dengan gagang plastik berwarna kuning. Cocok untuk lantai dalam dan luar rumah.', '61 x 61 x 55', 72, 429000, 'VGT_4765', 'CLEANING / KEBERSIHAN - DUSTPAN / SEKROP SAMPAH', 13, '', ''),
(50, 4, 'Sekrop Sampah Gagang Plastik Bella Super', 'SRB - 112', '28 x 25 x 62,5', 'PP & HDPE', 'Merah, Biru Hijau', 'Kilap, tebal, gagang kuat, ringan.', 'Panda Star', 5200, 'Sekrop / sekop / pengki / cikrak sampah plastik warna-warni dengan gagang plastik berwarna kuning. Cocok untuk lantai dalam dan luar rumah.', '85 x 60 x 31,5', 72, 316800, 'VGT_4765', 'CLEANING / KEBERSIHAN - DUSTPAN / SEKROP SAMPAH', 13, '', ''),
(51, 5, 'Keranjang Sampah Plastik Super Jumbo Soft', 'KSJ - 001', '33 (d) x 32', 'PP', 'Soft Biru, Hijau, Pink', 'Ukuran besar, tebal, warna soft, kilap', 'Pacific', 10300, 'Keranjang / tempat / tong sampah bulat plastik besar berwarna soft. Cocok untuk rumah dan kantor.', '92 x 68 x 33', 60, 522500, 'IMG_3362', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(52, 6, 'Keranjang Sampah Plastik Super Jumbo Ring', 'KSR - 010', '33 (d) x 32', 'PP', 'Ring Merah, Biru, Hijau', 'Ukuran besar, tebal, 2 warna, kilap', 'Pacific', 14700, 'Keranjang / tempat / tong sampah bulat plastik besar berwarna putih dengan ring warna-warni. Cocok untuk rumah dan kantor.', '92 x 68 x 33', 60, 742500, 'IMG_3362', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(53, 7, 'Tong Sampah Segi Plastik 20 Lt', 'TSP - 006', '28 x 28 52', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Pacific', 35750, 'Tong / tempat sampah segi berwarna abu dan hitam kapasitas 20 Liter dengan tutup goyang. Cocok untuk rumah dan kantor.', '54,2 x 54,2 x 55', 12, 363000, 'Dustbin 20 L Abu.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(54, 8, 'Tong Sampah Segi Plastik 42 Lt', 'TSP - 007', '33 x 33 x 67', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Pacific', 59600, 'Tong / tempat sampah segi berwarna abu dan hitam kapasitas 42 Liter dengan tutup goyang. Cocok untuk rumah dan kantor.', '37 x 37 x 96', 6, 302500, 'DSC09732', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(55, 9, 'Keranjang Sampah Plastik Tanggung Dx', 'TSP - 115', '26 (d) x 28', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah dan kilap', 'Panda Star', 4600, 'Keranjang / tempat / tong sampah bulat plastik berukuran sedang berwarna cerah. Cocok untuk rumah dan kantor.', '103 x 56,2 x 27,5', 144, 554400, 'VGT_4606', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(56, 10, 'Keranjang Sampah Plastik Jumbo Dx', 'TSP - 111', '30 (d) x 31', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah dan kilap', 'Panda Star', 7100, 'Keranjang / tempat / tong sampah bulat plastik berukuran besar berwarna cerah. Cocok untuk rumah dan kantor.', '97 x 63 x 31', 96, 572000, 'VGT_4606', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(57, 11, 'Tong Sampah Segi Plastik 5 Lt', 'TSP - 105', '20 x 17 x 31', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 9200, 'Tong / tempat sampah segi plastik berwarna abu dan hitam kapasitas 5 Liter dengan tutup goyang. Cocok untuk mobil, meja, kantor.', '73,5 x 43,5 x 58', 48, 374000, 'VGT_4375', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(58, 12, 'Tong Sampah Segi Plastik 10 Lt', 'TSP - 110', '24 x 18,5 x 38', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 13000, 'Tong / tempat sampah segi plastik berwarna abu dan hitam kapasitas 10 Liter dengan tutup goyang. Cocok untuk mobil, meja, kantor.', '63,4 x 52 x 62,2', 36, 396000, 'VGT_4375', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(59, 13, 'Tong Sampah Segi Plastik 15 Lt', 'TSP - 116', '29 x 21,5 x 45', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 19500, 'Tong / tempat sampah segi plastik berwarna abu dan hitam kapasitas 15 Liter dengan tutup goyang. Cocok untuk rumah dan kantor.', '73 x 60,4 x 69,5', 36, 594000, 'VGT_4375', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(60, 14, 'Tong Sampah Bulat Plastik 5 Lt', 'TSB - 106', '18,8 (d) x 30,2', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 9200, 'Tong / tempat sampah bulat plastik berwarna abu dan hitam kapasitas 5 Liter dengan tutup goyang. Cocok untuk mobil, meja, kantor.', '77 x 58,5 x 50', 72, 561000, 'DSC09755', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(61, 15, 'Tong Sampah Bulat Plastik 10 Lt', 'TSB - 107', '22,5 (d) x 36', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 13000, 'Tong / tempat sampah bulat plastik berwarna abu dan hitam kapasitas 10 Liter dengan tutup goyang. Cocok untuk mobil, meja, kantor.', '67 x 46 x 60,5', 36, 396000, 'DSC09755', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(62, 16, 'Tong Sampah Bulat Plastik 15 Lt', 'TSB - 208', '25,8 (d) x 40,5', 'PP', 'Abu - abu dan hitam', 'Ukuran besar, tebal, kilap, tutup goyang', 'Panda Star', 19500, 'Tong / tempat sampah bulat plastik berwarna abu dan hitam kapasitas 15 Liter dengan tutup goyang. Cocok untuk rumah dan kantor.', '80,5 x 51 x 71,5', 36, 594000, 'DSC09755', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(63, 17, 'Tong Sampah Injak Plastik Cindy 15 Lt', 'TSP - 08', '23,8 x 25,2 x 31,4', 'PP', 'Merah, Biru, Hijau dan Hitam', 'Warna cerah, kilap, tebal, bisa diinjak', 'Panda Star', 58500, 'Tong / tempat sampah segi injak plastik 2 warna kapasitas 15 Liter. Cocok untuk rumah dan kantor.', '73 x 52,5 x 63,5', 12, 594000, 'DSC09731', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(64, 18, 'Tong Sampah / Air Plastik 30 Lt + ttp Dx', 'TOG - 303/305', '38 (d) x 45', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 32500, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 30 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '39 x 39 x 107', 12, 330000, 'DSC01647 EDIT.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(65, 19, 'Tong Sampah / Air Plastik 30 Lt + ttp Hitam', 'TOG - 309', '38 (d) x 45', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 24400, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 30 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '39 x 39 x 107', 12, 247500, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(66, 20, 'Tong Sampah / Air Plastik 40 Lt + ttp Dx', 'TOG - 403/405/406', '41 (d) x 51', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 43500, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 40 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '42 x 42 x 122', 12, 440000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(67, 21, 'Tong Sampah / Air Plastik 40 Lt + ttp Hitam', 'TOG - 409', '41 (d) x 51', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 29800, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 40 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '42 x 42 x 122', 12, 302500, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(68, 22, 'Tong Sampah / Air Plastik 50 Lt + ttp Dx', 'TOG - 503/505/506', '45 (d) x 55', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 54200, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 50 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '46 x 46 x 132', 12, 550000, 'DSC01647 EDIT.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(69, 23, 'Tong Sampah / Air Plastik 50 Lt + ttp Hitam', 'TOG - 509', '45 (d) x 55', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 35750, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 50 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '46 x 46 x 132', 12, 363000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(70, 24, 'Tong Sampah / Air Plastik 60 Lt + ttp Dx', 'TOG - 603/605/606', '49 (d) x 58', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 65000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 60 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '48 x 48 x 129', 12, 660000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(71, 25, 'Tong Sampah / Air Plastik 60 Lt + ttp Hitam', 'TOG - 609', '49 (d) x 58', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 42250, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 60 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '48 x 48 x 129', 12, 429000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(72, 26, 'Tong Sampah / Air Plastik 70 Lt + ttp Dx', 'TOG - 703/705', '50 (d) x 62', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 76000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 70 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '50 x 50 x 135', 12, 770000, 'DSC01647 EDIT.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(73, 27, 'Tong Sampah / Air Plastik 70 Lt + ttp Hitam', 'TOG - 709', '50 (d) x 62', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 52000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 70 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '50 x 50 x 135', 12, 528000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(74, 28, 'Tong Sampah / Air Plastik 80 Lt + ttp Dx', 'TOG - 803/805/806', '51 (d) x 65', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 97500, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 80 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '53 x 53 x 117', 9, 742500, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(75, 29, 'Tong Sampah / Air Plastik 80 Lt + ttp Hitam', 'TOG - 809', '51 (d) x 65', 'HDPE', 'Hitam', 'Tebal, ukuran besar dan 100 % anti pecah', 'Tong Kuat', 65000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna hitam dengan tutup kapasitas 80 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '53 x 53 x 117', 9, 495000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(76, 30, 'Tong Sampah / Air Plastik 100 Lt + ttp Dx', 'TOG - 103/104/105', '56 (d) x 69', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 130000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 100 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '58 x 58 x 120', 9, 990000, 'DSC01647 EDIT.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(77, 31, 'Tong Sampah / Air Plastik 120 Lt + ttp Dx', 'TOG - 123/124/125', '59 (d) x 74', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 149500, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 120 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '62 x 62 x 118', 6, 759000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(78, 32, 'Tong Sampah / Air Plastik 150 Lt + ttp Dx', 'TOG - 153/154/155', '64 (d) x 80', 'HDPE', 'Merah, Biru, Hijau', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 162500, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 150 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '66 x 66 x 126', 6, 825000, 'tong.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(79, 33, 'Tong Sampah / Air Segi Plastik 12 Galon + ttp Dx', 'TSG - 123/125', '44 x 44 x 50', 'HDPE', 'Merah dan Biru', 'Warna cerah, tebal, ukuran besar, 100% anti pecah', 'Tong Kuat', 65000, 'Tong / tempat sampah / air bulat plastik anti pecah berwarna cerah dengan tutup kapasitas 30 Liter. Cocok untuk digunakan di luar ruangan dan untuk pengadaan / tender.', '43 x 43 x 103', 12, 660000, 'DSC09848', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(80, 34, 'Tong Sampah Plastik Segi 68 Liter ', 'TSA - 069', '49 x 34 x 72', 'HDPE dan PP', 'Abu - abu dan hitam', 'Body dan tutup 100% anti pecah, tutup goyang', 'Tong Kuat', 91000, 'Tong / tempat sampah segi plastik anti pecah berwarna abu dan hitam kapasitas 68 Liter dengan tutup goyang. Cocok digunakan untuk hotel / mall /sekolah dan untuk pengadaan / tender.', '50 x 34 x 77', 5, 385000, 'DSC02079 edit.jpg', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(81, 35, 'Tong Sampah Injak Plastik Nikky 15 Lt', 'TSP - 008', '29 x 27 x 28', 'PP', 'Merah, Biru, Hijau dan Hitam', 'Warna cerah, kilap, tebal, bisa diinjak', 'Panda Star', 58500, 'Tong / tempat sampah bulat injak plastik 2 warna kapasitas 15 Liter. Cocok untuk rumah dan kantor.', '65 X 57 X 51', 12, 594000, 'DSC09946', 'CLEANING / KEBERSIHAN - DUSTBIN / TEMPAT SAMPAH', 14, '', ''),
(82, 1, 'Keranjang Sabun Plastik Bulat Playboy Dx', 'KMR - 101', '19,5 (d) x 12', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Galaxy Plast', 2700, 'Keranjang kecil bulat berwarna cerah bermotif kelinci dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '42 x 40 x 75', 288, 660000, 'keranjang mainan hijau.jpg', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(83, 2, 'Keranjang Sabun Plastik Bulat Playboy Hitam', 'KMR - 009', '19,5 (d) x 12', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Galaxy Plast', 1850, 'Keranjang kecil bulat berwarna hitam bermotif kelinci dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '38 x 37 x 100', 432, 673200, 'DSC09843', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(84, 3, 'Keranjang Segi Plastik Besar Nebula M', 'KMN - 103', '25 x 25 x 18', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft, kilap, gagang tebal dan kuat', 'Galaxy Plast', 4900, 'Keranjang segi berukuran sedang berwarna soft bermotif daun dengan 2 gagang plastik kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '50 x 24 x 108', 120, 495000, 'DSC09710', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(85, 4, 'Keranjang Segi Plastik Jumbo Nebula L', 'KMN - 102', '28 x 28 x 22', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft, kilap, gagang tebal dan kuat', 'Galaxy Plast', 6000, 'Keranjang segi besar berwarna soft bermotif daun dengan 2 gagang plastik kuning. Biasa digunakan untuk tempat alat mandi, belanjaan, slametan / syukuran / hajatan, hadiah, dll.', '56 x 24 x 110', 168, 847000, 'DSC09708', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(86, 5, 'Keranjang Pasar Segi Plastik Lorenza', 'KRL - 101', '32 x 23,5 x 29,5', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft, kilap, gagang tebal dan kuat', 'Pacific', 8500, 'Keranjang segi besar berwarna soft bermotif apel dengan 2 gagang plastik kuning. Biasa digunakan untuk tempat alat mandi, keranjang pasar, slametan / syukuran / hajatan, hadiah, dll.', '78 x 48 x 30', 72, 514800, 'DSC09801', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(87, 6, 'Keranjang Mainan Plastik Bulat Dx', 'KMB - 101', '18 (d) x 13', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2700, 'Keranjang kecil bulat berwarna cerah bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '42 x 40 x 75', 288, 660000, 'VGT_5133', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(88, 7, 'Keranjang Mainan Plastik Bulat Hitam', 'KMB - 009', '18 (d) x 13', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1850, 'Keranjang kecil bulat berwarna hitam bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '38 x 37 x 100', 432, 673200, 'VGT_5133', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(89, 8, 'Keranjang Mainan Plastik Segi 4 Dx', 'KMS - 104', '18 x 18 x 12', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2700, 'Keranjang kecil segi berwarna cerah bermotif batik dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '43 x 43 x 78', 288, 660000, 'DSC09838', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(90, 9, 'Keranjang Mainan Plastik Segi 4 Hitam', 'KMS - 109', '18 x 18 x 12', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1850, 'Keranjang kecil segi berwarna hitam bermotif batik dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '40 x 40 x 110', 432, 673200, '037_Pandastar_keranjang_mainan_segi4.jpg', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(91, 10, 'Keranjang Mainan Plastik Segi 8 Dx', 'KMS - 108', '19 x 19 x 12', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2700, 'Keranjang kecil segi 8 berwarna cerah bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '43 x 43 x 98', 288, 660000, 'VGT_4600', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(92, 11, 'Keranjang Mainan Plastik Segi 8 Hitam', 'KMS - 089', '19 x 19 x 12', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1850, 'Keranjang kecil segi 8 berwarna hitam bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '40 x 40 x 139', 432, 673200, 'DSC09701', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(93, 12, 'Keranjang Mainan Plastik Hati Dx', 'KMH - 111', '19 x 19 x 12', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2700, 'Keranjang kecil hati berwarna cerah bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '44 x 37 x 88', 288, 660000, 'VGT_5128', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(94, 13, 'Keranjang Mainan Plastik Hati Hitam', 'KMH - 019', '19 x 19 x 12', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1850, 'Keranjang kecil hati berwarna hitam bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah dll.', '40 x 36 x 127', 432, 673200, 'DSC09702', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(95, 14, 'Keranjang Mainan Plastik Oval Dx', 'KMO - 110', '22 x 15 x 18', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2700, 'Keranjang kecil oval berwarna cerah bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '47 x 30 x 87', 288, 660000, 'DSC09897', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(96, 15, 'Keranjang Mainan Plastik Oval Hitam', 'KMO - 009', '22 x 15 x 18', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1850, 'Keranjang kecil oval berwarna hitam bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '47 x 32 x 118', 432, 673200, 'VGT_5123', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(97, 16, 'Keranjang Mainan Plastik Bulat Besar Dx', 'KMB - 111', '19 (d) x 23,5', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 4300, 'Keranjang bulat berwarna cerah bermotif apel dengan gagang kawat kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '104 x 47,5 x 23,5', 120, 429000, 'VGT_5133', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(98, 17, 'Keranjang Mainan Plastik Bulat Besar Hitam', 'KMB - 119', '19 (d) x 23,5', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 3000, 'Keranjang bulat berwarna hitam bermotif apel dengan gagang kawat kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '104 x 47,5 x 23,5', 120, 297000, 'VGT_5133', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(99, 18, 'Keranjang Mainan Plastik Bulat Jumbo Dx', 'KMJ - 190', '24 (d) x 28', 'PP', 'Merah, Biru Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 7100, 'Keranjang bulat besar berwarna cerah bermotif apel dengan gagang kuning. Biasa digunakan untuk tempat alat mandi, slametan / syukuran / hajatan, hadiah, dll.', '92 x 59 x 29,5', 72, 429000, 'VGT_4620', 'BATHROOM / KAMAR MANDI - SOAP BASKETS / KERANJANG SABUN', 8, '', ''),
(100, 1, 'Hanger Baju Plastik Besar Florent', 'HAP - 001', '38,8 x 18,5', 'PP', 'Orange, Hijau, Pink', 'Tebal, kuat, kilap, warna cerah, ringan', 'Galaxy Plast', 1800, 'Gantungan baju / pakaian dewasa plastik berwarna cerah tebal berbentuk pipa (bulat). Memaksimalkan isi pakaian di lemari.', '104 x 54 x 30', 576, 858000, 'DSC01742 edit.jpg', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(101, 2, 'Hanger Baby Plastik Florent', 'HAP - 101', '29 x 15,5', 'PP', 'Orange, Hijau, Pink', 'Tebal, kuat, kilap, warna cerah, ringan', 'Galaxy Plast', 900, 'Gantungan baju / pakaian anak plastik berwarna cerah tebal berbentuk pipa (bulat). Memaksimalkan isi pakaian di lemari.', '64 x 34 x 90', 1152, 836000, 'hanger2.jpg', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(102, 3, 'Hanger Baby Plastik Soft', 'HME - 101', '29 x 15,5', 'PP', 'Soft Hijau, Pink, Biru', 'Tebal, kuat, kilap, warna soft, ringan', 'Galaxy Plast', 700, 'Gantungan baju / pakaian anak plastik berwarna soft tebal berbentuk pipa (bulat). Memaksimalkan isi pakaian di lemari.', '64 x 34 x 90', 1152, 660000, 'DSC09766', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(103, 4, 'Hanger Baju Plastik Fantasy Florent', 'HAG - 241', '35 x 19', 'PP', 'Orange, Hijau, Pink', 'Kuat, kilap, warna cerah, ringan', 'Panda Star', 1100, 'Gantungan baju / pakaian dewasa plastik berwarna cerah berbentuk pipa (bulat). Memaksimalkan isi pakaian di lemari.', '120 x 47,5 x 37', 864, 792000, 'VGT_4770', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(104, 5, 'Hanger Baju Plastik Fantasy Hitam', 'HAG - 249', '35 x 19', 'PP', 'Hitam', 'Kuat dan kilap, ringan', 'Panda Star', 600, 'Gantungan baju / pakaian dewasa plastik berwarna hitam berbentuk pipa (bulat). Memaksimalkan isi pakaian di lemari. Cocok untuk bisnis laundry dan dry clean.', '120 x 47,5 x 37', 864, 415800, 'VGT_4770', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(105, 6, 'Folding Hanger Plastik 20 Sticks', 'HAF - 120', '12 (d) x 38,5', 'PP', 'Pelangi', 'Kuat, kilap, warna cerah', 'Panda Star', 9750, 'Gantungan baju / pakaian lipat warna-warni otomatis dengan 20 gagang. Cocok untuk pakaian bayi, pakaian dalam, dan barang kecil lainnya. Bisa digantung di mana saja.', '74 x 73 x 40', 36, 297000, 'VGT_4786', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(106, 7, 'Folding Hanger Plastik 24 Sticks', 'HAF - 124', '13,5 (d) x 39', 'PP', 'Pelangi', 'Kuat, kilap, warna cerah', 'Panda Star', 13000, 'Gantungan baju / pakaian lipat warna-warni otomatis dengan 24 gagang. Cocok untuk pakaian bayi, pakaian dalam, dan barang kecil lainnya. Bisa digantung di mana saja.', '88 x 58 x 40', 24, 264000, 'VGT_4786', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(107, 8, 'Folding Hanger Plastik 32 Sticks', 'HAF - 132', '17 (d) x 39,5', 'PP', 'Pelangi', 'Kuat, kilap, warna cerah', 'Panda Star', 19500, 'Gantungan baju / pakaian lipat warna-warni otomatis dengan 32 gagang. Cocok untuk pakaian bayi, pakaian dalam, dan barang kecil lainnya. Bisa digantung di mana saja.', '77 x 58 x 40', 12, 198000, 'VGT_4786', 'BATHROOM / KAMAR MANDI - HANGER / GANTUNGAN BAJU', 9, '', ''),
(108, 9, 'Keranjang Pakaian Plastik Casandra', 'KPC - 108', '55 x 34 x 17', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat, ringan', 'Pacific', 12500, 'Keranjang baju / pakaian segi besar plastik berwarna cerah. Biasa digunakan untuk pakaian, wadah jualan makanan, dll.', '56 x 48 x 34', 60, 632500, 'DSC09868', 'BATHROOM / KAMAR MANDI - LAUNDRY BASKET / KERANJANG BAJU', 10, '', ''),
(109, 10, 'Keranjang Baju Plastik Cleopatra', 'KPC - 022', '55 x 35 x 19', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal dan kuat, ringan', 'Pacific', 15700, 'Keranjang baju / pakaian segi besar plastik berwarna cerah. Biasa digunakan untuk pakaian, wadah jualan makanan, dll. ', '55 x 35 x 40', 48, 638000, 'Keranjang Pakaian Cleopatra.jpg', 'BATHROOM / KAMAR MANDI - LAUNDRY BASKET / KERANJANG BAJU', 10, '', ''),
(110, 12, 'Keranjang Laundry Plastik Pamela', 'KLP - 001', '45 x 32 x 50', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, engsel di dalam', 'Pacific', 40700, 'Keranjang baju / pakaian segi plastik besar berwarna cerah dengan tutup. Cocok digunakan untuk pakaian kotor / bersih, dll.', '62 x 47 x 85', 18, 618750, 'DSC09749', 'BATHROOM / KAMAR MANDI - LAUNDRY BASKET / KERANJANG BAJU', 10, '', ''),
(111, 13, 'Keranjang Industri Plastik Jasmine', 'KPJ - 001', '56,5 x 42 x 34', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang warna kuning', 'Pacific', 32500, 'Keranjang baju / pakaian segi plastik besar berwarna soft dengan tutup. Cocok digunakan untuk pakaian, piring, dll.', '70 x 56 x 43', 18, 495000, 'IMG_3343', 'BATHROOM / KAMAR MANDI - LAUNDRY BASKET / KERANJANG BAJU', 10, '', ''),
(112, 1, 'Tempat Surat Plastik 008 Dx', 'TSR - 008', '28,5 x 13,5 x 4', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah dan kilap', 'Panda Star', 1500, 'Tempat / keranjang plastik persegi panjang kecil berwarna cerah. Biasa digunakan untuk tempat surat, dokumen, spare part, dll.', '56 x 28 x 90', 480, 594000, 'VGT_4575', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(113, 2, 'Tempat Surat Plastik 108 Dx', 'TSU - 108', '30 x 14 x 8,8', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft dan tebal', 'Pacific', 2200, 'Tempat / keranjang plastik segi kecil berwarna soft. Biasa digunakan untuk tempat surat, dokumen, spare part, dll.', '115 X 60 X 23', 192, 352000, 'DSC09895', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(114, 3, 'Tempat Surat Plastik 208 Dx', 'TSU - 128', '33,4 x 27 x 9,6', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft dan tebal', 'Pacific', 3900, 'Tempat / keranjang plastik segi tanggung berwarna soft. Biasa digunakan untuk tempat surat, dokumen, spare part, wadah jualan makanan, dll.', '112 x 55 x 31', 168, 554400, 'DSC09723', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(115, 4, 'Tempat Surat Plastik 308 Dx', 'TSU - 138', '39 x 30 x 11', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft dan tebal', 'Pacific', 5400, 'Tempat / keranjang plastik segi besar berwarna soft. Biasa digunakan untuk tempat surat, dokumen, spare part, wadah jualan makanan, dll.', '115 x 60 x 37', 168, 770000, 'DSC09724', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(116, 5, 'Tempat Surat Plastik 408 Dx', 'TSU - 148', '45 x 34,5 x 12,5', 'PP', 'Soft Biru, Hijau, Pink', 'Warna soft dan tebal', 'Pacific', 7600, 'Tempat / keranjang plastik segi super besar berwarna soft. Biasa digunakan untuk tempat surat, dokumen, spare part, wadah jualan makanan, dll.', '45 x 35 x 45', 72, 462000, 'DSC09836', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(117, 6, 'Rak Sepatu Plastik Miring Jenny Susun 3 Abu', 'RKJ - 003', '53,5 x 23 x 58,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 29250, 'Rak sepatu plastik berwarna cerah dengan permukaan miring susun 3. Cocok digunakan di rumah dan kantor.', '72 x 50,2 x 53', 18, 445500, 'DSC09825', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(118, 7, 'Rak Sepatu Plastik Miring Jenny Susun 3 Florent', 'RKJ - 203', '53,5 x 23 x 58,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 42250, 'Rak sepatu plastik berwarna cerah dengan permukaan miring susun 4. Cocok digunakan di rumah dan kantor.', '72 x 50,2 x 53', 18, 643500, 'VGT_4943', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(119, 8, 'Rak Sepatu Plastik Miring Jenny Susun 4 Abu', 'RKJ - 004', '53,5 x 23 x 79,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 35750, 'Rak sepatu plastik berwarna cerah dengan permukaan miring susun 5. Cocok digunakan di rumah dan kantor.', '73,4 x 56,2 x 57,2', 15, 453750, 'DSC09826', 'OFFICE / KANTOR - RACKS / RAK', 18, '', '');
INSERT INTO `list_product` (`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `o`, `p`, `q`, `r`, `s`, `t`) VALUES
(120, 9, 'Rak Sepatu Plastik Miring Jenny Susun 4 Florent', 'RKJ - 204', '53,5 x 23 x 79,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 55250, 'Rak sepatu plastik 2 warna dengan permukaan miring susun 3. Cocok digunakan di rumah dan kantor.', '73,4 x 56,2 x 57,2', 15, 701250, 'VGT_4943', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(121, 10, 'Rak Sepatu Plastik Miring Jenny Susun 5 Abu', 'RKJ - 005', '53,5 x 23 x 100,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 42250, 'Rak sepatu plastik 2 warna dengan permukaan miring susun 4. Cocok digunakan di rumah dan kantor.', '73,4 x 56,2 x 57,2', 12, 429000, 'DSC09827', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(122, 11, 'Rak Sepatu Plastik Miring Jenny Susun 5 Florent', 'RKJ - 205', '53,5 x 23 x 100,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 68250, 'Rak sepatu plastik 2 warna dengan permukaan miring susun 5. Cocok digunakan di rumah dan kantor.', '73,4 x 56,2 x 57,2', 12, 693000, 'VGT_4943', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(123, 12, 'Rak Sepatu Plastik Lurus Jupe Susun 3 Abu', 'RKU - 003', '53,5 x 20 x 58,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 24100, 'Rak sepatu plastik berwarna cerah dengan permukaan lurus susun 3. Cocok digunakan di rumah dan kantor.', '63,2 x 48,8 x 56', 18, 366300, 'VGT_4345', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(124, 13, 'Rak Sepatu Plastik Lurus Jupe Susun 3 Florent', 'RKU - 203', '53,5 x 20 x 58,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 35750, 'Rak sepatu plastik berwarna cerah dengan permukaan lurus susun 4. Cocok digunakan di rumah dan kantor.', '63,2 x 48,8 x 56', 18, 544500, '064_Pandastar_raksusunjupe3.jpg', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(125, 14, 'Rak Sepatu Plastik Lurus Jupe Susun 4 Abu', 'RKU - 004', '53,5 x 20 x 79,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 31200, 'Rak sepatu plastik berwarna cerah dengan permukaan lurus susun 5. Cocok digunakan di rumah dan kantor.', '65 x 52 x 56', 15, 396000, 'VGT_4345', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(126, 15, 'Rak Sepatu Plastik Lurus Jupe Susun 4 Florent', 'RKU - 204', '53,5 x 20 x 79,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 42250, 'Rak sepatu plastik 2 warna dengan permukaan lurus susun 3. Cocok digunakan di rumah dan kantor.', '65 x 52 x 56', 15, 536250, '064_Pandastar_raksusunjupe3.jpg', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(127, 16, 'Rak Sepatu Plastik Lurus Jupe Susun 5 Abu', 'RKU - 005', '53,5 x 20 x 100,5', 'PP', 'Abu - abu dan Hitam', '2 warna, kilap, kuat', 'Panda Star', 37700, 'Rak sepatu plastik 2 warna dengan permukaan lurus susun 4. Cocok digunakan di rumah dan kantor.', '65 x 52 x 56', 12, 382800, 'VGT_4345', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(128, 17, 'Rak Sepatu Plastik Lurus Jupe Susun 5 Florent', 'RKU - 205', '53,5 x 20 x 100,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 48750, 'Rak sepatu plastik 2 warna dengan permukaan lurus susun 5. Cocok digunakan di rumah dan kantor.', '65 x 52 x 56', 12, 495000, '064_Pandastar_raksusunjupe3.jpg', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(129, 18, 'Rak Map Plastik Luxy Susun 3', 'RKX - 011', '38 x 26,5 x 51,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 26000, 'Rak map / dokumen plastik berwarna cerah susun 3 serbaguna. Cocok digunakan untuk map, surat, dan rak bumbu.', '121,8 x 79 x 29,6', 24, 528000, 'VGT_4318', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(130, 19, 'Rak Roda Plastik Valencia Susun 4', 'RRV - 003', '49 x 32,5 x 89', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan kuat', 'Pacific', 84500, 'Rak plastik berwarna cerah susun 4 dengan roda plastik di bawah serbaguna.  Cocok digunakan untuk salon, kantor, rumah, dll. ', '67,5 x 50 x 85', 8, 572000, 'Rak Roda Valencia.jpg', 'OFFICE / KANTOR - RACKS / RAK', 18, '', ''),
(131, 20, 'Kursi Plastik Bulat Kecil', 'KUR - 006', '19,5 (d) x 14,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 5500, 'Kursi kecil pendek plastik bulat berwarna cerah serbaguna. Cocok digunakan untuk anak-anak dan pijakan.', '110 x 48 x 25', 72, 330000, '021_Kursi Bulat.jpg', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, 'OTHERS / LAIN-LAIN - KIDS / ANAK-ANAK', '37'),
(132, 21, 'Kursi Pendek Segi Plastik', 'KSI - 001', '21,7 x 21,7 x 15,2', 'PP', 'Biru, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Pacific', 6500, 'Kursi kecil pendek plastik segi berwarna soft serbaguna. Cocok digunakan untuk anak-anak dan pijakan.', '74 x 45 x 45', 72, 396000, 'DSC09870', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, 'OTHERS / LAIN-LAIN - KIDS / ANAK-ANAK', '37'),
(133, 22, 'Kursi Pendek Bulat Plastik', 'KBL - 001', '23,5 (d) x 20,5', 'PP', 'Biru, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Pacific', 7800, 'Kursi kecil pendek plastik bulat berwarna soft serbaguna. Cocok digunakan untuk anak-anak dan pijakan.', '106 x 52 x 23', 60, 396000, 'DSC09893', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, 'OTHERS / LAIN-LAIN - KIDS / ANAK-ANAK', '37'),
(134, 23, 'Kursi Sandar Anak Plastik Kiddo', 'KRK - 001', '35 x 35 x 38', 'PP', 'Putih dan Biru, Hijau, Pink', '2 warna, kilap, kuat', 'Pacific', 32500, 'Kursi kecil pendek dengan sandaran dan tempat tangan plastik 2 warna dengan gambar di tempat dudukannya. Cocok untuk anak-anak.', '74,5 x 36 x 77', 24, 660000, 'IMG_3299', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, 'OTHERS / LAIN-LAIN - KIDS / ANAK-ANAK', '37'),
(135, 24, 'Kursi Baso Plastik Platinum Dx', 'KSI - 113', '26 x 26 x 45', 'PP', 'Biru, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Pacific', 24400, 'Kursi / dingklek plastik berwarna cerah. Biasa digunakan di warung / depot / rumah makan / rumah.', '36 x 36 x 86,7', 12, 247500, 'DSC09851', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, '', ''),
(136, 25, 'Kursi Baso Plastik Platinum Hitam', 'KSI - 114', '26 x 26 x 45', 'PP', 'Hitam', 'Kilap dan kuat', 'Pacific', 15700, 'Kursi / dingklek plastik berwarna hitam. Biasa digunakan di warung / depot / rumah makan / rumah.', '36 x 36 x 86,7', 12, 159500, 'DSC09818', 'OFFICE / KANTOR - CHAIRS / KURSI', 19, '', ''),
(137, 26, 'Tempat Kancing Plastik Segi no. 2 Putih', 'TKC - 002', '10 x 8,5 x 4', 'PP', 'Putih', 'Kilap, kuat, warna putih bersih', 'Panda Star', 1150, 'Kotak plastik kecil berwarna putih serbaguna. Biasa digunakan untuk wadah makanan, penyimpanan parts, kancing, dll. ', '65 x 30,5 x 26', 480, 462000, 'VGT_5121', 'OFFICE / KANTOR - OTHERS / LAIN-LAIN', 20, '', ''),
(138, 27, 'Tempat Kancing Plastik Segi no. 3 Putih', 'TKC - 003', '20 x 8 x 4', 'PP', 'Putih', 'Kilap, kuat, warna putih bersih', 'Panda Star', 1800, 'Kotak plastik kecil berwarna putih serbaguna. Biasa digunakan untuk wadah makanan, penyimpanan parts, kancing, dll. ', '66 x 45 x 40', 600, 907500, 'VGT_5121', 'OFFICE / KANTOR - OTHERS / LAIN-LAIN', 20, '', ''),
(139, 28, 'Keranjang Venus S', 'BVN - 002', '24 x 19 x 10,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, kuat, tebal, ringan', 'Galaxy Plast', 13000, 'Tempat / box segi kecil berwarna cerah dengan tutup serbaguna. Cocok untuk wadah makanan, dokumen, file, surat, slametan/syukuran, dll.', '77 x 52 x 43', 96, 1056000, 'DSC09753', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(140, 29, 'Keranjang Venus M', 'BVN - 001', '31 x 25,5 x 13,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, kuat, tebal, ringan', 'Galaxy Plast', 19500, 'Tempat / box segi kecil berwarna cerah dengan tutup serbaguna. Cocok untuk wadah makanan, dokumen, file, surat, slametan/syukuran, dll.', '77 x 52 x 43', 48, 792000, 'DSC09754', 'OFFICE / KANTOR - DOCUMENT BASKETS / KERANJANG DOKUMEN', 17, '', ''),
(141, 1, 'Tempat Sendok Klasik Plastik', 'TSG - 005', '10 x 10 x 13,5', 'PP', 'Orange, Ungu, Hijau, Pink', 'Tebal dan warna cerah', 'Galaxy Plast', 1650, 'Tempat / wadah sendok / garpu / pisau plastik segi berwarna cerah. Biasa digunakan di depot / warung / rumah makan / restoran, rumah, toilet. ', '97 x 60 x 29', 120, 165000, 'tskpink (4).jpg', 'KITCHEN / DAPUR - UTENSIL HOLDER / TEMPAT SENDOK', 21, '', ''),
(142, 2, 'Tempat Sendok Plastik K1', 'TSN - 001', '9,4 x 9,4 x 14,5', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 1400, 'Tempat / wadah sendok / garpu / pisau plastik segi berwarna cerah. Biasa digunakan di depot / warung / rumah makan / restoran, rumah, toilet. ', '', 7200, 825000, '', 'KITCHEN / DAPUR - UTENSIL HOLDER / TEMPAT SENDOK', 21, '', ''),
(143, 3, 'Tempat Sendok Plastik K2', 'TSN - 003', '18 x 9 x 14,1', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 2300, 'Tempat / wadah sendok  plastik segi dengan sekat berwarna cerah. Bisa juga digantung di tembok. Biasa digunakan di depot / warung / rumah makan / restoran, rumah, toilet. ', '69 X 44 X 35', 2400, 462000, 'Tempat sendok K2.jpg', 'KITCHEN / DAPUR - UTENSIL HOLDER / TEMPAT SENDOK', 21, '', ''),
(144, 4, 'Tempat Sendok Plastik K8', 'TSN - 008', '11 x 11 x 15', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 1950, 'Tempat / wadah sendok / garpu / pisau plastik segi 8 berwarna cerah. Biasa digunakan di depot / warung / rumah makan / restoran, rumah, kamar mandi. ', '108 X 62 X 34', 2400, 396000, 'Tempat sendok K8.jpg', 'KITCHEN / DAPUR - UTENSIL HOLDER / TEMPAT SENDOK', 21, '', ''),
(145, 5, 'Corong Plastik 20 Dx', 'COR - 120', '20 (d) x 19', 'PP', 'Merah, Hijau, Biru Cerah', 'Tebal dan warna cerah', 'Pacific', 2950, 'Corong plastik besar berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '92 x 37 x 40', 192, 475200, 'DSC09798', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(146, 6, 'Corong Plastik 25 Dx', 'COR - 125', '25 (d) x 24', 'PP', 'Merah, Hijau, Biru Cerah', 'Tebal dan warna cerah', 'Pacific', 4500, 'Corong plastik besar berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '95 x 47 x 49', 144, 554400, 'DSC09799', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(147, 7, 'Corong Plastik 30 Dx', 'COR - 130', '30 (d) x 28', 'PP', 'Merah, Hijau, Biru Cerah', 'Tebal dan warna cerah', 'Pacific', 7050, 'Corong plastik besar berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '135 x 60 x 27', 84, 500500, 'DSC09800', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(148, 8, 'Saringan Plastik Teh 7 Dx', 'SAR - 107', '8 (d) x 6,5 x 4,2', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 900, 'Saringan plastik dengan tangkai dan kuping berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan teh / kopi / minyak, dll. ', '53 x 39 x 37', 1152, 844800, 'Saringan teh.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(149, 9, 'Saringan Plastik Teh 8 Dx', 'SAR - 108', '9 (d) x 5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 1050, 'Saringan plastik dengan tangkai dan kuping berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan teh / kopi / minyak, dll. ', '38 x 38,5 x 84', 1152, 1003200, 'Saringan teh.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(150, 10, 'Saringan Plastik Teh 10 Dx', 'SAR - 110', '11 (d) x 5,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 1200, 'Saringan plastik dengan tangkai dan kuping berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan teh / kopi / minyak, dll. ', '64,5 x 32,5 x 88', 1152, 1161600, 'Saringan teh.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(151, 11, 'Saringan Plastik Teh 12 Dx', 'SAR - 112', '12 (d) x 5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 1500, 'Saringan plastik dengan tangkai dan kuping berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan teh / kopi / minyak, dll. ', '48 x 42 x 68', 768, 985600, 'Saringan teh.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(152, 12, 'Saringan PlastikTeh 15 Dx', 'SAR - 115', '15,6 x 5,2', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 1900, 'Saringan plastik dengan tangkai dan kuping berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan teh / kopi / minyak, dll. ', '56,7 x 45 x 84,6', 768, 1232000, 'Saringan teh.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(153, 13, 'Saringan Plastik Santan 18 Dx', 'SAS - 118', '19 (d) x 5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 2500, 'Saringan plastik dengan pegangan berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan santan, minyak, dll. ', '76,5 x 37,5 x 70', 576, 1214400, 'Saringan santan.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(154, 14, 'Saringan Plastik Santan 20 Dx', 'SAS - 120', '20 (d) x 4,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 2700, 'Saringan plastik dengan pegangan berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan santan, minyak, dll. ', '61 x 41 x 62', 432, 990000, 'Saringan santan.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(155, 15, 'Saringan Plastik Santan 22 Dx', 'SAS - 122', '22,5 (d) x 5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 2950, 'Saringan plastik dengan pegangan berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan santan, minyak, dll. ', '68,4 x 45,7 x 71', 432, 1069200, 'Saringan santan.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(156, 16, 'Saringan Plastik Santan 24 Dx', 'SAS - 124', '24,5 (d) x 5', 'PP', 'Merah, Hijau, Biru Cerah', 'Saringan putih dan kuat', 'Pacific', 3250, 'Saringan plastik dengan pegangan berwarna cerah dan saringan berwarna putih serbaguna. Biasa digunakan untuk saringan santan, minyak, dll. ', '75 x 50 x 64', 432, 1188000, 'Saringan santan.jpg', 'KITCHEN / DAPUR - STRAINER / SARINGAN', 23, '', ''),
(157, 17, 'Rak Piring Piring Monaco S/2', 'RPM - 002', '41 x 28 x 34,5', 'PP', 'Pink, Hijau, Orange', '2 warna (body putih) dan ada nampan. Tidak perlu baut. Anti karat.', 'Pacific', 52000, 'Rak piring plastik 2 warna tanpa baut susun 2 dengan nampan di dasarnya. Memiliki tempat khusus untuk piring dan sendok garpu. ', '85,5 x 62,5 x 76', 24, 1056000, 'IMG_3339-2', 'KITCHEN / DAPUR - KITCHEN RACKS / RAK DAPUR', 24, '', ''),
(158, 18, 'Rak Piring Piring Monaco S/3', 'RPM - 003', '41 x 28 x 46', 'PP', 'Pink, Hijau, Orange', '2 warna (body putih) dan ada nampan. Tidak perlu baut. Anti karat.', 'Pacific', 65000, 'Rak piring plastik 2 warna tanpa baut susun 3 dengan nampan di dasarnya. Memiliki tempat khusus untuk piring dan sendok garpu. ', '95 x 62,5 x 80', 24, 1320000, 'DSC09747', 'KITCHEN / DAPUR - KITCHEN RACKS / RAK DAPUR', 24, '', ''),
(159, 19, 'Tempat Tissue Plastik Klasik', 'TSU - 001', '10,5 x 8,8 x 14,5', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 1900, 'Tempat tisu plastik berwarna cerah berbentuk segitiga. Biasa digunakan di depot / warung/ rumah makan, dll. ', '77 x 77 x 45', 432, 693000, 'DSC09712', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(160, 20, 'Tutup Saji Segi Plastik Stella', 'TPS - 002', '62 x 47,5 x 20,5', 'PP', 'Pink, Hijau, Orange', 'Tebal, warna cerah, bisa digantung', 'Pacific', 21200, 'Tudung saji / penyungkup makanan plastik besar berwarna cerah berbentuk segi. Bisa digantung jika tidak digunakan. Biasa digunakan di ruang makan, depot, restaurant, dll. ', '63 x 49,5 x 57', 36, 643500, 'IMG_3341', 'KITCHEN / DAPUR - FOOD COVER / TUDUNG SAJI', 26, '', ''),
(161, 21, 'Tutup Saji Bulat PLastik Bianca', 'TPB - 003', '56,5 (d) x 17,5', 'PP', 'Pink, Hijau, Orange', 'Tebal, warna cerah, bisa digantung', 'Pacific', 16250, 'Tudung saji / penyungkup makanan plastik besar berwarna cerah berbentuk bulat. Bisa digantung jika tidak digunakan. Biasa digunakan di ruang makan, depot, restaurant, dll. ', '58 x 58 x 63', 48, 660000, 'DSC09745', 'KITCHEN / DAPUR - FOOD COVER / TUDUNG SAJI', 26, '', ''),
(162, 22, 'Glass Stand Vacuum Plastik', 'GST - 005', '26,5 x 16,8 x 19,5', 'PP', 'Pink, Hijau, Orange', 'Kuat, warna cerah, isi banyak, bisa digantung', 'Pacific', 7600, 'Tempat / rak pengering gelas plastik berwarna cerah. Cocok untuk tempat gelas bersih.', '79 x 50 x 37', 108, 693000, 'DSC09883', 'KITCHEN / DAPUR - KITCHEN RACKS / RAK DAPUR', 24, '', ''),
(163, 23, 'Corong Plastik 9 Florent', 'COR - 290', '8 (d) x 8', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, bisa digantung', 'Panda Star', 450, 'Corong plastik kecil berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '157 x 56 x 35,5', 2880, 1056000, 'VGT_4508', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(164, 24, 'Corong Plastik 12 Florent', 'COR - 212', '11,5 (d) x 10', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 900, 'Corong plastik kecil berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '113 x 56 x 30', 1440, 1056000, 'VGT_4508', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(165, 25, 'Corong Plastik 15 Florent', 'COR - 215', '14,5 (d) x 13', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, kuat', 'Panda Star', 1500, 'Corong plastik kecil berwarna cerah serbaguna. Biasa digunakan untuk air, minyak, dan cairan lainnya. ', '112 x 57,8 x 28,8', 600, 742500, 'VGT_4508', 'KITCHEN / DAPUR - FUNNEL / CORONG', 22, '', ''),
(166, 26, 'Glass Tray S Plastik isi 8', 'GTP - 701', '28 x 17 x 14', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, kilap', 'Panda Star', 8200, 'Tempat / rak aqua plastik berwarna cerah isi 8. Biasa digunakan untuk tempat air mineral gelas / botol. ', '54 x 55,5 x 58', 144, 990000, 'DSC09716', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(167, 27, 'Glass Tray M Plastik isi 12', 'GTP - 702', '31 x 21 x 14', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, kilap', 'Panda Star', 10300, 'Tempat / rak aqua plastik berwarna cerah isi 12. Biasa digunakan untuk tempat air mineral gelas / botol. ', '69,5 x 62 x 57,5', 144, 1254000, 'DSC09715', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(168, 28, 'Glass Tray L Plastik isi 16', 'GTP - 703', '31 x 28 x 14', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, kilap', 'Panda Star', 11500, 'Tempat / rak aqua plastik berwarna cerah isi 16. Biasa digunakan untuk tempat air mineral gelas / botol. ', '61,5 x 61,5 x 56,5', 108, 924000, 'DSC09717', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(169, 29, 'Nampan Plastik 01 Dx', 'NMP - 101', '22,5 x 18 x 3,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 1900, 'Nampan / baki segi plastik berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '57 x 26 x 79', 420, 577500, 'VGT_4582', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(170, 30, 'Nampan Plastik 02 Dx', 'NMP - 102', '26,5 x 21,5 x 3,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 2600, 'Nampan / baki segi plastik berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '69 x 28 x 52', 420, 792000, 'VGT_4582', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(171, 31, 'Nampan Plastik 03 Dx', 'NMP - 103', '32 x 24 x 4,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 3900, 'Nampan / baki segi plastik berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '59 x 52 x 34', 192, 633600, 'VGT_4582', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(172, 32, 'Nampan Plastik 04 Dx', 'NMP - 104', '36 x 28 x 5,5', 'PP', 'Merah, Hijau, Biru Cerah', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 5500, 'Nampan / baki segi plastik berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '58,5 x 56,5 x 37', 120, 561000, 'VGT_4582', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(173, 33, 'Nampan Plastik 01 Super', 'NMP - 301', '22,5 x 18 x 3,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 1300, 'Nampan / baki segi plastik berwarna-warni serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '54 x 23 x 47', 420, 396000, 'DSC09719', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(174, 34, 'Nampan Plastik 02 Super', 'NMP - 302', '26,5 x 21,5 x 3,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 1950, 'Nampan / baki segi plastik berwarna-warni serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '65,5 x 44 x 26', 420, 594000, 'DSC09719', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(175, 35, 'Nampan Plastik 03 Super', 'NMP - 303', '32 x 24 x 4,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 2600, 'Nampan / baki segi plastik berwarna-warni serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '102 x 31,5 x 24', 192, 422400, 'DSC09720', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(176, 36, 'Nampan Plastik 04 Super', 'NMP - 304', '36 x 28 x 5,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 3400, 'Nampan / baki segi plastik berwarna-warni serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '56 x 43 x 35,8', 120, 346500, 'DSC09720', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(177, 37, 'Nampan Plastik 04 Tinggi Dx', 'NMP - 144', '35,5 x 27,5 x 7', 'PP', 'Merah, Hijau, Biru', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 7000, 'Nampan / baki segi plastik tinggi berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '99 x 55,6 x 37', 120, 715000, 'DSC09722', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(178, 38, 'Lengser Plastik Bulat 034 Sablon', 'NLF - 334', '30 (d) x 4,8', 'PP', 'Pink, Hijau, Orange', 'Warna cerah, tebal, tidak bengkok, kilap, ada gambar sablon', 'Panda Star', 3900, 'Lengser / nampan / baki bulat plastik berwarna cerah dengan gambar sablon serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '33 x 33 x 100,5', 240, 792000, 'DSC09771', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(179, 39, 'Lengser Plastik Bulat 035 Florent', 'NLF - 235', '36 (d) x 5,5', 'PP', 'Pink, Hijau, Orange', 'Warna cerah, tebal, tidak bengkok, kilap', 'Panda Star', 5000, 'Lengser / nampan / baki bulat plastik berwarna cerah serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '36 x 36 x 112', 180, 759000, 'DSC09706', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(180, 40, 'Lengser Plastik Bulat 035 Super', 'NLF - 335', '36 (d) x 5,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 3400, 'Lengser / nampan / baki bulat plastik berwarna-warni serbaguna. Biasa digunakan untuk penyajian makanan, kebutuhan industri, pembuatan jeli, dll. ', '36 x 36 x 112', 180, 511500, 'DSC09707', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(181, 41, 'Rak Bumbu Plastik Yummy', 'BYP - 001', '33,5 x 12,5 x 24', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kuat, tebal, kilap, ada sendok bening kecil di setiap toples', 'Panda Star', 24500, 'Rak bumbu plastik yang terdiri dari rak, toples, dan sendok plastik. Biasa digunakan untuk wadah bumbu, rempah-rempah, dll. ', '79,5 x 68,5 x 62', 48, 990000, 'DSC09746', 'KITCHEN / DAPUR - KITCHEN RACKS / RAK DAPUR', 24, '', ''),
(182, 42, 'Tampah Plastik 50 Hitam', 'TPH - 009', '50 (d) x 5,5', 'PP', 'Hitam', 'Tebal, tidak bengkok, kilap', 'Panda Star', 5700, 'Tampah / nyiru / tampi bulat plastik kecil berwarna hitam. Biasa digunakan untuk beras, gabah, dll. ', '71 x 50,6 x 50,6', 96, 462000, 'VGT_4953', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(183, 43, 'Tampah Plastik 50 Super', 'TPH - 309', '50 (d) x 5,5', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Panda Star', 6900, 'Tampah / nyiru / tampi bulat plastik kecil berwarna-warni. Biasa digunakan untuk beras, gabah, dll. ', '71 x 50,6 x 50,6', 96, 554400, 'VGT_4953', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(184, 44, 'Tempat Sambal Plastik Bulat', 'TSB - 002', '11 (d) x 6', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, ada sendok', 'Panda Star', 1600, 'Tempat / wadah plastik bulat berwarna-warni dengan sendok. Biasa digunakan untuk bumbu, sambal, acar, dll. Cocok untuk depot / warung / rumah makan / restoran, dll. ', '', 960, 1276000, 'VGT_4456', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(185, 45, 'Tempat Sambal Plastik Oval', 'TSB - 001', '15 x 11 x 4,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, ada sendok', 'Panda Star', 1750, 'Tempat / wadah plastik oval berwarna-warni dengan sendok. Biasa digunakan untuk bumbu, sambal, acar, dll. Cocok untuk depot / warung / rumah makan / restoran, dll. ', '70 x 46,8 x 55,7', 720, 1056000, '006_Pandastar_tempat_sambal_oval.jpg', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(186, 46, 'Tempat Sendok Duduk Plastik K2', 'TSN - 002', '12 x 8 x 15', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, tebal, kilap', 'Panda Star', 1900, 'Tempat / wadah sendok  plastik segi dengan sekat berwarna cerah. Biasa digunakan di depot / warung / rumah makan / restoran, rumah, kamar mandi.', '84 x 49,5 x 25', 216, 346500, 'VGT_4523', 'KITCHEN / DAPUR - UTENSIL HOLDER / TEMPAT SENDOK', 21, '', ''),
(187, 47, 'Tutup Sayur Segi Kecil Plastik', 'TPS - 001', '25 x 25 x 12', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan kilap', 'Panda Star', 2600, 'Tudung saji / penyungkup makanan plastik berwarna cerah berbentuk segi berukuran kecil. Bisa digantung jika tidak digunakan. Biasa digunakan di ruang makan, depot, restaurant, dll. ', '', 216, 475200, 'DSC09699', 'KITCHEN / DAPUR - FOOD COVER / TUDUNG SAJI', 26, '', ''),
(188, 48, 'Tampah Plastik 20 Hitam', 'TMP - 029', '40 (d) x 4', 'PP', 'Hitam', 'Tebal, tidak bengkok, kilap', 'Bison Star', 3250, 'Tampah / nyiru / tampi bulat plastik besar berwarna hitam. Biasa digunakan untuk beras, gabah, dll.', '67 X 40 X 40', 144, 396000, 'DSC09813', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(189, 49, 'Tampah Plastik 20 Super', 'TMP - 320', '40 (d) x 4', 'PP', 'Merah, Hijau, Biru', 'Tebal, tidak bengkok, kilap', 'Bison Star', 3900, 'Tampah / nyiru / tampi bulat plastik besar berwarna-warni. Biasa digunakan untuk beras, gabah, dll. ', '67 X 40 X 40', 144, 475200, 'DSC09815', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(190, 50, 'Tampah Plastik 65 Dx', 'TMP - 165', '59 (d) x 4', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, kilap, tidak bengkok', 'Bison Star', 18000, 'Tampah / nyiru / tampi bulat plastik besar berwarna cerah. Biasa digunakan untuk beras, gabah, dll. ', '61 x 61 x 15', 36, 544500, 'DSC09817', 'KITCHEN / DAPUR - TRAY / NAMPAN', 25, '', ''),
(191, 51, 'Tempat Tissue Roll Plastik', 'TSP-208', '17 x 17 x 17', 'PP', 'Soft biru, hijau, pink', '2 warna, model unik, tebal, kilap', 'Galaxy Plast', 6500, 'Tempat / wadah tissue roll 2 warna berbentuk unik dan lucu. Dapat digunakan dengan semua macam tissue roll (kecil, sedang, besar).', '61 x 54 x 53', 108, 594000, 'DSC09898', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(192, 1, 'Mangkok Plastik 806 Dx', 'MGO - 106', '14,5 (d) x 5,6', 'PP', 'Merah, Biru, Hijau', 'Murah dan tidak mudah pecah', 'Galaxy Plast', 600, 'Mangkok / mangkuk plastik bulat kecil berwarna cerah serbaguna. Biasa digunakan untuk wadah makanan, tempat kobokan / cuci tangan, dll.', '100 x 68 x 26', 1200, 605000, 'mk 806.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(193, 2, 'Mangkok Daun Plastik Midori', 'MMG - 001', '20 x 12,5 x 6', 'PP', 'Hijau', 'Warna cerah dan tebal', 'Galaxy Plast', 2200, 'Mangkok / mangkuk plastik kecil berbentuk daun berwarna hijau cerah serbaguna. Biasa digunakan untuk wadah makanan, tempat kobokan / cuci tangan, dll.', '40 x 28 x 62', 288, 528000, 'DSC09713', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(194, 3, 'Piring Plastik 8 Super', 'PIR - 308', '19,5 (d)', 'PP', 'Merah, Biru, Hijau', 'Murah dan tidak bengkok', 'Galaxy Plast', 500, 'Piring plastik bulat berwarna-warni. Biasa digunakan untuk wadah makanan, slametan / syukuran / hajatan, sesajen, dll. ', '78 x 40 x 20', 960, 396000, 'piring perbandingan.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(195, 4, 'Piring Plastik 8 Florent', 'PIR - 208', '19,5 (d)', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan tidak bengkok', 'Galaxy Plast', 850, 'Piring plastik bulat berwarna cerah. Biasa digunakan untuk wadah makanan, slametan / syukuran / hajatan, sesajen, dll. ', '78 x 40 x 20', 960, 660000, 'piring perbandingan.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(196, 5, 'Piring Plastik 9 Super', 'PIR - 309', '21,5 (d)', 'PP', 'Merah, Biru, Hijau', 'Murah dan tidak bengkok', 'Galaxy Plast', 600, 'Piring plastik bulat berwarna-warni. Biasa digunakan untuk wadah makanan, slametan / syukuran / hajatan, sesajen, dll. ', '57 x 48 x 22', 720, 336600, 'piring perbandingan.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(197, 6, 'Piring Plastik 9 Florent', 'PIR - 209', '21,5 (d)', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan tidak bengkok', 'Galaxy Plast', 1100, 'Piring plastik bulat berwarna cerah. Biasa digunakan untuk wadah makanan, slametan / syukuran / hajatan, sesajen, dll. ', '57 x 48 x 22', 720, 660000, 'piring perbandingan.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(198, 7, 'Piring 9 Tebal Soft Plastik', 'PRG - 001', '20,5 (d) x 4', 'PP', 'Soft Pink, Hijau, Biru', 'Tebal dan kuat', 'Galaxy Plast', 2100, 'Piring plastik bulat tebal berwarna cerah. Biasa digunakan untuk wadah makanan, slametan / syukuran / hajatan, sesajen, dll. ', '42 x 30 x 67', 288, 501600, 'piringgalaxy (5).jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(199, 8, 'Sendok Bebek Plastik Bening', 'SDB - 100', '3 (d) x 11,5', 'PP', 'Bening', 'Permukaan halus dan bening', 'Galaxy Plast', 85, 'Sendok plastik bening. Biasa digunakan untuk nasi bungkus / bungkusan / catering. ', '75 x 36 x 12', 7200, 495000, 'DSC09882', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(200, 9, 'Sendok Bebek Plastik Soft', 'SDO - 111', '3 (d) x 11,5', 'PP', 'Soft Pink, Hijau, Biru', 'Pemukaan halus', 'Galaxy Plast', 70, 'Sendok plastik berwarna soft. Biasa digunakan untuk nasi bungkus / bungkusan / catering. ', '70 x 50 x 19', 6480, 371250, 'sendok pinkpastel.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(201, 10, 'Eros Sop Plastik', 'ERS - 101', '6,8 (d) x 4,2 x 23,5', 'PP', 'Pink, Hijau, Orange', 'Murah, tebal, warna cerah', 'Pacific', 550, 'Sendok plastik panjang. Biasa digunakan untuk sop, kuah, bubur, minuman, dll. ', '68 x 60 x 25', 1800, 825000, 'Eros Sop.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(202, 11, 'Eros Bubur Plastik ', 'ERS - 201', '8,5 (d) x 5,8 x 29,5', 'PP', 'Pink, Hijau, Orange', 'Murah, tebal, warna cerah', 'Pacific', 1050, 'Sendok plastik panjang. Biasa digunakan untuk sop, kuah, bubur, minuman, dll. ', '88 x 55 x 35', 1152, 1003200, 'DSC09700', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(203, 12, 'Rice Bowl Plastik 20 Dx', 'RBO - 120', '20 (d) x 20', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 6200, 'Tempat / mangkuk nasi plastik berwarna cerah. Biasa digunakan untuk nasi, slametan / hajatan / syukuran, dll.', '61 x 59,5 x 70,5', 108, 564300, 'DSC09772', 'FOOD CONTAINER / WADAH MAKANAN - OTHERS / LAIN-LAIN', 35, '', ''),
(204, 13, 'Rice Bucket Plastik 7 Lt', 'RBU - 107', '22 (d) x 23,2', 'PP', 'Pink, Hijau, Orange', 'Ada saringan, tempat ikan, dan centong', 'Pacific', 38000, 'Tempat nasi / es plastik berwarna cerah dengan saringan, wadah lauk, dan centong. Dapat menahan temperatur panas / dingin karena adanya stereofoam. Biasa digunakan untuk nasi, es, minuman, dll. ', '40,2 x 48,3 x 72,5', 12, 385000, 'Rice Bucket 15lt.jpg', 'KITCHEN / DAPUR - RICE OR ICE BUCKET / TERMOS ES ATAU NASI', 38, '', ''),
(205, 14, 'Rice Bucket Plastik 9 Lt', 'RBU - 109', '22 (d) x 28,5', 'PP', 'Pink, Hijau, Orange', 'Ada saringan, tempat ikan, dan centong', 'Pacific', 41200, 'Tempat nasi / es plastik berwarna cerah dengan saringan, wadah lauk, dan centong. Dapat menahan temperatur panas / dingin karena adanya stereofoam. Biasa digunakan untuk nasi, es, minuman, dll. ', '58 x 48,3 x 72,5', 12, 418000, 'Rice Bucket 15lt.jpg', 'KITCHEN / DAPUR - RICE OR ICE BUCKET / TERMOS ES ATAU NASI', 38, '', ''),
(206, 15, 'Rice Bucket Plastik 15 Lt', 'RBU - 115', '26,5 (d) x 31', 'PP', 'Pink, Hijau, Orange', 'Ada saringan, tempat ikan, dan centong. Auto-lock system.', 'Pacific', 65000, 'Tempat nasi / es plastik berwarna cerah dengan saringan, wadah lauk, dan centong. Dapat menahan temperatur panas / dingin karena adanya stereofoam. Biasa digunakan untuk nasi, es, minuman, dll. ', '57 x 57 x 97', 12, 660000, 'Rice Bucket 15lt.jpg', 'KITCHEN / DAPUR - RICE OR ICE BUCKET / TERMOS ES ATAU NASI', 38, '', ''),
(207, 16, 'Rice Bucket Plastik 26 Lt', 'RBU - 126', '36 (d) x 54', 'PP', 'Pink, Hijau, Orange', 'Ada saringan, tempat ikan, dan centong. Auto-lock system.', 'Pacific', 67800, 'Tempat nasi / es plastik berwarna cerah dengan saringan, wadah lauk, dan centong. Dapat menahan temperatur panas / dingin karena adanya stereofoam. Biasa digunakan untuk nasi, es, minuman, dll. ', '117 x 79 x 45', 6, 687500, 'Rice Bucket 15lt.jpg', 'KITCHEN / DAPUR - RICE OR ICE BUCKET / TERMOS ES ATAU NASI', 38, '', ''),
(208, 17, 'Rice Bucket Plastik 30 Lt', 'RBU - 130', '36 (d) x 61,5', 'PP', 'Pink, Hijau, Orange', 'Ada saringan, tempat ikan, dan centong. Auto-lock system.', 'Pacific', 81250, 'Tempat nasi / es plastik berwarna cerah dengan saringan, wadah lauk, dan centong. Dapat menahan temperatur panas / dingin karena adanya stereofoam. Biasa digunakan untuk nasi, es, minuman, dll. ', '119 x 79 x 51', 6, 825000, 'Rice Bucket 15lt.jpg', 'KITCHEN / DAPUR - RICE OR ICE BUCKET / TERMOS ES ATAU NASI', 38, '', ''),
(209, 18, 'Centong Panjang Sct Plastik', 'CNT - 009', '23,5 x 7 x 2,2', 'PP', 'Pink, Hijau, Orange', 'Warna cerah dan kuat dan gagang panjang', 'Pacific', 1000, 'Centong / cedok / ciduk / sendok plastik berwarna cerah dengan gagang panjang. ', '66 X 65 X 24', 1440, 1188000, 'DSC09834', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(210, 19, 'Centong Pendek Florent Plastik', 'CNT - 010', '20 x 7,5 x 2,5', 'PP', 'Pink, Hijau, Orange', 'Warna cerah dan kuat', 'Pacific', 500, 'Centong / cedok / ciduk / sendok plastik berwarna cerah dengan gagang pendek.', '62 x 29 x 97', 1800, 693000, 'Centong.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(211, 20, 'Solet Plastik Dx', 'SOL - 101', '8,5 x 5 x 0,5 ', 'PP', 'Pink, Hijau, Orange', 'Kuat dan warna cerah', 'Pacific', 300, 'Solet / sendok nasi plastik berwarna cerah. Biasa digunakan untuk nasi, kerik kayu, dll. ', '58 x 49 x 34', 2448, 617100, 'DSC09705', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(212, 21, 'Rice Bowl Plastik 22 Dx', 'RCB - 122', '21,5 (d) x 23', 'PP', 'Merah, Biru, Hijau', 'Warna cerah, tebal, kilap', 'Panda Star', 7000, 'Tempat / mangkuk nasi plastik berwarna cerah. Biasa digunakan untuk nasi, slametan / hajatan / syukuran, dll.', '68,7 x 46,7 x 62,7', 72, 429000, 'VGT_4695', 'FOOD CONTAINER / WADAH MAKANAN - OTHERS / LAIN-LAIN', 35, '', ''),
(213, 22, 'Rice Bowl Plastik 22 Putih', 'RCB - 022', '21,5 (d) x 23', 'PP', 'Putih', 'Tebal dan kilap', 'Panda Star', 6500, 'Tempat / mangkuk nasi plastik berwarna putih. Biasa digunakan untuk nasi, slametan / hajatan / syukuran, dll.', '68,7 x 46,7 x 62,7', 72, 396000, 'VGT_4695', 'FOOD CONTAINER / WADAH MAKANAN - OTHERS / LAIN-LAIN', 35, '', ''),
(214, 23, 'Mangkok Plastik Neon 606 Florent', 'MGN - 206', '12,5 (d) x 5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan kilap', 'Panda Star', 750, 'Mangkok / mangkuk plastik bulat berwarna cerah serbaguna. Biasa digunakan untuk wadah makanan, tempat kobokan / cuci tangan, dll. ', '60 x 22 x 72', 1200, 770000, 'VGT_4535', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(215, 24, 'Mangkok Plastik Neon 808 Florent', 'MGN - 208', '16 (d) x 6,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan kilap', 'Panda Star', 1200, 'Mangkok / mangkuk plastik bulat berwarna cerah serbaguna. Biasa digunakan untuk wadah makanan, tempat kobokan / cuci tangan, dll. ', '77 x 64 x 29,5', 720, 726000, 'VGT_4535', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(216, 1, 'Tong Kran 20Lt Plastik', 'TNK - 203/205', '31 x 31 x 42', 'HDPE', 'Merah dan Biru', 'Body dan tutup 100% anti pecah', 'Tong Kuat', 38000, 'Tong air segi / dispenser berkapasitas 20 Liter dengan tutup dan kran plastik. Cocok untuk air minum dan cuci tangan. ', '31 x 20 x 105', 12, 385000, 'keran.jpg', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(217, 2, 'Tong Kran 42Lt Plastik', 'TNK - 423/425', '44 x 44 x 50', 'HDPE', 'Merah dan Biru', 'Body dan tutup 100% anti pecah', 'Tong Kuat', 70500, 'Tong air segi / dispenser berkapasitas 42 Liter dengan tutup dan kran plastik. Cocok untuk air minum dan cuci tangan.', '43 x 32 x 103', 12, 715000, 'keran.jpg', 'KITCHEN / DAPUR - OTHERS / LAIN-LAIN', 29, '', ''),
(218, 3, 'Jerigen Plastik 2,5Lt', 'JRP - 222', '14 x 9,5 x 25', 'HDPE', 'Merah', 'Stripline untuk melihat isi cairan', 'Tong Kuat', 4000, 'Tempat / wadah air segi plastik berkapasitas 2,5 Liter dengan stripline dan spill-proof cap. Cocok untuk air, minyak, deterjen, dll.', '110 x 68 x 103', 300, 990000, 'IMG_3314', 'KITCHEN / DAPUR - JERRY CAN / JERIGEN', 27, '', ''),
(219, 4, 'Jerigen Plastik 5Lt', 'JRG - 501', '18,5 x 11,5 x 30', 'HDPE', 'Merah', 'Stripline untuk melihat isi cairan', 'Tong Kuat', 8000, 'Tempat / wadah air segi plastik berkapasitas 5 Liter dengan stripline dan spill-proof cap. Cocok untuk air, minyak, deterjen, dll.', '136 x 74 x 82', 144, 924000, 'DSC09764', 'KITCHEN / DAPUR - JERRY CAN / JERIGEN', 27, '', ''),
(220, 5, 'Gelas Plastik HS-11 Florent', 'GLS - 211', '8 (d) x 11,7', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, ukuran besar, mudah dicuci', 'Galaxy Plast', 850, 'Gelas plastik kecil bulat berwarna cerah. Dapat ditumpuk untuk menghemat tempat. ', '80 x 76 x 22', 1728, 1188000, 'gelas ijo.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(221, 6, 'Cangkir  Mini Plastik Florent', 'CKR - 102', '7,8 (d) x 6,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Tebal, tidak mudah pecah, mudah dicuci', 'Galaxy Plast', 850, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan. ', '65 x 33 x 103', 864, 633600, 'DSC02074 edit.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(222, 7, 'Water Jug Plastik Marina 1.6Lt', 'ESK - 013', '13 (d) x 18', 'PP', 'Tutup Orange, Hijau, Pink', 'Body bening dan tebal', 'Pacific', 5700, 'Wadah / kendi air plastik bening berkapasitas 1,6 Liter. Cocok untuk air minum.', '107 x 49 x 40', 72, 346500, 'Waterjug Marina 16.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(223, 8, 'Water Jug Plastik Marina Tanggung', 'ESK - 014', '13 (d) x 26', 'PP', 'Tutup Orange, Hijau, Pink', 'Body bening dan tebal', 'Pacific', 9500, 'Wadah / kendi air plastik bening berkapasitas 2,1 Liter. Cocok untuk air minum.', '55 x 40 x 105', 84, 669900, 'IMG-20120229-00226.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(224, 9, 'Water Jug Plastik Marina Jumbo', 'ESK - 015', '16,5 (d) x 26', 'PP', 'Tutup Orange, Hijau, Pink', 'Body bening dan tebal', 'Pacific', 13000, 'Wadah / kendi air plastik bening berkapasitas 4,1 Liter. Cocok untuk air minum.', '76 x 55 x 90', 60, 660000, 'IMG-20120229-00226.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(225, 10, 'Water Jug Plastik Marina Super Jumbo', 'ESK - 055', '16,8 (d) x 32', 'PP', 'Tutup Orange, Hijau, Pink', 'Body bening dan tebal', 'Pacific', 14500, 'Wadah / kendi air plastik bening berkapasitas 5 Liter. Cocok untuk air minum.', '34 x 53 x 63', 48, 597000, 'Waterjug Marina Super Jumbo.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(226, 11, 'Water Jug Plastik Bunga Kecil Dx', 'ESK - 101', '14 (d) x 18', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 4500, 'Wadah / kendi air plastik berwarna cerah berkapasitas 1,6 Liter. Cocok untuk air minum.', '107 x 49 x 40', 72, 277200, 'IMG-20120229-00236.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(227, 12, 'Water Jug Plastik Tanggung Dx', 'ESK -102', '13 (d) x 25', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 6500, 'Wadah / kendi air plastik berwarna cerah berkapasitas 2,1 Liter. Cocok untuk air minum.', '75 x 48 x 82', 84, 462000, 'IMG-20120229-00236.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(228, 13, 'Water Jug Plastik Jumbo Dx', 'ESK - 105', '16,5 (d) x 26', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 9500, 'Wadah / kendi air plastik berwarna cerah berkapasitas 4,1 Liter. Cocok untuk air minum.', '75 x 50 x 89', 60, 478500, 'IMG-20120229-00236.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(229, 14, 'Water Jug Plastik Super Jumbo Dx', 'ESK - 115', '22 (d) x 16,8 x 32', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 11500, 'Wadah / kendi air plastik berwarna cerah berkapasitas 5 Liter. Cocok untuk air minum.', '53 x 58 x 87', 48, 462000, 'IMG-20120229-00236.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(230, 15, 'Tutup Gelas Florent Plastik', 'TPG - 090', '8,4 (d) x 2', 'PP', 'Pink, Hijau, Orange', 'Tebal dan warna cerah', 'Pacific', 250, 'Tutup plastik bulat kecil berwarna cerah.', '114 x 80 x 39', 6048, 1247400, 'DSC09884', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(231, 16, 'Cool Pot Plastik Segi', 'BOT - 105/106', '8,4 x 8,4 x 28', 'PP', 'Putih dan Pink, Hijau, Orange', '2 Warna. Anti bocor. Ada Pengukur air di body', 'Pacific', 4600, 'Wadah / botol air segi bening plastik berkapasitas 800 ml dengan gagang. Cocok untuk air minum.', '90 x 78 x 37', 144, 554400, 'DSC09727', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(232, 17, 'Gelas Plastik Muk 8 + ttp', 'MUK - 108', '10 x 8 x 10,5', 'PP', 'Pink, Hijau, Orange', 'Tebal, tutup rapat, warna cerah', 'Pacific', 1750, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan dan tutup. ', '120 x 88 x 20', 432, 633600, 'DSC09880', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(233, 18, 'Gelas Plastik Muk 10 + ttp', 'MUK - 110', '13 x 10 x 12', 'PP', 'Pink, Hijau, Orange', 'Tebal, tutup rapat, warna cerah', 'Pacific', 2700, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan dan tutup. ', '106 x 90 x 28', 252, 577500, 'DSC09879', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(234, 19, 'Gelas Plastik Muk 12 + ttp', 'MUK - 112', '15,5 x 12 x 15', 'PP', 'Pink, Hijau, Orange', 'Tebal, tutup rapat, warna cerah', 'Pacific', 3600, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan dan tutup. ', '107 x 84 x 33', 180, 544500, 'DSC09878', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(235, 20, 'Gelas Plastik Muk Bir', 'MUK - 111', '8 (d) x 12,3', 'PP', 'Pink, Hijau, Orange', 'Tebal, warna cerah, gagang kuat, gagang kuat', 'Pacific', 1500, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan. ', '119 X 58 X 22', 240, 297000, 'Mug Bir.jpg', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(236, 21, 'Gelas Plastik Muk Bir + ttp', 'MUT - 111', '8 (d) x 13,3', 'PP', 'Pink, Hijau, Orange', 'Tebal, tutup rapat, warna cerah', 'Pacific', 1950, 'Gelas plastik kecil bulat berwarna cerah dengan pegangan dan tutup. ', '105 x 85 x 36', 240, 396000, 'DSC09833', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(237, 22, 'Gelas Plastik Muk Bir Jumbo', 'MUKJ - 114', '8,8 (d) x 14,8', 'PP', 'Pink, Hijau, Orange', 'Tebal, warna cerah, gagang kuat', 'Pacific', 2200, 'Gelas plastik besar bulat berwarna cerah dengan pegangan dan tutup. ', '122 x 60 x 28', 168, 308000, 'DSC09877', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(238, 23, 'Gelas Plastik Muk Bir Jumbo + ttp', 'MJT - 224', '8,8 (d) x 15,8', 'PP', 'Pink, Hijau, Orange', 'Tebal, tutup rapat, warna cerah, gagang kuat', 'Pacific', 2700, 'Gelas plastik besar bulat berwarna cerah dengan pegangan dan tutup. ', '60 x 25 x 117', 168, 385000, 'DSC09875', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(239, 24, 'Gelas Plastik 208', 'GLS - 208', '7,5 (d) x 9', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan tebal', 'Panda Star', 750, 'Gelas plastik kecil bulat berwarna cerah. Dapat ditumpuk untuk menghemat tempat. ', '77 x 71 x 24', 1800, 1072500, 'VGT_4513', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(240, 25, 'Gelas Plastik HS-09', 'GLS - 290', '7,5 (d) x 10,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah dan tebal', 'Panda Star', 850, 'Gelas plastik kecil bulat berwarna cerah. Dapat ditumpuk untuk menghemat tempat. ', '74,5 x 72,5 x 30', 1728, 1188000, 'VGT_4518', 'KITCHEN / DAPUR - TABLEWARE / ALAT MAKAN', 28, '', ''),
(241, 26, 'Jerigen 35 Liter Merah', 'JER - 035', '34 x 22 x 44', 'HDPE', 'Merah', 'Ukuran besar dan anti pesok dan pecah', 'Tong Kuat', 42900, 'Tempat / wadah air segi plastik berkapasitas 35 Liter dengan spill-proof cap. Cocok untuk air, minyak, deterjen, bahan kimia, dll.', '86 x 68 x 68', 12, 435600, 'DSC09900', 'KITCHEN / DAPUR - JERRY CAN / JERIGEN', 27, '', ''),
(242, 27, 'Jerigen 35 Liter Putih', 'JER - 135', '34 x 22 x 44', 'HDPE', 'Putih', 'Ukuran besar dan anti pesok dan pecah', 'Tong Kuat', 50700, 'Tempat / wadah air segi plastik berkapasitas 35 Liter dengan spill-proof cap. Cocok untuk air, minyak, deterjen, bahan kimia, dll.', '86 x 68 x 68', 12, 514800, 'DSC09907', 'KITCHEN / DAPUR - JERRY CAN / JERIGEN', 27, '', ''),
(243, 1, 'Pot Bibit Plastik No. 3 Hitam', 'POT - 103', '9 (d) x 6', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 450, 'Pot / jambang / belanga / periuk plastik bulat kecil. Biasa digunakan untuk bibit tanaman, es krim pot, dll. ', '45 x 16 x 70', 1200, 440000, 'DSC09770', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(244, 2, 'Pot Bibit Plastik No. 3 Merah Bata', 'POM - 103', '9 (d) x 6', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 550, 'Pot / jambang / belanga / periuk plastik bulat kecil. Biasa digunakan untuk bibit tanaman, es krim pot, dll. ', '45 x 16 x 70', 1200, 550000, 'DSC09906', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(245, 3, 'Pot Bibit Plastik No. 4 Hitam', 'POT - 104', '10 (d) x 7,5', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 550, 'Pot / jambang / belanga / periuk plastik bulat kecil. Biasa digunakan untuk bibit tanaman, es krim pot, dll. ', '43 x 18 x 74', 672, 308000, 'DSC09770', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(246, 4, 'Pot Bibit Plastik No. 4 Merah Bata', 'POM - 104', '10 (d) x 7,5', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 650, 'Pot / jambang / belanga / periuk plastik bulat kecil. Biasa digunakan untuk bibit tanaman, es krim pot, dll. ', '43 x 18 x 74', 672, 369600, 'DSC09906', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(247, 5, 'Pot Bibit Plastik No. 6 Hitam', 'POT - 106', '13,5 (d) x 10,5', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 850, 'Pot / jambang / belanga / periuk plastik bulat kecil. Biasa digunakan untuk bibit tanaman, es krim pot, dll. ', '60 x 24 x 86', 720, 495000, 'DSC09770', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(248, 6, 'Pot Plastik Matahari 20 Hitam', 'POT - 209', '21 (d) x 15', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 1750, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll.', '86 x 55 x 35,6', 300, 440000, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(249, 7, 'Pot Plastik Matahari 20 Merah Bata', 'POT - 201', '21 (d) x 15', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 2300, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '86 x 55 x 35,6', 300, 577500, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(250, 8, 'Pot Plastik Matahari 25 Hitam', 'POT - 259', '24 (d) x 16,5', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 2300, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '84 x 42 x 42', 240, 462000, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(251, 9, 'Pot Plastik Matahari 25 Merah Bata', 'POT - 251', '24 (d) x 16,5', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 3100, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '84 x 42 x 42', 240, 627000, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(252, 10, 'Pot Plastik Matahari 30 Hitam', 'POT - 309', '29 (d) x 18,5', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 3250, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '102,5 x 53 x 26,5', 144, 396000, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(253, 11, 'Pot Plastik Matahari 30 Merah Bata', 'POT - 301', '29 (d) x 18,5', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 4300, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '102,5 x 53 x 26,5', 144, 514800, 'VGT_4691', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', '');
INSERT INTO `list_product` (`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `o`, `p`, `q`, `r`, `s`, `t`) VALUES
(254, 12, 'Pot Plastik Matahari 35 Hitam', 'POT - 359', '31,8 (d) x 25', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 6500, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '90 x 70 x 33', 72, 396000, 'VGT_4693.JPG', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(255, 13, 'Pot Plastik Matahari 35 Merah Bata', 'POT - 351', '31,8 (d) x 25', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 8200, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '90 x 70 x 33', 72, 495000, 'VGT_4693.JPG', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(256, 14, 'Pot Plastik Matahari 40 Hitam', 'POT - 409', '36 (d) x 29', 'PP', 'Hitam', 'Kilap dan kuat', 'Panda Star', 8700, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '124 x 40 x 40', 48, 352000, 'VGT_4693.JPG', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(257, 15, 'Pot Plastik Matahari 40 Merah Bata', 'POT - 401', '36 (d) x 29', 'PP', 'Merah Bata / Coklat', 'Kilap dan kuat', 'Panda Star', 11400, 'Pot / jambang / belanga / periuk plastik bulat. Biasa digunakan untuk tanaman, cetakan pot rotan, dll.', '124 x 40 x 40', 48, 462000, 'VGT_4693.JPG', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(258, 16, 'Pot Bunga Plastik 50 Hitam', 'POT - 050', '50 (d) x 40', 'HDPE', 'Hitam', 'Kuat, motif rotan, 100% anti pecah', 'Tong Kuat', 43300, 'Pot / jambang / belanga / periuk plastik bulat anti pecah dengan motif rotan. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '50 x 50 x 143', 24, 880000, 'DSC09849', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(259, 17, 'Pot Bunga Plastik 50 Coklat', 'POT - 051', '50 (d) x 40', 'HDPE', 'Merah Bata / Coklat', 'Kuat, motif rotan, 100% anti pecah', 'Tong Kuat', 54200, 'Pot / jambang / belanga / periuk plastik bulat anti pecah dengan motif rotan. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '50 x 50 x 143', 24, 1100000, 'DSC09850', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(260, 18, 'Pot Bunga Plastik 60 Hitam', 'POT - 060', '60 (d) x 46', 'HDPE', 'Hitam', 'Kuat, motif rotan, 100% anti pecah', 'Tong Kuat', 60000, 'Pot / jambang / belanga / periuk plastik bulat anti pecah dengan motif rotan. Biasa digunakan untuk tanaman, cetakan pot rotan, dll.', '57 x 57 x 100', 12, 605000, 'DSC09849', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(261, 19, 'Pot Bunga Plastik 60 Coklat', 'POT - 061', '60 (d) x 46', 'HDPE', 'Merah Bata / Coklat', 'Kuat, motif rotan, 100% anti pecah', 'Tong Kuat', 70500, 'Pot / jambang / belanga / periuk plastik bulat anti pecah dengan motif rotan. Biasa digunakan untuk tanaman, cetakan pot rotan, dll. ', '57 x 57 x 100', 12, 715000, 'DSC09850', 'OTHERS / LAIN-LAIN - GARDEN / TAMAN', 36, '', ''),
(262, 1, 'Timba Plastik 2,5 Galon Gagang Plastik Hitam Galaxy', 'TMA - 259', '23 (d) x 21', 'PP', 'Hitam', 'Kilap, tebal, dan kuat', 'Galaxy Plast', 3800, 'Timba / ember plastik bulat hitam dengan gagang plastik kapasitas 2,5 galon / 9,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll.', '49 x 37 x 113', 96, 308000, 'EMBER.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(263, 2, 'Timba Plastik 2,5 Galon Gagang Plastik + ttp Dx', 'TIM - 125', '24 (d) x 22', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 10300, 'Timba / ember plastik bulat berwarna cerah dengan gagang plastik dan tutup kapasitas 2,5 galon / 9,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '50 x 25 x 110', 72, 627000, 'Timba 4 Gl Tutup Sct.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(264, 3, 'Timba Plastik 2,5 Galon Gagang Plastik Hitam', 'TIM - 129', '24 (d) x 22', 'PP', 'Hitam', 'Kilap, tebal, gagang kuat', 'Pacific', 4100, 'Timba / ember plastik bulat hitam dengan gagang plastik kapasitas 2,5 galon / 9,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll.', '50 x 25 x 106', 84, 288750, 'DSC09871', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(265, 4, 'Timba Plastik 2,5 Galon Gagang Plastik + ttp Hitam', 'TTM - 259', '24 (d) x 23', 'PP', 'Hitam', 'Kilap, tebal, gagang kuat', 'Pacific', 6500, 'Timba / ember plastik bulat hitam dengan gagang plastik dan tutup kapasitas 2,5 galon / 9,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '110 x 50 x 24', 72, 396000, 'DSC09797', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(266, 5, 'Timba Plastik 2,5 Galon Motif Gagang Plastik + ttp M/B', 'TUT - 124', '25 (d) x 25', 'PP', 'Merah dan Biru', 'Kilap, tebal, gagang kuat', 'Pacific', 8200, 'Timba / ember plastik bulat dengan motif garis berwarna cerah dengan gagang plastik dan tutup kapasitas 2,5 galon / 9,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll.', '130 x 50 x 25', 72, 495000, 'Galon Moroko.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(267, 6, 'Timba Plastik 3,5 Galon Gagang Plastik + ttp Dx', 'TIM - 135', '29 (d) x 27', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 16250, 'Timba / ember plastik bulat berwarna cerah dengan gagang plastik dan tutup kapasitas 3,5 galon / 13,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '110 x 60 x 30', 54, 742500, 'Timba 4 Gl Tutup Sct.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(268, 7, 'Timba Plastik 3,5 Galon Gagang Plastik + ttp Dx Sablon', 'TIM - 335', '29 (d) x 27', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat, ada gambar sablon', 'Pacific', 19500, 'Timba / ember plastik bulat berwarna cerah bergambar sablon dengan gagang plastik dan tutup kapasitas 3,5 galon / 13,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '110 x 60 x 30', 54, 891000, 'DSC09805', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(269, 8, 'Timba Plastik 3 Galon Motif Gagang Plastik + ttp M/B', 'TUT - 134', '28 (d) x 28', 'PP', 'Merah dan Biru', 'Kilap, tebal, gagang kuat', 'Pacific', 10300, 'Timba / ember plastik bulat dengan motif garis berwarna cerah dengan gagang plastik dan tutup kapasitas 3 galon / 11,6 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '116 x 57 x 26', 60, 522500, 'Galon Moroko.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(270, 9, 'Timba Plastik 4 Galon Gagang Plastik + ttp Dx', 'TIM - 104', '30 (d) x 28', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 19000, 'Timba / ember plastik bulat berwarna cerah dengan gagang plastik dan tutup kapasitas 4 galon / 15,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '106 x 63 x 30', 48, 770000, 'Timba 4 Gl Tutup Sct.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(271, 10, 'Timba Plastik 4 Galon Gagang Kawat Dx', 'TIM - 144', '30 (d) x 27', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 13000, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat dan tutup kapasitas 4 galon / 15,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '98 x 59 x 29', 60, 660000, 'DSC09740', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(272, 11, 'Timba Plastik 4 Galon Gagang Kawat Abu', 'TIM - 146', '30 (d) x 27', 'PP', 'Abu - abu', 'Kilap, tebal, gagang kuat', 'Pacific', 8200, 'Timba / ember plastik bulat abu dengan gagang kawat dan tutup kapasitas 4 galon / 15,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '98 x 59 x 29', 60, 412500, 'DSC09741', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(273, 12, 'Timba Plastik 4 Galon Gagang Plastik + ttp Dx Sablon', 'TIM - 114', '30 (d) x 28', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat, ada gambar sablon', 'Pacific', 22750, 'Timba / ember plastik bulat berwarna cerah bergambar sablon dengan gagang plastik dan tutup kapasitas 4 galon / 15,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '106 x 63 x 30', 48, 924000, 'DSC09805', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(274, 13, 'Timba Plastik 5 Galon Motif Gagang Plastik + ttp Dx', 'TUT - 154', '32 (d) x 32', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 21200, 'Timba / ember plastik bulat dengan motif garis berwarna cerah dengan gagang plastik dan tutup kapasitas 5 galon / 19,5 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '100 x 65 x 33', 48, 858000, 'DSC09742', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(275, 14, 'Timba Plastik 6 Galon Motif Gagang Plastik + ttp Dx', 'TUT - 160', '35 (d) x 32', 'PP', 'Hijau, Pink, Biru', 'Warna cerah, kilap, tebal, gagang kuat', 'Pacific', 28200, 'Timba / ember plastik bulat dengan motif garis berwarna cerah dengan gagang plastik dan tutup kapasitas 6 galon / 23,25 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '127 x 37 x 37', 30, 715000, 'DSC09742', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(276, 15, 'Timba Plastik 6 Galon Motif Gagang Plastik + ttp Hitam', 'TUT - 169', '35 (d) x 32', 'PP', 'Hitam', 'Kilap, tebal, gagang kuat', 'Pacific', 15200, 'Timba / ember plastik bulat dengan motif garis berwarna hitam dengan gagang plastik dan tutup kapasitas 6 galon / 23,25 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '127 x 37 x 37', 30, 385000, 'DSC09743', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(277, 16, 'Timba Plastik 6 Galon Motif Gagang Kawat M/B ', 'TUT - 164', '35 (d) x 31,5', 'PP', 'Merah dan Biru', 'Kilap, tebal, gagang kuat', 'Pacific', 15600, 'Timba / ember plastik bulat dengan motif garis berwarna cerah dengan gagang kawat 6 galon / 23,25 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '119 x 36 x 36', 36, 475200, 'DSC09744', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(278, 17, 'Timba Plastik Italy 0,5 Galon Gagang Kawat Dx', 'TMB - 051', '12 (d) x 15', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 1950, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat kapasitas 0,5 galon / 2 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '92,5 x 62 x 31', 480, 792000, 'VGT_4411', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(279, 18, 'Timba Plastik Italy 0,5 Galon Gagang Kawat Hitam', 'TMB - 059', '12 (d) x 15', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1300, 'Timba / ember plastik bulat berwarna hitam dengan gagang kawat kapasitas 0,5 galon / 2 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '92,5 x 62 x 31', 480, 528000, 'VGT_4382', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(280, 19, 'Timba Plastik Italy 1 Galon Gagang Kawat Dx', 'TMB - 101', '13 (d) x 18', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2600, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat kapasitas 1 galon / 3,9 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '64,5 x 56 x 36', 240, 528000, 'VGT_4411', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(281, 20, 'Timba Plastik Italy 1 Galon Gagang Kawat Hitam', 'TMB - 109', '13 (d) x 18', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 1800, 'Timba / ember plastik bulat berwarna hitam dengan gagang kawat kapasitas 1 galon / 3,9 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '64,5 x 56 x 36', 240, 363000, 'VGT_4382', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(282, 21, 'Timba Plastik Italy 1,5 Galon Gagang Kawat Dx', 'TMB - 151', '16 (d) x 20,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 3600, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat kapasitas 1,5 galon / 5,8 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '127 x 42 x 42', 240, 726000, 'VGT_4411', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(283, 22, 'Timba Plastik Italy 1,5 Galon Gagang Kawat Hitam', 'TMB - 159', '16 (d) x 20,5', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 2300, 'Timba / ember plastik bulat berwarna hitam dengan gagang kawat kapasitas 1,5 galon / 5,8 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '127 x 42 x 42', 240, 462000, 'VGT_4382', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(284, 23, 'Timba Plastik Italy 2 Galon Gagang Kawat Dx', 'TMB - 201', '17 (d) x 23,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 5400, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat kapasitas 2 galon / 7,75 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '72,5 x 48 x 48', 192, 880000, 'VGT_4411', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(285, 24, 'Timba Plastik Italy 2 Galon Gagang Kawat Hitam', 'TMB - 202', '17 (d) x 23,5', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 2700, 'Timba / ember plastik bulat berwarna hitam dengan gagang kawat kapasitas 2 galon / 7,75 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '79,5 x 49 x 23,5', 120, 275000, 'VGT_4382', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(286, 25, 'Timba Plastik Italy 3 Galon Gagang Kawat Dx', 'TMB - 301', '24 (d) x 28', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 7800, 'Timba / ember plastik bulat berwarna cerah dengan gagang kawat kapasitas 3 galon / 11,6 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '113 x 59 x 27,4', 96, 633600, 'VGT_4411', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(287, 26, 'Timba Plastik Italy 3 Galon Gagang Kawat Hitam', 'TMB - 309', '24 (d) x 28', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 4900, 'Timba / ember plastik bulat berwarna hitam dengan gagang kawat kapasitas 3 galon / 11,6 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '113 x 59 x 27,4', 96, 396000, 'VGT_4382', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(288, 27, 'Timba Plastik Italy 3 Galon Gagang Plastik Dx Super', 'TMP - 301', '24 (d) x 28', 'PP', 'Merah, Biru, Hijau', 'Kilap dan gagang kuat', 'Panda Star', 6500, 'Timba / ember plastik bulat berwarna-warni dengan gagang plastik kapasitas 3 galon / 11,6 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '96,5 x 59 x 28,3', 72, 396000, 'VGT_4388', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(289, 28, 'Timba Plastik Italy 3 Galon Gagang Plastik Hitam', 'TMP - 309', '24 (d) x 28', 'PP', 'Hitam', 'Kilap dan gagang kuat', 'Panda Star', 4900, 'Timba / ember plastik bulat berwarna hitam dengan gagang plastik kapasitas 3 galon / 11,6 Liter serbaguna. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '96,5 x 59 x 28,3', 72, 297000, 'VGT_4388', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(290, 29, 'Timba Cor Plastik 12 Hijau', 'TBO - 012', '23,5 (d) x 18,5', 'PP', 'Hijau Tua', 'Kilap dan kuat', 'Bison Star', 3600, 'Timba / ember plastik bulat berwarna hijau tua dengan gagang kawat dan pegangan plastik. Biasa digunakan untuk air, slametan / syukuran / hajatan, dll. ', '48 x 23 x 93', 100, 302500, 'TC (2).jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(291, 30, 'Timba Cor Plastik 14 Hijau', 'TBO - 014', '26 (d) x 20', 'PP', 'Hijau Tua', 'Kilap dan kuat', 'Bison Star', 4300, 'Timba / ember plastik bulat berwarna hijau tua dengan gagang kawat dan pegangan plastik serbaguna. Biasa digunakan untuk air, bangunan, slametan / syukuran / hajatan, dll. ', '54 x 27 x 86', 100, 357500, 'TC (2).jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(292, 31, 'Timba Cor Plastik 16 Hijau', 'TBO - 016', '28,5 (d) x 23,5', 'PP', 'Hijau Tua', 'Kilap dan kuat', 'Bison Star', 5600, 'Timba / ember plastik bulat berwarna hijau tua dengan gagang kawat dan pegangan plastik serbaguna. Biasa digunakan untuk air, bangunan, slametan / syukuran / hajatan, dll.', '62 x 28 x 69', 72, 336600, 'TC (2).jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(293, 32, 'Timba Cor Plastik 18 Hijau', 'TBO - 018', '31 (d) x 26', 'PP', 'Hijau Tua', 'Kilap dan kuat', 'Bison Star', 6900, 'Timba / ember plastik bulat berwarna hijau tua dengan gagang kawat dan pegangan plastik serbaguna. Biasa digunakan untuk air, bangunan, slametan / syukuran / hajatan, dll.', '62 x 31 x 76', 72, 415800, 'TC (2).jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(294, 33, 'Timba Cor Plastik 20 Hijau', 'TBO - 020', '32 (d) x 26,5', 'PP', 'Hijau Tua', 'Kilap dan kuat', 'Bison Star', 7500, 'Timba / ember plastik bulat berwarna hijau tua dengan gagang kawat dan pegangan plastik serbaguna. Biasa digunakan untuk air, bangunan, slametan / syukuran / hajatan, dll. ', '69 x 32 x 73', 72, 455400, 'TC (2).jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(295, 34, 'Timba Cor Anti Pecah 11 Hitam', 'TMS - 211', '23 (d) x 15,5', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 4900, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. ', '80 x 46 x 23', 150, 618750, 'DSC09792', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(296, 35, 'Timba Cor Anti Pecah 12 Hitam', 'TMS - 129', '23,5 (d) x 18,5', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 6500, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. ', '89 x 46 x 22', 120, 660000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(297, 36, 'Timba Cor Bangunan Anti Pecah 12 Jumbo Hitam', 'TMS - 229', '24,5 (d) x 18', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 5600, 'Timba / ember bulat plastik berwarna cerah dengan gagang kawat serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '85 x 52 x 26', 120, 561000, 'DSC09795', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(298, 37, 'Timba Cor Bangunan Anti Pecah 12 Jumbo Dx', 'TMS - 225/238', '24,5 (d) x 18', 'LDPE', 'Merah dan Biru', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 6500, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '87 x 52 x 26', 120, 660000, 'DSC09794', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(299, 38, 'Timba Cor Bangunan Anti Pecah 12 Jempol Hitam', 'TMS - 299', '26 (d) x 18', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 6800, 'Timba / ember bulat plastik besar berwarna cerah dengan gagang kawat serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '105 x 52 x 25', 96, 554400, 'DSC09795', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(300, 39, 'Timba Cor Bangunan Anti Pecah 12 Jempol Dx', 'TMB - 233/255', '26 (d) x 18', 'LDPE', 'Merah dan Biru', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 8500, 'Timba / ember bulat plastik besar berwarna hitam dengan gagang kawat serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '95 x 52 x 25', 96, 686400, 'DSC09793', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(301, 40, 'Timba Cor Anti Pecah 14 Hitam', 'TMB - 149', '26 (d) x 20', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 7800, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '148 x 53 x 26', 120, 792000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(302, 41, 'Timba Cor Anti Pecah 16 Hitam', 'TMB - 169', '28,5 (d) x 23,5', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 9750, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '157 x 58 x 29', 120, 990000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(303, 42, 'Timba Cor Anti Pecah 18 Hitam', 'TMB - 189', '31 (d) x 26', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 10400, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '152 x 65 x 29', 120, 1056000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(304, 43, 'Timba Cor Anti Pecah 20 Hitam', 'TMB - 209', '32 (d) x 26,5', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 11700, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '114 x 66 x 33', 84, 831600, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(305, 44, 'Timba Cor Anti Pecah 22 Hitam', 'TMB - 229', '34 (d) x 28', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 13000, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '107 x 68 x 33', 84, 924000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(306, 45, 'Timba Cor Anti Pecah 24 Hitam', 'TMB - 249', '34,5 (d) x 29', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 14300, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '133 x 73 x 34', 84, 1016400, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(307, 46, 'Timba Cor Anti Pecah 26 Hitam', 'TMB - 269', '37 (d) x 31', 'LDPE', 'Hitam', 'Gagang kuat, 100% anti pecah', 'Beruang Star', 17000, 'Timba / ember bulat plastik berwarna hitam dengan gagang kawat dan pegangan plastik serbaguna. Juga disebut timba karet. Biasa digunakan untuk air, bangunan, semen, wadah makanan mentah, dll. Merupakan salah satu perlengkapan peralatan bangunan.', '100 x 74 x 36', 60, 858000, 'DSCN0452.jpg', 'CLEANING / KEBERSIHAN - PAIL / EMBER', 15, '', ''),
(308, 1, 'Tempat Sabun Plastik Bunga + ttp', 'TSB - 005', '12 x 8,2 x 4,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, ada sticker bunga', 'Pacific', 1750, 'Tempat / wadah sabun batangan plastik berwarna cerah dengan tutup dan sticker. ', '70 x 50 x 69', 576, 844800, 'DSC09704', 'BATHROOM / KAMAR MANDI - OTHERS / LAIN-LAIN', 12, '', ''),
(309, 2, 'Tempat Sabun Plastik Rossa Engsel', 'TSB - 004', '11,2 x 8 x 4', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, ada sticker bunga, engsel kuat', 'Pacific', 1650, 'Tempat / wadah sabun batangan plastik berwarna cerah dengan tutup engsel  dan sticker. ', '70,5 x 48,5 x 34,5', 576, 792000, 'Tempat sabun Rosa.jpg', 'BATHROOM / KAMAR MANDI - OTHERS / LAIN-LAIN', 12, '', ''),
(310, 3, 'Tempat Sabun Plastik SOS', 'TSB - 003', '17 x 15,8 x 10,6', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, bisa digantung di dinding', 'Pacific', 2600, 'Tempat / wadah sabun batangan plastik berwarna cerah tempel dinding. ', '70 x 62 x 34', 216, 561600, 'DSC09711', 'BATHROOM / KAMAR MANDI - OTHERS / LAIN-LAIN', 12, '', ''),
(311, 4, 'Gayung Plastik Drat Dx', 'GAY - 101', '14 (d) x 10 x 42,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, drat kuat', 'Pacific', 3600, 'Gayung / timba / ciduk plastik berwarna cerah dengan gagang panjang plastik. ', '111 x 65 x 28', 192, 580800, 'Gayung Drat.jpg', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(312, 5, 'Gayung Plastik Jepang Dx', 'GAY - 102', '14 (d) x 11 x 26', 'PP', 'Orange, Hijau, Pink', 'Warna cerah dan kilap', 'Pacific', 1950, 'Gayung / timba / ciduk plastik berwarna cerah plastik. ', '100 x 53 x 23', 420, 594000, 'DSC09894', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(313, 6, 'Gayung Plastik Bajigur Florent', 'GYU - 222', '14 (d) x 11,5 x 38,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, gagang panjang dan kuat', 'Panda Star', 2600, 'Gayung / timba / ciduk plastik berwarna cerah dengan gagang panjang plastik. ', '100 x 54 x 49,5', 288, 633600, 'VGT_4655', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(314, 7, 'Gayung Plastik Hati Florent', 'GYU - 233', '16 x 10,5 x 25', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, gagang kuat', 'Panda Star', 2200, 'Gayung / timba / ciduk plastik berwarna cerah berbentuk hati plastik. ', '87 x 60 x 27', 420, 660000, 'VGT_4637', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(315, 8, 'Gayung Plastik Japan Jumbo Florent', 'GYU - 290', '15 (d) x 12', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, ukuran besar, kilap', 'Panda Star', 2500, 'Gayung / timba / ciduk plastik besar berwarna cerah. ', '97 x 51,5 x 26', 288, 594000, 'VGT_4629', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(316, 9, 'Gayung Plastik Jumbo Dx', 'GYU - 190', '15 (d) x 14', 'PP', 'Merah, Biru, Hijau Cerah', 'Ukuran besar, kilap, gagang kuat, tebal', 'Panda Star', 3100, 'Gayung / timba / ciduk plastik besar berwarna cerah. ', '110 x 55 x 28', 288, 752400, '050_Pandastar_GayungJumbo.jpg', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(317, 10, 'Gayung Plastik Mini Florent', 'GYU - 201', '14 (d) x 9', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, ada sticker gambar, gagang kuat', 'Panda Star', 1800, 'Gayung / timba / ciduk plastik kecil berwarna cerah dengan gambar sticker. ', '94 x 64 x 24', 432, 653400, 'VGT_4659', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(318, 11, 'Gayung Plastik Lissy Dx', 'GYC - 001', '14 (d) x 26 x 12', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, tebal, kilap, gagang kuat', 'Panda Star', 2300, 'Gayung / timba / ciduk plastik tebal berwarna cerah. ', '98 x 72 x 25', 288, 554400, 'DSC09874', 'BATHROOM / KAMAR MANDI - WATER DIPPER / GAYUNG', 11, '', ''),
(319, 1, 'Tepak Bulat Catering Plastik', 'RCG - 101', '22,5 (d) x 6', 'PP', 'Orange, Hijau, Pink', 'Tutup transparan dan sekat untuk makanan', 'Galaxy Plast', 7800, 'Tepak / wadah / kotak makan bulat plastik dengan 3 pemisah lauk berwarna cerah dan tutup bening. Cocok untuk catering / bekal. ', '70 x 47 x 46', 108, 712800, 'DSC09698', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(320, 2, 'Toples Plastik Drat 1000ml Soft', 'TOD - 001', '12 (d) x 9,5', 'PP', 'Tutup Soft Pink, Hijau, Biru', 'Tutup drat, body bening, tutup rapat', 'Galaxy Plast', 2950, 'Toples / sealware bulat plastik dengan tutup drat berwarna soft kapasitas 1000 ml / 1 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '107 x 58 x 29', 144, 356400, 'toples drat (2).jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(321, 3, 'Toples Bulat Plastik Domino 350ml', 'TOS - 350', '10 (d) x 6,8', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Galaxy Plast', 1500, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 350 ml / 0,35 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '72 x 52 x 46', 720, 891000, 'toples.jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(322, 4, 'Toples Plastik 1/4kg', 'TPG - 551', '12,5 (d) x 5,2', 'PP', 'Bening', 'Tutup dan body bening, tutup rapat tidak perlu solasi', 'Galaxy Plast', 2450, 'Toples / sealware bulat plastik bening kapasitas 250 ml / 0,25 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '40 x 60 x 86', 240, 495000, 'IMG_3357', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(323, 5, 'Toples Plastik 1/2kg', 'TPG - 881', '14,5 (d) x 7', 'PP', 'Bening', 'Tutup dan body bening, tutup rapat tidak perlu solasi', 'Galaxy Plast', 3250, 'Toples / sealware bulat plastik bening kapasitas 500 ml / 0,5 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '56 x 40 x 86', 132, 363000, 'IMG_3351', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(324, 6, 'Toples Plastik Kristal Drat 2 kg', 'TKG - 222', '12,5 (d) x 18,5', 'PP', 'Tutup Soft Pink, Hijau, Biru', 'Tutup drat, tebal, kuat, body bening', 'Galaxy Plast', 6500, 'Toples / sealware bulat plastik bermotif kristal dengan tutup drat berwarna soft kapasitas 2000 ml / 1 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '60 x 33 x 97', 60, 330000, 'IMG_3264', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(325, 7, 'Tepak Makan Plastik Bening', 'TNA - 009', '17 x 17 x 6', 'PP', 'Bening', 'Aman untuk oven dan microwave', 'Galaxy Plast', 2300, 'Tepak / wadah / kotak makan segi plastik dengan 1 pemisah lauk  bening kapasitas 750 ml / 0,75 Liter. Cocok untuk catering / bekal. ', '52 x 46 x 72', 576, 1108800, 'DSC01758.JPG', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(326, 8, 'Tepak Makan Plastik Florent', 'TNA - 209', '17 x 17 x 6', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Aman untuk oven dan microwave', 'Galaxy Plast', 2300, 'Tepak / wadah / kotak makan segi plastik dengan 1 pemisah lauk  bening dan tutup cerah kapasitas 750 ml / 0,75 Liter. Cocok untuk catering / bekal. ', '52 x 46 x 72', 576, 1108800, 'DSC01742 edit.jpg', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(327, 9, 'Tepak Makan Plastik Aurora', 'TNA - 309', '14 x 19 x 5', 'PP', 'Body Soft Pink, Hijau, Biru', 'Ada sekat, kilap, tutup transparan, tutup rapat', 'Galaxy Plast', 4300, 'Tepak / wadah / kotak bekal segi plastik dengan 1 pemisah lauk tutup bening. Cocok untuk bekal / catering. ', '82 x 56 x 29', 108, 386100, 'DSC09887', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(328, 10, 'Tepak Makan Plastik Aurora Stiker', 'TNA - 310', '14 x 19 x 5', 'PP', 'Body Soft Pink, Hijau, Biru dengan sticker', 'Ada sekat, kilap, tutup berstiker, tutup rapat', 'Galaxy Plast', 5600, 'Tepak / wadah / kotak bekal segi plastik dengan 1 pemisah lauk tutup bening dengan gambar sticker. Cocok untuk anak-anak. ', '82 x 56 x 29', 108, 504900, 'tepak aurora hijau.jpg', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(329, 11, 'Sealware Bulat Plastik Alexa 3,5 Lt', 'TPA - 035', '19 (d) x 15,5', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 8200, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah kapasitas 3500 ml / 3,5 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll.', '80 x 60 x 50', 96, 660000, 'DSC09730', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(330, 12, 'Sealware Bulat Plastik Alexa 6 Lt', 'TPA - 006', '19 (d) x 25', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 13000, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah kapasitas 6000 ml / 6 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '80 x 60 x 50', 72, 792000, 'Sealware Bulat Alexa 6.jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(331, 13, 'Sealware Bulat Plastik Alexa 12 Lt', 'TPA - 012', '25 (d) x 42,5', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 19000, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah dengan gambar sablon kapasitas 12000 ml / 12 Liter. Biasa digunakan untuk slametan, kue kering, minuman, dll. ', '48 x 48 x 106,5', 48, 770000, 'DSC09760', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(332, 14, 'Sealware Bulat Plastik Alexa 18 Lt', 'TPA - 018', '27 (d) x 47', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 27100, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah dengan gambar sablon kapasitas 18000 ml / 18 Liter. Biasa digunakan untuk slametan, kue kering, minuman, dll. ', '56,5 x 56,5 x 117', 48, 1100000, 'DSC09760', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(333, 15, 'Sealware Segi Plastik Alexis 4 Lt', 'TPE - 004', '20 x 20 x 15', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 9750, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 4000 ml / 4 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '62,5 x 43 x 79', 96, 792000, 'DSC09729', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(334, 16, 'Sealware Segi Plastik Alexis 6 Lt', 'TPE - 006', '20 x 20 x 22', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 13500, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 6000 ml / 6 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '62,5 x 43 x 79', 72, 825000, 'Sealware Kotak Alexis 6.jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(335, 17, 'Sealware Segi Plastik Alexis 12 Lt', 'TPE - 012', '25 x 25 x 26', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 19500, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 12000 ml / 12 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll.', '50,5 x 50,5 x 85', 48, 792000, 'Sealware segi.jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(336, 18, 'Sealware Segi Plastik Alexis 18 Lt', 'TPE - 018', '27,5 x 27,5 x 31,3', 'PP', 'Tutup dan gagang Orange, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tebal', 'Pacific', 27100, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 18000 ml / 18 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '59 x 59 x 94', 48, 1100000, 'Sealware segi.jpg', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(337, 19, 'Sealware Bulat Plastik Maxi 24 Lt', 'TPM - 024', '35 (d) x 34,5 ', 'PP', 'Tutup Orange, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Pacific', 35750, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 24000 ml / 24 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll. ', '72 x 72 x 59', 24, 726000, 'DSC09761', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(338, 20, 'Tempat Roti Plastik Bready S', 'TRB - 001', '23 (d) x 9', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 8200, 'Tempat / wadah roti bulat plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '73 x 51 x 48', 72, 495000, 'VGT_4988', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(339, 21, 'Tempat Roti Plastik Bready M', 'TRB - 005', '26,5 (d) x 11', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 10300, 'Tempat / wadah roti bulat plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '81 x 53,7 x 49', 72, 627000, 'VGT_4988', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(340, 22, 'Tempat Roti Plastik Bready L', 'TRB - 009', '29,5 (d) x 12', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 12500, 'Tempat / wadah roti bulat plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '90 x 58,5 x 53,5', 72, 759000, 'VGT_4988', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(341, 23, 'Tempat Roti Plastik Bready Oval M', 'BOM - 001', '34,5 x 20,5 x 10', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 10900, 'Tempat / wadah roti oval plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '64,5 x 62 x 64,5', 72, 660000, 'DSC09751', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(342, 24, 'Tepak Plastik Segi Sealpack 1200ml', 'SLP - 012', '23,5 x 16,5 x 5,5', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, kilap, tutup rapat', 'Panda Star', 5200, 'Tepak / wadah / kotak makan segi plastik berwarna cerah dan tutup bening kapasitas 1200 ml / 1,2 Liter. Cocok untuk catering / bekal. ', '64 x 52 x 47', 144, 633600, 'DSC09821', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(343, 25, 'Tepak Nasi Plastik Oval Florent', 'TNO - 213', '18 x 11,5 x 6,5', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, kilap, tutup rapat', 'Panda Star', 3250, 'Tepak / wadah / kotak makan oval plastik dengan 1 pemisah lauk berwarna cerah dan tutup bening. Cocok untuk catering / bekal. ', '127 x 78 x 37', 264, 726000, 'VGT_4558', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(344, 26, 'Tepak Nasi Plastik Segi Florent', 'TNO - 201', '17 x 12,5 x 5', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, kilap, tutup rapat', 'Panda Star', 3250, 'Tepak / wadah / kotak makan segi plastik dengan 1 pemisah lauk berwarna cerah dan tutup bening. Cocok untuk catering / bekal.', '119 x 79 x 34,5', 324, 891000, 'VGT_4553', 'FOOD CONTAINER / WADAH MAKANAN - LUNCH BOX / KOTAK MAKAN', 30, '', ''),
(345, 27, 'Toples Bulat Plastik Alaska 1 kg', 'TOP - 001', '12,5 (d) x 12', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 3250, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 1000 gram / 1 kg. Biasa digunakan untuk permen, bumbu, manisan, dll. ', '66,4 x 52,3 x 51,2', 240, 660000, 'VGT_4732', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(346, 28, 'Toples Bulat Plastik Alaska 1,5 kg', 'TOP - 015', '14 (d) x 14,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 4600, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 1500 gram / 1,5 kg. Biasa digunakan untuk permen, bumbu, manisan, dll. ', '75,5 x 46 x 56,5', 180, 693000, 'VGT_4732', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(347, 29, 'Toples Bulat Plastik Alaska 2,5 kg', 'TOP - 025', '15,5 (d) x 16,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 6000, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 2000 gram / 2 kg. Biasa digunakan untuk permen, bumbu, manisan, dll.', '65,8 x 49 x 50', 108, 544500, 'VGT_4732', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(348, 30, 'Toples Bulat Plastik Candy 5 Lt', 'TOP - 105', '23 (d) x 19', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 9500, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah kapasitas 5000 ml / 5 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '70 x 46 x 56', 72, 574200, 'VGT_5043', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(349, 31, 'Toples Bulat Plastik Candy 10 Lt', 'TOP - 110', '26 (d) x 22', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 14700, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah kapasitas 10000 ml / 10 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '85 x 54,6 x 63', 72, 891000, 'VGT_5043', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(350, 32, 'Toples Bulat Plastik Candy 16 Lt', 'TOP - 116', '29 (d) x 25,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 20500, 'Toples / sealware bulat plastik dengan gagang dan tutup berwarna cerah kapasitas 16000 ml / 16 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '67 x 64,5 x 64,5', 48, 827200, 'VGT_5043', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(351, 33, 'Toples Bulat Plastik Ceper 6 Lt', 'TOP - 106', '26 (d) x 12,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 9750, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 6000 ml / 6 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll.', '45,5 x 52,3 x 50,8', 72, 594000, 'VGT_5075', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(352, 34, 'Toples Bulat Plastik Ceper 12 Lt', 'TOP - 112', '29 (d) x 15', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 13000, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 12000 ml / 12 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll. ', '89,4 x 60,6 x 53', 72, 792000, 'VGT_5075', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(353, 35, 'Toples Bulat Plastik Domino 500 ml', 'TOP - 500', '10 (d) x 8', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 1650, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 500 ml / 0,5 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '61,8 x 53,4 x 33', 360, 495000, 'VGT_4720', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(354, 36, 'Toples Bulat Plastik Domino 800 ml', 'TOP - 800', '12 (d) x 9,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 2200, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 800 ml / 0,8 Liter. Biasa digunakan untuk takjil, kue kering, bumbu, dll. ', '62 x 58 x 42', 240, 429000, 'DSC09783', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(355, 37, 'Toples Bulat Plastik Sealware 5 Lt', 'TOP - 205', '19,5 (d) x 19', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 8450, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 5000 ml / 5 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll. ', '64,7 x 44,5 x 56,5', 72, 514800, 'VGT_4756', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(356, 38, 'Toples Bulat Plastik Sealware 10 Lt', 'TOP - 210', '26,5 (d) x 23', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 13000, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 10000 ml / 10 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll. ', '82 x 53,3 x 62,8', 72, 792000, 'VGT_4756', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(357, 39, 'Toples Bulat Plastik Sealware 16 Lt', 'TOP - 216', '27 (d) x 15', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 19500, 'Toples / sealware bulat plastik dengan tutup berwarna cerah kapasitas 16000 ml / 16 Liter. Biasa digunakan untuk kerupuk, kue kering, permen, minuman, dll. ', '63,4 x 56 x 60', 48, 792000, 'VGT_5075', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(358, 40, 'Toples Bulat Plastik LD 2,5 Lt', 'TOP - 022', '15 (d) x 17,5', 'PP', 'Tutup Merah, Biru, Hijau', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Panda Star', 13000, 'Toples / sealware bulat plastik tebal dengan gambar sablon dan tutup vakuum kapasitas 2500 ml / 2,5 Liter. Biasa digunakan untuk kue kering, permen, manisan, dll. ', '112 x 79 x 34', 96, 1056000, 'DSC09728', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(359, 41, 'Toples Segi Plastik 500 ml', 'TOP - 501', '9 x 9 x 7', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 1650, 'Toples / sealware plastik segi dengan tutup berwarna cerah kapasitas 500 ml / 0,5 Liter. Biasa digunakan untuk permen, bumbu, kue kering, dll. ', '58,4 x 49,8 x 33', 420, 495000, 'VGT_4725', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(360, 42, 'Toples Segi Plastik 800 ml', 'TOP - 801', '9 x 9 x 11,5', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 2200, 'Toples / sealware plastik segi dengan tutup berwarna cerah kapasitas 800 ml / 0,8 Liter. Biasa digunakan untuk permen, bumbu, kue kering, dll. ', '57,8 x 49,5 x 42,5', 420, 643500, 'VGT_4725', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(361, 43, 'Toples Segi Plastik Trendy 10 Liter', 'TST - 001', '25,5 x 25,5 x 21', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Panda Star', 21500, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 10000 ml / 10 Liter. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '60 x 55,6 x 55,6', 48, 858000, 'IMG_3401', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(362, 44, 'Tepak Segi Plastik Natural Pack 1900 ml', 'TSW - 019', '27 x 20 x 5', 'PP', 'Bening', 'Tutup rapat, warna bening, tidak berbau', 'Panda Star', 8200, 'Toples / sealware / natural pack segi plastik bening kapasitas 1900 ml / 1,9 Liter. Biasa digunakan untuk kue, agar-agar, makanan, dll. ', '67,8 x 56,6 x 64', 144, 990000, 'VGT_4728', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(363, 45, 'Tepak Segi Plastik Natural Pack 3500 ml', 'TSW - 035', '27 x 20 x 9', 'PP', 'Bening', 'Tutup rapat, warna bening, tidak berbau', 'Panda Star', 9200, 'Toples / sealware / natural pack segi plastik bening kapasitas 3500 ml / 3,5 Liter. Biasa digunakan untuk kue, agar-agar, makanan, dll. ', '84 x 61,5 x 41,2', 108, 841500, 'VGT_4728', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(364, 46, 'Tepak Segi Plastik Natural Pack Donat', 'TSW - 003', '29 x 29 x 11,5', 'PP', 'Bening', 'Tutup rapat, warna bening, tidak berbau', 'Panda Star', 19500, 'Toples / sealware / natural pack segi plastik bening. Biasa digunakan untuk donat, agar-agar, makanan, dll. ', '77,5 x 61 x 51,5', 48, 792000, 'VGT_4701', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(365, 47, 'Toples Segi Plastik Fitti 1 kg', 'TOS - 001', '14 x 14 x 8', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Panda Star', 3600, 'Toples / sealware bulat segi dengan tutup berwarna cerah kapasitas 1000 gram / 1 kg. Biasa digunakan untuk permen, bumbu, manisan, dll. ', '82,5 x 62,5 x 40,5', 288, 871200, 'VGT_5112', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(366, 48, 'Toples Segi Plastik Fitti 2 kg', 'TOS - 002', '14 x 14 x 16', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Panda Star', 6000, 'Toples / sealware bulat segi dengan tutup berwarna cerah kapasitas 2000 gram / 2 kg. Biasa digunakan untuk permen, bumbu, manisan, dll. ', '57 x 48,5 x 63,5', 144, 726000, 'VGT_5112', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(367, 49, 'Toples Segi Plastik Fitti 3 kg', 'TOS - 003', '16 x 16 x 18', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat, tebal', 'Panda Star', 7800, 'Toples / sealware bulat segi dengan tutup berwarna cerah kapasitas 3000 gram / 3 kg. Biasa digunakan untuk permen, bumbu, manisan, dll. ', '51 x 48 x 64', 108, 712800, 'VGT_5112', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(368, 50, 'Toples Segi Plastik Kristal 2,5 kg', 'TKP - 001', '14,6 x 14,6 x 16,5', 'PP', 'Tutup dan gagang Orange,Biru, Hijau, Pink', 'Warna tutup dan gagang cerah, body bening, tutup rapat, tebal', 'Panda Star', 6500, 'Toples / sealware segi plastik dengan gagang dan tutup berwarna cerah kapasitas 2500 gram / 2,5 kg. Biasa digunakan untuk slametan / syukuran / hajatan, kue kering, minuman, dll. ', '87 x 30 x 55', 144, 792000, 'DSC09726', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', '');
INSERT INTO `list_product` (`a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`, `k`, `l`, `m`, `o`, `p`, `q`, `r`, `s`, `t`) VALUES
(369, 51, 'Mangkok Plastik Bubur 500 ml', 'MGB - 001', '11 (d) x 6', 'PP', 'Tutup Orange, Biru, Hijau, Pink', 'Warna tutup cerah, body bening, tutup rapat', 'Panda Star', 1650, 'Toples / mangkuk / mangkok / sealware bulat plastik dengan tutup berwarna cerah kapasitas 500 ml / 0,5 Liter. Biasa digunakan untuk petis, bumbu, rempah-rempah, sambal, dll. ', '73 x 60 x 24', 420, 495000, 'VGT_5083', 'FOOD CONTAINER / WADAH MAKANAN - JAR / STOPLES', 31, '', ''),
(370, 52, 'Rantang Plastik Bulat Susun 2', 'RTG - 002', '15 (d) x 21', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 8200, 'Rantang plastik bulat berwarna cerah susun 2 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '94 x 39 x 61', 48, 330000, 'DSC09714', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(371, 53, 'Rantang Plastik Bulat Susun 3', 'RTG - 003', '15 (d) x 27', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 10300, 'Rantang plastik bulat berwarna cerah susun 3 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '94 x 50 x 61', 48, 418000, 'IMG-20120229-00233', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(372, 54, 'Rantang Plastik Bulat Susun 4', 'RTG - 004', '15 (d) x 32,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 13000, 'Rantang plastik bulat berwarna cerah susun 4 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '94 x 63 x 61', 48, 528000, 'DSC09835', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(373, 55, 'Rantang Plastik Segi Susun 2', 'RTG - 102', '18 x 15 x 20', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 9200, 'Rantang plastik segi berwarna cerah susun 2 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '110 x 39 x 62', 48, 374000, 'Rantang Segi S2.jpg', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(374, 56, 'Rantang Plastik Segi Susun 3', 'RTG - 103', '18 x 15 x 27', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 13000, 'Rantang plastik segi berwarna cerah susun 3 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '110 x 51 x 61', 48, 524000, 'Rantang susun segi.jpg', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(375, 57, 'Rantang Plastik Segi Susun 4', 'RTG - 104', '18 x 15 x 32,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, tebal, ada sticker bunga mudah dipasang dan dicopot', 'Pacific', 16250, 'Rantang plastik segi berwarna cerah susun 4 dengan sticker bunga. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll.', '97 x 50,5 x 90', 48, 660000, 'Rantang susun segi.jpg', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(376, 58, 'Rantang Plastik Drat Susun 2 Dx', 'RTD - 122', '16,5 (d) x 18,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal, drat kuat, warna cerah', 'Pacific', 8700, 'Rantang plastik bulat drat berwarna soft susun 2. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '100 x 35,5 x 67,5', 48, 352000, 'DSC09694', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(377, 59, 'Rantang Plastik Drat Susun 3 Dx', 'RTD - 123', '16,5 (d) x 25', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal, drat kuat, warna cerah', 'Pacific', 12000, 'Rantang plastik bulat drat berwarna soft susun 3. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '100 x 50 x 67,5', 48, 484000, 'DSC09695', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(378, 60, 'Rantang Plastik Drat Susun 4 Dx', 'RTD - 124', '16,5 (d) x 30,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal, drat kuat, warna cerah', 'Pacific', 15700, 'Rantang plastik bulat drat berwarna soft susun 4. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '94 x 63 x 61', 48, 638000, 'DSC09693', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(379, 61, 'Rantang Plastik Drat Susun 2 Super', 'RTD - 302', '16,5 (d) x 18,5', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal, drat kuat', 'Pacific', 7100, 'Rantang plastik bulat drat berwarna-warni susun 2. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '100 x 35,5 x 67,5', 48, 286000, 'DSC09696', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(380, 62, 'Rantang Plastik Drat Susun 3 Super', 'RTD - 303', '16,5 (d) x 25', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal, drat kuat', 'Pacific', 9200, 'Rantang plastik bulat drat berwarna-warni susun 3. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '100 x 50 x 67,5', 48, 374000, 'DSC09886', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(381, 63, 'Rantang Plastik Drat Susun 4 Super', 'RTD - 304', '16,5 (d) x 30,5', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal, drat kuat', 'Pacific', 13000, 'Rantang plastik bulat drat berwarna-warni susun 4. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '94 x 63 x 61', 48, 528000, 'DSC09697', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(382, 64, 'Rantang Oval Plastik Livia Susun 2', 'RTL - 102', '18 x 16 x 15,3', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 9200, 'Rantang plastik oval 2 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '72,5 x 48 x 79', 60, 467500, 'DSC09857', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(383, 65, 'Rantang Oval Plastik Livia Susun 3', 'RTL - 103', '18 x 16 x 21,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 13000, 'Rantang plastik oval 3 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '72,5 x 48 x 87,5', 48, 528000, 'DSC09863', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(384, 66, 'Rantang Oval Plastik Livia Susun 4', 'RTL - 104', '18 x 16 x 27', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 16250, 'Rantang plastik oval 4 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '72,5 x 48 x 113,5', 48, 660000, 'DSC09862', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(385, 67, 'Rantang Bulat Plastik Laura Susun 2', 'RTL - 202', '15 (d) x 19,5', 'PP', 'Pink, Hijau, Biru', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 9200, 'Rantang plastik bulat 2 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '92 x 33 x 77', 60, 467500, 'DSC09768', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(386, 68, 'Rantang Bulat Plastik Laura Susun 3', 'RTL - 203', '15 (d) x 26,5', 'PP', 'Pink, Hijau, Biru', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 13000, 'Rantang plastik bulat 3 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '92 x 46 x 77', 60, 660000, 'DSC09769', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(387, 69, 'Rantang Bulat Plastik Laura Susun 4', 'RTL - 204', '15 (d) x 33', 'PP', 'Pink, Hijau, Biru', 'Warna cerah, kilap, tebal, ada kunci, 2 warna, ada gambar sablon', 'Pacific', 16250, 'Rantang plastik bulat 4 warna susun 2 dengan kunci di samping dan gambar sablon. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll.', '92 x 59 x 77', 60, 825000, 'DSC09840', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(388, 70, 'Rantang Plastik Tunggal', 'RTT - 002', '16 (d) x 17', 'PP', 'Tutup dan Gagang Orange, Hijau, Pink', '2 warna, ada sticker bunga, ada tempat ikan dan tutup di dalam', 'Pacific', 7100, 'Rantang plastik bulat 2 warna dengan gagang dan tempat lauk / nasi di dalam. Biasa digunakan untuk catering, bekal, slametan / syukuran / hajatan, dll. ', '82 x 65 x 45', 72, 429000, 'Rantang Tunggal.jpg', 'FOOD CONTAINER / WADAH MAKANAN - STACKING FOOD CONTAINERS / RANTANG', 33, '', ''),
(389, 71, 'Panci Plastik Klasik 18 Dx', 'PAN - 118', '17,5 (d) x 11', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, ada sticker', 'Panda Star', 3250, 'Tempat / wadah makanan bulat dengan tutup berwarna cerah model panci dengan sticker gambar udang. Biasa digunakan untuk makanan, slametan / syukuran / hajatan, dll. ', '80 x 50,6 x 35', 144, 396000, 'VGT_4985', 'FOOD CONTAINER / WADAH MAKANAN - OTHERS / LAIN-LAIN', 35, '', ''),
(390, 72, 'Panci Plastik Klasik 22 Dx', 'PAN - 122', '19 (d) x 11', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, ada sticker', 'Panda Star', 3900, 'Tempat / wadah makanan bulat dengan tutup berwarna cerah model panci dengan sticker gambar udang. Biasa digunakan untuk makanan, slametan / syukuran / hajatan, dll. ', '87 x 30,5 x 41', 144, 514800, 'VGT_4985', 'FOOD CONTAINER / WADAH MAKANAN - OTHERS / LAIN-LAIN', 35, '', ''),
(391, 73, 'Tempat Roti Plastik Bready Oval S', 'BOM - 002', '31,5 x 17 x 11', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 9500, 'Tempat / wadah roti oval plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '64,5 x 53 x 79,5', 72, 561000, 'DSC09751', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(392, 74, 'Tempat Roti Plastik Bready Oval L', 'BOM - 003', '37 x 23 x 11', 'PP', 'Body Orange, Biru, Hijau, Pink', 'Warna body cerah, tutup bening, ada kunci', 'Panda Star', 13500, 'Tempat / wadah roti oval plastik dengan gagang dan kunci berwarna cerah dan tutup bening. Biasa digunakan untuk kue, makanan, slametan / syukuran / hajatan, dll. ', '75 x 72 x 86,5', 72, 825000, 'DSC09752', 'FOOD CONTAINER / WADAH MAKANAN - BREAD BOX / KOTAK ROTI', 32, '', ''),
(393, 1, 'Wakul Plastik Tanggok 21 Super', 'WAT - 521', '19 (d) x 6', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 350, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan.', '73 x 40 x 19', 480, 125400, 'tanggok 21 3wrn.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(394, 2, 'Wakul Plastik Tanggok 24 Tebal Super', 'WAT - 524', '22 (d) x 7,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 550, 'Bakul / tangguk / besek / keranjang bulat plastik tebal warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan.', '70 x 67 x 22', 780, 343200, 'wakul tanggok grade warna.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(395, 3, 'Wakul Plastik Tanggok 24 Super', 'WAT - 580', '22 (d) x 7,5', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 450, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '110 x 44 x 22', 960, 343200, 'Tanggok 24 Tps.png', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(396, 4, 'Wakul Plastik Tradisi 10 Super', 'WAD - 240', '20 (d) x 10,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 550, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan.', '64 x 60 x 20', 480, 220000, 'DSC09889', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(397, 5, 'Wakul Plastik Tradisi Segi 10 Florent', 'WAD - 210', '18 x 18 x 10', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, dan tidak mudah rusak', 'Galaxy Plast', 1150, 'Bakul / tangguk / besek / keranjang segi plastik berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan.', '90 x 37 x 31', 480, 462000, 'wakul.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(398, 6, 'Wakul Plastik Tradisi Segi 10 Super', 'WAD - 310', '18 x 18 x 10', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 750, 'Bakul / tangguk / besek / keranjang segi plastik berwarna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '90 x 37 x 31', 480, 297000, 'DSC09842', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(399, 7, 'Wakul Plastik Tradisi Segi 12 Florent', 'WAD - 212', '20 x 20 x 12,5', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, dan tidak mudah rusak', 'Galaxy Plast', 1650, 'Bakul / tangguk / besek / keranjang segi plastik berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '78 x 34 x 41', 480, 660000, 'wakul.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(400, 8, 'Wakul Plastik Tradisi Segi 12 Super', 'WAD - 313', '20 x 20 x 12,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 1100, 'Bakul / tangguk / besek / keranjang segi plastik berwarna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '78 x 34 x 41', 480, 440000, 'DSC09842', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(401, 9, 'Wakul Plastik Tradisi 12 Jumbo Florent', 'WAF - 012', '26 (d) x 13', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 2300, 'Bakul / tangguk / besek / keranjang bulat plastik berwarna cerah dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan. ', '72 x 23 x 119', 288, 554400, 'wakultradisi.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(402, 10, 'Wakul Plastik Tradisi Mini Dx', 'WAD - 100', '17 (d) x 9', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 600, 'Bakul / tangguk / besek / keranjang bulat plastik berwarna cerah dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan. ', '100 x 70 x 20', 1200, 605000, 'DSC01798cmyk edit.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(403, 11, 'Wakul Telor Plastik Wajik Super', 'WTO - 022', '19 (d) x 10', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 450, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '80 x 41 x 20', 480, 184800, 'DSC09888', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(404, 12, 'Wakul Plastik Telor Jumbo Super', 'WTO - 090', '23 (d) x 12', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 650, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '64 x 47 x 22', 240, 126500, 'wakul telur JUMBO WARNA.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(405, 13, 'Wakul Plastik Telor Jumbo Tanggung Super', 'WTO - 099', '21 (d) x 10,5', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 500, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '59 x 52 x 20', 240, 99000, 'WAKUL TELUR TUMPUK.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(406, 14, 'Wakul Plastik Telor Tanggung Galaxy Super', 'WTO - 077', '20,5 (d) x 10', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 450, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '50 x 43 x 22', 240, 90200, 'WAKUL TELUR TUMPUK.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(407, 15, 'Wakul Plastik Cengkeh 22 Super', 'WAC - 022', '20 (d) x 8', 'PP', 'Merah, Biru, Hijau', 'Kilap dan tidak mudah rusak', 'Galaxy Plast', 350, 'Bakul / tangguk / besek / keranjang bulat plastik kecil warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '62 x 43 x 20', 480, 125400, 'W CENGKEH.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(408, 16, 'Wakul Plastik Teratai 12 Super', 'WAI - 012', '23,5 (d) x 12', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 900, 'Bakul / tangguk / besek / keranjang bentuk teratai plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92 x 66 x 25', 432, 316800, 'W TERATAI WARNA.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(409, 17, 'Wakul Plastik Teratai 12 Florent', 'WAI - 212', '23,5 (d) x 12', 'PP', 'Orange, Biru, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 1500, 'Bakul / tangguk / besek / keranjang bentuk teratai plastik berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92 x 66 x 25', 432, 534600, 'W TERATAI WARNA.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(410, 18, 'Wakul Plastik 12 Kuping Lubang 3 Super', 'WAG - 012', '25,8 (d) x 13', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 1300, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni dengan kuping. Biasa digunakan untuk slametan / syukuran / hajatan.', '50 x 50 x 74', 240, 264000, 'DSC09890', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(411, 19, 'Wakul Plastik 12 Kuping Lubang 3 Super + ttp', 'WAG - 014', '25,8 (d) x 20', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 1950, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni dengan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan.', '76 x 46 x 47', 192, 316800, 'wakulkupingtutup.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(412, 20, 'Wakul Plastik 12 Kuping Lubang 3 Dx + ttp', 'WAG - 313', '25,8 (d) x 20', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 3250, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '76 x 46 x 47', 192, 528000, 'wakulkupingtutup.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(413, 21, 'Wakul Plastik Hati', 'WHA - 014', '25,5 (d) x 7,5', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Galaxy Plast', 1200, 'Bakul / tangguk / besek / keranjang bentuk hati plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '54 x 25 x 75', 300, 302500, 'wakulhatiwarna edit.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(414, 22, 'Wakul Plastik 22 Mawar Dx', 'WAG - 122', '21,1 (d) x 10', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 1400, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan ukiran bunga dan kuping. Biasa digunakan untuk slametan / syukuran / hajatan.', '100 x 42 x 31', 288, 330000, 'wakul22kb (3).jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(415, 23, 'Wakul Plastik 22 Mawar + ttp Dx', 'WAG - 222', '21,1 (d) x 15', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Galaxy Plast', 2500, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan ukiran bunga, kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '100 x 42 x 31', 144, 297000, 'DSC09846', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(416, 24, 'Wakul Plastik Ocean 12', 'WOC - 012', '23,5 (d) x 9', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 1500, 'Bakul / tangguk / besek / keranjang bulat plastik berwarna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '93 X 42 X 42', 576, 739200, 'DSC09774', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(417, 25, 'Wakul Plastik Ocean 14', 'WOC - 014', '26,7 (d) x 11', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 1950, 'Bakul / tangguk / besek / keranjang bulat plastik berwarna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '110 x 55 x 27', 360, 594000, 'DSC09775', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(418, 26, 'Wakul Plastik Rose 12', 'WAR - 012', '24,5 (d) x 7,5', 'PP', 'Merah, Biru, Hijau', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Pacific', 1000, 'Bakul / tangguk / besek / keranjang berbentuk bunga plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '78 x 49 x 49', 576, 475200, 'DSC09790', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(419, 27, 'Wakul Plastik Batik 12', 'WAB - 012', '23,8 (d) x 7,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 1400, 'Bakul / tangguk / besek / keranjang bulat motif batik plastik warna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '72 x 47 x 47', 576, 686400, 'DSC09773', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(420, 28, 'Wakul Plastik Batik 14', 'WAB - 014', '27 (d) x 9', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 1650, 'Bakul / tangguk / besek / keranjang bulat motif batik plastik warna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '56 x 26 x 70', 360, 495000, 'DSC09781', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(421, 29, 'Wakul Plastik Batik 16', 'WAB - 016', '30 (d) x 10,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 1850, 'Bakul / tangguk / besek / keranjang bulat motif batik plastik warna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '73 x 60 x 30', 360, 561000, 'DSC09781', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(422, 30, 'Wakul Segi Plastik Trendy', 'WAS - 107', '24 x 24 x 9,6', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Pacific', 2450, 'Bakul / tangguk / besek / keranjang segi plastik warna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92 x 50 x 24', 288, 594000, 'DSC09896', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(423, 31, 'Wakul Jumbo Plastik 22 Florent', 'WAJ - 022', '47 (d) x 21,5', 'PP', 'Biru, Hijau, Pink Cerah', 'Ukuran besar, tebal, kuat, warna cerah, kilap', 'Pacific', 13600, 'Bakul / tangguk / besek / keranjang bulat plastik besar berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '47 x 47 x 95', 48, 550000, 'Wakul Jumbo 22.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(424, 32, 'Wakul Jumbo Plastik 22 Ring', 'WJR - 022', '48 (d) x 22', 'PP', 'Ring Biru, Hijau, Merah Cerah', 'Ukuran besar, tebal, kuat, 2 warna, kilap', 'Pacific', 21200, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna putih dan ring warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '47 x 47 x 94', 36, 643500, 'DSC09810', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(425, 33, 'Wakul Jumbo Plastik 24 Florent', 'WAJ - 024', '54 (d) x 28', 'PP', 'Biru, Hijau, Pink Cerah', 'Ukuran besar, tebal, kuat, warna cerah, kilap', 'Pacific', 22800, 'Bakul / tangguk / besek / keranjang bulat plastik besar berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan.', '53 x 53 x 95,5', 36, 693000, 'Wakul Jumbo 22.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(426, 34, 'Wakul Jumbo Plastik 24 Ring', 'WAR - 024', '55 (d) x 28,5', 'PP', 'Ring Biru, Hijau, Merah Cerah', 'Ukuran besar, tebal, kuat, 2 warna, kilap', 'Pacific', 30900, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna putih dan ring warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '56 x 56 x 90', 30, 783750, 'DSC09810', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(427, 35, 'Tenong Bulat Plastik Dx', 'TNO - 102', '21 (d) x 11', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 3900, 'Bakul / tangguk / besek / keranjang bulat plastik berwarna cerah dengan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '67 x 44 x 63', 108, 356400, '035_A_Pandastar_tenong_bulat.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(428, 36, 'Tenong Segi Plastik Dx', 'TNO - 101', '25 x 25 x 10,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 6000, 'Bakul / tangguk / besek / keranjang segi plastik berwarna cerah dengan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '103 x 48,5 x 24', 72, 363000, 'VGT_4682', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(429, 37, 'Wakul Plastik 12 Kuping Super', 'WAK - 312', '24,5 (d) x 13', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 1400, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni dengan kuping. Biasa digunakan untuk slametan / syukuran / hajatan. ', '118 x 50,5 x 24,8', 240, 286000, 'DSC09762', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(430, 38, 'Wakul Plastik 12 Kuping + ttp Dx', 'WAK - 112', '24,5 (d) x 15', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 3250, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '52 x 25 x 85', 144, 396000, 'VGT_4963', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(431, 39, 'Wakul Plastik 14 Kuping Super', 'WAK - 314', '29 (d) x 36 x 16', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 2200, 'Bakul / tangguk / besek / keranjang bulat plastik warna-warni dengan kuping. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92 x 52 x 28', 192, 343200, 'DSC09762', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(432, 40, 'Wakul Plastik 14 Kuping + ttp Dx', 'WAK - 114', '29 (d) x 36 x 20', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 5400, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan.', '54 x 27 x 94', 72, 330000, 'DSC09763', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(433, 41, 'Wakul Plastik 22 Kuping Dx', 'WAK - 122', '21 (d) x 24 x 7,5', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 1200, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan kuping. Biasa digunakan untuk slametan / syukuran / hajatan.', '116 x 42 x 42', 480, 484000, 'VGT_4496', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(434, 42, 'Wakul Plastik Daun 12 Florent', 'WAU - 212', '26 (d) x 8', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 1400, 'Bakul / tangguk / besek / keranjang bulat motif daun plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92,5 x 52,5 x 25,5', 480, 572000, 'DSC09778', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(435, 43, 'Wakul Plastik Daun 12 Super', 'WAU - 312', '26 (d) x 8', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Panda Star', 1000, 'Bakul / tangguk / besek / keranjang bulat motif daun plastik warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '92,5 x 52,5 x 25,5', 480, 396000, 'DSC09780', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(436, 44, 'Wakul Plastik Daun 14 Florent', 'WAU - 214', '29 (d) x 9,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 2100, 'Bakul / tangguk / besek / keranjang bulat motif daun plastik warna-warni. Biasa digunakan untuk slametan / syukuran / hajatan. ', '90 x 59,5 x 31', 432, 752400, 'DSC09777', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(437, 45, 'Wakul Plastik Daun 14 Super', 'WAU - 314', '29 (d) x 9,5', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Panda Star', 1400, 'Bakul / tangguk / besek / keranjang bulat motif daun plastik warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan.', '90 x 59,5 x 31', 432, 514800, 'DSC09780', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(438, 46, 'Wakul Plastik Daun 16 Florent', 'WAU - 216', '33 (d) x 11', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 3600, 'Bakul / tangguk / besek / keranjang bulat motif daun plastik warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan.', '68 x 33 x 78', 240, 726000, 'DSC09777', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(439, 47, 'Wakul Plastik Medan + ttp Dx', 'WAM - 112', '28 (d) x 19', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 3250, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '48 x 47 x 92', 144, 396000, 'VGT_4674', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(440, 48, 'Wakul Plastik Panda Soft', 'WAP - 001', '20 (d) x 7,5', 'PP', 'Soft Biru, Hijau, Pink', 'Kilap, tebal dan tidak mudah rusak', 'Panda Star', 950, 'Bakul / tangguk / besek / keranjang bulat plastik warna soft. Biasa digunakan untuk slametan / syukuran / hajatan. ', '101 x 64 x 19,5', 420, 327250, 'VGT_5009', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(441, 49, 'Wakul Oval Plastik Spanyol', 'WAS - 001', '27,5 x 18 x 8', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 2500, 'Bakul / tangguk / besek / keranjang oval plastik warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '81 x 55 x 36', 384, 809600, 'VGT_4431', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(442, 50, 'Wakul Plastik Tradisi 10 Dx', 'WAD - 110', '20 (d) x 10', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 1150, 'Bakul / tangguk / besek / keranjang bulat plastik warna cerah dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan. ', '103 x 84 x 20', 480, 462000, 'VGT_4562', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(443, 51, 'Wakul Plastik Tradisi 20 Dx', 'WAD - 120', '39 (d) x 19', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 5700, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna cerah dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan. ', '96 x 39,5 x 39,5', 96, 462000, '032_Pandastar_wakulTradisi_20.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(444, 52, 'Wakul Plastik Tradisi 20 Super', 'WAD - 320', '39 (d) x 19', 'PP', 'Merah, Biru, Hijau', 'Kilap, tebal dan tidak mudah rusak', 'Panda Star', 4300, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna-warni dengan dasar segi. Biasa digunakan untuk slametan / syukuran / hajatan. ', '96 x 39,5 x 39,5', 96, 343200, '032_Pandastar_wakulTradisi_20.jpg', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(445, 53, 'Wakul Plastik Tradisi 20 Kuping Dx', 'WAD - 121', '39 (d) x 45  x 19', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 6000, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna cerah dengan dasar segi dan kuping. Biasa digunakan untuk slametan / syukuran / hajatan. ', '103,5 x 48 x 39,5', 72, 363000, 'DSC09891', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(446, 54, 'Wakul Plastik Tradisi 20 Kuping + ttp Dx', 'WAD - 321', '39 (d) x 45 x 25', 'PP', 'Merah, Biru, Hijau Cerah', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 11000, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna cerah dasar segi dan kuping dan tutup. Biasa digunakan untuk slametan / syukuran / hajatan. ', '40 x 40 x 125', 48, 440000, 'DSC09804', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(447, 55, 'Wakul Plastik Tradisi 20 Ring', 'WAD - 020', '39 (d) x 19', 'PP', 'Ring Biru, Hijau, Merah Cerah', 'Ukuran besar, tebal, kuat, 2 warna, kilap', 'Panda Star', 8200, 'Bakul / tangguk / besek / keranjang bulat plastik besar warna putih dengan dasar segi dan ring warna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '119 x 37 x 37', 96, 660000, 'VGT_5022', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', ''),
(448, 56, 'Wakul Plastik Tradisi Segi 14 Florent', 'WAD - 214', '22 x 22 x 14,5', 'PP', 'Orange, Hijau, Pink', 'Warna cerah, kilap, tebal, dan tidak mudah rusak', 'Panda Star', 2200, 'Bakul / tangguk / besek / keranjang segi plastik berwarna cerah. Biasa digunakan untuk slametan / syukuran / hajatan. ', '105 x 45,5 x 22,5', 240, 429000, 'DSC09738', 'FOOD CONTAINER / WADAH MAKANAN - BASKET / BAKUL', 34, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-12 05:43:51'),
(2, 'info@markdesign.net', 'ProductController Update 1', '2014-06-12 05:47:29'),
(3, 'info@markdesign.net', 'ProductController Update 2', '2014-06-12 05:49:12'),
(4, 'info@markdesign.net', 'ProductController Update 3', '2014-06-12 05:49:26'),
(5, 'info@markdesign.net', 'ProductController Update 4', '2014-06-12 05:49:42'),
(6, 'info@markdesign.net', 'ProductController Update 5', '2014-06-12 05:50:44'),
(7, 'info@markdesign.net', 'ProductController Update 6', '2014-06-12 05:51:07'),
(8, 'info@markdesign.net', 'ProductController Update 7', '2014-06-12 05:51:19'),
(9, 'info@markdesign.net', 'ProductController Update 8', '2014-06-12 05:53:36'),
(10, 'info@markdesign.net', 'ProductController Update 8', '2014-06-12 05:55:53'),
(11, 'info@markdesign.net', 'ProductController Update 8', '2014-06-12 05:57:59'),
(12, 'info@markdesign.net', 'ProductController Update 8', '2014-06-12 06:11:37'),
(13, 'info@markdesign.net', 'ProductController Update 22', '2014-06-12 06:45:10'),
(14, 'info@markdesign.net', 'ProductController Update 22', '2014-06-12 06:51:23'),
(15, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 16:00:14'),
(16, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 16:03:23'),
(17, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 16:04:00'),
(18, 'info@markdesign.net', 'ProductController Update 10', '2014-06-12 16:10:40'),
(19, 'info@markdesign.net', 'ProductController Update 10', '2014-06-12 16:11:49'),
(20, 'info@markdesign.net', 'ProductController Update 11', '2014-06-12 16:12:52'),
(21, 'info@markdesign.net', 'ProductController Update 12', '2014-06-12 16:14:00'),
(22, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 16:48:32'),
(23, 'info@markdesign.net', 'ProductController Update 14', '2014-06-12 16:49:40'),
(24, 'info@markdesign.net', 'ProductController Update 15', '2014-06-12 16:50:25'),
(25, 'info@markdesign.net', 'ProductController Update 16', '2014-06-12 16:51:18'),
(26, 'info@markdesign.net', 'ProductController Update 17', '2014-06-12 16:52:03'),
(27, 'info@markdesign.net', 'ProductController Update 18', '2014-06-12 16:53:41'),
(28, 'info@markdesign.net', 'ProductController Update 19', '2014-06-12 16:54:51'),
(29, 'info@markdesign.net', 'ProductController Update 20', '2014-06-12 16:55:55'),
(30, 'info@markdesign.net', 'ProductController Update 21', '2014-06-12 16:56:54'),
(31, 'info@markdesign.net', 'ProductController Update 23', '2014-06-12 16:58:19'),
(32, 'info@markdesign.net', 'ProductController Update 24', '2014-06-12 16:58:52'),
(33, 'info@markdesign.net', 'ProductController Update 25', '2014-06-12 17:03:51'),
(34, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 17:31:29'),
(35, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 18:17:16'),
(36, 'info@markdesign.net', 'ProductController Update 1', '2014-06-12 19:43:27'),
(37, 'info@markdesign.net', 'ProductController Update 2', '2014-06-12 19:43:33'),
(38, 'info@markdesign.net', 'ProductController Update 3', '2014-06-12 19:43:40'),
(39, 'info@markdesign.net', 'ProductController Update 4', '2014-06-12 19:43:44'),
(40, 'info@markdesign.net', 'ProductController Update 5', '2014-06-12 19:43:48'),
(41, 'info@markdesign.net', 'ProductController Update 6', '2014-06-12 19:43:53'),
(42, 'info@markdesign.net', 'ProductController Update 7', '2014-06-12 19:43:58'),
(43, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-13 09:45:41'),
(44, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-13 18:31:12'),
(45, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 18:38:20'),
(46, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 19:20:25'),
(47, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 19:20:47'),
(48, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 19:21:56'),
(49, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-13 23:45:22'),
(50, 'info@markdesign.net', 'Product Controller Create 27', '2014-06-13 23:54:45'),
(51, 'info@markdesign.net', 'ProductController Update 27', '2014-06-13 23:56:04'),
(52, 'info@markdesign.net', 'Product Controller Create 28', '2014-06-14 00:04:29'),
(53, 'info@markdesign.net', 'Product Controller Create 29', '2014-06-14 00:10:41'),
(54, 'info@markdesign.net', 'ProductController Update 29', '2014-06-14 00:11:43'),
(55, 'info@markdesign.net', 'Product Controller Create 30', '2014-06-14 00:16:15'),
(56, 'info@markdesign.net', 'ProductController Update 30', '2014-06-14 00:18:21'),
(57, 'info@markdesign.net', 'Product Controller Create 31', '2014-06-14 00:22:34'),
(58, 'info@markdesign.net', 'ProductController Update 31', '2014-06-14 00:23:22'),
(59, 'info@markdesign.net', 'Product Controller Create 32', '2014-06-14 00:26:00'),
(60, 'info@markdesign.net', 'Product Controller Create 33', '2014-06-14 00:32:17'),
(61, 'info@markdesign.net', 'Product Controller Create 34', '2014-06-14 00:38:39'),
(62, 'info@markdesign.net', 'ProductController Update 34', '2014-06-14 00:39:42'),
(63, 'info@markdesign.net', 'Product Controller Create 35', '2014-06-14 00:42:53'),
(64, 'info@markdesign.net', 'Product Controller Create 36', '2014-06-14 01:22:54'),
(65, 'info@markdesign.net', 'ProductController Update 36', '2014-06-14 01:26:06'),
(66, 'info@markdesign.net', 'ProductController Update 36', '2014-06-14 01:30:14'),
(67, 'info@markdesign.net', 'Bank Update 1', '2014-06-14 02:05:22'),
(68, 'info@markdesign.net', 'Bank Update 2', '2014-06-14 02:07:08'),
(69, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-14 02:27:06'),
(70, 'info@markdesign.net', 'ProductController Update 32', '2014-06-14 02:36:40'),
(71, 'info@markdesign.net', 'Product Controller Create 39', '2014-06-14 03:45:50'),
(72, 'info@markdesign.net', 'ProductController Update 39', '2014-06-14 03:46:06'),
(73, 'info@markdesign.net', 'Product Controller Create 40', '2014-06-14 03:53:40'),
(74, 'info@markdesign.net', 'Product Controller Copy 41', '2014-06-14 03:58:07'),
(75, 'info@markdesign.net', 'ProductController Update 41', '2014-06-14 03:59:23'),
(76, 'info@markdesign.net', 'Product Controller Create 42', '2014-06-14 04:02:41'),
(77, 'info@markdesign.net', 'ProductController Update 41', '2014-06-14 04:05:18'),
(78, 'info@markdesign.net', 'Product Controller Copy 43', '2014-06-14 04:05:37'),
(79, 'info@markdesign.net', 'ProductController Update 43', '2014-06-14 04:06:26'),
(80, 'info@markdesign.net', 'ProductController Update 41', '2014-06-14 04:07:39'),
(81, 'info@markdesign.net', 'Product Controller Create 44', '2014-06-14 04:11:21'),
(82, 'info@markdesign.net', 'Product Controller Copy 45', '2014-06-14 04:13:04'),
(83, 'info@markdesign.net', 'ProductController Update 45', '2014-06-14 04:13:54'),
(84, 'info@markdesign.net', 'Product Controller Copy 46', '2014-06-14 04:14:46'),
(85, 'info@markdesign.net', 'ProductController Update 46', '2014-06-14 04:15:31'),
(86, 'info@markdesign.net', 'Product Controller Create 47', '2014-06-14 04:18:16'),
(87, 'info@markdesign.net', 'ProductController Update 44', '2014-06-14 04:21:37'),
(88, 'info@markdesign.net', 'ProductController Update 46', '2014-06-14 04:21:44'),
(89, 'info@markdesign.net', 'ProductController Update 45', '2014-06-14 04:21:51'),
(90, 'info@markdesign.net', 'Product Controller Copy 48', '2014-06-14 04:22:05'),
(91, 'info@markdesign.net', 'Product Controller Create 49', '2014-06-14 04:26:11'),
(92, 'info@markdesign.net', 'ProductController Update 48', '2014-06-14 04:27:40'),
(93, 'info@markdesign.net', 'ProductController Update 48', '2014-06-14 04:30:26'),
(94, 'info@markdesign.net', 'Product Controller Create 50', '2014-06-14 04:33:15'),
(95, 'info@markdesign.net', 'Product Controller Copy 51', '2014-06-14 04:37:57'),
(96, 'info@markdesign.net', 'ProductController Update 51', '2014-06-14 04:38:48'),
(97, 'info@markdesign.net', 'Product Controller Copy 52', '2014-06-14 04:39:21'),
(98, 'info@markdesign.net', 'ProductController Update 52', '2014-06-14 04:40:11'),
(99, 'info@markdesign.net', 'Product Controller Create 53', '2014-06-14 05:07:36'),
(100, 'info@markdesign.net', 'Product Controller Create 54', '2014-06-14 05:15:58'),
(101, 'info@markdesign.net', 'Product Controller Copy 55', '2014-06-14 05:23:25'),
(102, 'info@markdesign.net', 'ProductController Update 55', '2014-06-14 05:24:33'),
(103, 'info@markdesign.net', 'ProductController Update 55', '2014-06-14 05:26:43'),
(104, 'info@markdesign.net', 'Product Controller Create 56', '2014-06-14 05:38:02'),
(105, 'info@markdesign.net', 'Product Controller Copy 57', '2014-06-14 05:39:59'),
(106, 'info@markdesign.net', 'ProductController Update 57', '2014-06-14 05:42:13'),
(107, 'info@markdesign.net', 'ProductController Update 57', '2014-06-14 05:42:15'),
(108, 'info@markdesign.net', 'Product Controller Create 58', '2014-06-14 05:46:32'),
(109, 'info@markdesign.net', 'Product Controller Copy 59', '2014-06-14 06:05:47'),
(110, 'info@markdesign.net', 'ProductController Update 59', '2014-06-14 06:06:48'),
(111, 'info@markdesign.net', 'ProductController Update 59', '2014-06-14 06:07:24'),
(112, 'info@markdesign.net', 'Product Controller Copy 60', '2014-06-14 06:07:57'),
(113, 'info@markdesign.net', 'ProductController Update 60', '2014-06-14 06:09:07'),
(114, 'info@markdesign.net', 'Product Controller Copy 61', '2014-06-14 06:10:29'),
(115, 'info@markdesign.net', 'ProductController Update 61', '2014-06-14 06:13:09'),
(116, 'info@markdesign.net', 'Product Controller Create 62', '2014-06-14 06:21:51'),
(117, 'info@markdesign.net', 'Product Controller Copy 63', '2014-06-14 06:34:06'),
(118, 'info@markdesign.net', 'ProductController Update 63', '2014-06-14 06:35:32'),
(119, 'info@markdesign.net', 'Product Controller Create 64', '2014-06-14 06:55:24'),
(120, 'info@markdesign.net', 'ProductController Update 64', '2014-06-14 06:56:24'),
(121, 'info@markdesign.net', 'Product Controller Copy 65', '2014-06-14 06:57:32'),
(122, 'info@markdesign.net', 'Product Controller Copy 66', '2014-06-14 06:57:33'),
(123, 'info@markdesign.net', 'Product Controller Copy 67', '2014-06-14 06:57:34'),
(124, 'info@markdesign.net', 'Product Controller Copy 68', '2014-06-14 06:57:43'),
(125, 'info@markdesign.net', 'ProductController Update 65', '2014-06-14 07:00:10'),
(126, 'info@markdesign.net', 'Product Controller Copy 69', '2014-06-14 07:00:52'),
(127, 'info@markdesign.net', 'ProductController Update 69', '2014-06-14 07:02:17'),
(128, 'info@markdesign.net', 'Product Controller Copy 70', '2014-06-14 07:02:43'),
(129, 'info@markdesign.net', 'ProductController Update 70', '2014-06-14 07:03:59'),
(130, 'info@markdesign.net', 'Product Controller Create 71', '2014-06-14 07:09:30'),
(131, 'info@markdesign.net', 'Product Controller Copy 72', '2014-06-14 07:19:42'),
(132, 'info@markdesign.net', 'ProductController Update 72', '2014-06-14 07:22:22'),
(133, 'info@markdesign.net', 'ProductController Update 72', '2014-06-14 07:23:50'),
(134, 'info@markdesign.net', 'Product Controller Copy 73', '2014-06-14 07:27:49'),
(135, 'info@markdesign.net', 'ProductController Update 73', '2014-06-14 07:29:09'),
(136, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-14 16:44:36'),
(137, 'info@markdesign.net', 'Product Controller Create 74', '2014-06-14 16:48:55'),
(138, 'info@markdesign.net', 'Product Controller Copy 75', '2014-06-14 16:49:16'),
(139, 'info@markdesign.net', 'ProductController Update 75', '2014-06-14 16:49:45'),
(140, 'info@markdesign.net', 'Product Controller Create 76', '2014-06-14 16:53:24'),
(141, 'info@markdesign.net', 'ProductController Update 76', '2014-06-14 18:20:06'),
(142, 'info@markdesign.net', 'Setting Update', '2014-06-14 18:28:02'),
(143, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-14 21:55:25'),
(144, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-15 18:51:28'),
(145, 'info@markdesign.net', 'ProductController Update 73', '2014-06-15 18:55:17'),
(146, 'info@markdesign.net', 'ProductController Update 72', '2014-06-15 18:55:44'),
(147, 'info@markdesign.net', 'Bank Update 2', '2014-06-15 18:58:14'),
(148, 'info@markdesign.net', 'Bank Update 2', '2014-06-15 18:58:22'),
(149, 'info@markdesign.net', 'ProductController Update 75', '2014-06-15 19:00:41'),
(150, 'info@markdesign.net', 'ProductController Update 74', '2014-06-15 19:00:44'),
(151, 'info@markdesign.net', 'ProductController Update 70', '2014-06-15 19:01:12'),
(152, 'info@markdesign.net', 'ProductController Update 69', '2014-06-15 19:01:20'),
(153, 'info@markdesign.net', 'ProductController Update 65', '2014-06-15 19:01:27'),
(154, 'info@markdesign.net', 'ProductController Update 63', '2014-06-15 19:02:25'),
(155, 'info@markdesign.net', 'Product Controller Create 77', '2014-06-16 20:14:19'),
(156, 'info@markdesign.net', 'Product Controller Create 78', '2014-06-16 20:20:38'),
(157, 'info@markdesign.net', 'Product Controller Create 79', '2014-06-16 20:23:30'),
(158, 'info@markdesign.net', 'Product Controller Copy 80', '2014-06-16 20:23:47'),
(159, 'info@markdesign.net', 'ProductController Update 80', '2014-06-16 20:24:23'),
(160, 'info@markdesign.net', 'Product Controller Create 82', '2014-06-16 23:16:18'),
(161, 'info@markdesign.net', 'ProductController Update 82', '2014-06-16 23:16:41'),
(162, 'info@markdesign.net', 'ProductController Update 82', '2014-06-16 23:17:38'),
(163, 'info@markdesign.net', 'Product Controller Copy 83', '2014-06-16 23:18:05'),
(164, 'info@markdesign.net', 'ProductController Update 83', '2014-06-16 23:18:40'),
(165, 'info@markdesign.net', 'ProductController Update 83', '2014-06-16 23:18:56'),
(166, 'info@markdesign.net', 'Product Controller Create 84', '2014-06-16 23:20:39'),
(167, 'info@markdesign.net', 'ProductController Update 84', '2014-06-16 23:21:10'),
(168, 'info@markdesign.net', 'Product Controller Create 85', '2014-06-16 23:24:58'),
(169, 'info@markdesign.net', 'Product Controller Copy 86', '2014-06-16 23:33:19'),
(170, 'info@markdesign.net', 'ProductController Update 86', '2014-06-16 23:33:51'),
(171, 'info@markdesign.net', 'ProductController Update 86', '2014-06-16 23:35:19'),
(172, 'info@markdesign.net', 'ProductController Update 85', '2014-06-16 23:37:53'),
(173, 'info@markdesign.net', 'Product Controller Create 88', '2014-06-16 23:41:38'),
(174, 'info@markdesign.net', 'ProductController Update 88', '2014-06-16 23:43:58'),
(175, 'info@markdesign.net', 'Product Controller Create 89', '2014-06-16 23:49:30'),
(176, 'info@markdesign.net', 'Product Controller Copy 90', '2014-06-16 23:50:33'),
(177, 'info@markdesign.net', 'ProductController Update 90', '2014-06-16 23:52:08'),
(178, 'info@markdesign.net', 'ProductController Update 90', '2014-06-16 23:54:19'),
(179, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-17 02:02:00'),
(180, 'info@markdesign.net', 'Setting Update', '2014-06-17 02:07:13'),
(181, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-17 02:20:24'),
(182, 'info@markdesign.net', 'CategoryController Create 52', '2014-06-17 02:29:07'),
(183, 'info@markdesign.net', 'CategoryController Update 52', '2014-06-17 02:30:23'),
(184, 'info@markdesign.net', 'CategoryController Create 53', '2014-06-17 02:36:56'),
(185, 'info@markdesign.net', 'CategoryController Create 54', '2014-06-17 02:37:48'),
(186, 'info@markdesign.net', 'CategoryController Create 55', '2014-06-17 02:51:41'),
(187, 'info@markdesign.net', 'CategoryController Create 56', '2014-06-17 02:51:58'),
(188, 'info@markdesign.net', 'CategoryController Create 57', '2014-06-17 02:53:18'),
(189, 'info@markdesign.net', 'CategoryController Create 58', '2014-06-17 02:53:51'),
(190, 'info@markdesign.net', 'CategoryController Create 59', '2014-06-17 02:54:03'),
(191, 'info@markdesign.net', 'CategoryController Create 60', '2014-06-17 02:54:48'),
(192, 'info@markdesign.net', 'Product Controller Create 92', '2014-06-17 05:41:50'),
(193, 'info@markdesign.net', 'Product Controller Create 93', '2014-06-17 05:43:23'),
(194, 'info@markdesign.net', 'Product Controller Create 94', '2014-06-17 05:45:46'),
(195, 'info@markdesign.net', 'Product Controller Create 95', '2014-06-17 05:46:45'),
(196, 'info@markdesign.net', 'Product Controller Create 96', '2014-06-17 05:48:25'),
(197, 'info@markdesign.net', 'ProductController Update 93', '2014-06-17 05:48:54'),
(198, 'info@markdesign.net', 'ProductController Update 92', '2014-06-17 05:49:17'),
(199, 'info@markdesign.net', 'Product Controller Create 95', '2014-06-17 05:49:45'),
(200, 'info@markdesign.net', 'Product Controller Create 94', '2014-06-17 05:50:02'),
(201, 'info@markdesign.net', 'Product Controller Create 98', '2014-06-17 05:57:44'),
(202, 'info@markdesign.net', 'Product Controller Create 98', '2014-06-17 05:59:58'),
(203, 'info@markdesign.net', 'Product Controller Create 99', '2014-06-17 06:00:24'),
(204, 'info@markdesign.net', 'Product Controller Copy 100', '2014-06-17 06:01:39'),
(205, 'info@markdesign.net', 'Product Controller Copy 101', '2014-06-17 06:01:50'),
(206, 'info@markdesign.net', 'Product Controller Copy 102', '2014-06-17 06:01:55'),
(207, 'info@markdesign.net', 'Product Controller Copy 103', '2014-06-17 06:02:14'),
(208, 'info@markdesign.net', 'Product Controller Copy 104', '2014-06-17 06:02:15'),
(209, 'info@markdesign.net', 'Product Controller Copy 105', '2014-06-17 06:02:18'),
(210, 'info@markdesign.net', 'ProductController Update 102', '2014-06-17 06:06:54'),
(211, 'info@markdesign.net', 'ProductController Update 104', '2014-06-17 06:07:37'),
(212, 'info@markdesign.net', 'ProductController Update 101', '2014-06-17 06:08:38'),
(213, 'info@markdesign.net', 'ProductController Update 102', '2014-06-17 06:08:43'),
(214, 'info@markdesign.net', 'ProductController Update 100', '2014-06-17 06:11:45'),
(215, 'info@markdesign.net', 'ProductController Update 100', '2014-06-17 06:13:47'),
(216, 'info@markdesign.net', 'ProductController Update 103', '2014-06-17 06:14:45'),
(217, 'info@markdesign.net', 'ProductController Update 105', '2014-06-17 06:15:49'),
(218, 'info@markdesign.net', 'Product Controller Copy 106', '2014-06-17 06:18:15'),
(219, 'info@markdesign.net', 'Product Controller Copy 107', '2014-06-17 06:18:25'),
(220, 'info@markdesign.net', 'ProductController Update 106', '2014-06-17 06:22:50'),
(221, 'info@markdesign.net', 'ProductController Update 107', '2014-06-17 06:23:27'),
(222, 'info@markdesign.net', 'ProductController Update 98', '2014-06-17 06:26:52'),
(223, 'info@markdesign.net', 'Product Controller Copy 108', '2014-06-17 17:28:49'),
(224, 'info@markdesign.net', 'ProductController Update 108', '2014-06-17 17:29:54'),
(225, 'info@markdesign.net', 'Product Controller Create 109', '2014-06-17 17:31:24'),
(226, 'info@markdesign.net', 'Product Controller Create 110', '2014-06-17 17:32:49'),
(227, 'info@markdesign.net', 'Product Controller Create 111', '2014-06-17 17:37:44'),
(228, 'info@markdesign.net', 'Product Controller Create 112', '2014-06-17 17:38:23'),
(229, 'info@markdesign.net', 'Product Controller Copy 114', '2014-06-17 17:38:43'),
(230, 'info@markdesign.net', 'Product Controller Copy 115', '2014-06-17 17:38:47'),
(231, 'info@markdesign.net', 'ProductController Update 114', '2014-06-17 17:40:23'),
(232, 'info@markdesign.net', 'ProductController Update 115', '2014-06-17 17:41:22'),
(233, 'info@markdesign.net', 'Product Controller Create 116', '2014-06-17 17:43:27'),
(234, 'info@markdesign.net', 'Product Controller Create 117', '2014-06-17 17:45:01'),
(235, 'info@markdesign.net', 'Product Controller Create 118', '2014-06-17 17:46:29'),
(236, 'info@markdesign.net', 'Product Controller Copy 119', '2014-06-17 17:46:52'),
(237, 'info@markdesign.net', 'Product Controller Copy 120', '2014-06-17 17:46:56'),
(238, 'info@markdesign.net', 'ProductController Update 119', '2014-06-17 17:47:43'),
(239, 'info@markdesign.net', 'ProductController Update 120', '2014-06-17 17:48:29'),
(240, 'info@markdesign.net', 'Product Controller Create 121', '2014-06-17 17:50:51'),
(241, 'info@markdesign.net', 'Product Controller Create 122', '2014-06-17 17:52:13'),
(242, 'info@markdesign.net', 'Product Controller Copy 124', '2014-06-17 17:54:21'),
(243, 'info@markdesign.net', 'Product Controller Copy 125', '2014-06-17 17:54:25'),
(244, 'info@markdesign.net', 'Product Controller Copy 126', '2014-06-17 17:54:34'),
(245, 'info@markdesign.net', 'Product Controller Create 123', '2014-06-17 17:54:51'),
(246, 'info@markdesign.net', 'ProductController Update 124', '2014-06-17 17:55:24'),
(247, 'info@markdesign.net', 'ProductController Update 124', '2014-06-17 17:56:06'),
(248, 'info@markdesign.net', 'ProductController Update 125', '2014-06-17 17:56:30'),
(249, 'info@markdesign.net', 'ProductController Update 126', '2014-06-17 17:57:15'),
(250, 'info@markdesign.net', 'ProductController Update 120', '2014-06-17 17:58:01'),
(251, 'info@markdesign.net', 'Product Controller Copy 127', '2014-06-17 17:58:24'),
(252, 'info@markdesign.net', 'Product Controller Copy 128', '2014-06-17 17:58:28'),
(253, 'info@markdesign.net', 'ProductController Update 127', '2014-06-17 17:59:15'),
(254, 'info@markdesign.net', 'ProductController Update 128', '2014-06-17 18:00:02'),
(255, 'info@markdesign.net', 'ProductController Update 128', '2014-06-17 18:02:55'),
(256, 'info@markdesign.net', 'ProductController Update 127', '2014-06-17 18:03:33'),
(257, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-17 20:03:21'),
(258, 'deoryzpandu@gmail.com', 'CategoryController Create 61', '2014-06-17 20:24:21'),
(259, 'deoryzpandu@gmail.com', 'CategoryController Update 61', '2014-06-17 20:24:51'),
(260, 'info@markdesign.net', 'Product Controller Create 129', '2014-06-17 22:56:09'),
(261, 'info@markdesign.net', 'Product Controller Create 130', '2014-06-17 22:58:11'),
(262, 'info@markdesign.net', 'Product Controller Copy 131', '2014-06-17 22:58:40'),
(263, 'info@markdesign.net', 'Product Controller Copy 132', '2014-06-17 22:58:46'),
(264, 'info@markdesign.net', 'ProductController Update 131', '2014-06-17 23:00:01'),
(265, 'info@markdesign.net', 'ProductController Update 132', '2014-06-17 23:01:04'),
(266, 'info@markdesign.net', 'Product Controller Copy 133', '2014-06-17 23:01:13'),
(267, 'info@markdesign.net', 'ProductController Update 133', '2014-06-17 23:02:25'),
(268, 'info@markdesign.net', 'Product Controller Create 134', '2014-06-17 23:05:15'),
(269, 'info@markdesign.net', 'Product Controller Create 135', '2014-06-17 23:07:00'),
(270, 'info@markdesign.net', 'Product Controller Create 137', '2014-06-17 23:09:36'),
(271, 'info@markdesign.net', 'Product Controller Create 136', '2014-06-17 23:10:45'),
(272, 'info@markdesign.net', 'Product Controller Copy 138', '2014-06-17 23:11:38'),
(273, 'info@markdesign.net', 'ProductController Update 138', '2014-06-17 23:12:37'),
(274, 'info@markdesign.net', 'Product Controller Create 139', '2014-06-17 23:16:09'),
(275, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-17 23:24:55'),
(276, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-17 23:25:10'),
(277, 'deoryzpandu@gmail.com', 'CategoryController Create 62', '2014-06-18 01:25:17'),
(278, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-18 01:25:54'),
(279, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-18 01:26:12'),
(280, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-18 01:27:10'),
(281, 'deoryzpandu@gmail.com', 'CategoryController Create 63', '2014-06-18 01:27:46'),
(282, 'deoryzpandu@gmail.com', 'CategoryController Create 64', '2014-06-18 01:28:12'),
(283, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-18 23:41:15'),
(284, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-18 23:57:14'),
(285, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-18 23:58:22'),
(286, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-19 00:35:57'),
(287, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-19 00:40:21'),
(288, 'deoryzpandu@gmail.com', 'CategoryController Update 12', '2014-06-19 00:47:13'),
(289, 'deoryzpandu@gmail.com', 'CategoryController Update 11', '2014-06-19 00:47:20'),
(290, 'deoryzpandu@gmail.com', 'CategoryController Update 10', '2014-06-19 00:47:40'),
(291, 'deoryzpandu@gmail.com', 'CategoryController Update 13', '2014-06-19 00:48:57'),
(292, 'deoryzpandu@gmail.com', 'CategoryController Update 14', '2014-06-19 00:49:06'),
(293, 'deoryzpandu@gmail.com', 'CategoryController Update 15', '2014-06-19 00:49:13'),
(294, 'deoryzpandu@gmail.com', 'CategoryController Update 16', '2014-06-19 00:49:24'),
(295, 'deoryzpandu@gmail.com', 'CategoryController Update 17', '2014-06-19 00:49:34'),
(296, 'deoryzpandu@gmail.com', 'CategoryController Update 18', '2014-06-19 00:49:58'),
(297, 'deoryzpandu@gmail.com', 'CategoryController Update 19', '2014-06-19 00:50:07'),
(298, 'deoryzpandu@gmail.com', 'CategoryController Update 20', '2014-06-19 00:50:19'),
(299, 'deoryzpandu@gmail.com', 'CategoryController Update 21', '2014-06-19 00:50:31'),
(300, 'deoryzpandu@gmail.com', 'CategoryController Update 42', '2014-06-19 00:50:43'),
(301, 'deoryzpandu@gmail.com', 'CategoryController Update 43', '2014-06-19 00:50:51'),
(302, 'deoryzpandu@gmail.com', 'CategoryController Update 44', '2014-06-19 00:51:07'),
(303, 'deoryzpandu@gmail.com', 'CategoryController Update 45', '2014-06-19 00:51:16'),
(304, 'deoryzpandu@gmail.com', 'CategoryController Update 12', '2014-06-19 00:53:35'),
(305, 'deoryzpandu@gmail.com', 'CategoryController Update 13', '2014-06-19 00:56:33'),
(306, 'deoryzpandu@gmail.com', 'CategoryController Update 14', '2014-06-19 00:56:46'),
(307, 'deoryzpandu@gmail.com', 'CategoryController Update 15', '2014-06-19 00:56:54'),
(308, 'deoryzpandu@gmail.com', 'CategoryController Update 16', '2014-06-19 00:57:02'),
(309, 'deoryzpandu@gmail.com', 'CategoryController Update 17', '2014-06-19 00:57:14'),
(310, 'deoryzpandu@gmail.com', 'CategoryController Update 18', '2014-06-19 00:57:26'),
(311, 'deoryzpandu@gmail.com', 'CategoryController Update 19', '2014-06-19 00:57:35'),
(312, 'deoryzpandu@gmail.com', 'CategoryController Update 20', '2014-06-19 00:57:46'),
(313, 'deoryzpandu@gmail.com', 'CategoryController Update 21', '2014-06-19 00:57:54'),
(314, 'deoryzpandu@gmail.com', 'CategoryController Update 42', '2014-06-19 00:58:09'),
(315, 'deoryzpandu@gmail.com', 'CategoryController Update 43', '2014-06-19 00:58:16'),
(316, 'deoryzpandu@gmail.com', 'CategoryController Update 44', '2014-06-19 00:58:24'),
(317, 'deoryzpandu@gmail.com', 'CategoryController Update 45', '2014-06-19 00:58:31'),
(318, 'deoryzpandu@gmail.com', 'CategoryController Create 65', '2014-06-19 01:25:42'),
(319, 'deoryzpandu@gmail.com', 'CategoryController Update 65', '2014-06-19 01:26:00'),
(320, 'deoryzpandu@gmail.com', 'CategoryController Create 66', '2014-06-19 01:26:11'),
(321, 'deoryzpandu@gmail.com', 'BlogController Update 25', '2014-06-19 01:40:34'),
(322, 'deoryzpandu@gmail.com', 'BlogController Update 89', '2014-06-19 01:40:49'),
(323, 'deoryzpandu@gmail.com', 'BlogController Update 15', '2014-06-19 01:47:35'),
(324, 'deoryzpandu@gmail.com', 'BlogController Update 124', '2014-06-19 01:47:55'),
(325, 'deoryzpandu@gmail.com', 'Blog Controller Create 1', '2014-06-19 02:23:42'),
(326, 'deoryzpandu@gmail.com', 'Blog Controller Create 2', '2014-06-19 02:26:38'),
(327, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-06-19 02:27:14'),
(328, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-19 03:02:42'),
(329, 'info@markdesign.net', 'ProductController Update 244', '2014-06-19 03:07:21'),
(330, 'info@markdesign.net', 'ProductController Update 245', '2014-06-19 03:08:40'),
(331, 'info@markdesign.net', 'ProductController Update 223', '2014-06-19 03:17:07'),
(332, 'info@markdesign.net', 'ProductController Update 222', '2014-06-19 03:17:25'),
(333, 'info@markdesign.net', 'ProductController Update 222', '2014-06-19 03:18:06'),
(334, 'info@markdesign.net', 'ProductController Update 221', '2014-06-19 03:18:32'),
(335, 'info@markdesign.net', 'ProductController Update 220', '2014-06-19 03:18:59'),
(336, 'info@markdesign.net', 'ProductController Update 219', '2014-06-19 03:19:35'),
(337, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-19 15:27:42'),
(338, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-19 17:39:13'),
(339, 'info@markdesign.net', 'Blog Controller Create 3', '2014-06-19 17:42:55'),
(340, 'info@markdesign.net', 'Blog Controller Create 4', '2014-06-19 17:45:00'),
(341, 'info@markdesign.net', 'Blog Controller Create 5', '2014-06-19 17:47:55'),
(342, 'info@markdesign.net', 'Blog Controller Create 6', '2014-06-19 17:48:59'),
(343, 'info@markdesign.net', 'BlogController Update 2', '2014-06-19 17:51:23'),
(344, 'info@markdesign.net', 'BlogController Update 1', '2014-06-19 17:52:49'),
(345, 'deoryzpandu@gmail.com', 'Blog Controller Create 7', '2014-06-19 18:50:16'),
(346, 'deoryzpandu@gmail.com', 'Blog Controller Create 8', '2014-06-19 18:51:28'),
(347, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-19 19:25:51'),
(348, 'Info@markdesign.net', 'ProductController Update 163', '2014-06-19 19:28:53'),
(349, 'Info@markdesign.net', 'ProductController Update 167', '2014-06-19 19:36:12'),
(350, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 19:48:34'),
(351, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 19:49:13'),
(352, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 19:49:51'),
(353, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 19:49:53'),
(354, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 19:51:32'),
(355, 'info@markdesign.net', 'ProductController Update 168', '2014-06-19 19:53:19'),
(356, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 19:53:22'),
(357, 'info@markdesign.net', 'ProductController Update 244', '2014-06-19 19:56:24'),
(358, 'info@markdesign.net', 'ProductController Update 168', '2014-06-19 19:56:38'),
(359, 'info@markdesign.net', 'ProductController Update 245', '2014-06-19 19:58:23'),
(360, 'info@markdesign.net', 'ProductController Update 170', '2014-06-19 20:00:18'),
(361, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 20:02:43'),
(362, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 20:02:52'),
(363, 'info@markdesign.net', 'Product Controller Create 249', '2014-06-19 20:13:27'),
(364, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 20:19:36'),
(365, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 20:22:21'),
(366, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 20:23:47'),
(367, 'deoryzpandu@gmail.com', 'Blog Controller Create 9', '2014-06-19 21:28:53'),
(368, 'deoryzpandu@gmail.com', 'Blog Controller Create 10', '2014-06-19 21:29:54'),
(369, 'deoryzpandu@gmail.com', 'Blog Controller Create 11', '2014-06-19 21:30:55'),
(370, 'deoryzpandu@gmail.com', 'Blog Controller Create 12', '2014-06-19 21:32:39'),
(371, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 21:32:46'),
(372, 'deoryzpandu@gmail.com', 'Blog Controller Create 13', '2014-06-19 21:33:49'),
(373, 'info@markdesign.net', 'ProductController Update 244', '2014-06-19 21:34:46'),
(374, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 21:35:21'),
(375, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-19 21:55:58'),
(376, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-19 21:56:15'),
(377, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 22:28:12'),
(378, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 22:29:17'),
(379, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 22:30:11'),
(380, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 22:31:56'),
(381, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 22:33:04'),
(382, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-06-19 22:33:52'),
(383, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-06-19 22:34:12'),
(384, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-06-19 22:35:50'),
(385, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-06-19 22:36:32'),
(386, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 22:37:22'),
(387, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 22:37:47'),
(388, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 22:38:10'),
(389, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 22:38:36'),
(390, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 22:39:02'),
(391, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 22:42:05'),
(392, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 22:43:01'),
(393, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 22:43:17'),
(394, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 22:43:45'),
(395, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 22:43:54'),
(396, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 22:44:04'),
(397, 'info@markdesign.net', 'ProductController Update 131', '2014-06-19 23:43:38'),
(398, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 23:45:59'),
(399, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 23:46:56'),
(400, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 23:48:28'),
(401, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 23:49:50'),
(402, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 23:51:12'),
(403, 'info@markdesign.net', 'ProductController Update 131', '2014-06-19 23:51:53'),
(404, 'info@markdesign.net', 'ProductController Update 133', '2014-06-19 23:53:40'),
(405, 'info@markdesign.net', 'ProductController Update 130', '2014-06-20 00:00:06'),
(406, 'info@markdesign.net', 'ProductController Update 128', '2014-06-20 00:30:19'),
(407, 'info@markdesign.net', 'ProductController Update 128', '2014-06-20 00:31:45'),
(408, 'info@markdesign.net', 'ProductController Update 128', '2014-06-20 00:32:23'),
(409, 'info@markdesign.net', 'ProductController Update 123', '2014-06-20 00:32:34'),
(410, 'info@markdesign.net', 'ProductController Update 124', '2014-06-20 00:33:40'),
(411, 'info@markdesign.net', 'ProductController Update 125', '2014-06-20 00:35:27'),
(412, 'info@markdesign.net', 'ProductController Update 126', '2014-06-20 00:36:49'),
(413, 'info@markdesign.net', 'ProductController Update 127', '2014-06-20 00:38:20'),
(414, 'info@markdesign.net', 'ProductController Update 122', '2014-06-20 00:40:21'),
(415, 'info@markdesign.net', 'ProductController Update 121', '2014-06-20 00:41:31'),
(416, 'info@markdesign.net', 'ProductController Update 120', '2014-06-20 00:43:11'),
(417, 'info@markdesign.net', 'ProductController Update 119', '2014-06-20 00:44:51'),
(418, 'info@markdesign.net', 'ProductController Update 118', '2014-06-20 00:45:59'),
(419, 'info@markdesign.net', 'ProductController Update 117', '2014-06-20 00:47:14'),
(420, 'info@markdesign.net', 'ProductController Update 116', '2014-06-20 00:48:24'),
(421, 'info@markdesign.net', 'ProductController Update 117', '2014-06-20 00:49:05'),
(422, 'info@markdesign.net', 'ProductController Update 115', '2014-06-20 00:50:08'),
(423, 'info@markdesign.net', 'ProductController Update 249', '2014-06-20 02:33:11'),
(424, 'info@markdesign.net', 'ProductController Update 36', '2014-06-20 02:34:57'),
(425, 'info@markdesign.net', 'ProductController Update 34', '2014-06-20 02:36:20'),
(426, 'info@markdesign.net', 'ProductController Update 33', '2014-06-20 02:37:40'),
(427, 'info@markdesign.net', 'ProductController Update 35', '2014-06-20 02:39:07'),
(428, 'info@markdesign.net', 'ProductController Update 32', '2014-06-20 02:40:14'),
(429, 'info@markdesign.net', 'ProductController Update 31', '2014-06-20 02:41:08'),
(430, 'info@markdesign.net', 'ProductController Update 36', '2014-06-20 02:41:24'),
(431, 'info@markdesign.net', 'ProductController Update 34', '2014-06-20 02:41:28'),
(432, 'info@markdesign.net', 'ProductController Update 33', '2014-06-20 02:41:32'),
(433, 'info@markdesign.net', 'ProductController Update 32', '2014-06-20 02:42:19'),
(434, 'info@markdesign.net', 'ProductController Update 30', '2014-06-20 02:43:27'),
(435, 'info@markdesign.net', 'ProductController Update 35', '2014-06-20 02:43:34'),
(436, 'info@markdesign.net', 'ProductController Update 29', '2014-06-20 02:47:46'),
(437, 'info@markdesign.net', 'ProductController Update 28', '2014-06-20 02:50:20'),
(438, 'info@markdesign.net', 'ProductController Update 27', '2014-06-20 02:52:08'),
(439, 'info@markdesign.net', 'ProductController Update 27', '2014-06-20 02:52:52'),
(440, 'info@markdesign.net', 'ProductController Update 12', '2014-06-20 03:10:11'),
(441, 'info@markdesign.net', 'ProductController Update 14', '2014-06-20 03:10:14'),
(442, 'info@markdesign.net', 'ProductController Update 15', '2014-06-20 03:10:46'),
(443, 'info@markdesign.net', 'ProductController Update 17', '2014-06-20 03:10:46'),
(444, 'info@markdesign.net', 'ProductController Update 11', '2014-06-20 03:10:53'),
(445, 'info@markdesign.net', 'ProductController Update 18', '2014-06-20 03:13:29'),
(446, 'info@markdesign.net', 'ProductController Update 16', '2014-06-20 03:13:36'),
(447, 'info@markdesign.net', 'ProductController Update 21', '2014-06-20 03:16:26'),
(448, 'info@markdesign.net', 'ProductController Update 23', '2014-06-20 03:16:34'),
(449, 'info@markdesign.net', 'ProductController Update 19', '2014-06-20 03:18:26'),
(450, 'info@markdesign.net', 'ProductController Update 24', '2014-06-20 03:18:34'),
(451, 'info@markdesign.net', 'ProductController Update 25', '2014-06-20 03:18:43'),
(452, 'info@markdesign.net', 'ProductController Update 4', '2014-06-20 03:22:22'),
(453, 'info@markdesign.net', 'ProductController Update 5', '2014-06-20 03:23:49'),
(454, 'info@markdesign.net', 'ProductController Update 6', '2014-06-20 03:23:53'),
(455, 'info@markdesign.net', 'ProductController Update 7', '2014-06-20 03:23:58'),
(456, 'info@markdesign.net', 'ProductController Update 1', '2014-06-20 03:24:17'),
(457, 'info@markdesign.net', 'ProductController Update 2', '2014-06-20 03:24:22'),
(458, 'info@markdesign.net', 'ProductController Update 3', '2014-06-20 03:24:26'),
(459, 'info@markdesign.net', 'ProductController Update 8', '2014-06-20 03:25:42'),
(460, 'info@markdesign.net', 'ProductController Update 22', '2014-06-20 03:46:08'),
(461, 'info@markdesign.net', 'ProductController Update 10', '2014-06-20 03:49:00'),
(462, 'info@markdesign.net', 'ProductController Update 135', '2014-06-20 16:04:42'),
(463, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-20 16:05:15'),
(464, 'info@markdesign.net', 'ProductController Update 248', '2014-06-20 16:08:50'),
(465, 'info@markdesign.net', 'ProductController Update 142', '2014-06-20 16:08:56'),
(466, 'info@markdesign.net', 'ProductController Update 139', '2014-06-20 16:09:01'),
(467, 'info@markdesign.net', 'ProductController Update 141', '2014-06-20 16:09:04'),
(468, 'info@markdesign.net', 'ProductController Update 247', '2014-06-20 16:09:09'),
(469, 'info@markdesign.net', 'ProductController Update 138', '2014-06-20 16:09:51'),
(470, 'info@markdesign.net', 'ProductController Update 137', '2014-06-20 16:09:53'),
(471, 'info@markdesign.net', 'ProductController Update 136', '2014-06-20 16:09:58'),
(472, 'info@markdesign.net', 'ProductController Update 135', '2014-06-20 16:10:02'),
(473, 'info@markdesign.net', 'ProductController Update 134', '2014-06-20 16:10:06'),
(474, 'info@markdesign.net', 'ProductController Update 133', '2014-06-20 16:10:09'),
(475, 'info@markdesign.net', 'ProductController Update 132', '2014-06-20 16:10:13'),
(476, 'info@markdesign.net', 'ProductController Update 131', '2014-06-20 16:10:16'),
(477, 'info@markdesign.net', 'ProductController Update 130', '2014-06-20 16:10:18'),
(478, 'info@markdesign.net', 'ProductController Update 129', '2014-06-20 16:10:23'),
(479, 'info@markdesign.net', 'ProductController Update 118', '2014-06-20 16:11:12'),
(480, 'info@markdesign.net', 'ProductController Update 117', '2014-06-20 16:11:14'),
(481, 'info@markdesign.net', 'ProductController Update 116', '2014-06-20 16:11:19'),
(482, 'info@markdesign.net', 'ProductController Update 115', '2014-06-20 16:11:22'),
(483, 'info@markdesign.net', 'ProductController Update 114', '2014-06-20 16:11:27'),
(484, 'info@markdesign.net', 'ProductController Update 111', '2014-06-20 16:11:32'),
(485, 'info@markdesign.net', 'ProductController Update 112', '2014-06-20 16:11:33'),
(486, 'info@markdesign.net', 'ProductController Update 110', '2014-06-20 16:11:38'),
(487, 'info@markdesign.net', 'ProductController Update 109', '2014-06-20 16:11:41'),
(488, 'info@markdesign.net', 'ProductController Update 108', '2014-06-20 16:11:50'),
(489, 'info@markdesign.net', 'ProductController Update 107', '2014-06-20 16:12:32'),
(490, 'info@markdesign.net', 'ProductController Update 106', '2014-06-20 16:12:36'),
(491, 'info@markdesign.net', 'ProductController Update 105', '2014-06-20 16:12:37'),
(492, 'info@markdesign.net', 'ProductController Update 104', '2014-06-20 16:12:42'),
(493, 'info@markdesign.net', 'ProductController Update 103', '2014-06-20 16:12:46'),
(494, 'info@markdesign.net', 'ProductController Update 102', '2014-06-20 16:12:47'),
(495, 'info@markdesign.net', 'ProductController Update 101', '2014-06-20 16:12:52'),
(496, 'info@markdesign.net', 'ProductController Update 100', '2014-06-20 16:12:56'),
(497, 'info@markdesign.net', 'ProductController Update 98', '2014-06-20 16:12:59'),
(498, 'info@markdesign.net', 'ProductController Update 99', '2014-06-20 16:13:03'),
(499, 'info@markdesign.net', 'ProductController Update 96', '2014-06-20 16:13:30'),
(500, 'info@markdesign.net', 'ProductController Update 95', '2014-06-20 16:13:32'),
(501, 'info@markdesign.net', 'ProductController Update 94', '2014-06-20 16:13:37'),
(502, 'info@markdesign.net', 'ProductController Update 92', '2014-06-20 16:13:42'),
(503, 'info@markdesign.net', 'ProductController Update 93', '2014-06-20 16:13:55'),
(504, 'info@markdesign.net', 'ProductController Update 90', '2014-06-20 16:14:18'),
(505, 'info@markdesign.net', 'ProductController Update 89', '2014-06-20 16:14:23'),
(506, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 16:14:27'),
(507, 'info@markdesign.net', 'ProductController Update 90', '2014-06-20 16:14:38'),
(508, 'info@markdesign.net', 'ProductController Update 89', '2014-06-20 16:14:43'),
(509, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 16:14:46'),
(510, 'info@markdesign.net', 'ProductController Update 86', '2014-06-20 16:14:52'),
(511, 'info@markdesign.net', 'ProductController Update 85', '2014-06-20 16:14:57'),
(512, 'info@markdesign.net', 'ProductController Update 84', '2014-06-20 16:15:35'),
(513, 'info@markdesign.net', 'ProductController Update 83', '2014-06-20 16:15:42'),
(514, 'info@markdesign.net', 'ProductController Update 82', '2014-06-20 16:15:43'),
(515, 'info@markdesign.net', 'ProductController Update 80', '2014-06-20 16:15:57'),
(516, 'info@markdesign.net', 'ProductController Update 79', '2014-06-20 16:16:35'),
(517, 'info@markdesign.net', 'ProductController Update 78', '2014-06-20 16:16:39'),
(518, 'info@markdesign.net', 'ProductController Update 77', '2014-06-20 16:16:43'),
(519, 'info@markdesign.net', 'ProductController Update 76', '2014-06-20 16:16:47'),
(520, 'info@markdesign.net', 'ProductController Update 75', '2014-06-20 16:17:40'),
(521, 'info@markdesign.net', 'ProductController Update 74', '2014-06-20 16:17:45'),
(522, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 16:17:48'),
(523, 'info@markdesign.net', 'ProductController Update 72', '2014-06-20 16:17:53'),
(524, 'info@markdesign.net', 'ProductController Update 71', '2014-06-20 16:17:56'),
(525, 'info@markdesign.net', 'ProductController Update 70', '2014-06-20 16:18:00'),
(526, 'info@markdesign.net', 'ProductController Update 69', '2014-06-20 16:18:03'),
(527, 'info@markdesign.net', 'ProductController Update 65', '2014-06-20 16:18:07'),
(528, 'info@markdesign.net', 'ProductController Update 64', '2014-06-20 16:18:09'),
(529, 'info@markdesign.net', 'ProductController Update 63', '2014-06-20 16:18:14'),
(530, 'info@markdesign.net', 'ProductController Update 62', '2014-06-20 16:18:18'),
(531, 'info@markdesign.net', 'ProductController Update 61', '2014-06-20 16:18:23'),
(532, 'info@markdesign.net', 'ProductController Update 60', '2014-06-20 16:19:07'),
(533, 'info@markdesign.net', 'ProductController Update 59', '2014-06-20 16:19:10'),
(534, 'info@markdesign.net', 'ProductController Update 58', '2014-06-20 16:19:14'),
(535, 'info@markdesign.net', 'ProductController Update 57', '2014-06-20 16:19:18'),
(536, 'info@markdesign.net', 'ProductController Update 55', '2014-06-20 16:19:22'),
(537, 'info@markdesign.net', 'ProductController Update 56', '2014-06-20 16:19:26'),
(538, 'info@markdesign.net', 'ProductController Update 54', '2014-06-20 16:19:26'),
(539, 'info@markdesign.net', 'ProductController Update 53', '2014-06-20 16:19:32'),
(540, 'info@markdesign.net', 'ProductController Update 52', '2014-06-20 16:19:36'),
(541, 'info@markdesign.net', 'ProductController Update 51', '2014-06-20 16:19:38'),
(542, 'info@markdesign.net', 'ProductController Update 50', '2014-06-20 16:20:50'),
(543, 'info@markdesign.net', 'ProductController Update 49', '2014-06-20 16:20:51'),
(544, 'info@markdesign.net', 'ProductController Update 48', '2014-06-20 16:20:52'),
(545, 'info@markdesign.net', 'ProductController Update 47', '2014-06-20 16:20:56'),
(546, 'info@markdesign.net', 'ProductController Update 46', '2014-06-20 16:20:57'),
(547, 'info@markdesign.net', 'ProductController Update 44', '2014-06-20 16:21:01'),
(548, 'info@markdesign.net', 'ProductController Update 45', '2014-06-20 16:21:03'),
(549, 'info@markdesign.net', 'ProductController Update 44', '2014-06-20 16:21:11'),
(550, 'info@markdesign.net', 'ProductController Update 42', '2014-06-20 16:21:11'),
(551, 'info@markdesign.net', 'ProductController Update 43', '2014-06-20 16:21:12'),
(552, 'info@markdesign.net', 'ProductController Update 41', '2014-06-20 16:21:16'),
(553, 'info@markdesign.net', 'ProductController Update 40', '2014-06-20 16:21:49'),
(554, 'info@markdesign.net', 'ProductController Update 39', '2014-06-20 16:21:52'),
(555, 'info@markdesign.net', 'ProductController Update 13', '2014-06-20 16:21:57'),
(556, 'info@markdesign.net', 'ProductController Update 222', '2014-06-20 16:22:49'),
(557, 'info@markdesign.net', 'ProductController Update 245', '2014-06-20 16:22:57'),
(558, 'info@markdesign.net', 'ProductController Update 168', '2014-06-20 16:23:04'),
(559, 'info@markdesign.net', 'ProductController Update 171', '2014-06-20 16:23:18'),
(560, 'info@markdesign.net', 'ProductController Update 173', '2014-06-20 16:23:23'),
(561, 'info@markdesign.net', 'ProductController Update 167', '2014-06-20 16:24:10'),
(562, 'info@markdesign.net', 'ProductController Update 169', '2014-06-20 16:24:14'),
(563, 'info@markdesign.net', 'ProductController Update 163', '2014-06-20 16:24:20'),
(564, 'info@markdesign.net', 'ProductController Update 168', '2014-06-20 16:24:28'),
(565, 'info@markdesign.net', 'ProductController Update 244', '2014-06-20 16:24:36'),
(566, 'info@markdesign.net', 'ProductController Update 128', '2014-06-20 16:26:47'),
(567, 'info@markdesign.net', 'ProductController Update 127', '2014-06-20 16:26:51'),
(568, 'info@markdesign.net', 'ProductController Update 126', '2014-06-20 16:26:57'),
(569, 'info@markdesign.net', 'ProductController Update 125', '2014-06-20 16:26:58'),
(570, 'info@markdesign.net', 'ProductController Update 124', '2014-06-20 16:27:04'),
(571, 'info@markdesign.net', 'ProductController Update 122', '2014-06-20 16:27:05'),
(572, 'info@markdesign.net', 'ProductController Update 121', '2014-06-20 16:27:06'),
(573, 'info@markdesign.net', 'ProductController Update 120', '2014-06-20 16:27:13'),
(574, 'info@markdesign.net', 'ProductController Update 119', '2014-06-20 16:27:16'),
(575, 'info@markdesign.net', 'ProductController Update 119', '2014-06-20 16:27:21'),
(576, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 16:31:38'),
(577, 'info@markdesign.net', 'ProductController Update 84', '2014-06-20 16:32:08'),
(578, 'info@markdesign.net', 'ProductController Update 188', '2014-06-20 17:21:42'),
(579, 'info@markdesign.net', 'ProductController Update 189', '2014-06-20 17:24:59'),
(580, 'info@markdesign.net', 'ProductController Update 189', '2014-06-20 17:25:59'),
(581, 'info@markdesign.net', 'ProductController Update 185', '2014-06-20 17:29:34'),
(582, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 17:30:05'),
(583, 'info@markdesign.net', 'ProductController Update 185', '2014-06-20 17:30:09'),
(584, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 17:30:15'),
(585, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 17:30:27'),
(586, 'info@markdesign.net', 'ProductController Update 202', '2014-06-20 17:33:16'),
(587, 'info@markdesign.net', 'ProductController Update 202', '2014-06-20 17:34:01'),
(588, 'info@markdesign.net', 'ProductController Update 203', '2014-06-20 17:38:38'),
(589, 'info@markdesign.net', 'ProductController Update 246', '2014-06-20 17:42:39'),
(590, 'info@markdesign.net', 'ProductController Update 246', '2014-06-20 17:43:14'),
(591, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 17:53:45'),
(592, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 17:53:46'),
(593, 'info@markdesign.net', 'ProductController Update 72', '2014-06-20 17:55:03'),
(594, 'info@markdesign.net', 'ProductController Update 71', '2014-06-20 17:56:36'),
(595, 'info@markdesign.net', 'ProductController Update 70', '2014-06-20 17:58:03'),
(596, 'info@markdesign.net', 'ProductController Update 69', '2014-06-20 17:59:26'),
(597, 'info@markdesign.net', 'ProductController Update 65', '2014-06-20 18:00:41'),
(598, 'info@markdesign.net', 'ProductController Update 64', '2014-06-20 18:06:31'),
(599, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-20 18:36:47'),
(600, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-23 17:22:13'),
(601, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-24 22:06:53'),
(602, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-25 00:06:38'),
(603, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-25 00:07:49'),
(604, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-25 00:16:38'),
(605, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-25 18:08:20'),
(606, 'deoryzpandu@gmail.com', 'ProductController Update 82', '2014-06-25 22:49:51'),
(607, 'deoryzpandu@gmail.com', 'ProductController Update 82', '2014-06-25 22:50:09'),
(608, 'deoryzpandu@gmail.com', 'CategoryController Update 50', '2014-06-25 22:55:29'),
(609, 'deoryzpandu@gmail.com', 'CategoryController Update 51', '2014-06-25 22:55:43');
INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(610, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-26 18:16:55'),
(611, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:15:26'),
(612, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:16:14'),
(613, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:17:38'),
(614, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:22:55'),
(615, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:23:12'),
(616, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:35:11'),
(617, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:38:29'),
(618, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 21:38:41'),
(619, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:10:26'),
(620, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:23:00'),
(621, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:37:32'),
(622, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:37:46'),
(623, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:48:06'),
(624, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:48:49'),
(625, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:49:58'),
(626, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:50:50'),
(627, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:51:35'),
(628, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:52:02'),
(629, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:52:55'),
(630, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:53:20'),
(631, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:54:04'),
(632, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 22:54:27'),
(633, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-01 00:05:04'),
(634, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-07-01 22:23:56'),
(635, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-07-01 22:27:39'),
(636, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-02 16:35:02'),
(637, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-02 17:52:47'),
(638, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:03:15'),
(639, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:03:53'),
(640, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:12:23'),
(641, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:15:23'),
(642, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:16:02'),
(643, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:17:16'),
(644, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:19:03'),
(645, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 21:19:57'),
(646, 'deoryzpandu@gmail.com', 'GroupController Create 32', '2014-07-02 21:21:11'),
(647, 'deoryzpandu@gmail.com', 'GroupController Update 8', '2014-07-02 21:48:54'),
(648, 'deoryzpandu@gmail.com', 'User Update 32 ibnu@markdesign.net', '2014-07-02 21:50:05'),
(649, 'deoryzpandu@gmail.com', 'GroupController Update 8', '2014-07-02 21:57:49'),
(650, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:15:54'),
(651, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:15:56'),
(652, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:15:57'),
(653, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:15:58'),
(654, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:15:59'),
(655, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 22:16:33'),
(656, 'deoryzpandu@gmail.com', 'LanguageController Update 1', '2014-07-02 22:16:42'),
(657, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-03 16:41:44'),
(658, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:37:00'),
(659, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:37:15'),
(660, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:37:53'),
(661, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:38:00'),
(662, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:39:01'),
(663, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:39:12'),
(664, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:39:15'),
(665, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:45:54'),
(666, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:47:11'),
(667, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:47:20'),
(668, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:49:06'),
(669, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 22:49:10'),
(670, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-07 16:20:24'),
(671, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-07 18:42:07'),
(672, 'deoryzpandu@gmail.com', 'LanguageController Update 1', '2014-07-07 19:00:56'),
(673, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-08 16:20:43'),
(674, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 19:05:50'),
(675, 'deoryzpandu@gmail.com', 'Create Category 2', '2014-07-08 19:07:11'),
(676, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 19:07:30'),
(677, 'deoryzpandu@gmail.com', 'Create Category 4', '2014-07-08 19:08:40'),
(678, 'deoryzpandu@gmail.com', 'Create Category 5', '2014-07-08 19:10:04'),
(679, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-07-08 19:13:18'),
(680, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-07-08 22:17:14'),
(681, 'deoryzpandu@gmail.com', 'Create Category 8', '2014-07-08 22:17:26'),
(682, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-07-08 22:39:55'),
(683, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-07-08 22:56:22'),
(684, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 23:37:12'),
(685, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 23:37:28'),
(686, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 23:38:11'),
(687, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 23:38:24'),
(688, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 23:49:13'),
(689, 'deoryzpandu@gmail.com', 'Create Category 2', '2014-07-08 23:49:38'),
(690, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 23:52:06'),
(691, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 23:52:16'),
(692, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-10 16:14:32'),
(693, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-10 22:21:09'),
(694, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-11 16:07:57'),
(695, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 2', '2014-07-11 19:27:06'),
(696, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 3', '2014-07-11 19:32:17'),
(697, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 4', '2014-07-11 19:43:23'),
(698, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 22', '2014-07-11 19:55:51'),
(699, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 23', '2014-07-11 21:22:20'),
(700, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:16:22'),
(701, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:16:52'),
(702, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:17:12'),
(703, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:17:19'),
(704, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:02'),
(705, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:11'),
(706, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:18'),
(707, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:24'),
(708, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:27'),
(709, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:50'),
(710, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:52'),
(711, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:18:56'),
(712, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:19:04'),
(713, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:23:17'),
(714, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 22:23:31'),
(715, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-11 22:54:52'),
(716, 'deoryzpandu@gmail.com', 'Create Category 4', '2014-07-11 22:55:27'),
(717, 'deoryzpandu@gmail.com', 'Create Category 5', '2014-07-11 22:55:33'),
(718, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 24', '2014-07-11 23:05:30'),
(719, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 23:05:44'),
(720, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 23:05:56'),
(721, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 23:06:30'),
(722, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-12 00:10:44'),
(723, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-12 01:00:17'),
(724, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-14 16:56:54'),
(725, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 25', '2014-07-14 17:39:21'),
(726, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 26', '2014-07-14 17:44:24'),
(727, 'deoryzpandu@gmail.com', 'TestimonialController Create 1', '2014-07-14 17:50:41'),
(728, 'deoryzpandu@gmail.com', 'Blog Controller Create 1', '2014-07-14 18:12:30'),
(729, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 18:15:42'),
(730, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 18:15:49'),
(731, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 18:15:57'),
(732, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-14 18:16:12'),
(733, 'deoryzpandu@gmail.com', 'CustomerController Create 1', '2014-07-14 22:40:55'),
(734, 'deoryzpandu@gmail.com', 'CustomerController Create 2', '2014-07-14 22:46:42'),
(735, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 22:58:10'),
(736, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 22:58:17'),
(737, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 22:58:40'),
(738, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:14:42'),
(739, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:15:10'),
(740, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:15:22'),
(741, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:16:30'),
(742, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:21:04'),
(743, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:24:33'),
(744, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:24:39'),
(745, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2014-07-14 23:25:14'),
(746, 'deoryzpandu@gmail.com', 'CustomerController Create 3', '2014-07-14 23:25:44'),
(747, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:28:51'),
(748, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:29:17'),
(749, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:30:29'),
(750, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:30:41'),
(751, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:30:59'),
(752, 'deoryzpandu@gmail.com', 'CustomerController Create ', '2014-07-14 23:35:45'),
(753, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:38:21'),
(754, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 23:41:32'),
(755, 'deoryzpandu@gmail.com', 'CustomerController Create 4', '2014-07-14 23:42:26'),
(756, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 23:42:50'),
(757, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2014-07-14 23:42:59'),
(758, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-15 17:24:44'),
(759, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-15 17:40:22'),
(760, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-15 17:42:44'),
(761, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-15 17:44:19'),
(762, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 17:54:43'),
(763, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 17:55:02'),
(764, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 17:57:24'),
(765, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 17:58:19'),
(766, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 17:59:24'),
(767, 'deoryzpandu@gmail.com', 'TbPagesController Update 4', '2014-07-15 18:00:09'),
(768, 'deoryzpandu@gmail.com', 'TbPagesController Update 6', '2014-07-15 18:01:36'),
(769, 'deoryzpandu@gmail.com', 'TbPagesController Update 7', '2014-07-15 18:05:28'),
(770, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:04:19'),
(771, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:06:08'),
(772, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:07:06'),
(773, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:08:26'),
(774, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:09:39'),
(775, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:22:26'),
(776, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:22:33'),
(777, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:25:05'),
(778, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 21:55:17'),
(779, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-16 21:16:50'),
(780, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-22 19:38:17'),
(781, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-19 00:14:20'),
(782, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-19 00:31:36'),
(783, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-19 18:09:27'),
(784, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-09 17:43:45'),
(785, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-15 18:00:21'),
(786, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-15 18:34:12'),
(787, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-10-15 18:41:49'),
(788, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-10-15 18:41:59'),
(789, 'deoryzpandu@gmail.com', 'Create Category 8', '2014-10-15 18:42:08'),
(790, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-10-15 18:42:33'),
(791, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-16 19:06:22'),
(792, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-17 18:21:16'),
(793, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-20 19:46:17'),
(794, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 18:35:13'),
(795, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 20:59:07'),
(796, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 21:31:35'),
(797, 'deoryzpandu@gmail.com', 'GroupController Create 33', '2014-10-21 21:52:51'),
(798, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-10-21 22:21:57'),
(799, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-10-21 22:22:36'),
(800, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-10-21 22:25:06'),
(801, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-10-21 22:25:16'),
(802, 'deoryzpandu@gmail.com', 'Create Category 11', '2014-10-21 22:25:45'),
(803, 'deoryzpandu@gmail.com', 'Create Category 12', '2014-10-21 22:26:09'),
(804, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-22 16:50:54'),
(805, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 19:35:00'),
(806, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 19:35:22'),
(807, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 19:35:31'),
(808, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 19:35:54'),
(809, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 19:36:27'),
(810, 'deoryzpandu@gmail.com', 'ProductController Update 22', '2014-10-23 19:37:37'),
(811, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-10-23 19:39:46'),
(812, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-10-23 19:41:49'),
(813, 'deoryzpandu@gmail.com', 'ProductController Update 25', '2014-10-23 21:10:28'),
(814, 'deoryzpandu@gmail.com', 'ProductController Update 26', '2014-10-23 21:11:12'),
(815, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-24 18:27:43'),
(816, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-10-24 21:33:01'),
(817, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 1', '2014-10-24 22:38:27'),
(818, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-25 00:19:16'),
(819, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 14:50:55'),
(820, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 16:21:42'),
(821, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 18:21:09'),
(822, 'deoryzpandu@gmail.com', 'Brand Controller Create 1', '2014-10-27 18:47:56'),
(823, 'deoryzpandu@gmail.com', 'BrandController Update 1', '2014-10-27 18:50:23'),
(824, 'deoryzpandu@gmail.com', 'BrandController Update 1', '2014-10-27 18:51:28'),
(825, 'deoryzpandu@gmail.com', 'Brand Controller Create 2', '2014-10-27 18:53:15'),
(826, 'deoryzpandu@gmail.com', 'Brand Controller Create 3', '2014-10-27 18:53:34'),
(827, 'deoryzpandu@gmail.com', 'Brand Controller Create 4', '2014-10-27 18:54:14'),
(828, 'deoryzpandu@gmail.com', 'Brand Controller Create 5', '2014-10-27 18:54:42'),
(829, 'deoryzpandu@gmail.com', 'Brand Controller Create 6', '2014-10-27 18:55:01'),
(830, 'deoryzpandu@gmail.com', 'Brand Controller Create 7', '2014-10-27 18:55:14'),
(831, 'deoryzpandu@gmail.com', 'Brand Controller Create 8', '2014-10-27 18:55:36'),
(832, 'deoryzpandu@gmail.com', 'Brand Controller Create 9', '2014-10-27 18:56:13'),
(833, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2014-10-27 19:44:45'),
(834, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2014-10-27 19:45:03'),
(835, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2014-10-27 19:55:45'),
(836, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2014-10-27 20:23:13'),
(837, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2014-10-27 20:24:22'),
(838, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-28 13:58:52'),
(839, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-29 13:59:50'),
(840, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-30 13:45:00'),
(841, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-31 20:12:45'),
(842, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-31 21:26:22'),
(843, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-03 14:47:59'),
(844, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-04 14:38:39'),
(845, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:14:54'),
(846, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:15:33'),
(847, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:20:05'),
(848, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:27:37'),
(849, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:28:42'),
(850, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:29:17'),
(851, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:34:15'),
(852, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:34:24'),
(853, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:34:43'),
(854, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:37:17'),
(855, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:37:21'),
(856, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:37:25'),
(857, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:37:39'),
(858, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:37:45'),
(859, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:46:18'),
(860, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:54:23'),
(861, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:54:30'),
(862, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:54:49'),
(863, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:58:27'),
(864, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 21:58:37'),
(865, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-05 15:03:26'),
(866, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:17:42'),
(867, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:18:04'),
(868, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:18:49'),
(869, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:19:42'),
(870, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:19:53'),
(871, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:22:29'),
(872, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:33:15'),
(873, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 16:35:17'),
(874, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-05 20:09:57'),
(875, 'deoryzpandu@gmail.com', 'Create Category 13', '2014-11-05 22:38:19'),
(876, 'deoryzpandu@gmail.com', 'Create Category 14', '2014-11-05 22:38:31'),
(877, 'deoryzpandu@gmail.com', 'Blog Controller Create 6', '2014-11-05 22:49:50'),
(878, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-05 22:50:38'),
(879, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-06 15:15:49'),
(880, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-11-06 16:30:24'),
(881, 'deoryzpandu@gmail.com', 'Create Category 15', '2014-11-06 16:33:59'),
(882, 'deoryzpandu@gmail.com', 'Create Category 16', '2014-11-06 16:34:30'),
(883, 'deoryzpandu@gmail.com', 'Create Category 17', '2014-11-06 16:37:50'),
(884, 'deoryzpandu@gmail.com', 'Create Category 18', '2014-11-06 16:38:08'),
(885, 'deoryzpandu@gmail.com', 'Create Category 19', '2014-11-06 16:38:31'),
(886, 'deoryzpandu@gmail.com', 'Create Category 20', '2014-11-06 16:39:55'),
(887, 'deoryzpandu@gmail.com', 'Create Category 21', '2014-11-06 16:40:52'),
(888, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-06 16:41:07'),
(889, 'deoryzpandu@gmail.com', 'Toko Controller Create 1', '2014-11-06 20:15:24'),
(890, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 20:17:57'),
(891, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 20:24:35'),
(892, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 20:24:43'),
(893, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 20:26:14'),
(894, 'deoryzpandu@gmail.com', 'Toko Controller Create 2', '2014-11-06 20:27:41'),
(895, 'deoryzpandu@gmail.com', 'TokoController Update 2', '2014-11-06 20:27:49'),
(896, 'deoryzpandu@gmail.com', 'Toko Controller Create 3', '2014-11-06 20:28:56'),
(897, 'deoryzpandu@gmail.com', 'TokoController Update 3', '2014-11-06 20:29:02'),
(898, 'deoryzpandu@gmail.com', 'Toko Controller Create 4', '2014-11-06 20:34:51'),
(899, 'deoryzpandu@gmail.com', 'TokoController Update 4', '2014-11-06 20:36:03'),
(900, 'deoryzpandu@gmail.com', 'TokoController Update 4', '2014-11-06 20:36:17'),
(901, 'deoryzpandu@gmail.com', 'Blog Controller Create 7', '2014-11-07 00:24:43'),
(902, 'deoryzpandu@gmail.com', 'Blog Controller Create 8', '2014-11-07 00:25:44'),
(903, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-07 00:26:51'),
(904, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-11-07 00:42:04'),
(905, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-11-07 00:42:11'),
(906, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-11-07 00:42:33'),
(907, 'deoryzpandu@gmail.com', 'Blog Controller Create 9', '2014-11-07 00:43:12'),
(908, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-07 00:47:21'),
(909, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-11-07 00:47:53'),
(910, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-07 00:48:05'),
(911, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-07 00:48:39'),
(912, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-07 00:48:54'),
(913, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-07 00:49:06'),
(914, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-11-07 00:49:25'),
(915, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-07 00:49:39'),
(916, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-07 17:10:10'),
(917, 'deoryzpandu@gmail.com', 'Slide Controller Create 4', '2014-11-07 17:30:19'),
(918, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-07 17:30:27'),
(919, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-07 17:30:45'),
(920, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-25 19:28:24'),
(921, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-26 16:34:16'),
(922, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-26 16:34:55'),
(923, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-11-26 17:05:18'),
(924, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-11-26 17:05:30'),
(925, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-11-26 17:05:45'),
(926, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-26 23:18:21'),
(927, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-26 23:18:39'),
(928, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-11-27 15:33:53'),
(929, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-12-02 17:21:51'),
(930, 'deoryzpandu@gmail.com', 'Setting Update', '2014-12-02 19:34:25'),
(931, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-12-08 15:58:43'),
(932, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-12-11 17:33:44'),
(933, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-13 22:30:00'),
(934, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-13 22:32:32'),
(935, 'deoryzpandu@gmail.com', 'Create Category 22', '2015-01-13 22:33:03'),
(936, 'deoryzpandu@gmail.com', 'Create Category 6', '2015-01-13 22:33:13'),
(937, 'deoryzpandu@gmail.com', 'Create Category 23', '2015-01-13 22:33:29'),
(938, 'deoryzpandu@gmail.com', 'Create Category 23', '2015-01-13 22:33:43'),
(939, 'deoryzpandu@gmail.com', 'Create Category 23', '2015-01-13 22:33:52'),
(940, 'deoryzpandu@gmail.com', 'Create Category 7', '2015-01-13 22:33:59'),
(941, 'deoryzpandu@gmail.com', 'Create Category 24', '2015-01-13 22:35:08'),
(942, 'deoryzpandu@gmail.com', 'Create Category 10', '2015-01-13 22:35:15'),
(943, 'deoryzpandu@gmail.com', 'Create Category 25', '2015-01-13 22:37:37'),
(944, 'deoryzpandu@gmail.com', 'Create Category 26', '2015-01-13 22:37:45'),
(945, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-15 19:56:13'),
(946, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-16 16:37:22'),
(947, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-17 22:38:05'),
(948, 'info@markdesign.net', 'PrdCategoryController Create 27', '2015-01-17 23:33:06'),
(949, 'info@markdesign.net', 'PrdCategoryController Create 28', '2015-01-17 23:33:57'),
(950, 'info@markdesign.net', 'Create Category 28', '2015-01-17 23:36:21'),
(951, 'info@markdesign.net', 'Create Category 28', '2015-01-17 23:36:36'),
(952, 'info@markdesign.net', 'Create Category 27', '2015-01-17 23:40:40'),
(953, 'info@markdesign.net', 'Create Category 27', '2015-01-17 23:41:15'),
(954, 'info@markdesign.net', 'PrdProduct Controller Create 119', '2015-01-17 23:44:19'),
(955, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-19 17:45:08'),
(956, 'info@markdesign.net', 'PrdCategoryController Create 29', '2015-01-19 19:46:00'),
(957, 'info@markdesign.net', 'PrdCategoryController Create 30', '2015-01-19 19:46:34'),
(958, 'info@markdesign.net', 'PrdCategoryController Create 31', '2015-01-19 19:47:16'),
(959, 'info@markdesign.net', 'Create Category 31', '2015-01-19 19:47:25'),
(960, 'info@markdesign.net', 'Create Category 30', '2015-01-19 19:47:37'),
(961, 'info@markdesign.net', 'PrdCategoryController Create 32', '2015-01-19 19:48:06'),
(962, 'info@markdesign.net', 'Create Category 33', '2015-01-19 19:49:42'),
(963, 'info@markdesign.net', 'Create Category 34', '2015-01-19 19:51:03'),
(964, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-19 20:05:06'),
(965, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-19 20:49:32'),
(966, 'deoryzpandu@gmail.com', 'Create Category 35', '2015-01-19 20:51:30'),
(967, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-21 05:50:30'),
(968, 'info@markdesign.net', 'Create Category 36', '2015-01-21 05:56:28'),
(969, 'info@markdesign.net', 'Create Category 37', '2015-01-21 05:57:52'),
(970, 'info@markdesign.net', 'Create Category 38', '2015-01-21 05:58:15'),
(971, 'info@markdesign.net', 'Create Category 39', '2015-01-21 05:58:44'),
(972, 'info@markdesign.net', 'Create Category 40', '2015-01-21 05:58:53'),
(973, 'info@markdesign.net', 'Create Category 41', '2015-01-21 05:59:02'),
(974, 'info@markdesign.net', 'Create Category 42', '2015-01-21 05:59:21'),
(975, 'info@markdesign.net', 'Create Category 43', '2015-01-21 06:00:36'),
(976, 'info@markdesign.net', 'Create Category 44', '2015-01-21 06:01:19'),
(977, 'info@markdesign.net', 'Create Category 45', '2015-01-21 06:02:26'),
(978, 'info@markdesign.net', 'Create Category 46', '2015-01-21 06:03:32'),
(979, 'info@markdesign.net', 'Create Category 47', '2015-01-21 06:03:44'),
(980, 'info@markdesign.net', 'Create Category 48', '2015-01-21 06:04:02'),
(981, 'info@markdesign.net', 'Create Category 49', '2015-01-21 06:04:53'),
(982, 'info@markdesign.net', 'Create Category 50', '2015-01-21 06:05:20'),
(983, 'info@markdesign.net', 'Create Category 51', '2015-01-21 06:09:02'),
(984, 'info@markdesign.net', 'Create Category 52', '2015-01-21 06:09:12'),
(985, 'info@markdesign.net', 'Create Category 53', '2015-01-21 06:10:19'),
(986, 'info@markdesign.net', 'Create Category 54', '2015-01-21 06:10:27'),
(987, 'info@markdesign.net', 'Create Category 55', '2015-01-21 06:10:49'),
(988, 'info@markdesign.net', 'Create Category 56', '2015-01-21 06:10:56'),
(989, 'info@markdesign.net', 'Create Category 57', '2015-01-21 06:12:27'),
(990, 'info@markdesign.net', 'Create Category 58', '2015-01-21 06:12:38'),
(991, 'info@markdesign.net', 'Create Category 59', '2015-01-21 06:13:12'),
(992, 'info@markdesign.net', 'Create Category 60', '2015-01-21 06:13:30'),
(993, 'info@markdesign.net', 'Create Category 61', '2015-01-21 06:13:48'),
(994, 'info@markdesign.net', 'Create Category 62', '2015-01-21 06:13:55'),
(995, 'info@markdesign.net', 'Create Category 63', '2015-01-21 06:14:13'),
(996, 'info@markdesign.net', 'Create Category 64', '2015-01-21 06:14:23'),
(997, 'info@markdesign.net', 'Create Category 65', '2015-01-21 06:14:32'),
(998, 'info@markdesign.net', 'Create Category 66', '2015-01-21 06:15:39'),
(999, 'info@markdesign.net', 'Create Category 67', '2015-01-21 06:15:49'),
(1000, 'info@markdesign.net', 'Create Category 68', '2015-01-21 06:16:11'),
(1001, 'info@markdesign.net', 'Create Category 69', '2015-01-21 06:17:02'),
(1002, 'info@markdesign.net', 'Create Category 70', '2015-01-21 06:17:18'),
(1003, 'info@markdesign.net', 'Create Category 71', '2015-01-21 06:18:01'),
(1004, 'info@markdesign.net', 'Create Category 72', '2015-01-21 06:18:21'),
(1005, 'info@markdesign.net', 'Create Category 66', '2015-01-21 06:20:05'),
(1006, 'info@markdesign.net', 'Create Category 73', '2015-01-21 06:20:33'),
(1007, 'info@markdesign.net', 'Create Category 74', '2015-01-21 06:21:10'),
(1008, 'info@markdesign.net', 'Create Category 75', '2015-01-21 06:21:21'),
(1009, 'info@markdesign.net', 'Create Category 76', '2015-01-21 06:21:38'),
(1010, 'info@markdesign.net', 'Create Category 77', '2015-01-21 06:21:51'),
(1011, 'info@markdesign.net', 'Create Category 78', '2015-01-21 06:23:59'),
(1012, 'info@markdesign.net', 'Create Category 79', '2015-01-21 06:24:10'),
(1013, 'info@markdesign.net', 'Create Category 80', '2015-01-21 06:24:34'),
(1014, 'info@markdesign.net', 'Create Category 44', '2015-01-21 06:26:10'),
(1015, 'info@markdesign.net', 'Create Category 81', '2015-01-21 06:26:27'),
(1016, 'info@markdesign.net', 'Create Category 82', '2015-01-21 06:27:28'),
(1017, 'info@markdesign.net', 'Create Category 83', '2015-01-21 06:27:39'),
(1018, 'info@markdesign.net', 'Create Category 84', '2015-01-21 06:28:09'),
(1019, 'info@markdesign.net', 'Create Category 85', '2015-01-21 06:28:32'),
(1020, 'info@markdesign.net', 'Create Category 86', '2015-01-21 06:32:03'),
(1021, 'info@markdesign.net', 'Create Category 87', '2015-01-21 06:33:40'),
(1022, 'info@markdesign.net', 'PrdProduct Controller Create 120', '2015-01-21 07:17:44'),
(1023, 'info@markdesign.net', 'PrdProduct Controller Create 121', '2015-01-21 07:21:57'),
(1024, 'info@markdesign.net', 'PrdProduct Controller Create 122', '2015-01-21 07:26:19'),
(1025, 'info@markdesign.net', 'PrdProduct Controller Create 123', '2015-01-21 07:28:57'),
(1026, 'info@markdesign.net', 'PrdProduct Controller Create 124', '2015-01-21 07:38:23'),
(1027, 'info@markdesign.net', 'ProductController Update 124', '2015-01-21 07:38:33'),
(1028, 'info@markdesign.net', 'ProductController Update 124', '2015-01-21 07:38:41'),
(1029, 'info@markdesign.net', 'Create Category 88', '2015-01-21 07:40:01'),
(1030, 'info@markdesign.net', 'Create Category 88', '2015-01-21 07:40:53'),
(1031, 'info@markdesign.net', 'PrdProduct Controller Create 125', '2015-01-21 07:44:45'),
(1032, 'info@markdesign.net', 'PrdProduct Controller Create 126', '2015-01-21 07:50:24'),
(1033, 'info@markdesign.net', 'ProductController Update 125', '2015-01-21 07:53:39'),
(1034, 'info@markdesign.net', 'PrdProduct Controller Create 127', '2015-01-21 08:14:59'),
(1035, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-22 01:55:38'),
(1036, 'info@markdesign.net', 'PrdProduct Controller Create 128', '2015-01-22 02:05:29'),
(1037, 'info@markdesign.net', 'PrdProduct Controller Create 129', '2015-01-22 02:09:13'),
(1038, 'info@markdesign.net', 'PrdProduct Controller Create 130', '2015-01-22 02:32:23'),
(1039, 'info@markdesign.net', 'PrdProduct Controller Create 131', '2015-01-22 02:33:33'),
(1040, 'info@markdesign.net', 'PrdProduct Controller Create 132', '2015-01-22 02:34:30'),
(1041, 'info@markdesign.net', 'PrdProduct Controller Create 133', '2015-01-22 02:35:52'),
(1042, 'info@markdesign.net', 'PrdProduct Controller Create 134', '2015-01-22 02:36:36'),
(1043, 'info@markdesign.net', 'PrdProduct Controller Create 135', '2015-01-22 02:41:46'),
(1044, 'info@markdesign.net', 'PrdProduct Controller Create 136', '2015-01-22 02:44:18'),
(1045, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-22 21:12:49'),
(1046, 'info@markdesign.net', 'ProductController Update 125', '2015-01-22 21:15:38'),
(1047, 'info@markdesign.net', 'ProductController Update 125', '2015-01-22 21:16:30'),
(1048, 'info@markdesign.net', 'PrdProduct Controller Create 137', '2015-01-22 21:27:24'),
(1049, 'info@markdesign.net', 'ProductController Update 137', '2015-01-22 21:32:29'),
(1050, 'info@markdesign.net', 'PrdProduct Controller Create 138', '2015-01-22 21:39:45'),
(1051, 'info@markdesign.net', 'PrdProduct Controller Create 139', '2015-01-22 21:49:36'),
(1052, 'info@markdesign.net', 'PrdProduct Controller Create 140', '2015-01-22 21:52:00'),
(1053, 'info@markdesign.net', 'PrdProduct Controller Create 141', '2015-01-22 21:54:03'),
(1054, 'info@markdesign.net', 'PrdProduct Controller Create 142', '2015-01-22 21:57:59'),
(1055, 'info@markdesign.net', 'ProductController Update 142', '2015-01-22 21:58:23'),
(1056, 'info@markdesign.net', 'ProductController Update 142', '2015-01-22 22:00:03'),
(1057, 'info@markdesign.net', 'ProductController Update 142', '2015-01-22 22:02:11'),
(1058, 'info@markdesign.net', 'PrdProduct Controller Create 143', '2015-01-22 22:04:06'),
(1059, 'info@markdesign.net', 'PrdProduct Controller Create 144', '2015-01-22 22:06:19'),
(1060, 'info@markdesign.net', 'PrdProduct Controller Create 145', '2015-01-22 22:09:12'),
(1061, 'info@markdesign.net', 'PrdProduct Controller Create 146', '2015-01-22 22:11:59'),
(1062, 'info@markdesign.net', 'PrdProduct Controller Create 147', '2015-01-22 22:15:03'),
(1063, 'info@markdesign.net', 'ProductController Update 146', '2015-01-22 22:24:41'),
(1064, 'info@markdesign.net', 'ProductController Update 145', '2015-01-22 22:26:54'),
(1065, 'info@markdesign.net', 'ProductController Update 144', '2015-01-22 22:27:03'),
(1066, 'info@markdesign.net', 'ProductController Update 143', '2015-01-22 22:27:13'),
(1067, 'info@markdesign.net', 'ProductController Update 142', '2015-01-22 22:27:22'),
(1068, 'info@markdesign.net', 'ProductController Update 141', '2015-01-22 22:27:30'),
(1069, 'info@markdesign.net', 'ProductController Update 140', '2015-01-22 22:27:37'),
(1070, 'info@markdesign.net', 'ProductController Update 139', '2015-01-22 22:28:03'),
(1071, 'info@markdesign.net', 'ProductController Update 138', '2015-01-22 22:28:20'),
(1072, 'info@markdesign.net', 'ProductController Update 137', '2015-01-22 22:28:54'),
(1073, 'info@markdesign.net', 'ProductController Update 136', '2015-01-22 22:29:09'),
(1074, 'info@markdesign.net', 'ProductController Update 135', '2015-01-22 22:29:23'),
(1075, 'info@markdesign.net', 'PrdProduct Controller Create 148', '2015-01-22 22:33:35'),
(1076, 'info@markdesign.net', 'PrdProduct Controller Create 149', '2015-01-22 22:36:26'),
(1077, 'info@markdesign.net', 'PrdProduct Controller Create 150', '2015-01-22 22:38:13'),
(1078, 'info@markdesign.net', 'PrdProduct Controller Create 151', '2015-01-22 22:49:12'),
(1079, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-22 23:06:38'),
(1080, 'info@markdesign.net', 'ProductController Update 151', '2015-01-22 23:07:21'),
(1081, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-23 15:34:32'),
(1082, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-27 23:05:51'),
(1083, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-28 00:41:32'),
(1084, 'info@markdesign.net', 'PrdProduct Controller Create 152', '2015-01-28 00:50:40'),
(1085, 'info@markdesign.net', 'PrdProduct Controller Create 153', '2015-01-28 00:55:18'),
(1086, 'info@markdesign.net', 'ProductController Update 152', '2015-01-28 00:55:40'),
(1087, 'info@markdesign.net', 'PrdProduct Controller Create 154', '2015-01-28 00:58:30'),
(1088, 'info@markdesign.net', 'ProductController Update 153', '2015-01-28 01:00:13'),
(1089, 'info@markdesign.net', 'PrdProduct Controller Create 155', '2015-01-28 01:03:08'),
(1090, 'info@markdesign.net', 'PrdProduct Controller Create 156', '2015-01-28 01:09:24'),
(1091, 'info@markdesign.net', 'PrdProduct Controller Create 157', '2015-01-28 01:12:20'),
(1092, 'info@markdesign.net', 'PrdProduct Controller Create 158', '2015-01-28 01:15:38'),
(1093, 'info@markdesign.net', 'PrdProduct Controller Create 159', '2015-01-28 01:18:56'),
(1094, 'info@markdesign.net', 'PrdProduct Controller Create 160', '2015-01-28 01:21:17'),
(1095, 'info@markdesign.net', 'PrdProduct Controller Create 161', '2015-01-28 01:23:03'),
(1096, 'info@markdesign.net', 'PrdProduct Controller Create 162', '2015-01-28 01:28:25'),
(1097, 'info@markdesign.net', 'PrdProduct Controller Create 163', '2015-01-28 01:31:17'),
(1098, 'info@markdesign.net', 'PrdProduct Controller Create 164', '2015-01-28 01:33:02'),
(1099, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-28 23:22:27'),
(1100, 'info@markdesign.net', 'PrdProduct Controller Create 165', '2015-01-28 23:42:11'),
(1101, 'info@markdesign.net', 'PrdProduct Controller Create 166', '2015-01-28 23:45:31'),
(1102, 'info@markdesign.net', 'ProductController Update 166', '2015-01-28 23:45:56'),
(1103, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-29 02:54:42'),
(1104, 'info@markdesign.net', 'ProductController Update 166', '2015-01-29 02:58:48'),
(1105, 'info@markdesign.net', 'ProductController Update 165', '2015-01-29 03:00:51'),
(1106, 'info@markdesign.net', 'PrdProduct Controller Create 167', '2015-01-29 03:06:32'),
(1107, 'info@markdesign.net', 'PrdProduct Controller Create 168', '2015-01-29 03:16:47'),
(1108, 'info@markdesign.net', 'ProductController Update 168', '2015-01-29 03:19:29'),
(1109, 'info@markdesign.net', 'ProductController Update 168', '2015-01-29 03:21:03'),
(1110, 'info@markdesign.net', 'PrdProduct Controller Create 169', '2015-01-29 03:28:22'),
(1111, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-30 01:55:10'),
(1112, 'info@markdesign.net', 'PrdProduct Controller Create 170', '2015-01-30 01:58:58'),
(1113, 'info@markdesign.net', 'PrdProduct Controller Create 171', '2015-01-30 02:01:06'),
(1114, 'info@markdesign.net', 'ProductController Update 170', '2015-01-30 02:09:28'),
(1115, 'info@markdesign.net', 'ProductController Update 171', '2015-01-30 02:10:45'),
(1116, 'info@markdesign.net', 'PrdProduct Controller Create 172', '2015-01-30 02:12:04'),
(1117, 'info@markdesign.net', 'PrdProduct Controller Create 173', '2015-01-30 02:14:28'),
(1118, 'info@markdesign.net', 'PrdProduct Controller Create 174', '2015-01-30 02:15:07'),
(1119, 'info@markdesign.net', 'PrdProduct Controller Create 175', '2015-01-30 02:17:58'),
(1120, 'info@markdesign.net', 'PrdProduct Controller Create 176', '2015-01-30 02:28:22'),
(1121, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-30 19:45:47'),
(1122, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-01-31 23:08:37'),
(1123, 'info@markdesign.net', 'PrdProduct Controller Create 177', '2015-01-31 23:22:27'),
(1124, 'info@markdesign.net', 'ProductController Update 177', '2015-01-31 23:26:10'),
(1125, 'info@markdesign.net', 'PrdProduct Controller Create 178', '2015-01-31 23:30:34'),
(1126, 'info@markdesign.net', 'PrdProduct Controller Create 179', '2015-01-31 23:34:34'),
(1127, 'info@markdesign.net', 'PrdProduct Controller Create 180', '2015-01-31 23:38:53'),
(1128, 'info@markdesign.net', 'PrdProduct Controller Create 181', '2015-01-31 23:43:21'),
(1129, 'info@markdesign.net', 'PrdProduct Controller Create 182', '2015-01-31 23:45:29'),
(1130, 'info@markdesign.net', 'ProductController Update 120', '2015-01-31 23:47:40'),
(1131, 'info@markdesign.net', 'ProductController Update 121', '2015-01-31 23:48:13'),
(1132, 'info@markdesign.net', 'ProductController Update 122', '2015-01-31 23:49:36'),
(1133, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-01 00:55:51'),
(1134, 'info@markdesign.net', 'PrdProduct Controller Create 183', '2015-02-01 01:00:14'),
(1135, 'info@markdesign.net', 'PrdProduct Controller Create 184', '2015-02-01 01:08:33'),
(1136, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-02 15:11:14'),
(1137, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-02 23:28:15'),
(1138, 'info@markdesign.net', 'PrdCategoryController Create 89', '2015-02-02 23:29:11'),
(1139, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-05 23:21:16'),
(1140, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-12 16:23:25'),
(1141, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-18 15:10:19'),
(1142, 'deoryzpandu@gmail.com', 'Slide Controller Create 5', '2015-02-18 15:11:50'),
(1143, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-18 23:10:13'),
(1144, 'deoryzpandu@gmail.com', 'ProductController Update 184', '2015-02-18 23:10:40'),
(1145, 'deoryzpandu@gmail.com', 'Setting Update', '2015-02-18 23:12:00'),
(1146, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-20 14:34:12'),
(1147, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-24 05:03:10'),
(1148, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-24 18:38:11'),
(1149, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-25 14:08:58'),
(1150, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-26 14:22:07'),
(1151, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-26 16:29:38'),
(1152, 'info@markdesign.net', 'ProductController Update 184', '2015-02-26 16:30:02'),
(1153, 'info@markdesign.net', 'ProductController Update 184', '2015-02-26 16:31:11'),
(1154, 'info@markdesign.net', 'ProductController Update 183', '2015-02-26 16:31:35'),
(1155, 'info@markdesign.net', 'ProductController Update 182', '2015-02-26 16:32:44'),
(1156, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-26 18:44:48'),
(1157, 'info@markdesign.net', 'ProductController Update 181', '2015-02-26 18:53:21'),
(1158, 'info@markdesign.net', 'ProductController Update 181', '2015-02-26 18:54:35'),
(1159, 'info@markdesign.net', 'ProductController Update 180', '2015-02-26 18:54:54'),
(1160, 'info@markdesign.net', 'ProductController Update 179', '2015-02-26 18:55:18'),
(1161, 'info@markdesign.net', 'ProductController Update 178', '2015-02-26 19:01:31'),
(1162, 'info@markdesign.net', 'ProductController Update 177', '2015-02-26 19:01:51'),
(1163, 'info@markdesign.net', 'ProductController Update 175', '2015-02-26 19:03:22'),
(1164, 'info@markdesign.net', 'ProductController Update 174', '2015-02-26 19:03:42'),
(1165, 'info@markdesign.net', 'ProductController Update 173', '2015-02-26 19:04:50'),
(1166, 'info@markdesign.net', 'ProductController Update 172', '2015-02-26 19:04:59'),
(1167, 'info@markdesign.net', 'ProductController Update 171', '2015-02-26 19:05:39'),
(1168, 'info@markdesign.net', 'ProductController Update 170', '2015-02-26 19:05:53'),
(1169, 'info@markdesign.net', 'ProductController Update 163', '2015-02-26 19:06:49'),
(1170, 'info@markdesign.net', 'ProductController Update 165', '2015-02-26 19:13:11'),
(1171, 'info@markdesign.net', 'ProductController Update 166', '2015-02-26 19:13:32'),
(1172, 'info@markdesign.net', 'ProductController Update 168', '2015-02-26 19:14:06'),
(1173, 'info@markdesign.net', 'ProductController Update 169', '2015-02-26 19:50:09'),
(1174, 'info@markdesign.net', 'ProductController Update 167', '2015-02-26 19:50:39'),
(1175, 'info@markdesign.net', 'ProductController Update 162', '2015-02-26 19:51:03'),
(1176, 'info@markdesign.net', 'ProductController Update 161', '2015-02-26 19:51:36'),
(1177, 'info@markdesign.net', 'ProductController Update 160', '2015-02-26 19:51:42'),
(1178, 'info@markdesign.net', 'ProductController Update 159', '2015-02-26 19:51:49'),
(1179, 'info@markdesign.net', 'ProductController Update 158', '2015-02-26 19:54:02'),
(1180, 'info@markdesign.net', 'ProductController Update 157', '2015-02-26 19:54:10'),
(1181, 'info@markdesign.net', 'ProductController Update 156', '2015-02-26 19:54:20'),
(1182, 'info@markdesign.net', 'ProductController Update 155', '2015-02-26 19:54:28'),
(1183, 'info@markdesign.net', 'ProductController Update 154', '2015-02-26 19:54:36'),
(1184, 'info@markdesign.net', 'ProductController Update 153', '2015-02-26 19:54:43'),
(1185, 'info@markdesign.net', 'ProductController Update 152', '2015-02-26 19:57:12'),
(1186, 'info@markdesign.net', 'ProductController Update 151', '2015-02-26 20:00:07'),
(1187, 'info@markdesign.net', 'ProductController Update 151', '2015-02-26 20:00:12'),
(1188, 'info@markdesign.net', 'ProductController Update 150', '2015-02-26 20:01:29'),
(1189, 'info@markdesign.net', 'ProductController Update 149', '2015-02-26 20:01:55'),
(1190, 'info@markdesign.net', 'ProductController Update 148', '2015-02-26 20:02:15'),
(1191, 'info@markdesign.net', 'ProductController Update 147', '2015-02-26 20:02:32'),
(1192, 'info@markdesign.net', 'ProductController Update 146', '2015-02-26 20:02:42'),
(1193, 'info@markdesign.net', 'ProductController Update 144', '2015-02-26 20:03:21'),
(1194, 'info@markdesign.net', 'ProductController Update 143', '2015-02-26 20:03:56'),
(1195, 'info@markdesign.net', 'ProductController Update 142', '2015-02-26 20:04:17'),
(1196, 'info@markdesign.net', 'ProductController Update 141', '2015-02-26 20:04:52'),
(1197, 'info@markdesign.net', 'ProductController Update 140', '2015-02-26 20:05:10'),
(1198, 'info@markdesign.net', 'ProductController Update 139', '2015-02-26 20:05:39'),
(1199, 'info@markdesign.net', 'ProductController Update 138', '2015-02-26 20:05:51'),
(1200, 'info@markdesign.net', 'ProductController Update 136', '2015-02-26 20:06:12'),
(1201, 'info@markdesign.net', 'ProductController Update 135', '2015-02-26 20:06:20'),
(1202, 'info@markdesign.net', 'ProductController Update 145', '2015-02-26 20:06:58'),
(1203, 'info@markdesign.net', 'ProductController Update 137', '2015-02-26 20:07:13'),
(1204, 'info@markdesign.net', 'ProductController Update 134', '2015-02-26 20:08:44'),
(1205, 'info@markdesign.net', 'ProductController Update 133', '2015-02-26 20:08:48'),
(1206, 'info@markdesign.net', 'ProductController Update 132', '2015-02-26 20:08:51'),
(1207, 'info@markdesign.net', 'ProductController Update 120', '2015-02-26 20:10:01'),
(1208, 'info@markdesign.net', 'ProductController Update 128', '2015-02-26 20:10:17'),
(1209, 'info@markdesign.net', 'ProductController Update 129', '2015-02-26 20:10:40'),
(1210, 'info@markdesign.net', 'ProductController Update 130', '2015-02-26 20:11:23'),
(1211, 'info@markdesign.net', 'ProductController Update 131', '2015-02-26 20:11:30'),
(1212, 'info@markdesign.net', 'ProductController Update 131', '2015-02-26 20:11:35'),
(1213, 'info@markdesign.net', 'ProductController Update 126', '2015-02-26 20:12:13'),
(1214, 'info@markdesign.net', 'ProductController Update 123', '2015-02-26 20:12:27'),
(1215, 'info@markdesign.net', 'ProductController Update 124', '2015-02-26 20:12:38'),
(1216, 'info@markdesign.net', 'ProductController Update 122', '2015-02-26 20:12:55'),
(1217, 'info@markdesign.net', 'ProductController Update 121', '2015-02-26 20:13:13'),
(1218, 'info@markdesign.net', 'ProductController Update 125', '2015-02-26 20:13:57');
INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1219, 'info@markdesign.net', 'PrdCategoryController Create 90', '2015-02-26 20:23:48'),
(1220, 'info@markdesign.net', 'PrdProduct Controller Create 185', '2015-02-26 20:26:17'),
(1221, 'info@markdesign.net', 'ProductController Update 185', '2015-02-26 20:26:56'),
(1222, 'info@markdesign.net', 'PrdProduct Controller Create 186', '2015-02-26 20:30:16'),
(1223, 'info@markdesign.net', 'PrdProduct Controller Create 187', '2015-02-26 20:34:05'),
(1224, 'info@markdesign.net', 'PrdProduct Controller Create 188', '2015-02-26 20:38:40'),
(1225, 'info@markdesign.net', 'PrdProduct Controller Create 189', '2015-02-26 20:46:37'),
(1226, 'info@markdesign.net', 'PrdProduct Controller Create 190', '2015-02-26 20:49:40'),
(1227, 'info@markdesign.net', 'PrdCategoryController Create 91', '2015-02-26 20:51:20'),
(1228, 'info@markdesign.net', 'PrdProduct Controller Create 191', '2015-02-26 20:53:38'),
(1229, 'info@markdesign.net', 'PrdProduct Controller Create 192', '2015-02-26 20:58:43'),
(1230, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-02-26 21:07:36'),
(1231, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-02-27 15:56:42'),
(1232, 'deoryzpandu@gmail.com', 'User Delete deoryzpandu@gmail.com 44', '2015-02-27 15:56:53'),
(1233, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-03-08 16:14:13'),
(1234, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-03-12 16:44:19'),
(1235, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-04-03 15:12:43'),
(1236, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-04-07 21:08:40'),
(1237, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-04-23 15:49:08'),
(1238, 'info@markdesign.net', 'PrdProduct Controller Create 193', '2015-04-23 16:22:20'),
(1239, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-04-28 16:54:46'),
(1240, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-06-05 16:29:53'),
(1241, 'info@markdesign.net', 'GroupController Create 34', '2015-06-05 16:31:25'),
(1242, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-05 16:37:19'),
(1243, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-05 16:38:10'),
(1244, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-09 19:10:09'),
(1245, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-09 19:34:10'),
(1246, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 194', '2015-06-09 19:43:51'),
(1247, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-09 21:15:13'),
(1248, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 195', '2015-06-09 21:26:11'),
(1249, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 196', '2015-06-09 21:31:03'),
(1250, 'sales@dvcomputers.com.au', 'ProductController Update 194', '2015-06-09 21:33:01'),
(1251, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-09 23:02:14'),
(1252, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 197', '2015-06-09 23:06:06'),
(1253, 'sales@dvcomputers.com.au', 'PrdCategoryController Create 92', '2015-06-09 23:06:30'),
(1254, 'sales@dvcomputers.com.au', 'ProductController Update 197', '2015-06-09 23:06:50'),
(1255, 'sales@dvcomputers.com.au', 'User Delete deoryzpandu@gmail.com 2', '2015-06-09 23:06:59'),
(1256, 'sales@dvcomputers.com.au', 'User Delete sales@dvcomputers.com.au 1', '2015-06-09 23:07:04'),
(1257, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 198', '2015-06-09 23:11:24'),
(1258, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 199', '2015-06-09 23:13:57'),
(1259, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 200', '2015-06-09 23:16:06'),
(1260, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 201', '2015-06-09 23:20:00'),
(1261, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 202', '2015-06-09 23:29:54'),
(1262, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 203', '2015-06-09 23:39:42'),
(1263, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-10 16:16:59'),
(1264, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-11 14:50:00'),
(1265, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-11 16:00:23'),
(1266, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-11 19:26:57'),
(1267, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 204', '2015-06-11 19:31:29'),
(1268, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 205', '2015-06-11 19:38:03'),
(1269, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 206', '2015-06-11 20:11:33'),
(1270, 'sales@dvcomputers.com.au', 'ProductController Update 206', '2015-06-11 20:12:21'),
(1271, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 207', '2015-06-11 20:24:43'),
(1272, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-12 21:52:01'),
(1273, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-12 21:53:13'),
(1274, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-12 21:59:08'),
(1275, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 208', '2015-06-12 22:12:33'),
(1276, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 209', '2015-06-12 22:16:05'),
(1277, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 210', '2015-06-12 22:25:55'),
(1278, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 211', '2015-06-12 22:41:45'),
(1279, 'sales@dvcomputers.com.au', 'ProductController Update 211', '2015-06-12 22:42:14'),
(1280, 'sales@dvcomputers.com.au', 'ProductController Update 208', '2015-06-12 22:43:26'),
(1281, 'sales@dvcomputers.com.au', 'ProductController Update 209', '2015-06-12 22:43:42'),
(1282, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 212', '2015-06-12 22:59:10'),
(1283, 'sales@dvcomputers.com.au', 'ProductController Update 212', '2015-06-12 22:59:57'),
(1284, 'sales@dvcomputers.com.au', 'ProductController Update 212', '2015-06-12 23:11:42'),
(1285, 'sales@dvcomputers.com.au', 'PrdProduct Controller Create 213', '2015-06-12 23:18:17'),
(1286, 'sales@dvcomputers.com.au', 'ProductController Update 212', '2015-06-12 23:21:01'),
(1287, 'sales@dvcomputers.com.au', 'ProductController Update 210', '2015-06-12 23:21:54'),
(1288, 'sales@dvcomputers.com.au', 'Login: sales@dvcomputers.com.au', '2015-06-13 00:16:05'),
(1289, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:37:52'),
(1290, 'deoryzpandu@gmail.com', 'User Update Pass 1 deoryzpandu@gmail.com', '2015-06-15 15:47:47'),
(1291, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:48:31'),
(1292, 'deoryzpandu@gmail.com', 'User Update Pass 1 deoryzpandu@gmail.com', '2015-06-15 15:48:43'),
(1293, 'deoryzpandu@gmail.com', 'User Update Pass 1 deoryzpandu@gmail.com', '2015-06-15 15:51:50'),
(1294, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:52:07'),
(1295, 'deoryzpandu@gmail.com', 'User Update Pass 1 deoryzpandu@gmail.com', '2015-06-15 15:55:53'),
(1296, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:56:01'),
(1297, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:56:38'),
(1298, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-15 15:56:46'),
(1299, 'deoryzpandu@gmail.com', 'User Update Pass 1 deoryzpandu@gmail.com', '2015-06-15 15:57:00'),
(1300, 'deoryzpandu@gmail.com', 'ProductController Update 202', '2015-06-15 16:11:45'),
(1301, 'deoryzpandu@gmail.com', 'ProductController Update 202', '2015-06-15 16:13:28'),
(1302, 'deoryzpandu@gmail.com', 'ProductController Update 214', '2015-06-15 16:18:45'),
(1303, 'deoryzpandu@gmail.com', 'ProductController Update 202', '2015-06-15 16:20:35'),
(1304, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-06-17 16:45:28'),
(1305, 'deoryzpandu@gmail.com', 'ProductController Update 213', '2015-06-17 17:30:09'),
(1306, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-07-10 16:14:15'),
(1307, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2015-07-10 16:24:23'),
(1308, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2015-07-10 16:24:29'),
(1309, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2015-07-10 16:33:40'),
(1310, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2015-07-10 16:33:48'),
(1311, 'deoryzpandu@gmail.com', 'CustomerController Create 3', '2015-07-10 17:44:10'),
(1312, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-10-05 15:49:39'),
(1313, 'deoryzpandu@gmail.com', 'ProductController Update 213', '2015-10-05 15:50:12'),
(1314, 'deoryzpandu@gmail.com', 'ProductController Update 213', '2015-10-05 15:50:26'),
(1315, 'deoryzpandu@gmail.com', 'ProductController Update 213', '2015-10-05 15:50:52'),
(1316, 'deoryzpandu@gmail.com', 'ProductController Update 213', '2015-10-05 15:52:52'),
(1317, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-10-06 21:33:19'),
(1318, 'deoryzpandu@gmail.com', 'ProductController Update 202', '2015-10-06 21:42:31'),
(1319, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-11-10 22:00:06'),
(1320, 'deoryzpandu@gmail.com', 'Gallery Controller Create 1', '2015-11-11 20:09:02'),
(1321, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-11-12 16:23:42'),
(1322, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-11-12 16:35:15'),
(1323, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-11-26 15:38:13'),
(1324, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 16:32:30'),
(1325, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 16:32:42'),
(1326, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-11-26 19:03:12'),
(1327, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 19:21:21'),
(1328, 'deoryzpandu@gmail.com', 'Slide Controller Create 6', '2015-11-26 19:49:52'),
(1329, 'deoryzpandu@gmail.com', 'Slide Controller Create 7', '2015-11-26 19:50:09'),
(1330, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 19:56:38'),
(1331, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 19:57:31'),
(1332, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 19:57:41'),
(1333, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 19:57:49'),
(1334, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:01:44'),
(1335, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:01:47'),
(1336, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:02:51'),
(1337, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:05:23'),
(1338, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:08:12'),
(1339, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:14:16'),
(1340, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:14:28'),
(1341, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:14:47'),
(1342, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:17:06'),
(1343, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-26 20:18:03'),
(1344, 'deoryzpandu@gmail.com', 'Create Category 1', '2015-11-27 16:49:21'),
(1345, 'deoryzpandu@gmail.com', 'Create Category 2', '2015-11-27 16:49:26'),
(1346, 'deoryzpandu@gmail.com', 'Create Category 3', '2015-11-27 16:49:31'),
(1347, 'deoryzpandu@gmail.com', 'Create Category 4', '2015-11-27 16:49:36'),
(1348, 'deoryzpandu@gmail.com', 'Create Category 5', '2015-11-27 16:49:41'),
(1349, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 16:55:48'),
(1350, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 16:56:13'),
(1351, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 16:58:27'),
(1352, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 19:11:41'),
(1353, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 19:12:10'),
(1354, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 19:16:47'),
(1355, 'deoryzpandu@gmail.com', 'GalleryController Update 1', '2015-11-27 19:16:51'),
(1356, 'deoryzpandu@gmail.com', 'Gallery Controller Create 2', '2015-11-27 19:18:36'),
(1357, 'deoryzpandu@gmail.com', 'GroupController Create 1', '2015-11-27 21:05:25'),
(1358, 'deoryzpandu@gmail.com', 'GroupController Create 2', '2015-11-27 21:21:31'),
(1359, 'deoryzpandu@gmail.com', 'GroupController Create 3', '2015-11-27 21:23:01'),
(1360, 'deoryzpandu@gmail.com', 'Trips Delete 2', '2015-11-27 21:25:16'),
(1361, 'deoryzpandu@gmail.com', 'GroupController Create 4', '2015-11-27 21:25:33'),
(1362, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-27 22:38:51'),
(1363, 'deoryzpandu@gmail.com', 'Setting Update', '2015-11-27 22:38:54'),
(1364, 'deoryzpandu@gmail.com', 'Trips Update 1', '2015-11-27 22:43:00'),
(1365, 'deoryzpandu@gmail.com', 'User Delete deoryz@yahoo.co.id 13', '2015-11-27 22:59:01'),
(1366, 'deoryzpandu@gmail.com', 'User Delete deo@markdesign.net 23', '2015-11-27 22:59:02'),
(1367, 'deoryzpandu@gmail.com', 'User Delete ibnudrift@gmail.com 25', '2015-11-27 22:59:03'),
(1368, 'deoryzpandu@gmail.com', 'User Delete test@gmail.com 28', '2015-11-27 22:59:05'),
(1369, 'deoryzpandu@gmail.com', 'User Delete cs@markdesign.net 31', '2015-11-27 22:59:06'),
(1370, 'deoryzpandu@gmail.com', 'User Delete ibnu@markdesign.net 32', '2015-11-27 22:59:07'),
(1371, 'deoryzpandu@gmail.com', 'User Delete test2@gmail.com 33', '2015-11-27 22:59:08'),
(1372, 'deoryzpandu@gmail.com', 'User Delete sales@dvcomputers.com.au 34', '2015-11-27 22:59:09'),
(1373, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-01 19:19:05'),
(1374, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-02 16:19:27'),
(1375, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-02 16:34:19'),
(1376, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-04 15:36:52'),
(1377, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 15:38:08'),
(1378, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 19:28:10'),
(1379, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-04 20:22:37'),
(1380, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:23:21'),
(1381, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:24:30'),
(1382, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:28:21'),
(1383, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:28:50'),
(1384, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:29:11'),
(1385, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:29:24'),
(1386, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:29:40'),
(1387, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 20:50:53'),
(1388, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:01:22'),
(1389, 'deoryzpandu@gmail.com', 'SlideController Update 7', '2015-12-04 21:09:10'),
(1390, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:18:34'),
(1391, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:37:12'),
(1392, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:45:44'),
(1393, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:45:55'),
(1394, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-04 21:46:19'),
(1395, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-04 23:13:36'),
(1396, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-07 23:22:54'),
(1397, 'info@markdesign.net', 'Setting Update', '2015-12-07 23:27:28'),
(1398, 'info@markdesign.net', 'Setting Update', '2015-12-07 23:36:39'),
(1399, 'info@markdesign.net', 'Setting Update', '2015-12-07 23:38:23'),
(1400, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-08 20:28:24'),
(1401, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-08 20:29:14'),
(1402, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2015-12-08 20:59:19'),
(1403, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2015-12-08 21:00:13'),
(1404, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-14 17:00:40'),
(1405, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-21 19:27:43'),
(1406, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-21 19:28:35'),
(1407, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-21 19:35:07'),
(1408, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-21 19:39:28'),
(1409, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-21 21:27:09'),
(1410, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 02:51:51'),
(1411, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 02:51:53'),
(1412, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 04:07:27'),
(1413, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 04:24:31'),
(1414, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 04:25:04'),
(1415, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:25:27'),
(1416, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:27:40'),
(1417, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:28:49'),
(1418, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:30:18'),
(1419, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:32:15'),
(1420, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:33:45'),
(1421, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:35:20'),
(1422, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:36:54'),
(1423, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:39:33'),
(1424, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 04:40:29'),
(1425, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 04:54:02'),
(1426, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 04:55:31'),
(1427, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 04:57:14'),
(1428, 'info@markdesign.net', 'GalleryController Update 3', '2015-12-22 04:59:06'),
(1429, 'info@markdesign.net', 'GalleryController Update 4', '2015-12-22 05:04:51'),
(1430, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:07:01'),
(1431, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:07:45'),
(1432, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:12:18'),
(1433, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:15:31'),
(1434, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:18:36'),
(1435, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 05:19:22'),
(1436, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 05:22:38'),
(1437, 'info@markdesign.net', 'BlogController Update 4', '2015-12-22 05:43:27'),
(1438, 'info@markdesign.net', 'BlogController Update 5', '2015-12-22 05:43:43'),
(1439, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-22 15:29:14'),
(1440, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 15:32:26'),
(1441, 'deoryzpandu@gmail.com', 'Slide Controller Create 8', '2015-12-22 15:32:35'),
(1442, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 15:33:25'),
(1443, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 15:34:36'),
(1444, 'info@markdesign.net', 'SlideController Update 6', '2015-12-22 15:35:02'),
(1445, 'deoryzpandu@gmail.com', 'Slide Controller Create 9', '2015-12-22 15:35:51'),
(1446, 'info@markdesign.net', 'SlideController Update 6', '2015-12-22 15:38:59'),
(1447, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 15:40:41'),
(1448, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 15:41:09'),
(1449, 'info@markdesign.net', 'GalleryController Update 5', '2015-12-22 15:41:29'),
(1450, 'info@markdesign.net', 'SlideController Update 7', '2015-12-22 15:41:58'),
(1451, 'info@markdesign.net', 'SlideController Update 7', '2015-12-22 15:42:18'),
(1452, 'info@markdesign.net', 'SlideController Update 7', '2015-12-22 15:42:22'),
(1453, 'deoryzpandu@gmail.com', 'Slide Controller Create 10', '2015-12-22 15:48:58'),
(1454, 'deoryzpandu@gmail.com', 'Slide Controller Create 11', '2015-12-22 15:51:55'),
(1455, 'deoryzpandu@gmail.com', 'Slide Controller Create 12', '2015-12-22 15:53:42'),
(1456, 'info@markdesign.net', 'SlideController Update 7', '2015-12-22 16:24:01'),
(1457, 'info@markdesign.net', 'SlideController Update 7', '2015-12-22 16:30:33'),
(1458, 'info@markdesign.net', 'Setting Update', '2015-12-22 16:52:05'),
(1459, 'info@markdesign.net', 'Setting Update', '2015-12-22 16:56:34'),
(1460, 'info@markdesign.net', 'Setting Update', '2015-12-22 16:59:44'),
(1461, 'info@markdesign.net', 'Setting Update', '2015-12-22 17:02:43'),
(1462, 'info@markdesign.net', 'Setting Update', '2015-12-22 17:03:24'),
(1463, 'info@markdesign.net', 'Setting Update', '2015-12-22 17:04:35'),
(1464, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-22 17:31:50'),
(1465, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-22 23:27:06'),
(1466, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-22 23:30:14'),
(1467, 'deoryzpandu@gmail.com', 'GalleryController Update 4', '2015-12-22 23:34:56'),
(1468, 'deoryzpandu@gmail.com', 'GalleryController Update 3', '2015-12-22 23:35:10'),
(1469, 'deoryzpandu@gmail.com', 'GalleryController Update 5', '2015-12-22 23:35:29'),
(1470, 'deoryzpandu@gmail.com', 'GalleryController Update 5', '2015-12-22 23:35:33'),
(1471, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-22 23:59:51'),
(1472, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:03:43'),
(1473, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:10:09'),
(1474, 'deoryzpandu@gmail.com', 'FactoryController Create 3', '2015-12-23 00:13:28'),
(1475, 'deoryzpandu@gmail.com', 'FactoryController Create 4', '2015-12-23 00:13:46'),
(1476, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:20:58'),
(1477, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:21:12'),
(1478, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:22:12'),
(1479, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:22:12'),
(1480, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:23:02'),
(1481, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:26:29'),
(1482, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:28:28'),
(1483, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:29:59'),
(1484, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:31:24'),
(1485, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:32:06'),
(1486, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-23 00:32:43'),
(1487, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-22 11:54:05'),
(1488, 'deoryzpandu@gmail.com', 'FactoryController Update 3', '2015-12-22 11:57:22'),
(1489, 'deoryzpandu@gmail.com', 'FactoryController Update 4', '2015-12-22 11:57:29'),
(1490, 'deoryzpandu@gmail.com', 'FactoryController Update 3', '2015-12-22 11:59:15'),
(1491, 'deoryzpandu@gmail.com', 'FactoryController Update 4', '2015-12-22 11:59:30'),
(1492, 'deoryzpandu@gmail.com', 'FactoryController Update 3', '2015-12-22 12:00:59'),
(1493, 'deoryzpandu@gmail.com', 'FactoryController Update 3', '2015-12-22 12:01:27'),
(1494, 'deoryzpandu@gmail.com', 'FactoryController Update 3', '2015-12-22 12:02:09'),
(1495, 'deoryzpandu@gmail.com', 'FactoryController Create 5', '2015-12-22 12:02:31'),
(1496, 'deoryzpandu@gmail.com', 'GalleryController Update 4', '2015-12-23 03:21:16'),
(1497, 'deoryzpandu@gmail.com', 'GalleryController Update 5', '2015-12-23 03:21:31'),
(1498, 'deoryzpandu@gmail.com', 'GalleryController Update 3', '2015-12-23 03:21:43'),
(1499, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-23 06:24:15'),
(1500, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-23 06:58:37'),
(1501, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-28 13:19:54'),
(1502, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-28 13:23:10'),
(1503, 'info@markdesign.net', 'GroupController Create 35', '2015-12-28 15:04:51'),
(1504, 'info@markdesign.net', 'User Update 35 creative@realfood.co.id', '2015-12-28 15:06:58'),
(1505, 'info@markdesign.net', 'User Update 1 deoryzpandu@gmail.com', '2015-12-28 15:07:13'),
(1506, 'creative@realfood.co.id', 'Login: creative@realfood.co.id', '2015-12-28 15:07:25'),
(1507, 'info@markdesign.net', 'GroupController Create 36', '2015-12-28 15:08:16'),
(1508, 'info@markdesign.net', 'GroupController Create 37', '2015-12-28 15:08:45'),
(1509, 'info@markdesign.net', 'User Update Pass 30 info@markdesign.net', '2015-12-28 15:09:58'),
(1510, 'williama@realfood.co.id', 'Login: williama@realfood.co.id', '2015-12-28 15:11:10'),
(1511, 'creative@realfood.co.id', 'Setting Update', '2015-12-28 15:11:12'),
(1512, 'williama@realfood.co.id', 'GalleryController Update 5', '2015-12-28 15:16:28'),
(1513, 'williama@realfood.co.id', 'GalleryController Update 4', '2015-12-28 15:18:04'),
(1514, 'williama@realfood.co.id', 'GalleryController Update 4', '2015-12-28 15:18:26'),
(1515, 'creative@realfood.co.id', 'Setting Update', '2015-12-28 15:18:35'),
(1516, 'williama@realfood.co.id', 'GalleryController Update 3', '2015-12-28 15:18:39'),
(1517, 'creative@realfood.co.id', 'Setting Update', '2015-12-28 15:19:18'),
(1518, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:20:43'),
(1519, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:23:43'),
(1520, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:25:00'),
(1521, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:25:19'),
(1522, 'creative@realfood.co.id', 'Setting Update', '2015-12-28 15:26:17'),
(1523, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:26:40'),
(1524, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:27:39'),
(1525, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:27:55'),
(1526, 'williama@realfood.co.id', 'Setting Update', '2015-12-28 15:28:42'),
(1527, 'creative@realfood.co.id', 'Login: creative@realfood.co.id', '2015-12-29 02:54:00'),
(1528, 'creative@realfood.co.id', 'Setting Update', '2015-12-29 04:07:48'),
(1529, 'creative@realfood.co.id', 'Setting Update', '2015-12-29 04:08:04'),
(1530, 'creative@realfood.co.id', 'Setting Update', '2015-12-29 04:09:04'),
(1531, 'creative@realfood.co.id', 'BannerController Update 1', '2015-12-29 04:34:20'),
(1532, 'williama@realfood.co.id', 'Login: williama@realfood.co.id', '2015-12-29 04:35:48'),
(1533, 'creative@realfood.co.id', 'Login: creative@realfood.co.id', '2015-12-29 04:37:36'),
(1534, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-29 04:38:08'),
(1535, 'info@markdesign.net', 'Setting Update', '2015-12-29 04:38:46'),
(1536, 'info@markdesign.net', 'BannerController Update 1', '2015-12-29 04:39:21'),
(1537, 'info@markdesign.net', 'BannerController Update 1', '2015-12-29 04:40:54'),
(1538, 'info@markdesign.net', 'BannerController Update 1', '2015-12-29 04:45:35'),
(1539, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 04:52:30'),
(1540, 'info@markdesign.net', 'BannerController Update 1', '2015-12-29 05:29:15'),
(1541, 'info@markdesign.net', 'BannerController Update 1', '2015-12-29 05:40:23'),
(1542, 'info@markdesign.net', 'Setting Update', '2015-12-29 05:44:19'),
(1543, 'info@markdesign.net', 'Setting Update', '2015-12-29 05:44:25'),
(1544, 'info@markdesign.net', 'Setting Update', '2015-12-29 05:49:18'),
(1545, 'info@markdesign.net', 'Setting Update', '2015-12-29 05:55:24'),
(1546, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:06:18'),
(1547, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:07:29'),
(1548, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:17:25'),
(1549, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:18:13'),
(1550, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:22:42'),
(1551, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:27:30'),
(1552, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:29:07'),
(1553, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:31:52'),
(1554, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:31:56'),
(1555, 'williama@realfood.co.id', 'Slide Controller Create 13', '2015-12-29 06:36:11'),
(1556, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:43:23'),
(1557, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:48:32'),
(1558, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:48:38'),
(1559, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:48:40'),
(1560, 'info@markdesign.net', 'Setting Update', '2015-12-29 06:50:14'),
(1561, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:06:38'),
(1562, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:06:57'),
(1563, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:07:23'),
(1564, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:07:26'),
(1565, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:07:40'),
(1566, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:07:44'),
(1567, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:08:42'),
(1568, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:09:02'),
(1569, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:13:18'),
(1570, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:13:47'),
(1571, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:13:52'),
(1572, 'info@markdesign.net', 'Banner Controller Create 4', '2015-12-29 07:39:04'),
(1573, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:45:09'),
(1574, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:46:08'),
(1575, 'info@markdesign.net', 'Setting Update', '2015-12-29 07:50:11'),
(1576, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:38:35'),
(1577, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:38:36'),
(1578, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:38:37'),
(1579, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:44:10'),
(1580, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:45:53'),
(1581, 'williama@realfood.co.id', 'BlogController Update 2', '2015-12-29 08:46:50'),
(1582, 'info@markdesign.net', 'BlogController Update 5', '2015-12-29 08:49:31'),
(1583, 'williama@realfood.co.id', 'Setting Update', '2015-12-29 08:49:54'),
(1584, 'info@markdesign.net', 'BlogController Update 4', '2015-12-29 08:50:04'),
(1585, 'info@markdesign.net', 'Blog Controller Create 10', '2015-12-29 08:52:40'),
(1586, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-30 08:16:40'),
(1587, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:31:28'),
(1588, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:34:10'),
(1589, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:35:15'),
(1590, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:35:35'),
(1591, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-30 08:37:35'),
(1592, 'williama@realfood.co.id', 'Login: williama@realfood.co.id', '2015-12-30 08:39:26'),
(1593, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:40:39'),
(1594, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-30 08:44:59'),
(1595, 'deoryzpandu@gmail.com', 'Setting Update', '2015-12-30 08:45:19'),
(1596, 'williama@realfood.co.id', 'GalleryController Update 5', '2015-12-30 08:45:44'),
(1597, 'williama@realfood.co.id', 'GalleryController Update 4', '2015-12-30 08:47:15'),
(1598, 'williama@realfood.co.id', 'GalleryController Update 3', '2015-12-30 08:47:26'),
(1599, 'williama@realfood.co.id', 'GalleryController Update 3', '2015-12-30 08:47:55'),
(1600, 'williama@realfood.co.id', 'GalleryController Update 4', '2015-12-30 08:48:09'),
(1601, 'williama@realfood.co.id', 'Setting Update', '2015-12-30 10:09:57'),
(1602, 'williama@realfood.co.id', 'Setting Update', '2015-12-30 10:13:51'),
(1603, 'williama@realfood.co.id', 'Setting Update', '2015-12-30 10:15:49'),
(1604, 'williama@realfood.co.id', 'Setting Update', '2015-12-30 10:19:49'),
(1605, 'williama@realfood.co.id', 'SlideController Update 7', '2015-12-30 11:00:12'),
(1606, 'williama@realfood.co.id', 'SlideController Update 7', '2015-12-30 11:01:36'),
(1607, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-12-31 03:30:49'),
(1608, 'williama@realfood.co.id', 'Login: williama@realfood.co.id', '2016-01-05 03:02:02'),
(1609, 'williama@realfood.co.id', 'FactoryController Update 5', '2016-01-05 03:03:07'),
(1610, 'williama@realfood.co.id', 'Login: williama@realfood.co.id', '2016-01-06 02:45:30'),
(1611, 'creative@realfood.co.id', 'Login: creative@realfood.co.id', '2016-01-06 02:48:05'),
(1612, 'creative@realfood.co.id', 'Setting Update', '2016-01-06 02:57:49'),
(1613, 'creative@realfood.co.id', 'Setting Update', '2016-01-06 03:02:59'),
(1614, 'creative@realfood.co.id', 'Setting Update', '2016-01-06 03:03:40'),
(1615, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-16 08:15:22'),
(1616, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-16 08:39:26'),
(1617, 'deoryzpandu@gmail.com', 'SlideController Update 7', '2016-03-16 08:40:14'),
(1618, 'deoryzpandu@gmail.com', 'SlideController Update 7', '2016-03-16 08:42:22'),
(1619, 'deoryzpandu@gmail.com', 'SlideController Update 7', '2016-03-16 08:42:40'),
(1620, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 08:48:18'),
(1621, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 08:48:39'),
(1622, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 08:54:36'),
(1623, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 08:55:00'),
(1624, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 08:58:33'),
(1625, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 09:07:33'),
(1626, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 09:08:02'),
(1627, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-16 09:08:21'),
(1628, 'deoryzpandu@gmail.com', 'Create Category 1', '2016-03-16 09:13:19'),
(1629, 'deoryzpandu@gmail.com', 'Create Category 2', '2016-03-16 09:13:25'),
(1630, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-03-16 09:13:31'),
(1631, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-03-16 09:13:37'),
(1632, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-03-16 09:14:01'),
(1633, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-17 06:38:25'),
(1634, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-21 04:18:44'),
(1635, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 1', '2016-03-22 03:27:26'),
(1636, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:27:33'),
(1637, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:29:09'),
(1638, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:31:18'),
(1639, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:35:10'),
(1640, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:39:44'),
(1641, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 03:39:54'),
(1642, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 2', '2016-03-22 03:42:46'),
(1643, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-03-22 03:43:26'),
(1644, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 3', '2016-03-22 03:45:56'),
(1645, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-03-22 03:50:43'),
(1646, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 07:08:15'),
(1647, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-03-22 07:08:22'),
(1648, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2016-03-22 07:08:32'),
(1649, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2016-03-22 07:19:23'),
(1650, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-03-22 07:19:41'),
(1651, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-03-22 07:22:10'),
(1652, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-29 05:20:06'),
(1653, 'deoryzpandu@gmail.com', 'Setting Update', '2016-03-29 08:32:50'),
(1654, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-29 08:41:35'),
(1655, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-03-29 08:44:35'),
(1656, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-03-29 18:38:58'),
(1657, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-04-13 08:09:48'),
(1658, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2016-04-13 08:10:24'),
(1659, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-04-13 08:11:52'),
(1660, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2016-04-13 08:13:25'),
(1661, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2016-04-13 08:13:44'),
(1662, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-05-11 08:45:31'),
(1663, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-05-11 08:54:21'),
(1664, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-16 05:46:44'),
(1665, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-16 06:24:25'),
(1666, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-16 06:29:27'),
(1667, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-21 01:36:56'),
(1668, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-21 02:14:17'),
(1669, 'info@markdesign.net', 'ProductController Update 1', '2016-06-21 02:29:34'),
(1670, 'info@markdesign.net', 'ProductController Update 1', '2016-06-21 02:31:05'),
(1671, 'info@markdesign.net', 'ProductController Update 1', '2016-06-21 03:13:02'),
(1672, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-06-22 07:34:00'),
(1673, 'info@markdesign.net', 'ProductController Update 2', '2016-06-22 07:52:31'),
(1674, 'info@markdesign.net', 'ProductController Update 3', '2016-06-22 08:44:30'),
(1675, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-07-12 01:39:34'),
(1676, 'info@markdesign.net', 'PrdProduct Controller Create 4', '2016-07-12 01:54:12'),
(1677, 'info@markdesign.net', 'ProductController Update 4', '2016-07-12 01:57:19'),
(1678, 'info@markdesign.net', 'PrdProduct Controller Create 5', '2016-07-12 02:06:49'),
(1679, 'info@markdesign.net', 'ProductController Update 5', '2016-07-12 02:06:56'),
(1680, 'info@markdesign.net', 'PrdProduct Controller Create 6', '2016-07-12 02:14:17'),
(1681, 'info@markdesign.net', 'ProductController Update 6', '2016-07-12 02:14:24'),
(1682, 'info@markdesign.net', 'PrdProduct Controller Create 7', '2016-07-12 02:18:35'),
(1683, 'info@markdesign.net', 'ProductController Update 7', '2016-07-12 02:19:17'),
(1684, 'info@markdesign.net', 'ProductController Update 7', '2016-07-12 02:22:42'),
(1685, 'info@markdesign.net', 'ProductController Update 6', '2016-07-12 02:23:30'),
(1686, 'info@markdesign.net', 'ProductController Update 3', '2016-07-12 02:26:18'),
(1687, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-10-17 07:34:31'),
(1688, 'deoryzpandu@gmail.com', 'Create Category 1', '2016-10-17 07:41:46'),
(1689, 'deoryzpandu@gmail.com', 'Create Category 2', '2016-10-17 07:41:52'),
(1690, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-10-17 07:41:56'),
(1691, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-10-17 07:42:02'),
(1692, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-10-17 07:42:19'),
(1693, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-10-17 07:42:29'),
(1694, 'deoryzpandu@gmail.com', 'Create Category 6', '2016-10-17 07:42:37'),
(1695, 'deoryzpandu@gmail.com', 'Create Category 7', '2016-10-17 07:48:11'),
(1696, 'deoryzpandu@gmail.com', 'Create Category 8', '2016-10-17 07:48:19'),
(1697, 'deoryzpandu@gmail.com', 'Create Category 9', '2016-10-17 07:48:27'),
(1698, 'deoryzpandu@gmail.com', 'Create Category 10', '2016-10-17 07:48:34'),
(1699, 'deoryzpandu@gmail.com', 'Create Category 11', '2016-10-17 07:48:39'),
(1700, 'deoryzpandu@gmail.com', 'Create Category 12', '2016-10-17 07:48:45'),
(1701, 'deoryzpandu@gmail.com', 'Create Category 13', '2016-10-17 07:49:22'),
(1702, 'deoryzpandu@gmail.com', 'Create Category 14', '2016-10-17 07:49:28'),
(1703, 'deoryzpandu@gmail.com', 'Create Category 15', '2016-10-17 07:49:33'),
(1704, 'deoryzpandu@gmail.com', 'Create Category 16', '2016-10-17 07:49:41'),
(1705, 'deoryzpandu@gmail.com', 'Create Category 17', '2016-10-17 07:50:09'),
(1706, 'deoryzpandu@gmail.com', 'Create Category 18', '2016-10-17 07:50:19'),
(1707, 'deoryzpandu@gmail.com', 'Create Category 19', '2016-10-17 07:50:23'),
(1708, 'deoryzpandu@gmail.com', 'Create Category 20', '2016-10-17 07:50:28'),
(1709, 'deoryzpandu@gmail.com', 'Create Category 21', '2016-10-17 07:50:52'),
(1710, 'deoryzpandu@gmail.com', 'Create Category 22', '2016-10-17 07:50:56'),
(1711, 'deoryzpandu@gmail.com', 'Create Category 23', '2016-10-17 07:51:02'),
(1712, 'deoryzpandu@gmail.com', 'Create Category 24', '2016-10-17 07:51:09'),
(1713, 'deoryzpandu@gmail.com', 'Create Category 25', '2016-10-17 07:51:14'),
(1714, 'deoryzpandu@gmail.com', 'Create Category 26', '2016-10-17 07:51:19'),
(1715, 'deoryzpandu@gmail.com', 'Create Category 27', '2016-10-17 07:51:26'),
(1716, 'deoryzpandu@gmail.com', 'Create Category 28', '2016-10-17 07:51:32'),
(1717, 'deoryzpandu@gmail.com', 'Create Category 29', '2016-10-17 07:51:40'),
(1718, 'deoryzpandu@gmail.com', 'Create Category 30', '2016-10-17 07:52:32'),
(1719, 'deoryzpandu@gmail.com', 'Create Category 31', '2016-10-17 07:52:37'),
(1720, 'deoryzpandu@gmail.com', 'Create Category 32', '2016-10-17 07:52:43'),
(1721, 'deoryzpandu@gmail.com', 'Create Category 33', '2016-10-17 07:52:49'),
(1722, 'deoryzpandu@gmail.com', 'Create Category 34', '2016-10-17 07:52:54'),
(1723, 'deoryzpandu@gmail.com', 'Create Category 35', '2016-10-17 07:53:00'),
(1724, 'deoryzpandu@gmail.com', 'Create Category 36', '2016-10-17 07:53:30'),
(1725, 'deoryzpandu@gmail.com', 'Create Category 37', '2016-10-17 07:53:36'),
(1726, 'deoryzpandu@gmail.com', 'Create Category 1', '2016-10-17 08:18:39'),
(1727, 'deoryzpandu@gmail.com', 'Create Category 2', '2016-10-17 08:20:15'),
(1728, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-10-17 08:20:43'),
(1729, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-10-17 08:21:35'),
(1730, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-10-17 08:21:44'),
(1731, 'deoryzpandu@gmail.com', 'Create Category 6', '2016-10-17 08:22:37'),
(1732, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 1', '2016-10-17 08:34:13'),
(1733, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-10-17 08:35:04'),
(1734, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2016-10-17 08:35:07'),
(1735, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2016-10-17 08:35:29'),
(1736, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2016-10-17 08:39:49'),
(1737, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2016-10-17 08:40:06'),
(1738, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2016-10-17 08:40:29'),
(1739, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2016-10-17 08:40:34'),
(1740, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2016-10-17 08:40:36'),
(1741, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2016-10-17 08:40:44'),
(1742, 'deoryzpandu@gmail.com', 'Create Category 1', '2016-10-17 08:59:22'),
(1743, 'deoryzpandu@gmail.com', 'Create Category 2', '2016-10-17 08:59:32'),
(1744, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-10-17 08:59:47'),
(1745, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-10-17 09:00:03'),
(1746, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-10-17 09:00:13'),
(1747, 'deoryzpandu@gmail.com', 'Create Category 6', '2016-10-17 09:00:24'),
(1748, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2016-10-17 09:59:33'),
(1749, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-10-18 06:59:06'),
(1750, 'deoryzpandu@gmail.com', 'Blog Controller Create 1', '2016-10-18 07:19:18'),
(1751, 'deoryzpandu@gmail.com', 'Blog Controller Create 2', '2016-10-18 07:20:12'),
(1752, 'deoryzpandu@gmail.com', 'Blog Controller Create 3', '2016-10-18 07:21:00'),
(1753, 'deoryzpandu@gmail.com', 'Blog Controller Create 4', '2016-10-18 07:22:24'),
(1754, 'deoryzpandu@gmail.com', 'Blog Controller Create 5', '2016-10-18 07:22:52'),
(1755, 'deoryzpandu@gmail.com', 'Blog Controller Create 6', '2016-10-18 07:23:42'),
(1756, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2016-10-18 07:33:19'),
(1757, 'deoryzpandu@gmail.com', 'BlogController Update 5', '2016-10-18 07:33:39'),
(1758, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2016-10-18 07:33:51'),
(1759, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2016-10-18 07:34:11'),
(1760, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2016-10-18 07:34:20'),
(1761, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2016-10-18 07:34:32'),
(1762, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2016-10-18 07:37:04'),
(1763, 'deoryzpandu@gmail.com', 'BlogController Update 5', '2016-10-18 07:37:29'),
(1764, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2016-10-18 07:37:43'),
(1765, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2016-10-18 07:38:10'),
(1766, 'deoryzpandu@gmail.com', 'Address Controller Update 1', '2016-10-18 08:29:04'),
(1767, 'deoryzpandu@gmail.com', 'Slide Controller Create 14', '2016-10-18 10:08:23'),
(1768, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-18 10:22:40'),
(1769, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 04:14:36'),
(1770, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 04:14:47'),
(1771, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 04:25:49'),
(1772, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:06:02'),
(1773, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:15:51'),
(1774, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:16:24'),
(1775, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:17:09'),
(1776, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:21:17'),
(1777, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:37:25'),
(1778, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 06:42:34'),
(1779, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:09:40'),
(1780, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:09:52'),
(1781, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:10:00'),
(1782, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:10:21'),
(1783, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:10:32'),
(1784, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:11:26'),
(1785, 'deoryzpandu@gmail.com', 'Setting Update', '2016-10-19 07:12:10'),
(1786, 'deoryzpandu@gmail.com', 'PdfController Create 5', '2016-10-19 08:45:36'),
(1787, 'deoryzpandu@gmail.com', 'BlogController Update 5', '2016-10-19 09:07:43'),
(1788, 'deoryzpandu@gmail.com', 'Address Controller Update 1', '2016-10-19 09:13:17'),
(1789, 'deoryzpandu@gmail.com', 'Address Controller Update 2', '2016-10-19 09:13:25'),
(1790, 'deoryzpandu@gmail.com', 'Address Controller Update 3', '2016-10-19 09:13:30'),
(1791, 'deoryzpandu@gmail.com', 'Address Controller Update 4', '2016-10-19 09:13:43'),
(1792, 'deoryzpandu@gmail.com', 'Address Controller Update 5', '2016-10-19 09:13:48'),
(1793, 'deoryzpandu@gmail.com', 'Address Controller Update 6', '2016-10-19 09:13:54'),
(1794, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-10-19 09:15:42'),
(1795, 'info@markdesign.net', 'PdfController Update 5', '2016-10-19 09:17:33'),
(1796, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-10-21 02:36:26'),
(1797, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-11-02 02:52:26'),
(1798, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-11-04 07:06:02'),
(1799, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-11-25 03:42:54'),
(1800, 'deoryzpandu@gmail.com', 'Create Category 38', '2016-11-28 04:59:44'),
(1801, 'deoryzpandu@gmail.com', 'BrandController Update 8', '2016-11-28 07:08:50'),
(1802, 'deoryzpandu@gmail.com', 'BrandController Update 7', '2016-11-28 07:09:38'),
(1803, 'deoryzpandu@gmail.com', 'BrandController Update 6', '2016-11-28 07:09:41'),
(1804, 'deoryzpandu@gmail.com', 'BrandController Update 5', '2016-11-28 07:09:44'),
(1805, 'deoryzpandu@gmail.com', 'BrandController Update 4', '2016-11-28 07:09:59'),
(1806, 'deoryzpandu@gmail.com', 'BrandController Update 3', '2016-11-28 07:10:16'),
(1807, 'deoryzpandu@gmail.com', 'BrandController Update 5', '2016-11-28 07:10:37'),
(1808, 'deoryzpandu@gmail.com', 'BrandController Update 3', '2016-11-28 07:10:45'),
(1809, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 03:53:23'),
(1810, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 03:53:56'),
(1811, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 03:55:01'),
(1812, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 04:26:38'),
(1813, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 06:19:44'),
(1814, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 06:21:35'),
(1815, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 06:23:09'),
(1816, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:10:28'),
(1817, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:10:38'),
(1818, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:12:18'),
(1819, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:13:44'),
(1820, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-11-29 08:14:53'),
(1821, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:14:59'),
(1822, 'info@markdesign.net', 'Setting Update', '2016-11-29 08:15:37'),
(1823, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:15:39'),
(1824, 'info@markdesign.net', 'Setting Update', '2016-11-29 08:16:07'),
(1825, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:18:07'),
(1826, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:18:16'),
(1827, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-11-29 08:34:38'),
(1828, 'info@markdesign.net', 'Setting Update', '2016-11-29 08:34:52'),
(1829, 'deoryzpandu@gmail.com', 'Setting Update', '2016-11-29 08:36:51'),
(1830, 'deoryzpandu@gmail.com', 'Create Category 1', '2016-11-29 09:12:05'),
(1831, 'deoryzpandu@gmail.com', 'Create Category 2', '2016-11-29 09:12:17'),
(1832, 'deoryzpandu@gmail.com', 'Create Category 3', '2016-11-29 09:12:29'),
(1833, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-11-29 09:12:45'),
(1834, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-11-29 09:12:59'),
(1835, 'deoryzpandu@gmail.com', 'Create Category 6', '2016-11-29 09:13:14'),
(1836, 'deoryzpandu@gmail.com', 'Create Category 5', '2016-11-29 09:24:11'),
(1837, 'deoryzpandu@gmail.com', 'Create Category 4', '2016-11-29 09:24:35'),
(1838, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2016-11-30 03:30:01'),
(1839, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2016-12-08 07:59:29');
INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1840, 'deoryzpandu@gmail.com', 'Setting Update', '2016-12-08 08:00:47'),
(1841, 'deoryzpandu@gmail.com', 'Setting Update', '2016-12-08 08:01:05'),
(1842, 'info@markdesign.net', 'Login: info@markdesign.net', '2016-12-13 06:54:05'),
(1843, 'info@markdesign.net', 'Setting Update', '2016-12-13 06:54:33'),
(1844, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-01-25 02:15:23'),
(1845, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-01-26 02:30:57'),
(1846, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:07:39'),
(1847, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:07:56'),
(1848, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:08:16'),
(1849, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:08:44'),
(1850, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:10:03'),
(1851, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:10:15'),
(1852, 'deoryzpandu@gmail.com', 'Setting Update', '2017-01-26 07:42:50'),
(1853, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-01-26 07:45:14'),
(1854, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-01-26 07:45:26'),
(1855, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-01-26 07:47:25'),
(1856, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-01-26 07:47:41'),
(1857, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-26 07:47:52'),
(1858, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-01-26 07:47:58'),
(1859, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-26 07:48:06'),
(1860, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-01-26 07:48:12'),
(1861, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:23:21'),
(1862, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:24:44'),
(1863, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:26:24'),
(1864, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:27:32'),
(1865, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:27:42'),
(1866, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:28:01'),
(1867, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-27 03:33:33'),
(1868, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-01-27 03:49:22'),
(1869, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-01-27 03:49:30'),
(1870, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-01-27 04:06:34'),
(1871, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-01-27 04:06:43'),
(1872, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-01-27 04:06:52'),
(1873, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-01-27 04:07:03'),
(1874, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-27 04:07:13'),
(1875, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-27 04:07:21'),
(1876, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-01-27 04:07:29'),
(1877, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-01-27 04:17:27'),
(1878, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-01-27 04:17:36'),
(1879, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-01-27 04:18:15'),
(1880, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-01-27 04:18:22'),
(1881, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-27 04:18:32'),
(1882, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-01-27 04:18:47'),
(1883, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-27 04:18:57'),
(1884, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-27 04:19:16'),
(1885, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-01-27 06:17:26'),
(1886, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-01-27 06:17:32'),
(1887, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-01-27 06:17:38'),
(1888, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-01-27 06:30:24'),
(1889, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2017-01-27 06:31:04'),
(1890, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2017-01-27 06:31:12'),
(1891, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 1', '2017-01-27 07:31:41'),
(1892, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-01-27 07:47:15'),
(1893, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-27 08:05:25'),
(1894, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-01-27 08:08:27'),
(1895, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-01-27 08:08:36'),
(1896, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-01-27 08:08:44'),
(1897, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-01-27 08:08:55'),
(1898, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-27 08:09:05'),
(1899, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-01-27 08:09:54'),
(1900, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-27 08:10:02'),
(1901, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-01-27 08:10:11'),
(1902, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-01-27 08:33:22'),
(1903, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-01-30 04:16:28'),
(1904, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-01-30 04:19:41'),
(1905, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-01-30 04:20:09'),
(1906, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-01-30 04:20:20'),
(1907, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-01-30 04:20:30'),
(1908, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-01-30 04:37:46'),
(1909, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-01-30 04:37:59'),
(1910, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-01-30 04:38:08'),
(1911, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-01-30 04:38:16'),
(1912, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-01-30 04:38:27'),
(1913, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-01-30 04:38:41'),
(1914, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-01-30 04:38:50'),
(1915, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-01-30 04:39:05'),
(1916, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-01-31 07:59:49'),
(1917, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-31 08:00:00'),
(1918, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-01-31 08:26:18'),
(1919, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-02-01 05:21:34'),
(1920, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-02-08 03:23:20'),
(1921, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-08 03:28:29'),
(1922, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-08 03:28:49'),
(1923, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-08 03:29:25'),
(1924, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-08 03:29:30'),
(1925, 'deoryzpandu@gmail.com', 'Brand Controller Create 1', '2017-02-08 07:17:22'),
(1926, 'deoryzpandu@gmail.com', 'Brand Controller Create 2', '2017-02-08 07:17:44'),
(1927, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-02-08 07:19:45'),
(1928, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-02-08 07:19:52'),
(1929, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-02-08 07:20:01'),
(1930, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-02-09 02:40:43'),
(1931, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-09 03:43:12'),
(1932, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-09 03:43:38'),
(1933, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-09 03:49:01'),
(1934, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-09 08:29:21'),
(1935, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-10 02:34:14'),
(1936, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-10 03:09:07'),
(1937, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-10 03:16:55'),
(1938, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-10 03:17:26'),
(1939, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-02-10 04:02:41'),
(1940, 'deoryzpandu@gmail.com', 'Create Category 1', '2017-02-10 04:06:10'),
(1941, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-02-10 04:06:19'),
(1942, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-02-10 04:06:30'),
(1943, 'deoryzpandu@gmail.com', 'Create Category 3', '2017-02-10 04:06:38'),
(1944, 'deoryzpandu@gmail.com', 'Create Category 2', '2017-02-10 04:06:47'),
(1945, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-10 04:43:39'),
(1946, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-10 04:45:19'),
(1947, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-10 06:03:38'),
(1948, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-10 06:04:25'),
(1949, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-14 08:34:27'),
(1950, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-16 03:51:41'),
(1951, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-16 03:52:34'),
(1952, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2017-02-16 03:54:05'),
(1953, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-02-16 08:29:07'),
(1954, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-16 08:58:01'),
(1955, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-02-16 08:58:53'),
(1956, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-02-20 07:46:46'),
(1957, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-20 07:57:23'),
(1958, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 02:45:21'),
(1959, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 03:58:45'),
(1960, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 03:59:04'),
(1961, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 03:59:53'),
(1962, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 04:00:45'),
(1963, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 06:43:21'),
(1964, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 07:35:23'),
(1965, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 07:35:30'),
(1966, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 07:36:11'),
(1967, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-02-21 07:38:06'),
(1968, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-02-21 07:38:19'),
(1969, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-02-21 07:39:21'),
(1970, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 08:32:40'),
(1971, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 08:43:42'),
(1972, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-21 08:47:50'),
(1973, 'deoryzpandu@gmail.com', 'GalleryController Update 4', '2017-02-22 02:41:56'),
(1974, 'deoryzpandu@gmail.com', 'Gallery Controller Create 6', '2017-02-22 03:35:15'),
(1975, 'deoryzpandu@gmail.com', 'Gallery Controller Create 7', '2017-02-22 03:36:10'),
(1976, 'deoryzpandu@gmail.com', 'Gallery Controller Create 8', '2017-02-22 03:36:55'),
(1977, 'info@markdesign.net', 'Login: info@markdesign.net', '2017-02-24 01:46:07'),
(1978, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-02-24 02:57:50'),
(1979, 'deoryzpandu@gmail.com', 'Setting Update', '2017-02-24 02:59:03'),
(1980, 'deoryzpandu@gmail.com', 'User Delete creative@realfood.co.id 35', '2017-02-24 07:21:43'),
(1981, 'deoryzpandu@gmail.com', 'User Delete Williama@realfood.co.id 36', '2017-02-24 07:21:44'),
(1982, 'deoryzpandu@gmail.com', 'User Delete info@realfood.co.id 37', '2017-02-24 07:21:45'),
(1983, 'info@markdesign.net', 'Login: info@markdesign.net', '2017-02-24 07:27:29'),
(1984, 'info@markdesign.net', 'Login: info@markdesign.net', '2017-02-24 08:46:27'),
(1985, 'info@markdesign.net', 'Login: info@markdesign.net', '2017-03-21 01:09:24'),
(1986, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-22 09:01:27'),
(1987, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-22 09:01:45'),
(1988, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-22 09:02:38'),
(1989, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-22 09:13:19'),
(1990, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-22 09:59:45'),
(1991, 'deoryzpandu@gmail.com', 'Setting Update', '2017-03-23 02:38:27'),
(1992, 'info@markdesign.net', 'Login: info@markdesign.net', '2017-04-17 08:52:47'),
(1993, 'info@markdesign.net', 'SlideController Update 14', '2017-04-17 08:53:23'),
(1994, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-07-06 04:41:02'),
(1995, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-07-06 07:01:44'),
(1996, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-07-06 09:11:46'),
(1997, 'deoryzpandu@gmail.com', 'Slide Controller Create 15', '2017-07-07 02:14:30'),
(1998, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 06:20:47'),
(1999, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 06:26:22'),
(2000, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 06:34:28'),
(2001, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 06:34:35'),
(2002, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-07-07 06:35:46'),
(2003, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-07-07 06:35:53'),
(2004, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-07-07 06:35:59'),
(2005, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-07-07 06:36:07'),
(2006, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-07-07 06:36:12'),
(2007, 'deoryzpandu@gmail.com', 'Create Category 9', '2017-07-07 06:36:16'),
(2008, 'deoryzpandu@gmail.com', 'Create Category 10', '2017-07-07 06:36:22'),
(2009, 'deoryzpandu@gmail.com', 'Create Category 11', '2017-07-07 06:36:26'),
(2010, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:46:49'),
(2011, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:47:41'),
(2012, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:50:08'),
(2013, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:53:29'),
(2014, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:54:01'),
(2015, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 06:54:23'),
(2016, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 3', '2017-07-07 07:05:37'),
(2017, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-07-07 07:05:41'),
(2018, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-07-07 07:06:01'),
(2019, 'deoryzpandu@gmail.com', 'Create Category 4', '2017-07-07 07:09:32'),
(2020, 'deoryzpandu@gmail.com', 'Create Category 5', '2017-07-07 07:09:43'),
(2021, 'deoryzpandu@gmail.com', 'Create Category 6', '2017-07-07 07:09:47'),
(2022, 'deoryzpandu@gmail.com', 'Create Category 7', '2017-07-07 07:09:52'),
(2023, 'deoryzpandu@gmail.com', 'Create Category 8', '2017-07-07 07:09:58'),
(2024, 'deoryzpandu@gmail.com', 'Create Category 9', '2017-07-07 07:10:02'),
(2025, 'deoryzpandu@gmail.com', 'Create Category 10', '2017-07-07 07:10:07'),
(2026, 'deoryzpandu@gmail.com', 'Create Category 11', '2017-07-07 07:10:12'),
(2027, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-07-07 07:53:55'),
(2028, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-07-07 08:27:45'),
(2029, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-07-07 08:27:54'),
(2030, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-07-07 08:28:02'),
(2031, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 09:14:41'),
(2032, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-07 09:24:03'),
(2033, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-10 03:42:16'),
(2034, 'deoryzpandu@gmail.com', 'SlideController Update 14', '2017-07-11 02:27:49'),
(2035, 'deoryzpandu@gmail.com', 'SlideController Update 15', '2017-07-11 02:28:11'),
(2036, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2017-07-11 03:37:11'),
(2037, 'deoryzpandu@gmail.com', 'BlogController Update 5', '2017-07-11 03:37:27'),
(2038, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2017-07-11 03:37:33'),
(2039, 'deoryzpandu@gmail.com', 'BlogController Update 3', '2017-07-11 03:37:38'),
(2040, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2017-07-11 03:37:44'),
(2041, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2017-07-11 03:37:53'),
(2042, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2017-07-11 03:38:04'),
(2043, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2017-07-11 07:00:31'),
(2044, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2017-07-11 07:00:47'),
(2045, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2017-07-11 07:00:54'),
(2046, 'deoryzpandu@gmail.com', 'ProductController Update 7', '2017-07-11 07:01:00'),
(2047, 'deoryzpandu@gmail.com', 'ProductController Update 8', '2017-07-11 07:01:05'),
(2048, 'deoryzpandu@gmail.com', 'ProductController Update 9', '2017-07-11 07:01:13'),
(2049, 'deoryzpandu@gmail.com', 'ProductController Update 10', '2017-07-11 07:01:21'),
(2050, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2017-07-11 07:01:39'),
(2051, 'deoryzpandu@gmail.com', 'ProductController Update 12', '2017-07-11 07:01:56'),
(2052, 'deoryzpandu@gmail.com', 'ProductController Update 13', '2017-07-11 07:02:02'),
(2053, 'deoryzpandu@gmail.com', 'ProductController Update 14', '2017-07-11 07:02:06'),
(2054, 'deoryzpandu@gmail.com', 'ProductController Update 15', '2017-07-11 07:02:11'),
(2055, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-11 07:02:15'),
(2056, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2017-07-31 04:07:49'),
(2057, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 04:30:04'),
(2058, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 06:26:09'),
(2059, 'deoryzpandu@gmail.com', 'Create Category 12', '2017-07-31 06:31:06'),
(2060, 'deoryzpandu@gmail.com', 'Create Category 13', '2017-07-31 06:31:15'),
(2061, 'deoryzpandu@gmail.com', 'Create Category 14', '2017-07-31 06:31:20'),
(2062, 'deoryzpandu@gmail.com', 'Create Category 15', '2017-07-31 06:31:25'),
(2063, 'deoryzpandu@gmail.com', 'Create Category 16', '2017-07-31 06:31:35'),
(2064, 'deoryzpandu@gmail.com', 'Create Category 17', '2017-07-31 06:31:47'),
(2065, 'deoryzpandu@gmail.com', 'Create Category 18', '2017-07-31 06:31:49'),
(2066, 'deoryzpandu@gmail.com', 'Create Category 19', '2017-07-31 06:31:56'),
(2067, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 06:46:07'),
(2068, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 06:46:53'),
(2069, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 06:48:17'),
(2070, 'deoryzpandu@gmail.com', 'Setting Update', '2017-07-31 06:49:53'),
(2071, 'deoryzpandu@gmail.com', 'GalleryController Update 6', '2017-07-31 07:09:08'),
(2072, 'deoryzpandu@gmail.com', 'GalleryController Update 6', '2017-07-31 07:09:20'),
(2073, 'deoryzpandu@gmail.com', 'GalleryController Update 6', '2017-07-31 07:11:02'),
(2074, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:01:37'),
(2075, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:03:00'),
(2076, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:07:22'),
(2077, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:08:28'),
(2078, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:08:42'),
(2079, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:14:49'),
(2080, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:14:53'),
(2081, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:15:09'),
(2082, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:21:33'),
(2083, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:30:58'),
(2084, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-07-31 09:34:43'),
(2085, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-08-01 02:35:15'),
(2086, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 03:57:49'),
(2087, 'deoryzpandu@gmail.com', 'GalleryController Update 6', '2017-08-01 03:59:10'),
(2088, 'deoryzpandu@gmail.com', 'GalleryController Update 8', '2017-08-01 03:59:25'),
(2089, 'deoryzpandu@gmail.com', 'GalleryController Update 7', '2017-08-01 03:59:34'),
(2090, 'deoryzpandu@gmail.com', 'GalleryController Update 7', '2017-08-01 03:59:50'),
(2091, 'deoryzpandu@gmail.com', 'GalleryController Update 7', '2017-08-01 04:00:03'),
(2092, 'deoryzpandu@gmail.com', 'GalleryController Update 8', '2017-08-01 04:00:30'),
(2093, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 04:10:07'),
(2094, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 04:12:06'),
(2095, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 04:14:51'),
(2096, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 04:18:03'),
(2097, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 04:23:47'),
(2098, 'deoryzpandu@gmail.com', 'Address Controller Update 1', '2017-08-01 06:50:24'),
(2099, 'deoryzpandu@gmail.com', 'Address Controller Update 2', '2017-08-01 06:50:35'),
(2100, 'deoryzpandu@gmail.com', 'Address Controller Update 3', '2017-08-01 06:50:43'),
(2101, 'deoryzpandu@gmail.com', 'Address Controller Update 4', '2017-08-01 06:50:49'),
(2102, 'deoryzpandu@gmail.com', 'Address Controller Update 5', '2017-08-01 06:51:03'),
(2103, 'deoryzpandu@gmail.com', 'Address Controller Update 6', '2017-08-01 06:51:16'),
(2104, 'deoryzpandu@gmail.com', 'Address Controller Update 3', '2017-08-01 06:51:23'),
(2105, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 07:07:17'),
(2106, 'deoryzpandu@gmail.com', 'Setting Update', '2017-08-01 07:11:59'),
(2107, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-08-01 07:35:32'),
(2108, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-08-01 07:35:36'),
(2109, 'deoryzpandu@gmail.com', 'ProductController Update 15', '2017-08-01 07:36:08'),
(2110, 'deoryzpandu@gmail.com', 'ProductController Update 15', '2017-08-01 07:36:11'),
(2111, 'deoryzpandu@gmail.com', 'ProductController Update 14', '2017-08-01 07:37:31'),
(2112, 'deoryzpandu@gmail.com', 'ProductController Update 14', '2017-08-01 07:37:36'),
(2113, 'deoryzpandu@gmail.com', 'ProductController Update 13', '2017-08-01 07:37:50'),
(2114, 'deoryzpandu@gmail.com', 'ProductController Update 12', '2017-08-01 07:38:04'),
(2115, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2017-08-01 07:38:17'),
(2116, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2017-08-01 07:38:22'),
(2117, 'deoryzpandu@gmail.com', 'ProductController Update 10', '2017-08-01 07:38:35'),
(2118, 'deoryzpandu@gmail.com', 'ProductController Update 10', '2017-08-01 07:38:41'),
(2119, 'deoryzpandu@gmail.com', 'ProductController Update 9', '2017-08-01 07:38:59'),
(2120, 'deoryzpandu@gmail.com', 'ProductController Update 8', '2017-08-01 07:39:10'),
(2121, 'deoryzpandu@gmail.com', 'ProductController Update 7', '2017-08-01 07:39:20'),
(2122, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2017-08-01 07:39:42'),
(2123, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2017-08-01 07:39:50'),
(2124, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2017-08-01 07:39:59'),
(2125, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-08-01 07:40:07'),
(2126, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-08-01 07:40:15'),
(2127, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-08-01 07:43:36'),
(2128, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-08-01 07:43:45'),
(2129, 'deoryzpandu@gmail.com', 'ProductController Update 16', '2017-08-01 07:44:34'),
(2130, 'deoryzpandu@gmail.com', 'ProductController Update 15', '2017-08-01 07:44:36'),
(2131, 'deoryzpandu@gmail.com', 'ProductController Update 14', '2017-08-01 07:44:38'),
(2132, 'deoryzpandu@gmail.com', 'ProductController Update 13', '2017-08-01 07:44:39'),
(2133, 'deoryzpandu@gmail.com', 'ProductController Update 12', '2017-08-01 07:44:41'),
(2134, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2017-08-01 07:44:41'),
(2135, 'deoryzpandu@gmail.com', 'ProductController Update 10', '2017-08-01 07:44:43'),
(2136, 'deoryzpandu@gmail.com', 'ProductController Update 9', '2017-08-01 07:44:44'),
(2137, 'deoryzpandu@gmail.com', 'ProductController Update 8', '2017-08-01 07:44:46'),
(2138, 'deoryzpandu@gmail.com', 'ProductController Update 7', '2017-08-01 07:44:47'),
(2139, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2017-08-01 07:45:20'),
(2140, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2017-08-01 07:45:22'),
(2141, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2017-08-01 07:45:26'),
(2142, 'deoryzpandu@gmail.com', 'ProductController Update 3', '2017-08-01 07:45:27'),
(2143, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2017-08-01 07:45:29'),
(2144, 'deoryzpandu@gmail.com', 'ProductController Update 13', '2017-08-01 08:19:17'),
(2145, 'deoryzpandu@gmail.com', 'Create Category 12', '2017-08-01 08:22:54'),
(2146, 'deoryzpandu@gmail.com', 'Create Category 13', '2017-08-01 08:23:42'),
(2147, 'deoryzpandu@gmail.com', 'Create Category 14', '2017-08-01 08:23:48'),
(2148, 'deoryzpandu@gmail.com', 'Create Category 15', '2017-08-01 08:23:54'),
(2149, 'deoryzpandu@gmail.com', 'Create Category 16', '2017-08-01 08:24:00'),
(2150, 'deoryzpandu@gmail.com', 'Create Category 17', '2017-08-01 08:24:08'),
(2151, 'deoryzpandu@gmail.com', 'Create Category 18', '2017-08-01 08:24:15'),
(2152, 'deoryzpandu@gmail.com', 'Create Category 19', '2017-08-01 08:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `me_member`
--

DROP TABLE IF EXISTS `me_member`;
CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `me_member`
--

INSERT INTO `me_member` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`) VALUES
(2, 'deoryzpandu@gmail.com', 'deory pandu putra', 'wahyu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2015-07-10 16:31:10', 0, 1, '', '0854646464', 'jl test test', 'batu', '11', '65656'),
(5, 'ibnu@markdesign.net', 'deory pandu putra', 'wahyu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-28 04:16:03', 0, 1, '', '085646765265', 'Jl Martorejo No 113', 'Batu', '11', '65323'),
(9, 'ibnu.fajar86@yahoo.com', 'ibnu', 'fajar', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 09:11:18', 0, 1, '', '2736473264', 'jl. embong kenongo 79a', 'surabaya', '11', '60239'),
(7, 'deo@markdesign.net', 'deoryzzz', 'pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 08:59:20', 0, 1, '', '085646765265', 'Jl Martorejo No 113', '444', '11', '65323'),
(10, 'deoryz@yahoo.co.id', 'deoryzzz', 'pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-29 09:12:15', 0, 1, '', '085646765265', 'Jl Martorejo No 113', 'batu', '11', '65323'),
(11, 'chendra@markdesign.net', 'chendra', 'cahyadi', '5db8c3bedd41bcd1e76ae476c507ba46bd301d89', '2016-04-13 07:59:22', 0, 1, '', '03160251101', 'bawean 50', 'surabaya', '11', '60246'),
(12, 'dindacholifahputri@gmail.com', 'Dinda', 'Cholifah Putri', '5f0ad6d66d4eac4172fee264ee88ccc2b77c3840', '2016-06-16 06:34:54', 0, 1, '', '089675783665', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', 'Sidoarjo', '11', '61256'),
(13, 'ida_ida2009@yahoo.com.au', 'ida ', '', '446f71ef8621304a3610030fc4fab07f5493fbee', '2017-03-21 00:51:54', 0, 1, '', '0449781891', '54 regent st', 'chippendale', 'nsw', '');

-- --------------------------------------------------------

--
-- Table structure for table `or_order`
--

DROP TABLE IF EXISTS `or_order`;
CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_area` int(11) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `is_read` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order`
--

INSERT INTO `or_order` (`id`, `invoice_no`, `invoice_prefix`, `customer_id`, `customer_group_id`, `first_name`, `last_name`, `email`, `phone`, `payment_first_name`, `payment_last_name`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_zone`, `payment_country`, `shipping_first_name`, `shipping_last_name`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_zone`, `shipping_area`, `shipping_country`, `comment`, `tax`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `date_add`, `date_modif`, `delivery_from`, `delivery_to`, `delivery_package`, `delivery_price`, `payment_method_id`, `delivery_weight`, `token`, `tracking_id`, `is_read`) VALUES
(5, 2566, 'XD-20160328', 2, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '0.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-28 10:08:22', '2016-03-28 10:08:22', '', '', '', 0, 0, 0, '', '', 0),
(6, 6384, 'XD-20160328', 2, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '10425000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-28 10:09:40', '2016-03-28 10:09:40', '', '', '', 0, 0, 1000, '', '', 0),
(7, 4492, 'XD-20160328', 2, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'surabaya', '65323', '1', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'surabaya', '65323', '1', 0, '', '', '0.0000', '4225000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-28 10:13:39', '2016-03-28 10:13:39', '', '', '', 0, 0, 400, '', '', 0),
(8, 8207, 'XD-20160328', 2, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '5100000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-28 10:16:27', '2016-03-28 10:16:27', '', '', '', 0, 0, 400, '', '', 0),
(9, 2869, 'XD-20160328', 2, 0, 'sales', 'dv', 'deo@markdesign.net', '584651561', 'sales', 'dv', '', 'ajasdklaj', '', 'akjdsklja', 'akjsd', '11', '', 'sales', 'dv', '', 'ajasdklaj', '', 'akjdsklja', 'akjsd', '11', 0, '', '', '0.0000', '4200000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-28 13:23:41', '2016-03-28 13:23:41', '', '', '', 0, 0, 400, '', '', 0),
(10, 1650, 'XD-20160329', 2, 0, 'deory pandu putra', 'wahyu', 'deoryzpandu@gmail.com', '0854646464', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', '', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', 0, '', '', '0.0000', '10250000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-29 09:33:57', '2016-03-29 09:33:57', '', '', '', 0, 0, 800, '', '', 0),
(11, 1393, 'XD-20160329', 2, 0, 'deory pandu putra', 'wahyu', 'deoryzpandu@gmail.com', '0854646464', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', '', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', 0, '', '', '0.0000', '5150000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-29 09:42:33', '2016-03-29 09:42:33', '', '', '', 0, 0, 800, '', '', 0),
(12, 5285, 'XD-20160329', 2, 0, 'deory pandu putra', 'wahyu', 'deoryzpandu@gmail.com', '0854646464', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', '', 'deory pandu putra', 'wahyu', '', 'jl test test', '', 'batu', '65656', '11', 0, '', 'Your order is being sent', '0.0000', '4650000.0000', 3, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-03-29 09:51:02', '2016-03-29 09:51:02', '', '', '', 0, 0, 800, '', 'SUBGQ00017226516', 0),
(13, 8150, 'XD-20160413', 11, 0, 'chendra', 'cahyadi', 'chendra@markdesign.net', '03160251101', 'chendra', 'cahyadi', '', 'bawean 50', '', 'surabaya', '60246', '11', '', 'chendra', 'cahyadi', '', 'bawean 50', '', 'surabaya', '60246', '11', 0, '', '', '0.0000', '4900000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-04-13 15:00:08', '2016-04-13 15:00:08', '', '', '', 0, 0, 1000, '', '', 0),
(14, 2930, 'LN-20160616', 0, 0, 'Dinda', 'Cholifah Putri', 'dindacholifahputri@gmail.com', '089675783665', 'Dinda', 'Cholifah Putri', '', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', '', 'Sidoarjo', '61256', '11', '', 'Dinda', 'Cholifah Putri', '', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', '', 'Sidoarjo', '61256', '11', 0, '', '', '0.0000', '2625000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-06-16 13:34:54', '2016-06-16 13:34:54', '', '', '', 0, 0, 400, '', '', 0),
(15, 3172, 'LN-20160616', 12, 0, 'Dinda', 'Cholifah Putri', 'dindacholifahputri@gmail.com', '089675783665', 'Dinda', 'Cholifah Putri', '', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', '', 'Sidoarjo', '61256', '11', '', 'Dinda', 'Cholifah Putri', '', 'Jl.Brigjen Katamso gg.Anggrek 2 No.27', '', 'Sidoarjo', '61256', '11', 0, '', 'Your order is being sent', '0.0000', '2650000.0000', 3, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-06-16 13:37:15', '2016-06-16 13:37:15', '', '', '', 0, 0, 600, '', 'MYBOO00220879516', 0),
(16, 7578, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '1400000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:32:03', '2016-07-23 13:32:03', '', '', '', 0, 0, 0, '', '', 0),
(17, 1138, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '577500.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:32:54', '2016-07-23 13:32:54', '', '', '', 0, 0, 0, '', '', 0),
(18, 2204, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '7000000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:33:11', '2016-07-23 13:33:11', '', '', '', 0, 0, 0, '', '', 0),
(19, 5346, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '8400000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:33:31', '2016-07-23 13:33:31', '', '', '', 0, 0, 0, '', '', 0),
(20, 6327, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '23725000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:33:48', '2016-07-23 13:33:48', '', '', '', 0, 0, 13000, '', '', 0),
(21, 8129, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '35100000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:34:07', '2016-07-23 13:34:07', '', '', '', 0, 0, 6000, '', '', 0),
(22, 1715, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '9800000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:34:19', '2016-07-23 13:34:19', '', '', '', 0, 0, 3000, '', '', 0),
(23, 8880, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '13720000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:34:30', '2016-07-23 13:34:30', '', '', '', 0, 0, 4200, '', '', 0),
(24, 2001, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '6120000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:35:09', '2016-07-23 13:35:09', '', '', '', 0, 0, 3000, '', '', 0),
(25, 6959, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '6930000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:35:23', '2016-07-23 13:35:23', '', '', '', 0, 0, 0, '', '', 0),
(26, 1454, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '2887500.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:36:10', '2016-07-23 13:36:10', '', '', '', 0, 0, 0, '', '', 0),
(27, 2754, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '7840000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:36:47', '2016-07-23 13:36:47', '', '', '', 0, 0, 2400, '', '', 0),
(28, 6832, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '44100000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:37:14', '2016-07-23 13:37:14', '', '', '', 0, 0, 9000, '', '', 0),
(29, 1860, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '2125000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:44:54', '2016-07-23 13:44:54', '', '', '', 0, 0, 0, '', '', 0),
(30, 7080, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '1425000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:50:25', '2016-07-23 13:50:25', '', '', '', 0, 0, 0, '', '', 0),
(31, 2504, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '1880000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:50:37', '2016-07-23 13:50:37', '', '', '', 0, 0, 0, '', '', 0),
(32, 8877, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '1965000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:50:57', '2016-07-23 13:50:57', '', '', '', 0, 0, 0, '', '', 0),
(33, 1586, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '12750000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:51:11', '2016-07-23 13:51:11', '', '', '', 0, 0, 0, '', '', 0),
(34, 6842, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '13500000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:51:33', '2016-07-23 13:51:33', '', '', '', 0, 0, 3000, '', '', 0),
(35, 4385, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '12240000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:51:44', '2016-07-23 13:51:44', '', '', '', 0, 0, 6000, '', '', 0),
(36, 7167, 'LN-20160723', 5, 0, 'deory pandu putra', 'wahyu', 'ibnu@markdesign.net', '085646765265', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', '', 'deory pandu putra', 'wahyu', '', 'Jl Martorejo No 113', '', 'Batu', '65323', '11', 0, '', '', '0.0000', '9800000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-07-23 13:51:54', '2016-07-23 13:51:54', '', '', '', 0, 0, 2000, '', '', 0),
(37, 3007, 'PP-20161018', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deory', 'Testing', 'na', 'jl martorejo', '', 'kota', '65323', '6', 0, '', 'test', '0.0000', '25000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2016-10-18 13:27:04', '2016-10-18 13:27:04', '', '', '', 0, 0, 0, '', '', 0),
(38, 5364, 'PP-20170131', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '', '11', 0, '', '', '0.0000', '1197000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-01-31 16:29:47', '2017-01-31 16:29:47', '', '', '', 0, 0, 3000, '', '', 0),
(39, 7564, 'PP-20170131', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '', '11', 0, '', '', '0.0000', '798000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-01-31 16:30:21', '2017-01-31 16:30:21', '', '', '', 0, 0, 2000, '', '', 0),
(40, 5219, 'VT-20170131', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '', '11', 0, '', '', '0.0000', '399000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-01-31 17:29:01', '2017-01-31 17:29:01', '', '', '', 5000, 0, 1000, '', '', 0),
(41, 3777, 'VT-20170131', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '', '11', 0, '', '', '0.0000', '399000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-01-31 17:29:09', '2017-01-31 17:29:09', '', '', '', 5000, 0, 1000, '', '', 0),
(42, 3020, 'VT-20170210', 0, 0, '', '', 'deo@markdesign.net', '48484984', '', '', '', '', '', '', '', '', '', 'deory', '', '', 'test', '', 'kota', '', 'au', 0, '', '', '0.0000', '13.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-02-10 13:58:39', '2017-02-10 13:58:39', '', '', '', 0, 0, 1200, '', '', 0),
(43, 6987, 'SU-20170216', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '24.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-02-16 15:17:42', '2017-02-16 15:17:42', '', '', '', 0, 0, 600, '', '', 0),
(44, 9303, 'SU-20170216', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '12.5000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-02-16 15:21:50', '2017-02-16 15:21:50', '', '', '', 0, 0, 600, '', '', 0),
(45, 6093, 'SU-20170216', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '7.2300', 17, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-02-16 16:04:17', '2017-02-16 16:04:17', '', '', '', 0, 0, 600, 'EC-5CH67627M51988226', '', 1),
(46, 5560, 'SU-20170224', 0, 0, '', '', 'chendra@markdesign.net', '03160251101', '', '', '', '', '', '', '', '', '', 'chendra', '', '', 'bawean 50', '', 'surabaya', '60246', '11', 0, '', '', '0.0000', '107.7200', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-02-24 08:45:04', '2017-02-24 08:45:04', '', '', '', 0, 0, 9000, '', '', 0),
(47, 7384, 'SU-20170405', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '7.2300', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-04-05 15:30:36', '2017-04-05 15:30:36', '', '', '', 0, 0, 600, '', '', 1),
(48, 6194, 'SU-20170406', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '7.2300', 2, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-04-06 10:03:29', '2017-04-06 10:03:29', '', '', '', 0, 0, 600, 'EC-00227947CP109072V', '', 1),
(49, 6219, 'AD-20170711', 0, 0, '', '', 'deo@markdesign.net', '085646765265', '', '', '', '', '', '', '', '', '', 'deoryzzz', '', '', 'Jl Martorejo No 113', '', '444', '65323', '11', 0, '', '', '0.0000', '700000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '2017-07-11 11:26:38', '2017-07-11 11:26:38', '', '', '', 0, 0, 8000, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `or_order_history`
--

DROP TABLE IF EXISTS `or_order_history`;
CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order_history`
--

INSERT INTO `or_order_history` (`id`, `member_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_add`) VALUES
(3, 2, 3, 1, 0, 'Your order DV-20150618-5342 successfully placed with status "Pending"', '2015-06-18 09:01:43'),
(4, 2, 4, 1, 0, 'Your order DV-20150618-8189 successfully placed with status "Pending"', '2015-06-18 09:02:25'),
(5, 0, 48, 7, 0, 'Payment no SU-20170406-6194 canceled', '2017-04-06 13:50:44'),
(6, 0, 45, 7, 0, 'Payment no SU-20170216-6093 canceled', '2017-04-06 13:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `or_order_product`
--

DROP TABLE IF EXISTS `or_order_product`;
CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order_product`
--

INSERT INTO `or_order_product` (`id`, `order_id`, `product_id`, `image`, `name`, `kode`, `qty`, `price`, `total`, `attributes_id`, `attributes_name`, `attributes_price`, `berat`, `data`) VALUES
(7, 7, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 1, '2100000.0000', '2125000.0000', 11, 'N/A', '2100000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(5, 6, 1, '0544e-1796016_10151929532400940_218227938_o.jpg', 'Alma S25', 'Alma S25', 1, '2650000.0000', '2650000.0000', 2, 'leather', '2650000.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(6, 6, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 1, '2550000.0000', '2575000.0000', 12, 'leather', '2550000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(8, 8, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 1, '2550000.0000', '2550000.0000', 12, 'leather', '2550000.0000', 400, 'a:3:{s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(9, 9, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 1, '2100000.0000', '2100000.0000', 0, '', '0.0000', 400, 'a:3:{s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(10, 10, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 2, '2550000.0000', '5150000.0000', 12, 'leather', '2550000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(11, 11, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 2, '2550000.0000', '5150000.0000', 12, 'leather', '2550000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(12, 12, 2, '9b238-1796016_10151929532400940_218227938_o.jpg', 'Alma S25 PB', 'Alma S25 PB', 2, '2300000.0000', '4650000.0000', 15, 'full batik, leather', '2300000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(13, 13, 3, '78429-1796016_10151929532400940_218227938_o.jpg', 'Alma M31', 'Alma M31', 2, '2450000.0000', '4900000.0000', 0, '', '0.0000', 500, 'a:3:{s:5:"berat";s:3:"500";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(14, 14, 2, 'd2c88-lms-corra.jpg', 'Alma S25 PB', 'Alma S25 PB', 1, '2600000.0000', '2625000.0000', 14, 'anyam+batik, leather', '2600000.0000', 400, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"400";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(15, 15, 1, '5539a-variasi-2.jpg', 'Alma S25', 'Alma S25', 1, '2650000.0000', '2650000.0000', 2, 'leather', '2650000.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(16, 16, 7, '16f41-2.JPG', 'ALICIA Flame Orange', 'ALICIA Flame Orange', 1, '1400000.0000', '1400000.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(17, 17, 5, 'af0f5-3.JPG', 'ANGELETTE', 'ANGELETTE', 1, '577500.0000', '577500.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(18, 18, 6, '7e6b6-6.JPG', 'CORRA', 'CORRA', 4, '1750000.0000', '7000000.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(19, 19, 7, '16f41-2.JPG', 'ALICIA Flame Orange', 'ALICIA Flame Orange', 6, '1400000.0000', '8400000.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(20, 20, 2, '0482b-5.png', 'Lorraine L Velvet Violet', 'Lorraine L Velvet Violet', 13, '1800000.0000', '23725000.0000', 11, 'Full anyam (pb)', '1800000.0000', 1000, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(21, 21, 3, '5e53c-2.png', 'Cordelia M Flame Orange', 'Cordelia M Flame Orange', 12, '2900000.0000', '35100000.0000', 22, 'leather', '2900000.0000', 500, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:3:"500";s:11:"category_id";s:1:"2";s:13:"category_name";s:7:"Wallets";}'),
(22, 22, 1, '5193c-3.png', 'Noe L Forrest Green', 'Noe L Forrest Green', 5, '1960000.0000', '9800000.0000', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(23, 23, 1, '5193c-3.png', 'Noe L Forrest Green', 'Noe L Forrest Green', 7, '1960000.0000', '13720000.0000', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(24, 24, 2, '0482b-5.png', 'Lorraine L Velvet Violet', 'Lorraine L Velvet Violet', 3, '2040000.0000', '6120000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(25, 25, 5, 'af0f5-3.JPG', 'ANGELETTE', 'ANGELETTE', 12, '577500.0000', '6930000.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(26, 26, 5, 'af0f5-3.JPG', 'ANGELETTE', 'ANGELETTE', 5, '577500.0000', '2887500.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(27, 27, 1, '5193c-3.png', 'Noe L Forrest Green', 'Noe L Forrest Green', 4, '1960000.0000', '7840000.0000', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(28, 28, 3, '5e53c-2.png', 'Cordelia M Flame Orange', 'Cordelia M Flame Orange', 18, '2450000.0000', '44100000.0000', 0, '', '0.0000', 500, 'a:3:{s:5:"berat";s:3:"500";s:11:"category_id";s:1:"2";s:13:"category_name";s:7:"Wallets";}'),
(29, 29, 4, 'e61f4-1454700_608582625936684_2271257288262980968_n.jpg', 'BRIGITTE', 'BRIGITTE', 1, '2100000.0000', '2125000.0000', 105, 'ANYAM BESAR size L', '2100000.0000', 0, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(30, 30, 7, '16f41-2.JPG', 'ALICIA Flame Orange', 'ALICIA Flame Orange', 1, '1400000.0000', '1425000.0000', 127, 'ANYAM BESAR size L', '1400000.0000', 0, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(31, 31, 6, '7e6b6-6.JPG', 'CORRA', 'CORRA', 1, '1855000.0000', '1880000.0000', 119, 'ANYAM KECIL size M', '1855000.0000', 0, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(32, 32, 5, 'af0f5-3.JPG', 'ANGELETTE', 'ANGELETTE', 3, '630000.0000', '1965000.0000', 114, 'ANYAM KECIL size L', '630000.0000', 0, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(33, 33, 4, 'e61f4-1454700_608582625936684_2271257288262980968_n.jpg', 'BRIGITTE', 'BRIGITTE', 6, '2100000.0000', '12750000.0000', 105, 'ANYAM BESAR size L', '2100000.0000', 0, 'a:4:{s:3:"box";s:5:"25000";s:5:"berat";s:1:"0";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(34, 34, 1, '5193c-3.png', 'Noe L Forrest Green', 'Noe L Forrest Green', 5, '2700000.0000', '13500000.0000', 4, 'anyam+batik, leather', '2700000.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(35, 35, 2, '0482b-5.png', 'Lorraine L Velvet Violet', 'Lorraine L Velvet Violet', 6, '2040000.0000', '12240000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"1";s:13:"category_name";s:4:"Bags";}'),
(36, 36, 3, '5e53c-2.png', 'Cordelia M Flame Orange', 'Cordelia M Flame Orange', 4, '2450000.0000', '9800000.0000', 0, '', '0.0000', 500, 'a:3:{s:5:"berat";s:3:"500";s:11:"category_id";s:1:"2";s:13:"category_name";s:7:"Wallets";}'),
(37, 37, 2, '620d9-Untitled-2.jpg', 'Baskom Panjang', 'P0002', 1, '25000.0000', '25000.0000', 0, '', '0.0000', 0, 'a:3:{s:5:"berat";s:1:"0";s:11:"category_id";s:1:"7";s:13:"category_name";s:19:"Wash Basin / Baskom";}'),
(38, 38, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 3, '399000.0000', '1197000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(39, 39, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 2, '399000.0000', '798000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(40, 0, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(41, 0, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(42, 0, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(43, 0, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(44, 0, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(45, 40, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(46, 41, 1, '45020-babylonish_pliko-ride-on-happy-car-red-mainan-anak_full01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'P00015', 1, '399000.0000', '399000.0000', 0, '', '0.0000', 1000, 'a:3:{s:5:"berat";s:4:"1000";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(47, 42, 1, '8c6b5-big_product_stumble.jpg', 'Ipsum dolor', 'P00015', 2, '6.5000', '13.0000', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(48, 43, 1, '8c6b5-big_product_stumble.jpg', 'Ipsum dolor', 'P00015', 1, '24.0000', '24.0000', 3, '2000 Gram', '24.0000', 600, 'a:4:{s:5:"grind";s:6:"Chemex";s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(49, 44, 1, '8c6b5-big_product_stumble.jpg', 'Ipsum dolor', 'P00015', 1, '12.5000', '12.5000', 2, '1000 Gram', '12.5000', 600, 'a:4:{s:5:"grind";s:16:"Espresso machine";s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(50, 45, 2, '079ad-big_product_stumble.jpg', 'GUATEMALA', 'P00015', 1, '7.2300', '7.2300', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(51, 46, 2, '079ad-big_product_stumble.jpg', 'GUATEMALA', 'P00015', 14, '7.2300', '101.2200', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(52, 46, 1, '8c6b5-big_product_stumble.jpg', 'Ipsum dolor', 'P00015', 1, '6.5000', '6.5000', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(53, 47, 2, '079ad-big_product_stumble.jpg', 'GUATEMALA', 'P00015', 1, '7.2300', '7.2300', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(54, 48, 2, '079ad-big_product_stumble.jpg', 'GUATEMALA', 'P00015', 1, '7.2300', '7.2300', 0, '', '0.0000', 600, 'a:3:{s:5:"berat";s:3:"600";s:11:"category_id";s:1:"0";s:13:"category_name";N;}'),
(55, 49, 2, '71c8d-ex_pic_bigProduct.jpg', 'Aldo Genset ET-1200', 'ET-1200', 1, '200000.0000', '200000.0000', 0, '', '0.0000', 6000, 'a:3:{s:5:"berat";s:4:"6000";s:11:"category_id";s:2:"11";s:13:"category_name";s:11:"Kelistrikan";}'),
(56, 49, 3, 'f5cc0-ex_pic_bigProduct.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', 'lorem1', 1, '500000.0000', '500000.0000', 0, '', '0.0000', 2000, 'a:3:{s:5:"berat";s:4:"2000";s:11:"category_id";s:2:"11";s:13:"category_name";s:11:"Kelistrikan";}');

-- --------------------------------------------------------

--
-- Table structure for table `or_order_status`
--

DROP TABLE IF EXISTS `or_order_status`;
CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `or_order_status`
--

INSERT INTO `or_order_status` (`order_status_id`, `name`) VALUES
(2, 'Processing'),
(3, 'Shipped'),
(7, 'Canceled'),
(5, 'Complete'),
(8, 'Denied'),
(9, 'Canceled Reversal'),
(10, 'Failed'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(1, 'Pending'),
(16, 'Voided'),
(15, 'Processed'),
(14, 'Expired'),
(17, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

DROP TABLE IF EXISTS `pdf`;
CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `size` decimal(10,3) NOT NULL,
  `sort` int(11) NOT NULL,
  `date_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`id`, `category_id`, `nama`, `image`, `file`, `size`, `sort`, `date_input`) VALUES
(5, 0, 'Coba PDF', 'ef25b-per.jpg', 'Doc1 - Copy2.pdf', '78306.000', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pg_bank`
--

DROP TABLE IF EXISTS `pg_bank`;
CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_bank`
--

INSERT INTO `pg_bank` (`id`, `id_bank`, `nama`, `rekening`) VALUES
(1, 2, 'test nama bank', 2147483647),
(2, 4, 'test nama', 928374837);

-- --------------------------------------------------------

--
-- Table structure for table `pg_blog`
--

DROP TABLE IF EXISTS `pg_blog`;
CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`) VALUES
(1, 0, '956cf-104025_00_2x.jpg', 1, '2016-10-18 14:18:20', '2017-07-11 10:37:53', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(2, 0, '2c452-HOW-TO-MAKE-THE-PERFECT-FLATLAY-5-1.png', 1, '2016-10-18 14:19:39', '2017-07-11 10:37:44', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(3, 0, 'cb987-dd1f92d595c2249421efe9b764c1b989--instagram-tips-instagram-feed.jpg', 1, '2016-10-18 14:20:39', '2017-07-11 10:37:38', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(4, 0, '20fe7-ae86f2_e87a035b7b3f4610b58039ecc9652979~mv2.jpg', 1, '2016-10-18 14:22:08', '2017-07-11 10:37:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(5, 0, '17b90-1.jpg', 1, '2016-10-18 14:22:36', '2017-07-11 10:37:27', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(8, 0, '20fe7-ae86f2_e87a035b7b3f4610b58039ecc9652979~mv2.jpg', 1, '2016-10-18 14:22:08', '2017-07-11 10:37:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(7, 0, 'fcdf2-973d336054ded51d69232600fe2bf71b--flat-lay-minimal-flatlay.jpg', 1, '2016-10-18 14:23:00', '2017-07-11 10:38:04', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(9, 0, '20fe7-ae86f2_e87a035b7b3f4610b58039ecc9652979~mv2.jpg', 1, '2016-10-18 14:22:08', '2017-07-11 10:37:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(10, 0, '956cf-104025_00_2x.jpg', 1, '2016-10-18 14:18:20', '2017-07-11 10:37:53', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(11, 0, 'cb987-dd1f92d595c2249421efe9b764c1b989--instagram-tips-instagram-feed.jpg', 1, '2016-10-18 14:20:39', '2017-07-11 10:37:38', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(12, 0, '2c452-HOW-TO-MAKE-THE-PERFECT-FLATLAY-5-1.png', 1, '2016-10-18 14:19:39', '2017-07-11 10:37:44', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(13, 0, '20fe7-ae86f2_e87a035b7b3f4610b58039ecc9652979~mv2.jpg', 1, '2016-10-18 14:22:08', '2017-07-11 10:37:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(14, 0, '20fe7-ae86f2_e87a035b7b3f4610b58039ecc9652979~mv2.jpg', 1, '2016-10-18 14:22:08', '2017-07-11 10:37:33', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0),
(15, 0, '956cf-104025_00_2x.jpg', 1, '2016-10-18 14:18:20', '2017-07-11 10:37:53', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pg_blog_description`
--

DROP TABLE IF EXISTS `pg_blog_description`;
CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `quote` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(23, 1, 2, ' Cek Kode Bahan Plastik Berbahaya Pada Peralatan Rumah Tangga Anda, Sebelum Cemari Makanan!', '<p>\r\n	  Plastik menjadi bahan yang paling banyak  digunakan oleh sebagian produsen dalam mengemas makanan hingga sebagai  perabotan rumah tangga seperti barang elektronik dan peralatan  makan/minum. Padahal kita tahu bahwa plastik tidak bisa terurai dalam  waktu yang singkat melainkan butuh waktu hingga puluhan tahun agar ia  bisa menyatu kembali dengan tanah. Di dalam penggunannya, ada beberapa  hal yang perlu diketahui oleh semua masyarakat mengenai penggunaan  perabotan berbahan plastik ini. Bahan kimia yang terkandung dalam  plastik ternyata dapat bocor atau terlarut ketika bersentuhan dengan  makanan atau minuman yang ditempatinya.\r\n</p>\r\n<p>\r\n	  Wadah makanan dari bahan plastik yang  disarankan dan aman untuk digunakan adalah yang memiliki kode recycle.  Nomor yang tertera pada kode recycle tersebut menunjukkan jenis bahan  plastik yang digunakan dan menunjukkan tingkat potensi bahayanya  terhadap kesehatan. Akibat yang terpapar dari peralatan yang berbahan  plastik memang tidak akan terasa dalam jangka pendek, namun pengaruhnya  baru akan terasa dalam jangka panjang nanti. Pengetahuan ini sekaligus  menjadi <em>warning</em> bagi kita semua bahwa tidak ada produk plastik  yang benar-benar aman pada semua kondisi (terutama saat digunakan untuk  makanan panas). Berikut ini adalah penjelasan mengenai kode recycle pada  bahan plastik:\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg"><img alt="recycle 1" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #1</strong>,  menggunakan bahan PETE/PET (Polythylene Terephalate). Biasanya digunakan  untuk botol plastik transparan seperti botol air kemasan, botol jus dan  sebagainya. Botol dengan bahan plastik berkode #1 ini dianjurkan hanya  untuk sekali pakai saja dan tidak boleh digunakan untuk air hangat  apalagi air panas. Sebaiknya, buang botol-botol yang sudah lama atau  kusam.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg"><img alt="recycle 2" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #2</strong>,  menggunakan bahan HIDPE (High Density Polyethylene) yang biasa digunakan  untuk botol atau kemasan yang berwarna putih susu, seperti pada kemasan  susu cair. Botol dengan bahan inipun sebaiknya hanya digunakan sekali  pakai saja.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg"><img alt="recycle 3" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg" width="339" height="429"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #3</strong>,  menggunakan bahan V (Vinyl) / PVC (Polyvinyl Chloride) yang sangat sulit  untuk didaur ulang. Jenis plastik ini biasanya ditemukan pada plastik  pembungkus (wrap) dan juga botol-botol minuman. Kandungan PVC yaitu DEHA  yang ada pada plastik dapat bocor dan masuk ke dalam makanan berminyak  apabila dipanaskan. PVC juga sangat berbahaya untuk organ dalam terutama  ginjal dan hati.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg"><img alt="recycle 4" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg" width="319" height="421"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #4</strong>,  menggunakan bahan LDPE (Lpw Density Polyethylene) yang biasanya  digunakan pada plastik yang lembek. Plastik dengan bahan ini dapat  didaur ulang dan baik untuk barang yang memerlukan kelenturan tapi tetap  kuat, dan juga baik untuk tempat makanan.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg"><img alt="recycle 5" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #5</strong>,  menggunakan bahan PP (Polypropylene) dan bisa menjadi pilihan terbaik  untuk tempat atau kemasan makanan dan minuman terutama botol minum bayi.  Peralatan yang mengandung bahan ini cenderung memiliki karakteristik  botol yang transparan tetapi tidak bening (berawan).\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg"><img alt="recycle 6" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg" width="320" height="408"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #6</strong>,  menggunakan bahan PS (Polystyrene) yang biasa dipakai pada tempat  makanan dari Styrofoam, tempat minum sekali pakai dan lain-lain. Bahan  ini bisa membocorkan bahan styrene ke dalam makanan ketika bersentuhan.  Polysterene sangat berbahaya bagi otak dan sistem syaraf, sedangkan  styrene dapat juga dijumpai pada asap rokok, asap kendaraan dan bahan  konstruksi gedung. Tempat makanan dengan bahan berkode ini harus sangat  dihindari, bahkan di beberapa Negara maju pemakaian bahan styrene sudah  dilarang termasuk salah satunya Cina.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg"><img alt="recycle 7" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg" width="320" height="407"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #7</strong>,  menggunakan bahan lain / Others atau Polycarbonate / PC. Bahan ini  sering ditemukan pada tempat makanan dan minuman olahraga, bahan ini  dapat mengeluarkan bahan utamanya yakni Bisphenol-A ke dalam makanan dan  minuman yang berpotensi merusak sistem hormon. Jadi, sebaiknya hindari  alat-alat berbahan polycarbonate.\r\n</p>\r\n<p>\r\n	  Itulah beberapa kode recycle pada  plastik yang mesti diketahui untuk lebih waspada dan menghindari  berbagai penyakit yang ditimbukan olehnya. Meskipun demikian, di luaran  masih banyak produk plastik yang tidak mencantumkan kode recycle  sehingga cukup sulit untuk diketahui masuk ke dalam kode yang mana  produk tersebut. Namun, untuk berjaga-jaga sebaiknya memang kita  menghindari penggunaan alat-alat berbahan plastik apapun karena  kesehatan lebih berharga dari apapun. Lebih baik gunakan peralatan  berbahan dasar keramik, gelas atau pyrex.\r\n</p>', ''),
(21, 3, 2, 'WASPADAI BAHAYA MELAMIN, STYROFOAM, BOTOL PLASTIK DI RUMAH', '<p>\r\n	 Beberapa waktu ke belakang dan sampai saat ini isu mengenai beberapa  bahan pembuat peralatan rumah tangga yang mengandung bahan berbahaya  banyak dibahas dan menjadi topik yang cukup hangat di berbagai media  masa, hal itu sangatlah mengejutkan karena selama ini banyak orang yang  tidak tahu dan masih memakai bahan tersebut untuk keperluan sehari-jari  karena ketidak tahuan.\r\n</p>\r\n<p>\r\n	 Pada pos kali ini Saya hanya akan menyoroti tiga bahasan yaitu: melamin,  styrofoam, dan botol plastik bekas. Untuk lebih jelasnya mari kita  bahas satu persatu.\r\n</p>\r\n<p>\r\n	 <br />\r\n	 <u><strong>Melamin</strong></u>\r\n</p>\r\n<p>\r\n	 Adalah zat organik dengan rumus kimia C3H6N6 atau disebut juga dengan nama IUPAC 1,3,5-Triazine-2,6-triazine, berbentuk <a href="http://perawatanrtdonto.blogspot.com/2014/03/tips-membersihkan-lampu-kristal.html">kristal</a> putih yang sulit larut di dalam air.\r\n</p>\r\n<p>\r\n	 Melamin dikenalkan di Indonesia sekitar tahun 1970an, melamin ini banyak  sekali digunakan sebagai bahan pembuat plastik, lem, dan pupuk.\r\n</p>\r\n<p>\r\n	 <strong><em>Kelebihan melamin:</em></strong>\r\n</p>\r\n<ul>\r\n	<li>Ringan,</li>\r\n	<li>Tidak mudah pecah,</li>\r\n	<li>Praktis untuk dapat dibawa ke mana-mana.</li>\r\n	<li>Dapat dibentuk menjadi benda yang bermacam-macam dan indah.</li>\r\n</ul>\r\n<p>\r\n	 Melamin dibentuk dari gabungan <em>Formaldehide </em>dan <em>Fenol,</em> campuran antara keduanya yang tidak seimbang akan menghasilkan residu (Fenol yang tidak bersenyawa dengan sempurna)\r\n</p>\r\n<p>\r\n	 <strong><em>Larangan pemakaian melamin: </em></strong>\r\n</p>\r\n<ul>\r\n	<li>Senyawa melamin sangat rentan terhadap suhu panas dan sinar ultraviolet</li>\r\n	<li>Tidak boleh digunakan untuk Oven microwave.</li>\r\n	<li>gesekan pada peralatan rumah tangga yang terbuat dari bahan melamin  dapat mengakibatkan tersepasnya residu (formaldehide yang ada  sebelumnya)</li>\r\n	<li>Formaldehide (formalin) adalah salah satu bahan desinfektan yang juga biasa dipakai untuk keperluan pengawetan mayat.</li>\r\n</ul>\r\n<p>\r\n	 <em><strong>Bahaya melamin bagi tubuh: </strong></em>\r\n</p>\r\n<ul>\r\n	<li>Menggangu fungsi sel dan dapat mengakibatkan kematian</li>\r\n	<li>gangguan metabolisme pada ginjal, terutama pada bayi dan anak-anak.</li>\r\n	<li>Merusak saluran pencernaan sehingga dapat menyebabkan gangguan pada proses pengeluaran kotoran.</li>\r\n	<li>menyebabkan kerusakan pada fungsi hati, mata, ginjal, dan telinga.</li>\r\n	<li>Dapat merusak sistem imunitas pada bayi dan anak-anak yang mengkonsumsi.</li>\r\n	<li>Mudahnya tubuh terserang firus flu atau infeksi..</li>\r\n</ul>\r\n<p>\r\n	 <em>Sumber:http://www.alchemist.blogspot,com</em>\r\n</p>\r\n<p>\r\n	 <u><strong>Styrofoam</strong></u>\r\n</p>\r\n<p>\r\n	  Banyak sekali penggunaan bahan ini pada kehidupan kita sehari-hari  diantaranya digunakan untuk bahan dasar pembuat huruf untuk dekorasi dan  sebagai tempat/wadah makanan atau minuman. Yang berbahaya adalah bila  kita menggunakan bahan ini untuk tempat makanan atau minuman, karena  styrofoam mengandung zat berbahaya yaitu; <em>Benzen, Carsinogen, </em>dan<em> Styrene</em>.  Ketiga zat tersebut akan bereaksi dengan bahan makanan atau air panas  sehingga akan terlepas dan masuk ke dalam tubuh kita bersama makanan  atau minuman dan akibatnya terjadi kerusakan pada tubuh kita seperti:\r\n</p>\r\n<ul>\r\n	<li>Kerusanakn pada sumsum tulang belakang</li>\r\n	<li>Menyebabkan anemia</li>\r\n	<li>mengurangi pembentukan sel darah merah</li>\r\n</ul>\r\n<p>\r\n	 Kandungan ketiga zat yang ada di dalam styrofoam yang masuk ke dalam  tubuh akan sulit terurai atau terbuang dari tubuh baik  itu lewat  keringat, air seni, ataupun kotoran. Dapat dibayangkan apabila kita  sering memakai peralatan makan berbahan styrofoam ini maka semakin  bertumpuklah kadar  zat berbahaya tersebut di dalam tubuh kita.\r\n</p>\r\n<p>\r\n	 Lembaga-lembaga dunia yang peduli terhadap  kesehatan seperti International For Research on center, WHO (World  Healty Organization), dan EPA (Enviromental Protection Agency) telah  jelas menyatakan bahwa  Styrofoam adalah bahan karsinogen yang berbahaya  karena merupakan bahan penyebab kangker.\r\n</p>\r\n<p>\r\n	 <br />\r\n	 <u><strong>Bahaya botol minuman</strong></u>\r\n</p>\r\n<p>\r\n	 Saya tidak menyangka bahwa botol plastik bekas dari minuman dapat berbahaya  bagi kesehatan, setelah Saya baca dari beberapa keterangan  ternyata  memang benar, hal tersebut ternyata sudah dijelaskan pada kode atau  gambar yang tertera di bawah botol plastik kemasan tersebut.\r\n</p>\r\n<p>\r\n	 Kode tersebut berbentuk logo daur ulang berbentuk segitiga yang di  tengahnya terdapat angka dan di bagian bawahnya terdapat keterangan  tentang bahan pembuatnya. Simbol tersebut dikeluarkan oleh The Society  of Plastic Industry sejak tahun 1988 di AS dan telah dipakai oleh  berbagai lembaga pengembang sistem kode seperti ISO (International  Organization for Standardization).\r\n</p>\r\n<p>\r\n	 Saya ambil contoh satu logo pada jenis botol bening yang biasa dipakai  untuk air mineral yaitu logo daur ulang dengan angka "1" di tengah dan  di bawah logo tersebut terdapat tulisan <em>PET (Polyethylene Terephthalate)</em>,  artinya bahwa botol ini hanya dapat dipakai sekali, bila dipakai  berulang misalnya untuk air hangat atau air panas maka bahan polimernya  akan mengeluarkan zat karsinogenik yaitu zat pemicu kangker. Untuk  keterangan yang lengkap mengenai logo-logo yang terdapat pada botol  plastik kemasan untuk air silahkan kunjungi <em> http://www.kurniasepta.com</em>\r\n</p>', ''),
(19, 5, 2, 'prospek industri barang plastik: dari industri peralatan rumah tangga sampai mainan anak ', '<p>\r\n	    Prospek industri berbasis plastik memang masih menjanjikan di  Indonesia. Industri apa saja sebetulnya yang mendorong pertumbuhan  sektor ini? Menurut kajian MARS Indonesia, industri peralatan rumah  tangga merupakan salah satu sektor terpenting yang menyerap produk  kemasan plastik.\r\n</p>\r\n<p>\r\n	    Permintaan lainnya berasal dari industri kemasan plastik, industri  mainan industri pipa PVC, industri komponen elektronika, industri kabel,  hingga industri kulit imitasi.\r\n</p>\r\n<p>\r\n	    Ingin mengetahui lebih dalam mengenai hal ini? baca selanjutnya  dalam artikel ini  di http://www.marsindonesia.com/articles/prospek-industri-barang-plastik-dari-industri-peralatan-rumah-tangga-sampai-mainan-anak\r\n</p>', ''),
(24, 6, 2, 'Mengenal Bahan Kimia pada Barang Plastik', '<p>\r\n	    Sahabat tipsunikibu.com, tengoklah lemari dapur Anda. Berapa banyak barang-barang <em><strong>plastik</strong></em>  di dalamnya? Tidak dapat dipungkiri bahwa saat ini plastik berperan  penting dalam kehidupan masyarakat modern. Hampir semua barang-barang  yang kita butuhkan dalam menjalankan aktivitas sehari-hari terbuat dari  plastik Perkakas rumah tangga, <a href="http://www.tipsunikibu.com/2015/10/tips-praktis-merawat-alat-alat-dapur.html">alat-alat dapur</a>, kemasan obat, perabot rumah tangga, botol susu dan alat makan bayi, mainan anak-anak, adalah beberapa di antaranya.\r\n</p>\r\n<p>\r\n	    Plastik adalah polimer (rantai karbon panjang) dari gugus karbon  penyusunnya, yang disebut dengan monomer. Satu gugus monomer plastik  terdiri dari rantai induk berupa atom karbon, dan rantai cabang berupa  atom hidrogen dan/atau unsur kimia lain, seperti klor, fluor, dan  sebagainya.\r\n</p>\r\n<h3> <em><strong>Struktur Kimia Monomer dan Polimer</strong></em></h3>\r\n<p>\r\n	    Monomer dan polimer dari suatu plastik bisa digambarkan secara skematik  dalam struktur kimia sebagai berikut (contoh untuk plastik polietilena) :\r\n</p>\r\n<div>\r\n	    H  H        H  H  H  H  H  H  H  H\r\n	<p>\r\n		     |  |      |  |  |  |  |  |  |  |\r\n	</p>\r\n	<p>\r\n		    C = C   -&gt;   ... – C – C – C – C – C – C – C – C – C\r\n	</p>\r\n	<p>\r\n		     |  |      |  |  |  |  |  |  |  |\r\n	</p>\r\n	<p>\r\n		    H  H        H  H  H  H  H  H  H  H\r\n	</p>\r\n	<div>\r\n		    Monomer Etilena   Polimer Etilena\r\n		<div>\r\n			<h3> <em><strong>Jenis Plastik dan Identifikasinya</strong></em></h3>\r\n			<div>\r\n				<div>\r\n					    Ambillah satu atau dua barang plastik di dapur Anda. Coba amati bagian  bawah dari barang plastik tersebut. Adakah kode/simbol yang terlihat?  Apakah terbaca PP, atau PET, atau bahkan simbol-simbol seperti berikut  ini:\r\n					<div>\r\n						 <img alt="" src="data:image/png;base64,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"> atau ini: <img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEIAAABaCAIAAACDsxdJAAATSklEQVR4nO1be1BV1f4/EJxz9uuc/Tj7dXiMWFeRlKBQU1R8203RQBxTSkUGMSXzgYKihY1pPx8BlY9Gi0zFx5SlNE6h5k1Nw3SMfDDjM9IYcxKEC4Wcvff6/fGFdbe8Bbp679zv7D82++y91vezvuv7Xlj0/3xCCFn+utENw0AmMgzjL5qo02A0YNHMvcfj8Xg85iedMmOD6ToBhsfj0TRN13VN00ACmqadOHEiJycnISFh3LhxsbGx06dPf/fdd7/77rva2loAo2kafAjfPnwYWj0BfwcPHoyNjVUUhSAIiqIYhqFpmqIoiqIURYmJicnPz8eCqq2t9Xg8jwQMPFZVVdXixYtdLhdJkqIoyo1IkiSCIFiWnTNnTkVFBULo0YJhGEZVVdW0adPsdrsgCIqiyLKsKAq+ARiqqqqqKoqi1WqdPHlyVVWVruu1tbUdnL39MLAy6PUWacmSJTabTRRFRVFUVcUYJElqAAbu7Xb7ihUrOsWCtROGYRhm7UQIHTp0SBRFSZKAaUVR3G43y7IkSTqdTqfTSZIkx3GAEGDwPN+lS5dz58513Ha1EwYAgFVECFVUVAwbNoymaVmW3W43wKBpOjg4eNGiRbm5uZ988kl6enqPHj0cDgcgUVVVkiSappOSkjpuhdsPA27AIWRlZVEULUkyMAcYBg4c+NNPP5ndxdmzZwcNGuRwOOAdVVV5nlcU5R//+PbhwNDr/R1CqLi4+G9/e8LhYGRZUlVFlmWn04l3i2EYhmFgW3zo0CFJkkB/FEVWFIUg7LGxMbAc7fYhHbVUmqZNnz6dIOyqKiuKJMuiLIsMw6xatarxAoMlSExMJElSliVZdrndiigKLOvYvXs3doj/Phiwxgihffv2OZ1Ol4t3uxVJcqmqTNNUVFRUeXl5k/YHIXTmzJmAgABB4GVZhE8cDnrAgAFlZWUgvXYIpP26gRC6c+dOVFQUwzCyLMmyqKqyKAqCwB04cAA8dAMkGHxaWprdbne7FVWVZVlUFImm6ZycHBBIO/hpvzQQQitWrID4QlHqdhRB2GbMSMJGrLFAAH9JSUnPnk/yPKsoEnzodDpDQ0N/+eUX81YE2J0Mw6x/CKFz584FBgZyHOd2u8EPsKyze/fuFy9ebNnswBKsW7eWJElFkcEqSJJEkuSSJUvgWxzhdz4MMx8ej+fll18mSRI7AVEU8cZobm54DgIpKyvr37+/0+mEVZBlmeO4Ll26/PjjjwDg999/X7p06ZYtW9piix8YBqzTzp07WZYFuwlMUBQ1atSoysrKFmY1xy8wCMdxkiS53W5wmjRNz5o1q6ys7KOPPurbt6+Xl1dubm7nwwAMN27c6NOnj8PhUOvJ5XKJolhQUNDylNj3g0Cqqqqef/55mqZxxCWKYpcuXQYPHsxxnI+PT1RUFETBnQwDxJ2RkUEQBAAAURAEMWfOnFbnw6qFk5OCggJRFEVRVBRJVWVFkSXJBW6eYZiNGze20bs/AAwQRWFhYUBAgCAIOAR0Op0hISHXrl0DI9vqIObREELz5s1jGAZMVr3hkjiO69mzZ0lJSefDQAjV1NTExMSQJAlywOHdpk2bYL5WowlzQIkQunbt2syZMzmOA++BYRAEkZGR0fmWChYvNzeXoii8l0Czx4wZU11dDTu+5VkBJLjFmzdvrlmzpkePHgzDKIpiloYg8EFBQRcuXEAIedrmDdsEA/bxjRs3wsPDnU4nTuIEQXC73cePH28yqmsSEmC4dOlSnz59LBaLj48PTdNOp5NlnaLokiRRliWSJFJSUrB4gQMw1e2HAQN5PJ7k5GQvLy+cu4Fmz5s3r7HoQSw49DATwKusrMzPz8/Kylq4cOGUKVOGDh0aGvpUYGAgy7I2m43juG+/rQvdEUJIMwyPZnh03dMxGJqm1dTUbNiwISQkxG63u1wuRVEcDkdYWNivv/7aQAsbs94qVVdXX79+/fTp0wcOHFi9enVWVta9e/dgda5fu657tH9d7YMBewDsD0LoypUrr732GsiBJMmPP/64MYbKysq33347NTV18eLFS5YsWXw/zZ8//5133vnjjz9aRVtcXJycnBzSI+SnH4sQQrpHMx4URmNrY57g2LFjw4cPj4mJqampQffHpAihS5cuBQQEeHl5EQQBaAkTeXl5hYeHm529WakAW0VFxdq1a4ODgwmC8PXxTU6agRAydEP3NGsGm4DR3DrV1tZWV1fDfWVlZWlpqVkU2KOdPHkyMDBQFEWoVhH3k8ViCQ8Pb+ybcYRSUFAQGRlJkqQgCBAfSJL09ddfI7PGtwoDVre0tLSoqOj48eP5+fnZ2dnz5s176aWXBg8eHBsbC/kQgDFbWOwNvvzyS57nOY7r1q1bUlLSzJkzZ9RTcnLy1KlTMzIyKisrG7MCq7Bz506CIAADFCgcDsfIkSOrqqpQ867wPhiwJUaMGNGtW7euXbuCh6YoiqZpqF4yDPPZZ581XkicGCCENm/eDJ/ExsY2t+9xzRcTPIGRp02bBt4JF7sYhlm/fj1q3hveB8MwjLKyMtiXjz32mMPhABdhdnYTJ06EWjI4MixrLKKlS5fa7XaSJGfPnt0khib5AFQw8oULFx5//HGe57FlZ1k2LCysQVLVLAy9XpVv3LiRmZkZEhIiCIIsS4oiw8XzvJ+f38mTJ1F9yQPjx98mJCSQJAmB3Z9//nn69On9+/cfO3bs9u3beCs29pX4ISxHZmYmJDOyrMiyJMsSRRELF6ZigTT4vGlLhdeVpikcI6iqIsuKzWZLS0vDw5krAGAGxo4dS9O0qqqzZ88ePXq02+3mOE6W5bCwsIyMDGwYWghbEEK//fbbs88+63Q6FUWGmosgsIoinThxAjUVgDaEgdf12rVroaGhHMeaIzZZlnme79Wrl5kbLGiE0N27d/v27cuyrKqqHMcRBAGxhiiKHMdZrdaBAwdevXoVtVY6QAjt2LGDZVlJqkvWVVWmaXLChLjaWk/jz5s1uHPnziUIwiQKSRA4iqI4jqMoasOGDej+Ygwo6MWLF4OCgliWBb0MCgoaMGBAREQEy7KgXT4+PhMmTKitrW1BGjDUvXv3xo17gaIoXD0RRcHpdOzatbvBlq6D0bjfdeTIEVj4epnKLOuIihqUkZERFBRksViGDBkCLsxscxFCR48eDQgIgOh9zJgxZ8+eLS8vv3Xr1urVq8EDiKIoCAJUgFqQBox24sQJt1sVBB4K82636nQ6+vbtC2rWUBrIlCoYhlFTUzN27Nj6yo2iKIokSU6nc+/evQih06dPT5o0iSTJffv2mTUEhisvLy8qKjp16tShQ4dg42GKj4+HmJwkyTfffLMF66mbvOGCBQtomoZMHQwXSZIrV65sAkaDWCA3N5dhGHA9UHqhKCo+Ph63IXVd37t3b1FREZas2cg0sK2YoU2bNkF2ShBEy1V0c77+888/h4aGQh0eiOf5J554AorcTUgDmCgtLY2IiICkAj5zuVz+/v6nTp3CWwhzCRYDW09o5Gma1qB7BPh37NgBjqhVGOYMDCG0ceNGWFbcGKEoKjExEX5tKA3cMbLb7QAAfChBELgKppnIvGzweXV1dWpq6tixY1944YUpU6bcuHHDjHzNmjXgCgiCWL58eau6odfremVl5ciRI6GAArU5l8vlcrm++uqrJmAghM6ePRsYGCgInCS5ZFl0uxWHwxEeHn7z5k1kCkjN05jF6vF4xo0bZ7FYSJK0Wq1QYgIqLy8fNmwYlLacTuenn37aFhh45AMHDkiS5HK5sOWkKOLvf3/un/+sC7TqYIAE4+PjKYoC66aqkiS5KIpqY90OxsrNzSVJUpIknueDg4O3bdtWXFxcWFg4adIkhmFUVaVpOjIysry8vO0wgL2kpCSzA5BlF0WRYPd1bHARQp9//jnHcVAygqoRTZOjR4+G4LzVZilsgPLy8ujoaKvVqigKy7IQ5/r7+8PmdjgcgiDs37+/ZTPV5AKdP3++a9euZnfM82zPnj3BmdbBKC8vj4qKomlGVRXwmjzPyrJ45MgR1EwU1AAD3pklJSXR0dF2u52maYZhHA4H3NhstqCgoK1bt6IWM4fmBkcIrVy5kiTtplKQbLfbQW/rLNWWLVsYhoEKmiSJiiKTJDF37lzzsrU8MW7MIoQqKio++OCDmJiY3r17d+/ePTQ0dNSoUenp6biNhg10qzUhPDVCqKysbODAAQxD4zo8y7IRERHgoCwIIfBo5lZvcHDw5cuX276DzYQ1+86dO5cvXy4tLcXnRMxMwz2Y6VZhwM7Py8sTBEEUJUVR/Pz8RFHkeR5yQ0tNTU1kZKTZVzgcjjVr1jzoDjZP2Vx1pzHae/futQwDs4EQqqqqAouHUyCSJNetW4cQsty9ezcsLIzjOJAGFNG+//779omiAYGLbNw3Qgjdvn27qKio5b2Kt59e79nS0tLA/+DuO5RJLZWVlU8//TS0qCVJghMfR48eRaYYtu0aCdRg8zQwEmD6Xnzxxfj4+DbKHIt3/vz5DMPAuZr7YGiaNnToUMh1IP2lKOqtt97CE+Cg44GQNOAACwQ7dYvFMnXq1BaiEvPnoF3l5eX9+/eHTQXSsNvt2dnZdSqekpJCEASOZ8He4/4VHhE9ODUIgcHmHDx4UFVVX1/fxMTEtoyA1Sw7O9scJkLkf/DgwToYe/bsgRwNenn+/v40TQ8aNKiwsLAdrDcm3FxGCF25ciU8PBzOis2YMaPtI2zdutXf3x/Oz2BTFBERAemHBZk63LglCS8FBQVNnDgxLS1t2bKlGe2iuXPnbt++HRYVIVRTUxMXF2ez2aCU1qdPn5SUlOTk5OTk5JlNEfw0a9as6Oho2CbAGwS8BEG8/vrrgNMCi5SXl0fTtCAI8AbgEQSeogiCsBOErR0XSdotFsvkyZPxoi5fvpyiqPqjLzLPswRhJ0kY3974Ism6XxmGEkUB7yUIz0JDQyGO1nX9X6HhnDlzrFYrPl4jy7K5e9K+iyCIhIQEkMa2bdsEQeB5vv6w0gOPhitXEP5BBgq6Z9HrM5vq6uqEhASr1Qql/06BQVHUlClTEEKVlZUjRoyw2Wz1GNozOMBgGEYQhA8//BBWB5i3YJOKEKqqqlqxYoXb7bbb7YLAQ+LRbgzQxUtISADFKCgo8PPzY1lWVd0Qgyr1h35kWYSyWlNX3QuS5OJ53mq1Pvnkk5/t3YvqTei/YOimpBkhVFhYmJiY2L17d57nSBJ0g7Dbm96+LV6ExWKZMGECtpg5OTk0TYuiqKqqIksCz5MEQRJ2irTRTV0UYSNJO0XaKYrgOWdIjx6pC1KvXL4Co5nZbrZqePXq1S+++OK9997LzMx8443M5cuXZ2Y+2LV8+fLFixfn5eXhYT0eT1JSktVmk0RJ4Pihg4esf2/9u9nZ2evW5Kz7v+zG19rVWe+sfWfd2vXv5+z/4oufr10H3gxN1zz35Z5Nd5va0ftqgcy1rNLS0sjISJIgGZJ6JXnmA4+lG5pHQ5puDmAawjCXCHBY1m5I2OWZAzOE0A8//BDUJcjXxycxYXr9azCR3vDSDaQjpCFDMwwN6bWa7tF0TTc0Q9eah9GYMKqWX2sjYVuyZcsWby/vl+NfggVu7n1DNwwd6Zpu6IauGZpH0z2aoem6R38wGH8FgaxeeeUV7FI6PuBDgKHrumEYFRUVJSUlbcxjW6aHBkOvl4nW3tOeDYZ6ODDMpcf/YBidS/+D8SjR/2A0NVZjL441uEk3376yS5NTdw4MXMKBKihU0IBX6N3AT2bSTTa3g7N3DgyE0DfffBMdHR0XFzd+/Pjx48fHxsbGxcWtWrUKd/U3btw4evRoeCE2NjYmJmby5Mnbt2+Ho1OPCoy8vDxfX1+SJEmStNlsVqvV29vb29t73Lhx8K8AKSkpFouFoiibzQYvwJ/Lli3TOxyzdRqM3bt3Q4fy/fffP3z4cH5+/oIFC0RRtNls27ZtQwgtXLjQ19e3d+/e+fn5BQUFe/bsGT9+PEVRXbt2bfVY+78VBkmSfn5+uEhXU1MzYMAAi8WSnp6OEFq0aJG3t/fw4cOxfhcVFamq6nQ6oXHzSMDYtWsXRVF+fn7QxEAI3bp165lnnvHy8nrjjTcQQqmpqd7e3qNGjcIwDh8+7HK5OI7Dp74ePozdu3fDGYv09PSNGzeuX78+Li6OoiiWZaE4uXDhQpvN9tRTT+Xk5GzYsCErK6tfv34+Pj5hYWGNTx08NBi7du3iOM7lcvn6+lrqiWGYpUuXQuVi/vz5DoeD53n8q7e3d2Bg4K5duzqecnSmNKAmP3PmzMzMzIyMjNdffx02PVBqaqrNZuvVq1daWtqyZcsyMjJWrVp15syZjlvbzoSxZ88egHH+/PnGvhxgeHl5jRgxoklP30EP2JkwwFLB2Te93hXgikRqaqqPj8+QIUPg2KtuOov1CHnxHTt2WCwWh8MBR9bNFRZg99VXX7VYLP369YNGO2b9EUpiEUJHjx6NiYmZNGlScXExuv9kBsDYvHnzc889l5aWZpZGx6fGDHRmoG60+M+HmO9OBADUaTBwSc780JxwY53W/yIYRmeQmXXzQ7MEzJ1Y/f7WZgcJQdPsv4D+H+d6dRQYWeJjAAAAAElFTkSuQmCC"> atau ini:atau lainnya?  <img alt="" src="data:image/png;base64,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">\r\n						<div>\r\n							    Sahabat tipsunikibu.com, kode/simbol tersebut menjelaskan tentang jenis  bahan, sehingga, plastik yang memiliki kode yang sama dapat  dikelompokkan bersama untuk memudahkan proses daur ulang. Tetapi fungsi  terpentingnya adalah sebagai identifikasi dari jenis polimernya, yang  mengacu secara spesifik pada monomer penyusunnya. Karena itu dikenal  berbagai jenis plastik, seperti <a href="https://id.wikipedia.org/wiki/Polietilena">polietilena</a> (dari monomer etilena), <a href="https://id.wikipedia.org/wiki/Polipropilena">polipropilena</a> (dari monomer propilena), <a href="https://id.wikipedia.org/wiki/Polistirena">polistirena</a> (dari monomer stirena), dan sebagainya.\r\n							<div>\r\n								    Jika Anda Ingin Tahu\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', ''),
(25, 8, 2, ' Cek Kode Bahan Plastik Berbahaya Pada Peralatan Rumah Tangga Anda, Sebelum Cemari Makanan!', '<p>\r\n	  Plastik menjadi bahan yang paling banyak  digunakan oleh sebagian produsen dalam mengemas makanan hingga sebagai  perabotan rumah tangga seperti barang elektronik dan peralatan  makan/minum. Padahal kita tahu bahwa plastik tidak bisa terurai dalam  waktu yang singkat melainkan butuh waktu hingga puluhan tahun agar ia  bisa menyatu kembali dengan tanah. Di dalam penggunannya, ada beberapa  hal yang perlu diketahui oleh semua masyarakat mengenai penggunaan  perabotan berbahan plastik ini. Bahan kimia yang terkandung dalam  plastik ternyata dapat bocor atau terlarut ketika bersentuhan dengan  makanan atau minuman yang ditempatinya.\r\n</p>\r\n<p>\r\n	  Wadah makanan dari bahan plastik yang  disarankan dan aman untuk digunakan adalah yang memiliki kode recycle.  Nomor yang tertera pada kode recycle tersebut menunjukkan jenis bahan  plastik yang digunakan dan menunjukkan tingkat potensi bahayanya  terhadap kesehatan. Akibat yang terpapar dari peralatan yang berbahan  plastik memang tidak akan terasa dalam jangka pendek, namun pengaruhnya  baru akan terasa dalam jangka panjang nanti. Pengetahuan ini sekaligus  menjadi <em>warning</em> bagi kita semua bahwa tidak ada produk plastik  yang benar-benar aman pada semua kondisi (terutama saat digunakan untuk  makanan panas). Berikut ini adalah penjelasan mengenai kode recycle pada  bahan plastik:\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg"><img alt="recycle 1" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #1</strong>,  menggunakan bahan PETE/PET (Polythylene Terephalate). Biasanya digunakan  untuk botol plastik transparan seperti botol air kemasan, botol jus dan  sebagainya. Botol dengan bahan plastik berkode #1 ini dianjurkan hanya  untuk sekali pakai saja dan tidak boleh digunakan untuk air hangat  apalagi air panas. Sebaiknya, buang botol-botol yang sudah lama atau  kusam.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg"><img alt="recycle 2" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #2</strong>,  menggunakan bahan HIDPE (High Density Polyethylene) yang biasa digunakan  untuk botol atau kemasan yang berwarna putih susu, seperti pada kemasan  susu cair. Botol dengan bahan inipun sebaiknya hanya digunakan sekali  pakai saja.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg"><img alt="recycle 3" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg" width="339" height="429"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #3</strong>,  menggunakan bahan V (Vinyl) / PVC (Polyvinyl Chloride) yang sangat sulit  untuk didaur ulang. Jenis plastik ini biasanya ditemukan pada plastik  pembungkus (wrap) dan juga botol-botol minuman. Kandungan PVC yaitu DEHA  yang ada pada plastik dapat bocor dan masuk ke dalam makanan berminyak  apabila dipanaskan. PVC juga sangat berbahaya untuk organ dalam terutama  ginjal dan hati.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg"><img alt="recycle 4" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg" width="319" height="421"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #4</strong>,  menggunakan bahan LDPE (Lpw Density Polyethylene) yang biasanya  digunakan pada plastik yang lembek. Plastik dengan bahan ini dapat  didaur ulang dan baik untuk barang yang memerlukan kelenturan tapi tetap  kuat, dan juga baik untuk tempat makanan.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg"><img alt="recycle 5" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #5</strong>,  menggunakan bahan PP (Polypropylene) dan bisa menjadi pilihan terbaik  untuk tempat atau kemasan makanan dan minuman terutama botol minum bayi.  Peralatan yang mengandung bahan ini cenderung memiliki karakteristik  botol yang transparan tetapi tidak bening (berawan).\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg"><img alt="recycle 6" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg" width="320" height="408"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #6</strong>,  menggunakan bahan PS (Polystyrene) yang biasa dipakai pada tempat  makanan dari Styrofoam, tempat minum sekali pakai dan lain-lain. Bahan  ini bisa membocorkan bahan styrene ke dalam makanan ketika bersentuhan.  Polysterene sangat berbahaya bagi otak dan sistem syaraf, sedangkan  styrene dapat juga dijumpai pada asap rokok, asap kendaraan dan bahan  konstruksi gedung. Tempat makanan dengan bahan berkode ini harus sangat  dihindari, bahkan di beberapa Negara maju pemakaian bahan styrene sudah  dilarang termasuk salah satunya Cina.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg"><img alt="recycle 7" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg" width="320" height="407"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #7</strong>,  menggunakan bahan lain / Others atau Polycarbonate / PC. Bahan ini  sering ditemukan pada tempat makanan dan minuman olahraga, bahan ini  dapat mengeluarkan bahan utamanya yakni Bisphenol-A ke dalam makanan dan  minuman yang berpotensi merusak sistem hormon. Jadi, sebaiknya hindari  alat-alat berbahan polycarbonate.\r\n</p>\r\n<p>\r\n	  Itulah beberapa kode recycle pada  plastik yang mesti diketahui untuk lebih waspada dan menghindari  berbagai penyakit yang ditimbukan olehnya. Meskipun demikian, di luaran  masih banyak produk plastik yang tidak mencantumkan kode recycle  sehingga cukup sulit untuk diketahui masuk ke dalam kode yang mana  produk tersebut. Namun, untuk berjaga-jaga sebaiknya memang kita  menghindari penggunaan alat-alat berbahan plastik apapun karena  kesehatan lebih berharga dari apapun. Lebih baik gunakan peralatan  berbahan dasar keramik, gelas atau pyrex.\r\n</p>', ''),
(20, 4, 2, 'ALAT RUMAH TANGGA PLASTIK', '<p>\r\n	   Siapapun Anda, ketika Anda memasuki rumah yang baru dibangun, baru  dibeli, baru dikontrak atau baru ditempati, Anda pasti membutuhkan yang  dinamakan alat rumah tangga. Ada berbagai macam alat rumah tangga, namun  ada satu jenis alat rumah tangga yang mungkin perlu<br />\r\n	    anda kenal, yaitu <a href="https://gudangplastik.wordpress.com/jual-plastik-kontainer/"><em>alat rumah tangga plastik</em></a>.<br />\r\n	    Berbeda dengan alat rumah tangga lainnya, alat rumah tangga plastik  tidak membutuhkan perawatan yang khusus. Karena alat rumah tangga ini  selain tidak mudah pecah, tahan terhadap air, karat, rayap dan jamur.<br />\r\n	    Alat rumah tangga plastik boleh dikatakan hampir memenuhi semua  kebutuhan rumah tangga Anda, mulai dari ruang dapur, kamar mandi, ruang  makan, ruang tidur, ruang bermain bahkan ruang terbuka seperti teras dan  taman. Bahkan <a href="https://gudangplastik.wordpress.com/2013/03/26/kontainer-plastik/"><em>kontainer plastik</em></a>  dapat berfungsi hampir di setiap ruangan. Sehingga sepertinya dalam  rumah Anda tidak ada sudut ruangan yang steril dari benda yang namanya  plastik.<br />\r\n	    Berhubungan plastik sudah akrab dalam kehidupan rumah tangga Anda, maka  Andapun harus mempunyai sikap terhadap barang plastik ini. Hal ini  disebabkan karena ada bahan-bahan plastik yang tidak aman untuk  digunakan sebagai alat rumah tangga. Anda alat rumah tangga plastik  dengan bahan baku yang baik, tetapi ada juga yang terbuat dari bahan  baku yang telah sekian kali di daur ulang. Hal ini tentu saja akan  menggangu kesehatan Anda. Oleh sebab itu mengapa ada perabot rumah  tangga yang berharga mahal ada pula yang berharga murah, padahal jika  dilihat sepintas lalu, keduanya sama saja.<br />\r\n	    Tetapi jangan Anda berpikir bahwa yang mahal berarti lebih aman dari yang murah. Itu tidak benar. Aman atau tidak <a href="https://gudangplastik.wordpress.com/jual-plastik-kontainer/">alat rumah tangga</a>  bagi kesehatan Anda, tergantung fungsi dan kebutuhan alat tersebut.  Jika untuk sikat gigi, pilih yang berkwalitas baik, tetapi kalo untuk  sikat WC, yang penting kuat dan mudah digunakan. Demikian pula kalo  untuk alas memotong sayur, mainan anak yang dimasukkan ke mulut pilih  yang berkualitas baik bahan orisinil, tetapi kalo untuk sapu lantai,  tong sampah dan sebagainya, terbuat dari bahan daur ulang tetap masih  aman bagi Anda dan harganyapun pasti lebih murah.\r\n</p>', ''),
(22, 2, 2, 'Cara Membuat Bangku Plastik ', '<p>\r\n	 <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku</a> yang terbuat dari plastik tersedia dalam varietas yang berbeda.  Selain biaya yang murah dan tahan lama, kursi plastik menjadi barang  yang banyak digunakan untuk perabot rumah, rumah makan, dan toko-toko.  Karakteristik yang sama membuat bangku plastik menjadi pilihan umum.  Selain fleksibilitas dan daya tahan dari plastik membuatnya menjadi  bahan pilihan untuk kursi aksen dan kursi kantor.\r\n</p>\r\n<p>\r\n	     Metode Pembuatan <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku </a>Plastik\r\n</p>\r\n<p>\r\n	     bangku plastik dibuat dalam beberapa cara, semuanya melibatkan cetakan  logam yang  diukir ke dalam bentuk yang diinginkan. Salah satu bentuk yang paling  populer dari furnitur molding dikenal sebagai molding rotasi, di mana  cetakan logam besar disuntikkan dengan bubuk polimer plastik . Hal ini  kemudian dipanaskan sampai titik leleh, dan cetakan mekanis berubah  tiga-dimensi untuk merata mendistribusikan polimer  ke dalam cetakan. Setelah beberapa menit berputar, cetakan mendingin  dan rotasi berhenti. Cetakan dibuka dan kursi, baru benar-benar hampa  dihapus.<br />\r\n	      Injection molding merupakan metode pembuatan furniture plastik. Sekali lagi, cetakan logam yang digunakan, tapi kali ini  hasilnya tidak plastik berongga tapi padat. Jenis cetakan tidak  berputar, tetapi polimer dipanaskan pada tingkat yang telah ditentukan  dan suhu. Mereka kemudian dituangkan ke dalam cetakan dan didinginkan.  Sebuah jumlah tertentu presisi harus digunakan dengan jenis proses  pencetakan karena jika plastik dituangkan terlalu lambat, itu akan  terlalu cepat kering. Jika dituangkan terlalu cepat, hasilnya tidak akan  menjadi konfigurasi seragam plastik. Jika dilakukan dengan benar,  hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku </a>plastik tanpa jahitan, dibentuk semua dalam satu  potong.\r\n</p>\r\n<p>\r\n	     Injection molding juga bisa dilakukan dengan bantuan gas yang ditiup  pada kecepatan tinggi di dalam cetakan, mendorong plastik cair dari  bagian-bagian tertentu dari cetakan. Hal ini menciptakan saluran dalam  bentuk plastik yang membuat kursi yang jauh lebih ringan, sementara pada  saat yang sama mempertahankan kekuatannya. Semua aspek lain dari  injection molding tetap sama, tapi hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku</a> dengan beberapa  bagian yang berlubang dan bagian lainnya yang solid. Plastik yang  digunakan dalam proses pembuatan kursi biasanya gabungan dari beberapa  jenis plastik semua dicampur bersama-sama selama bagian pemanasan dari  proses pencetakan. Hal ini membuat kursi jauh lebih kuat daripada  mungkin jika hanya satu jenis plastik yang terlibat.\r\n</p>', '');
INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(26, 9, 2, 'WASPADAI BAHAYA MELAMIN, STYROFOAM, BOTOL PLASTIK DI RUMAH', '<p>\r\n	 Beberapa waktu ke belakang dan sampai saat ini isu mengenai beberapa  bahan pembuat peralatan rumah tangga yang mengandung bahan berbahaya  banyak dibahas dan menjadi topik yang cukup hangat di berbagai media  masa, hal itu sangatlah mengejutkan karena selama ini banyak orang yang  tidak tahu dan masih memakai bahan tersebut untuk keperluan sehari-jari  karena ketidak tahuan.\r\n</p>\r\n<p>\r\n	 Pada pos kali ini Saya hanya akan menyoroti tiga bahasan yaitu: melamin,  styrofoam, dan botol plastik bekas. Untuk lebih jelasnya mari kita  bahas satu persatu.\r\n</p>\r\n<p>\r\n	 <br />\r\n	 <u><strong>Melamin</strong></u>\r\n</p>\r\n<p>\r\n	 Adalah zat organik dengan rumus kimia C3H6N6 atau disebut juga dengan nama IUPAC 1,3,5-Triazine-2,6-triazine, berbentuk <a href="http://perawatanrtdonto.blogspot.com/2014/03/tips-membersihkan-lampu-kristal.html">kristal</a> putih yang sulit larut di dalam air.\r\n</p>\r\n<p>\r\n	 Melamin dikenalkan di Indonesia sekitar tahun 1970an, melamin ini banyak  sekali digunakan sebagai bahan pembuat plastik, lem, dan pupuk.\r\n</p>\r\n<p>\r\n	 <strong><em>Kelebihan melamin:</em></strong>\r\n</p>\r\n<ul>\r\n	<li>Ringan,</li>\r\n	<li>Tidak mudah pecah,</li>\r\n	<li>Praktis untuk dapat dibawa ke mana-mana.</li>\r\n	<li>Dapat dibentuk menjadi benda yang bermacam-macam dan indah.</li>\r\n</ul>\r\n<p>\r\n	 Melamin dibentuk dari gabungan <em>Formaldehide </em>dan <em>Fenol,</em> campuran antara keduanya yang tidak seimbang akan menghasilkan residu (Fenol yang tidak bersenyawa dengan sempurna)\r\n</p>\r\n<p>\r\n	 <strong><em>Larangan pemakaian melamin: </em></strong>\r\n</p>\r\n<ul>\r\n	<li>Senyawa melamin sangat rentan terhadap suhu panas dan sinar ultraviolet</li>\r\n	<li>Tidak boleh digunakan untuk Oven microwave.</li>\r\n	<li>gesekan pada peralatan rumah tangga yang terbuat dari bahan melamin  dapat mengakibatkan tersepasnya residu (formaldehide yang ada  sebelumnya)</li>\r\n	<li>Formaldehide (formalin) adalah salah satu bahan desinfektan yang juga biasa dipakai untuk keperluan pengawetan mayat.</li>\r\n</ul>\r\n<p>\r\n	 <em><strong>Bahaya melamin bagi tubuh: </strong></em>\r\n</p>\r\n<ul>\r\n	<li>Menggangu fungsi sel dan dapat mengakibatkan kematian</li>\r\n	<li>gangguan metabolisme pada ginjal, terutama pada bayi dan anak-anak.</li>\r\n	<li>Merusak saluran pencernaan sehingga dapat menyebabkan gangguan pada proses pengeluaran kotoran.</li>\r\n	<li>menyebabkan kerusakan pada fungsi hati, mata, ginjal, dan telinga.</li>\r\n	<li>Dapat merusak sistem imunitas pada bayi dan anak-anak yang mengkonsumsi.</li>\r\n	<li>Mudahnya tubuh terserang firus flu atau infeksi..</li>\r\n</ul>\r\n<p>\r\n	 <em>Sumber:http://www.alchemist.blogspot,com</em>\r\n</p>\r\n<p>\r\n	 <u><strong>Styrofoam</strong></u>\r\n</p>\r\n<p>\r\n	  Banyak sekali penggunaan bahan ini pada kehidupan kita sehari-hari  diantaranya digunakan untuk bahan dasar pembuat huruf untuk dekorasi dan  sebagai tempat/wadah makanan atau minuman. Yang berbahaya adalah bila  kita menggunakan bahan ini untuk tempat makanan atau minuman, karena  styrofoam mengandung zat berbahaya yaitu; <em>Benzen, Carsinogen, </em>dan<em> Styrene</em>.  Ketiga zat tersebut akan bereaksi dengan bahan makanan atau air panas  sehingga akan terlepas dan masuk ke dalam tubuh kita bersama makanan  atau minuman dan akibatnya terjadi kerusakan pada tubuh kita seperti:\r\n</p>\r\n<ul>\r\n	<li>Kerusanakn pada sumsum tulang belakang</li>\r\n	<li>Menyebabkan anemia</li>\r\n	<li>mengurangi pembentukan sel darah merah</li>\r\n</ul>\r\n<p>\r\n	 Kandungan ketiga zat yang ada di dalam styrofoam yang masuk ke dalam  tubuh akan sulit terurai atau terbuang dari tubuh baik  itu lewat  keringat, air seni, ataupun kotoran. Dapat dibayangkan apabila kita  sering memakai peralatan makan berbahan styrofoam ini maka semakin  bertumpuklah kadar  zat berbahaya tersebut di dalam tubuh kita.\r\n</p>\r\n<p>\r\n	 Lembaga-lembaga dunia yang peduli terhadap  kesehatan seperti International For Research on center, WHO (World  Healty Organization), dan EPA (Enviromental Protection Agency) telah  jelas menyatakan bahwa  Styrofoam adalah bahan karsinogen yang berbahaya  karena merupakan bahan penyebab kangker.\r\n</p>\r\n<p>\r\n	 <br />\r\n	 <u><strong>Bahaya botol minuman</strong></u>\r\n</p>\r\n<p>\r\n	 Saya tidak menyangka bahwa botol plastik bekas dari minuman dapat berbahaya  bagi kesehatan, setelah Saya baca dari beberapa keterangan  ternyata  memang benar, hal tersebut ternyata sudah dijelaskan pada kode atau  gambar yang tertera di bawah botol plastik kemasan tersebut.\r\n</p>\r\n<p>\r\n	 Kode tersebut berbentuk logo daur ulang berbentuk segitiga yang di  tengahnya terdapat angka dan di bagian bawahnya terdapat keterangan  tentang bahan pembuatnya. Simbol tersebut dikeluarkan oleh The Society  of Plastic Industry sejak tahun 1988 di AS dan telah dipakai oleh  berbagai lembaga pengembang sistem kode seperti ISO (International  Organization for Standardization).\r\n</p>\r\n<p>\r\n	 Saya ambil contoh satu logo pada jenis botol bening yang biasa dipakai  untuk air mineral yaitu logo daur ulang dengan angka "1" di tengah dan  di bawah logo tersebut terdapat tulisan <em>PET (Polyethylene Terephthalate)</em>,  artinya bahwa botol ini hanya dapat dipakai sekali, bila dipakai  berulang misalnya untuk air hangat atau air panas maka bahan polimernya  akan mengeluarkan zat karsinogenik yaitu zat pemicu kangker. Untuk  keterangan yang lengkap mengenai logo-logo yang terdapat pada botol  plastik kemasan untuk air silahkan kunjungi <em> http://www.kurniasepta.com</em>\r\n</p>', ''),
(27, 10, 2, 'prospek industri barang plastik: dari industri peralatan rumah tangga sampai mainan anak ', '<p>\r\n	    Prospek industri berbasis plastik memang masih menjanjikan di  Indonesia. Industri apa saja sebetulnya yang mendorong pertumbuhan  sektor ini? Menurut kajian MARS Indonesia, industri peralatan rumah  tangga merupakan salah satu sektor terpenting yang menyerap produk  kemasan plastik.\r\n</p>\r\n<p>\r\n	    Permintaan lainnya berasal dari industri kemasan plastik, industri  mainan industri pipa PVC, industri komponen elektronika, industri kabel,  hingga industri kulit imitasi.\r\n</p>\r\n<p>\r\n	    Ingin mengetahui lebih dalam mengenai hal ini? baca selanjutnya  dalam artikel ini  di http://www.marsindonesia.com/articles/prospek-industri-barang-plastik-dari-industri-peralatan-rumah-tangga-sampai-mainan-anak\r\n</p>', ''),
(28, 7, 2, 'Mengenal Bahan Kimia pada Barang Plastik', '<p>\r\n	    Sahabat tipsunikibu.com, tengoklah lemari dapur Anda. Berapa banyak barang-barang <em><strong>plastik</strong></em>  di dalamnya? Tidak dapat dipungkiri bahwa saat ini plastik berperan  penting dalam kehidupan masyarakat modern. Hampir semua barang-barang  yang kita butuhkan dalam menjalankan aktivitas sehari-hari terbuat dari  plastik Perkakas rumah tangga, <a href="http://www.tipsunikibu.com/2015/10/tips-praktis-merawat-alat-alat-dapur.html">alat-alat dapur</a>, kemasan obat, perabot rumah tangga, botol susu dan alat makan bayi, mainan anak-anak, adalah beberapa di antaranya.\r\n</p>\r\n<p>\r\n	    Plastik adalah polimer (rantai karbon panjang) dari gugus karbon  penyusunnya, yang disebut dengan monomer. Satu gugus monomer plastik  terdiri dari rantai induk berupa atom karbon, dan rantai cabang berupa  atom hidrogen dan/atau unsur kimia lain, seperti klor, fluor, dan  sebagainya.\r\n</p>\r\n<h3> <em><strong>Struktur Kimia Monomer dan Polimer</strong></em></h3>\r\n<p>\r\n	    Monomer dan polimer dari suatu plastik bisa digambarkan secara skematik  dalam struktur kimia sebagai berikut (contoh untuk plastik polietilena) :\r\n</p>\r\n<div>\r\n	    H  H        H  H  H  H  H  H  H  H\r\n	<p>\r\n		     |  |      |  |  |  |  |  |  |  |\r\n	</p>\r\n	<p>\r\n		    C = C   -&gt;   ... – C – C – C – C – C – C – C – C – C\r\n	</p>\r\n	<p>\r\n		     |  |      |  |  |  |  |  |  |  |\r\n	</p>\r\n	<p>\r\n		    H  H        H  H  H  H  H  H  H  H\r\n	</p>\r\n	<div>\r\n		    Monomer Etilena   Polimer Etilena\r\n		<div>\r\n			<h3> <em><strong>Jenis Plastik dan Identifikasinya</strong></em></h3>\r\n			<div>\r\n				<div>\r\n					    Ambillah satu atau dua barang plastik di dapur Anda. Coba amati bagian  bawah dari barang plastik tersebut. Adakah kode/simbol yang terlihat?  Apakah terbaca PP, atau PET, atau bahkan simbol-simbol seperti berikut  ini:\r\n					<div>\r\n						 <img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEIAAABaCAIAAACDsxdJAAAUM0lEQVR4nOVbe1BV1f7fqDz2++z33sfAoCRRlEKUlykC2e0K+boDqJU5Zgkp4TQ+0hrnIoqpiToUDj2m32+8Rm9rsDFqpiIFNR1KAdFSQiwtkzconMf6/fHlrLs9vOHc8c78vrPnzIG991rfz/q+v2sdwuFRstvt8MXpdMKn0+m02+12u91ms8E/zY95hBBChAeHAwIW7S5yuMBgDB4nz8NwOp02mw2G7pXwAx6k/4g0gF273X727NnPP//8vffeKyoqKi4uPnfunM1mg7sen9EzMLDyIITa2trefffdpKSkoKBARZEtFosgWGRZCgwMTEpKKiwsbGhoALE4XLo3wtk9A8Nms3V1dcFw33//fWJiIsuyNE1LkqQosqrKqioriiSKIk3TNE3HxsaWlJQAks7OzpHrmGdg2O12kMP777/v7+9PUZSiKJqma5pmGJquq65L03Vd0zSGYTRNe+utt0D3/lukARiKi4s1TWNZ1mq16rquqsA3xqAahqFpmqZpuq5bLBZN044ePeoRJCOCgedGCNXX14eFhTEMo7tI0zRVVQXBwrIMy9KCYNF1zTAMVVXhLk3Ts2bNampqGrnFj1QaoE5OpzMrK4skSVhpVVU1TZNlmeO4yZMnJyUlPf7446GhoQzDSJJkGAbAACT5+fkAA4fIuwAD1Km0tFRVVVmWYaUNw5AkSdO0rVu31tXV3bp1q7Oz88qVK9u3bzcMQ5ZlQAuqNWXKlKtXr2Ikw4uSI1UqhFBHR0dSUhJWJ1Abnuf37t3bM/bl5ORQFIX1Std1iqKys7Ox/x0eDR8G6ABCqKCggGVZ4AkUhqKoRYsWwV1YYLAihFBDQ8O0adM4jsNuQBTFoKCgqqqqkdj6MGEAZwihy5cvT5o0yWKxYMsWBMHf3//MmTPAVs/53n33XZ7nFUUxDF3TVF1XKYpcteo5EMjwZDJMGDhQrF27liRJszpRFLV58+ZenQ8gb29v/9vfHmMYGrywqsqiaNF1vbS0FEtvqHiGr1QIoa+//lpVVUVRICDous4wTERExG+//darKBwul3DkyBFFkRVF0jQFwFAUlZaWdvv2bXN6P3gww4SBEGptbX3kkUcoisJWoSiKxWI5ePAgdjs9MYBAHA5HamqKn5+PYWiABLzC4cOHzbY++CRyyDCwsb7+ej7HsYqiaJqKfc7ixYs7Ozv7EQV+/eTJk4ahC4IFshXD0FmWTUxMbGxsxG6tpqamsrJyMAIZGgwoFRBCtbW1EyYEWyycYXQnS5IkBQQEVFRUDGb9THZFaSZiWfbNN98Eh7Z///6AgIAtW7YMxhcPDQa27FWrnqMoP5z2GYbOMMw///nPwacVCKGLFy8GBwfzPK9pmmEYVquV5/nY2NiCgoKZM2f6+vrquv7TTz8NZswhw0AIFRcfkSRRlgVVlcH7MwwdFRV148aNvtSpr7lzcnJomsbWZbVaZVm2WCwWi4UkyYyMjEFa+RBggCiam5vj4+MZhgZRaJqiKJIoCh9//PFQIzFC6Nq1a9HR0ZDt4vwX8hpN077//nvPmDgUQ9gJIoT27t1L0zQkfzhmL168BMYavIuE0RBCu3btYlkW4qCmqbqu6LrGcdyCBQvAW3gAhtus58+fDwwMlCQJZ0SSJI0bdy9Y9mDUCVsXiCI7OzssLExVAUD3pWmqIAgfffTRkCytPxh4aWHulStXkiQJotA0TVEUiqJyc3PN6VD/YEBczc3NeXl5kyZN8vHx4ThOURRzgcXzXFxcXEtLi8dgAIFlFxUVSZKkKApOszmOmzFjxs2bN81p9oCjOZ3Oy5cvJycnBwcHBwUFqarKMAxJ+jIMxXEMz7O+vj4FBQWgoh5QKnNxd/v27SVLlhAEIYoijtmCIHz44Yd4Jjc5QA1kztIh7OBAfv369bNnz5aUlLzzzjubN296+ullf//7Y1OmTJ4+ffqVK1f+/ZbD6bDZHfbupHrIMMzrZ7fba2trX3nllXvuuQdMnKKop59+GhasJwC73d7V1WW326urqw8cOHDgwIFPP/20s7PTLdFwI5vNduPGjUuXLsGfJ06cyN2e29LU7HQ47V02p61PdR0YBlZ6GPrkyZOpqakMwwQEBECRYO7Mmt+CVzZt2kQQhJeXV0xMTE917wvVtWvXtm/fHhQUNHr06IP/878IIafd4bDZ+1LZ/mBgl+JGXV1db7311htvvAFycKuezU+eOXMmODiY4ziKombPnt3a2tpT17GPBuRNTU2HDh2KjIwkSVIURQvPx0ZF/3ntOkLIaRu0Urlx3NnZeePGjcuXL1dUVHz00UefffaZGZvDFVjM63r9+vVffvnl1KlTO3bsgIoKkqX4+Pie0sBsYUMqKCjw9vZmWbY7NOk6TVI5W3MQQv14jztggCv85JNPCgoKsrOz09PTk5OTo6OjQ0JCxo4dS1FUYGBgTU0NsNJTkQDb888/7+/vbxgGwzCCIIBP43k+Pj6+V2mY8TidzrNnz06YMAHHdV3XBVEMCgqC5KovT3gHDITQxYsXp06dShCEt7c3SZI0TUOGI0kSmDVECbfhsCU4nc5FixYRBEGSJMMwHMeBd+Y4rn8Y5kHy8/MZhumOTrqu6hpFUStWrMAubgAYsB6//vrrpk2bAgICOI4zDEPTdKvVCgkPz/ORkZE4UJjfgjmcTufOnTuTk5PT0tLS0tIWLFgwbtw4VVVBqQaEARrb0tICXWCQJBSYiqJ8+eWXg4XhcOnGmTNnUlNTQbi4Y6mqKsdxhw4d6lXF8a6SwxUxa2trQ0JCRFFkWTYhIaGfwGzuiSCEPvvsM0mSZFk2DANUi2GYOXPmtLe39zpCLzCAA4RQRkYGTVO6rrkqZk1VVZqmU1JSwBwdvYU8s4f4/fffJ02aJIoix3EJCQn9S8PMk8PhWLZsGUVRIA/D0FRVYRiqsLAQj2BW7D5hHDlyRFEUWRY1TYGcXFFkWVZkWdZ1/cSJE8i0QdGTFVCP+vr6iRMnDhUGsPXTTz/de++9oiiYci32wQcfrK+vRz2CVe9K1dDQkJCQwLIsVEXQhjEM3d/fn6ZpX1/frKwsCBp9eY+Rw0AIbdmyhST9zD15mqY2btyIelQEvZg4Qmj//v3Q8tA0BTSKJH0zMtLLy8uXLl3q5+cXGBh44cIFPFyvTZCRwHC4iqqIiKkcx2AYoiharWPLy8vdxkEIEdg0YXXr6+tDQ0OhRNY0Vdc1QbCMH3//+fPnge+ioqLw8HAo9/piYuQwgLl//esgz3OKIsNGAzThly5dirNp+OyWBmCAuV988UWSJHEHDcLFtm3bkCtzRghdv379r7/+Mu8XexYGjiG3bt2aP38BTdPgsmC/QRRFyKzxaAghwpz8lZWV6boO2ThuusTExPz555/YDDAYhykj8iAMc5mBEPr2228hdKiqCm0HlmVnzJgB+6AOl0/qViooBhYuXIih67quKArP8xAo8GM9l+0/ZBvYfa9evZqiSNhO0HVd03SapvfsybtDGli93nvvPYvFAi4VkJAkuXDhQnOdgLnslXtPwTCrPkLo0qVLEyaE8DyPN0YEwRISMuHnn3/GaAl49I8//oiKioIWP24XGIbx3XffDckuzSVEfX09RHGGYXrNcAc5GkIoLy+PoihNU61W3eU8/XAj698wtm/f7ufnB7oESCiKgvjgGMpJFfMq1tXVPfDAAzzPUxQVFxc3VE/lMG0GNTY2PvzwwwxDmZyvoGnaN998A2MSCKGamprx48eLoog373ienzJlSl1dHYTMwe8D9ZSGJEmCIPSfUw1IkGiJokXTFFWVoRVPktSSJUsgohMIoezsbGhC4tYdSZKvv/66WRRDEggo9+3btysqKn744YdTp06dO3cO11hDIjyv0+l84oklFIXjuiZJ0v333w8lEIEQmjt3Lt6/g/Kg5+INY1fOrQwGqZqhDh4DqNbJkyfvuWesLEugNbArAo6UaG9vnz59Os/zOFYIglBUVDRsBeiHJ7wnhp2pzWYb5F448JOSkgohQVVVyLi3bt2KECKamprCwsIg5EHsCwgIOH36tMdhOO60nPLy8kOHDg3e6uCtzZs30zQNBgy5yUsvveQuDQh5iqIUFxd7HIZZDteuXQsNDV20aNHgZwEVXbFiBe6FQzkFWzkEQig5ORkHb8MwKIpKT083ZxzDZt1tpaHe6urqWrZsGUEQzzzzTF+pvtsIAP7XX2sfeOABURR1XTMMHZQKTgIRCKGXX34Zb0ZCj1mWZZx+jZzwcsKK7tu3j2EYaBQMfhC73Z6RsYqmSV1XVFXWdU1RFKvVeurUqW4Y3377raZp0PEHgQiCMG7cuPz8/Lq6ulYXtQ2L2tvbzRhKSkqsVqsgCDzPL1u2rKmp6Wa/9NdffzU2NtbU1KSnp/M8C3EDHC4U6G1tbd0wurq6UlJS/Pz8cCYCSHieDw0NnTNnzqOPPjpnzpzExMRHhkKJiYkxMTHZ2dk4p6irqwsPD2dZFprZwcHBM2fOjI2NndEHPfzww/A5YcIEhmFUVdF11XVOQ6EoCjQKQaKOEDp27JjVarVYLDgfAUg8z1ssFoZhGIZhh0gcxxEEsXTpUjCAjo6OxYsXmxdLliVoZ/VFPM9xHMtxrCiKmqYZhg47dZqm+Pr6zJ8/H0SBIKcCcR84cIDneVEU4VwKTGY6/qQM/epuvINmv/TSSyRJKoriGlCFfsWdB/l6v1ydDR0f8wsNnYRbiQiXTU7X1p4kSXCqCG8owokQtxN3g7xIkly+fDlCqK2tbd68eZB9qqqm6xrsqUPGik9d9MF993dQJpIkJ0+eDN0ZfOb3jh4uQujIkSMzZsygaZphGEgWXSQrijTUiyTJp556Ckb++eefH3roIZZlDcMKHlFVZUkSFEXqa3B8ahSepCiKYZiUlJTq6mpk2lfploY5h0UINTY2FhYWJiUljR8/HgoPWZZhL3yIl+jr6/Pkk09ip/nFF1+oqiqKkmEYZo2CLz0v3ei+ZbXq998fNH/+vIMHD+IdWlxCo559KpzPdXV11dTUHD9+/Ouvv/5quHT06NEff/zR4WpUI4Ree+01mqYVReF57h//WFReXl5eXlZ27FjZ8eO9XMeOlZeVlR0/fqKs7GLNBZyJufHcCwzzPU8RXjbI3p988klo1+NcYfDUF6sDb5r1/0D/5DSRw5VTXL16NTIy0svLa+XKld3c2R3I4ez1ctod+OqLBoBh5mB4ZC4wzEhKSkp4nk9NTQVZOWx2M7vmywxpmDBGTmZ1MgNDCOXl5a1bt65b6xxOp8PRx+XE112D0c/ECKHm5uYh1Rv9jHZ3YDhMP/MYidLioe4ODI9wj+luSsM+3KPcPekuw/DUUHcThgfp/x+MAbOD/pORoSYd5nc9CaO1tbWxsbHJRY2Njbjygr2R5uZm8wNNTU3wn/b2dpvN1tjYCHfhs7m5uampqaGhobGxsbOzs7OzEz8Ad+EBuOu4c9N9+DAQQjt37pw4cWJkZORUF8XGxmZnZ8OuT0NDw5IlS8LCwiIjIyNcNG3atODg4C1btlRVVcXExDz00EPTp0+PioqKjo6OjIwMDw8PDw+fMmXKiRMnysrK4O60adMiIiKmTp0aERHx4IMPhoeHQ+MD2BgRDFjytWvXEgQhSZK/v7+/v78syz4+PqNGjcrIyLDZbC0tLTExMXB6CDqT0NXz8/NbvXr16dOnx40bJwjC2LFjRVG0WCyCIEBXQZKk0tLSkpISHx8fnuehZoZuGhxUOXbsGBroPOYAMMxqvX79ei8vr+jo6B9//PHKlSuVlZXPPvssnBiqqqqy2WxxcXGjR49eu3ZtbW1tdXX1+fPnq6urKysrr1692traWllZWV1d/csvv6SlpY0ePTohIaGqqurChQvnzp3r6Oj4/PPPWZb19/cvLi6+dOlSdXU1vFtZWdnc3IzbjcOUBmCAzw0bNhAEERcXd+vWLQBWUVFhtVopivrkk08ABkEQu3bt6t/En3nmGYIg5s6da37g008/JUnyvvvuM58yNJv4iKThMBWD69evJwgiISHB4VKzDz/8UBRFnue/++47u90+a9YskiSTk5P37Nnz6quv7ty5c8eOHTt37qytrcXNF4TQ8uXLCYJ47LHHOjo6QOkBBsdxAQEBGzZs2L1796uvvrpjx46cnJyPP/7YrWLxAAxvb++QkJB169a9/PLLmZmZoaGhY8aMiYqKamlpaW9vj4uLg44WcSd99dVXmN2+YBw+fFgQBFmWx4wZY353/vz5WCaegbFu3TqSJGVZxnP4+PhMnDgRuLx58+bs2bP9/Pzi4+PXr1+flZWVmZm5evXqrKysixcvItPucF/SAPtevnz5unXrMjMzX3jhheeeew5+B+Fhafj4+ISGhr722mv5+fn79u1755138GHTpqam2bNnEwSRk5PT0zbwZP1Ig2GYoKAg2AEzk30Qv3YaAAau1JDLxOPj491CssPVE5o1axZBEHCKrycM3NFbsWIFwABXgaVBUVRQUBBsdbsR9NSGDwMvA0Jo48aNXl5ecXFx8Lsdt1EaGhpmzpzp5+c3b968vXv37tq1a9euXbt3787NzS0sLGxrazNLw8vLa+7cubdv30Z3mrjVat24cWNeXt5uF23btq20tHTAfGRgpcLTZ2ZmEgQRERGBD2uYH7h582ZERMSoUaO8vb3dTPy+++7DR04QQmlpaeC4zUr1wQcfjBo1ytfXd9SoUW6vb9iwwayZw4GBe3Iw01NPPZWbmwuplNsobW1tubm5q1atAstes2ZNZmZmZmZmenr61q1bcQhzOp1vv/32E088sWfPHjjDAdhOnz6dnp6+Zs2arKws/O6aNWtWrlwJh39HGv7MfVKgXkXcfw7rdpTSbDBug/f1ej9MDgyjV0b7GasvGnCcflbBw4n6fzMhhP4PjmPQIiRuEWoAAAAASUVORK5CYII="> atau ini: <img alt="" src="data:image/png;base64,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"> atau ini:atau lainnya?  <img alt="" src="data:image/png;base64,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">\r\n						<div>\r\n							    Sahabat tipsunikibu.com, kode/simbol tersebut menjelaskan tentang jenis  bahan, sehingga, plastik yang memiliki kode yang sama dapat  dikelompokkan bersama untuk memudahkan proses daur ulang. Tetapi fungsi  terpentingnya adalah sebagai identifikasi dari jenis polimernya, yang  mengacu secara spesifik pada monomer penyusunnya. Karena itu dikenal  berbagai jenis plastik, seperti <a href="https://id.wikipedia.org/wiki/Polietilena">polietilena</a> (dari monomer etilena), <a href="https://id.wikipedia.org/wiki/Polipropilena">polipropilena</a> (dari monomer propilena), <a href="https://id.wikipedia.org/wiki/Polistirena">polistirena</a> (dari monomer stirena), dan sebagainya.\r\n							<div>\r\n								    Jika Anda Ingin Tahu\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>', ''),
(29, 11, 2, ' Cek Kode Bahan Plastik Berbahaya Pada Peralatan Rumah Tangga Anda, Sebelum Cemari Makanan!', '<p>\r\n	  Plastik menjadi bahan yang paling banyak  digunakan oleh sebagian produsen dalam mengemas makanan hingga sebagai  perabotan rumah tangga seperti barang elektronik dan peralatan  makan/minum. Padahal kita tahu bahwa plastik tidak bisa terurai dalam  waktu yang singkat melainkan butuh waktu hingga puluhan tahun agar ia  bisa menyatu kembali dengan tanah. Di dalam penggunannya, ada beberapa  hal yang perlu diketahui oleh semua masyarakat mengenai penggunaan  perabotan berbahan plastik ini. Bahan kimia yang terkandung dalam  plastik ternyata dapat bocor atau terlarut ketika bersentuhan dengan  makanan atau minuman yang ditempatinya.\r\n</p>\r\n<p>\r\n	  Wadah makanan dari bahan plastik yang  disarankan dan aman untuk digunakan adalah yang memiliki kode recycle.  Nomor yang tertera pada kode recycle tersebut menunjukkan jenis bahan  plastik yang digunakan dan menunjukkan tingkat potensi bahayanya  terhadap kesehatan. Akibat yang terpapar dari peralatan yang berbahan  plastik memang tidak akan terasa dalam jangka pendek, namun pengaruhnya  baru akan terasa dalam jangka panjang nanti. Pengetahuan ini sekaligus  menjadi <em>warning</em> bagi kita semua bahwa tidak ada produk plastik  yang benar-benar aman pada semua kondisi (terutama saat digunakan untuk  makanan panas). Berikut ini adalah penjelasan mengenai kode recycle pada  bahan plastik:\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg"><img alt="recycle 1" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-1.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #1</strong>,  menggunakan bahan PETE/PET (Polythylene Terephalate). Biasanya digunakan  untuk botol plastik transparan seperti botol air kemasan, botol jus dan  sebagainya. Botol dengan bahan plastik berkode #1 ini dianjurkan hanya  untuk sekali pakai saja dan tidak boleh digunakan untuk air hangat  apalagi air panas. Sebaiknya, buang botol-botol yang sudah lama atau  kusam.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg"><img alt="recycle 2" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-2.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #2</strong>,  menggunakan bahan HIDPE (High Density Polyethylene) yang biasa digunakan  untuk botol atau kemasan yang berwarna putih susu, seperti pada kemasan  susu cair. Botol dengan bahan inipun sebaiknya hanya digunakan sekali  pakai saja.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg"><img alt="recycle 3" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-31.jpg" width="339" height="429"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #3</strong>,  menggunakan bahan V (Vinyl) / PVC (Polyvinyl Chloride) yang sangat sulit  untuk didaur ulang. Jenis plastik ini biasanya ditemukan pada plastik  pembungkus (wrap) dan juga botol-botol minuman. Kandungan PVC yaitu DEHA  yang ada pada plastik dapat bocor dan masuk ke dalam makanan berminyak  apabila dipanaskan. PVC juga sangat berbahaya untuk organ dalam terutama  ginjal dan hati.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg"><img alt="recycle 4" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-4.jpg" width="319" height="421"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #4</strong>,  menggunakan bahan LDPE (Lpw Density Polyethylene) yang biasanya  digunakan pada plastik yang lembek. Plastik dengan bahan ini dapat  didaur ulang dan baik untuk barang yang memerlukan kelenturan tapi tetap  kuat, dan juga baik untuk tempat makanan.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg"><img alt="recycle 5" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-5.jpg" width="360" height="460"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #5</strong>,  menggunakan bahan PP (Polypropylene) dan bisa menjadi pilihan terbaik  untuk tempat atau kemasan makanan dan minuman terutama botol minum bayi.  Peralatan yang mengandung bahan ini cenderung memiliki karakteristik  botol yang transparan tetapi tidak bening (berawan).\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg"><img alt="recycle 6" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-6.jpg" width="320" height="408"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #6</strong>,  menggunakan bahan PS (Polystyrene) yang biasa dipakai pada tempat  makanan dari Styrofoam, tempat minum sekali pakai dan lain-lain. Bahan  ini bisa membocorkan bahan styrene ke dalam makanan ketika bersentuhan.  Polysterene sangat berbahaya bagi otak dan sistem syaraf, sedangkan  styrene dapat juga dijumpai pada asap rokok, asap kendaraan dan bahan  konstruksi gedung. Tempat makanan dengan bahan berkode ini harus sangat  dihindari, bahkan di beberapa Negara maju pemakaian bahan styrene sudah  dilarang termasuk salah satunya Cina.\r\n</p>\r\n<p>\r\n	 <a href="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg"><img alt="recycle 7" src="http://www.buahatiku.com/wp-content/uploads/2015/08/recycle-7.jpg" width="320" height="407"></a>\r\n</p>\r\n<p>\r\n	 <strong>Kode recycle #7</strong>,  menggunakan bahan lain / Others atau Polycarbonate / PC. Bahan ini  sering ditemukan pada tempat makanan dan minuman olahraga, bahan ini  dapat mengeluarkan bahan utamanya yakni Bisphenol-A ke dalam makanan dan  minuman yang berpotensi merusak sistem hormon. Jadi, sebaiknya hindari  alat-alat berbahan polycarbonate.\r\n</p>\r\n<p>\r\n	  Itulah beberapa kode recycle pada  plastik yang mesti diketahui untuk lebih waspada dan menghindari  berbagai penyakit yang ditimbukan olehnya. Meskipun demikian, di luaran  masih banyak produk plastik yang tidak mencantumkan kode recycle  sehingga cukup sulit untuk diketahui masuk ke dalam kode yang mana  produk tersebut. Namun, untuk berjaga-jaga sebaiknya memang kita  menghindari penggunaan alat-alat berbahan plastik apapun karena  kesehatan lebih berharga dari apapun. Lebih baik gunakan peralatan  berbahan dasar keramik, gelas atau pyrex.\r\n</p>', ''),
(30, 12, 2, 'ALAT RUMAH TANGGA PLASTIK', '<p>\r\n	   Siapapun Anda, ketika Anda memasuki rumah yang baru dibangun, baru  dibeli, baru dikontrak atau baru ditempati, Anda pasti membutuhkan yang  dinamakan alat rumah tangga. Ada berbagai macam alat rumah tangga, namun  ada satu jenis alat rumah tangga yang mungkin perlu<br />\r\n	    anda kenal, yaitu <a href="https://gudangplastik.wordpress.com/jual-plastik-kontainer/"><em>alat rumah tangga plastik</em></a>.<br />\r\n	    Berbeda dengan alat rumah tangga lainnya, alat rumah tangga plastik  tidak membutuhkan perawatan yang khusus. Karena alat rumah tangga ini  selain tidak mudah pecah, tahan terhadap air, karat, rayap dan jamur.<br />\r\n	    Alat rumah tangga plastik boleh dikatakan hampir memenuhi semua  kebutuhan rumah tangga Anda, mulai dari ruang dapur, kamar mandi, ruang  makan, ruang tidur, ruang bermain bahkan ruang terbuka seperti teras dan  taman. Bahkan <a href="https://gudangplastik.wordpress.com/2013/03/26/kontainer-plastik/"><em>kontainer plastik</em></a>  dapat berfungsi hampir di setiap ruangan. Sehingga sepertinya dalam  rumah Anda tidak ada sudut ruangan yang steril dari benda yang namanya  plastik.<br />\r\n	    Berhubungan plastik sudah akrab dalam kehidupan rumah tangga Anda, maka  Andapun harus mempunyai sikap terhadap barang plastik ini. Hal ini  disebabkan karena ada bahan-bahan plastik yang tidak aman untuk  digunakan sebagai alat rumah tangga. Anda alat rumah tangga plastik  dengan bahan baku yang baik, tetapi ada juga yang terbuat dari bahan  baku yang telah sekian kali di daur ulang. Hal ini tentu saja akan  menggangu kesehatan Anda. Oleh sebab itu mengapa ada perabot rumah  tangga yang berharga mahal ada pula yang berharga murah, padahal jika  dilihat sepintas lalu, keduanya sama saja.<br />\r\n	    Tetapi jangan Anda berpikir bahwa yang mahal berarti lebih aman dari yang murah. Itu tidak benar. Aman atau tidak <a href="https://gudangplastik.wordpress.com/jual-plastik-kontainer/">alat rumah tangga</a>  bagi kesehatan Anda, tergantung fungsi dan kebutuhan alat tersebut.  Jika untuk sikat gigi, pilih yang berkwalitas baik, tetapi kalo untuk  sikat WC, yang penting kuat dan mudah digunakan. Demikian pula kalo  untuk alas memotong sayur, mainan anak yang dimasukkan ke mulut pilih  yang berkualitas baik bahan orisinil, tetapi kalo untuk sapu lantai,  tong sampah dan sebagainya, terbuat dari bahan daur ulang tetap masih  aman bagi Anda dan harganyapun pasti lebih murah.\r\n</p>', ''),
(31, 13, 2, 'Cara Membuat Bangku Plastik ', '<p>\r\n	 <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku</a> yang terbuat dari plastik tersedia dalam varietas yang berbeda.  Selain biaya yang murah dan tahan lama, kursi plastik menjadi barang  yang banyak digunakan untuk perabot rumah, rumah makan, dan toko-toko.  Karakteristik yang sama membuat bangku plastik menjadi pilihan umum.  Selain fleksibilitas dan daya tahan dari plastik membuatnya menjadi  bahan pilihan untuk kursi aksen dan kursi kantor.\r\n</p>\r\n<p>\r\n	     Metode Pembuatan <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku </a>Plastik\r\n</p>\r\n<p>\r\n	     bangku plastik dibuat dalam beberapa cara, semuanya melibatkan cetakan  logam yang  diukir ke dalam bentuk yang diinginkan. Salah satu bentuk yang paling  populer dari furnitur molding dikenal sebagai molding rotasi, di mana  cetakan logam besar disuntikkan dengan bubuk polimer plastik . Hal ini  kemudian dipanaskan sampai titik leleh, dan cetakan mekanis berubah  tiga-dimensi untuk merata mendistribusikan polimer  ke dalam cetakan. Setelah beberapa menit berputar, cetakan mendingin  dan rotasi berhenti. Cetakan dibuka dan kursi, baru benar-benar hampa  dihapus.<br />\r\n	      Injection molding merupakan metode pembuatan furniture plastik. Sekali lagi, cetakan logam yang digunakan, tapi kali ini  hasilnya tidak plastik berongga tapi padat. Jenis cetakan tidak  berputar, tetapi polimer dipanaskan pada tingkat yang telah ditentukan  dan suhu. Mereka kemudian dituangkan ke dalam cetakan dan didinginkan.  Sebuah jumlah tertentu presisi harus digunakan dengan jenis proses  pencetakan karena jika plastik dituangkan terlalu lambat, itu akan  terlalu cepat kering. Jika dituangkan terlalu cepat, hasilnya tidak akan  menjadi konfigurasi seragam plastik. Jika dilakukan dengan benar,  hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku </a>plastik tanpa jahitan, dibentuk semua dalam satu  potong.\r\n</p>\r\n<p>\r\n	     Injection molding juga bisa dilakukan dengan bantuan gas yang ditiup  pada kecepatan tinggi di dalam cetakan, mendorong plastik cair dari  bagian-bagian tertentu dari cetakan. Hal ini menciptakan saluran dalam  bentuk plastik yang membuat kursi yang jauh lebih ringan, sementara pada  saat yang sama mempertahankan kekuatannya. Semua aspek lain dari  injection molding tetap sama, tapi hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku</a> dengan beberapa  bagian yang berlubang dan bagian lainnya yang solid. Plastik yang  digunakan dalam proses pembuatan kursi biasanya gabungan dari beberapa  jenis plastik semua dicampur bersama-sama selama bagian pemanasan dari  proses pencetakan. Hal ini membuat kursi jauh lebih kuat daripada  mungkin jika hanya satu jenis plastik yang terlibat.\r\n</p>', ''),
(32, 14, 2, 'Cara Membuat Bangku Plastik ', '<p>\r\n	 <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku</a> yang terbuat dari plastik tersedia dalam varietas yang berbeda.  Selain biaya yang murah dan tahan lama, kursi plastik menjadi barang  yang banyak digunakan untuk perabot rumah, rumah makan, dan toko-toko.  Karakteristik yang sama membuat bangku plastik menjadi pilihan umum.  Selain fleksibilitas dan daya tahan dari plastik membuatnya menjadi  bahan pilihan untuk kursi aksen dan kursi kantor.\r\n</p>\r\n<p>\r\n	     Metode Pembuatan <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku </a>Plastik\r\n</p>\r\n<p>\r\n	     bangku plastik dibuat dalam beberapa cara, semuanya melibatkan cetakan  logam yang  diukir ke dalam bentuk yang diinginkan. Salah satu bentuk yang paling  populer dari furnitur molding dikenal sebagai molding rotasi, di mana  cetakan logam besar disuntikkan dengan bubuk polimer plastik . Hal ini  kemudian dipanaskan sampai titik leleh, dan cetakan mekanis berubah  tiga-dimensi untuk merata mendistribusikan polimer  ke dalam cetakan. Setelah beberapa menit berputar, cetakan mendingin  dan rotasi berhenti. Cetakan dibuka dan kursi, baru benar-benar hampa  dihapus.<br />\r\n	      Injection molding merupakan metode pembuatan furniture plastik. Sekali lagi, cetakan logam yang digunakan, tapi kali ini  hasilnya tidak plastik berongga tapi padat. Jenis cetakan tidak  berputar, tetapi polimer dipanaskan pada tingkat yang telah ditentukan  dan suhu. Mereka kemudian dituangkan ke dalam cetakan dan didinginkan.  Sebuah jumlah tertentu presisi harus digunakan dengan jenis proses  pencetakan karena jika plastik dituangkan terlalu lambat, itu akan  terlalu cepat kering. Jika dituangkan terlalu cepat, hasilnya tidak akan  menjadi konfigurasi seragam plastik. Jika dilakukan dengan benar,  hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku </a>plastik tanpa jahitan, dibentuk semua dalam satu  potong.\r\n</p>\r\n<p>\r\n	     Injection molding juga bisa dilakukan dengan bantuan gas yang ditiup  pada kecepatan tinggi di dalam cetakan, mendorong plastik cair dari  bagian-bagian tertentu dari cetakan. Hal ini menciptakan saluran dalam  bentuk plastik yang membuat kursi yang jauh lebih ringan, sementara pada  saat yang sama mempertahankan kekuatannya. Semua aspek lain dari  injection molding tetap sama, tapi hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku</a> dengan beberapa  bagian yang berlubang dan bagian lainnya yang solid. Plastik yang  digunakan dalam proses pembuatan kursi biasanya gabungan dari beberapa  jenis plastik semua dicampur bersama-sama selama bagian pemanasan dari  proses pencetakan. Hal ini membuat kursi jauh lebih kuat daripada  mungkin jika hanya satu jenis plastik yang terlibat.\r\n</p>', ''),
(33, 15, 2, 'Cara Membuat Bangku Plastik ', '<p>\r\n	 <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku</a> yang terbuat dari plastik tersedia dalam varietas yang berbeda.  Selain biaya yang murah dan tahan lama, kursi plastik menjadi barang  yang banyak digunakan untuk perabot rumah, rumah makan, dan toko-toko.  Karakteristik yang sama membuat bangku plastik menjadi pilihan umum.  Selain fleksibilitas dan daya tahan dari plastik membuatnya menjadi  bahan pilihan untuk kursi aksen dan kursi kantor.\r\n</p>\r\n<p>\r\n	     Metode Pembuatan <a href="http://oden-houseware.com/item-category/Bangku_329.html">Bangku </a>Plastik\r\n</p>\r\n<p>\r\n	     bangku plastik dibuat dalam beberapa cara, semuanya melibatkan cetakan  logam yang  diukir ke dalam bentuk yang diinginkan. Salah satu bentuk yang paling  populer dari furnitur molding dikenal sebagai molding rotasi, di mana  cetakan logam besar disuntikkan dengan bubuk polimer plastik . Hal ini  kemudian dipanaskan sampai titik leleh, dan cetakan mekanis berubah  tiga-dimensi untuk merata mendistribusikan polimer  ke dalam cetakan. Setelah beberapa menit berputar, cetakan mendingin  dan rotasi berhenti. Cetakan dibuka dan kursi, baru benar-benar hampa  dihapus.<br />\r\n	      Injection molding merupakan metode pembuatan furniture plastik. Sekali lagi, cetakan logam yang digunakan, tapi kali ini  hasilnya tidak plastik berongga tapi padat. Jenis cetakan tidak  berputar, tetapi polimer dipanaskan pada tingkat yang telah ditentukan  dan suhu. Mereka kemudian dituangkan ke dalam cetakan dan didinginkan.  Sebuah jumlah tertentu presisi harus digunakan dengan jenis proses  pencetakan karena jika plastik dituangkan terlalu lambat, itu akan  terlalu cepat kering. Jika dituangkan terlalu cepat, hasilnya tidak akan  menjadi konfigurasi seragam plastik. Jika dilakukan dengan benar,  hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku </a>plastik tanpa jahitan, dibentuk semua dalam satu  potong.\r\n</p>\r\n<p>\r\n	     Injection molding juga bisa dilakukan dengan bantuan gas yang ditiup  pada kecepatan tinggi di dalam cetakan, mendorong plastik cair dari  bagian-bagian tertentu dari cetakan. Hal ini menciptakan saluran dalam  bentuk plastik yang membuat kursi yang jauh lebih ringan, sementara pada  saat yang sama mempertahankan kekuatannya. Semua aspek lain dari  injection molding tetap sama, tapi hasilnya adalah <a href="http://oden-houseware.com/item-category/Bangku_329.html">bangku</a> dengan beberapa  bagian yang berlubang dan bagian lainnya yang solid. Plastik yang  digunakan dalam proses pembuatan kursi biasanya gabungan dari beberapa  jenis plastik semua dicampur bersama-sama selama bagian pemanasan dari  proses pencetakan. Hal ini membuat kursi jauh lebih kuat daripada  mungkin jika hanya satu jenis plastik yang terlibat.\r\n</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `pg_faq`
--

DROP TABLE IF EXISTS `pg_faq`;
CREATE TABLE `pg_faq` (
  `id` int(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_faq`
--

INSERT INTO `pg_faq` (`id`, `status`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pg_faq_description`
--

DROP TABLE IF EXISTS `pg_faq_description`;
CREATE TABLE `pg_faq_description` (
  `id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_faq_description`
--

INSERT INTO `pg_faq_description` (`id`, `faq_id`, `language_id`, `question`, `answer`) VALUES
(1, 1, 1, 'test tanya indo', '<p>\r\n	test jawab indo\r\n</p>'),
(2, 1, 2, 'test tanya?', '<p>\r\n	test jawab 1\r\n</p>'),
(3, 2, 2, 'test question 1', '<p>\r\n	test answer 1\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `pg_list_bank`
--

DROP TABLE IF EXISTS `pg_list_bank`;
CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_list_bank`
--

INSERT INTO `pg_list_bank` (`id`, `nama`, `label`) VALUES
(1, 'bank_mega', 'Bank Mega'),
(2, 'bca', 'BCA'),
(3, 'bca_syariah', 'BCA Syariah'),
(4, 'bii', 'BII'),
(5, 'bni', 'BNI'),
(6, 'bni_syariah', 'BNI Syariah'),
(7, 'bri', 'BRI'),
(8, 'bri_syariah', 'BRI Syariah'),
(9, 'cimb_niaga', 'CIMB Niaga'),
(10, 'cimb_niaga_syariah', 'CIMB Niaga Syariah'),
(11, 'citibank', 'Citibank'),
(12, 'danamon', 'Danamon'),
(13, 'hsbc', 'HSBC'),
(14, 'mandiri', 'Mandiri'),
(15, 'mandiri_syariah', 'Mandiri Syariah'),
(16, 'money_gram', 'Money Gram'),
(17, 'muamalat', 'Muamalat'),
(18, 'paypal', 'Paypal'),
(19, 'permata', 'Permata'),
(20, 'visa', 'Visa'),
(21, 'western_union', 'Western Union');

-- --------------------------------------------------------

--
-- Table structure for table `pg_pages`
--

DROP TABLE IF EXISTS `pg_pages`;
CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `pg_pages_description`
--

DROP TABLE IF EXISTS `pg_pages_description`;
CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Table structure for table `pg_testimonial`
--

DROP TABLE IF EXISTS `pg_testimonial`;
CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_testimonial`
--

INSERT INTO `pg_testimonial` (`id`, `name`, `email`, `testimonial`, `status`, `date`) VALUES
(1, 'Ibnu', 'ibnu@markdesign.net', '', 1, '2014-07-14 09:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `pg_testimonial_description`
--

DROP TABLE IF EXISTS `pg_testimonial_description`;
CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_testimonial_description`
--

INSERT INTO `pg_testimonial_description` (`id`, `testimonial_id`, `language_id`, `content`) VALUES
(8, 1, 2, 'test'),
(7, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `pg_type_letak`
--

DROP TABLE IF EXISTS `pg_type_letak`;
CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_type_letak`
--

INSERT INTO `pg_type_letak` (`id`, `letak`, `page_id`, `tampil`, `sort`) VALUES
(177, 'header', 2, 1, 1),
(178, 'header', 6, 1, 2),
(179, 'header', 4, 1, 3),
(180, 'header', 1, 0, 4),
(181, 'header', 3, 0, 5),
(182, 'header', 5, 0, 6),
(183, 'header', 7, 0, 7),
(184, 'header', 8, 0, 8),
(185, 'footer', 3, 1, 1),
(186, 'footer', 6, 1, 2),
(187, 'footer', 4, 1, 3),
(188, 'footer', 1, 0, 4),
(189, 'footer', 2, 0, 5),
(190, 'footer', 5, 0, 6),
(191, 'footer', 7, 0, 7),
(192, 'footer', 8, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand`
--

DROP TABLE IF EXISTS `prd_brand`;
CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_brand`
--

INSERT INTO `prd_brand` (`id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(1, '', 1, '2017-02-08 14:17:22', '2017-02-08 14:17:22', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(2, '', 1, '2017-02-08 14:17:44', '2017-02-08 14:17:44', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand_description`
--

DROP TABLE IF EXISTS `prd_brand_description`;
CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_brand_description`
--

INSERT INTO `prd_brand_description` (`id`, `brand_id`, `language_id`, `title`, `content`) VALUES
(1, 1, 2, 'SINGLE ORIGIN', ''),
(2, 2, 2, 'BLEND', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category`
--

DROP TABLE IF EXISTS `prd_category`;
CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `image2`, `image3`, `type`, `data`) VALUES
(17, 0, 6, 'dd384-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(18, 0, 7, 'da29b-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(19, 0, 8, '164f6-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(16, 0, 5, 'c5306-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(15, 0, 4, 'b48c1-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(14, 0, 3, '87b95-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(13, 0, 2, '16fd3-ill-picts_landingProducts.jpg', '', '', 'category', ''),
(12, 0, 1, 'f5f81-ill-picts_landingProducts.jpg', '', '', 'category', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category_description`
--

DROP TABLE IF EXISTS `prd_category_description`;
CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `desc`, `data`) VALUES
(5, 1, 2, 'OUR COFFEE', 'Stumble Upon’s Single Origin & Special Blends coffee beans that you should try!', ''),
(9, 2, 2, 'OTHERS', 'Stumble Upon is a lot more than just coffee, browse our whole lot more products here.', ''),
(8, 3, 2, 'EQUIPMENTS', 'Get your gears, for professional restaurant, cafe or even the home barista. Find it all here.', ''),
(18, 4, 2, 'Cat', '', ''),
(19, 5, 2, 'Outdoor', '', ''),
(20, 6, 2, 'Taman', '', ''),
(21, 7, 2, 'Dapur dan Rumah Tangga', '', ''),
(22, 8, 2, 'Tempat Penyimpanan', '', ''),
(23, 9, 2, 'Alat Pertukangan', '', ''),
(24, 10, 2, 'Saniter', '', ''),
(25, 11, 2, 'Kelistrikan', '', ''),
(34, 12, 2, 'NEW ARRIVAL', '', ''),
(35, 13, 2, 'PRICE DROP', '', ''),
(36, 14, 2, 'MEN', '', ''),
(37, 15, 2, 'WOMEN', '', ''),
(38, 16, 2, 'GIRLS', '', ''),
(39, 17, 2, 'JUNIOR', '', ''),
(40, 18, 2, 'TODDLER', '', ''),
(41, 19, 2, 'SPORTS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category_product`
--

DROP TABLE IF EXISTS `prd_category_product`;
CREATE TABLE `prd_category_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_category_product`
--

INSERT INTO `prd_category_product` (`id`, `category_id`, `product_id`) VALUES
(11, 1, 1),
(138, 19, 13),
(137, 17, 13),
(99, 13, 14),
(98, 17, 14),
(97, 19, 15),
(96, 14, 15),
(95, 14, 16),
(94, 16, 16),
(136, 16, 13),
(105, 12, 12),
(104, 14, 12),
(103, 17, 12),
(108, 13, 11),
(107, 12, 11),
(106, 17, 11),
(111, 12, 10),
(110, 17, 10),
(109, 16, 10),
(114, 13, 9),
(113, 12, 9),
(112, 17, 9),
(117, 12, 8),
(116, 14, 8),
(115, 16, 8),
(120, 13, 7),
(119, 12, 7),
(118, 17, 7),
(123, 12, 6),
(122, 17, 6),
(121, 16, 6),
(126, 13, 5),
(125, 12, 5),
(124, 17, 5),
(129, 19, 4),
(128, 12, 4),
(127, 17, 4),
(132, 13, 3),
(131, 14, 3),
(130, 17, 3),
(135, 12, 2),
(134, 14, 2),
(133, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prd_product`
--

DROP TABLE IF EXISTS `prd_product`;
CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` decimal(11,2) NOT NULL,
  `harga_coret` decimal(11,2) NOT NULL,
  `harga_retail` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL,
  `tag` varchar(200) NOT NULL,
  `filter` text NOT NULL,
  `onsale` int(11) NOT NULL,
  `rekomendasi` int(11) NOT NULL,
  `turun_harga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_product`
--

INSERT INTO `prd_product` (`id`, `category_id`, `brand_id`, `image`, `kode`, `harga`, `harga_coret`, `harga_retail`, `stock`, `berat`, `terbaru`, `terlaris`, `out_stock`, `status`, `date`, `date_input`, `date_update`, `data`, `tag`, `filter`, `onsale`, `rekomendasi`, `turun_harga`) VALUES
(4, 11, 0, 'e2d69-kraken_sport_black_1_.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:00:31', '2017-07-11 14:00:31', '2017-08-01 14:45:26', 'N;', ', category=JUNIOR, category=17, category=NEW ARRIVAL, category=12, category=SPORTS, category=19', '||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12||category=SPORTS||category=19', 1, 0, 1),
(5, 11, 0, 'dd3be-jonas_white_c._red_5.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:00:47', '2017-07-11 14:00:47', '2017-08-01 14:45:22', 'N;', ', category=JUNIOR, category=17, category=NEW ARRIVAL, category=12, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12||category=PRICE DROP||category=13', 1, 0, 1),
(2, 11, 1, '24ae5-5_28.jpg', 'ET-1200', '200000.00', '300000.00', 0, -1, 6000, 1, 1, 1, 1, '2017-01-27 14:47:15', '2017-01-27 14:47:15', '2017-08-01 14:45:29', 'N;', ', category=JUNIOR, category=17, category=MEN, category=14, category=NEW ARRIVAL, category=12', '||category=JUNIOR||category=17||category=MEN||category=14||category=NEW ARRIVAL||category=12', 0, 1, 1),
(3, 11, 0, 'eabd4-ex-pictures_big-products.jpg', 'lorem1', '500000.00', '600000.00', 0, -1, 2000, 1, 1, 0, 1, '2017-07-07 14:05:37', '2017-07-07 14:05:37', '2017-08-01 14:45:27', 'N;', ', category=JUNIOR, category=17, category=MEN, category=14, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=MEN||category=14||category=PRICE DROP||category=13', 1, 0, 1),
(6, 11, 0, 'c840a-5_28.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:00:54', '2017-07-11 14:00:54', '2017-08-01 14:45:20', 'N;', ', category=GIRLS, category=16, category=JUNIOR, category=17, category=NEW ARRIVAL, category=12', '||category=GIRLS||category=16||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12', 1, 0, 1),
(7, 11, 0, 'bda65-jonas_white_c._red_5.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:00', '2017-07-11 14:01:00', '2017-08-01 14:44:47', 'N;', ', category=JUNIOR, category=17, category=NEW ARRIVAL, category=12, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12||category=PRICE DROP||category=13', 1, 0, 1),
(8, 11, 0, '9a045-kraken_sport_black_1_.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:05', '2017-07-11 14:01:05', '2017-08-01 14:44:46', 'N;', ', category=GIRLS, category=16, category=MEN, category=14, category=NEW ARRIVAL, category=12', '||category=GIRLS||category=16||category=MEN||category=14||category=NEW ARRIVAL||category=12', 1, 0, 1),
(9, 11, 0, 'a0caf-ex-pictures_big-products.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:13', '2017-07-11 14:01:13', '2017-08-01 14:44:44', 'N;', ', category=JUNIOR, category=17, category=NEW ARRIVAL, category=12, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12||category=PRICE DROP||category=13', 1, 0, 1),
(10, 11, 0, 'c23fb-kraken_sport_black_1_.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:21', '2017-07-11 14:01:21', '2017-08-01 14:44:43', 'N;', ', category=GIRLS, category=16, category=JUNIOR, category=17, category=NEW ARRIVAL, category=12', '||category=GIRLS||category=16||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12', 1, 0, 1),
(11, 11, 0, '26d43-jonas_white_c._red_5.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:39', '2017-07-11 14:01:39', '2017-08-01 14:44:41', 'N;', ', category=JUNIOR, category=17, category=NEW ARRIVAL, category=12, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=NEW ARRIVAL||category=12||category=PRICE DROP||category=13', 1, 0, 1),
(12, 11, 0, 'b6978-5_28.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:01:56', '2017-07-11 14:01:56', '2017-08-01 14:44:41', 'N;', ', category=JUNIOR, category=17, category=MEN, category=14, category=NEW ARRIVAL, category=12', '||category=JUNIOR||category=17||category=MEN||category=14||category=NEW ARRIVAL||category=12', 1, 0, 1),
(13, 11, 0, 'a8e37-kraken_sport_black_1_.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:02:02', '2017-07-11 14:02:02', '2017-08-01 15:19:17', 'N;', ', category=GIRLS, category=16, category=JUNIOR, category=17, category=SPORTS, category=19', '||category=GIRLS||category=16||category=JUNIOR||category=17||category=SPORTS||category=19', 1, 0, 1),
(14, 11, 0, 'e8577-jonas_white_c._red_5.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:02:06', '2017-07-11 14:02:06', '2017-08-01 14:44:38', 'N;', ', category=JUNIOR, category=17, category=PRICE DROP, category=13', '||category=JUNIOR||category=17||category=PRICE DROP||category=13', 1, 0, 1),
(15, 11, 0, '1cc8c-ex-pictures_big-products.jpg', 'lorem1', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:02:11', '2017-07-11 14:02:11', '2017-08-01 14:44:36', 'N;', ', category=MEN, category=14, category=SPORTS, category=19', '||category=MEN||category=14||category=SPORTS||category=19', 1, 0, 1),
(16, 12, 0, '32c3b-ex-pictures_big-products.jpg', 'GB-00001', '500000.00', '600000.00', 0, 0, 2000, 1, 1, 0, 1, '2017-07-11 14:02:15', '2017-07-11 14:02:15', '2017-08-01 14:44:34', 'N;', 'NEW ARRIVAL, category=GIRLS, category=16, category=MEN, category=14', 'NEW ARRIVAL||category=GIRLS||category=16||category=MEN||category=14', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_attributes`
--

DROP TABLE IF EXISTS `prd_product_attributes`;
CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_product_attributes`
--

INSERT INTO `prd_product_attributes` (`id`, `id_str`, `product_id`, `attribute`, `stock`, `price`) VALUES
(39, 3, 16, '41', 10, 500000),
(38, 1, 16, '40', 10, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_color`
--

DROP TABLE IF EXISTS `prd_product_color`;
CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_description`
--

DROP TABLE IF EXISTS `prd_product_description`;
CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_product_description`
--

INSERT INTO `prd_product_description` (`id`, `product_id`, `language_id`, `name`, `subtitle`, `desc`, `meta_title`, `meta_desc`, `meta_key`, `note`) VALUES
(15, 1, 2, 'Ipsum dolor', 'Lime, Flower, Dark Chocolate', '<p>\r\n	      This is by far our most best coffee blend! This blend is our best   All-rounder version coffee blend that Australian market going to love   easily.\r\n</p>\r\n<p>\r\n	      What you expect is the chocolaty feel tasting properties,  although  it doesn’t contain any cacao. This complex blend consist of  beans from  Indonesia and African that when combined can create that  chocolate  taste.\r\n</p>', '', '', '', '<p>\r\n	      By Roasting these 5 single origin coffee beans separately we allow   for the full complexity of the flavours to come through. You will notice   hints of apricot and toffee followed by a warm sweet caramel taste   hence its name “Caramello”. Whilst this is a great coffee blend for all   different types of filters and plungers, we feel it brings out the best   flavours in the espresso based drinks.\r\n</p>\r\n<p>\r\n	      Best in: Milk based coffees<br />\r\n	                 Body: Full<br />\r\n	                 Acidity: Medium<br />\r\n	                 Roast: Medium<br />\r\n	                 Notable flavours: Apricot, Toffee, with a sweet Caramel taste that lingers in your mouth.\r\n</p>'),
(104, 2, 2, 'Aldo Genset ET-1200', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue</li>\r\n	<li>Consectetur adipiscing elit lacinia augue</li>\r\n	<li>Mauris del amet amet adipiscing elit</li>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue</li>\r\n	<li>Adipiscing elit lacinia augue</li>\r\n</ul>', '', '', '', ''),
(103, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(102, 4, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(101, 5, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(100, 6, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(99, 7, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(98, 8, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(97, 9, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(96, 10, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(95, 11, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(94, 12, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(105, 13, 2, 'Lorem ipsum dolor sit amet, ', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(92, 14, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(91, 15, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit lacinia augue', '', '<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, accusamus.</li>\r\n	<li>Pariatur voluptate, debitis cum architecto, odit ratione enim. Fuga, possimus?</li>\r\n	<li>Animi incidunt repellat illum quo debitis iste nesciunt sunt molestias.</li>\r\n	<li>Velit ad, quis harum labore odit adipisci maxime illum recusandae</li>\r\n	<li>In eius, quisquam officia accusamus. Natus rem, labore vel dolore.</li>\r\n	<li>Harum cupiditate nobis et dicta fuga obcaecati quod sapiente eius.</li>\r\n	<li>Alias exercitationem qui id deleniti quos odio, doloribus facilis aspernatur.</li>\r\n	<li>Accusamus eveniet vero inventore numquam rerum modi quos, eligendi iusto.</li>\r\n	<li>Saepe cumque quisquam maiores quas id facilis sit tenetur quo!</li>\r\n	<li>Fuga itaque ea fugit omnis architecto praesentium consequuntur quo ullam.</li>\r\n</ul>', '', '', '', ''),
(90, 16, 2, 'GWEN BLACK', 'Di sini adalah kata kata marketing untuk sepatu ini. Di sini sangat penting untuk menggunakan keyword keyword sepatu / precise shoes / nama produk itu sendiri. Kata kata ini pegang peranan dalam SEO.', '<p>\r\n	               produk\r\n</p>', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_image`
--

DROP TABLE IF EXISTS `prd_product_image`;
CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikasi`
--

DROP TABLE IF EXISTS `sertifikasi`;
CREATE TABLE `sertifikasi` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `images_icon` varchar(225) NOT NULL,
  `images_big` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sertifikasi`
--

INSERT INTO `sertifikasi` (`id`, `name`, `description`, `images_icon`, `images_big`) VALUES
(2, 'Agen tunggal resmi di Indonesia', '', 'edf8c-XADO-certificate-thumbc0cdba.jpg', 'edf8c-XADO-certificate-10bef2.jpg'),
(3, 'Technischer Uberwachungs-Verein', 'The certificate states the efficiency and certifies the XADO gel-revitalizant for gasoline engines effect', '63a71-XADO-certificate-thumb6f863e.jpg', '1af50-XADO-certificate-d20515.jpg'),
(4, 'Kristen Petra University Surabaya Certificate', 'XADO Gel For Diesel Engine', '97272-XADO-certificate-thumb0c1964.jpg', '4c78b-XADO-certificate-efb9bb.jpg'),
(6, 'API certificate', 'API - American Petroleum Institute', 'b1712-XADO-certificate-thumbf05da4.jpg', 'b1712-XADO-certificate-0444a4.jpg'),
(7, 'MAN Certificate', 'Approval For Engine Oil XADO 80W-90 GL-3/4/5', 'f28aa-XADO-certificate-thumbbb60d6.gif', 'f28aa-XADO-certificate-a0d9dd.jpg'),
(8, 'MAN Certificate', 'Approval For Engine Oil XADO 10W-40 Diesel Truck', 'a23f8-XADO-certificate-thumbbb60d6.gif', 'a23f8-XADO-certificate-fecbed.jpg'),
(9, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 SL/CI-4 & XADO 10W-40 SL/CI-4', '2942f-XADO-certificate-thumbd89b2a.jpg', '2942f-XADO-certificate-db514b.jpg'),
(10, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 CI-4 Diesel', '931e7-XADO-certificate-thumbd89b2a.jpg', '931e7-XADO-certificate-e931a6.jpg'),
(11, 'VOLVO Certificate', 'Approval For Engine Oil XADO Atomic Oil 15W-40 SM/CJ-4', 'b80dc-XADO-certificate-thumbd89b2a.jpg', 'b80dc-XADO-certificate-120754.jpg'),
(12, 'Daimler-Benz Certificate', 'Approval For Engine Oil XADO 5W-40 SM/CF', 'ab745-XADO-certificate-thumba2f7af.jpg', 'ab745-XADO-certificate-f97b75.jpg'),
(13, 'General Motor Certificate', 'Approval For Engine Oil XADO 5W-40 City Line SL/CF', 'fdfc0-XADO-certificate-thumb109fe4.jpg', 'fdfc0-XADO-certificate-a26364.jpg'),
(14, 'BMW certificate', 'Approval for Engine Oil "XADO 5W-40 SM/CF"', '90b56-XADO-certificate-thumbc23299.jpg', '90b56-XADO-certificate-1a4bd9.jpg'),
(15, 'VolksWagen Certificate', 'Approval For Engine Oil XADO SL/CF SAE 5W-40', 'cfe0e-XADO-certificate-thumbc44858.jpg', 'cfe0e-XADO-certificate-09c146.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'Email Form', 'info@preciseshoes.com', 'text', 0, 'data', 'n', 1),
(13, 'tax', 'Tax', '11', 'text', 0, 'data', 'n', 1),
(147, 'home_banner_image_1', 'Image', 'e82284ea27banner_atHome_1.jpg', 'image', 0, 'data', 'n', 0),
(148, 'home_banner_url_1', 'URL', '', 'text', 0, 'data', 'y', 0),
(149, 'home_banner_image_2', 'Image', '1000f82476banner_atHome_2.jpg', 'image', 0, 'data', 'n', 0),
(150, 'home_banner_url_2', 'URL', '', 'text', 0, 'data', 'y', 0),
(151, 'home_banner_image_3', 'Image', '8df04369e4banner_atHome_3.jpg', 'image', 0, 'data', 'n', 0),
(152, 'home_banner_url_3', 'URL', '', 'text', 0, 'data', 'y', 0),
(153, 'home_banner_image_4', 'Image', 'c8694b8106banner_atHome_4.jpg', 'image', 0, 'data', 'n', 0),
(154, 'home_banner_url_4', 'URL', '', 'text', 0, 'data', 'y', 0),
(155, 'home_banner_image_5', 'Image', '9572c68166banners_middle_p1.jpg', 'image', 0, 'data', 'n', 0),
(156, 'home_banner_url_5', 'URL', '', 'text', 0, 'data', 'y', 0),
(157, 'home_banner_image_6', 'Image', '6e91c89266banners_middle_p2.jpg', 'image', 0, 'data', 'n', 0),
(158, 'home_banner_url_6', 'URL', '', 'text', 0, 'data', 'y', 0),
(159, 'about_hero_image', 'Image', 'deb5a076e1ill-about-1.jpg', 'image', 0, 'data', 'n', 0),
(160, 'about_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(161, 'about_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(162, 'about_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(163, 'about_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(164, 'about_commitment', 'Commitment', '', 'text', 0, 'data', 'y', 0),
(165, 'about_visi', 'Visi', '', 'text', 0, 'data', 'y', 0),
(166, 'about_misi', 'Misi', '', 'text', 0, 'data', 'y', 0),
(167, 'contact_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(168, 'contact_subtitle', 'Subtitle', '', 'text', 0, 'data', 'y', 0),
(169, 'contact_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(170, 'contact_phone', 'Phone', '081 6540 7465', 'text', 0, 'data', 'n', 0),
(171, 'contact_email', 'Email Website', 'info@preciseshoes.com', 'text', 0, 'data', 'n', 0),
(172, 'url_facebook', 'URL Facebook', '#', 'text', 0, 'data', 'n', 0),
(173, 'url_twitter', 'URL Twitter', '#', 'text', 0, 'data', 'n', 0),
(174, 'url_instagram', 'URL Instagram', '#', 'text', 0, 'data', 'n', 0),
(175, 'about_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(176, 'about_image', 'Image', 'e57a316208pict-about-2.jpg', 'image', 0, 'data', 'n', 0),
(177, 'about_section2_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(178, 'about_section2_title_1', 'Title', '', 'text', 0, 'data', 'y', 0),
(179, 'about_section2_image_1', 'Image', 'b1d9d766bdabout-btm-1.jpg', 'image', 0, 'data', 'n', 0),
(180, 'about_section2_title_2', 'Title', '', 'text', 0, 'data', 'y', 0),
(181, 'about_section2_image_2', 'Image', '0076d84f80about-btm-2.jpg', 'image', 0, 'data', 'n', 0),
(182, 'about_section2_title_3', 'Title', '', 'text', 0, 'data', 'y', 0),
(183, 'about_section2_image_3', 'Image', '9f30f8cc5eabout-btm-3.jpg', 'image', 0, 'data', 'n', 0),
(184, 'about_section2_title_4', 'Title', '', 'text', 0, 'data', 'y', 0),
(185, 'about_section2_image_4', 'Image', '7ee414c877about-btm-4.jpg', 'image', 0, 'data', 'n', 0),
(186, 'contact_hero_image', 'Image', '9d5f1b9329ill-storelocator-1.jpg', 'image', 0, 'data', 'n', 0),
(187, 'contact_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(188, 'contact_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(189, 'address_hero_image', 'Image', 'dd0316aa74ill-storelocator-1.jpg', 'image', 0, 'data', 'n', 0),
(190, 'address_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(191, 'address_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(192, 'address_hero_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(193, 'promotion_hero_image', 'Image', 'd47f97b8d7ill-storelocator-1.jpg', 'image', 0, 'data', 'n', 0),
(194, 'promotion_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(195, 'promotion_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(196, 'promotion_hero_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(197, 'career_hero_image', 'Image', '8c51fb9a55ill-storelocator-1.jpg', 'image', 0, 'data', 'n', 0),
(198, 'career_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(199, 'career_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(200, 'career_content', 'Content', '', 'text', 0, 'data', 'y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting_description`
--

DROP TABLE IF EXISTS `setting_description`;
CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(84, 1, 2, 'Products - Aldo - Tools &amp; Hardware'),
(85, 3, 2, 'Products - Aldo - Tools &amp; Hardware'),
(86, 2, 2, 'Products - Aldo - Tools &amp; Hardware'),
(87, 160, 2, 'ABOUT PRECISE SHOES'),
(88, 161, 2, 'Precise shoes terus berkembang dan melahirkan berbagai kreatifitias di dunia fashion yang terus berkembang dan berubah. Sepatu dari Precise shoes dibuat dengan semangat dan keunikan yang menjadikannya tampil beda dan bergaya.'),
(89, 162, 2, 'Generasi muda, sumber inovasi desain yang tak terbatas'),
(90, 163, 2, '<p>\r\n	    Dengan meningkatkan inovasi penjualan dengan online shopping,  Precise shoes makin mendekatkan diri dengan para penggemar dan semakin  terhubung dengan beragam media sosial.\r\n</p>\r\n<p>\r\n	    Precise shoes memiliki sumber inspirasi yang tidak pernah  meredup, yakni generasi muda dunia dan terkhususnya generasi muda  Indonesia. Berbagai jenis olah raga, gaya fashion jalanan metropolitan  dan pengaruh dari trend dunia telah terus diadopsi oleh Precise sehingga  dapat mengakomodir para penggemar sepatu Precise dengan rancangan yang  bergaya dan menjadi trend setter.\r\n</p>'),
(91, 164, 2, '<p>\r\n	 Kami berkomitmen untuk memberikan produk berkualitas dan berkompetisi di  pasar. Produk yang kami persembahkan telah mengalami berbagai  pengkajian untuk mendapatkan hasil terbaik dari proses produksi serta  asembling / manufaktur yang berstandar dunia.\r\n</p>'),
(92, 165, 2, '<p>\r\n	 Aldo Tools &amp; Hardware untuk menjadi sebuah brand berkelas  internasional yang bersaing dengan produk impor dalam kualitas  manufaktur produk serta mutu dan kehandalannya.\r\n</p>'),
(93, 166, 2, '<p>\r\n	 Terus menerus memupuk dan mendatangkan kepercayaan serta kepuasan kepada  para pelanggan dengan pembuktian kualitas produk dari waktu ke waktu,  serta konsisten dalam perkembangan produk.\r\n</p>'),
(94, 167, 2, 'Hubungi Aldo Tools & Hardware'),
(95, 168, 2, 'Kami siap membantu segala kebutuhan anda akan informasi produk maupun berbagai kesempatan untuk bekerjasama.'),
(96, 169, 2, '<p>\r\n	  Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan<br />\r\n	  segera merespon anda kembali.\r\n</p>'),
(97, 148, 2, '#'),
(98, 150, 2, '#'),
(99, 152, 2, '#'),
(100, 154, 2, '#'),
(101, 156, 2, '#'),
(102, 158, 2, '#'),
(103, 175, 2, 'Kami percaya bahwa desain, kualitas dan ketekunan pada akhirnya akan memenangkan hati para pelanggan. Perlahan namun pasti, Precise shoes menjadi produk dalam negeri Indonesia favorit masyarakat luas, terutama pada generasi muda penggemar sepatu sports / sepatu casual.'),
(104, 177, 2, 'Pilar penopang kesuksesan Precise shoes\r\nsejak tahun 1998'),
(105, 178, 2, 'Tim desain yang handal, penuh kreatifitas, selalu beregenerasi dan berkreasi tanpa henti.'),
(106, 180, 2, 'Peralatan dan teknologi manufaktur yang terkini dalam proses produksi Precise.'),
(107, 182, 2, 'Pengecekan dan kontrol kualitas yang ekstra dalam setiap batch produksi.'),
(108, 184, 2, 'Anda sebagai penggemar, sekaligus menjadi panduan arah gaya dan selera untuk Precise.'),
(109, 187, 2, 'CONTACT PRECISE SHOES'),
(110, 188, 2, 'Untuk informasi lebih lanjut tentang produk dan promosi, silahkan hubungi Precise Shoes hotline di 081 6540 7465 atau email kami di info@preciseshoes.com'),
(111, 190, 2, 'PRECISE SHOES STORE LOCATOR'),
(112, 191, 2, 'Kami akan membantu anda menemukan toko terdekat dengan anda.'),
(113, 192, 2, 'Jaringan distribusi dan penjualan Precise Shoes telah mencakup berbagai area penting di kota-kota besar di Indonesia. Silahkan mencari berdasar area berikut.'),
(114, 194, 2, 'PROMOTION AT PRECISE SHOES'),
(115, 195, 2, 'Ingin mendapatkan Precise shoesmu dengan harga istimewa, gabung bersama instagram @preciseshoes atau selalu pantau halaman promo ini!'),
(116, 196, 2, ''),
(117, 198, 2, 'CAREER PRECISE SHOES'),
(118, 199, 2, 'Mari bergabung dengan perusahan nasional yang memiliki potensi pasar tak terbatas di Indonesia maupun mancanegara.'),
(119, 200, 2, '<p>\r\n	 Anda akan menjadi bagian dari sebuah perusahaan nasional dengan  potensi pengembangan pasar hingga ke luar negeri. Dengan budaya  perusahaan yang merangsang seseorang untuk mengekspresikan dirinya dan  mendukung tiap personel untuk menonjol dengan inisiatif dan kreatifitas,  Precise akan menjadi tempat di mana anda akan bersinar dan memiliki  jenjang karir pasti.\r\n</p>\r\n<p>\r\n	 Jika anda seorang yang gigih, ulet, jujur, tidak mengenal  kata menyerah dan siap menerima tantangan, maka anda adalah kandidat  sempurna untuk Precise. Silahkan tunjukkan kompetensi anda dan mengapa  kami perlu merekrut anda.\r\n</p>\r\n<p>\r\n	 Silahkan mengirim email ke alamat di bawah ini untuk mengirimkan lamaran.<br />\r\n	 <a href="mailto:career@preciseshoes.com">career@preciseshoes.com</a>\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `shp_shipping_price`
--

DROP TABLE IF EXISTS `shp_shipping_price`;
CREATE TABLE `shp_shipping_price` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shp_shipping_price`
--

INSERT INTO `shp_shipping_price` (`id`, `type`, `weight`, `price`) VALUES
(1, 1, 1, '20.0000'),
(2, 1, 2, '20.0000'),
(3, 1, 0, '20.0000'),
(4, 1, 3, '20.0000'),
(5, 1, 4, '20.0000'),
(6, 1, 5, '20.0000'),
(7, 1, 6, '20.0000'),
(8, 1, 7, '20.0000'),
(9, 1, 8, '20.0000'),
(10, 1, 9, '20.0000'),
(11, 1, 10, '20.0000'),
(12, 1, 11, '20.0000'),
(13, 1, 12, '20.0000'),
(14, 1, 13, '20.0000'),
(15, 1, 14, '20.0000'),
(16, 1, 15, '20.0000'),
(17, 1, 16, '20.0000'),
(18, 1, 17, '20.0000'),
(19, 1, 18, '20.0000'),
(20, 1, 19, '20.0000'),
(21, 1, 20, '40.0000'),
(22, 1, 21, '40.0000'),
(23, 1, 22, '40.0000'),
(24, 1, 23, '40.0000'),
(25, 1, 24, '40.0000'),
(26, 1, 25, '40.0000'),
(27, 1, 26, '40.0000'),
(28, 1, 27, '40.0000'),
(29, 1, 28, '40.0000'),
(30, 1, 29, '40.0000'),
(31, 1, 30, '40.0000'),
(32, 1, 31, '40.0000'),
(33, 1, 32, '40.0000'),
(34, 1, 33, '40.0000'),
(35, 1, 34, '40.0000'),
(36, 1, 35, '40.0000'),
(37, 1, 36, '40.0000'),
(38, 1, 37, '40.0000'),
(39, 1, 38, '40.0000'),
(40, 1, 39, '40.0000'),
(41, 1, 40, '60.0000'),
(42, 1, 41, '60.0000'),
(43, 1, 42, '60.0000'),
(44, 1, 43, '60.0000'),
(45, 1, 44, '60.0000'),
(46, 1, 45, '60.0000'),
(47, 1, 46, '60.0000'),
(48, 1, 47, '60.0000'),
(49, 1, 48, '60.0000'),
(50, 1, 49, '60.0000'),
(51, 1, 50, '60.0000'),
(52, 1, 51, '60.0000'),
(53, 1, 52, '60.0000'),
(54, 1, 53, '60.0000'),
(55, 1, 54, '60.0000'),
(56, 1, 55, '60.0000'),
(57, 1, 56, '60.0000'),
(58, 1, 57, '60.0000'),
(59, 1, 58, '60.0000'),
(60, 1, 59, '60.0000'),
(61, 1, 60, '80.0000'),
(62, 1, 61, '80.0000'),
(63, 1, 62, '80.0000'),
(64, 1, 63, '80.0000'),
(65, 1, 64, '80.0000'),
(66, 1, 65, '80.0000'),
(67, 1, 66, '80.0000'),
(68, 1, 67, '80.0000'),
(69, 1, 68, '80.0000'),
(70, 1, 69, '80.0000'),
(71, 1, 70, '80.0000'),
(72, 1, 71, '80.0000'),
(73, 1, 72, '80.0000'),
(74, 1, 73, '80.0000'),
(75, 1, 74, '80.0000'),
(76, 1, 75, '80.0000'),
(77, 1, 76, '80.0000'),
(78, 1, 77, '80.0000'),
(79, 1, 78, '80.0000'),
(80, 1, 79, '80.0000'),
(81, 1, 80, '100.0000'),
(82, 1, 81, '100.0000'),
(83, 1, 82, '100.0000'),
(84, 1, 83, '100.0000'),
(85, 1, 84, '100.0000'),
(86, 1, 85, '100.0000'),
(87, 1, 86, '100.0000'),
(88, 1, 87, '100.0000'),
(89, 1, 88, '100.0000'),
(90, 1, 89, '100.0000'),
(91, 1, 90, '100.0000'),
(92, 1, 91, '100.0000'),
(93, 1, 92, '100.0000'),
(94, 1, 93, '100.0000'),
(95, 1, 94, '100.0000'),
(96, 1, 95, '100.0000'),
(97, 1, 96, '100.0000'),
(98, 1, 97, '100.0000'),
(99, 1, 98, '100.0000'),
(100, 1, 99, '100.0000'),
(101, 2, 0, '12.0000'),
(102, 2, 1, '12.0000'),
(103, 2, 2, '12.0000'),
(104, 2, 3, '12.0000'),
(105, 2, 4, '12.0000'),
(106, 2, 5, '12.0000'),
(107, 2, 6, '12.0000'),
(108, 2, 7, '12.0000'),
(109, 2, 8, '12.0000'),
(110, 2, 9, '12.0000'),
(111, 2, 10, '12.0000'),
(112, 2, 11, '12.0000'),
(113, 2, 12, '12.0000'),
(114, 2, 13, '12.0000'),
(115, 2, 14, '12.0000'),
(116, 2, 15, '12.0000'),
(117, 2, 16, '12.0000'),
(118, 2, 17, '12.0000'),
(119, 2, 18, '12.0000'),
(120, 2, 19, '12.0000'),
(121, 2, 20, '24.0000'),
(122, 2, 21, '24.0000'),
(123, 2, 22, '24.0000'),
(124, 2, 23, '24.0000'),
(125, 2, 24, '24.0000'),
(126, 2, 25, '24.0000'),
(127, 2, 26, '24.0000'),
(128, 2, 27, '24.0000'),
(129, 2, 28, '24.0000'),
(130, 2, 29, '24.0000'),
(131, 2, 30, '24.0000'),
(132, 2, 31, '24.0000'),
(133, 2, 32, '24.0000'),
(134, 2, 33, '24.0000'),
(135, 2, 34, '24.0000'),
(136, 2, 35, '24.0000'),
(137, 2, 36, '24.0000'),
(138, 2, 37, '24.0000'),
(139, 2, 38, '24.0000'),
(140, 2, 39, '24.0000'),
(141, 2, 40, '48.0000'),
(142, 2, 41, '48.0000'),
(143, 2, 42, '48.0000'),
(144, 2, 43, '48.0000'),
(145, 2, 44, '48.0000'),
(146, 2, 45, '48.0000'),
(147, 2, 46, '48.0000'),
(148, 2, 47, '48.0000'),
(149, 2, 48, '48.0000'),
(150, 2, 49, '48.0000'),
(151, 2, 50, '48.0000'),
(152, 2, 51, '48.0000'),
(153, 2, 52, '48.0000'),
(154, 2, 53, '48.0000'),
(155, 2, 54, '48.0000'),
(156, 2, 55, '48.0000'),
(157, 2, 56, '48.0000'),
(158, 2, 57, '48.0000'),
(159, 2, 58, '48.0000'),
(160, 2, 59, '48.0000'),
(161, 2, 60, '60.0000'),
(162, 2, 61, '60.0000'),
(163, 2, 62, '60.0000'),
(164, 2, 63, '60.0000'),
(165, 2, 64, '60.0000'),
(166, 2, 65, '60.0000'),
(167, 2, 66, '60.0000'),
(168, 2, 67, '60.0000'),
(169, 2, 68, '60.0000'),
(170, 2, 69, '60.0000'),
(171, 2, 70, '60.0000'),
(172, 2, 71, '60.0000'),
(173, 2, 72, '60.0000'),
(174, 2, 73, '60.0000'),
(175, 2, 74, '60.0000'),
(176, 2, 75, '60.0000'),
(177, 2, 76, '60.0000'),
(178, 2, 77, '60.0000'),
(179, 2, 78, '60.0000'),
(180, 2, 79, '60.0000'),
(181, 2, 80, '72.0000'),
(182, 2, 81, '72.0000'),
(183, 2, 82, '72.0000'),
(184, 2, 83, '72.0000'),
(185, 2, 84, '72.0000'),
(186, 2, 85, '72.0000'),
(187, 2, 86, '72.0000'),
(188, 2, 87, '72.0000'),
(189, 2, 88, '72.0000'),
(190, 2, 89, '72.0000'),
(191, 2, 90, '72.0000'),
(192, 2, 91, '72.0000'),
(193, 2, 92, '72.0000'),
(194, 2, 93, '72.0000'),
(195, 2, 94, '72.0000'),
(196, 2, 95, '72.0000'),
(197, 2, 96, '72.0000'),
(198, 2, 97, '72.0000'),
(199, 2, 98, '72.0000'),
(200, 2, 99, '72.0000'),
(201, 3, 0, '25.0000'),
(202, 3, 1, '25.0000'),
(203, 3, 2, '25.0000'),
(204, 3, 3, '25.0000'),
(205, 3, 4, '25.0000'),
(206, 3, 5, '25.0000'),
(207, 3, 6, '25.0000'),
(208, 3, 7, '25.0000'),
(209, 3, 8, '25.0000'),
(210, 3, 9, '25.0000'),
(211, 3, 10, '25.0000'),
(212, 3, 11, '25.0000'),
(213, 3, 12, '25.0000'),
(214, 3, 13, '25.0000'),
(215, 3, 14, '25.0000'),
(216, 3, 15, '25.0000'),
(217, 3, 16, '25.0000'),
(218, 3, 17, '25.0000'),
(219, 3, 18, '25.0000'),
(220, 3, 19, '25.0000'),
(221, 3, 20, '50.0000'),
(222, 3, 21, '50.0000'),
(223, 3, 22, '50.0000'),
(224, 3, 23, '50.0000'),
(225, 3, 24, '50.0000'),
(226, 3, 25, '50.0000'),
(227, 3, 26, '50.0000'),
(228, 3, 27, '50.0000'),
(229, 3, 28, '50.0000'),
(230, 3, 29, '50.0000'),
(231, 3, 30, '50.0000'),
(232, 3, 31, '50.0000'),
(233, 3, 32, '50.0000'),
(234, 3, 33, '50.0000'),
(235, 3, 34, '50.0000'),
(236, 3, 35, '50.0000'),
(237, 3, 36, '50.0000'),
(238, 3, 37, '50.0000'),
(239, 3, 38, '50.0000'),
(240, 3, 39, '50.0000'),
(241, 3, 40, '75.0000'),
(242, 3, 41, '75.0000'),
(243, 3, 42, '75.0000'),
(244, 3, 43, '75.0000'),
(245, 3, 44, '75.0000'),
(246, 3, 45, '75.0000'),
(247, 3, 46, '75.0000'),
(248, 3, 47, '75.0000'),
(249, 3, 48, '75.0000'),
(250, 3, 49, '75.0000'),
(251, 3, 50, '75.0000'),
(252, 3, 51, '75.0000'),
(253, 3, 52, '75.0000'),
(254, 3, 53, '75.0000'),
(255, 3, 54, '75.0000'),
(256, 3, 55, '75.0000'),
(257, 3, 56, '75.0000'),
(258, 3, 57, '75.0000'),
(259, 3, 58, '75.0000'),
(260, 3, 59, '75.0000'),
(261, 3, 60, '100.0000'),
(262, 3, 61, '100.0000'),
(263, 3, 62, '100.0000'),
(264, 3, 63, '100.0000'),
(265, 3, 64, '100.0000'),
(266, 3, 65, '100.0000'),
(267, 3, 66, '100.0000'),
(268, 3, 67, '100.0000'),
(269, 3, 68, '100.0000'),
(270, 3, 69, '100.0000'),
(271, 3, 70, '100.0000'),
(272, 3, 71, '100.0000'),
(273, 3, 72, '100.0000'),
(274, 3, 73, '100.0000'),
(275, 3, 74, '100.0000'),
(276, 3, 75, '100.0000'),
(277, 3, 76, '100.0000'),
(278, 3, 77, '100.0000'),
(279, 3, 78, '100.0000'),
(280, 3, 79, '100.0000'),
(281, 3, 80, '125.0000'),
(282, 3, 81, '125.0000'),
(283, 3, 82, '125.0000'),
(284, 3, 83, '125.0000'),
(285, 3, 84, '125.0000'),
(286, 3, 85, '125.0000'),
(287, 3, 86, '125.0000'),
(288, 3, 87, '125.0000'),
(289, 3, 88, '125.0000'),
(290, 3, 89, '125.0000'),
(291, 3, 90, '125.0000'),
(292, 3, 91, '125.0000'),
(293, 3, 92, '125.0000'),
(294, 3, 93, '125.0000'),
(295, 3, 94, '125.0000'),
(296, 3, 95, '125.0000'),
(297, 3, 96, '125.0000'),
(298, 3, 97, '125.0000'),
(299, 3, 98, '125.0000'),
(300, 3, 99, '125.0000'),
(301, 4, 1, '29.0000'),
(302, 4, 2, '29.0000'),
(303, 4, 0, '29.0000'),
(304, 4, 3, '29.0000'),
(305, 4, 4, '29.0000'),
(306, 4, 5, '29.0000'),
(307, 4, 6, '29.0000'),
(308, 4, 7, '29.0000'),
(309, 4, 8, '29.0000'),
(310, 4, 9, '29.0000'),
(311, 4, 10, '29.0000'),
(312, 4, 11, '29.0000'),
(313, 4, 12, '29.0000'),
(314, 4, 13, '29.0000'),
(315, 4, 14, '29.0000'),
(316, 4, 15, '29.0000'),
(317, 4, 16, '29.0000'),
(318, 4, 17, '29.0000'),
(319, 4, 18, '29.0000'),
(320, 4, 19, '29.0000'),
(321, 4, 20, '58.0000'),
(322, 4, 21, '58.0000'),
(323, 4, 22, '58.0000'),
(324, 4, 23, '58.0000'),
(325, 4, 24, '58.0000'),
(326, 4, 25, '58.0000'),
(327, 4, 26, '58.0000'),
(328, 4, 27, '58.0000'),
(329, 4, 28, '58.0000'),
(330, 4, 29, '58.0000'),
(331, 4, 30, '58.0000'),
(332, 4, 31, '58.0000'),
(333, 4, 32, '58.0000'),
(334, 4, 33, '58.0000'),
(335, 4, 34, '58.0000'),
(336, 4, 35, '58.0000'),
(337, 4, 36, '58.0000'),
(338, 4, 37, '58.0000'),
(339, 4, 38, '58.0000'),
(340, 4, 39, '58.0000'),
(341, 4, 40, '87.0000'),
(342, 4, 41, '87.0000'),
(343, 4, 42, '87.0000'),
(344, 4, 43, '87.0000'),
(345, 4, 44, '87.0000'),
(346, 4, 45, '87.0000'),
(347, 4, 46, '87.0000'),
(348, 4, 47, '87.0000'),
(349, 4, 48, '87.0000'),
(350, 4, 49, '87.0000'),
(351, 4, 50, '87.0000'),
(352, 4, 51, '87.0000'),
(353, 4, 52, '87.0000'),
(354, 4, 53, '87.0000'),
(355, 4, 54, '87.0000'),
(356, 4, 55, '87.0000'),
(357, 4, 56, '87.0000'),
(358, 4, 57, '87.0000'),
(359, 4, 58, '87.0000'),
(360, 4, 59, '87.0000'),
(361, 4, 60, '116.0000'),
(362, 4, 61, '116.0000'),
(363, 4, 62, '116.0000'),
(364, 4, 63, '116.0000'),
(365, 4, 64, '116.0000'),
(366, 4, 65, '116.0000'),
(367, 4, 66, '116.0000'),
(368, 4, 67, '116.0000'),
(369, 4, 68, '116.0000'),
(370, 4, 69, '116.0000'),
(371, 4, 70, '116.0000'),
(372, 4, 71, '116.0000'),
(373, 4, 72, '116.0000'),
(374, 4, 73, '116.0000'),
(375, 4, 74, '116.0000'),
(376, 4, 75, '116.0000'),
(377, 4, 76, '116.0000'),
(378, 4, 77, '116.0000'),
(379, 4, 78, '116.0000'),
(380, 4, 79, '116.0000'),
(381, 4, 80, '145.0000'),
(382, 4, 81, '145.0000'),
(383, 4, 82, '145.0000'),
(384, 4, 83, '145.0000'),
(385, 4, 84, '145.0000'),
(386, 4, 85, '145.0000'),
(387, 4, 86, '145.0000'),
(388, 4, 87, '145.0000'),
(389, 4, 88, '145.0000'),
(390, 4, 89, '145.0000'),
(391, 4, 90, '145.0000'),
(392, 4, 91, '145.0000'),
(393, 4, 92, '145.0000'),
(394, 4, 93, '145.0000'),
(395, 4, 94, '145.0000'),
(396, 4, 95, '145.0000'),
(397, 4, 96, '145.0000'),
(398, 4, 97, '145.0000'),
(399, 4, 98, '145.0000'),
(400, 4, 99, '145.0000'),
(401, 5, 0, '21.0000'),
(402, 5, 1, '21.0000'),
(403, 5, 2, '21.0000'),
(404, 5, 3, '21.0000'),
(405, 5, 4, '21.0000'),
(406, 5, 5, '21.0000'),
(407, 5, 6, '21.0000'),
(408, 5, 7, '21.0000'),
(409, 5, 8, '21.0000'),
(410, 5, 9, '21.0000'),
(411, 5, 10, '21.0000'),
(412, 5, 11, '21.0000'),
(413, 5, 12, '21.0000'),
(414, 5, 13, '21.0000'),
(415, 5, 14, '21.0000'),
(416, 5, 15, '21.0000'),
(417, 5, 16, '21.0000'),
(418, 5, 17, '21.0000'),
(419, 5, 18, '21.0000'),
(420, 5, 19, '21.0000'),
(421, 5, 20, '42.0000'),
(422, 5, 21, '42.0000'),
(423, 5, 22, '42.0000'),
(424, 5, 23, '42.0000'),
(425, 5, 24, '42.0000'),
(426, 5, 25, '42.0000'),
(427, 5, 26, '42.0000'),
(428, 5, 27, '42.0000'),
(429, 5, 28, '42.0000'),
(430, 5, 29, '42.0000'),
(431, 5, 30, '42.0000'),
(432, 5, 31, '42.0000'),
(433, 5, 32, '42.0000'),
(434, 5, 33, '42.0000'),
(435, 5, 34, '42.0000'),
(436, 5, 35, '42.0000'),
(437, 5, 36, '42.0000'),
(438, 5, 37, '42.0000'),
(439, 5, 38, '42.0000'),
(440, 5, 39, '42.0000'),
(441, 5, 40, '75.0000'),
(442, 5, 41, '75.0000'),
(443, 5, 42, '75.0000'),
(444, 5, 43, '75.0000'),
(445, 5, 44, '75.0000'),
(446, 5, 45, '75.0000'),
(447, 5, 46, '75.0000'),
(448, 5, 47, '75.0000'),
(449, 5, 48, '75.0000'),
(450, 5, 49, '75.0000'),
(451, 5, 50, '75.0000'),
(452, 5, 51, '75.0000'),
(453, 5, 52, '75.0000'),
(454, 5, 53, '75.0000'),
(455, 5, 54, '75.0000'),
(456, 5, 55, '75.0000'),
(457, 5, 56, '75.0000'),
(458, 5, 57, '75.0000'),
(459, 5, 58, '75.0000'),
(460, 5, 59, '75.0000'),
(461, 5, 60, '96.0000'),
(462, 5, 61, '96.0000'),
(463, 5, 62, '96.0000'),
(464, 5, 63, '96.0000'),
(465, 5, 64, '96.0000'),
(466, 5, 65, '96.0000'),
(467, 5, 66, '96.0000'),
(468, 5, 67, '96.0000'),
(469, 5, 68, '96.0000'),
(470, 5, 69, '96.0000'),
(471, 5, 70, '96.0000'),
(472, 5, 71, '96.0000'),
(473, 5, 72, '96.0000'),
(474, 5, 73, '96.0000'),
(475, 5, 74, '96.0000'),
(476, 5, 75, '96.0000'),
(477, 5, 76, '96.0000'),
(478, 5, 77, '96.0000'),
(479, 5, 78, '96.0000'),
(480, 5, 79, '96.0000'),
(481, 5, 80, '117.0000'),
(482, 5, 81, '117.0000'),
(483, 5, 82, '117.0000'),
(484, 5, 83, '117.0000'),
(485, 5, 84, '117.0000'),
(486, 5, 85, '117.0000'),
(487, 5, 86, '117.0000'),
(488, 5, 87, '117.0000'),
(489, 5, 88, '117.0000'),
(490, 5, 89, '117.0000'),
(491, 5, 90, '117.0000'),
(492, 5, 91, '117.0000'),
(493, 5, 92, '117.0000'),
(494, 5, 93, '117.0000'),
(495, 5, 94, '117.0000'),
(496, 5, 95, '117.0000'),
(497, 5, 96, '117.0000'),
(498, 5, 97, '117.0000'),
(499, 5, 98, '117.0000'),
(500, 5, 99, '117.0000'),
(501, 6, 0, '34.0000'),
(502, 6, 1, '34.0000'),
(503, 6, 2, '34.0000'),
(504, 6, 3, '34.0000'),
(505, 6, 4, '34.0000'),
(506, 6, 5, '34.0000'),
(507, 6, 6, '34.0000'),
(508, 6, 7, '34.0000'),
(509, 6, 8, '34.0000'),
(510, 6, 9, '34.0000'),
(511, 6, 10, '34.0000'),
(512, 6, 11, '34.0000'),
(513, 6, 12, '34.0000'),
(514, 6, 13, '34.0000'),
(515, 6, 14, '34.0000'),
(516, 6, 15, '34.0000'),
(517, 6, 16, '34.0000'),
(518, 6, 17, '34.0000'),
(519, 6, 18, '34.0000'),
(520, 6, 19, '34.0000'),
(521, 6, 20, '68.0000'),
(522, 6, 21, '68.0000'),
(523, 6, 22, '68.0000'),
(524, 6, 23, '68.0000'),
(525, 6, 24, '68.0000'),
(526, 6, 25, '68.0000'),
(527, 6, 26, '68.0000'),
(528, 6, 27, '68.0000'),
(529, 6, 28, '68.0000'),
(530, 6, 29, '68.0000'),
(531, 6, 30, '68.0000'),
(532, 6, 31, '68.0000'),
(533, 6, 32, '68.0000'),
(534, 6, 33, '68.0000'),
(535, 6, 34, '68.0000'),
(536, 6, 35, '68.0000'),
(537, 6, 36, '68.0000'),
(538, 6, 37, '68.0000'),
(539, 6, 38, '68.0000'),
(540, 6, 39, '68.0000'),
(541, 6, 40, '102.0000'),
(542, 6, 41, '102.0000'),
(543, 6, 42, '102.0000'),
(544, 6, 43, '102.0000'),
(545, 6, 44, '102.0000'),
(546, 6, 45, '102.0000'),
(547, 6, 46, '102.0000'),
(548, 6, 47, '102.0000'),
(549, 6, 48, '102.0000'),
(550, 6, 49, '102.0000'),
(551, 6, 50, '102.0000'),
(552, 6, 51, '102.0000'),
(553, 6, 52, '102.0000'),
(554, 6, 53, '102.0000'),
(555, 6, 54, '102.0000'),
(556, 6, 55, '102.0000'),
(557, 6, 56, '102.0000'),
(558, 6, 57, '102.0000'),
(559, 6, 58, '102.0000'),
(560, 6, 59, '102.0000'),
(561, 6, 60, '136.0000'),
(562, 6, 61, '136.0000'),
(563, 6, 62, '136.0000'),
(564, 6, 63, '136.0000'),
(565, 6, 64, '136.0000'),
(566, 6, 65, '136.0000'),
(567, 6, 66, '136.0000'),
(568, 6, 67, '136.0000'),
(569, 6, 68, '136.0000'),
(570, 6, 69, '136.0000'),
(571, 6, 70, '136.0000'),
(572, 6, 71, '136.0000'),
(573, 6, 72, '136.0000'),
(574, 6, 73, '136.0000'),
(575, 6, 74, '136.0000'),
(576, 6, 75, '136.0000'),
(577, 6, 76, '136.0000'),
(578, 6, 77, '136.0000'),
(579, 6, 78, '136.0000'),
(580, 6, 79, '136.0000'),
(581, 6, 80, '170.0000'),
(582, 6, 81, '170.0000'),
(583, 6, 82, '170.0000'),
(584, 6, 83, '170.0000'),
(585, 6, 84, '170.0000'),
(586, 6, 85, '170.0000'),
(587, 6, 86, '170.0000'),
(588, 6, 87, '170.0000'),
(589, 6, 88, '170.0000'),
(590, 6, 89, '170.0000'),
(591, 6, 90, '170.0000'),
(592, 6, 91, '170.0000'),
(593, 6, 92, '170.0000'),
(594, 6, 93, '170.0000'),
(595, 6, 94, '170.0000'),
(596, 6, 95, '170.0000'),
(597, 6, 96, '170.0000'),
(598, 6, 97, '170.0000'),
(599, 6, 98, '170.0000'),
(600, 6, 99, '170.0000'),
(601, 7, 1, '0.0000'),
(602, 7, 2, '0.0000'),
(603, 7, 0, '0.0000'),
(604, 7, 3, '0.0000'),
(605, 7, 4, '0.0000'),
(606, 7, 5, '0.0000'),
(607, 7, 6, '0.0000'),
(608, 7, 7, '0.0000'),
(609, 7, 8, '0.0000'),
(610, 7, 9, '0.0000'),
(611, 7, 10, '0.0000'),
(612, 7, 11, '0.0000'),
(613, 7, 12, '0.0000'),
(614, 7, 13, '0.0000'),
(615, 7, 14, '0.0000'),
(616, 7, 15, '0.0000'),
(617, 7, 16, '0.0000'),
(618, 7, 17, '0.0000'),
(619, 7, 18, '0.0000'),
(620, 7, 19, '0.0000'),
(621, 7, 20, '0.0000'),
(622, 7, 21, '0.0000'),
(623, 7, 22, '0.0000'),
(624, 7, 23, '0.0000'),
(625, 7, 24, '0.0000'),
(626, 7, 25, '0.0000'),
(627, 7, 26, '0.0000'),
(628, 7, 27, '0.0000'),
(629, 7, 28, '0.0000'),
(630, 7, 29, '0.0000'),
(631, 7, 30, '0.0000'),
(632, 7, 31, '0.0000'),
(633, 7, 32, '0.0000'),
(634, 7, 33, '0.0000'),
(635, 7, 34, '0.0000'),
(636, 7, 35, '0.0000'),
(637, 7, 36, '0.0000'),
(638, 7, 37, '0.0000'),
(639, 7, 38, '0.0000'),
(640, 7, 39, '0.0000'),
(641, 7, 40, '0.0000'),
(642, 7, 41, '0.0000'),
(643, 7, 42, '0.0000'),
(644, 7, 43, '0.0000'),
(645, 7, 44, '0.0000'),
(646, 7, 45, '0.0000'),
(647, 7, 46, '0.0000'),
(648, 7, 47, '0.0000'),
(649, 7, 48, '0.0000'),
(650, 7, 49, '0.0000'),
(651, 7, 50, '0.0000'),
(652, 7, 51, '0.0000'),
(653, 7, 52, '0.0000'),
(654, 7, 53, '0.0000'),
(655, 7, 54, '0.0000'),
(656, 7, 55, '0.0000'),
(657, 7, 56, '0.0000'),
(658, 7, 57, '0.0000'),
(659, 7, 58, '0.0000'),
(660, 7, 59, '0.0000'),
(661, 7, 60, '0.0000'),
(662, 7, 61, '0.0000'),
(663, 7, 62, '0.0000'),
(664, 7, 63, '0.0000'),
(665, 7, 64, '0.0000'),
(666, 7, 65, '0.0000'),
(667, 7, 66, '0.0000'),
(668, 7, 67, '0.0000'),
(669, 7, 68, '0.0000'),
(670, 7, 69, '0.0000'),
(671, 7, 70, '0.0000'),
(672, 7, 71, '0.0000'),
(673, 7, 72, '0.0000'),
(674, 7, 73, '0.0000'),
(675, 7, 74, '0.0000'),
(676, 7, 75, '0.0000'),
(677, 7, 76, '0.0000'),
(678, 7, 77, '0.0000'),
(679, 7, 78, '0.0000'),
(680, 7, 79, '0.0000'),
(681, 7, 80, '0.0000'),
(682, 7, 81, '0.0000'),
(683, 7, 82, '0.0000'),
(684, 7, 83, '0.0000'),
(685, 7, 84, '0.0000'),
(686, 7, 85, '0.0000'),
(687, 7, 86, '0.0000'),
(688, 7, 87, '0.0000'),
(689, 7, 88, '0.0000'),
(690, 7, 89, '0.0000'),
(691, 7, 90, '0.0000'),
(692, 7, 91, '0.0000'),
(693, 7, 92, '0.0000'),
(694, 7, 93, '0.0000'),
(695, 7, 94, '0.0000'),
(696, 7, 95, '0.0000'),
(697, 7, 96, '0.0000'),
(698, 7, 97, '0.0000'),
(699, 7, 98, '0.0000'),
(700, 7, 99, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide`
--

DROP TABLE IF EXISTS `sl_slide`;
CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`) VALUES
(14, 0, '44e4a-fcs-1.jpg', 1, '0000-00-00 00:00:00', '2017-07-11 09:27:48', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 1),
(15, 0, 'a7ab9-fcs-1.jpg', 1, '0000-00-00 00:00:00', '2017-07-11 09:28:11', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide_description`
--

DROP TABLE IF EXISTS `sl_slide_description`;
CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `url_teks` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `subtitle`, `content`, `url_teks`, `url`) VALUES
(20, 4, 2, 'understand', '', '<p>\r\n	understand\r\n</p>', '', ''),
(21, 5, 2, 'chinese new year', '', '<p>\r\n	chinese new year\r\n</p>', '', ''),
(28, 6, 2, 'Title 1', '', '', '', ''),
(42, 7, 2, 'Years of uncompromised style.', '', 'From the start, our mission has been to create our Indonesian people proudness of local products,\r\nLinette bags line build consciousnes and love to our customer through exceptional designs that competes\r\nin the international market of fashion.', '', '#'),
(25, 8, 2, 'test', '', '', '', ''),
(27, 9, 2, 'test', '', '', '', ''),
(32, 10, 2, 'title 1', '', '', '', ''),
(33, 11, 2, 'title 3', '', '', '', ''),
(34, 12, 2, 'title 3', '', '', '', ''),
(37, 13, 2, 'Road to 2016', '', '', '', ''),
(57, 14, 2, 'Harga Turun Lagi', '', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis vitae enim commodi nesciunt recusandae facilis perspiciatis dolorem a fugiat, alias reiciendis perferendis cumque distinctio vel, mollitia earum pariatur et, eum odit ab culpa harum itaque adipisci? Dolorem labore facilis, perspiciatis?\r\n</p>\r\n<p>\r\n	Harum omnis, quod voluptates? Excepturi, nulla architecto esse natus magni sequi quibusdam modi ut, quia dolorum nesciunt unde deleniti ratione iure vel fuga cumque rem molestiae soluta ducimus odio eum voluptatum iusto! Nam eligendi, doloremque amet ipsam obcaecati, reiciendis asperiores.\r\n</p>\r\n<p>\r\n	Rerum qui ratione dolorem nemo perferendis ut, necessitatibus similique fugiat voluptates debitis vel, numquam nisi beatae corporis dolor iusto? Voluptates doloremque quasi, at sapiente voluptatibus id ut neque ipsa, voluptatum quisquam quo dicta aperiam repellendus quam inventore adipisci molestiae deleniti.\r\n</p>\r\n<p>\r\n	Molestiae, dolorem non officiis tempore ratione at? Officia inventore possimus dolores suscipit dicta obcaecati a architecto, iure, vel autem quia dolor praesentium nostrum perferendis enim ducimus fugiat omnis. Dolor maxime, aperiam quo reiciendis omnis eligendi quod maiores dolorum nostrum quibusdam.\r\n</p>\r\n<p>\r\n	Libero quae maxime recusandae aspernatur ratione laborum laudantium iusto nam quaerat id laboriosam voluptatum vero perspiciatis repudiandae dolorum itaque doloremque officia reprehenderit quis impedit, assumenda harum corporis non! Quasi dolor quas vero dolore in odit atque libero enim tenetur commodi.\r\n</p>', '', ''),
(58, 15, 2, 'Harga Naik Lagi', '', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis vitae enim commodi nesciunt recusandae facilis perspiciatis dolorem a fugiat, alias reiciendis perferendis cumque distinctio vel, mollitia earum pariatur et, eum odit ab culpa harum itaque adipisci? Dolorem labore facilis, perspiciatis?\r\n</p>\r\n<p>\r\n	Harum omnis, quod voluptates? Excepturi, nulla architecto esse natus magni sequi quibusdam modi ut, quia dolorum nesciunt unde deleniti ratione iure vel fuga cumque rem molestiae soluta ducimus odio eum voluptatum iusto! Nam eligendi, doloremque amet ipsam obcaecati, reiciendis asperiores.\r\n</p>\r\n<p>\r\n	Rerum qui ratione dolorem nemo perferendis ut, necessitatibus similique fugiat voluptates debitis vel, numquam nisi beatae corporis dolor iusto? Voluptates doloremque quasi, at sapiente voluptatibus id ut neque ipsa, voluptatum quisquam quo dicta aperiam repellendus quam inventore adipisci molestiae deleniti.\r\n</p>\r\n<p>\r\n	Molestiae, dolorem non officiis tempore ratione at? Officia inventore possimus dolores suscipit dicta obcaecati a architecto, iure, vel autem quia dolor praesentium nostrum perferendis enim ducimus fugiat omnis. Dolor maxime, aperiam quo reiciendis omnis eligendi quod maiores dolorum nostrum quibusdam.\r\n</p>\r\n<p>\r\n	Libero quae maxime recusandae aspernatur ratione laborum laudantium iusto nam quaerat id laboriosam voluptatum vero perspiciatis repudiandae dolorum itaque doloremque officia reprehenderit quis impedit, assumenda harum corporis non! Quasi dolor quas vero dolore in odit atque libero enim tenetur commodi.\r\n</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

DROP TABLE IF EXISTS `tb_group`;
CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu_akses`
--

DROP TABLE IF EXISTS `tb_menu_akses`;
CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2015-12-30 08:16:30', 0, 1, '', '2014-02-10 03:17:36', 'deory', ''),
(30, 'info@markdesign.net', 'info markdesign', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2015-12-30 08:17:01', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `to_toko`
--

DROP TABLE IF EXISTS `to_toko`;
CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 15:32:14', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 15:32:25', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `to_toko_product`
--

DROP TABLE IF EXISTS `to_toko_product`;
CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `trip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `year`, `month`, `awal`, `akhir`, `trip`) VALUES
(1, 2016, 1, 1, 3, 'Surabaya'),
(4, 2016, 2, 8, 10, 'Singapore'),
(3, 2016, 2, 7, 10, 'Malaysia');

-- --------------------------------------------------------

--
-- Table structure for table `tt_text`
--

DROP TABLE IF EXISTS `tt_text`;
CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Blog/Artikel'),
(29, 'admin', 'Career'),
(30, 'admin', 'Home'),
(31, 'admin', 'Factory'),
(32, 'admin', 'News & Article'),
(33, 'admin', 'Lokasi Penjualan'),
(34, 'admin', 'Jadi Agen'),
(35, 'admin', 'Cara Membeli'),
(36, 'admin', 'PDF'),
(37, 'admin', 'Cara Belanja'),
(38, 'admin', 'Info Pengiriman'),
(39, 'admin', 'FAQ'),
(40, 'admin', 'Syarat & Ketentuan'),
(41, 'admin', 'How To Order'),
(42, 'admin', 'Event'),
(43, 'admin', 'Wholeseler'),
(44, 'admin', 'Wholesale'),
(45, 'admin', 'Lokasi Toko'),
(46, 'admin', 'Home Page'),
(47, 'admin', 'About'),
(48, 'admin', 'Tips/Artikel'),
(49, 'admin', 'Slides/Promo'),
(50, 'admin', 'Promotion'),
(51, 'admin', 'Customer');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_blog`
--
DROP VIEW IF EXISTS `view_blog`;
CREATE TABLE `view_blog` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` int(25)
,`id2` int(11)
,`blog_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`quote` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_category`
--
DROP VIEW IF EXISTS `view_category`;
CREATE TABLE `view_category` (
`id` int(11)
,`parent_id` int(11)
,`sort` int(11)
,`image` varchar(200)
,`type` varchar(100)
,`data` text
,`id2` int(11)
,`category_id` int(11)
,`language_id` int(11)
,`name` varchar(100)
,`data2` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gallery`
--
DROP VIEW IF EXISTS `view_gallery`;
CREATE TABLE `view_gallery` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`image2` varchar(200)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`city` varchar(100)
,`harga` int(11)
,`color` varchar(100)
,`orientation` int(11)
,`id2` int(11)
,`gallery_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`sub_title` text
,`sub_title_2` text
,`content` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_slide`
--
DROP VIEW IF EXISTS `view_slide`;
CREATE TABLE `view_slide` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`id2` int(11)
,`slide_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`url` varchar(200)
,`sort` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS  select `aldo`.`pg_blog`.`id` AS `id`,`aldo`.`pg_blog`.`topik_id` AS `topik_id`,`aldo`.`pg_blog`.`image` AS `image`,`aldo`.`pg_blog`.`active` AS `active`,`aldo`.`pg_blog`.`date_input` AS `date_input`,`aldo`.`pg_blog`.`date_update` AS `date_update`,`aldo`.`pg_blog`.`insert_by` AS `insert_by`,`aldo`.`pg_blog`.`last_update_by` AS `last_update_by`,`aldo`.`pg_blog`.`writer` AS `writer`,`aldo`.`pg_blog_description`.`id` AS `id2`,`aldo`.`pg_blog_description`.`blog_id` AS `blog_id`,`aldo`.`pg_blog_description`.`language_id` AS `language_id`,`aldo`.`pg_blog_description`.`title` AS `title`,`aldo`.`pg_blog_description`.`content` AS `content`,`aldo`.`pg_blog_description`.`quote` AS `quote` from (`aldo`.`pg_blog` join `aldo`.`pg_blog_description` on((`aldo`.`pg_blog`.`id` = `aldo`.`pg_blog_description`.`blog_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_category`  AS  select `aldo`.`prd_category`.`id` AS `id`,`aldo`.`prd_category`.`parent_id` AS `parent_id`,`aldo`.`prd_category`.`sort` AS `sort`,`aldo`.`prd_category`.`image` AS `image`,`aldo`.`prd_category`.`type` AS `type`,`aldo`.`prd_category`.`data` AS `data`,`aldo`.`prd_category_description`.`id` AS `id2`,`aldo`.`prd_category_description`.`category_id` AS `category_id`,`aldo`.`prd_category_description`.`language_id` AS `language_id`,`aldo`.`prd_category_description`.`name` AS `name`,`aldo`.`prd_category_description`.`data` AS `data2` from (`aldo`.`prd_category` join `aldo`.`prd_category_description` on((`aldo`.`prd_category`.`id` = `aldo`.`prd_category_description`.`category_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gallery`  AS  select `aldo`.`gal_gallery`.`id` AS `id`,`aldo`.`gal_gallery`.`topik_id` AS `topik_id`,`aldo`.`gal_gallery`.`image` AS `image`,`aldo`.`gal_gallery`.`image2` AS `image2`,`aldo`.`gal_gallery`.`active` AS `active`,`aldo`.`gal_gallery`.`date_input` AS `date_input`,`aldo`.`gal_gallery`.`date_update` AS `date_update`,`aldo`.`gal_gallery`.`insert_by` AS `insert_by`,`aldo`.`gal_gallery`.`last_update_by` AS `last_update_by`,`aldo`.`gal_gallery`.`writer` AS `writer`,`aldo`.`gal_gallery`.`city` AS `city`,`aldo`.`gal_gallery`.`harga` AS `harga`,`aldo`.`gal_gallery`.`color` AS `color`,`aldo`.`gal_gallery`.`orientation` AS `orientation`,`aldo`.`gal_gallery_description`.`id` AS `id2`,`aldo`.`gal_gallery_description`.`gallery_id` AS `gallery_id`,`aldo`.`gal_gallery_description`.`language_id` AS `language_id`,`aldo`.`gal_gallery_description`.`title` AS `title`,`aldo`.`gal_gallery_description`.`sub_title` AS `sub_title`,`aldo`.`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`aldo`.`gal_gallery_description`.`content` AS `content` from (`aldo`.`gal_gallery` join `aldo`.`gal_gallery_description` on((`aldo`.`gal_gallery`.`id` = `aldo`.`gal_gallery_description`.`gallery_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_slide`  AS  select `aldo`.`sl_slide`.`id` AS `id`,`aldo`.`sl_slide`.`topik_id` AS `topik_id`,`aldo`.`sl_slide`.`image` AS `image`,`aldo`.`sl_slide`.`active` AS `active`,`aldo`.`sl_slide`.`date_input` AS `date_input`,`aldo`.`sl_slide`.`date_update` AS `date_update`,`aldo`.`sl_slide`.`insert_by` AS `insert_by`,`aldo`.`sl_slide`.`last_update_by` AS `last_update_by`,`aldo`.`sl_slide`.`writer` AS `writer`,`aldo`.`sl_slide_description`.`id` AS `id2`,`aldo`.`sl_slide_description`.`slide_id` AS `slide_id`,`aldo`.`sl_slide_description`.`language_id` AS `language_id`,`aldo`.`sl_slide_description`.`title` AS `title`,`aldo`.`sl_slide_description`.`content` AS `content`,`aldo`.`sl_slide_description`.`url` AS `url`,`aldo`.`sl_slide`.`sort` AS `sort` from (`aldo`.`sl_slide` join `aldo`.`sl_slide_description` on((`aldo`.`sl_slide_description`.`slide_id` = `aldo`.`sl_slide`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_image`
--
ALTER TABLE `about_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gal_gallery`
--
ALTER TABLE `gal_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`gallery_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `pg_faq`
--
ALTER TABLE `pg_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indexes for table `prd_category_product`
--
ALTER TABLE `prd_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indexes for table `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_image`
--
ALTER TABLE `about_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `gal_gallery`
--
ALTER TABLE `gal_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2153;
--
-- AUTO_INCREMENT for table `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `pg_faq`
--
ALTER TABLE `pg_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `prd_category_product`
--
ALTER TABLE `prd_category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sertifikasi`
--
ALTER TABLE `sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
