-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2018 pada 11.04
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forecast`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `hak_akses` enum('admin','superadmin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `last_login`, `hak_akses`) VALUES
(1, 'toto', 'f71dbe52628a3f83a77ab494817525c6', '2017-11-30 16:04:23', 'admin'),
(5, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2018-01-16 10:46:28', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `batas`
--

CREATE TABLE `batas` (
  `id_batas` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `batas_bawah` double NOT NULL,
  `batas_tengah` double NOT NULL,
  `batas_atas` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `batas`
--

INSERT INTO `batas` (`id_batas`, `id_pos`, `batas_bawah`, `batas_tengah`, `batas_atas`) VALUES
(1, 6, 10, 15, 20),
(2, 7, 20, 50, 70),
(3, 8, 80, 110, 150),
(4, 9, 20, 50, 70),
(5, 10, 15, 46, 78);

-- --------------------------------------------------------

--
-- Struktur dari tabel `citra`
--

CREATE TABLE `citra` (
  `id_citra` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `nama_citra` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `citra`
--

INSERT INTO `citra` (`id_citra`, `id_pos`, `nama_citra`, `waktu`) VALUES
(1, 1, '231.jpg', '2017-11-03 01:50:10'),
(2, 2, '2.jpg', '2017-11-03 02:50:10'),
(3, 3, '4.jpg', '2017-11-03 01:50:11'),
(4, 4, '1.jpg', '2017-11-03 01:50:11'),
(5, 5, '2.jpg', '2017-11-03 01:50:12'),
(6, 6, '3.jpg', '2017-11-03 01:50:12'),
(7, 7, '2.jpg', '2017-11-03 01:50:12'),
(8, 8, '1.jpg', '2017-11-20 00:00:00'),
(9, 9, '3.jpg', '2017-11-21 00:00:00'),
(10, 10, '1.jpg', '2017-11-20 00:00:00'),
(11, 1, '453453453.jpg', '2017-11-21 00:00:00'),
(12, 1, '453453453.jpg', '2017-11-23 08:11:29'),
(13, 3, '4.jpg', '2017-11-23 08:11:29'),
(14, 4, '1.jpg', '2017-11-23 08:11:29'),
(15, 5, '2.jpg', '2017-11-23 08:11:29'),
(16, 2, '2.jpg', '2017-11-23 08:11:29'),
(17, 7, '2.jpg', '2017-11-23 08:11:29'),
(18, 6, '3.jpg', '2017-11-23 08:11:29'),
(19, 8, '1.jpg', '2017-11-23 08:11:29'),
(20, 9, '3.jpg', '2017-11-23 08:11:29'),
(21, 10, '1.jpg', '2017-11-23 08:11:30'),
(22, 2, '2.jpg', '2017-11-23 08:12:29'),
(23, 4, '1.jpg', '2017-11-23 08:12:29'),
(24, 3, '4.jpg', '2017-11-23 08:12:29'),
(25, 1, '453453453.jpg', '2017-11-23 08:12:29'),
(26, 5, '2.jpg', '2017-11-23 08:12:29'),
(27, 6, '3.jpg', '2017-11-23 08:12:29'),
(28, 8, '1.jpg', '2017-11-23 08:12:30'),
(29, 7, '2.jpg', '2017-11-23 08:12:29'),
(30, 9, '3.jpg', '2017-11-23 08:12:30'),
(31, 10, '1.jpg', '2017-11-23 08:12:30'),
(32, 1, '453453453.jpg', '2017-11-23 08:13:29'),
(33, 2, '2.jpg', '2017-11-23 08:13:29'),
(34, 3, '4.jpg', '2017-11-23 08:13:29'),
(35, 4, '1.jpg', '2017-11-23 08:13:29'),
(36, 7, '2.jpg', '2017-11-23 08:13:29'),
(37, 5, '2.jpg', '2017-11-23 08:13:29'),
(38, 8, '1.jpg', '2017-11-23 08:13:29'),
(39, 6, '3.jpg', '2017-11-23 08:13:29'),
(40, 9, '3.jpg', '2017-11-23 08:13:29'),
(41, 10, '1.jpg', '2017-11-23 08:13:29'),
(42, 2, '2.jpg', '2017-11-23 08:14:29'),
(43, 1, '453453453.jpg', '2017-11-23 08:14:29'),
(44, 3, '4.jpg', '2017-11-23 08:14:29'),
(45, 5, '2.jpg', '2017-11-23 08:14:29'),
(46, 9, '3.jpg', '2017-11-23 08:14:29'),
(47, 10, '1.jpg', '2017-11-23 08:14:29'),
(48, 4, '1.jpg', '2017-11-23 08:14:29'),
(49, 8, '1.jpg', '2017-11-23 08:14:29'),
(50, 7, '2.jpg', '2017-11-23 08:14:29'),
(51, 6, '3.jpg', '2017-11-23 08:14:29'),
(52, 1, '453453453.jpg', '2017-11-23 08:48:53'),
(53, 2, '2.jpg', '2017-11-23 08:48:53'),
(54, 3, '4.jpg', '2017-11-23 08:48:53'),
(55, 5, '2.jpg', '2017-11-23 08:48:53'),
(56, 4, '1.jpg', '2017-11-23 08:48:53'),
(57, 6, '3.jpg', '2017-11-23 08:48:53'),
(58, 7, '2.jpg', '2017-11-23 08:48:53'),
(59, 8, '1.jpg', '2017-11-23 08:48:53'),
(60, 9, '3.jpg', '2017-11-23 08:48:54'),
(61, 10, '1.jpg', '2017-11-23 08:48:54'),
(62, 1, '453453453.jpg', '2017-11-23 09:03:43'),
(63, 2, '2.jpg', '2017-11-23 09:03:43'),
(64, 3, '4.jpg', '2017-11-23 09:03:43'),
(65, 4, '1.jpg', '2017-11-23 09:03:43'),
(66, 5, '2.jpg', '2017-11-23 09:03:43'),
(67, 6, '3.jpg', '2017-11-23 09:03:43'),
(68, 7, '2.jpg', '2017-11-23 09:03:43'),
(69, 8, '1.jpg', '2017-11-23 09:03:43'),
(70, 9, '3.jpg', '2017-11-23 09:03:43'),
(71, 10, '1.jpg', '2017-11-23 09:03:43'),
(72, 1, '3.jpg', '2017-11-23 10:56:31'),
(73, 2, '2.jpg', '2017-11-23 10:56:32'),
(74, 3, '4.jpg', '2017-11-23 10:56:32'),
(75, 4, '1.jpg', '2017-11-23 10:56:32'),
(76, 6, '3.jpg', '2017-11-23 10:56:33'),
(77, 7, '2.jpg', '2017-11-23 10:56:33'),
(78, 5, '2.jpg', '2017-11-23 10:56:33'),
(79, 8, '1.jpg', '2017-11-23 10:56:33'),
(80, 9, '3.jpg', '2017-11-23 10:56:33'),
(81, 10, '1.jpg', '2017-11-23 10:56:33'),
(82, 1, '3.jpg', '2017-11-23 10:56:37'),
(83, 2, '2.jpg', '2017-11-23 10:56:38'),
(84, 4, '1.jpg', '2017-11-23 10:56:38'),
(85, 3, '4.jpg', '2017-11-23 10:56:38'),
(86, 6, '3.jpg', '2017-11-23 10:56:38'),
(87, 5, '2.jpg', '2017-11-23 10:56:38'),
(88, 7, '2.jpg', '2017-11-23 10:56:38'),
(89, 8, '1.jpg', '2017-11-23 10:56:38'),
(90, 10, '1.jpg', '2017-11-23 10:56:38'),
(91, 9, '3.jpg', '2017-11-23 10:56:38'),
(92, 1, '3.jpg', '2017-11-24 08:45:34'),
(93, 2, '2.jpg', '2017-11-24 08:45:35'),
(94, 6, '3.jpg', '2017-11-24 08:45:36'),
(95, 4, '1.jpg', '2017-11-24 08:45:36'),
(96, 3, '4.jpg', '2017-11-24 08:45:36'),
(97, 5, '2.jpg', '2017-11-24 08:45:36'),
(98, 9, '3.jpg', '2017-11-24 08:45:36'),
(99, 7, '2.jpg', '2017-11-24 08:45:36'),
(100, 8, '1.jpg', '2017-11-24 08:45:36'),
(101, 10, '1.jpg', '2017-11-24 08:45:36'),
(102, 1, '3.jpg', '2017-11-24 08:55:33'),
(103, 2, '2.jpg', '2017-11-24 08:55:33'),
(104, 3, '4.jpg', '2017-11-24 08:55:33'),
(105, 4, '1.jpg', '2017-11-24 08:55:33'),
(106, 6, '3.jpg', '2017-11-24 08:55:33'),
(107, 5, '2.jpg', '2017-11-24 08:55:33'),
(108, 7, '2.jpg', '2017-11-24 08:55:33'),
(109, 8, '1.jpg', '2017-11-24 08:55:33'),
(110, 9, '3.jpg', '2017-11-24 08:55:33'),
(111, 10, '1.jpg', '2017-11-24 08:55:34'),
(112, 1, '3.jpg', '2017-11-24 09:05:31'),
(113, 2, '2.jpg', '2017-11-24 09:05:31'),
(114, 4, '1.jpg', '2017-11-24 09:05:31'),
(115, 3, '4.jpg', '2017-11-24 09:05:31'),
(116, 5, '1.jpg', '2017-11-24 09:05:31'),
(117, 6, '3.jpg', '2017-11-24 09:05:31'),
(118, 7, '2.jpg', '2017-11-24 09:05:32'),
(119, 10, '1.jpg', '2017-11-24 09:05:32'),
(120, 9, '3.jpg', '2017-11-24 09:05:32'),
(121, 8, '1.jpg', '2017-11-24 09:05:32'),
(122, 1, '1.jpg', '2017-12-10 12:18:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `curah_hujan`
--

CREATE TABLE `curah_hujan` (
  `id_curah` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `curah_hujan` double NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `curah_hujan`
--

INSERT INTO `curah_hujan` (`id_curah`, `id_pos`, `curah_hujan`, `waktu`) VALUES
(1, 1, 10, '2017-12-18 07:00:00'),
(2, 1, 12, '2017-11-01 07:30:00'),
(3, 1, 2, '2017-11-18 08:00:00'),
(4, 1, 7, '2017-11-18 08:30:00'),
(5, 2, 7, '2017-11-01 08:30:00'),
(6, 3, 7, '2017-11-01 08:30:00'),
(7, 2, 7, '2017-11-01 09:30:00'),
(8, 3, 7, '2017-11-01 09:30:00'),
(9, 4, 7, '2017-11-01 08:30:00'),
(10, 5, 7, '2017-11-01 08:30:00'),
(11, 2, 10, '2017-11-01 07:00:00'),
(12, 2, 10, '2017-11-01 07:10:00'),
(13, 2, 10, '2017-11-01 07:10:00'),
(14, 2, 10, '2017-11-01 07:20:00'),
(15, 2, 10, '2017-11-01 07:30:00'),
(16, 2, 10, '2017-11-01 08:10:00'),
(17, 2, 10, '2017-11-01 08:20:00'),
(18, 2, 10, '2017-11-01 08:30:00'),
(19, 1, 10, '2017-11-01 08:33:00'),
(20, 1, 10, '2017-11-01 08:23:00'),
(21, 2, 10, '2017-11-01 08:23:00'),
(22, 1, 30, '2017-11-03 02:50:10'),
(23, 1, 10, '2017-11-05 07:10:00'),
(24, 1, 12, '2017-11-05 08:10:00'),
(25, 2, 10, '2017-11-05 07:10:00'),
(26, 1, 10, '2017-11-05 07:10:00'),
(27, 1, 10, '2017-11-05 07:10:00'),
(28, 1, 10, '2017-11-05 07:10:00'),
(29, 3, 0, '2017-11-03 01:50:11'),
(30, 4, 0, '2017-11-03 01:50:11'),
(31, 3, 0, '2017-11-03 01:50:12'),
(32, 3, 0, '2017-11-03 01:50:12'),
(33, 3, 0, '2017-11-03 01:50:12'),
(34, 1, 12, '2017-11-23 07:35:26'),
(35, 2, 10, '2017-11-23 07:35:26'),
(36, 3, 0, '2017-11-23 07:35:26'),
(37, 5, 7, '2017-11-23 07:35:26'),
(38, 4, 0, '2017-11-23 07:35:26'),
(39, 3, 0, '2017-11-23 07:35:36'),
(40, 1, 12, '2017-11-23 07:35:36'),
(41, 2, 10, '2017-11-23 07:35:36'),
(42, 4, 0, '2017-11-23 07:35:36'),
(43, 5, 7, '2017-11-23 07:35:36'),
(44, 3, 0, '2017-11-23 07:35:49'),
(45, 1, 12, '2017-11-23 07:35:49'),
(46, 2, 10, '2017-11-23 07:35:49'),
(47, 5, 7, '2017-11-23 07:35:49'),
(48, 4, 0, '2017-11-23 07:35:49'),
(49, 1, 12, '2017-11-23 07:35:59'),
(50, 4, 0, '2017-11-23 07:35:59'),
(51, 3, 0, '2017-11-23 07:35:59'),
(52, 2, 10, '2017-11-23 07:35:59'),
(53, 5, 7, '2017-11-23 07:35:59'),
(54, 1, 12, '2017-11-23 07:36:09'),
(55, 3, 0, '2017-11-23 07:36:09'),
(56, 2, 10, '2017-11-23 07:36:09'),
(57, 5, 7, '2017-11-23 07:36:09'),
(58, 4, 0, '2017-11-23 07:36:09'),
(59, 1, 12, '2017-11-23 07:36:19'),
(60, 2, 10, '2017-11-23 07:36:19'),
(61, 3, 0, '2017-11-23 07:36:19'),
(62, 4, 0, '2017-11-23 07:36:19'),
(63, 5, 7, '2017-11-23 07:36:19'),
(64, 1, 12, '2017-11-23 07:36:29'),
(65, 2, 10, '2017-11-23 07:36:29'),
(66, 4, 0, '2017-11-23 07:36:29'),
(67, 3, 0, '2017-11-23 07:36:29'),
(68, 5, 7, '2017-11-23 07:36:29'),
(69, 1, 12, '2017-11-23 07:36:39'),
(70, 2, 10, '2017-11-23 07:36:39'),
(71, 4, 0, '2017-11-23 07:36:39'),
(72, 3, 0, '2017-11-23 07:36:39'),
(73, 5, 7, '2017-11-23 07:36:39'),
(74, 1, 12, '2017-11-23 07:36:49'),
(75, 2, 10, '2017-11-23 07:36:49'),
(76, 5, 7, '2017-11-23 07:36:49'),
(77, 4, 0, '2017-11-23 07:36:49'),
(78, 3, 0, '2017-11-23 07:36:49'),
(79, 2, 10, '2017-11-23 07:46:57'),
(80, 4, 0, '2017-11-23 07:46:57'),
(81, 1, 12, '2017-11-23 07:46:57'),
(82, 3, 0, '2017-11-23 07:46:57'),
(83, 5, 7, '2017-11-23 07:46:57'),
(84, 1, 12, '2017-11-23 07:56:58'),
(85, 4, 0, '2017-11-23 07:56:58'),
(86, 3, 0, '2017-11-23 07:56:58'),
(87, 2, 10, '2017-11-23 07:56:58'),
(88, 5, 7, '2017-11-23 07:56:58'),
(89, 3, 0, '2017-11-23 08:06:58'),
(90, 1, 12, '2017-11-23 08:06:58'),
(91, 2, 10, '2017-11-23 08:06:58'),
(92, 4, 0, '2017-11-23 08:06:59'),
(93, 5, 7, '2017-11-23 08:06:59'),
(94, 2, 10, '2017-11-23 08:11:28'),
(95, 1, 12, '2017-11-23 08:11:28'),
(96, 3, 0, '2017-11-23 08:11:28'),
(97, 5, 7, '2017-11-23 08:11:30'),
(98, 4, 0, '2017-11-23 08:11:30'),
(99, 1, 12, '2017-11-23 08:12:28'),
(100, 2, 10, '2017-11-23 08:12:28'),
(101, 3, 0, '2017-11-23 08:12:29'),
(102, 5, 7, '2017-11-23 08:12:29'),
(103, 4, 0, '2017-11-23 08:12:29'),
(104, 2, 10, '2017-11-23 08:13:29'),
(105, 1, 12, '2017-11-23 08:13:29'),
(106, 3, 0, '2017-11-23 08:13:29'),
(107, 5, 7, '2017-11-23 08:13:29'),
(108, 4, 0, '2017-11-23 08:13:29'),
(109, 1, 12, '2017-11-23 08:14:29'),
(110, 2, 10, '2017-11-23 08:14:29'),
(111, 3, 0, '2017-11-23 08:14:29'),
(112, 4, 0, '2017-11-23 08:14:30'),
(113, 5, 7, '2017-11-23 08:14:30'),
(114, 1, 12, '2017-11-23 08:48:53'),
(115, 2, 10, '2017-11-23 08:48:53'),
(116, 3, 0, '2017-11-23 08:48:53'),
(117, 4, 0, '2017-11-23 08:48:53'),
(118, 5, 7, '2017-11-23 08:48:53'),
(119, 1, 12, '2017-11-23 09:03:43'),
(120, 2, 10, '2017-11-23 09:03:43'),
(121, 3, 0, '2017-11-23 09:03:43'),
(122, 4, 0, '2017-11-23 09:03:43'),
(123, 5, 7, '2017-11-23 09:03:43'),
(124, 1, 12, '2017-11-23 10:48:45'),
(125, 2, 10, '2017-11-23 10:48:45'),
(126, 5, 7, '2017-11-23 10:48:46'),
(127, 4, 0, '2017-11-23 10:48:46'),
(128, 3, 0, '2017-11-23 10:48:46'),
(129, 2, 10, '2017-11-23 10:48:48'),
(130, 1, 12, '2017-11-23 10:48:48'),
(131, 3, 0, '2017-11-23 10:48:48'),
(132, 4, 0, '2017-11-23 10:48:48'),
(133, 5, 7, '2017-11-23 10:48:48'),
(134, 2, 10, '2017-11-23 10:49:18'),
(135, 1, 12, '2017-11-23 10:49:18'),
(136, 5, 7, '2017-11-23 10:49:18'),
(137, 3, 0, '2017-11-23 10:49:18'),
(138, 4, 0, '2017-11-23 10:49:18'),
(139, 1, 12, '2017-11-23 10:56:36'),
(140, 3, 0, '2017-11-23 10:56:36'),
(141, 2, 10, '2017-11-23 10:56:36'),
(142, 4, 0, '2017-11-23 10:56:36'),
(143, 5, 7, '2017-11-23 10:56:36'),
(144, 1, 12, '2017-11-24 08:45:33'),
(145, 2, 10, '2017-11-24 08:45:34'),
(146, 4, 0, '2017-11-24 08:45:34'),
(147, 3, 0, '2017-11-24 08:45:35'),
(148, 5, 7, '2017-11-24 08:45:35'),
(149, 4, 0, '2017-11-24 08:55:32'),
(150, 1, 12, '2017-11-24 08:55:32'),
(151, 2, 10, '2017-11-24 08:55:32'),
(152, 3, 0, '2017-11-24 08:55:32'),
(153, 5, 7, '2017-11-24 08:55:32'),
(154, 1, 12, '2017-11-24 09:05:32'),
(155, 4, 0, '2017-11-24 09:05:32'),
(156, 3, 0, '2017-11-24 09:05:32'),
(157, 2, 10, '2017-11-24 09:05:32'),
(158, 5, 7, '2017-11-24 09:05:32'),
(159, 2, 10, '2017-12-13 07:10:00'),
(160, 2, 10, '2017-12-14 07:10:00'),
(161, 1, 10, '2017-12-18 07:10:00'),
(162, 3, 5, '2017-12-14 07:10:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id_file` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id_file`, `id_pos`, `nama_file`, `waktu`) VALUES
(1, 3, 'TABUNGAN_RT_06_-_ongoing.xlsx', '2017-12-29 02:50:59'),
(2, 1, 'VW_JTL_2016102919.csv', '2017-12-31 21:07:26'),
(3, 2, 'VW_BTEGI_20161029102.csv', '2017-12-31 21:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamera`
--

CREATE TABLE `kamera` (
  `id_kamera` int(11) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamera`
--

INSERT INTO `kamera` (`id_kamera`, `id_pos`, `durasi`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `logsensor`
--

CREATE TABLE `logsensor` (
  `id_log_sensor` int(10) NOT NULL,
  `id_sensor` int(11) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logsensor`
--

INSERT INTO `logsensor` (`id_log_sensor`, `id_sensor`, `waktu`) VALUES
(2, 1, '1991-09-24 00:00:00'),
(3, 1, '1991-09-24 00:00:00'),
(4, 1, '1991-09-24 00:00:00'),
(5, 1, '1991-09-24 00:00:00'),
(6, 1, '1991-09-24 00:00:00'),
(7, 1, '1991-09-24 00:00:00'),
(8, 1, '1991-09-24 00:00:00'),
(9, 1, '1991-09-24 00:00:00'),
(10, 1, '1991-09-24 00:00:00'),
(11, 1, '1991-09-24 00:00:00'),
(12, 1, '1991-09-24 00:00:00'),
(13, 1, '1991-09-24 00:00:00'),
(14, 1, '1991-09-24 00:00:00'),
(15, 1, '1991-09-24 00:00:00'),
(16, 1, '1991-09-24 00:00:00'),
(17, 1, '1991-09-24 00:00:00'),
(18, 3, '2017-08-30 00:00:00'),
(19, 3, '2017-08-30 00:00:00'),
(20, 3, '2017-08-30 00:00:00'),
(21, 3, '2017-09-24 00:00:00'),
(22, 1, '2017-10-10 10:10:10'),
(23, 1, '2017-10-10 10:10:10'),
(24, 1, '2017-10-10 10:30:10'),
(25, 1, '2017-10-10 10:50:10'),
(26, 1, '2017-10-09 10:50:10'),
(27, 1, '2017-10-08 10:50:10'),
(28, 1, '2017-10-07 10:50:10'),
(29, 4, '2017-10-07 10:50:10'),
(30, 4, '2017-10-08 10:50:10'),
(31, 4, '2017-10-09 10:50:10'),
(32, 4, '2017-10-10 10:50:10'),
(33, 7, '2017-10-31 10:10:10'),
(34, 7, '2017-10-31 10:10:10'),
(35, 7, '2017-10-31 10:20:10'),
(36, 7, '2017-10-31 11:20:10'),
(37, 7, '2017-10-31 11:50:10'),
(38, 7, '2017-10-31 12:50:10'),
(40, 7, '2017-11-21 12:50:10'),
(41, 7, '2017-11-03 12:50:10'),
(42, 7, '2017-11-04 12:50:10'),
(43, 7, '2017-11-05 12:50:10'),
(44, 7, '2017-11-06 12:50:10'),
(45, 1, '2017-11-01 07:00:00'),
(46, 1, '2017-11-01 07:00:00'),
(47, 1, '2017-11-01 07:30:00'),
(48, 1, '2017-11-01 08:00:00'),
(49, 1, '2017-11-01 08:30:00'),
(50, 2, '2017-11-01 08:30:00'),
(51, 3, '2017-11-01 08:30:00'),
(52, 2, '2017-11-01 08:30:00'),
(53, 3, '2017-11-01 08:30:00'),
(54, 4, '2017-11-01 08:30:00'),
(55, 5, '2017-11-01 08:30:00'),
(56, 2, '2017-11-01 07:00:00'),
(57, 2, '2017-11-01 07:10:00'),
(58, 2, '2017-11-01 07:10:00'),
(59, 2, '2017-11-01 07:20:00'),
(60, 2, '2017-11-01 07:30:00'),
(61, 2, '2017-11-01 07:50:00'),
(62, 2, '2017-11-01 08:10:00'),
(63, 2, '2017-11-01 08:20:00'),
(64, 2, '2017-11-01 08:30:00'),
(65, 1, '2017-11-01 08:33:00'),
(66, 1, '2017-11-01 08:23:00'),
(67, 2, '2017-11-01 08:23:00'),
(68, 6, '2017-11-01 08:23:00'),
(69, 7, '2017-11-07 01:50:10'),
(70, 7, '2017-11-07 02:50:10'),
(71, 7, '2017-11-07 03:50:10'),
(72, 7, '2017-11-08 03:50:10'),
(73, 7, '2017-11-09 10:10:10'),
(74, 1, '2017-11-05 07:10:00'),
(75, 1, '2017-11-05 08:10:00'),
(76, 7, '2017-11-17 11:20:10'),
(77, 2, '2017-11-05 07:10:00'),
(78, 1, '2017-11-05 07:10:00'),
(79, 1, '2017-11-05 07:10:00'),
(80, 1, '2017-11-05 07:10:00'),
(81, 6, '2017-11-21 10:10:10'),
(82, 1, '2017-11-23 10:48:45'),
(83, 2, '2017-11-23 10:48:45'),
(84, 5, '2017-11-23 10:48:46'),
(85, 4, '2017-11-23 10:48:46'),
(86, 3, '2017-11-23 10:48:46'),
(87, 2, '2017-11-23 10:48:48'),
(88, 3, '2017-11-23 10:48:48'),
(89, 1, '2017-11-23 10:48:48'),
(90, 4, '2017-11-23 10:48:48'),
(91, 5, '2017-11-23 10:48:48'),
(92, 2, '2017-11-23 10:49:18'),
(93, 1, '2017-11-23 10:49:18'),
(94, 3, '2017-11-23 10:49:18'),
(95, 5, '2017-11-23 10:49:18'),
(96, 4, '2017-11-23 10:49:18'),
(97, 6, '2017-11-23 10:56:31'),
(98, 7, '2017-11-23 10:56:31'),
(99, 8, '2017-11-23 10:56:31'),
(100, 9, '2017-11-23 10:56:31'),
(101, 10, '2017-11-23 10:56:32'),
(102, 1, '2017-11-23 10:56:36'),
(103, 2, '2017-11-23 10:56:36'),
(104, 3, '2017-11-23 10:56:36'),
(105, 5, '2017-11-23 10:56:36'),
(106, 4, '2017-11-23 10:56:36'),
(107, 10, '2017-11-23 10:56:37'),
(108, 9, '2017-11-23 10:56:37'),
(109, 6, '2017-11-23 10:56:37'),
(110, 8, '2017-11-23 10:56:37'),
(111, 7, '2017-11-23 10:56:37'),
(112, 6, '2017-11-24 08:45:32'),
(113, 9, '2017-11-24 08:45:33'),
(114, 8, '2017-11-24 08:45:33'),
(115, 10, '2017-11-24 08:45:33'),
(116, 7, '2017-11-24 08:45:33'),
(117, 1, '2017-11-24 08:45:33'),
(118, 2, '2017-11-24 08:45:34'),
(119, 4, '2017-11-24 08:45:34'),
(120, 5, '2017-11-24 08:45:35'),
(121, 3, '2017-11-24 08:45:35'),
(122, 4, '2017-11-24 08:55:32'),
(123, 2, '2017-11-24 08:55:32'),
(124, 6, '2017-11-24 08:55:32'),
(125, 1, '2017-11-24 08:55:32'),
(126, 3, '2017-11-24 08:55:32'),
(127, 5, '2017-11-24 08:55:32'),
(128, 10, '2017-11-24 08:55:33'),
(129, 8, '2017-11-24 08:55:33'),
(130, 9, '2017-11-24 08:55:33'),
(131, 7, '2017-11-24 08:55:33'),
(132, 6, '2017-11-24 09:05:31'),
(133, 7, '2017-11-24 09:05:31'),
(134, 8, '2017-11-24 09:05:31'),
(135, 9, '2017-11-24 09:05:31'),
(136, 10, '2017-11-24 09:05:31'),
(137, 1, '2017-11-24 09:05:32'),
(138, 4, '2017-11-24 09:05:32'),
(139, 3, '2017-11-24 09:05:32'),
(140, 2, '2017-11-24 09:05:32'),
(141, 5, '2017-11-24 09:05:32'),
(142, 7, '2017-12-13 10:10:10'),
(143, 7, '2017-12-13 11:10:10'),
(144, 7, '2017-12-13 12:10:10'),
(145, 8, '2017-12-13 12:10:10'),
(146, 10, '2017-12-13 12:10:10'),
(147, 2, '2017-12-13 07:10:00'),
(148, 2, '2017-12-14 07:10:00'),
(149, 1, '2017-12-14 07:10:00'),
(150, 3, '2017-12-14 07:10:00'),
(151, 8, '2017-12-15 12:10:10'),
(152, 8, '2017-12-15 12:10:10'),
(153, 8, '2017-12-21 12:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos`
--

CREATE TABLE `pos` (
  `id_pos` int(11) NOT NULL,
  `nama_pos` varchar(255) NOT NULL,
  `tipe` enum('RF','WL') NOT NULL,
  `long` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pos`
--

INSERT INTO `pos` (`id_pos`, `nama_pos`, `tipe`, `long`, `lat`, `alamat`) VALUES
(1, 'Jampue', 'RF', '119.615222', '-3.842861', '<p>\r\n	Desa Leppangeng, Kecamatan Pitumpanua, Kota Pinrang</p>\r\n'),
(2, 'Kabalangan', 'RF', '119.69845', '-5.380', '<p>\r\n	Makassar Sulawesi Selatan</p>\r\n'),
(3, 'Salobarani', 'RF', '119.849028', '-3.28175', '<p>\r\n	Desa Pana, Kecamatan Alla, Kota Enrekang</p>\r\n'),
(4, 'Tiroang', 'RF', '119.675861', '-3.797194', '<p>\r\n	Desa Marawi, Kecamatan Watang Sawitto, Kota Pinrang</p>\r\n'),
(5, 'Bendung Benteng (RF)', 'RF', '119.6794444', '-3.683889', '<p>\r\n	Kota Pinrang</p>\r\n'),
(6, 'Batu-Batu', 'WL', '119.554806', '-3.694111', '<p>\r\n	Desa Pekkabata, Kecamatan Duampanua, Kota Pinrang</p>\r\n'),
(7, 'Bila', 'WL', '119.7869965', '-4.3679735', '<p>\r\n	Desa Lalabata, Kabupaten Sopeng</p>\r\n'),
(8, 'Sikuku', 'WL', '119.8496976', '-2.9208027', '<p>\r\n	Kabupaten Toraja Utara</p>\r\n'),
(9, 'Baraka', 'WL', '119.860167', '-3.413722', '<p>\r\n	Desa Tominawa, Kecamatan Baraka, Kota Enrekang</p>\r\n'),
(10, 'Bendung Benteng (WL)', 'WL', '119.679444', '-3.683889', '<p>\r\n	Kota Pinrang</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensor`
--

CREATE TABLE `sensor` (
  `id_sensor` int(10) NOT NULL,
  `id_pos` int(10) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sensor`
--

INSERT INTO `sensor` (`id_sensor`, `id_pos`, `tipe`) VALUES
(1, 1, 'RF'),
(2, 2, 'RF'),
(3, 3, 'RF'),
(4, 4, 'RF'),
(5, 5, 'RF'),
(6, 6, 'WL'),
(7, 7, 'WL'),
(8, 8, 'WL'),
(9, 9, 'WL'),
(10, 10, 'WL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tma`
--

CREATE TABLE `tma` (
  `id_tma` int(20) NOT NULL,
  `id_pos` int(3) NOT NULL,
  `TMA` double NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tma`
--

INSERT INTO `tma` (`id_tma`, `id_pos`, `TMA`, `waktu`) VALUES
(12, 7, 12, '2017-10-10 10:30:10'),
(13, 8, 12.5, '2017-10-10 10:50:10'),
(14, 9, 13.5, '2017-10-09 10:50:10'),
(15, 10, 13.5, '2017-10-08 10:50:10'),
(16, 10, 13.5, '2017-10-07 10:50:10'),
(17, 7, 23.5, '2017-10-07 10:50:10'),
(18, 6, 25.5, '2017-10-08 10:50:10'),
(19, 8, 26.5, '2017-10-09 10:50:10'),
(20, 7, 20.5, '2017-10-10 10:50:10'),
(21, 7, 10, '2017-10-21 10:10:10'),
(22, 7, 10, '2017-10-21 10:20:10'),
(23, 7, 20, '2017-10-31 11:20:10'),
(24, 7, 12, '2017-10-31 11:50:10'),
(25, 7, 12, '2017-10-31 12:50:10'),
(27, 7, 12, '2017-11-02 12:50:10'),
(28, 7, 22, '2017-11-03 12:50:10'),
(29, 7, 22, '2017-11-04 12:50:10'),
(30, 7, 2, '2017-11-05 12:50:10'),
(31, 7, 42, '2017-11-06 12:50:10'),
(32, 6, 10, '2017-11-01 08:23:00'),
(33, 7, 22, '2017-11-07 01:50:10'),
(34, 7, 2, '2017-11-07 02:50:10'),
(35, 7, 100, '2017-11-07 03:50:10'),
(36, 7, 10, '2017-11-08 03:50:10'),
(37, 7, 30, '2017-11-09 10:10:10'),
(38, 7, 20, '2017-11-17 11:20:10'),
(39, 6, 10, '2017-11-21 10:10:10'),
(40, 8, 12.5, '2017-11-23 08:11:29'),
(41, 7, 20, '2017-11-23 08:11:28'),
(42, 6, 10, '2017-11-23 08:11:29'),
(43, 10, 13.5, '2017-11-23 08:11:29'),
(44, 9, 13.5, '2017-11-23 08:11:29'),
(45, 6, 10, '2017-11-23 08:12:29'),
(46, 9, 13.5, '2017-11-23 08:12:29'),
(47, 8, 12.5, '2017-11-23 08:12:29'),
(48, 7, 20, '2017-11-23 08:12:29'),
(49, 10, 13.5, '2017-11-23 08:12:29'),
(50, 6, 10, '2017-11-23 08:13:28'),
(51, 7, 20, '2017-11-23 08:13:28'),
(52, 9, 13.5, '2017-11-23 08:13:28'),
(53, 8, 12.5, '2017-11-23 08:13:28'),
(54, 10, 13.5, '2017-11-23 08:13:29'),
(55, 6, 10, '2017-11-23 08:14:28'),
(56, 7, 20, '2017-11-23 08:14:28'),
(57, 8, 12.5, '2017-11-23 08:14:29'),
(58, 10, 13.5, '2017-11-23 08:14:29'),
(59, 9, 13.5, '2017-11-23 08:14:29'),
(60, 6, 10, '2017-11-23 08:48:52'),
(61, 8, 12.5, '2017-11-23 08:48:53'),
(62, 7, 20, '2017-11-23 08:48:53'),
(63, 9, 13.5, '2017-11-23 08:48:53'),
(64, 10, 13.5, '2017-11-23 08:48:53'),
(65, 6, 10, '2017-11-23 09:03:43'),
(66, 8, 12.5, '2017-11-23 09:03:43'),
(67, 10, 13.5, '2017-11-23 09:03:43'),
(68, 7, 20, '2017-11-23 09:03:43'),
(69, 9, 13.5, '2017-11-23 09:03:43'),
(70, 6, 10, '2017-11-23 10:56:31'),
(71, 7, 20, '2017-11-23 10:56:31'),
(72, 8, 12.5, '2017-11-23 10:56:31'),
(73, 9, 13.5, '2017-11-23 10:56:31'),
(74, 10, 13.5, '2017-11-23 10:56:32'),
(75, 10, 13.5, '2017-11-23 10:56:37'),
(76, 7, 20, '2017-11-23 10:56:37'),
(77, 8, 12.5, '2017-11-23 10:56:37'),
(78, 6, 10, '2017-11-23 10:56:37'),
(79, 9, 13.5, '2017-11-23 10:56:37'),
(80, 9, 13.5, '2017-11-24 08:45:33'),
(81, 6, 10, '2017-11-24 08:45:32'),
(82, 10, 13.5, '2017-11-24 08:45:33'),
(83, 7, 20, '2017-11-24 08:45:33'),
(84, 8, 12.5, '2017-11-24 08:45:33'),
(85, 6, 10, '2017-11-24 08:55:32'),
(86, 10, 13.5, '2017-11-24 08:55:33'),
(87, 8, 12.5, '2017-11-24 08:55:33'),
(88, 7, 20, '2017-11-24 08:55:33'),
(89, 9, 13.5, '2017-11-24 08:55:33'),
(90, 6, 10, '2017-11-24 09:05:31'),
(91, 7, 20, '2017-11-24 09:05:31'),
(92, 8, 12.5, '2017-11-24 09:05:31'),
(93, 9, 13.5, '2017-11-24 09:05:31'),
(94, 10, 13.5, '2017-11-24 09:05:31'),
(95, 7, 10, '2017-12-13 10:10:10'),
(96, 7, 10, '2017-12-12 11:10:10'),
(97, 7, 10, '2017-12-13 12:10:10'),
(98, 8, 10, '2017-12-13 12:10:10'),
(99, 10, 10, '2017-12-13 12:10:10'),
(100, 8, 100, '2017-12-15 12:10:10'),
(101, 8, 100, '2017-12-15 12:10:10'),
(102, 8, 100, '2017-12-21 12:10:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(10) NOT NULL,
  `id_pos` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_pos`, `judul`, `waktu`) VALUES
(1, 1, 'gin.mp4', '2017-08-23 00:00:00'),
(4, 1, 'gin2.mp4', '2017-08-30 00:00:00'),
(6, 2, 'dragonball2.MP4', '2017-08-16 00:00:00'),
(27, 2, 'dragonball1.mp4', '2017-09-20 00:00:00'),
(39, 1, 'Zippyshare.com - DBS89INDO-480p-SAMEHADAKU.NET.mkv.MP4', '2017-09-06 10:18:05'),
(40, 2, 'MrBean_(1).mp4', '2017-09-06 10:28:57'),
(41, 2, 'MrBean.mp4', '2017-09-06 10:32:11'),
(42, 2, 'MrBean.mp4', '2017-09-06 10:35:47'),
(43, 1, 'judul.mp4', '2017-09-24 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `batas`
--
ALTER TABLE `batas`
  ADD PRIMARY KEY (`id_batas`);

--
-- Indexes for table `citra`
--
ALTER TABLE `citra`
  ADD PRIMARY KEY (`id_citra`);

--
-- Indexes for table `curah_hujan`
--
ALTER TABLE `curah_hujan`
  ADD PRIMARY KEY (`id_curah`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `kamera`
--
ALTER TABLE `kamera`
  ADD PRIMARY KEY (`id_kamera`);

--
-- Indexes for table `logsensor`
--
ALTER TABLE `logsensor`
  ADD PRIMARY KEY (`id_log_sensor`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id_pos`);

--
-- Indexes for table `sensor`
--
ALTER TABLE `sensor`
  ADD PRIMARY KEY (`id_sensor`);

--
-- Indexes for table `tma`
--
ALTER TABLE `tma`
  ADD PRIMARY KEY (`id_tma`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `batas`
--
ALTER TABLE `batas`
  MODIFY `id_batas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `citra`
--
ALTER TABLE `citra`
  MODIFY `id_citra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `curah_hujan`
--
ALTER TABLE `curah_hujan`
  MODIFY `id_curah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kamera`
--
ALTER TABLE `kamera`
  MODIFY `id_kamera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `logsensor`
--
ALTER TABLE `logsensor`
  MODIFY `id_log_sensor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sensor`
--
ALTER TABLE `sensor`
  MODIFY `id_sensor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tma`
--
ALTER TABLE `tma`
  MODIFY `id_tma` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;