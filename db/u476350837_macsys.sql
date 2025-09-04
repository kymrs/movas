-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2025 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u476350837_macsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(10) NOT NULL,
  `type_customer` varchar(100) NOT NULL,
  `customer` varchar(120) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `status` varchar(15) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `type_customer`, `customer`, `pic`, `email`, `telp`, `jabatan`, `password`, `id_cabang`, `status`, `user`, `modif`) VALUES
('CUS0001', 'Fleet', 'PT. Federal International Finance', 'Eko Budi Santoso', 'tri@yatno', '08111981741', 'Admin', '202cb962ac59075b964b07152d234b70', 2014, 'Aktif', 1012, '2025-08-26 07:19:04'),
('CUS0002', 'Personal', 'PT. Mandiri Cipta Sejahtera', 'MUHAMMAD RIZKY SAPUTRA', 'muhamadrizkysaputra34@gmail.com', '089602984422', 'Kepala Divisi', '202cb962ac59075b964b07152d234b70', 0, 'Aktif', 0, '2025-08-31 01:23:53'),
('CUS0003', '', 'PT. Mandiri Cipta Sejahtera', 'Rakha', 'rakha@gmail.com', '08962343532', 'Kepala Divisi', 'caf1a3dfb505ffed0d024130f58c5cfa', 0, 'Aktif', 0, '2025-09-02 01:54:01'),
('CUS0004', '', 'PT. Crypto PPRE', 'farhan', 'farhan@gmail.com', '089632112344', 'Manager', '202cb962ac59075b964b07152d234b70', 0, 'Aktif', 0, '2025-09-04 07:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `kalender`
--

CREATE TABLE `kalender` (
  `id` int(11) NOT NULL,
  `periode` varchar(4) NOT NULL,
  `title` text NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `display` date NOT NULL,
  `nilai` int(3) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kalender`
--

INSERT INTO `kalender` (`id`, `periode`, `title`, `start`, `end`, `display`, `nilai`, `status`) VALUES
(1, '2019', 'TAHUN BARU MASEHI 2019', '2019-01-01', '2019-01-01', '2019-01-02', 1, 'LN'),
(2, '2019', 'TAHUN BARU IMLEK 2570', '2019-02-05', '2019-02-05', '2019-02-06', 1, 'LN'),
(3, '2019', 'HARI RAYA NYEPI 1941', '2019-03-07', '2019-03-07', '2019-03-08', 1, 'LN'),
(4, '2019', 'ISRA MIRAJ NABI MUHAMMAD SAW', '2019-04-03', '2019-04-03', '2019-04-04', 1, 'L'),
(5, '2019', 'HARI RAYA IDUL FITRI 1440 HIJRIYAH', '2019-06-03', '2019-06-04', '2019-06-05', 2, 'LN'),
(6, '2019', 'HARI RAYA IDUL FITRI 1440 HIJRIYAH', '2019-06-07', '2019-06-07', '2019-06-08', 1, 'LN'),
(7, '2019', 'HARI RAYA NATAL', '2019-12-24', '2019-12-24', '2019-12-25', 1, 'LN'),
(8, '2019', 'WAFAT ISA AL MASIH', '2019-04-19', '2019-04-19', '2019-04-20', 1, 'L'),
(9, '2019', 'HARI BURUH INTERNATIONAL', '2019-05-01', '2019-05-01', '2019-05-02', 1, 'L'),
(10, '2019', 'HARI RAYA WAISAK 2563', '2019-05-19', '2019-05-19', '2019-05-20', 1, 'LN'),
(11, '2019', 'KENAIKAN ISA AL MASIH', '2019-05-30', '2019-05-30', '2019-05-31', 1, 'L'),
(12, '2019', 'HARI LAHIR PANCASILA', '2019-06-01', '2019-06-01', '2019-06-02', 1, 'L'),
(13, '2019', 'HARI RAYA IDUL FITRI 1440 HIJRIYAH', '2019-06-05', '2019-06-06', '2019-06-07', 2, 'LN'),
(14, '2019', 'HARI RAYA IDUL ADHA 1440 HIJRIYAH', '2019-08-11', '2019-08-11', '2019-08-12', 1, 'LN'),
(15, '2019', 'HARI KEMERDEKAAN REPUBLIK INDONESIA', '2019-08-17', '2019-08-17', '2019-08-18', 1, 'L'),
(16, '2019', 'TAHUN BARU ISLAM 1441 HIJRIYAH', '2019-09-01', '2019-09-01', '2019-09-02', 1, 'LN'),
(17, '2019', 'MAULID NABI MUHAMMAD SAW', '2019-11-09', '2019-11-09', '2019-11-10', 1, 'L'),
(18, '2019', 'HARI RAYA NATAL', '2019-12-25', '2019-12-25', '2019-12-26', 1, 'LN'),
(19, '2019', 'PEMILU PERSIDEN', '2019-04-17', '2019-04-17', '2019-04-18', 1, 'L'),
(20, '2020', 'TAHUN BARU IMLEK 2571 KONGZILI', '2020-01-25', '2020-01-25', '2020-01-26', 1, 'LN'),
(21, '2020', 'ISRA MIKRAJ NABI MUHAMMAD SAW', '2020-03-22', '2020-03-22', '2020-03-23', 1, 'L'),
(22, '2020', 'HARI SUCI NYEPI TAHUN BARU SAKA 1942', '2020-03-25', '2020-03-25', '2020-03-26', 1, 'LN'),
(23, '2020', 'WAFAT ISA MASIH', '2020-04-10', '2020-04-10', '2020-04-11', 1, 'L'),
(24, '2020', 'HARI BURUH INTERNATIONAL', '2020-05-01', '2020-05-01', '2020-05-02', 1, 'L'),
(25, '2020', 'HARI RAYA WAISAK 2564', '2020-05-07', '2020-05-07', '2020-05-08', 1, 'LN'),
(26, '2020', 'KENAIKAN ISA ALMASIH', '2020-05-21', '2020-05-21', '2020-05-22', 1, 'L'),
(27, '2020', 'HARI RAYA IDUL FITRI 1441 HIJRIYAH', '2020-05-24', '2020-05-25', '2020-05-26', 2, 'LN'),
(28, '2020', 'HARI LAHIR PANCASILA', '2020-06-01', '2020-06-01', '2020-06-02', 1, 'L'),
(29, '2020', 'HARI RAYA IDUL ADHA 1441 HIJRIYAH', '2020-07-31', '2020-07-31', '2020-08-01', 1, 'LN'),
(30, '2020', 'HARI KEMERDEKAAN REPUBLIK INDONESIA', '2020-08-17', '2020-08-17', '2020-08-18', 1, 'L'),
(31, '2020', 'TAHUN BARU ISLAM 1442 HUJRIYAH', '2020-08-20', '2020-08-20', '2020-08-21', 1, 'LN'),
(32, '2020', 'MAULID', '2020-10-29', '2020-10-29', '2020-10-30', 1, 'L'),
(33, '2020', 'HARI RAYA NATAL', '2020-12-24', '2020-12-24', '2020-12-25', 1, 'LN'),
(34, '2020', 'HARI RAYA NATAL', '2020-12-25', '2020-12-25', '2020-12-26', 1, 'LN'),
(35, '2020', 'Tahun Baru Masehi', '2020-01-01', '2020-01-01', '2020-01-02', 1, 'LN'),
(36, '2020', 'TAHUN BARU ISLAM 1442 HUJRIYAH', '2020-08-21', '2020-08-21', '2020-08-22', 1, 'LN'),
(37, '2020', 'MAULID NABI', '2020-10-28', '2020-10-28', '2020-10-29', 1, 'LN'),
(38, '2020', 'MAULID NABI MUHAMMAD', '2020-10-30', '2020-10-30', '2020-10-31', 1, 'LN'),
(39, '2020', 'PENGGANTI CUTI BERSAMA HARI RAYA IDUL FITRI 1441 H', '2020-12-31', '2020-12-31', '2021-01-01', 1, 'LN'),
(40, '2021', 'TAHUN BARU 2021 MASEHI', '2021-01-01', '2021-01-01', '2021-01-02', 1, 'LN'),
(41, '2021', 'TAHUN BARU IMLEK 2572', '2021-02-12', '2021-02-12', '2021-02-13', 1, 'LN'),
(42, '2021', 'ISRA MIKRAJ NABI MUHAMMAD SAW', '2021-03-11', '2021-03-11', '2021-03-12', 1, 'L'),
(43, '2021', 'HARI SUCI NYEPI TAHUN BARU SAKA 1943', '2021-03-14', '2021-03-14', '2021-03-15', 1, 'LN'),
(44, '2021', 'WAFAT ISA AL-MASIH', '2021-04-02', '2021-04-02', '2021-04-03', 1, 'L'),
(45, '2021', 'HARI BURUH', '2021-05-01', '2021-05-01', '2021-05-02', 1, 'L'),
(46, '2021', 'KENAIKAN ISA AL-MASIH', '2021-05-13', '2021-05-13', '2021-05-14', 1, 'L'),
(47, '2021', 'HARI RAYA IDUL FITRI 1442 HIJRIYAH', '2021-05-13', '2021-05-14', '2021-05-15', 2, 'LN'),
(48, '2021', 'CUTI BERSAMA HARI RAYA IDUL FITRI', '2021-05-12', '2021-05-12', '2021-05-13', 1, 'LN'),
(49, '2021', 'HARI LAHIR PANCASILA', '2021-06-01', '2021-06-01', '2021-06-02', 1, 'L'),
(50, '2021', 'HARI RAYA IDUL ADHA 1442 HIJRIYAH', '2021-07-20', '2021-07-20', '2021-07-21', 1, 'LN'),
(51, '2021', 'TAHUN BARU ISLAM 1443 HUJRIYAH', '2021-08-10', '2021-08-10', '2021-08-11', 1, 'LN'),
(52, '2021', 'HARI KEMERDEKAAN REPUBLIK INDONESIA', '2021-08-17', '2021-08-17', '2021-08-18', 1, 'LN'),
(53, '2021', 'MAULID NABI MUHAMMAD SAW', '2021-10-19', '2021-10-19', '2021-10-20', 1, 'L'),
(54, '2021', 'HARI RAYA NATAL', '2021-12-25', '2021-12-25', '2021-12-26', 1, 'LN'),
(55, '2020', 'PILKADA SERENTAK', '2020-12-09', '2020-12-09', '2020-12-10', 1, 'L'),
(56, '2021', 'Hari Waisak', '2021-05-26', '2021-05-26', '2021-05-27', 1, 'L'),
(57, '2022', 'Tahun Baru 2022 Masehi', '2022-01-01', '2022-01-01', '2022-01-02', 1, 'LN'),
(58, '2022', 'Tahun Baru Imlek 2573', '2022-02-01', '2022-02-01', '2022-02-02', 1, 'LN'),
(59, '2022', 'ISRA MIKRAJ NABI MUHAMMAD SAW', '2022-02-28', '2022-02-28', '2022-03-01', 1, 'L'),
(60, '2022', 'HARI NYEPI 1944', '2022-03-03', '2022-03-03', '2022-03-04', 1, 'L'),
(61, '2022', 'WAFAT ISA AL MASIH', '2022-04-15', '2022-04-15', '2022-04-16', 1, 'L'),
(62, '2022', 'HARI BURUH', '2022-05-01', '2022-05-01', '2022-05-02', 1, 'L'),
(63, '2022', 'HARI RAYA IDUL FITRI 1443 H', '2022-05-02', '2022-05-03', '2022-05-04', 2, 'LN'),
(64, '2022', 'HARI RAYA WAISAK 2566', '2022-05-16', '2022-05-16', '2022-05-17', 1, 'LN'),
(65, '2022', 'KENAIKAN ISA AL MASIH', '2022-05-26', '2022-05-26', '2022-05-27', 1, 'L'),
(66, '2022', 'HARI LAHIR PANCASILA', '2022-06-01', '2022-06-01', '2022-06-02', 1, 'L'),
(67, '2022', 'HARI RAYA IDUL ADHA 1443 H', '2022-07-09', '2022-07-09', '2022-07-10', 1, 'LN'),
(68, '2022', 'TAHUN BARU ISLAM 1444 H', '2022-07-30', '2022-07-30', '2022-07-31', 1, 'LN'),
(69, '2022', 'HARI KEMERDEKAAN RI ', '2022-08-17', '2022-08-17', '2022-08-18', 1, 'L'),
(70, '2022', 'MAULID NABI MUHAMMAD SAW', '2022-10-08', '2022-10-08', '2022-10-09', 1, 'L'),
(71, '2022', 'HARI RAYA NATAL', '2022-12-25', '2022-12-25', '2022-12-26', 1, 'LN'),
(72, '2022', 'CUTI BERSAMA HARI RAYA IDUL FITRI 1433 H', '2022-04-29', '2022-04-29', '2022-04-30', 1, 'LN'),
(73, '2022', 'CUTI BERSAMA HARI RAYA IDUL FITRI 1433 H', '2022-05-04', '2022-05-04', '2022-05-05', 1, 'LN'),
(74, '2022', 'CUTI BERSAMA HARI RAYA IDUL FITRI 1433 H', '2022-05-05', '2022-05-06', '2022-05-07', 2, 'LN'),
(97, '2024', 'css', '2024-01-30', '2024-01-30', '2024-01-31', 1, 'L'),
(98, '2024', 'M_contact_info.php', '2024-01-25', '2024-01-25', '2024-01-26', 1, 'L'),
(102, '2024', 'TES ssssssss', '2024-01-15', '2024-01-15', '2024-01-16', 1, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id_kategori_barang` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id_kategori_barang`, `nama`) VALUES
(1, 'Part'),
(2, 'Pelumas'),
(3, 'Bahan'),
(4, 'Lain-Lain');

-- --------------------------------------------------------

--
-- Table structure for table `m_indikator`
--

CREATE TABLE `m_indikator` (
  `id` int(11) NOT NULL,
  `kolom_komponen` varchar(126) NOT NULL,
  `range_awal` varchar(50) NOT NULL,
  `range_akhir` varchar(50) NOT NULL,
  `indikator` varchar(126) NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m_indikator`
--

INSERT INTO `m_indikator` (`id`, `kolom_komponen`, `range_awal`, `range_akhir`, `indikator`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'tg_oli_mesin', '180', '180', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(2, 'km_oli_mesin', '10000', '10000', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(3, 'tg_filter_oli_mesin', '180', '180', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(4, 'km_filter_oli_mesin', '10000', '10000', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(5, 'km_oli_transmisi', '40000', '40000', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(6, 'tg_oli_transmisi', '720', '720', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(7, 'dp_wiper', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(8, 'dp_wiper', 'Getas', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(9, 'bl_wiper', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(10, 'bl_wiper', 'Getas', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(11, 'volt_aki', '11', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(12, 'busi', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(13, 'busi', 'Kotor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(14, 'timing_belt', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(15, 'timing_belt', 'Retak', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(16, 'filter_udara', 'Bersih', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(17, 'filter_udara', 'Kotor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(18, 'filter_ac', 'Bersih', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(19, 'filter_ac', 'Kotor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(20, 'kondisi_radiator', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(21, 'kondisi_radiator', 'Bocor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(22, 'lampu_utama', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(23, 'lampu_utama', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(24, 'lampu_utama', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(25, 'lampu_utama', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(26, 'lampu_kota', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(27, 'lampu_kota', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(28, 'lampu_kota', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(29, 'lampu_kota', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(30, 'lampu_sein', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(31, 'lampu_sein', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(32, 'lampu_sein', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(33, 'lampu_sein', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(34, 'lampu_hazard', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(35, 'lampu_hazard', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(36, 'lampu_hazard', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(37, 'lampu_hazard', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(38, 'lampu_rem', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(39, 'lampu_rem', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(40, 'lampu_rem', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(41, 'lampu_rem', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(42, 'lampu_mundur', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(43, 'lampu_mundur', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(44, 'lampu_mundur', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(45, 'lampu_mundur', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(46, 'lampu_kabut', 'Hidup Semua', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(47, 'lampu_kabut', 'Mati Semua', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(48, 'lampu_kabut', 'Mati 1 (Kanan)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(49, 'lampu_kabut', 'Mati 1 (Kiri)', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(50, 'suspensi_dp_kanan', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(51, 'suspensi_dp_kanan', 'Bocor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(52, 'suspensi_dp_kiri', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(53, 'suspensi_dp_kiri', 'Bocor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(54, 'suspensi_bl_kanan', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(55, 'suspensi_bl_kanan', 'Bocor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(56, 'suspensi_bl_kiri', 'Baik', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(57, 'suspensi_bl_kiri', 'Bocor', '', 'Attention!', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(58, 'kampas_rem_dp_kanan', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(59, 'kampas_rem_dp_kiri', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(60, 'kampas_rem_bl_kanan', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(61, 'kampas_rem_bl_kiri', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(62, 'ktbln_ban_dp_kanan', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(63, 'ktbln_ban_dp_kiri', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(64, 'ktbln_ban_bl_kanan', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094),
(65, 'ktbln_ban_bl_kiri', '50', '', 'Safe', 'Aktif', '2025-08-27 06:31:00', '2025-08-27 06:31:00', 1094);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses_menu`
--

CREATE TABLE `tbl_akses_menu` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `view_level` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_akses_menu`
--

INSERT INTO `tbl_akses_menu` (`id`, `id_level`, `id_menu`, `view_level`) VALUES
(1, 1, 1, 'Y'),
(2, 1, 2, 'Y'),
(3, 1, 3, 'Y'),
(4, 1, 4, 'Y'),
(5, 1, 5, 'Y'),
(6, 1, 6, 'Y'),
(7, 1, 7, 'Y'),
(8, 3, 1, 'Y'),
(9, 3, 2, 'N'),
(10, 3, 3, 'Y'),
(11, 3, 4, 'Y'),
(12, 3, 5, 'Y'),
(13, 3, 6, 'N'),
(14, 3, 7, 'Y'),
(15, 2, 1, 'N'),
(16, 2, 2, 'N'),
(17, 2, 3, 'N'),
(18, 2, 4, 'N'),
(19, 2, 5, 'N'),
(20, 2, 6, 'N'),
(21, 2, 7, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses_submenu`
--

CREATE TABLE `tbl_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `view_level` enum('Y','N') DEFAULT 'N',
  `add_level` enum('Y','N') DEFAULT 'N',
  `edit_level` enum('Y','N') DEFAULT 'N',
  `delete_level` enum('Y','N') DEFAULT 'N',
  `print_level` enum('Y','N') DEFAULT 'N',
  `upload_level` enum('Y','N') DEFAULT 'N',
  `approve_level` enum('Y','N') DEFAULT 'N',
  `cancel_level` enum('Y','N') DEFAULT 'N',
  `export_level` enum('Y','N') DEFAULT 'N',
  `import_level` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_akses_submenu`
--

INSERT INTO `tbl_akses_submenu` (`id`, `id_level`, `id_submenu`, `view_level`, `add_level`, `edit_level`, `delete_level`, `print_level`, `upload_level`, `approve_level`, `cancel_level`, `export_level`, `import_level`) VALUES
(1, 1, 1, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(2, 1, 2, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(3, 1, 3, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(4, 1, 4, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(5, 1, 5, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(6, 1, 6, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(7, 1, 7, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(8, 1, 8, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N'),
(9, 1, 9, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(10, 1, 10, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(11, 1, 11, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(12, 1, 12, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(13, 1, 13, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(14, 1, 14, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(15, 1, 15, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(16, 1, 16, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(17, 1, 17, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(18, 1, 18, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(19, 1, 19, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(20, 1, 20, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(21, 1, 21, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(22, 1, 22, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(23, 1, 23, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(24, 1, 24, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(25, 1, 25, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(26, 1, 26, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(27, 1, 27, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(28, 1, 28, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(29, 3, 1, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(30, 3, 2, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(31, 3, 3, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(32, 3, 4, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(33, 3, 5, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(34, 3, 6, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(35, 3, 7, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(36, 3, 8, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(37, 3, 9, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(38, 3, 10, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(39, 3, 11, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(40, 3, 12, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(41, 3, 13, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(42, 3, 14, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(43, 3, 15, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(44, 3, 16, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(45, 3, 17, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(46, 3, 18, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(47, 3, 19, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(48, 3, 20, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(49, 3, 21, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(50, 3, 22, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(51, 3, 23, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(52, 3, 24, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(53, 3, 25, 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N'),
(54, 3, 26, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(55, 3, 27, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(56, 3, 28, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(57, 1, 29, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(58, 1, 30, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(59, 1, 31, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(61, 1, 33, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(62, 1, 34, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N'),
(63, 2, 1, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(64, 2, 2, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(65, 2, 3, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(66, 2, 4, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(67, 2, 5, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(68, 2, 6, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(69, 2, 7, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(70, 2, 8, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(71, 2, 9, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(72, 2, 10, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(73, 2, 11, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(74, 2, 12, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(75, 2, 13, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(76, 2, 14, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(77, 2, 15, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(78, 2, 16, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(79, 2, 17, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(80, 2, 18, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(81, 2, 19, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(82, 2, 20, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(83, 2, 21, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(84, 2, 22, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(85, 2, 23, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(86, 2, 24, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(87, 2, 25, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(88, 2, 26, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(89, 2, 27, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(90, 2, 28, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(91, 2, 29, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(92, 2, 30, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(93, 2, 31, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(94, 2, 33, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(95, 2, 34, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(96, 3, 29, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(97, 3, 30, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(98, 3, 31, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(99, 3, 33, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(100, 3, 34, 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N'),
(101, 1, 35, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N'),
(102, 1, 36, 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alasan_no_deal`
--

CREATE TABLE `tbl_alasan_no_deal` (
  `id_no_deal` int(11) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_alasan_no_deal`
--

INSERT INTO `tbl_alasan_no_deal` (`id_no_deal`, `uraian`, `status`, `user`, `modif`) VALUES
(1, 'Unit Full Booking', 'Aktif', 1094, '2024-04-30 02:03:26'),
(2, 'Type Unit Tidak Tersedia', 'Aktif', 1094, '2024-04-02 08:07:45'),
(3, 'Harga Mahal', 'Aktif', 1094, '2024-04-02 08:07:45'),
(4, 'Tidak Jadi Booking', 'Aktif', 1203, '2024-06-13 20:15:11'),
(5, 'Reschedule', 'Aktif', 1094, '2024-07-17 20:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id_bank` int(11) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `id_vendor` varchar(20) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id_bank`, `bank`, `no_rekening`, `atas_nama`, `status`, `id_cabang`, `id_vendor`, `user`, `modif`) VALUES
(1, 'BCA Cabang Times Square', '740 120 4001', 'PT. Mandiri Cipta Sejahtera', 'Aktif', 1000, '1', 1203, '2025-05-13 01:55:13'),
(2, 'BCA', '713 172 8003', 'PT Quick Project Indonesia', 'Aktif', 1000, '2', 1203, '2025-05-13 01:55:17'),
(4, 'BCA Cabang Times Square', '740.120.4001', 'PT. Mandiri Cipta Sejahtera', 'Aktif', 1006, '2', 1094, '2025-05-13 01:55:19'),
(5, 'BCA Cabang Times Square', '740.120.4001', 'PT. Mandiri Cipta Sejahtera', 'Aktif', 1005, '1', 1094, '2025-05-13 01:55:22'),
(6, 'BCA Cabang Times Square', '740.120.4001', 'PT. Mandiri Cipta Sejahtera', 'Aktif', 2014, '1', 1094, '2025-05-13 01:55:25'),
(7, 'BCA', '5465113844', 'Gerald Tanjung', 'Aktif', 1006, '1', 1027, '2025-05-13 01:55:28'),
(9, 'BCA', '867 058 3245', 'Hery Yansah', 'Aktif', 1006, '1', 1027, '2025-05-13 01:55:30'),
(10, 'BCA', '498-029-1095', 'Chandra Setiawan', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:33'),
(11, 'BRI', '095301010711507', 'Fredeswinda Rafikasari', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:36'),
(12, 'BCA', '7401671114', 'Fajar W', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:38'),
(13, 'BCA', '8801406271', 'Heri Susanto', 'Aktif', 1006, '1', 1027, '2025-05-13 01:55:41'),
(14, 'BCA', '7401093871', 'Yoko Fredian Saputra', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:44'),
(15, 'BCA', '2490473451', 'Misno S', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:48'),
(16, 'BCA', '007-014-7980', 'Khoirur Roziqin', 'Aktif', 1006, '1', 1027, '2025-05-13 01:55:51'),
(17, 'BNI', '034-013-6422', 'Warsono', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:54'),
(18, 'BCA', '0662138337', 'Sundari', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:57'),
(19, 'BRI', '479501020744534', 'Ahmad Acun', 'Aktif', 1006, '2', 1027, '2025-05-13 01:55:59'),
(20, 'BCA', '4140314761', 'Riny Octaviani', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:01'),
(21, 'BCA', '7111554165', 'Irvan setiawan', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:04'),
(22, 'BCA', '5721641041', 'Ega Aris Munandar', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:06'),
(23, 'Mandiri', '1550010216573', 'Jimi Saputra', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:10'),
(24, 'BCA', '4061265311', 'Bambang Mugiono', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:12'),
(25, 'BCA', '7400981820', 'Priyadi', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:14'),
(26, 'BRI', '432501008556538', 'Heri Rustaman', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:17'),
(27, 'Mandiri', '1670003358172', 'Mudjiono', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:21'),
(28, 'BCA', '0830020730', 'Ahmad Huri', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:27'),
(29, 'BCA', '0830020730', 'Ahmad Huri', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:30'),
(30, 'BNI', '130-187-8953', 'Risma Damayanti', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:33'),
(32, 'Mandiri', '1330027050210', 'Queena International', 'Aktif', 1006, '1', 1027, '2025-05-13 01:56:35'),
(33, 'BCA Syariah', '0360007769', 'Muhamad Azean Sebih', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:38'),
(34, 'BCA', '4061020530', 'Dedik Septyawan', 'Aktif', 1006, '2', 1027, '2025-05-13 01:56:40'),
(35, 'BCA', ' 0953003977', 'Agus Suprayitno', 'Aktif', 1006, '2', 1012, '2025-05-14 09:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya`
--

CREATE TABLE `tbl_biaya` (
  `id_biaya` int(11) NOT NULL,
  `biaya` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_biaya`
--

INSERT INTO `tbl_biaya` (`id_biaya`, `biaya`, `status`, `kategori`, `user`, `modif`) VALUES
(128, 'BBM', 'Aktif', 'Biaya', 1012, '2024-04-24 07:44:40'),
(129, 'Tol', 'Aktif', 'Biaya', 1012, '2024-04-24 07:45:13'),
(130, 'Parkir', 'Aktif', 'Biaya', 1012, '2024-04-24 07:45:23'),
(131, 'Wifi', 'Aktif', 'Biaya', 1012, '2024-04-24 07:45:33'),
(135, 'Honor Crew', 'Aktif', 'Biaya', 1203, '2024-09-10 20:04:32'),
(136, 'Akomodasi Crew', 'Aktif', 'Biaya', 1203, '2024-09-10 20:05:17'),
(137, 'Tip Driver', 'Aktif', 'Biaya', 1094, '2024-05-02 02:02:34'),
(138, 'Fee Mediator', 'Aktif', 'Biaya', 1012, '2024-04-24 07:51:04'),
(139, 'PPH 23', 'Aktif', 'Biaya', 1012, '2024-04-24 07:51:21'),
(140, 'Overtime Crew', 'Aktif', 'Biaya', 1203, '2024-09-10 20:05:32'),
(141, 'Cashback', 'Aktif', 'Biaya', 1094, '2024-05-02 01:58:47'),
(142, 'Pendapatan Sewa', 'Aktif', 'Pendapatan', 1012, '2024-04-24 07:52:44'),
(143, 'Pendapatan Overtime', 'Aktif', 'Pendapatan', 1012, '2024-04-24 07:53:11'),
(144, 'Pendapatan Pinalti', 'Aktif', 'Pendapatan', 1012, '2024-04-24 07:53:37'),
(145, 'Biaya Pinalti', 'Aktif', 'Biaya', 1012, '2024-04-24 07:53:58'),
(146, 'Biaya PO Lain', 'Aktif', 'Biaya', 1094, '2024-05-02 01:58:33'),
(147, 'Bongkar Jok', 'Aktif', 'Biaya', 1094, '2024-05-02 01:58:14'),
(148, 'Cuci Unit', 'Aktif', 'Biaya', 1094, '2024-05-02 01:58:07'),
(149, 'Baterai Mic', 'Aktif', 'Biaya', 1094, '2024-05-02 01:57:59'),
(150, 'Refill Pewangi Isi Ulang', 'Aktif', 'Biaya', 1094, '2024-05-02 02:00:03'),
(151, 'Refill Air Galon', 'Aktif', 'Biaya', 1094, '2024-05-02 02:00:30'),
(152, 'Laundry Seragam', 'Aktif', 'Biaya', 1094, '2024-05-02 02:00:50'),
(153, 'Lain-Lain', 'Aktif', 'Biaya', 1094, '2024-05-02 02:03:15'),
(154, 'Pendapatan Cancel Booking', 'Aktif', 'Pendapatan', 1203, '2024-11-21 19:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cabang`
--

CREATE TABLE `tbl_cabang` (
  `id_cabang` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tlp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `user` varchar(10) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `warna` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cabang`
--

INSERT INTO `tbl_cabang` (`id_cabang`, `nama`, `alamat`, `tlp`, `email`, `status`, `user`, `modif`, `warna`) VALUES
(1000, 'MAC NASIONAL', 'Ruko Niaga Citra Gran Blok R9 No. 3, 5 - 6, Jl. Alternatif Transyogi Cibubur Kel. Jatisampurna Kec. Jatisampurna Kota Bekasi 17435', '0878-8377-7711', 'headoffice@morena_trans.co.id', 'Y', '1012', '2025-08-22 04:10:36', ''),
(1002, 'MAC JAWA TENGAH', '-', '-', '-', 'Y', '1012', '2025-08-22 04:10:21', ''),
(1003, 'MAC JATIM 1', '-', '-', '-', 'Y', '1012', '2025-08-22 04:10:00', ''),
(1004, 'MAC JABAR 1', 'JL. Cipeucang', '081213325395', 'jabar1@morena_trans.co.id', 'Y', '1012', '2025-08-22 04:09:51', ''),
(1005, 'MAC JABAR 2', 'Jl. Kolonel Ahmad Syam No. 235 RT. 04/06, Desa Sayang, Kec. Jatinangor, Sumedang 45363', '0878-3272-1722', 'jabar2@morena_trans.co.id', 'Y', '1012', '2025-08-22 04:09:42', ''),
(2001, 'MAC RIAU', '-', '-', '-', 'Y', '1012', '2025-08-22 04:09:32', ''),
(2006, 'MAC LAMPUNG', '-', '-', '-', 'Y', '1012', '2025-08-22 04:09:23', ''),
(2009, 'MAC BANTEN', '-', '-', '-', 'Y', '1012', '2025-08-22 04:09:15', ''),
(2012, 'MAC SUMBAGSEL 1', '-', '-', '-', 'Y', '1012', '2025-08-22 04:09:07', ''),
(2013, 'MAC SUMBAGSEL 2', '-', '-', '-', 'Y', '1012', '2025-08-22 04:08:58', ''),
(2014, 'MAC BALI', 'Jl. Cargo Taman I No. 2 Banjar Lingkar Uma Sari, Ubung Kaja, Kec. Denpasar Utara, Kota Denpasar, Bali 80116', '0812-8635-5557', 'bali@morena_trans.co.id', 'Y', '1012', '2025-08-22 04:08:47', ''),
(2016, 'MAC JATIM 2', '-', '-', '-', 'Y', '1012', '2025-08-22 04:08:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `tgl_input` date NOT NULL,
  `periode` int(6) NOT NULL,
  `jam` time NOT NULL,
  `week` varchar(10) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `tujuan` text NOT NULL,
  `nama_customer` text NOT NULL,
  `hp_customer` varchar(100) NOT NULL,
  `tahu_dari` varchar(50) NOT NULL,
  `nama_referensi` text NOT NULL,
  `status_deal` varchar(50) NOT NULL,
  `alasan` text NOT NULL,
  `type_nopol` varchar(100) NOT NULL,
  `harga_deal` int(11) NOT NULL,
  `jenis_pekerjaan` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `modif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(1, '2025-01-06', 202501, '00:00:14', 'Week 2', '', '', 'DFS', '0895 2804 6701', '-', 'Direct Chat', 'No Deal', 'Hanya Bertanya', 'Suzuki Ignis AGS', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2025-01-06', 202501, '00:00:14', 'Week 2', '', '', 'M & M', '0877 8847 4461', 'Instagram', '', 'No Deal', 'Hanya Bertanya', 'Avanza 2017', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2025-01-06', 202501, '00:00:15', 'Week 2', '', 'Batam', 'Nur Sultan', '0838 7261 9862', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2025-01-06', 202501, '00:00:16', 'Week 2', '', 'Makassar', 'Bayu Saputra', '0853 3107 8359', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2025-01-06', 202501, '00:00:18', 'Week 2', '', 'Banguntapan \nJogjakarta', 'Muh Fari', '0857 0100 6377', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2025-01-06', 202501, '00:00:21', 'Week 2', '', 'Jonggol', 'Syafei', '0895 1246 4360', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2025-01-06', 202501, '00:00:22', 'Week 2', '', '', 'Barra', '0812 2681 2151', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2025-01-07', 202501, '00:00:05', 'Week 2', '', '', 'Spirit Of Java', '0878 9485 8998', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Pesan Dihapus', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2025-01-07', 202501, '00:00:05', 'Week 2', '', 'Palembang', 'FZ', '0895 2385 9854', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2025-01-07', 202501, '00:00:06', 'Week 2', '', 'Jayapura Papua', 'Genes11', '0821 9569 8217', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2025-01-07', 202501, '00:00:11', 'Week 2', '', 'Medan', 'Anonim', '0812 9978 5704', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2025-01-07', 202501, '00:00:15', 'Week 2', '', '', 'Anonim', '0857 1820 6805', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2025-01-07', 202501, '00:00:15', 'Week 2', '', 'Jakarta Barat', 'Anonim', '0812 8478 7107', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2025-01-07', 202501, '00:00:18', 'Week 2', '', '', 'Paulus Bambang ', '0898 5368 161', '-', 'Direct Chat', 'No Deal', 'Tidak Ada Respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2025-01-07', 202501, '00:00:19', 'Week 2', '', 'Lampung', 'Luli Mediyanto', '0852 1704 5220', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2025-01-08', 202501, '00:00:07', 'Week 2', '', 'Pondok gede', 'Ambar Kurniawan', '0857 8253 5111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Konsul terlebih dahulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2025-01-08', 202501, '00:00:09', 'Week 2', '', 'Cibitung', 'Mustopa', '0819 0660 3429', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2025-01-08', 202501, '00:00:14', 'Week 2', '', 'Karawang', 'Dian Thea', '0813 8412 5193', 'Instagram', '', 'No Deal', 'Tidak ada respon', 'Datsun Go', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2025-01-08', 202501, '00:00:15', 'Week 2', '', 'Mampang', 'Riyadi Solih', '0856 7613 888', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2025-01-08', 202501, '00:00:16', 'Week 2', '', 'Jakarta', 'Indah', '0815 1319 9105', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2025-01-08', 202501, '00:00:18', 'Week 2', '', 'Batam', 'Kandarman', '0812 7886 2969', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2025-01-08', 202501, '00:00:21', 'Week 2', '', '', 'Sarang Madu Asli', '0813 4594 8474', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '2025-01-09', 202501, '00:00:07', 'Week 2', '', 'Sidoarjo', 'Rac', '0857 5576 4899', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ertiga Manual \n2017', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '2025-01-09', 202501, '00:00:09', 'Week 2', '', 'Yogyakarta', 'Marsya E Yuda', '0813 9328 1557', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '2025-01-09', 202501, '00:00:13', 'Week 2', '', 'Sidoarjo', 'Kenzo', '0895 8050 17417', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '2025-01-09', 202501, '00:00:14', 'Week 2', '', 'Palembang', 'Deni A', '0813 3265 6819', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '2025-01-09', 202501, '00:00:16', 'Week 2', '', '', 'Ramzul', '0859 1065 19085', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '2025-01-09', 202501, '00:00:18', 'Week 2', '', 'Depok', 'Yoga ', '966 544 590 328', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '2025-01-09', 202501, '00:00:19', 'Week 2', '', 'Makassar', 'Fuad', '0811 4179 207', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '2025-01-09', 202501, '00:00:21', 'Week 2', '', '', 'Januar', '0812 8073 1316', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '2025-01-09', 202501, '00:00:22', 'Week 2', '', '', 'Arya', '0853 4202 1357', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '2025-01-09', 202501, '00:00:23', 'Week 2', '', '', 'Jejen Atmaja', '0858 8052 3459', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '2025-01-09', 202501, '00:00:23', 'Week 2', '', '', 'Amri Sinulingga', '0822 9037 2529', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2025-01-10', 202501, '00:00:08', 'Week 2', '', 'Samarinda, Kaltim', 'Fitri Erik', '0823 5413 2114', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '2025-01-10', 202501, '00:00:11', 'Week 2', '', 'Lotim NTB, Lombok', 'Intan Tiara', '0838 7983 9787', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', 'Civic', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '2025-01-10', 202501, '00:00:13', 'Week 2', '', 'Lampung', 'MAP', '0813 3350 4650', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '2025-01-10', 202501, '00:00:14', 'Week 2', '', 'Margonda', 'Roery Wicaksono', '0877 8324 2853', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Calya', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '2025-01-10', 202501, '00:00:15', 'Week 2', '', 'Serang', 'Sobari', '0822 4903 7767', '-', 'Direct Chat', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2025-01-10', 202501, '00:00:19', 'Week 2', '', 'Tangerang', 'Oliq', '0819 11162796', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Jauh infonya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '2025-01-10', 202501, '00:00:20', 'Week 2', '', '', 'AA', '0822 5558 2461', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '2025-01-11', 202501, '00:00:00', 'Week 2', '', '', 'Andriadi', '0856 9372 3104', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2025-01-11', 202501, '00:00:05', 'Week 2', '', 'Vila Nusa Indah', 'Thomas', '0812 8272 1971', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service tgl 16/01/2025', 'Innova Reborn\n(B 2532 TFR)', 1568000, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '2025-01-11', 202501, '00:00:06', 'Week 2', '', '', 'NKRI 08', '0851 3309 5530', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '2025-01-11', 202501, '00:00:07', 'Week 2', '', 'Pemalang', 'Irwan Nuralamsyah', '0852 9187 6511', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '2025-01-11', 202501, '00:00:08', 'Week 2', '', 'Ciracas, Jaktim', 'Louis', '0899 6633 924', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '2025-01-11', 202501, '00:00:08', 'Week 2', '', 'Bekasi Utara', 'Herry Haerudin', '0812 8100 4750', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '2025-01-11', 202501, '00:00:09', 'Week 2', '', 'Makassar', 'Anonim', '0812 4119 9931', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '2025-01-11', 202501, '00:00:13', 'Week 2', '', 'Jambi', 'Sundara', '0816 3270 3966', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '2025-01-11', 202501, '00:00:17', 'Week 2', '', 'Tegal', 'Dinko Marudin', '0858 7983 0395', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '2025-01-11', 202501, '00:00:18', 'Week 2', '', 'Cinere', 'Dedi Bewok', '0812 8425 6123', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '2025-01-11', 202501, '00:00:21', 'Week 2', '', 'Ciputat', 'Timbul Schregar', '0813 8113 1515', '-', 'Direct Chat', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '2025-01-11', 202501, '00:00:21', 'Week 2', '', 'Tangerang', 'Yolo', '0859 1065 61184', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Mazda 2 Sky Active', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '2025-01-11', 202501, '00:00:23', 'Week 2', '', '', 'Erwin Noord', '0858 1024 6608', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '2025-01-12', 202501, '00:00:08', 'Week 3', '', 'Lamongan', 'Liandra', '0896 0241 4010', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '2025-01-12', 202501, '00:00:10', 'Week 3', '', '', 'Ico', '0859 5916 8751', 'Instagram', '', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '2025-01-12', 202501, '00:00:14', 'Week 3', '', '', 'Hidzaqiasmi', '0813 8760 0700', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '2025-01-13', 202501, '00:00:18', 'Week 3', '', '', 'Radi', '0878 7408 8709', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '2025-01-13', 202501, '00:00:18', 'Week 3', '', '', 'Atma', '0815 1440 8030', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '2025-01-13', 202501, '00:00:21', 'Week 3', '', '', 'Ikhlash', '0857 7927 6803', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '2025-01-13', 202501, '00:00:21', 'Week 3', '', '', 'Erick Hans', '0815 1111 2579', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '2025-01-13', 202501, '00:00:22', 'Week 3', '', 'Kebon Jeruk', 'Ferdi Kurniawan', '0821 1411 8287', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada lahan untuk\nservice', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '2025-01-13', 202501, '00:00:22', 'Week 3', '', 'Rawa Lumbu', 'Kevin', '0853 1990 3546', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service tgl 14/01/2025', 'Brio\n(B 2957 FGY)', 275000, 'Gurah Mesin \n(175.000)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '2025-01-13', 202501, '00:00:22', 'Week 3', '', '', 'M Ali Nukman', '0813 5596 4189', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '2025-01-14', 202501, '00:00:05', 'Week 3', '', '', 'Anonim', '0896 2930 6599', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '2025-01-14', 202501, '00:00:07', 'Week 3', '', '', 'Teguh Imam', '0812 8260 8484', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Bulan februari hub lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '2025-01-14', 202501, '00:00:07', 'Week 3', '', '', 'Iwan', '0878 5432 7666', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '2025-01-14', 202501, '00:00:09', 'Week 3', '', '', 'Nanang Kosim', '0823 1141 4773', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '2025-01-14', 202501, '00:00:10', 'Week 3', '', 'Subang', 'H. Carman Suparman', '0813 1204 9345', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '2025-01-14', 202501, '00:00:12', 'Week 3', '', 'Makassar', 'Ivhan', '0823 9374 3758', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '2025-01-14', 202501, '00:00:14', 'Week 3', '', 'Cerme, Gresik', 'Hibul', '0857 8533 7816', 'Instagram', '', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '2025-01-14', 202501, '00:00:14', 'Week 3', '', '', 'Refalsf', '0838 1899 8315', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '2025-01-14', 202501, '00:00:16', 'Week 3', '', '', 'JRK', '0811 1720 312', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '2025-01-14', 202501, '00:00:19', 'Week 3', '', 'Fatmawati, Jaksel', 'Abdul', '0856 9179 6083', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti dihubungi lagi', 'Corolla Altis', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '2025-01-14', 202501, '00:00:21', 'Week 3', '', '', 'Ayonk Mafuri', '0819 3283 3339', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '2025-01-14', 202501, '00:00:16', 'Week 3', '', '', 'Nia Collection', '0813 3174 4619', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '2025-01-15', 202501, '00:00:04', 'Week 3', '', '', 'Ekharifkifauzi', '0821 3307 0443', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '2025-01-15', 202501, '00:00:09', 'Week 3', '', 'Semarang', 'Bagus Als Ronny', '0816 663 972', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '2025-01-15', 202501, '00:00:16', 'Week 3', '', '', 'Yudha', '0817 855 855', 'Instagram', '', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '2025-01-15', 202501, '00:00:20', 'Week 3', '', 'Medan', 'Syafar Siregar', '0822 9439 4144', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '2025-01-15', 202501, '00:00:21', 'Week 3', '', 'Tangerang, Jatiuwung', 'Wawan', '0813 1170 8876', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Service Kejauhan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '2025-01-15', 202501, '00:00:22', 'Week 3', '', '', 'Charlez', '0812 2198 017', 'Instagram', '', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '2025-01-15', 202501, '00:00:08', 'Week 3', '', '', 'Arqie Putra', '0856 9776 2358', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '2025-01-16', 202501, '00:00:00', 'Week 3', '', 'Lenteng agung', 'Setiaji', '0895 2221 3676', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '2025-01-16', 202501, '00:00:10', 'Week 3', '', '', 'Ismail', '0822 1313 1013', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Rencana mau datang ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '2025-01-16', 202501, '00:00:12', 'Week 3', '', '', 'Athoourrohman', '0896 5433 3805', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '2025-01-16', 202501, '00:00:12', 'Week 3', '', 'Batam', 'Deddy Irawan', '0819 9094 1528', '-', 'Direct Chat', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '2025-01-16', 202501, '00:00:13', 'Week 3', '', 'Rawamangun', 'Charles', '0878 8648 2039', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '2025-01-16', 202501, '00:00:15', 'Week 3', '', 'Makassar', 'Anonim', '0895 0763 2817', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '2025-01-16', 202501, '00:00:16', 'Week 3', '', 'Cengkareng', 'Bagus', '0877 1116 7890', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Kejauhan', 'Xenia', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '2025-01-16', 202501, '00:00:17', 'Week 3', '', 'Bandung', 'Obit', '0813 9559 9095', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '2025-01-16', 202501, '00:00:21', 'Week 3', '', 'Palembang', 'Ronaldo', '0896 9101 2828', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Masih diluar kota', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '2025-01-16', 202501, '00:00:23', 'Week 3', '', 'Tangerang Selatan', 'Ferdian Sudiana', '0812 9067 6760', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '2025-01-17', 202501, '00:00:12', 'Week 3', '', 'Cikarang', 'Ayahe Zafira', '0821 1405 9139', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '2025-01-17', 202501, '00:00:13', 'Week 3', '', '', 'Hock', '0813 6240 9500', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2025-01-17', 202501, '00:00:13', 'Week 3', '', '', 'Didin Sobari', '0857 1668 8472', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '2025-01-17', 202501, '00:00:14', 'Week 3', '', '', 'Dedi Shfi', '0821-7710-7372', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '2025-01-17', 202501, '00:00:19', 'Week 3', '', 'BSD', 'Fanzal Asri Z', '0852 6077 7985', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '2025-01-17', 202501, '00:00:19', 'Week 3', '', 'Indramayu', 'Herry Priyono', '0838 2320 3279', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '2025-01-17', 202501, '00:00:20', 'Week 3', '', '', '212', '0821-2590-3026', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '2025-01-17', 202501, '00:00:21', 'Week 3', '', 'Malang', 'Ahmad Kadyrov', '0822 4551 5203', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '2025-01-17', 202501, '00:00:21', 'Week 3', '', '', 'Dicky', '0852 1735 7588', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '2025-01-17', 202501, '00:00:22', 'Week 3', '', 'Ciledug', 'Yudi Angga', '0812 9941 9370', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Agya', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '2025-01-18', 202501, '00:00:01', 'Week 3', '', 'Bekasi', 'Richad Risnaldo', '0821 7007 5856', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mobil harus turun mesin\nnanya2 dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '2025-01-18', 202501, '00:00:08', 'Week 3', '', '', 'Yusuf Hariyanto', '61 478 072 673', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '2025-01-18', 202501, '00:00:08', 'Week 3', '', 'Bogor', 'Muhamad', '0811 8865 480', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mau ke bengkel bulan Feb', 'Calya', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '2025-01-18', 202501, '00:00:09', 'Week 3', '', 'Karawang', 'Yuma Maulana', '0857 7202 5662', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '2025-01-18', 202501, '00:00:12', 'Week 3', '', 'Palembang', 'M. Muhdi Ambari', '052 6709 6098', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '2025-01-18', 202501, '00:00:12', 'Week 3', '', '', 'Yudi K', '0813 2850 3275', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '2025-01-18', 202501, '00:00:15', 'Week 3', '', '', 'Solar', '0821 8559 9075', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '2025-01-18', 202501, '00:00:15', 'Week 3', '', 'Cilegon', 'Putra Pandu', '0877 7431 5003', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '2025-01-18', 202501, '00:00:16', 'Week 3', '', '', 'Dr. Muh Basri SH MH', '0895 3138 3654', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '2025-01-19', 202501, '00:00:00', 'Week 4', '', '', 'Anonim', '0877 3003 7643', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '2025-01-19', 202501, '00:00:05', 'Week 4', '', '', 'Yatna Thagay', '0812 8234 5988', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '2025-01-19', 202501, '00:00:08', 'Week 4', '', 'Tangerang', 'Aries Gentra', '0852 3080 0033', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '2025-01-19', 202501, '00:00:08', 'Week 4', '', 'Depok', 'Adi', '0815 9881 337', 'Instagram', '', 'Deal', ' Dibawa ke bengkel', 'Terios (B 2256 SYJ)', 2511500, 'masih proses indent part', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '2025-01-19', 202501, '00:00:09', 'Week 4', '', '', 'Notrianto', '0858 8449 7519', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '2025-01-19', 202501, '00:00:10', 'Week 4', '', '', 'Anonim', '0816 4603 6307', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '2025-01-21', 202501, '00:00:12', 'Week 4', '', 'Karawang', 'Daffa AR', '0896 2562 8156', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '2025-01-21', 202501, '00:00:18', 'Week 4', '', 'Jaktim', 'Herman', '0813 9459 1648', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '2025-01-21', 202501, '00:00:18', 'Week 4', '', 'Tegal', 'Iwan', '0822 2098 0500', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '2025-01-22', 202501, '00:00:07', 'Week 4', '', '', 'Althaf Nabil ', '0858 8579 7918', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '2025-01-22', 202501, '00:00:08', 'Week 4', '', 'Kembangan', 'Noerdin', '0812 1343 179', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Ada kepentingan, service ditunda', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '2025-01-22', 202501, '00:00:09', 'Week 4', '', '', 'Sofa', '0852 9597 7770', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '2025-01-22', 202501, '00:00:11', 'Week 4', '', 'Karawang', 'Yogie', '0877 8505 0702', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', 'Calya', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '2025-01-22', 202501, '00:00:11', 'Week 4', '', 'Cibinong', 'Cecep Lendra', '0812 8928 297', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '2025-01-22', 202501, '00:00:14', 'Week 4', '', '', 'Malvino Fajaro', '0813 8374 8999', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', '-', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '2025-01-22', 202501, '00:00:19', 'Week 4', '', 'Jogjakarta', 'Buah', '0882 0068 25445', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '2025-01-22', 202501, '00:00:19', 'Week 4', '', '', 'Aragoes Hidayat', '0852 2978 1333', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '2025-01-22', 202501, '00:00:20', 'Week 4', '', '', 'Yao', '0822 2727 8398', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '2025-01-22', 202501, '00:00:23', 'Week 4', '', 'Sawangan, Depok', 'Henry', '0857 7986 1107', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Atur waktu dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '2025-01-22', 202501, '00:00:07', 'Week 4', '', 'Jogjakarta', 'Muh Fuadi Aziz', '0878 8511 3222', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '2025-01-22', 202501, '00:00:07', 'Week 4', '', '', 'Hilman Semende', '0857 1849 0120', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '2025-01-22', 202501, '00:00:10', 'Week 4', '', 'Bekasi', 'Adi Nfadillah', '0813 1421 8652', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '2025-01-22', 202501, '00:00:10', 'Week 4', '', '', 'Sarjinem ', '0838 2558 6562', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '2025-01-22', 202501, '00:00:10', 'Week 4', '', 'Sidoarjo', 'Aufklarung', '0838 5628 4350', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '2025-01-22', 202501, '00:00:12', 'Week 4', '', 'Bogor', 'Lukman Saputra', '0858 1104 3542', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '2025-01-22', 202501, '00:00:12', 'Week 4', '', 'Madiun', 'Sarno', '0878 5506 8785', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '2025-01-22', 202501, '00:00:12', 'Week 4', '', '', 'Anonim', '0817 881 971', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '2025-01-22', 202501, '00:00:15', 'Week 4', '', 'Panjang, bandar lampung', 'AHG', '0895 1415 0882', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service tanggal 23/01/2025', 'Brio 2016', 950000, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '2025-01-23', 202501, '00:00:03', 'Week 4', '', '', 'A', '0899 0819 856', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Mau Purging diesel, nanti diinfo', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '2025-01-23', 202501, '00:00:05', 'Week 4', '', '', 'Wilmaas Hardian', '0812 1988 8506', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', 'Corona Exsaloon 1992', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '2025-01-23', 202501, '00:00:09', 'Week 4', '', 'Bekasi', 'Catur Mulyadi', '0858 8599 6488', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mobil harus turun mesin\nTunggu biaya', 'Innova 2005', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '2025-01-23', 202501, '00:00:14', 'Week 4', '', '', 'Abdullah Dwi H', '0857 7958 3811', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '2025-01-23', 202501, '00:00:15', 'Week 4', '', 'Cibinong', 'Anonim', '0881 0252 88967', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '2025-01-23', 202501, '00:00:17', 'Week 4', '', 'Rangkapan Jaya, Depok', 'Ardian', '0856 9586 9193', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '2025-01-23', 202501, '00:00:19', 'Week 4', '', '', 'Yogha', '0811 134 848', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '2025-01-23', 202501, '00:00:19', 'Week 4', '', 'Baleendah', 'Irfan', '0822 1386 0077', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '2025-01-23', 202501, '00:00:20', 'Week 4', '', 'Bali', 'Ari Arzha', '0877 5064 0871', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service tanggal 04/02/2025', 'Swiff', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '2025-01-23', 202501, '00:00:20', 'Week 4', '', 'Tangerang BSD', 'Eko', '0896 1476 5800', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Atur waktu dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '2025-01-23', 202501, '00:00:22', 'Week 4', '', 'Cileungsi', 'Nur Akbar', '0812 1890 1588', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Rencana mau datang ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '2025-01-23', 202501, '00:00:23', 'Week 4', '', 'Jakarta Barat', 'Toonz', '0898 8142 684', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', 'Terios 2022', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '2025-01-24', 202501, '00:00:05', 'Week 4', '', '', 'Dian P B Laksana', '0899 7517 277', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Kejauhan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '2025-01-24', 202501, '00:00:05', 'Week 4', '', '', 'Suryo', '0896 2965 1971', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '2025-01-24', 202501, '00:00:07', 'Week 4', '', 'Karawang', 'Udi', '0852 1878 4072', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '2025-01-24', 202501, '00:00:08', 'Week 4', '', '', 'Kusdaya', '0856 1320 713', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi lagi', 'Terios 2011', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '2025-01-24', 202501, '00:00:10', 'Week 4', '', 'Cibubur', 'Bayu ', '0858 9422 0125', 'Instagram', '', 'No Deal', 'Rencana mau datang ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '2025-01-24', 202501, '00:00:11', 'Week 4', '', '', 'Ali Muhammad', '0831 6033 3207', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanya part yang tidak ada', 'Galant V6 1997', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '2025-01-24', 202501, '00:00:11', 'Week 4', '', '', 'Abdul', '0856 2346 762', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '2025-01-24', 202501, '00:00:11', 'Week 4', '', 'Bogor', 'Nurohmat', '0896 3450 5149', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '2025-01-24', 202501, '00:00:14', 'Week 4', '', '', 'Herukyoshi ', '0857 1567 2705', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '2025-01-24', 202501, '00:00:16', 'Week 4', '', 'Surabaya', 'Fandi Endryas', '0858 1225 1606', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', 'Wagon R 2016', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '2025-01-24', 202501, '00:00:18', 'Week 4', '', 'Cibubur', 'Dizno', '0821 5121 2150', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Habis keluar kota mau service', 'Avanza', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '2025-01-24', 202501, '00:00:22', 'Week 4', '', 'Depok', 'Alichzan', '0821 1218 0652', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '2025-01-24', 202501, '00:00:23', 'Week 4', '', '', 'Jimny', '0811 9707 170', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '2025-01-24', 202501, '00:00:23', 'Week 4', '', '', 'PriyadiSP', '0895 3170 0140', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '2025-01-25', 202501, '00:00:06', 'Week 4', '', 'Palembang', 'Masagus M Andrian', '0821 7634 2705', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '2025-01-25', 202501, '00:00:13', 'Week 4', '', 'Serpong', 'Stefanus Kionata', '0852 8573 7755', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Kejauhan', 'Toyota', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '2025-01-25', 202501, '00:00:23', 'Week 4', '', '', 'Charlee', '0853 5551 4448', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '2025-01-26', 202501, '00:00:07', 'Week 5', '', '', 'Adam BBD', '0812 1212 3940', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '2025-01-26', 202501, '00:00:07', 'Week 5', '', 'Ciapus, Bogor', 'Erhanantya', '0856 4136 2640', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Terlalu jauh lokasinya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '2025-01-27', 202501, '00:00:06', 'Week 5', '', '', 'Gung Ayu Saraswati', '0813 3833 4068', 'Instagram', '', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, '2025-01-27', 202501, '00:00:09', 'Week 5', '', '', 'Junardo', '0812 8578 8858', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, '2025-01-27', 202501, '00:00:12', 'Week 5', '', '', 'Arif Budiono', '0856 5868 2794', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, '2025-01-27', 202501, '00:00:16', 'Week 5', '', '', 'Aditya Sandi', '0817 7652 7250', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, '2025-01-27', 202501, '00:00:17', 'Week 5', '', '', 'Samsu', '0812 1636 9416', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, '2025-01-27', 202501, '00:00:18', 'Week 5', '', 'Cilegon', 'Ari Setiawan', '0858 11133 7739', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, '2025-01-27', 202501, '00:00:21', 'Week 5', '', '', 'Rafli', '0859 5267 7020', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, '2025-01-28', 202501, '00:00:08', 'Week 5', '', 'Semarang', 'Thommy', '0822 1835 9062', '-', 'Direct Chat', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, '2025-01-28', 202501, '00:00:08', 'Week 5', '', '', 'Bangun Alpha', '0815 5418 9370', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, '2025-01-28', 202501, '00:00:12', 'Week 5', '', 'Cikarang Selatan', 'Achmad Sofyan', '0813 1984 2084', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, '2025-01-28', 202501, '00:00:13', 'Week 5', '', '', 'Rafly Athallah', '0882 9176 5425', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, '2025-01-28', 202501, '00:00:14', 'Week 5', '', '', 'Anonim', '0895 1068 2889', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, '2025-01-28', 202501, '00:00:15', 'Week 5', '', '', 'Anonim', '0852 2633 8456', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, '2025-01-28', 202501, '00:00:16', 'Week 5', '', 'Rajeg, Tangerang', 'Eko Budi', '0812 8811 2529', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, '2025-01-28', 202501, '00:00:20', 'Week 5', '', '', 'Jaswir', '0822 6807 3033', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, '2025-01-28', 202501, '00:00:22', 'Week 5', '', 'Tangerang', 'Juan DT', '0895 0333 8367', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, '2025-01-29', 202501, '00:00:05', 'Week 5', '', 'Joglo, Jakarta Barat', 'Bob', '0813 9984 8778', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tanya dulu ganti kopling', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, '2025-01-29', 202501, '00:00:07', 'Week 5', '', 'Jakarta Barat', 'Yoseph Sutikno', '0818 0638 0999', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mau Cari waktu dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, '2025-01-29', 202501, '00:00:07', 'Week 5', '', '', 'Yuta', '0811 1219 192', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, '2025-01-29', 202501, '00:00:09', 'Week 5', '', '', 'Jhon Sebayang', '0812 1974 9163', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, '2025-01-29', 202501, '00:00:09', 'Week 5', '', '', 'Agung Subekti', '0896 1036 0570', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, '2025-01-29', 202501, '00:00:10', 'Week 5', '', 'Gresik', 'Anonim', '0856 3344 872', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, '2025-01-29', 202501, '00:00:13', 'Week 5', '', '', 'Agus', '0896 7041 6394', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, '2025-01-29', 202501, '00:00:16', 'Week 5', '', '', 'Johanna', '0858 5576 9717', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, '2025-01-29', 202501, '00:00:20', 'Week 5', '', '', 'Wiwin Wijaya', '0821 9604 1356', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, '2025-01-29', 202501, '00:00:20', 'Week 5', '', '', 'Kenzochika', '0821 1014 3402', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, '2025-01-30', 202501, '00:00:00', 'Week 5', '', '', 'Liput', '0838 7057 5519', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, '2025-01-30', 202501, '00:00:00', 'Week 5', '', '', 'Sofyan', '0821 2254 1063', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, '2025-01-30', 202501, '00:00:06', 'Week 5', '', '', 'Fiaza', '0813 8191 4648', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, '2025-01-30', 202501, '00:00:09', 'Week 5', '', '', 'M. Zayn Al Aziz', '0895 3871 51968', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, '2025-01-30', 202501, '00:00:11', 'Week 5', '', '', 'Pilia Kartika', '0821 8123 0689', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, '2025-01-30', 202501, '00:00:12', 'Week 5', '', '', 'Kandar Siregar', '0812 1869 4407', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Terlalu jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, '2025-01-30', 202501, '00:00:12', 'Week 5', '', '', 'Sardiaman', '0821 6459 0777', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, '2025-01-30', 202501, '00:00:15', 'Week 5', '', '', 'J. Prastowo', '0821 1448 4775', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, '2025-01-30', 202501, '00:00:16', 'Week 5', '', 'Kebayoran Lama', 'Prapo', '0857 8076 0497', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Honda City', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, '2025-01-30', 202501, '00:00:17', 'Week 5', '', 'Kedamean, Gresik', 'Anonim', '0858 1668 0108', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, '2025-01-30', 202501, '00:00:19', 'Week 5', '', 'Malang, Jawa Timur', 'Titi', '0822 6101 8914', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, '2025-01-30', 202501, '00:00:21', 'Week 5', '', 'Tangerang', 'Hery', '0815 4341 7775', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, '2025-01-31', 202501, '00:00:07', 'Week 5', '', 'Bandung', 'Hadi', '0821 3070 0148', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, '2025-01-31', 202501, '00:00:08', 'Week 5', '', '', 'Habaib', '0838 7327 1715', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, '2025-01-31', 202501, '00:00:12', 'Week 5', '', 'Kemayoran', 'Anonim', '0877 6258 2727', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, '2025-01-31', 202501, '00:00:16', 'Week 5', '', '', 'Boy', '0877 4146 1423', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, '2025-01-31', 202501, '00:00:17', 'Week 5', '', 'Sidoarjo', 'Anonim', '0812 3453 4301', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, '2025-01-31', 202501, '00:00:19', 'Week 5', '', '', 'M Luffy Albani', '0895 1512 1303', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Calya 2017', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, '2025-01-31', 202501, '00:00:20', 'Week 5', '', 'Medan', 'Edisamura', '0813 9600 0595', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, '2025-01-31', 202501, '00:00:20', 'Week 5', '', 'Riau', 'Sadari diri wak', '0811 7538 105', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Unit masih dipakai keluar kota', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, '2025-01-31', 202501, '00:00:21', 'Week 5', '', 'Batam', 'FF', '0823 9092 0243', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, '2025-01-31', 202501, '00:00:23', 'Week 5', '', 'Jakarta Barat', 'Miya Kitchen', '0812 1020 6793', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Kejauhan', 'Mobilio', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(219, '2025-01-31', 202501, '00:00:23', 'Week 5', '', 'Sleman', 'Siska Anantasia', '0812 9949 1353', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, '2025-02-01', 202502, '00:00:05', 'Week 1', '', 'Jakarta Barat', 'Gani Prasetya', '0857 1750 5751', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Kejauhan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, '2025-02-01', 202502, '00:00:06', 'Week 1', '', '', 'Indi Millard', '0812 8339 5280', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, '2025-02-01', 202502, '00:00:07', 'Week 1', '', 'Karawang', 'Althafariz Radeya Zefa', '0878 9373 1847', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, '2025-02-01', 202502, '00:00:07', 'Week 1', '', 'Tangerang', 'Anonim', '0858 7867 7236', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Nanti dihubungi kembali', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, '2025-02-01', 202502, '00:00:08', 'Week 1', '', '', 'Aldi', '0811 1000 4647', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, '2025-02-01', 202502, '00:00:09', 'Week 1', '', 'Palembang', 'Rupiyansyah', '0812 7788 5639', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, '2025-02-01', 202502, '00:00:11', 'Week 1', '', 'Tangerang', 'Andhie', '0813 8952 1212', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, '2025-02-01', 202502, '00:00:14', 'Week 1', '', 'Karawang', 'Nanang Iswahyudi', '0813 3226 5239', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, '2025-02-01', 202502, '00:00:16', 'Week 1', '', 'Tangerang', 'Hendrawan', '0812 9592 7655', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, '2025-02-01', 202502, '00:00:16', 'Week 1', '', 'Medan', 'Arif Alfian', '0822 7318 3238', '-', 'Direct Chat', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, '2025-02-01', 202502, '00:00:17', 'Week 1', '', 'Sidoarjo', 'Amsus', '0852 3241 8768', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, '2025-02-01', 202502, '00:00:17', 'Week 1', '', 'Purwokerto', 'Resep Sehat JSR', '0877 7092 6406', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, '2025-02-01', 202502, '00:00:20', 'Week 1', '', '', 'Sapri Hassanuddin', '0852 6553 9999', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, '2025-02-01', 202502, '00:00:21', 'Week 1', '', 'Jakarta Barat', 'Alvaro Sitohang', '0812 9260 9623', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, '2025-02-01', 202502, '00:00:21', 'Week 1', '', '', 'Golden Fresh', '0812 2010 0296', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, '2025-02-01', 202502, '00:00:22', 'Week 2', '', '', 'Moehali1807', '0821 6689 6995', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, '2025-02-03', 202502, '00:00:16', 'Week 2', '', 'Bogor', 'Indra', '0838 3473 2393', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, '2025-02-03', 202502, '00:00:16', 'Week 2', '', 'Bekasi', 'Rahmat Budiyanto', '0856 4220 6191', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Jauh dari rumah', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, '2025-02-03', 202502, '00:00:17', 'Week 2', '', '', 'Honey Badger', '0856 4220 6191', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, '2025-02-03', 202502, '00:00:21', 'Week 2', '', '', 'Bismil', '0857 7754 4885', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, '2025-02-03', 202502, '00:00:20', 'Week 2', '', 'Depok', 'Nak', '0838 3486 0031', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, '2025-02-03', 202502, '00:00:19', 'Week 2', '', 'Bogor', 'Idham Firdaus', '0878 8284 7955', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, '2025-02-03', 202502, '00:00:21', 'Week 2', '', 'Bintaro', 'Nesya RentCar', '0823 2480 7564', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, '2025-02-04', 202502, '00:00:01', 'Week 2', '', '', 'Syaifudin', '0813 1045 0237', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, '2025-02-04', 202502, '00:00:03', 'Week 2', '', 'Depok', '-', '0857 1108 9691', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, '2025-02-04', 202502, '00:00:10', 'Week 2', '', 'Jakarta Utara', 'Li Lian', '0815 1913 9376', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, '2025-02-04', 202502, '00:00:12', 'Week 2', '', 'TB Simatupang', 'Taufik', '0857 9717 3194', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, '2025-02-04', 202502, '00:00:13', 'Week 2', '', 'Bali', 'Metri', '0882 1903 2193', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, '2025-02-04', 202502, '00:00:14', 'Week 2', '', '', 'Wawa', '0857 9993 7571', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, '2025-02-04', 202502, '00:00:16', 'Week 2', '', 'Kab. Bekasi', 'Fahri Hunaeda', '0856 9411 1358', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, '2025-02-04', 202502, '00:00:16', 'Week 2', '', 'Surabaya', 'Fransiskus', '0812 3046 0205', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, '2025-02-04', 202502, '00:00:20', 'Week 2', '', 'Citayem', 'E', '0811 8136 876', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, '2025-02-04', 202502, '00:00:20', 'Week 2', '', 'Bogor', 'Wahyu Wibowo', '0813 8922 8442', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, '2025-02-04', 202502, '00:00:20', 'Week 2', '', '', 'Orang Ganteng', '0851 6659 0766', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, '2025-02-04', 202502, '00:00:20', 'Week 2', '', 'Cileungsi', '-', '0896 1132 0991', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, '2025-02-04', 202502, '00:00:20', 'Week 2', '', 'Binjai', 'Agus', '0823 6758 9483', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, '2025-02-04', 202502, '00:00:22', 'Week 2', '', 'Bekasi', 'Koswara', '0812 8963 5218', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, '2025-02-05', 202502, '00:00:07', 'Week 2', '', '', 'Selalu Bersyukur', '0818 0658 6062', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, '2025-02-05', 202502, '00:00:00', 'Week 2', '', 'Cikarang Selatan', 'Achmad Sofyan', '0813 1984 2084', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, '2025-02-05', 202502, '00:00:10', 'Week 2', '', 'Jambi', 'Bin-bin', '0896 2114 6333', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, '2025-02-05', 202502, '00:00:10', 'Week 2', '', 'Bali', 'Rama Refa', '0822 3690 3272', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, '2025-02-05', 202502, '00:00:18', 'Week 2', '', 'Sunter', 'Rifki Andriansyah', '0898 8003 340', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, '2025-02-05', 202502, '00:00:23', 'Week 2', '', '', 'Samuel Afriandi', '0852 1645 1705', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, '2025-02-06', 202502, '00:00:22', 'Week 2', '', '', '-', '0821 2436 6446', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, '2025-02-06', 202502, '00:00:00', 'Week 2', '', '', 'Merry Lopez', '0877 1069 0899', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, '2025-02-06', 202502, '00:00:18', 'Week 2', '', 'Cibarusah', 'Aldo', '0857 7676 6558', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, '2025-02-07', 202502, '00:00:06', 'Week 2', '', 'Pondok Gede', 'Achmad Syarif', '0822 1126 4209', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, '2025-02-07', 202502, '00:00:09', 'Week 2', '', 'Tangerang', 'R', '0877 9041 5122', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, '2025-02-07', 202502, '00:00:13', 'Week 2', '', '-', 'Tovand', '0813 1070 0701', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, '2025-02-07', 202502, '00:00:20', 'Week 2', '', '-', 'Deny', '0815 1933 2260', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, '2025-02-07', 202502, '00:00:21', 'Week 2', '', 'Mampang', 'Riyadi Solih', '0856 7613 888', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Hanya Bertanya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, '2025-02-07', 202502, '00:00:22', 'Week 2', '', '-', 'Heryadi BA', '0812 1940 0962', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, '2025-02-08', 202502, '00:00:00', 'Week 2', '', 'Gandoang', 'Kris', '0858 9945 1454', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, '2025-02-08', 202502, '00:00:10', 'Week 2', '', '-', 'Cha', '0813 5452 3585', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, '2025-02-08', 202502, '00:00:11', 'Week 2', '', 'BSD', 'Bayu', '0852 2964 2204', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, '2025-02-08', 202502, '00:00:20', 'Week 2', '', '-', 'Carirekan', '0851 6718 3148', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, '2025-02-08', 202502, '00:00:21', 'Week 2', '', '-', 'R*z*w', '0852 0650 0635', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, '2025-02-08', 202502, '00:00:22', 'Week 2', '', 'Depok', 'Ihsan Ramadhan', '0813 8602 6320', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, '2025-02-09', 202502, '00:00:07', 'Week 3', '', '-', 'Irfan Irawan', '0878 8884 3043', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, '2025-02-09', 202502, '00:00:07', 'Week 3', '', 'Cirebon', 'Maman Sudirma', '0812 1333 6766', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, '2025-02-09', 202502, '00:00:07', 'Week 3', '', '-', 'Andono', '0895 1918 5555', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, '2025-02-09', 202502, '00:00:13', 'Week 3', '', 'Medan', 'Premjit S', '0811 971 137', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada Cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, '2025-02-09', 202502, '00:00:13', 'Week 3', '', 'Depok', 'Sally Sofiana', '0812 9431 0554', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, '2025-02-09', 202502, '00:00:11', 'Week 3', '', 'Pare', '-', '0896 2536 9311', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, '2025-02-10', 202502, '00:00:16', 'Week 3', '', '', 'Erwynson', '0812 6018 679', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, '2025-02-10', 202502, '00:00:17', 'Week 3', '', '', '-', '0811 331 981', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, '2025-02-10', 202502, '00:00:17', 'Week 3', '', 'Sawangan, Depok', 'Irwan', '0817 0031 503', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, '2025-02-10', 202502, '00:00:20', 'Week 3', '', 'Citayem', 'MZF', '0812 9747 8074', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, '2025-02-10', 202502, '00:00:20', 'Week 3', '', 'Pamulang', 'Rbp', '0856 0140 6254', 'Instagram', 'Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, '2025-02-10', 202502, '00:00:22', 'Week 3', '', 'Bekasi', 'Eka Mahardika', '0812 8087 3443', 'Instagram', 'Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, '2025-02-11', 202502, '00:00:01', 'Week 3', '', 'Jaksel', 'Toti Syafiudin', '0812 9007 9927', 'Instagram', '', 'No Deal', 'Tidak ada respon', 'Mercy b200', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, '2025-02-11', 202502, '00:00:00', 'Week 3', '', '', 'Astronot', '0895 1457 6067', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, '2025-02-11', 202502, '00:00:00', 'Week 3', '', '', 'Dhen Bagoes Syam', '0812 9219 2328', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, '2025-02-11', 202502, '00:00:01', 'Week 3', '', 'Lampung', 'N.D.P', '0859 2441 9152', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, '2025-02-11', 202502, '00:00:09', 'Week 3', '', 'Lampung', 'Agus Bill', '0851 7523 2894', 'Instagram', 'Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, '2025-02-11', 202502, '00:00:11', 'Week 3', '', '', 'Anwar', '0813 8220 6231', 'Instagram', 'Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, '2025-02-11', 202502, '00:00:09', 'Week 3', '', 'Gresik', 'Catur', '0822 5765 8058', 'Instagram', '', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, '2025-02-11', 202502, '00:00:12', 'Week 3', '', 'Batam', 'Imam', '0812 1311 18796', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, '2025-02-11', 202502, '00:00:16', 'Week 3', '', 'Bekasi', 'Adrian Ramadhan', '0852 1411 0109', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, '2025-02-11', 202502, '00:00:15', 'Week 3', '', 'Cikupa', 'Alim', '0859 2506 3632', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Calya', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, '2025-02-11', 202502, '00:00:15', 'Week 3', '', 'Kedungbadak', 'Eko Purnomo', '0852 1600 7336', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, '2025-02-11', 202502, '00:00:20', 'Week 3', '', '', '', '0812 1594 7700', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, '2025-02-11', 202502, '00:00:21', 'Week 3', '', 'Tangerang', 'Dimasendro', '0852 1574 5888', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, '2025-02-11', 202502, '00:00:17', 'Week 3', '', 'Jakarta Utara', 'Greg', '0812 8388 352', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, '2025-02-11', 202502, '00:00:23', 'Week 3', '', 'Medan', 'Fran Sinaga', '0822 9442 3817', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, 'Berkala', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, '2025-02-11', 202502, '00:00:23', 'Week 3', '', '', 'Farmers Market', '0882 8625 1687', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, '2025-02-12', 202502, '00:00:05', 'Week 3', '', '', '', '0821 3720 0898', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, '2025-02-12', 202502, '00:00:07', 'Week 3', '', 'Purwakarta', 'Galih Azhar', '0812 9040 1756', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, 'Hebat 2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, '2025-02-12', 202502, '00:00:07', 'Week 3', '', 'Lampung', 'Ade', '0898 9196 034', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, '2025-02-12', 202502, '00:00:08', 'Week 3', '', '', 'Rinaldy Romansyah', '0856 1954 373', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, '2025-02-12', 202502, '00:00:14', 'Week 3', '', 'Surabaya', 'Anggara', '0813 3515 1484', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, '2025-02-12', 202502, '00:00:18', 'Week 3', '', '', 'Abah Tr', '0881 0113 31416', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, '2025-02-13', 202502, '00:00:03', 'Week 3', '', '', 'Bruno', '0899 9381 444', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, '2025-02-13', 202502, '00:00:09', 'Week 3', '', 'Pekanbaru', 'Afdol', '0857 0950 3992', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, '2025-02-13', 202502, '00:00:12', 'Week 3', '', 'Yogyakarta', 'Prastana', '0812 6521 2345', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, '2025-02-13', 202502, '00:00:13', 'Week 3', '', 'Cileungsi', 'D', '0822 2610 3331', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Xpander', 0, 'Berkala', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, '2025-02-13', 202502, '00:00:14', 'Week 3', '', '', 'Abdul Salam', '0878 9789 3658', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, '2025-02-13', 202502, '00:00:16', 'Week 3', '', 'Serpong', 'Tony', '0812 7977 0565', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, '2025-02-13', 202502, '00:00:21', 'Week 3', '', 'Madura', 'Barados', '0851 0405 5865', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, '2025-02-14', 202502, '00:00:00', 'Week 3', '', 'Jakarta', 'Angga Permana', '0857 7508 0986', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, '2025-02-14', 202502, '00:00:14', 'Week 3', '', 'Jakarta', 'Faisal Hanip', '0812 6708 8355', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, '2025-02-14', 202502, '00:00:17', 'Week 3', '', '', 'Wahyu', '0823 4555 5581', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, '2025-02-15', 202502, '00:00:09', 'Week 3', '', '', 'Amar', '0822 7717 0208', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Sigra R 2019', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, '2025-02-15', 202502, '00:00:11', 'Week 3', '', 'Bekasi', 'Teguh Imam', '0812 8260 8484', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Avanza E', 0, 'Berkala', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, '2025-02-15', 202502, '00:00:17', 'Week 3', '', '', 'Aldana', '0815 4224 4573', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, '2025-02-15', 202502, '00:00:19', 'Week 3', '', 'Tangerang Selatan', 'Joko Ariyanto', '0856 9723 1520', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, '2025-02-15', 202502, '00:00:22', 'Week 3', '', '', 'Erg', '0811 111 6256', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ayla 2019', 0, 'MAC Hebat 1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, '2025-02-15', 202502, '00:00:23', 'Week 3', '', 'Bekasi', '-', '0822 1823 0401', '-', 'Direct Chat', 'No Deal', 'Nanti-nanti Aja', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, '2025-02-16', 202502, '00:00:07', 'Week 4', '', 'Kalimalang', 'Donie', '0851 5538 3455', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, '2025-02-16', 202502, '00:00:09', 'Week 4', '', '', 'Wisnu', '0851 6187 0080', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, '2025-02-16', 202502, '00:00:09', 'Week 4', '', 'Bogor', 'cs', '0811 1117 761', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, '2025-02-16', 202502, '00:00:09', 'Week 4', '', 'Kediri', 'Muhlisin', '0821 5395 2100', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', '-', 'Vios 2006', 635000, 'Tune Up Ganti Oli', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, '2025-02-17', 202502, '00:00:06', 'Week 4', '', 'Bali', 'Ebe Ryandika', '0878 6325 7100', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, '2025-02-17', 202502, '00:00:10', 'Week 4', '', 'Kebagusan', 'Reanie Devi', '0821 8377 5006', 'Instagram', '', 'Deal', '-', 'Nissan Juke', 700000, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, '2025-02-17', 202502, '00:00:13', 'Week 4', '', 'Tanjung Priok', 'Imron', '0878 7775 6992', 'Instagram', 'Instagram', 'No Deal', 'Tidak ada respon', 'Pajero 2020', 0, 'Berkala dan Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, '2025-02-17', 202502, '00:00:14', 'Week 4', '', 'Bandung', 'Hendro', '0878 2368 0600', 'Instagram', 'Instagram', 'Deal', 'Tidak ada respon', 'Hyundai Tucson', 325000, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, '2025-02-17', 202502, '00:00:17', 'Week 4', '', 'Jatiasih', 'Tangguh Aman Daya', '0831 7970 7170', 'Instagram', '', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, '2025-02-17', 202502, '00:00:19', 'Week 4', '', 'Cikarang', 'Indra', '0852 1275 7415', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Rocky 2022', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, '2025-02-17', 202502, '00:00:21', 'Week 4', '', 'Depok', 'Suhenry Hadi', '0878 7795 3762', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Terios 2008', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, '2025-02-17', 202502, '00:00:23', 'Week 4', '', '', 'Jay', '0895 4111 55533', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, '2025-02-18', 202502, '00:00:06', 'Week 4', '', 'Bandung', 'Tommy', '0813 2499 2183', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, '2025-02-18', 202502, '00:00:07', 'Week 4', '', 'Depok', 'Muhamad Ismail', '0895 2357 9440', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Honda City & BRV', 550000, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, '2025-02-18', 202502, '00:00:12', 'Week 4', '', '', 'Fathu', '0822 1716 2573', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, 'Gurah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, '2025-02-18', 202502, '00:00:18', 'Week 4', '', 'Karawang', 'Ojo Dumeh', '0895 0514 8877', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Avanza 2018', 0, 'Tune Up Ganti Oli', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, '2025-02-18', 202502, '00:00:23', 'Week 4', '', 'Bogor', 'Rio Saputra', '0877 5251 2958', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, '2025-02-19', 202502, '00:00:09', 'Week 4', '', 'Depok', 'R & A', '0812 9598 4394', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, '2025-02-19', 202502, '00:00:04', 'Week 4', '', 'Lampung', 'Ipul', '0857 0984 1800', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, '2025-02-19', 202502, '00:00:18', 'Week 4', '', 'Kebon Jeruk', 'Anger Siahaan', '0856 8530 117', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, '2025-02-19', 202502, '00:00:19', 'Week 4', '', 'Medan', 'Jay', '0895 2499 4000', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, '2025-02-19', 202502, '00:00:21', 'Week 4', '', 'Batam', 'XB', '0931 011 5199', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak ada cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, '2025-02-19', 202502, '00:00:21', 'Week 4', '', 'Tangerang', '', '0812 1922 8359', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Agya', 0, 'Hebat 1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, '2025-02-19', 202502, '00:00:22', 'Week 4', '', '', 'Ade Sudaryat', '0897 9457 091', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, '2025-02-19', 202502, '00:00:23', 'Week 4', '', 'Tangerang', 'Bayu', '0857 2855 5295', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, '2025-02-20', 202502, '00:00:01', 'Week 4', '', 'Brebes', 'Jeka', '0821 3688 9954', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, '2025-02-20', 202502, '00:00:10', 'Week 4', '', 'Cibubur', 'Bambang', '0812 9851 8950', 'Instagram', '', 'Deal', 'Tidak ada respon', 'D Sigra', 225000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, '2025-02-20', 202502, '00:00:11', 'Week 4', '', 'Batam', 'Anggi Ben', '0812 9898 6005', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, '2025-02-20', 202502, '00:00:13', 'Week 4', '', '', 'Catur Wibowo', '0813 3337 2200', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, '2025-02-20', 202502, '00:00:14', 'Week 4', '', 'Jakarta Pusat', 'Solideo Mendrofa', '0852 1010 2412', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'masih sibuk', 'Brio', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, '2025-02-20', 202502, '00:00:18', 'Week 4', '', '', 'Daeng Awhil', '0813 4083 3885', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, '2025-02-20', 202502, '00:00:19', 'Week 4', '', '', 'All', '0887 0694 1136', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, '2025-02-20', 202502, '00:00:21', 'Week 4', '', '', '-', '0857 8627 4550', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, '2025-02-20', 202502, '00:00:21', 'Week 4', '', 'Palembang', 'Syar Hans', '0821 7704 4569', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, '2025-02-20', 202502, '00:00:22', 'Week 4', '', 'Depok', 'Fajri Gast', '0856 4721 9217', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, '2025-02-21', 202502, '00:00:15', 'Week 4', '', '', '-', '0819 3095 5983', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, '2025-02-21', 202502, '00:00:19', 'Week 4', '', 'Tangerang', 'Adhitama', '0851 5914 0308', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'lumayan jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, '2025-02-21', 202502, '00:00:19', 'Week 4', '', 'Kalibaru Cilincing', 'Jupri Albuqori', '0857 1596 1891', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 655000, 'Hebat 3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, '2025-02-21', 202502, '00:00:20', 'Week 4', '', '', 'Zulkifli Adin', '0822 1153 8754', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Sigra M 2019', 0, 'Tune Up', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, '2025-02-22', 202502, '00:00:05', 'Week 4', '', 'Pluit', '-', '0852 1353 6699', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'mungkin next service', '', 0, 'tune up', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, '2025-02-22', 202502, '00:00:10', 'Week 4', '', 'Citra Indah Cileungsi', 'Irawan Sukma', '0812 8997 3435', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'Deal', 'Tidak ada respon', '', 570000, 'Tune Up', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, '2025-02-22', 202502, '00:00:10', 'Week 4', '', '', 'Myrepublic', '0812 8014 3055', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, '2025-02-22', 202502, '00:00:17', 'Week 4', '', '', 'Arie Hendana', '0896 6498 2775', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, '2025-02-22', 202502, '00:00:19', 'Week 4', '', 'Semarang', 'Mj_shukur', '0821 3854 9998', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, '2025-02-22', 202502, '00:00:20', 'Week 4', '', 'Tangerang', 'Ellan', '0858 1313 3132', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, '2025-02-22', 202502, '00:00:21', 'Week 4', '', '', 'Jimmy Nelson Silitonga', '0821 1411 5644', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, '2025-02-22', 202502, '00:00:23', 'Week 4', '', '', 'Rudy Soedewo', '0813 8766 1466', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, '2025-02-22', 202502, '00:00:23', 'Week 4', '', '', 'Arifiadi', '0812 41333 8434', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, '2025-02-23', 202502, '00:00:05', 'Week 5', '', '', 'Yuda', '0813 9996 7246', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, '2025-02-23', 202502, '00:00:09', 'Week 5', '', '', 'Sugeng R', '0822 6111 3903', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, '2025-02-23', 202502, '00:00:10', 'Week 5', '', '', 'Heri Irawan', '0812 1824 1633', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, '2025-02-23', 202502, '00:00:23', 'Week 5', '', 'Jakarta Selatan', 'Bhontot', '0857 1588 8901', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, '2025-02-24', 202502, '00:00:23', 'Week 5', '', 'Bambu Apus', 'Santosoosandy', '0852 8241 3862', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tanya-tanya dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, '2025-02-24', 202502, '00:00:07', 'Week 5', '', 'Gresik', 'Maria M', '0853 4933 8330', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, '2025-02-25', 202502, '00:00:05', 'Week 5', '', 'Cikarang', 'Zaenal', '0822 2021 3280', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, '2025-02-25', 202502, '00:00:06', 'Week 5', '', 'Cilegon', 'Odong', '0882 9112 3386', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, '2025-02-25', 202502, '00:00:09', 'Week 5', '', 'Cilegon', 'H. Amir Hamzah GH', '0853 3223 4446', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 635000, 'MAC Hebat 2', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, '2025-02-25', 202502, '00:00:10', 'Week 5', '', 'Surabaya', 'Roy Irawan', '0811 3621 184', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, '2025-02-25', 202502, '00:00:10', 'Week 5', '', 'Tangerang', 'Four R', '0812 8485 5993', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 655000, 'Hebat 3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, '2025-02-25', 202502, '00:00:11', 'Week 5', '', '', 'Hong Sen', '0852 6537 4568', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, '2025-02-25', 202502, '00:00:11', 'Week 5', '', 'Bogor', 'Fajar', '0896 0199 8970', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, '2025-02-25', 202502, '00:00:11', 'Week 5', '', 'Bekasi', '', '0857 1601 9096', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, '2025-02-25', 202502, '00:00:11', 'Week 5', '', 'Palmerah', 'Mixue Indo', '0878 5092 1434', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, '2025-02-25', 202502, '00:00:12', 'Week 5', '', '', 'Sholeh', '0856 9766 1218', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, '2025-02-25', 202502, '00:00:14', 'Week 5', '', 'Tigaraksa', 'Jpur', '0858 9283 7323', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 655000, 'Hebat 3', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, '2025-02-25', 202502, '00:00:12', 'Week 5', '', '', 'Sholeh', '0856 9766 1218', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, '2025-02-25', 202502, '00:00:17', 'Week 5', '', '', 'Koko Widianto', '0822 1624 1516', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, '2025-02-25', 202502, '00:00:20', 'Week 5', '', 'Surabaya', 'aries Kenzi', '0857 7773 4085', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, '2025-02-25', 202502, '00:00:21', 'Week 5', '', 'Bogor', 'Dewa Aria', '0812 8587 9910', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, '2025-02-25', 202502, '00:00:18', 'Week 5', '', '', 'Eko Daryatno', '0816 1442 871', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, '2025-02-25', 202502, '00:00:23', 'Week 5', '', '', 'Ari', '0812 8026 6838', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, '2025-02-26', 202502, '00:00:08', 'Week 5', '', 'Cibubur', 'Ivon', '0812 9448 419', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Honda Civic', 0, 'mogok', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, '2025-02-26', 202502, '00:00:09', 'Week 5', '', 'Pontianak', 'Zulham', '0822 7280 7497', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, '2025-02-26', 202502, '00:00:09', 'Week 5', '', '', 'gamma Sianturi', '0877 8096 8090', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, '2025-02-26', 202502, '00:00:10', 'Week 5', '', '', 'Peta F S Hutagalung', '0852 7675 3220', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, '2025-02-26', 202502, '00:00:15', 'Week 5', '', '', 'Tono', '0812 1099 9233', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, '2025-02-26', 202502, '00:00:19', 'Week 5', '', 'Cengkareng', 'Muhammad', '0857 3169 4932', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 175000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, '2025-02-26', 202502, '00:00:21', 'Week 5', '', '', 'Roni Fatekurohman', '0899 3879 450', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, '2025-02-26', 202502, '00:00:22', 'Week 5', '', 'Malang', '', '0812 4950 7843', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, '2025-02-26', 202502, '00:00:22', 'Week 5', '', 'Tangerang', 'Eko Nurcahyo', '0812 4950 7843', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, '2025-02-27', 202502, '00:00:06', 'Week 5', '', '', 'Andik', '0822 4446 1601', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, '2025-02-27', 202502, '00:00:08', 'Week 5', '', 'Surabaya', '.A', '0812 2370 0458', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, '2025-02-27', 202502, '00:00:09', 'Week 5', '', 'Kemayoran', 'Nenda', '0818 0650 6797', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, '2025-02-27', 202502, '00:00:10', 'Week 5', '', '', 'Auto Clean', '0813 2012 3057', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, '2025-02-27', 202502, '00:00:10', 'Week 5', '', 'Cibitung', 'Rayyanka Aidil Zafran', '0823 7679 5698', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, '2025-02-27', 202502, '00:00:10', 'Week 5', '', 'Bandung', 'Mehammad Aji', '0895 0914 0947', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, '2025-02-27', 202502, '00:00:11', 'Week 5', '', 'Bogor', 'Rizki', '0856 7270 590', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, '2025-02-27', 202502, '00:00:12', 'Week 5', '', '', 'Hasan', '0897 9640 054', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, '2025-02-27', 202502, '00:00:12', 'Week 5', '', 'Grobogan', 'Susenoh', '0822 2709 9953', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, '2025-02-27', 202502, '00:00:17', 'Week 5', '', 'Lippo Cikarang', 'Riswanto', '0856 4018 1422', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, '2025-02-27', 202502, '00:00:19', 'Week 5', '', 'Medan', 'Dino Ramadhan', '0853 6656 9300', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, '2025-02-27', 202502, '00:00:18', 'Week 5', '', 'Sidoarjo', 'Teguh Prasetyo', '0823 3870 1927', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Granmax', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, '2025-02-27', 202502, '00:00:19', 'Week 5', '', 'Talang Jambe', 'Chandra Bustomi', '0821 7536 1063', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Atur waktu dulu', 'Xenia 2007', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, '2025-02-28', 202502, '00:00:10', 'Week 5', '', 'Bekasi', 'Roni', '0857 1407 6907', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Etios', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, '2025-03-01', 202503, '00:00:16', 'Week 1', '', '', '-', '0895 6031 68973', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, '2025-03-02', 202503, '00:00:15', 'Week 2', '', 'Puri Indah', 'Wiranto', '0887 8881 881', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'Deal', 'Tidak ada respon', 'Vios', 955000, 'Service Berkala', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, '2025-03-03', 202503, '00:00:14', 'Week 2', '', 'Bogor', 'M Rizal', '0895 4038 15748', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Rush', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, '2025-03-03', 202503, '00:00:18', 'Week 2', '', 'Lenteng agung', 'Sada', '0895 3845 40938', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Brio 2023', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, '2025-03-03', 202503, '00:00:19', 'Week 2', '', 'Cikarang', 'Galang', '0813 1934 1624', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, '2025-03-03', 202503, '00:00:19', 'Week 2', '', '', 'Yoga Ramadhan', '0878 2312 4974', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, '2025-03-04', 202503, '00:00:03', 'Week 2', '', '', 'Ahmad', '0881 0270 42953', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, '2025-03-04', 202503, '00:00:03', 'Week 2', '', 'Veteran Pesanggrahan', 'Anggit', '0877 8076 4992', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, '2025-03-04', 202503, '00:00:04', 'Week 2', '', '', 'Fadil', '0812 9413 9463', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, '2025-03-04', 202503, '00:00:09', 'Week 2', '', 'Medan', 'Massimo', '0822 7655 1937', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, '2025-03-04', 202503, '00:00:09', 'Week 2', '', 'Kemayoran', 'Tedy H', '0856 9773 6897', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Honda City', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, '2025-03-04', 202503, '00:00:10', 'Week 2', '', 'Medan', 'Supriadi', '0852 6113 1227', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, '2025-03-04', 202503, '00:00:10', 'Week 2', '', 'Bantargebang', 'Yahya', '0856 9740 0484', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Avanza 2009', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(435, '2025-03-04', 202503, '00:00:11', 'Week 2', '', 'Keradenan Bogor', 'Topan', '0813 6068 6801', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Honda City 2004', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, '2025-03-04', 202503, '00:00:11', 'Week 2', '', '', '-', '0822 8231 1896', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, '2025-03-04', 202503, '00:00:14', 'Week 2', '', 'Condet', 'Rachmat', '0857 11144 1038', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Ertiga 2013', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, '2025-03-04', 202503, '00:00:18', 'Week 2', '', 'Tangerang', 'Andrian', '0896 1669 3971', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, '2025-03-04', 202503, '00:00:19', 'Week 2', '', 'Medan', 'Putra', '0853 7334 0588', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Rush 2007', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, '2025-03-04', 202503, '00:00:22', 'Week 2', '', '', '-', '0895 3208 19075', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, '2025-03-04', 202503, '00:00:22', 'Week 2', '', 'Majalengka', 'Abu Afkar', '0852 0727 3342', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, '2025-03-04', 202503, '00:00:22', 'Week 2', '', 'Tangerang', 'Andi Septian', '0878 2084 7714', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, '2025-03-04', 202503, '00:00:22', 'Week 2', '', 'Semarang', 'Fr', '0895 4136 58573', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, '2025-03-05', 202503, '00:00:01', 'Week 2', '', 'Tangerang', '-', '0821 1157 2829', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Rush 2015', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, '2025-03-05', 202503, '00:00:08', 'Week 2', '', 'Tasikmalaya', 'Hilal', '0821 1377 5564', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, '2025-03-05', 202503, '00:00:08', 'Week 2', '', 'Margonda', 'Eka Fafaza', '0812 2867 2299', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, '2025-03-05', 202503, '00:00:08', 'Week 2', '', 'Cihampelas', 'Krisna indrawan', '0838 2274 0444', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, '2025-03-05', 202503, '00:00:11', 'Week 2', '', 'Subang', 'Riyadi', '0856 4005 9583', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, '2025-03-05', 202503, '00:00:13', 'Week 2', '', 'Tangerang Rajeg', 'Andri', '0821 2409 8650', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, '2025-03-05', 202503, '00:00:14', 'Week 2', '', '', 'Ipiet Wdr', '0813 8194 4599', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, '2025-03-05', 202503, '00:00:22', 'Week 2', '', 'Depok', 'Hidayat', '0813 8098 8078', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'BRV', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, '2025-03-05', 202503, '00:00:22', 'Week 2', '', '', 'Gerry Pratama', '0895 6394 20615', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Granmax', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, '2025-03-05', 202503, '00:00:23', 'Week 2', '', 'Marelan', 'Suaful Guci', '0878 9467 4535', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, '2025-03-06', 202503, '00:00:04', 'Week 2', '', '', 'Supriyadi', '0895 6145 31827', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Innova', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, '2025-03-06', 202503, '00:00:05', 'Week 2', '', 'Jogja', 'Meylani', '0896 7432 3870', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, '2025-03-06', 202503, '00:00:08', 'Week 2', '', 'Ciracas', 'Tri Hamukti', '0857 1091 2392', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, '2025-03-06', 202503, '00:00:09', 'Week 2', '', '', 'Kaw', '0878 8106 5027', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, '2025-03-06', 202503, '00:00:12', 'Week 2', '', 'Jakarta Barat', 'Joe', '0857 1919 6712', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Agya Matic', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, '2025-03-07', 202503, '00:00:18', 'Week 2', 'Towing', '', 'Aik', '0823 8299 1753', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, 'Derek', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, '2025-03-08', 202503, '00:00:08', 'Week 2', '', '', 'Galih Arief', '0812 3311 5515', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, '2025-03-08', 202503, '00:00:16', 'Week 2', 'Towing', '', 'Hartanto', '0817 9454 249', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, 'Derek', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, '2025-03-08', 202503, '00:00:10', 'Week 2', 'Towing', '', '', '0812 6939 1133', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, 'Derek', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, '2025-03-10', 202503, '00:00:13', 'Week 3', '', 'Alam Sutera', 'Sandieks', '0857 7216 9714', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, '2025-03-10', 202503, '00:00:14', 'Week 3', '', '', 'Yura Aneffari', '0818 647 838', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, '2025-03-10', 202503, '00:00:15', 'Week 3', '', 'Bekasi', 'Arif', '0819 7210 224', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, '2025-03-10', 202503, '00:00:16', 'Week 3', '', 'Bekasi', 'Wewen', '0851 7315 2280', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, '2025-03-10', 202503, '00:00:22', 'Week 3', '', '', '', '0819 7210 224', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, '2025-03-11', 202503, '00:00:00', 'Week 3', 'Home Service', 'Fatmawati, Jaksel', 'Wicaks', '0812 8708 8287', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Innvova 2014', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, '2025-03-11', 202503, '00:00:04', 'Week 3', '', '', 'AI', '0895 2682 4251', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, '2025-03-11', 202503, '00:00:05', 'Week 3', '', 'Cikarang Timur', '', '0897 9530 065', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, '2025-03-11', 202503, '00:00:08', 'Week 3', 'Home Service', 'Bintaro', 'Khoy', '0822 1378 2065', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Datsun Cross 2018', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, '2025-03-11', 202503, '00:00:08', 'Week 3', '', 'Denpasar', '', '0822 1378 2065', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, '2025-03-11', 202503, '00:00:08', 'Week 3', '', 'Tangsel', 'harsus', '0812 1016 1608', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, '2025-03-11', 202503, '00:00:09', 'Week 3', '', 'Bekasi Timur', 'Kiki Petshop', '0831 6479 2232', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, '2025-03-11', 202503, '00:00:04', 'Week 3', '', 'Bantargebang', 'Yusuf Pemdiansyah', '0858 1110 4036', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, '2025-03-11', 202503, '00:00:22', 'Week 3', '', '', 'Budhi ', '0813 2574 2577', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nunggu THR', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, '2025-03-12', 202503, '00:00:04', 'Week 3', '', '', 'Adizery', '0819 0821 9941', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, '2025-03-12', 202503, '00:00:08', 'Week 3', '', 'Galaxy Bekasi', 'Aryo', '0856 4747 3427', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, '2025-03-12', 202503, '00:00:12', 'Week 3', '', 'Bojong Gede', 'Ray Sefdy', '0896 3788 7179', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, '2025-03-12', 202503, '00:00:14', 'Week 3', '', 'Tangsel', 'Bulan Maulana', '0823 0255 0696', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, '2025-03-12', 202503, '00:00:15', 'Week 3', '', 'Jakbar', 'TK Utama GRS', '0822 2150 1152', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Yaris', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, '2025-03-12', 202503, '00:00:21', 'Week 3', '', '', 'Grateful', '0818 0918 3914', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, '2025-03-13', 202503, '00:00:04', 'Week 3', '', 'Malang', 'Aiselle', '0851 7315 0274', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, '2025-03-13', 202503, '00:00:07', 'Week 3', '', 'Cibitung', 'Agus Mashuri', '0813 1782 4465', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Tidak ada respon', 'Ayla', 580000, 'Berkala', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, '2025-03-13', 202503, '00:00:07', 'Week 3', '', 'Bekasi', 'Nyoman Budhi', '0831 1443 1754', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Wuling Confero', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, '2025-03-13', 202503, '00:00:07', 'Week 3', '', '', 'Heiske', '0813 4261 8025', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, '2025-03-13', 202503, '00:00:08', 'Week 3', '', 'Tangerang Kabupaten', 'Marwansyah Putra', '0813 7768 0076', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, '2025-03-13', 202503, '00:00:09', 'Week 3', '', 'Semarang', 'Arianto', '0859 2482 2387', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, '2025-03-13', 202503, '00:00:09', 'Week 3', '', 'Cibubur', '-', '0817 888 377', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, '2025-03-13', 202503, '00:00:09', 'Week 3', '', 'Jatiwarna', 'Dwi Pambudi', '0857 7391 6295', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Brio', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, '2025-03-13', 202503, '00:00:09', 'Week 3', '', '', 'Heiske', '0813 4261 8025', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, '2025-03-13', 202503, '00:00:10', 'Week 3', '', 'Tangerang', 'Agy', '0897 8010 357', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Ayla', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, '2025-03-13', 202503, '00:00:10', 'Week 3', '', 'Cirebon', 'Ricky Setiawan', '0896 7843 7161', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, '2025-03-13', 202503, '00:00:11', 'Week 3', '', 'Bekasi', 'Dini', '0898 9171 631', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Sigra', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, '2025-03-13', 202503, '00:00:12', 'Week 3', '', '', 'Briyanto', '0859 4655 6086', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, '2025-03-13', 202503, '00:00:14', 'Week 3', '', 'BSD', 'Napi', '0856 6456 8861', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, '2025-03-13', 202503, '00:00:17', 'Week 3', '', '', 'Bocah', '0813 8993 0179', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, '2025-03-13', 202503, '00:00:18', 'Week 3', '', '', 'Dediz', '0812 2992 8795', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, '2025-03-13', 202503, '00:00:21', 'Week 3', '', 'Gunung Putri', 'Ozi', '0878 2769 2853', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Ayla 2019', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, '2025-03-13', 202503, '00:00:22', 'Week 3', '', 'Depok', 'Arya Sp', '0823 6745 7727', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Jazz 2005', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, '2025-03-13', 202503, '00:00:22', 'Week 3', '', '', 'Esunario', '0812 6162 5469', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, '2025-03-13', 202503, '00:00:22', 'Week 3', '', '', 'Badrun Ryan', '0812 2997 4755', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, '2025-03-13', 202503, '00:00:22', 'Week 3', '', 'Bandung', 'Suga Agus', '0852 9429 1929', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, '2025-03-14', 202503, '00:00:00', 'Week 3', '', 'Ciledug Tangerang', 'PR', '0812 9207 6060', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, '2025-03-14', 202503, '00:00:03', 'Week 3', '', '', 'Maftuhin Ahmad', '0877 8035 2000', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, '2025-03-14', 202503, '00:00:03', 'Week 3', '', 'Tangerang', 'Ammar Arasyi', '0812 8361 4139', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, '2025-03-14', 202503, '00:00:04', 'Week 3', '', 'Lubang Buaya', 'Pratomo', '0813 2748 3841', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, '2025-03-14', 202503, '00:00:05', 'Week 3', '', '', 'Firas Asthadi', '0821 2286 8155', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, '2025-03-14', 202503, '00:00:06', 'Week 3', '', '', 'Marhadi', '0821 2262 2397', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, '2025-03-14', 202503, '00:00:10', 'Week 3', '', '', 'Nur Kholik', '0812 8492 4142', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, '2025-03-14', 202503, '00:00:12', 'Week 3', '', 'Ragunan', 'Noer', '0821 1133 3077', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti diinfo lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, '2025-03-14', 202503, '00:00:18', 'Week 3', '', '', 'Mubaarok', '0878 7607 4587', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, '2025-03-14', 202503, '00:00:20', 'Week 3', '', 'Cilandak', 'Anggara Yudha Pratama', '0812 1571 0730', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Ford Everest', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, '2025-03-14', 202503, '00:00:23', 'Week 3', '', '', 'Benk beng', '0859 5911 2550', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, '2025-03-15', 202503, '00:00:01', 'Week 3', '', 'Tangerang', 'A&F ', '0821 1073 9994', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Sigra', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, '2025-03-15', 202503, '00:00:01', 'Week 3', '', '', 'Tiara', '0852 9077 2334', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, '2025-03-15', 202503, '00:00:04', 'Week 3', '', '', 'Daisuke', '0821 2684 8551', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, '2025-03-15', 202503, '00:00:05', 'Week 3', '', 'Cikande', 'Rohman Fadil', '0823 7507 3024', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, '2025-03-15', 202503, '00:00:08', 'Week 3', '', 'Bandung', 'Muhammad Fakhri', '0896 1754 5212', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, '2025-03-15', 202503, '00:00:09', 'Week 3', '', 'Pademangan', 'Samsul', '0823 2945 0899', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Xenia', 671000, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, '2025-03-15', 202503, '00:00:09', 'Week 3', '', 'Depok', 'Abdul Rahman', '0821 1233 7229', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, '2025-03-15', 202503, '00:00:09', 'Week 3', '', 'Rawamangun', 'Abdullah', '0899 9246 144', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, '2025-03-15', 202503, '00:00:09', 'Week 3', '', 'Tangerang', 'Bolo', '0851 4206 9691', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, '2025-03-15', 202503, '00:00:10', 'Week 3', '', 'Pamulang', 'Gisella', '0813 1888 5708', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Livina 2011', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, '2025-03-15', 202503, '00:00:10', 'Week 3', '', '', 'New Cell ', '0822 9893 8288', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, '2025-03-15', 202503, '00:00:10', 'Week 3', '', '', 'Gieshella Hartono', '0821 3474 3954', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, '2025-03-15', 202503, '00:00:10', 'Week 3', '', '', 'Cep', '0857 8212 9653', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, '2025-03-15', 202503, '00:00:21', 'Week 3', '', 'Serdang Bedagai', 'Arif Lubis', '0813 9765 0700', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, '2025-03-15', 202503, '00:00:16', 'Week 3', '', '', 'Ady', '0811 1362 733', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, '2025-03-15', 202503, '00:00:17', 'Week 3', '', '', 'Abdullatif', '0813 8133 7335', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, '2025-03-15', 202503, '00:00:19', 'Week 3', '', 'Palembang', 'Empie Kurniawan', '0821 8480 5669', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, '2025-03-15', 202503, '00:00:19', 'Week 3', '', '', 'M Asror', '0856 1956 285', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, '2025-03-15', 202503, '00:00:20', 'Week 3', '', '', 'Fai Lasuf', '0813 1884 3922 ', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, '2025-03-15', 202503, '00:00:21', 'Week 3', '', 'Bekasi', 'Kiw', '0812 1979 8007', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, '2025-03-15', 202503, '00:00:21', 'Week 3', '', 'Cimahi', 'Irwansusanto', '0817 7547 5507', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, '2025-03-15', 202503, '00:00:21', 'Week 3', '', '', 'Rudi', '0812 1955 4560', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, '2025-03-15', 202503, '00:00:22', 'Week 3', '', '', 'Pajoan', '0812 9561 4890', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, '2025-03-16', 202503, '00:00:00', 'Week 4', '', 'Bekasi', 'Saeploh', '0858 8003 2199', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, '2025-03-16', 202503, '00:00:04', 'Week 4', '', 'Tangerang', 'Abdullah', '0858 2947 1182', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, '2025-03-16', 202503, '00:00:10', 'Week 4', '', '', 'Slamet', '0813 9913 7615', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, '2025-03-16', 202503, '00:00:11', 'Week 4', '', 'Priok', 'Nur Kholik', '0858 9437 7680', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, '2025-03-16', 202503, '00:00:11', 'Week 4', '', 'Jakarta Timur', 'Adam Segair', '0878 8950 0455', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, '2025-03-16', 202503, '00:00:11', 'Week 4', '', '', 'Yadi', '0857 7412 7796', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, '2025-03-16', 202503, '00:00:14', 'Week 4', '', 'Babelan', 'Joko', '0895 3248 53976', '-', 'Direct Chat', 'Deal', 'Tidak ada respon', 'Terios 2012', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, '2025-03-16', 202503, '00:00:14', 'Week 4', '', 'Kalideres', 'Abib ', '0838 1903 1823', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, '2025-03-16', 202503, '00:00:15', 'Week 4', '', 'Bekasi', 'Al Faruq', '0858 9103 8114', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, '2025-03-16', 202503, '00:00:17', 'Week 4', '', '', 'Akhmad Faisol', '0878 6201 5429', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, '2025-03-16', 202503, '00:00:21', 'Week 4', '', '', 'Agus', '0853 1195 5016', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, '2025-03-16', 202503, '00:00:22', 'Week 4', '', 'Palembang', 'Edo', '0813 8135 8994', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, '2025-03-16', 202503, '00:00:22', 'Week 4', '', '', 'Mesraa', '0817 289 273', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, '2025-03-16', 202503, '00:00:23', 'Week 4', '', 'Tangerang', 'Ageng Rahmatulloh', '0851 6296 5095', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Agya 2015', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, '2025-03-17', 202503, '00:00:00', 'Week 4', '', 'Medan', 'Harinas', '0895 0420 7332', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, '2025-03-17', 202503, '00:00:01', 'Week 4', '', '', 'Kiki', '0852 6915 7698', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, '2025-03-17', 202503, '00:00:01', 'Week 4', '', '', 'Qiqi', '0838 7338 5573', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, '2025-03-17', 202503, '00:00:10', 'Week 4', '', 'Jakarta Timur', 'Ponco', '0856 9044 557', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', 'Alphard & PCX', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, '2025-03-17', 202503, '00:00:14', 'Week 4', '', 'Cinere', 'LA', '0852 2028 5330', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Vios Gen 1', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, '2025-03-17', 202503, '00:00:16', 'Week 4', '', '', 'Ishak Iskandar', '0853 4694 9077', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, '2025-03-17', 202503, '00:00:18', 'Week 4', '', '', 'Jiyat Akbar', '0877 9091 5701', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, '2025-03-17', 202503, '00:00:19', 'Week 4', '', 'Batam', 'Aan', '0813 7270 7502', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, '2025-03-17', 202503, '00:00:19', 'Week 4', '', 'Lebak Banten', 'Riski Fernando', '0895 3792 72244', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, '2025-03-17', 202503, '00:00:20', 'Week 4', '', 'Tomang', 'Rialdy', '0856 9242 9577', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, '2025-03-17', 202503, '00:00:20', 'Week 4', '', 'Tangerang', 'Hoodie Addict', '0895 3318 17126', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, '2025-03-17', 202503, '00:00:22', 'Week 4', '', 'Pondok Gede', 'Riski Ade', '0877 7663 3998', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, '2025-03-17', 202503, '00:00:23', 'Week 4', '', 'Senen Jakpus', 'Andi', '0856 9755 5244', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, '2025-03-18', 202503, '00:00:00', 'Week 4', '', '', 'Budi Ramelan', '0857 1521 3212', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, '2025-03-18', 202503, '00:00:06', 'Week 4', '', '', 'Nasuha', '0822 0055 34522', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, '2025-03-18', 202503, '00:00:06', 'Week 4', '', '', 'Michael', '0857 4608 7617', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, '2025-03-18', 202503, '00:00:07', 'Week 4', '', 'Gading Serpong', '-', '0851 8313 8099', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, '2025-03-18', 202503, '00:00:08', 'Week 4', '', 'Tasikmalaya', 'Hendra', '0856 9773 9493', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, '2025-03-18', 202503, '00:00:10', 'Week 4', '', 'Jakarta', 'Lintang', '0856 7171 186', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, '2025-03-18', 202503, '00:00:14', 'Week 4', '', 'Pacinongang Gowa', 'Muhaerani', '0853 2113 8206', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, '2025-03-18', 202503, '00:00:17', 'Week 4', '', 'Bogor', 'Asep', '0812 1373 5432', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', 'Mobilio', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, '2025-03-18', 202503, '00:00:16', 'Week 4', '', 'Surabaya', '-', '0815 5334 8599', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mau ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, '2025-03-18', 202503, '00:00:16', 'Week 4', '', 'Bekasi', 'Alie', '0882 9370 7028', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Baleno', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, '2025-03-18', 202503, '00:00:17', 'Week 4', '', 'Jombang, Jatim', 'Gajls', '0896 6972 1964', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, '2025-03-18', 202503, '00:00:20', 'Week 4', '', 'Mustika Jaya', 'Agues Kenthus', '0813 8580 7323', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, '2025-03-18', 202503, '00:00:21', 'Week 4', '', 'Gunung Putri', 'Akbar', '0877 3549 3899', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, '2025-03-18', 202503, '00:00:22', 'Week 4', '', 'Tegal', 'Giantoro Hogi', '0821 3850 3910', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, '2025-03-18', 202503, '00:00:22', 'Week 4', '', '', 'Bapaknya Syah', '0896 5484 0095', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, '2025-03-18', 202503, '00:00:22', 'Week 4', '', 'Jakarta Tiimur', 'Resa Bonita', '0851 5866 7183', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, '2025-03-18', 202503, '00:00:22', 'Week 4', '', '', 'Taufik', '0878 8638 0412', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, '2025-03-19', 202503, '00:00:00', 'Week 4', '', 'Bandung', 'Zan', '0857 9442 4862', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, '2025-03-19', 202503, '00:00:04', 'Week 4', '', 'Cibinong', 'Deni Ramdhani', '0815 7000 721', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, '2025-03-19', 202503, '00:00:06', 'Week 4', '', 'Karawang', 'Tetap Bersyukur', '0821 2726 7073', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, '2025-03-19', 202503, '00:00:08', 'Week 4', '', 'Babelan', 'Ilham Miftahuddin', '0896 0195 6693', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, '2025-03-19', 202503, '00:00:10', 'Week 4', '', 'Kelapa Gading', 'Radhiansa', '0838 0606 8686', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, '2025-03-19', 202503, '00:00:10', 'Week 4', '', 'Tangerang', 'Andri Novianto', '0877 7748 8554', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, '2025-03-19', 202503, '00:00:10', 'Week 4', '', 'Banten', 'Hendar', '0882 0014 93997', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, '2025-03-19', 202503, '00:00:10', 'Week 4', '', 'Cibinong', '-', '0852 2997 8555', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, '2025-03-19', 202503, '00:00:15', 'Week 4', '', 'Sawangan, Depok', 'Yura & Ruby', '0858 9456 8524', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, '2025-03-19', 202503, '00:00:19', 'Week 4', '', 'Makssar', 'Aco', '0852 4163 1426', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, '2025-03-19', 202503, '00:00:20', 'Week 4', '', 'Sawangan, Depok', 'Febi', '0877 1136 6177', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, '2025-03-19', 202503, '00:00:22', 'Week 4', '', 'Semarang', 'Panji Syaefulloh', '0858 4294 5891', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, '2025-03-19', 202503, '00:00:22', 'Week 4', '', 'Harapan Indah, Bekasi', 'aas', '0812 2535 0054', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, '2025-03-19', 202503, '00:00:22', 'Week 4', '', '-', 'Eddy Wijono', '0813 5712 3307', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, '2025-03-19', 202503, '00:00:23', 'Week 4', '', 'Medan', 'Simon Manurung', '0852 4319 1162', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, '2025-03-19', 202503, '00:00:00', 'Week 4', '', 'Medan Satria, Bekasi', 'Peace', '0878 4441 8127', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, '2025-03-19', 202503, '00:00:00', 'Week 4', '', 'Cengkareng', 'Fico Azhari', '0856 8830 543', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', 'Proton Savvy', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, '2025-03-19', 202503, '00:00:01', 'Week 4', '', '-', 'Herwan Halim', '0817 9976 558', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, '2025-03-19', 202503, '00:00:08', 'Week 4', '', 'Depok', 'Aku Telkomsel', '0822 4692 9928', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, '2025-03-19', 202503, '00:00:11', 'Week 4', '', 'Jatiasih', 'Syah', '0813 4772 4385', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, '2025-03-20', 202503, '00:00:05', 'Week 4', '', 'Serpong', 'Ahriiez Muchtar', '0813 1415 6941', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, '2025-03-20', 202503, '00:00:09', 'Week 4', '', 'Rawamangun', 'Utomo Hexavianto', '0812 2277 3042', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, '2025-03-20', 202503, '00:00:11', 'Week 4', '', '', 'Vxcrop', '0859 3926 4111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, '2025-03-20', 202503, '00:00:11', 'Week 4', '', '', 'Oil', '0822 8869 5379', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, '2025-03-20', 202503, '00:00:17', 'Week 4', '', '', 'Wafribejo', '0888 09995 0125', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, '2025-03-20', 202503, '00:00:17', 'Week 4', '', '', 'Gusnubia', '0899 2418 111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, '2025-03-20', 202503, '00:00:19', 'Week 4', '', 'Parung Bogor', 'Rizky M', '0857 1024 2097', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, '2025-03-20', 202503, '00:00:19', 'Week 4', '', 'Pondok Gede', 'Alkin', '0856 9502 4937', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, '2025-03-20', 202503, '00:00:20', 'Week 4', '', 'Cikarang', '-', '0823 1998 4111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, '2025-03-20', 202503, '00:00:20', 'Week 4', '', 'Karawang', 'Rafisky', '0811 1123 124', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, '2025-03-20', 202503, '00:00:20', 'Week 4', '', 'Palmerah', 'Handy', '0821 2466 9845', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, '2025-03-20', 202503, '00:00:20', 'Week 4', '', 'Ciracas', 'Erlangga Sakiti', '0822 1393 0014', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, '2025-03-21', 202503, '00:00:01', 'Week 4', '', '', 'Rock n', '0838 2166 4307', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, '2025-03-21', 202503, '00:00:06', 'Week 4', '', 'Cengkareng', '..', '0852 1003 1270', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, '2025-03-21', 202503, '00:00:07', 'Week 4', '', 'Cakung', 'Yoppy Kumaseh', '0818 0862 1269', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, '2025-03-21', 202503, '00:00:08', 'Week 4', '', 'Surabaya', 'Trimoryudha', '0812 3122 7378', '-', 'Direct Chat', 'No Deal', 'Tanya dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, '2025-03-21', 202503, '00:00:10', 'Week 4', '', '-', 'R Wicaksono', '0882 9377 8935', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, '2025-03-21', 202503, '00:00:10', 'Week 4', '', 'Surabaya', 'Dvd', '0822 3489 9655', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, '2025-03-21', 202503, '00:00:10', 'Week 4', '', '-', 'Dwi Wicaksono', '0811 2636 013', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, '2025-03-21', 202503, '00:00:17', 'Week 4', '', '-', 'Mashuri Lazuardy', '0811 1032 686', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, '2025-03-21', 202503, '00:00:17', 'Week 4', '', '-', 'Fahmi', '0857 1833 3571', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, '2025-03-21', 202503, '00:00:18', 'Week 4', '', '-', 'Farrel Ibrahim ', '0817 7917 8318', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, '2025-03-21', 202503, '00:00:19', 'Week 4', '', '-', 'Angga', '0856 9306 6454', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, '2025-03-21', 202503, '00:00:20', 'Week 4', '', '-', 'Zee', '0878 3464 3535', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, '2025-03-21', 202503, '00:00:21', 'Week 4', '', '-', 'Abidzar', '0878 3464 3535', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, '2025-03-21', 202503, '00:00:22', 'Week 4', '', '-', 'Zamzam', '0857 9701 5550', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, '2025-03-22', 202503, '00:00:00', 'Week 4', '', 'Sepatan, Kab. Tangerang', 'Arieslono Aditia', '0812 2067 7187', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, '2025-03-22', 202503, '00:00:03', 'Week 4', '', 'Pondok Kopi', 'Azhiez Abdoel', '0856 9500 2412', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, '2025-03-22', 202503, '00:00:04', 'Week 4', '', 'Cimahi', 'Suparmanaman', '0831 3725 8205', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, '2025-03-22', 202503, '00:00:05', 'Week 4', '', 'Limo Depok', 'Sabili', '0896 2086 6587', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, '2025-03-22', 202503, '00:00:12', 'Week 4', '', 'Karawang', 'Iki', '0858 9491 6988', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, '2025-03-22', 202503, '00:00:14', 'Week 4', '', '', 'Sbux', '0813 903 090', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, '2025-03-22', 202503, '00:00:14', 'Week 4', '', 'Bekasi Selatan', 'Rehatta', '0851 7957 3176', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, '2025-03-22', 202503, '00:00:15', 'Week 4', '', '', 'Father', '0819 0813 4596', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, '2025-03-22', 202503, '00:00:15', 'Week 4', '', 'Cibinong', 'Budi', '0896 3873 4396', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, '2025-03-22', 202503, '00:00:16', 'Week 4', '', 'Kramat Jati', 'Yansen', '0812 1809 1714', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, '2025-03-22', 202503, '00:00:20', 'Week 4', '', '-', 'Wicaksono Dimas', '0812 4690 3094', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, '2025-03-22', 202503, '00:00:23', 'Week 4', '', '', 'Erik', '0858 8164 4982', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, '2025-03-22', 202503, '00:00:05', 'Week 4', '', 'Karawang', 'Dank Anton', '0881 0128 92211', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, '2025-03-23', 202503, '00:00:01', 'Week 5', '', 'Karawaci', 'Zaka Muharom', '0812 8852 9359', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, '2025-03-23', 202503, '00:00:07', 'Week 5', '', 'Citayam', 'Aji Alfaizal', '0877 1886 6085', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, '2025-03-23', 202503, '00:00:08', 'Week 5', '', 'Tangerang', 'Epul Saepuloh', '0853 2058 1569', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, '2025-03-23', 202503, '00:00:09', 'Week 5', '', '', 'Esgete', '0857 7071 8519', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, '2025-03-23', 202503, '00:00:09', 'Week 5', '', '', 'Cak_Nart', '0878 7695 5607', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, '2025-03-23', 202503, '00:00:09', 'Week 5', '', 'Cibubur', 'Imam', '0877 3892 6337', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, '2025-03-23', 202503, '00:00:09', 'Week 5', '', 'Bekasi Utara', 'Ghozentamam', '0877 3892 6337', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, '2025-03-23', 202503, '00:00:11', 'Week 5', '', 'Bogor', '-', '0816 1971 975', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, '2025-03-23', 202503, '00:00:19', 'Week 5', '', '', 'Ilmawan Himansyah', '0878 8788 1347', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, '2025-03-23', 202503, '00:00:20', 'Week 5', '', 'Jatisampurna', 'Malik', '0812 1170 4414', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, '2025-03-24', 202503, '00:00:21', 'Week 5', '', 'Tajurhalang', 'Latif Ismail', '0896 9459 2408', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(652, '2025-03-23', 202503, '00:00:22', 'Week 5', '', '', 'Ifer Valentino', '0812 8329 6370', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, '2025-03-23', 202503, '00:00:22', 'Week 5', '', 'Tangerang', '-', '0895 2686 1538', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, '2025-03-23', 202503, '00:00:22', 'Week 5', '', '', 'Fery Pratama', '0819 3995 3145', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, '2025-03-24', 202503, '00:00:01', 'Week 5', '', 'Semarang', 'Off', '0896 7162 0609', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, '2025-03-24', 202503, '00:00:05', 'Week 5', '', '', 'Galih Nurmahesa', '0812 1110 9947', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, '2025-03-24', 202503, '00:00:08', 'Week 5', '', '-', 'P45', '0878 2312 7216', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, '2025-03-24', 202503, '00:00:09', 'Week 5', '', 'GNI, Cileungsi', 'Fakhrul', '0857 1922 1141', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, '2025-03-24', 202503, '00:00:09', 'Week 5', '', '-', 'Dodi Setiadi', '0895 6175 22381', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, '2025-03-24', 202503, '00:00:10', 'Week 5', '', 'Babelan', '-', '0895 1801 1814', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, '2025-03-24', 202503, '00:00:11', 'Week 5', '', '-', 'Rahman', '0895 3378 65671', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, '2025-03-24', 202503, '00:00:12', 'Week 5', '', 'Bandung', 'Muhammad Fajruddin', '0877 1180 0029', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, '2025-03-24', 202503, '00:00:13', 'Week 5', '', '-', '-', '0858 1422 9263', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, '2025-03-24', 202503, '00:00:15', 'Week 5', '', 'Tangerang', 'ZJ27', '0877 6114 0952', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, '2025-03-24', 202503, '00:00:15', 'Week 5', '', 'Tangerang', 'Ahsan Wamuna', '0878 5480 9761', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, '2025-03-24', 202503, '00:00:19', 'Week 5', '', '', 'Hendra Wong', '0812 9244 7612', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, '2025-03-24', 202503, '00:00:19', 'Week 5', '', '', 'Money Changer', '0857 2639 8948', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, '2025-03-24', 202503, '00:00:21', 'Week 5', '', 'Semarang', 'Dhe', '0812 7537 1262', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, '2025-03-24', 202503, '00:00:23', 'Week 5', '', '', 'Dien', '0878 4523 5692', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, '2025-03-24', 202503, '00:00:23', 'Week 5', '', '', 'Bambang', '0895 6123 66999', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, '2025-03-24', 202503, '00:00:23', 'Week 5', '', '', 'Fin', '0851 8304 7930', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, '2025-03-25', 202503, '00:00:01', 'Week 5', '', 'Cikarang', 'R', '0812 1346 4633', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, '2025-03-25', 202503, '00:00:04', 'Week 5', '', 'Jakarta Pusat', 'Heruhp', '0813 8186 0083', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, '2025-03-25', 202503, '00:00:05', 'Week 5', '', 'Karawang', 'Edy Sukamto', '0858 9424 5936', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, '2025-03-25', 202503, '00:00:06', 'Week 5', '', 'Gresik', 'Qo', '0816 685 613', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, '2025-03-25', 202503, '00:00:08', 'Week 5', '', 'Sawangan, Depok', 'Antonius', '0813 9690 6611', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, '2025-03-25', 202503, '00:00:09', 'Week 5', '', 'Cipondoh Tangerang', 'Ghoza YN', '0851 7223 4773', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, '2025-03-25', 202503, '00:00:11', 'Week 5', '', 'Karawang', 'David adigraha', '0821 1962 2800', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, '2025-03-25', 202503, '00:00:12', 'Week 5', '', 'Sragen', 'Andhy Setiya', '0822 2058 2628', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, '2025-03-25', 202503, '00:00:13', 'Week 5', '', '-', 'Ilham', '0811 9861 836', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, '2025-03-25', 202503, '00:00:16', 'Week 5', '', '-', 'Fikri', '0882 2264 2785', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, '2025-03-25', 202503, '00:00:16', 'Week 5', '', 'Gunung Sindur', 'Ikmal', '0812 8522 4848', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, '2025-03-25', 202503, '00:00:18', 'Week 5', '', '-', 'Agus', '0852 8006 1112', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, '2025-03-25', 202503, '00:00:19', 'Week 5', '', '-', 'Eko Nurzaenuri', '0877 7776 5038', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, '2025-03-25', 202503, '00:00:20', 'Week 5', '', 'BSD', 'Yoli', '0812 9978 7568', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, '2025-03-25', 202503, '00:00:20', 'Week 5', '', '-', 'Evrino Avianto', '0812 8945 5152', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, '2025-03-25', 202503, '00:00:22', 'Week 5', '', 'Rawalumbu', 'mihaw', '0882 2496 6836', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, '2025-03-25', 202503, '00:00:23', 'Week 5', '', 'Bandung', 'Wahyu', '0878 5270 5745', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, '2025-03-26', 202503, '00:00:03', 'Week 5', '', 'Tangerang', 'Kang Moethi', '0857 7569 8514', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, '2025-03-26', 202503, '00:00:03', 'Week 5', '', '', 'Okta Udin', '0823 1125 1125', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, '2025-03-26', 202503, '00:00:04', 'Week 5', '', 'Serang', 'Qhii', '0857 7483 5978', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, '2025-03-26', 202503, '00:00:04', 'Week 5', '', 'Padalarang', 'Arif', '0881 8204 981', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, '2025-03-26', 202503, '00:00:06', 'Week 5', '', 'Bogor', 'Dody', '0852 6912 4366', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, '2025-03-26', 202503, '00:00:06', 'Week 5', '', '', 'S2', '0878 8170 0993', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, '2025-03-26', 202503, '00:00:07', 'Week 5', '', 'Bekasi', '.', '0895 6170 05841', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, '2025-03-26', 202503, '00:00:09', 'Week 5', '', 'Ciputat', 'SF', '0812 1985 7851', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, '2025-03-26', 202503, '00:00:10', 'Week 5', '', 'Cakung', 'Evien', '0858 8183 1948', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, '2025-03-26', 202503, '00:00:11', 'Week 5', '', 'Batam', 'Zun', '0857 7483 5978', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, '2025-03-26', 202503, '00:00:12', 'Week 5', '', 'Jakarta Pusat', 'Anggun', '0882 2182 6702', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, '2025-03-26', 202503, '00:00:15', 'Week 5', '', 'Parung Bogor', 'L', '0882 8920 1215', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, '2025-03-26', 202503, '00:00:16', 'Week 5', '', 'Cikarang', 'Kiki', '0856 7832 888', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, '2025-03-26', 202503, '00:00:20', 'Week 5', '', 'Tangerang', 'Ardin Tamba', '0812 9542 9009', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, '2025-03-27', 202503, '00:00:00', 'Week 5', '', 'Depok', 'H Lutfi', '0813 1526 5223', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, '2025-03-27', 202503, '00:00:04', 'Week 5', '', '', 'Msf', '0882 9327 1446', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, '2025-03-27', 202503, '00:00:08', 'Week 5', '', '', 'Bolo', '0831 6795 7891', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, '2025-03-27', 202503, '00:00:09', 'Week 5', '', 'Tangerang', '-', '0896 5331 8762', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, '2025-03-27', 202503, '00:00:11', 'Week 5', '', '', 'Siringan Ruung', '0878 7955 7219', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, '2025-03-27', 202503, '00:00:14', 'Week 5', '', '', 'MR', '0858 8814 7791', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, '2025-03-27', 202503, '00:00:19', 'Week 5', '', '', 'Alghiafkhar13', '0838 5707 2575', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, '2025-03-27', 202503, '00:00:20', 'Week 5', '', '', 'Arifrahman', '0895 8066 23662', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, '2025-03-27', 202503, '00:00:21', 'Week 5', '', 'Bintaro', 'Ilham', '0822 1319 9119', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, '2025-03-28', 202503, '00:00:04', 'Week 5', '', '', 'Satyo Aldy', '0858 1485 3677', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, '2025-03-28', 202503, '00:00:07', 'Week 5', '', 'Pengasinan Bekasi', '', '0878 3175 3511', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, '2025-03-28', 202503, '00:00:09', 'Week 5', '', '', '', '0813 2433 3597', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, '2025-03-28', 202503, '00:00:10', 'Week 5', '', '', 'Tri S', '0895 2588 4687', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, '2025-03-28', 202503, '00:00:14', 'Week 5', '', '', '', '0877 1128 2737', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, 'Mau tambah angin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, '2025-03-28', 202503, '00:00:16', 'Week 5', '', '', 'N', '0859 3938 6091', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, '2025-03-29', 202503, '00:00:03', 'Week 5', '', '', 'KB', '0811 122 512', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, '2025-03-29', 202503, '00:00:08', 'Week 5', '', '', 'Asep', '0813 8244 7441', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, '2025-03-29', 202503, '00:00:10', 'Week 5', '', '', 'Dedy', '0813 1366 8822', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, '2025-03-29', 202503, '00:00:12', 'Week 5', '', 'Serang', 'Bambang', '0859 4691 6077', 'Instagram', '', 'No Deal', 'Sudah service ditempat lain', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, '2025-03-29', 202503, '00:00:12', 'Week 5', '', 'Cimanggis', 'Ibnu Maulana', '0857 1400 9377', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Next time dijadwalkan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, '2025-03-29', 202503, '00:00:17', 'Week 5', '', 'Tangerang', 'Saso', '0896 7646 0786', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, '2025-03-29', 202503, '00:00:18', 'Week 5', '', '', 'Madse Pratomo', '0838 7050 9098', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, '2025-03-29', 202503, '00:00:19', 'Week 5', '', '', 'Skemal Walet', '0857 7288 5822', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, '2025-03-29', 202503, '00:00:22', 'Week 5', '', '', 'Miftah Bramantyo', '0858 0016 3895', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, '2025-03-30', 202503, '00:00:01', 'Week 6', '', '', 'Ahmad Harahap', '0858 0016 3895', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, '2025-03-30', 202503, '00:00:06', 'Week 6', '', '', 'Angga', '0896 5660 6466', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, '2025-03-30', 202503, '00:00:07', 'Week 6', '', '', 'Hendra', '0838 0488 3811', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Sudah service ditempat lain', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, '2025-03-30', 202503, '00:00:08', 'Week 6', '', '', 'Yoyok Suharmoko', '0877 5331 0557', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, '2025-03-30', 202503, '00:00:12', 'Week 6', '', '', 'Usep', '0878 8280 2896', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', 'APV 2005', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, '2025-03-30', 202503, '00:00:03', 'Week 6', '', 'Mampang', 'Hari Suparto', '0812 8339 9413', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Sudah service ditempat lain', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, '2025-03-30', 202503, '00:00:15', 'Week 6', '', 'Bintaro', 'Basuki Iman Santoso', '0811 8143 000', '-', 'Direct Chat', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, '2025-03-30', 202503, '00:00:15', 'Week 6', '', 'Denpasar', 'Dimas', '0857 3927 5572', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Belum minat lagi nanti dikabar', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, '2025-03-30', 202503, '00:00:14', 'Week 6', '', 'Karawang', 'Rizal Kris', '0812 1849 5870', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dijawab Jatinangor Tidak ada respon untuk penjadwalan setelah lebaran ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, '2025-03-30', 202503, '00:00:05', 'Week 6', '', 'Cipinang', 'Rom', '0822 1084 9042', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', 'Calya 2014', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, '2025-03-30', 202503, '00:00:17', 'Week 6', '', '', 'Arum', '0856 5514 4955', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, '2025-03-30', 202503, '00:00:20', 'Week 6', '', '', '', '0852 8348 4311', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, '2025-03-30', 202503, '00:00:20', 'Week 6', '', '', 'Yudi', '0852 2895 8282', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, '2025-03-30', 202503, '00:00:21', 'Week 6', '', 'Cikarang', 'Rugo', '0812 8960 7786', '-', 'Direct Chat', 'No Deal', 'butuh urgent ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, '2025-03-30', 202503, '00:00:23', 'Week 6', '', 'Tangerang Selatan', 'Indra Cahya Firdaus', '0878 8508 0923', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Sudah service, nanti aja selanjutnya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, '2025-03-31', 202503, '00:00:00', 'Week 6', '', '', 'Ala', '0857 1562 0664', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, '2025-03-31', 202503, '00:00:08', 'Week 6', '', '', 'Jo Samuel', '0896 5357 7754', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, '2025-03-31', 202503, '00:00:07', 'Week 6', '', '', 'Aries', '0812 9163 9956', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'claim Asuransi Garda Oto', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, '2025-03-31', 202503, '00:00:14', 'Week 6', '', '', 'Noel', '0877 6777 6111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, '2025-03-31', 202503, '00:00:18', 'Week 6', '', 'Marunda Bekasi', 'Arif', '0813 1488 1987', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', 'CRV  2009', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, '2025-03-31', 202503, '00:00:07', 'Week 6', '', 'Benhil Jakpus', 'Nike Sri Maharani', '0896 6459 0004', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Ban Bocor Urgent', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, '2025-03-31', 202503, '00:00:14', 'Week 6', '', '', 'Muhammad Akbar', '0812 8362 7923', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'mau gurah mesin dihari libur', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, '2025-04-01', 202504, '00:00:19', 'Week 1', '', 'Jatiasih', 'Nasir', '0822 3158 9488', 'Tiktok', 'Tiktok', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, '2025-04-01', 202504, '00:00:09', 'Week 1', '', 'Lippo Karawaci', 'Freddy Gunawan', '0819 3184 3937', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Mahal biaya home servicenya', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, '2025-04-01', 202504, '00:00:08', 'Week 1', '', '', 'Sukses', '0895 3454 17010', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Harganya belum masuk', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, '2025-04-01', 202504, '00:00:09', 'Week 1', '', 'Bandung', 'Gemoy', '0887 0635 5840', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, '2025-04-01', 202504, '00:00:09', 'Week 1', '', '', 'Wahidin', '0812 8359 3569', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, '2025-04-01', 202504, '00:00:10', 'Week 1', '', 'Tambun Selatan', 'Godel', '0896 3333 6578', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, 'ganti oli gurah mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, '2025-04-01', 202504, '00:00:10', 'Week 1', '', '', 'Rahmat Indra Kusuma', '0822 9154 0000', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, '2025-04-01', 202504, '00:00:11', 'Week 1', '', 'Gunung Putri', 'Tesalonika', '0855 9164 9205', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanti ke bengkel ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, '2025-04-01', 202504, '00:00:10', 'Week 1', '', '', 'Frank', '0812 6360 423', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, '2025-04-01', 202504, '00:00:13', 'Week 1', '', '', 'Fenris', '0819 0318 2498', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, '2025-04-01', 202504, '00:00:13', 'Week 1', '', 'Tegal', 'Aji Alfaizal', '0877 1886 6085', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Jauh', 'Honda City', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, '2025-04-01', 202504, '00:00:15', 'Week 1', '', 'Cikarang', 'Meidy Ruswanto', '0896 1990 1994', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'belum dulu karena keberatan biaya home service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, '2025-04-01', 202504, '00:00:17', 'Week 1', '', 'Kalteng', '', '0821 3114 8497', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak terjangkau', 'Sigra', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, '2025-04-01', 202504, '00:00:17', 'Week 1', '', '', 'Jajat Soedrajat', '0896 3682 4832', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, '2025-04-01', 202504, '00:00:19', 'Week 1', '', '', 'Oil', '0822 8869 5379', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, '2025-04-01', 202504, '00:00:19', 'Week 1', '', '', 'Nanda', '0812 8476 4242', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, '2025-04-01', 202504, '00:00:20', 'Week 1', '', '', 'Maman', '0818 1886 2115', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, '2025-04-01', 202504, '00:00:20', 'Week 1', '', '', 'Irfan Zuhdy', '0858 8216 0899', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, '2025-04-01', 202504, '00:00:21', 'Week 1', '', '', 'Saso', '094 295 3668', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya paket gurah', '', 0, 'gurah mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, '2025-04-01', 202504, '00:00:21', 'Week 1', '', '', 'Joerizput', '0878 8218 2770', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, '2025-04-01', 202504, '00:00:22', 'Week 1', '', 'Kebayoran Lama', 'Farhan', '0838 7690 2205', '-', 'Direct Chat', 'No Deal', 'sudah di reminder hari kerja, tapi tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, '2025-04-02', 202504, '00:00:08', 'Week 1', '', '', 'Wildan', '0812 1305 1458', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, '2025-04-02', 202504, '00:00:08', 'Week 1', '', '', 'Rizky R', '0812 9578 9479', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, '2025-04-02', 202504, '00:00:09', 'Week 1', '', '', 'E', '0856 9458 8216', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, '2025-04-02', 202504, '00:00:09', 'Week 1', '', '', 'Han', '0821 8607 5115', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, '2025-04-02', 202504, '00:00:09', 'Week 1', '', '', 'Iman', '0878 6479 8772', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, '2025-04-02', 202504, '00:00:10', 'Week 1', '', '', 'Insantri', '0878 1555 0338', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, '2025-04-02', 202504, '00:00:10', 'Week 1', '', '', 'M. Iman Eko Sambodo', '0821 1558 8528', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, '2025-04-02', 202504, '00:00:11', 'Week 1', '', '', 'fajarriansyah', '0857 2324 0050', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, '2025-04-02', 202504, '00:00:13', 'Week 1', '', 'Karawaci', 'Marsino', '0822 9191 0075', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, '2025-04-02', 202504, '00:00:13', 'Week 1', '', 'Bandung', 'B Shop', '0821 1886 3369', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, '2025-04-02', 202504, '00:00:13', 'Week 1', '', 'Purwodadi', 'Bagas', '0813 3969 0452', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, '2025-04-02', 202504, '00:00:15', 'Week 1', '', 'Cimahi', 'Andriymilito', '0812 1268 4455', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, '2025-04-02', 202504, '00:00:16', 'Week 1', '', 'Denpasar', 'Wulandari', '0857 7004 2908', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'direminder sudah service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, '2025-04-02', 202504, '00:00:18', 'Week 1', '', '', 'Rizky Syarifudin', '0812 9635 8762', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, '2025-04-02', 202504, '00:00:18', 'Week 1', '', 'Korpri, Lampung', 'Ari', '0822 7936 2204', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'direminder tgl 8,16 tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, '2025-04-02', 202504, '00:00:20', 'Week 1', '', '', 'Azis', '0895 3288 03841', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, '2025-04-02', 202504, '00:00:21', 'Week 1', '', '', 'Fathurachman', '0859 1068 77406', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, '2025-04-02', 202504, '00:00:22', 'Week 1', '', '', 'Rifki Andriansyah', '0898 8003 340', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, '2025-04-02', 202504, '00:00:22', 'Week 1', '', '', 'Masya', '0813 9885 8013', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, '2025-04-03', 202504, '00:00:04', 'Week 1', '', '', 'Taufik', '0896 7150 4866', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, '2025-04-03', 202504, '00:00:04', 'Week 1', '', '', 'Irman', '0878 2052 0576', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, '2025-04-03', 202504, '00:00:06', 'Week 1', '', 'Karawang', 'Hafidz', '0852 1248 9377', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Diluar Jangkauan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, '2025-04-03', 202504, '00:00:10', 'Week 1', '', 'Grogol  Petamburan', 'Mr.X', '0823 2517 7778', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanti dikabarin kalau mau ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, '2025-04-03', 202504, '00:00:12', 'Week 1', '', '', 'iis Ernawati', '0896 3942 9500', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, '2025-04-03', 202504, '00:00:12', 'Week 1', '', 'Samarinda', 'Aini', '0813 2852 1634', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Diluar Jangkauan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, '2025-04-03', 202504, '00:00:13', 'Week 1', '', '', 'Mochamad Ulul Azmi', '0812 8580 2247', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, '2025-04-03', 202504, '00:00:17', 'Week 1', '', 'Jember', 'Ragiil', '0856 0404 3632', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, '2025-04-03', 202504, '00:00:20', 'Week 1', '', '', 'Kiki Gouw', '0877 8383 3008', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, '2025-04-03', 202504, '00:00:20', 'Week 1', '', '', 'Za', '0895 7058 92090', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, '2025-04-03', 202504, '00:00:20', 'Week 1', '', '', 'Rio Kristian', '0856 1410 839', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, '2025-04-03', 202504, '00:00:23', 'Week 1', '', 'Cakung', 'Aan Handana', '0812 1994 4406', 'Instagram', '', 'Deal', 'Service 25/04/2025', '', 350000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, '2025-04-04', 202504, '00:00:00', 'Week 1', '', '', 'Joe', '0857 1919 6712', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, '2025-04-04', 202504, '00:00:08', 'Week 1', '', '', 'Okandbucu', '0813 5306 0006', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, '2025-04-04', 202504, '00:00:10', 'Week 1', '', 'Cijantung', 'Boedy Rental', '0822 1309 9050', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, '2025-04-04', 202504, '00:00:10', 'Week 1', '', '', 'Budi', '0858 5001 6995', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, '2025-04-04', 202504, '00:00:09', 'Week 1', '', 'Bogor', 'Anto', '0896 1459 1490', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, '2025-04-04', 202504, '00:00:13', 'Week 1', '', '', 'mu', '0812 1000 5414', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, '2025-04-04', 202504, '00:00:14', 'Week 1', '', '', 'Fajar Prasetyo', '0817 0821 676', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, '2025-04-04', 202504, '00:00:15', 'Week 1', '', 'Indramayu', 'Yudo', '0812 2121 9981', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, '2025-04-04', 202504, '00:00:14', 'Week 1', '', '', 'Lexy', '0851 7432 6653', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, '2025-04-04', 202504, '00:00:19', 'Week 1', '', '', 'Ejoy', '0838 2543 3319', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, '2025-04-04', 202504, '00:00:18', 'Week 1', '', '', 'Terr', '0813 1407 7756', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tanya lokasi & Paket lalu tidak respon kembali', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, '2025-04-04', 202504, '00:00:21', 'Week 1', '', '', 'Unjang Pangestu', '0812 2806 0740', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, '2025-04-04', 202504, '00:00:21', 'Week 1', '', '', 'Syarif Hidayatullah', '0812 8619 2051', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, '2025-04-05', 202504, '00:00:00', 'Week 1', '', '', 'DM', '0812 7300 7946', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, '2025-04-05', 202504, '00:00:05', 'Week 1', '', '', '-', '0812 1000 4616', 'Instagram', '', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, '2025-04-05', 202504, '00:00:06', 'Week 1', '', 'jogja', 'Andy', '0838 6562 3600', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tanya Lokasi dijawab tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, '2025-04-05', 202504, '00:00:10', 'Week 1', '', 'Parung Bogor', 'Indra', '0851 6172 5214', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tanya lokasi & biaya storing (jauh katanya)', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, '2025-04-05', 202504, '00:00:09', 'Week 1', '', '', 'AD', '0898 5463 278', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, '2025-04-05', 202504, '00:00:11', 'Week 1', '', '', 'Daniel', '0857 1758 4244', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, '2025-04-05', 202504, '00:00:11', 'Week 1', '', '', 'RPM', '0812 1834 3362', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, '2025-04-05', 202504, '00:00:12', 'Week 1', '', '', 'Bambang', '0895 6123 66999', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, '2025-04-05', 202504, '00:00:11', 'Week 1', '', 'Jagakarsa Jaksel', 'HNI', '0817 0219 111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, '2025-04-05', 202504, '00:00:15', 'Week 1', '', '', 'Mr O', '0857 8003 9361', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, '2025-04-05', 202504, '00:00:17', 'Week 1', '', '', 'Harry', '0817 00198 680', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, '2025-04-05', 202504, '00:00:18', 'Week 1', '', '', 'Mzen', '0857 7149 3677', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, '2025-04-05', 202504, '00:00:18', 'Week 1', '', '', 'Hafidz', '0878 1514 3646', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, '2025-04-05', 202504, '00:00:18', 'Week 1', '', '', 'M. Hidayatullah', '0812 1438 8705', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, '2025-04-05', 202504, '00:00:18', 'Week 1', '', '', 'Andrie', '0858 1955 8619', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, '2025-04-05', 202504, '00:00:20', 'Week 1', '', '', 'Dicky', '0813 1708 7740', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, '2025-04-05', 202504, '00:00:20', 'Week 1', '', '', 'Yoyok', '0858 9293 0165', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, '2025-04-05', 202504, '00:00:21', 'Week 1', '', 'Bekasi', 'Amin', '0821 3666 2227', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, '2025-04-06', 202504, '00:00:00', 'Week 2', '', 'Pluit Jakut', 'Nick', '0878 8270 7877', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, '2025-04-06', 202504, '00:00:09', 'Week 2', '', '', 'Burhanafani', '0878 8417 4127', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, '2025-04-06', 202504, '00:00:10', 'Week 2', '', '', '.', '0821 3376 7607', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, '2025-04-06', 202504, '00:00:10', 'Week 2', '', '', 'Paull', '0895 4129 29275', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, '2025-04-06', 202504, '00:00:10', 'Week 2', '', 'Bandar Lampung', 'Ni Gandi', '0852 6935 3383', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, '2025-04-06', 202504, '00:00:13', 'Week 2', '', '', 'Faisal', '0857 7275 7003', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, '2025-04-06', 202504, '00:00:12', 'Week 2', '', 'Bekasi', 'Rama', '0813 1765 0652', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tanya jasa home service lalu tdk respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, '2025-04-06', 202504, '00:00:14', 'Week 2', '', '', 'La Ode R', '0821 5803 9065', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, '2025-04-06', 202504, '00:00:15', 'Week 2', '', 'Lampung', 'Joni', '0896 3886 6111', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, '2025-04-06', 202504, '00:00:17', 'Week 2', '', '', 'Ari Ramdani', '0851 7533 2302', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, '2025-04-06', 202504, '00:00:16', 'Week 2', '', '', 'Oliver', '0857 6823 1129', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, '2025-04-06', 202504, '00:00:00', 'Week 2', '', 'Tangerang', 'Agus', '0877 8648 1395', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'harga tidak masuk', 'KIA Carnival 2001', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, '2025-04-07', 202504, '00:00:08', 'Week 2', '', 'Serang', 'A. Wibowo', '0811 121 656', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, '2025-04-07', 202504, '00:00:07', 'Week 2', '', '', 'Heinze', '0838 7726 5782', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'masih dalam pertimbangan cari pembanding', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, '2025-04-07', 202504, '00:00:08', 'Week 2', '', '', 'Aep Berno Lemos', '0812 9239 1655', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim format tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, '2025-04-07', 202504, '00:00:09', 'Week 2', '', '', 'Narazain Raffasya Ramdhon', '0822 9976 2800', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, '2025-04-07', 202504, '00:00:10', 'Week 2', '', '', 'Syariefnur', '0853 1251 6036', '-', 'Direct Chat', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, '2025-04-07', 202504, '00:00:10', 'Week 2', '', 'Penjaringan Jakut', 'AN', '0817 7996 6645', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Masih perlu tapi sedang diluar kota', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, '2025-04-07', 202504, '00:00:12', 'Week 2', '', 'Semarang', 'dhe top', '0812 7537 1262', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, '2025-04-07', 202504, '00:00:12', 'Week 2', '', 'Lampung', 'rfg', '0838 2453 3050', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak ada respon saat di FU', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, '2025-04-07', 202504, '00:00:08', 'Week 2', '', 'Cimanggis', 'nasrilnatsir', '0813 1494 9592', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada respon untuk penjadwalan setelah lebaran', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, '2025-04-07', 202504, '00:00:13', 'Week 2', '', '', 'Jemmi', '0812 9641 7462', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, '2025-04-07', 202504, '00:00:14', 'Week 2', '', 'Bekasi Utara', 'Abee Surya', '0857 7805 2000', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, '2025-04-07', 202504, '00:00:16', 'Week 2', '', '', 'Eko', '0852 7906 6077', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(856, '2025-04-07', 202504, '00:00:18', 'Week 2', '', '', 'Yudhistira Tasli', '0822 1020 1531', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, '2025-04-07', 202504, '00:00:20', 'Week 2', '', '', 'Rudi', '0813 8361 0106', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim video tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, '2025-04-07', 202504, '00:00:20', 'Week 2', '', '', 'Ghifari Yudha', '0897 5997 599', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, '2025-04-07', 202504, '00:00:22', 'Week 2', '', '', 'JST', '0817 0998 630', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, '2025-04-07', 202504, '00:00:23', 'Week 2', '', '', 'FRY', '0812 1011 178', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, '2025-04-07', 202504, '00:00:08', 'Week 2', '', 'Serang', 'A. Wibowo', '0811 121 656', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, '2025-04-07', 202504, '00:00:23', 'Week 2', '', '', 'Topi Jerami', '0815 1122 6669', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, '2025-04-08', 202504, '00:00:07', 'Week 2', '', '', 'Adam', '0821 1421 2719', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, '2025-04-08', 202504, '00:00:14', 'Week 2', '', '', 'Adam', '0899 6800 239', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, '2025-04-08', 202504, '00:00:10', 'Week 2', '', '', 'Syifa Thamrin (MCS)', '0856 9647 2629', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak Jadi Sudah Panggil mekanik ', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, '2025-04-08', 202504, '00:00:12', 'Week 2', '', '', 'Yoga', '0896 3052 5032', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, '2025-04-08', 202504, '00:00:13', 'Week 2', '', '', 'Jaes A', '0878 1000 0744', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'harga diluar perkiraan', 'Livina 2006', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, '2025-04-08', 202504, '00:00:13', 'Week 2', '', 'Parung Bogor', 'Rizky', '0857 1024 2097', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dijawab tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, '2025-04-08', 202504, '00:00:14', 'Week 2', '', 'Palembang', 'Yusfa', '0877 1378 2167', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, '2025-04-08', 202504, '00:00:15', 'Week 2', '', '', 'Icaloman', '0856 7177 010', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(871, '2025-04-08', 202504, '00:00:17', 'Week 2', '', 'Cikarang', 'Munjil', '0821 2572 0928', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah di reminder tapi tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, '2025-04-08', 202504, '00:00:19', 'Week 2', '', '', 'Bharra Saputra', '0857 1255 3437', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, '2025-04-08', 202504, '00:00:17', 'Week 2', '', 'Ciputat', 'Latif amsali', '0896 9459 2408', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, '2025-04-08', 202504, '00:00:13', 'Week 2', '', '', 'Ocnop', '0856 9044 557', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak merespon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, '2025-04-08', 202504, '00:00:19', 'Week 2', '', '', 'May', '0895 6005 99966', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, '2025-04-09', 202504, '00:00:06', 'Week 2', '', '', 'Hamzah Fauzi', '0852 2054 4426', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, '2025-04-09', 202504, '00:00:07', 'Week 2', '', '', 'Arifin', '0813 1041 1523', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, '2025-04-09', 202504, '00:00:08', 'Week 2', '', '', 'Davin Aprilianto', '0811 1074 920', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, '2025-04-09', 202504, '00:00:08', 'Week 2', '', '', 'Ba', '0823 1800 0320', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'kalau mau service nanti dikabarin', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, '2025-04-09', 202504, '00:00:18', 'Week 2', 'Repair & Home Service', 'Karawang', 'Yanto', '0898 1398 170', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak terjangkau', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, '2025-04-09', 202504, '00:00:11', 'Week 2', '', 'Sepatan, Tangerang', 'Fino', '0851 4206 9691', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'mau ke bengkel tapi jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, '2025-04-09', 202504, '00:00:13', 'Week 2', '', '', 'James Gultom', '0813 4296 6383', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya lokasi, udah diinfo tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, '2025-04-09', 202504, '00:00:16', 'Week 2', '', '', 'Wiliam Siahaan', '0815 1620 692', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, '2025-04-09', 202504, '00:00:17', 'Week 2', '', 'Bandar Lampung', 'Andra', '0852 0881 8090', '-', 'Direct Chat', 'No Deal', 'tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, '2025-04-09', 202504, '00:00:19', 'Week 2', '', '', 'Ali', '0878 7795 8040', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, '2025-04-09', 202504, '00:00:20', 'Week 2', '', 'Pekayon', 'Joe', '0817 250 382', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, '2025-04-09', 202504, '00:00:23', 'Week 2', '', '', 'Roy R M', '0898 2556 694', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, '2025-04-09', 202504, '00:00:22', 'Week 2', '', 'Taman Mini', 'Om Cancheap', '0813 8578 8878', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Belum nemu waktu yang pas', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, '2025-04-10', 202504, '00:00:00', 'Week 2', '', '', 'Firman', '0857 1937 3056', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, '2025-04-10', 202504, '00:00:07', 'Week 2', '', '', 'Randi rahardjas', '0821 1161 4634', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, '2025-04-10', 202504, '00:00:06', 'Week 2', '', '', 'Wisnu', '0813 8846 6994', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, '2025-04-10', 202504, '00:00:06', 'Week 2', '', 'Cipondoh Tangerang', 'Iwan', '0816 1109 957', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tanya biaya stooring, nanti dikabari lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, '2025-04-10', 202504, '00:00:10', 'Week 2', '', 'Palembang', 'M Zafran', '0896 5068 0411', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanti diinfokan lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, '2025-04-10', 202504, '00:00:13', 'Week 2', '', 'Jakarta Pusat', 'Syafril', '0812 1202 7988', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, '2025-04-10', 202504, '00:00:13', 'Week 2', '', 'Joglo Jakarta Barat', 'Raynskin', '0817 733 222', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikasih info biaya storing tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, '2025-04-10', 202504, '00:00:13', 'Week 2', '', 'Petukangan', 'Bang Must', '0812 8216 902', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak respon karena jauh', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, '2025-04-10', 202504, '00:00:14', 'Week 2', '', 'Pondok Indah', 'Riky', '0852 1303 7887', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'biaya stooring 150, ok nanti diinfo', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, '2025-04-10', 202504, '00:00:16', 'Week 2', '', '', 'Saso', '0896 7646 0786', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, '2025-04-10', 202504, '00:00:17', 'Week 2', '', '', 'PT Coway', '0812 2478 5160', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, '2025-04-10', 202504, '00:00:17', 'Week 2', '', 'Pondok Gede', 'Budhy', '0897 8813 710', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'masih minat, nyari jadwal libur', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, '2025-04-11', 202504, '00:00:00', 'Week 2', '', '', 'Business', '0899 8009 906', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, '2025-04-11', 202504, '00:00:07', 'Week 2', '', 'Pasteur Bandung', 'Laundry Here', '0821 2620 4003', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, '2025-04-11', 202504, '00:00:07', 'Week 2', '', '', 'Dimas Aji Pradana', '0812 7378 6436', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, '2025-04-11', 202504, '00:00:12', 'Week 2', '', 'Cileungsi', 'Prote Cobra', '0897 9984 044', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'sudah isi form lalu tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, '2025-04-11', 202504, '00:00:08', 'Week 2', '', '', 'Juwan', '0899 4772 942', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, '2025-04-11', 202504, '00:00:12', 'Week 2', '', '', 'Ishak', '0811 4111 143', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, '2025-04-11', 202504, '00:00:06', 'Week 2', '', '', 'Jumadi, S. Kom, M.SI', '0852 6460 5321', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak jadi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, '2025-04-11', 202504, '00:00:17', 'Week 2', '', 'Cigombong', 'Dede', '0852 1506 1765', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikasih info biaya storing tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, '2025-04-11', 202504, '00:00:19', 'Week 2', '', 'Rancamanyar, Bandung', 'Fachri', '0813 2418 0908', 'Iklan Meta Facebook', 'Meta Ads Facebook', '', 'Oper Tim Bandung', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, '2025-04-11', 202504, '00:00:19', 'Week 2', '', 'Bandung', 'Cau Seken', '0812 2300 6014', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Rencana nanti ke bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, '2025-04-11', 202504, '00:00:19', 'Week 2', '', 'Bandung', 'Putra', '0823 3883 4820', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Minta sharelock dan tidak respon lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, '2025-04-11', 202504, '00:00:08', 'Week 2', '', 'Cianjur', 'Edi Sutardi', '0877 8458 2919', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Minta sharelock dan tidak respon lagi', 'sedan Twincam / D 1713 YTJ', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, '2025-04-12', 202504, '00:00:00', 'Week 2', '', '', 'Edi Sutardi', '0852 2299 7928', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, '2025-04-12', 202504, '00:00:07', 'Week 2', '', 'Depok', 'Bowo', '0812 9480 7761', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tanya-tanya paket', 'Corona Absolute ', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, '2025-04-12', 202504, '00:00:05', 'Week 2', '', 'Harjamukti Cibubur', 'M Romadony', '0852 1600 0123', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanti dikabari lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, '2025-04-12', 202504, '00:00:12', 'Week 2', '', 'Medan', 'Arif Padillah', '0823 6071 9138', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak ada cabang di Medan', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, '2025-04-12', 202504, '00:00:12', 'Week 2', '', '', 'M4dse', '0838 7050 9098', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, '2025-04-12', 202504, '00:00:12', 'Week 2', '', '', 'Ayah Ilham', '0822 1319 9119', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, '2025-04-12', 202504, '00:00:14', 'Week 2', '', 'Pasar Minggu', 'Tommy', '0819 0503 2210', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Rencana gurah awal bulan', 'Terios AT 2011', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, '2025-04-12', 202504, '00:00:16', 'Week 2', '', '', 'Guss Hajj', '0895 1514 8896', '-', 'Direct Chat', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, '2025-04-12', 202504, '00:00:17', 'Week 2', '', '', 'Krisan Diamas', '0851 0165 0010', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, '2025-04-12', 202504, '00:00:17', 'Week 2', '', 'Bogor', 'Boy Normansyah', '0896 1499 0035', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak respon saat ditanya tanggal', 'Sigra', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, '2025-04-12', 202504, '00:00:19', 'Week 2', '', '', 'Akbar', '0878 1750 9997', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, '2025-04-12', 202504, '00:00:19', 'Week 2', '', '', 'Billie', '0813 1170 8876', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, '2025-04-12', 202504, '00:00:21', 'Week 2', '', '', 'BigBeken', '0831 9766 2209', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, '2025-04-12', 202504, '00:00:23', 'Week 2', '', '', 'Flying Dutchman', '0856 0711 4255', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak ada cabang di Semarang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, '2025-04-13', 202504, '00:00:11', 'Week 3', '', '', 'Sudaryo', '0899 1465 407', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, '2025-04-13', 202504, '00:00:12', 'Week 3', '', '', 'HN', '0896 5050 5954', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, '2025-04-13', 202504, '00:00:18', 'Week 3', '', '', 'Ade', '0899 6607 552', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, '2025-04-13', 202504, '00:00:19', 'Week 3', '', '', 'Imanuel', '0812 9371 4596', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, '2025-04-13', 202504, '00:00:20', 'Week 3', '', '', 'Stefanus Yoke W', '0819 1057 7799', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, '2025-04-13', 202504, '00:00:19', 'Week 3', '', 'Ciputat', 'Luxx', '0877 8036 9407', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tanya-tanya paket', 'Terios 2013', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, '2025-04-13', 202504, '00:00:11', 'Week 3', '', '', 'Redi', '0811 8162 484', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Nanti dihubungi kembali', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, '2025-04-14', 202504, '00:00:07', 'Week 3', '', 'Bandung', 'Dipatikarna', '0817 0790 019', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya minta Lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, '2025-04-14', 202504, '00:00:09', 'Week 3', '', '', 'Arief Sinambela', '0838 7781 836', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, '2025-04-14', 202504, '00:00:09', 'Week 3', '', 'Depok', 'Puchavin', '0852 3043 1072', '-', 'Direct Chat', 'No Deal', 'hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, '2025-04-14', 202504, '00:00:12', 'Week 3', '', '', 'Yudieko', '0857 1519 6282', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, '2025-04-14', 202504, '00:00:12', 'Week 3', '', 'Bandung', 'Ermin Jauharsyim', '0813 9481 9688', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, '2025-04-14', 202504, '00:00:12', 'Week 3', '', '', 'Anonim', '0815 4810 7532', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, '2025-04-14', 202504, '00:00:19', 'Week 3', '', 'Palembang', 'Tommy Wijaya', '0851 8335 5657', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, '2025-04-14', 202504, '00:00:21', 'Week 3', '', '', 'Agung Bril', '0857 7340 6474', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, '2025-04-14', 202504, '00:00:22', 'Week 3', '', '', 'Onie', '0857 1709 1474', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, '2025-04-14', 202504, '00:00:23', 'Week 3', '', '', 'Hendra Hendarin', '0822 9828 1708', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'ditanya lokasi tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, '2025-04-14', 202504, '00:00:23', 'Week 3', '', '', 'Fauzan', '0896 3912 6202', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya paket', 'Xenia R 2016', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, '2025-04-15', 202504, '00:00:05', 'Week 3', '', '', 'Supriyadi', '0895 6145 31827', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, '2025-04-15', 202504, '00:00:07', 'Week 3', '', '', 'M. Razif Rangkuti', '0813 1573 2242', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, '2025-04-15', 202504, '00:00:11', 'Week 3', '', '', 'Rio Adrianus', '0812 8600 2112', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, '2025-04-15', 202504, '00:00:13', 'Week 3', '', '', 'Aristonovidi', '0895 3430 75443', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, '2025-04-15', 202504, '00:00:15', 'Week 3', '', 'Bekasi Utara', 'Anonim', '0813 8524 0556', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, '2025-04-15', 202504, '00:00:05', 'Week 3', '', 'Bandung', 'Hario AF', '0813 2662 5353', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Oper tim Bandung', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, '2025-04-15', 202504, '00:00:05', 'Week 3', '', '', 'Abah Zano', '0812 9515 0900', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, '2025-04-15', 202504, '00:00:06', 'Week 3', '', '', 'Wibowo', '0811 1512 238', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, '2025-04-15', 202504, '00:00:07', 'Week 3', '', 'Pamulang', 'Expora Nusantara Official', '0896 9613 1382', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Atur jadwal dulu', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, '2025-04-16', 202504, '00:00:09', 'Week 3', '', 'Serpong', 'Ahmad Zainudin', '0812 9050 6546', 'Iklan Meta Facebook', 'Meta Ads Facebook', '', 'tanya-tanya harga', 'Ayla', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, '2025-04-16', 202504, '00:00:09', 'Week 3', '', '', 'DA', '0858 4848 0355', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, '2025-04-16', 202504, '00:00:12', 'Week 3', '', '', 'Albian Travel', '0831 6116 3741', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, '2025-04-16', 202504, '00:00:15', 'Week 3', '', '', 'Anonim', '0812 1122 9896', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, '2025-04-16', 202504, '00:00:14', 'Week 3', '', 'Denpasar', 'Gung Partha', '0815 5815 4611', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Oper Team Bali', 'Fortuner ', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, '2025-04-16', 202504, '00:00:16', 'Week 3', '', '', 'Akbar Marf', '0822 6240 3449', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, '2025-04-16', 202504, '00:00:17', 'Week 3', '', '', 'Hurum', '0813 8979 8626', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'ditanya lokasi tidak direspon', 'Honda City', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, '2025-04-16', 202504, '00:00:20', 'Week 3', '', '', 'Arief ', '0813 8756 0007', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya harga', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, '2025-04-16', 202504, '00:00:20', 'Week 3', '', 'Tangerang', 'Dude Sholeh', '0813 8756 0007', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya harga', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, '2025-04-16', 202504, '00:00:21', 'Week 3', '', '', 'Anonim', '0813 1515 9991', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, '2025-04-16', 202504, '00:00:21', 'Week 3', '', 'Ciledug', 'PR ', '0812 9207 6060', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service 19/04', 'B 1496 ZME / \nNissan Serena', 385000, 'gurah mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, '2025-04-16', 202504, '00:00:09', 'Week 3', '', 'Bandung', 'Hendra', '0812 2032 6219', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Next service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, '2025-04-17', 202504, '00:00:07', 'Week 3', '', '', 'Henkiy Bin Satomi', '0821 3830 0460', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', '1', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, '2025-04-17', 202504, '00:00:05', 'Week 3', '', 'Margonda, Depok', 'Eka Fafaza', '0812 2867 2299', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya harga', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, '2025-04-17', 202504, '00:00:09', 'Week 3', '', '', 'Dhani', '0857 1788 8617', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, '2025-04-17', 202504, '00:00:09', 'Week 3', '', 'Jakarta Utara', 'Ardian Indo Firmansyah', '0857 0399 8740', '-', 'Direct Chat', 'No Deal', 'Belum kirim foto baret', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, '2025-04-17', 202504, '00:00:20', 'Week 3', '', '', 'Yudo Ali Tsaqib', '0812 8445 9359', 'Instagram', '', 'No Deal', 'hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, '2025-04-18', 202504, '00:00:12', 'Week 3', '', '', 'Sandi Yuhanda', '0811 905 786', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, '2025-04-18', 202504, '00:00:07', 'Week 3', '', 'Halim Jakarta Timur', 'Darma', '0889 1529 994', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'hanya tanya soal gurah', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, '2025-04-18', 202504, '00:00:14', 'Week 3', '', 'Depok', 'Corry Hamdani', '0812 3023 1144', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Tidak direspon kembali', 'Camry', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, '2025-04-18', 202504, '00:00:18', 'Week 3', '', '', 'Ady', '0811 1362 733', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, '2025-04-18', 202504, '00:00:05', 'Week 3', '', '', 'Doddy', '0812 9889 0562', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, '2025-04-19', 202504, '00:00:15', 'Week 3', '', '', 'Fajar', '0896 0199 8970', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, '2025-04-19', 202504, '00:00:21', 'Week 3', '', '', 'Yudith', '0895 3601 39090', 'Instagram', '', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, '2025-04-20', 202504, '00:00:13', 'Week 4', '', '', 'Prasetian', '0851 5645 7964', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, '2025-04-20', 202504, '00:00:18', 'Week 4', '', '', 'Thrifting Joker', '0851 7115 1332', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, '2025-04-20', 202504, '00:00:19', 'Week 4', '', '', 'Anonim', '0823 9246 5005', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, '2025-04-21', 202504, '00:00:10', 'Week 4', '', 'Slipi', 'Anastasia', '0851 5645 5767', 'Instagram', '', 'No Deal', 'tanya-tanya service', 'Brio', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, '2025-04-21', 202504, '00:00:12', 'Week 4', '', '', 'Yokoyoyon', '0812 1094 3087', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, '2025-04-21', 202504, '00:00:20', 'Week 4', '', '', 'Siomay Batagor BuRayu', '0857 1921 2757', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, '2025-04-21', 202504, '00:00:20', 'Week 4', '', '', 'Kang Asep', '0877 7633 7510', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', 'Avanza Veloz', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, '2025-04-21', 202504, '00:00:20', 'Week 4', '', '', 'Oktihenry', '0857 1550 7040', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, '2025-04-21', 202504, '00:00:21', 'Week 4', '', '', 'Sarwo Edi Sumat', '0812 2888 8084', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, '2025-04-21', 202504, '00:00:14', 'Week 4', '', 'Kelapa dua Depok', 'Luki Herdian', '0812 8513 5180', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Bertanya dulu', 'Calya', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, '2025-04-22', 202504, '00:00:10', 'Week 4', '', '', 'Fajar', '0853 1930 9695', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, '2025-04-22', 202504, '00:00:04', 'Week 4', '', 'Jatibaru, tanah abang', 'Agus Sembodo', '0858 8170 2052', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Rencana bulan mei ke workshop', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, '2025-04-22', 202504, '00:00:11', 'Week 4', '', 'Cengkareng', 'Gie', '0811 9831 888', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'Deal', 'Service 30/04/2025', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, '2025-04-23', 202504, '00:00:00', 'Week 4', '', 'Cileungsi', 'Fahri', '0857 7768 5019', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya tanya alamat', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, '2025-04-23', 202504, '00:00:07', 'Week 4', '', '', 'Johna Kim', '0857 1108 0255', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, '2025-04-23', 202504, '00:00:05', 'Week 4', '', '', 'Muhammad Amri Samosir', '0878 7264 6222', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, '2025-04-23', 202504, '00:00:16', 'Week 4', '', 'Gunung Putri', 'Radi', '0878 7408 8709', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, '2025-04-23', 202504, '00:00:19', 'Week 4', '', '', 'Rama', '0821 2119 2738', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, '2025-04-24', 202504, '00:00:04', 'Week 4', '', '', 'Anonim', '0838 7122 3811', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, '2025-04-24', 202504, '00:00:09', 'Week 4', '', '', 'Samuel', '0882 9383 0474', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, '2025-04-24', 202504, '00:00:16', 'Week 4', '', '', 'Anonim', '0877 8565 0176', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, '2025-04-24', 202504, '00:00:19', 'Week 4', '', 'Koang Jaya Tangerang', 'Henri', '0898 4561 811', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', 'Odyssey RA6', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, '2025-04-24', 202504, '00:00:20', 'Week 4', '', '', 'Ferdaus', '0877 1718 3110', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, '2025-04-24', 202504, '00:00:15', 'Week 4', '', 'Surabaya', 'Fadly Ardiansyah', '0821 3214 4272', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Diinfo alamat cabang tidak respon', 'Hyundai ', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1002, '2025-04-24', 202504, '00:00:17', 'Week 4', '', '', 'Ijarthok', '0813 1050 0849', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1003, '2025-04-24', 202504, '00:00:14', 'Week 4', '', 'Sentul, Bogor', 'Lukas Sidarto', '0812 1811 9580', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya paket', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1004, '2025-04-24', 202504, '00:00:00', 'Week 4', '', 'BojongGede', 'Fian', '0856 7225 585', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', 'Wuling Conferro', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1005, '2025-04-24', 202504, '00:00:20', 'Week 4', '', 'Mampang prapatan', 'Muh Suryolgwo', '0858 9365 5636', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1006, '2025-04-25', 202504, '00:00:00', 'Week 4', '', '', 'Anonim', '0878 4312 5020', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, '2025-04-25', 202504, '00:00:05', 'Week 4', '', '', 'Solihin', '0878 2476 1562', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, '2025-04-25', 202504, '00:00:00', 'Week 4', '', '', 'Elly', '0859 6048 5986', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, '2025-04-25', 202504, '00:00:07', 'Week 4', '', 'Bojongsoang', 'Allon', '0813 2242 0572', '-', 'Direct Chat', 'No Deal', 'Nanti dihubungi kembali kalau mau service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, '2025-04-25', 202504, '00:00:00', 'Week 4', '', 'Cilegon', 'Ipung', '0878 4666 8609', 'Iklan Meta Facebook', 'Meta Ads Facebook', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, '2025-04-25', 202504, '00:00:09', 'Week 4', '', 'Tambun', 'Anugrah Putra', '0812 8790 8955', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Jauh, Keberatan dgn transport', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, '2025-04-25', 202504, '00:00:09', 'Week 4', '', 'Ujung Berung', 'Ghiyats', '0896 9810 6342', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'Tidak merespon di tanyakan jadwal', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, '2025-04-25', 202504, '00:00:09', 'Week 4', '', 'Yogyakarta', 'Geprek', '0813 2290 3096', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Hanya tanya lokaso', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, '2025-04-25', 202504, '00:00:10', 'Week 4', '', 'Prambanan, Jogja', 'Basir Khan', '0856 4225 6666', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'oper team jateng', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, '2025-04-25', 202504, '00:00:11', 'Week 4', '', 'Jakarta Barat', 'Ardy Alamsyah', '0895 3320 39992', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, '2025-04-25', 202504, '00:00:16', 'Week 4', '', 'Tangerang', 'Galau Berat', '0877 5678 4156', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, '2025-04-25', 202504, '00:00:22', 'Week 4', '', 'Pekanbaru, Riau', 'Rija Eka Putra', '0811 751 911', 'Instagram', 'Instagram', 'No Deal', 'Sudah dihubungi team, no respon', 'Xenia', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, '2025-04-25', 202504, '00:00:17', 'Week 4', '', '', 'G4WM', '0811 1717 871', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Ditanya lokasi tidak jawab', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, '2025-04-25', 202504, '00:00:20', 'Week 4', '', '', 'Anonim', '0815 8552 7112', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, '2025-04-25', 202504, '00:00:13', 'Week 4', '', 'Pedan Klaten, Jateng', 'Jiman', '0895 4159 44344', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'Sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, '2025-04-26', 202504, '00:00:09', 'Week 4', '', '', 'Alhamdulillah', '0813 6767 1727', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, '2025-04-26', 202504, '00:00:08', 'Week 4', '', '', 'Brigs Ruri Handoko', '0852 1785 4108', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, '2025-04-26', 202504, '00:00:15', 'Week 4', '', 'bekasi', 'Iki M Nagari ', '0821 1360 1199', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'kejauhan tidak respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, '2025-04-26', 202504, '00:00:15', 'Week 4', '', '', 'Satria', '0895 6323 51003', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, '2025-04-26', 202504, '00:00:16', 'Week 4', '', '', 'Hery', '0851 5507 3177', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, '2025-04-26', 202504, '00:00:17', 'Week 4', '', '', 'Rello', '0877 7582 7676', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'hanya tanya lokasi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, '2025-04-26', 202504, '00:00:17', 'Week 4', '', 'Pondok Aren, Tangerang', 'Yudi Trisandi', '0858 8518 8538', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', 'Terios 203', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, '2025-04-26', 202504, '00:00:12', 'Week 4', '', '', 'Rian Agtio', '0812 7949 3718', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, '2025-04-26', 202504, '00:00:18', 'Week 4', '', '', 'Imat Rohimat', '0852 9482 9055', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, '2025-04-26', 202504, '00:00:21', 'Week 4', '', '', 'Sugeng R', '0822 6111 3903', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, '2025-04-26', 202504, '00:00:23', 'Week 4', '', '', 'Nova', '0851 5805 1194', 'Instagram', 'Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, '2025-04-26', 202504, '00:00:23', 'Week 4', '', '', 'Aye', '0822 5897 8430', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, '2025-04-26', 202504, '00:00:10', 'Week 4', '', 'setiabudi, jaksel', 'Andi', '0852 1988 2720', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'keberatan dengan transport', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, '2025-04-26', 202504, '00:00:23', 'Week 4', '', 'Perumahan TWI Cibitung', 'Adnan', '0813 9994 3088', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, '2025-04-26', 202504, '00:00:00', 'Week 4', '', 'Sidoarjo', 'Tiara', '0815 5324 7471', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'hanya tanya lokasi bengkel', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, '2025-04-27', 202504, '00:00:22', 'Week 5', '', 'Koang Jaya, Tangerang', 'Henri', '0822 9806 7893', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', 'Service 30/04/2025', '', 650000, 'Gurah Mesin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, '2025-04-27', 202504, '00:00:04', 'Week 5', '', '', 'Andi', '0812 2829 9141', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, '2025-04-27', 202504, '00:00:08', 'Week 5', '', '', 'Anonim', '0819 4418 0847', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, '2025-04-27', 202504, '00:00:08', 'Week 5', '', 'Jayasampurna, serang', 'Taufik Kurniawan', '0857 2563 9725', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'sudah dihubungi team, no respon', 'Xenia 2016', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, '2025-04-27', 202504, '00:00:05', 'Week 5', '', 'Bandung soeta', 'Arman Sutandris', '0895 0996 4547', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, '2025-04-27', 202504, '00:00:10', 'Week 5', '', '', 'Berylzecko', '0878 8088 7457', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, '2025-04-27', 202504, '00:00:10', 'Week 5', '', 'Pekanbaru', 'Simarmata', '0852 8018 7922', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, '2025-04-27', 202504, '00:00:15', 'Week 5', '', '', 'Arief Rifkianto', '0815 9638 913', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, '2025-04-27', 202504, '00:00:17', 'Week 5', '', '', 'Kyoshimato', '0857 1567 2705', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, '2025-04-27', 202504, '00:00:18', 'Week 5', '', '', 'Eskagunawan', '0815 7277 3423', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, '2025-04-27', 202504, '00:00:19', 'Week 5', '', 'Denpasar', 'Agus Jayadi', '0853 3377 4353', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, '2025-04-27', 202504, '00:00:21', 'Week 5', '', 'Kedurus', 'Dani', '0822 3103 2760', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, '2025-04-28', 202504, '00:00:05', 'Week 5', '', '', 'Pejuang Angsuran', '0857 5001 8733', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, '2025-04-28', 202504, '00:00:10', 'Week 5', '', 'Bekasi Utara', 'H. Dody', '0857 7779 3382', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', 'Xenia Maric ', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, '2025-04-28', 202504, '00:00:09', 'Week 5', '', 'Surabaya', 'Andi Saputra', '0819 9992 8585', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'terlalu jauh dari cabang', 'Agya 2020', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, '2025-04-28', 202504, '00:00:12', 'Week 5', '', 'Kelapa dua depok', 'B', '0851 5654 0734', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team', 'sigra', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1052, '2025-04-28', 202504, '00:00:18', 'Week 5', '', 'Surabaya', 'Moch Ichsan', '0818 528 562', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1053, '2025-04-28', 202504, '00:00:21', 'Week 5', '', '', 'Ainul Rofik', '0878 5386 1105', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1054, '2025-04-28', 202504, '00:00:21', 'Week 5', '', '', 'Anonim', '0819 0513 6369', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikirim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1055, '2025-04-28', 202504, '00:00:20', 'Week 5', '', 'Karawang', 'Anonim', '0852 8515 4760', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'jauh dari cabang', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1056, '2025-04-28', 202504, '00:00:18', 'Week 5', '', 'Palembang, jakabring', 'Abimanyu', '0896 9945 9482', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', 'Daihatsu Charade', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1057, '2025-04-28', 202504, '00:00:21', 'Week 5', '', 'Depok', 'Anonim', '0812 1057 5346', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'nanti dihubungi kembali', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1058, '2025-04-29', 202504, '00:00:03', 'Week 5', '', 'Jurumudi, Banten', 'Ferry', '0821 2383 3935', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', 'Ertiga', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1059, '2025-04-29', 202504, '00:00:04', 'Week 5', '', 'Jatiwarna', 'Hendro Warsono', '0899 5557 635', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1060, '2025-04-29', 202504, '00:00:08', 'Week 5', '', 'Waru Sidoarjo', 'Irsyad', '0856 0723 4806', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1061, '2025-04-29', 202504, '00:00:16', 'Week 5', '', 'Setu, bekasi', 'Evan', '0899 0828 677', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1062, '2025-04-29', 202504, '00:00:20', 'Week 5', '', '', 'Anonim', '0812 4917 969', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063, '2025-04-29', 202504, '00:00:21', 'Week 5', '', '', 'Bagus', '0819 2914 1873', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_faq` (`id`, `tgl_input`, `periode`, `jam`, `week`, `unit`, `tujuan`, `nama_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `status_deal`, `alasan`, `type_nopol`, `harga_deal`, `jenis_pekerjaan`, `user`, `tgl_create`, `modif`) VALUES
(1064, '2025-04-29', 202504, '00:00:20', 'Week 5', '', '', 'Dade Suatmadi', '0812 8601 612', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1065, '2025-04-29', 202504, '00:00:20', 'Week 5', '', 'Ujungberung, bandung', 'M Jabbar Malik', '0822 1414 6000', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah dihubungi team, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1066, '2025-04-30', 202504, '00:00:05', 'Week 5', '', 'Depok', 'Ade Sudaryat', '0897 9457 091', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'tanya-tanya service', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1067, '2025-04-30', 202504, '00:00:07', 'Week 5', '', '', 'Dzakki Asla Muyassar', '0859 5161 2121', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1068, '2025-04-30', 202504, '00:00:00', 'Week 5', '', '', 'Abeng', '0878 7682 3019', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1069, '2025-04-30', 202504, '00:00:09', 'Week 5', '', '', 'Jenazah', '0856 5555 5999', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1070, '2025-04-30', 202504, '00:00:07', 'Week 5', '', 'cikarang pusat, bekasi', 'Wahyu haidar', '0822 3266 2036', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'kendala di biaya transport', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1071, '2025-04-30', 202504, '00:00:14', 'Week 5', '', '', 'Budiyanto', '0813 1897 1845', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1072, '2025-04-30', 202504, '00:00:10', 'Week 5', '', 'Kedamean Gresik', 'Ricky', '0898 3569 901', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'oper team gresik', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1073, '2025-04-30', 202504, '00:00:14', 'Week 5', '', 'Palembang', 'Fadly', '0812 6659 0354', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'sudah dihubungi, no respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1074, '2025-04-30', 202504, '00:00:12', 'Week 5', '', 'Sading', 'Anonim', '0819 9927 9994', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'Deal', '45779', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1075, '2025-04-30', 202504, '00:00:17', 'Week 5', '', '', 'Akmal', '0813 6525 6323', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanya lokasi, tidak respon lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1076, '2025-04-30', 202504, '00:00:19', 'Week 5', '', '', 'Kusnadi', '0823 8397 7871', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1077, '2025-05-01', 202505, '00:00:10', 'Week 1', '', '', 'Bisvan', '0813 3409 1167', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1078, '2025-05-01', 202505, '00:00:10', 'Week 1', '', '', 'Yudiantoalex171', '0857 9041 8606', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1079, '2025-05-01', 202505, '00:00:09', 'Week 1', '', '', 'Andi Yani', '0881 0111 45338', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1080, '2025-05-01', 202505, '00:00:10', 'Week 1', '', '', 'Nelson Widjaja', '0819 3997 5577', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1081, '2025-05-01', 202505, '00:00:12', 'Week 1', '', '', 'Hendra', '0852 6991 8536', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1082, '2025-05-01', 202505, '00:00:12', 'Week 1', '', '', 'Cikal Sportwar', '0831 9035 5173', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1083, '2025-05-01', 202505, '00:00:12', 'Week 1', '', '', '-', '0897 9530 065', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1084, '2025-05-01', 202505, '00:00:12', 'Week 1', '', 'Palembang', 'Ahmad', '0852 7379 2855', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1085, '2025-05-01', 202505, '00:00:23', 'Week 1', '', 'Malang', 'Ahmad Kadyrov', '0822 4551 5203', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1086, '2025-05-01', 202505, '00:00:23', 'Week 1', '', 'Denpasar', 'Pujo Hartanto', '0819 9903 0952', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1087, '2025-05-01', 202505, '00:00:21', 'Week 1', '', 'Pekanbaru', 'Rocky', '0852 3231 9394', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'diminta foto tidak dikirim', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1088, '2025-05-01', 202505, '00:00:22', 'Week 1', '', 'Bekasi', 'Imanuel Arios', '0852 8538 0613', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1089, '2025-05-02', 202505, '00:00:11', 'Week 1', '', 'Setu, bekasi', 'Junaedi', '0812 8263 1673', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'sudah isi form lalu tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1090, '2025-05-02', 202505, '00:00:11', 'Week 1', '', '', 'AW', '0813 8850 1616', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1091, '2025-05-02', 202505, '00:00:14', 'Week 1', '', '', 'Midi', '0811 7108 855', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1092, '2025-05-02', 202505, '00:00:13', 'Week 1', '', 'Surabaya', 'AbdulBasir', '0878 5382 1773', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1093, '2025-05-02', 202505, '00:00:12', 'Week 1', '', '', 'Wiku', '0856 9133 3329', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1094, '2025-05-02', 202505, '00:00:12', 'Week 1', '', 'Surabaya', 'Pencari Rejeki Halal', '0857 3901 9135', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'sudah isi form lalu tidak ada respon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1095, '2025-05-02', 202505, '00:00:14', 'Week 1', '', 'Palembang', 'Budi Alberry', '0822 8188 8383', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'nanti dikabari lagi', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1096, '2025-05-02', 202505, '00:00:00', 'Week 1', '', 'Jakarta Barat', 'Hartonotri', '0812 8595 3789', 'Iklan Meta Facebook', 'Meta Ads Facebook', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1097, '2025-05-03', 202505, '00:00:15', 'Week 1', '', '', 'Ayah Qiandra', '0821 6263 3200', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1098, '2025-05-03', 202505, '00:00:21', 'Week 1', '', 'Surabaya', 'Hrzl', '0856 5572 2559', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1099, '2025-05-03', 202505, '00:00:00', 'Week 1', 'Home Service', 'Kemanggisan Palmerah', 'Agus Rusly', '0812 8947 211', 'Iklan Meta Instagram', 'Meta Ads Instagram', 'No Deal', 'dikiriim form tidak direspon', '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1100, '2025-05-16', 202505, '09:05:00', 'Week 3', 'Home Service', 'Bogor Baru', 'Rudi', '097656788653', '', 'Budi', 'No Deal', 'Gak Jelas', 'Stargazer', 0, 'Service Berkala', '1012', '2025-05-16 09:06:51', '2025-08-18 16:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(11) NOT NULL,
  `uraian` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp(),
  `meta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`id`, `uraian`, `status`, `user`, `modif`, `meta`) VALUES
(1, 'Karyawan Morena', 'Aktif', 1203, '2025-03-24 19:36:20', 'Non Meta'),
(2, 'Website', 'Aktif', 1203, '2025-03-24 19:36:59', 'Meta'),
(3, 'Instagram', 'Aktif', 1203, '2025-03-24 19:37:03', 'Meta'),
(4, 'Facebook', 'Aktif', 1203, '2025-03-24 19:37:08', 'Meta'),
(5, 'Tiktok', 'Aktif', 1203, '2025-03-24 19:37:13', 'Meta'),
(6, 'Banner', 'Aktif', 1203, '2025-03-24 19:36:26', 'Non Meta'),
(7, 'Kalender', 'Aktif', 1203, '2025-03-24 19:36:30', 'Non Meta'),
(8, 'Kru Morena Trans', 'Aktif', 1203, '2025-03-24 19:36:35', 'Non Meta'),
(9, 'Iklan Belakang Bus', 'Aktif', 1203, '2025-03-24 19:36:40', 'Non Meta'),
(10, 'Brosur', 'Aktif', 1203, '2025-03-24 19:36:45', 'Non Meta'),
(11, 'Iklan Meta Facebook', 'Aktif', 1203, '2025-03-24 19:35:44', 'Meta'),
(12, 'Iklan Meta Instagram', 'Aktif', 1203, '2025-03-24 19:36:06', 'Meta'),
(13, 'MLM', 'Aktif', 1012, '2025-07-03 04:19:31', 'Non Meta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insentif`
--

CREATE TABLE `tbl_insentif` (
  `id` int(10) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `jenis_unit` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_insentif`
--

INSERT INTO `tbl_insentif` (`id`, `nama_kategori`, `jenis_unit`, `nominal`) VALUES
(1, 'Level 1', 'Motor', '10000'),
(2, 'Level 2', 'Motor', '15000'),
(3, 'Level 3', 'Motor', '25000'),
(4, 'Level 4', 'Motor', '75000'),
(5, 'Level 1', 'Mobil', '25000'),
(6, 'Level 2', 'Mobil', '30000'),
(7, 'Level 3', 'Mobil', '50000'),
(8, 'Level 4', 'Mobil', '150000'),
(9, 'Level 5', 'Mobil', '0'),
(10, 'Level 5', 'Motor', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komponen_utama`
--

CREATE TABLE `tbl_komponen_utama` (
  `id` int(11) NOT NULL,
  `kode_unit` varchar(11) NOT NULL,
  `nopol` varchar(12) DEFAULT NULL,
  `tg_oli_mesin` date NOT NULL,
  `km_oli_mesin` int(11) NOT NULL,
  `tg_filter_oli_mesin` date NOT NULL,
  `km_filter_oli_mesin` int(11) NOT NULL,
  `tg_oli_transmisi` date NOT NULL,
  `km_oli_transmisi` int(11) NOT NULL,
  `dp_wiper` varchar(50) NOT NULL,
  `bl_wiper` varchar(50) NOT NULL,
  `volt_aki` varchar(126) NOT NULL,
  `busi` varchar(126) NOT NULL,
  `timing_belt` varchar(126) NOT NULL,
  `filter_udara` varchar(126) NOT NULL,
  `filter_ac` varchar(126) NOT NULL,
  `kondisi_radiator` varchar(50) NOT NULL,
  `lampu_utama` varchar(126) NOT NULL,
  `lampu_kota` varchar(126) NOT NULL,
  `lampu_sein` varchar(126) NOT NULL,
  `lampu_hazard` varchar(126) NOT NULL,
  `lampu_rem` varchar(126) NOT NULL,
  `lampu_mundur` varchar(126) NOT NULL,
  `lampu_kabut` varchar(126) NOT NULL,
  `suspensi_dp_kanan` varchar(126) NOT NULL,
  `suspensi_dp_kiri` varchar(126) NOT NULL,
  `suspensi_bl_kanan` varchar(126) NOT NULL,
  `suspensi_bl_kiri` varchar(126) NOT NULL,
  `kampas_rem_dp_kanan` varchar(126) NOT NULL,
  `kampas_rem_dp_kiri` varchar(126) NOT NULL,
  `kampas_rem_bl_kanan` varchar(126) NOT NULL,
  `kampas_rem_bl_kiri` varchar(126) NOT NULL,
  `ktbln_ban_dp_kanan` int(11) NOT NULL,
  `ktbln_ban_dp_kiri` int(11) NOT NULL,
  `ktbln_ban_bl_kanan` int(11) NOT NULL,
  `ktbln_ban_bl_kiri` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_komponen_utama`
--

INSERT INTO `tbl_komponen_utama` (`id`, `kode_unit`, `nopol`, `tg_oli_mesin`, `km_oli_mesin`, `tg_filter_oli_mesin`, `km_filter_oli_mesin`, `tg_oli_transmisi`, `km_oli_transmisi`, `dp_wiper`, `bl_wiper`, `volt_aki`, `busi`, `timing_belt`, `filter_udara`, `filter_ac`, `kondisi_radiator`, `lampu_utama`, `lampu_kota`, `lampu_sein`, `lampu_hazard`, `lampu_rem`, `lampu_mundur`, `lampu_kabut`, `suspensi_dp_kanan`, `suspensi_dp_kiri`, `suspensi_bl_kanan`, `suspensi_bl_kiri`, `kampas_rem_dp_kanan`, `kampas_rem_dp_kiri`, `kampas_rem_bl_kanan`, `kampas_rem_bl_kiri`, `ktbln_ban_dp_kanan`, `ktbln_ban_dp_kiri`, `ktbln_ban_bl_kanan`, `ktbln_ban_bl_kiri`, `created_at`, `updated_by`) VALUES
(1, 'UX0001', NULL, '2025-03-27', 15000, '2025-03-27', 15000, '2023-03-27', 8000, 'Baik', 'Baik', '12,4', 'Baik', 'Retak', 'Kotor', 'Bersih', 'Baik', 'Hidup Semua', 'Mati Semua', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Baik', 'Bocor', 'Baik', 'Bocor', '75', '75', '45', '45', 85, 85, 40, 40, '2025-08-27 05:56:00', 1094),
(2, 'UX0002', NULL, '2025-04-01', 20000, '2025-04-01', 20000, '2023-04-01', 16000, 'Getas', 'Baik', '11', 'Retak', 'Baik', 'Bersih', 'Kotor', 'Bocor', 'Hidup Semua', 'Mati 1 (Kanan)', 'Hidup Semua', 'Hidup Semua', 'Mati 1 (Kanan)', 'Hidup Semua', 'Mati 1 (Kiri)', 'Baik', 'Bocor', 'Baik', 'Bocor', '80', '80', '55', '55', 75, 75, 50, 50, '2025-08-27 06:56:00', 1094),
(3, 'UX0003', NULL, '2025-05-09', 25000, '2025-05-09', 25000, '2023-05-09', 2000, 'Baik', 'Getas', '11,4', 'Baik', 'Retak', 'Kotor', 'Bersih', 'Bocor', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Mati', 'Mati 1 (Kiri)', 'Baik', 'Bocor', 'Baik', 'Bocor', '85', '85', '65', '65', 65, 65, 60, 60, '2025-08-27 07:56:00', 1094),
(4, 'UX0004', NULL, '2025-06-03', 30000, '2025-06-03', 30000, '2023-06-03', 32000, 'Baik', 'Baik', '12,3', 'Retak', 'Baik', 'Bersih', 'Kotor', 'Baik', 'Mati 1 (Kiri)', 'Hidup Semua', 'Hidup Semua', 'Mati 1 (Kiri)', 'Mati Semua', 'Hidup Semua', 'Hidup Semua', 'Baik', 'Bocor', 'Baik', 'Bocor', '90', '90', '75', '75', 55, 55, 70, 70, '2025-08-27 08:56:00', 1094),
(5, 'UX0005', NULL, '2025-07-15', 130000, '2025-07-15', 125000, '2023-07-15', 12000, 'Getas', 'Getas', '12', 'Retak', 'Retak', 'Kotor', 'Bersih', 'Bocor', 'Mati 1 (Kanan)', 'Hidup Semua', 'Mati 1 (Kanan)', 'Hidup Semua', 'Hidup Semua', 'Hidup Semua', 'Mati 1 (Kanan)', 'Baik', 'Bocor', 'Baik', 'Bocor', '80', '95', '85', '85', 45, 50, 80, 80, '2025-08-27 09:56:00', 1094),
(6, 'UX0006', NULL, '2025-08-12', 40000, '2025-08-12', 40000, '2023-08-12', 48000, 'Baik', 'Getas', '12,5', 'Retak', 'Baik', 'Bersih', 'Kotor', 'Baik', 'Hidup Semua', 'Mati', 'Hidup Semua', 'Mati 1 (Kanan)', 'Mati Semua', 'Hidup Semua', 'Hidup Semua', 'Baik', 'Bocor', 'Baik', 'Bocor', '100', '100', '95', '95', 35, 35, 90, 90, '2025-08-27 10:56:00', 1094);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mekanik`
--

CREATE TABLE `tbl_mekanik` (
  `id` int(10) NOT NULL,
  `npk` varchar(10) NOT NULL,
  `nama_mekanik` varchar(100) NOT NULL,
  `spesialis` varchar(12) NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `cabang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mekanik`
--

INSERT INTO `tbl_mekanik` (`id`, `npk`, `nama_mekanik`, `spesialis`, `no_telp`, `cabang`) VALUES
(2, '1136', 'MUHAMAD ILHAM', '', '0857 7124 5021', '1000'),
(3, '1029', 'BUDIAYANTO', '', '0813 8061 1751', '1000'),
(4, '1070', 'DEDI KURNIAWAN', 'MOBIL', '0857 1530 5257', '1004'),
(5, '1091', 'BEJO CARITO', '', '0856 4271 3838', '1000'),
(6, '1102', 'SUPRIYADI', '', '0857 2812 7985', '1000'),
(7, '1106', 'WAWAN HERMAWAN ', 'MOBIL', '0815 7457 3414', '1004'),
(8, '1122', 'ALI BURHANUDIN', 'MOBIL', '0857 2216 2448', '1004'),
(9, '1123', 'NGADIONO', 'MOTOR', '0822 2712 5523', '1004'),
(10, '1124', 'ANDRIYANTO', 'MOBIL', '0821 8807 4891', '1004'),
(11, '1132', 'HARDIANTO SAPUTRA', 'MOTOR', '-', '1004'),
(12, '1133', 'EKO BUDI SANTOSO', 'MOBIL', '-', '1004'),
(13, '1134', 'MUHAMAD BAYU ', 'MOBIL', '-', '1004'),
(14, '1085', 'MURSIDUL AMRI ', 'MOBIL', '0812 2248 9605', '1005'),
(15, '1095', 'FAWZI FATAH RAMDHAN', 'MOBIL', '0878 3272 1722', '1005'),
(16, '1113', 'ANDRI GIAN RAMADHAN ', '', '0838 0787 2672', '1000'),
(17, '1033', 'MARDIYANTO', 'ALL', '0857 4306 9444', '1002'),
(18, '1067', 'SULISTYO SUNARKO', 'ALL', '0878 7723 4355', '1002'),
(19, '1042', 'SLAMET MULYONO', 'ALL', '0812 3413 5177', '1000'),
(20, '1107', 'EKO NOVA ARIYANTO ', 'ALL', '0813 5738 5152', '1003'),
(21, '1137', 'MUJIONO', 'ALL', '0896 2244 5990', '2006'),
(22, '1140', 'ALI SOFYAN', 'ALL', '0812 7250 8505', '2006'),
(23, '1064', 'RADI EKO PUTRA', 'ALL', '0812 1389 101', '2001'),
(24, '1079', 'ADRI YANSYAH', '', '0812 5043 7979', '1000'),
(25, '1110', 'MUHAMMAD CHANDRA PRATAMA', '', '0852 4846 7047', '1000'),
(26, '1112', 'ANGGIT BUDI PRASETYO ', '', '0852 4846 7047', '1000'),
(28, '1147', 'ALIM MIHRU FAUZI', '', '-', '1000'),
(29, '1127', 'MUHAMMAD HARUM', '', '0821 7663 4552', '1000'),
(30, '1148', 'AGUNG FITRIANTO', 'MOTOR', '-', '1004'),
(32, '1149', 'WIDI NAUFAL ALKAP', '', '0812 5718 4974', '1000'),
(33, '1146', 'HUSNIZAR RACHMAN', '', '-', '1000'),
(34, '1152', 'ADRI SAPUTRA', 'ALL', '-', '2012'),
(35, '1154', 'HASANATUL ISAGUSWANDI', 'ALL', '-', '2001'),
(36, '1158', 'ZAIN MIFTAHUDIN', '', '-', '1000'),
(37, '1159', 'MUHAMAD ALDRI RIZALDI', '', '-', '1000'),
(38, '1160', 'SURYANTO', 'ALL', '0857 8871 4097/ 0821 7904 6376', '2013'),
(39, '1161', 'AMIR MAHMUD', 'ALL', '0852 1865 2366', '2013'),
(40, '1162', 'M. RIVAN RINALDI', 'ALL', '0813 7925 1692', '2012'),
(41, '1163', 'MUHAMAD ROMI', '', '0896 0429 5019', '1000'),
(42, '1166', 'MUHAMMAD AKBAR FAUZI', 'ALL', '-', '2009'),
(43, '1073', 'ENDARTO', '', '-', '1000'),
(44, '1169', 'YUNANDI HERDIYAWAN', 'MOTOR', '-', '1005'),
(45, '1172', 'FRENDI MAULANA', 'ALL', '-', '1003'),
(46, '1173', 'AHMAD AFANDY', 'ALL', '-', '2009'),
(47, '1176', 'MUHAMMAD HABIL AL HAFIDZ', 'MOTOR', '-', '1004'),
(48, '1177', 'AMIN MUSTAQIM', 'MOTOR', '-', '1004'),
(49, '1178', 'LINTANG KUNCORO SAPUTRA', 'MOTOR', '-', '1004'),
(50, '1179', 'MUHAMMAD HABIB ALIFIANSYAH', 'MOTOR', '-', '1004'),
(51, '1180', 'SUTRISNO', 'MOTOR', '-', '1004'),
(52, '1185', 'HERU SAPUTRA', '', '-', '1000'),
(53, '1193', 'AHMAD BAYU ADITYA', 'ALL', '-', '1003'),
(54, '1196', 'JUNDAN MUHAMMAD HARITS', 'MOTOR', '-', '1005');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `nama_menu`, `link`, `icon`, `urutan`, `is_active`) VALUES
(1, 'Dashboard', 'dashboard', 'fas fa-tachometer-alt', 1, 'Y'),
(2, 'Setting', '#', 'fas fa-cogs', 2, 'Y'),
(3, 'Transaksi', '#', 'fa fa-cart-plus', 4, 'Y'),
(4, 'Approval', '#', 'fa fa-check-square', 5, 'Y'),
(5, 'Master', '#', 'fa fa-database', 6, 'Y'),
(6, 'Report', '#', 'fa fa-chart-pie', 7, 'Y'),
(7, 'FAQ', '#', 'fa fa-folder-open', 3, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id` int(11) NOT NULL,
  `no_paket` varchar(20) NOT NULL,
  `jenis_kendaraan` varchar(10) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `cabang` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `time` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket_detail`
--

CREATE TABLE `tbl_paket_detail` (
  `id` int(11) NOT NULL,
  `no_paket` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `id_barang_jasa` int(11) NOT NULL,
  `nama_barang_jasa` text NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengambilan`
--

CREATE TABLE `tbl_pengambilan` (
  `id` int(11) NOT NULL,
  `no_pengambilan` varchar(20) NOT NULL,
  `tgl_pengambilan` date NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `pic` varchar(10) NOT NULL,
  `unit_bisnis` varchar(30) NOT NULL,
  `nopol_mac` varchar(15) NOT NULL,
  `app1` varchar(8) NOT NULL,
  `ket_app1` text NOT NULL,
  `time_app1` datetime DEFAULT NULL,
  `app2` varchar(8) NOT NULL,
  `ket_app2` text NOT NULL,
  `time_app2` datetime DEFAULT NULL,
  `user` varchar(10) NOT NULL,
  `time` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengambilan_detail`
--

CREATE TABLE `tbl_pengambilan_detail` (
  `id` int(11) NOT NULL,
  `no_pengambilan` varchar(30) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengembalian`
--

CREATE TABLE `tbl_pengembalian` (
  `id` int(11) NOT NULL,
  `no_pengembalian` varchar(20) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `pic` varchar(10) NOT NULL,
  `unit_bisnis` varchar(30) NOT NULL,
  `nopol_mac` varchar(15) NOT NULL,
  `app1` varchar(8) NOT NULL,
  `ket_app1` text NOT NULL,
  `time_app1` datetime DEFAULT NULL,
  `app2` varchar(8) NOT NULL,
  `ket_app2` text NOT NULL,
  `time_app2` datetime DEFAULT NULL,
  `user` varchar(10) NOT NULL,
  `time` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengembalian_detail`
--

CREATE TABLE `tbl_pengembalian_detail` (
  `id` int(11) NOT NULL,
  `no_pengembalian` varchar(30) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjadwalan`
--

CREATE TABLE `tbl_penjadwalan` (
  `id_penjadwalan` int(11) NOT NULL,
  `no_penjadwalan` varchar(20) NOT NULL,
  `tgl_penjadwalan` date DEFAULT NULL,
  `jam` time NOT NULL,
  `unit_bisnis` varchar(20) NOT NULL,
  `type_customer` varchar(20) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `pic_customer` varchar(50) NOT NULL,
  `hp_customer` varchar(30) NOT NULL,
  `tahu_dari` varchar(100) NOT NULL,
  `nama_referensi` varchar(100) NOT NULL,
  `nopol_mac` varchar(20) NOT NULL,
  `unit` varchar(6) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `lokasi1` varchar(150) NOT NULL,
  `lokasi2` varchar(150) NOT NULL,
  `berkala_non_berkala` varchar(15) NOT NULL,
  `keluhan` text NOT NULL,
  `bobot` varchar(20) NOT NULL,
  `nilai_bobot` double NOT NULL,
  `mekanik` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `user` varchar(5) NOT NULL,
  `tgl_create` datetime DEFAULT NULL,
  `modif` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_penjadwalan`
--

INSERT INTO `tbl_penjadwalan` (`id_penjadwalan`, `no_penjadwalan`, `tgl_penjadwalan`, `jam`, `unit_bisnis`, `type_customer`, `customer`, `pic_customer`, `hp_customer`, `tahu_dari`, `nama_referensi`, `nopol_mac`, `unit`, `nopol`, `type`, `tahun`, `lokasi1`, `lokasi2`, `berkala_non_berkala`, `keluhan`, `bobot`, `nilai_bobot`, `mekanik`, `status`, `id_cabang`, `user`, `tgl_create`, `modif`) VALUES
(11, 'PJ10042025080001', '2025-08-01', '10:31:00', 'Home Service', 'Perorangan', 'PT. Federal International Finance', 'Yusup', '097656788653', 'Brosur', '-', 'B 9293 KCG', 'Mobil', '-', '-', '-', 'dalam kota', '', 'Berkala', 'Service 10.000 km', 'Level 1', 25000, 'ADRI SAPUTRA', 'Penjadwalan', 1004, '1012', '2025-08-08 10:32:41', '2025-08-08 10:32:41'),
(12, 'PJ10042025080002', '2025-08-09', '10:33:00', 'Home Service', 'Perusahaan', 'Naway Travel Indonesia', 'anwar', '082297663339', 'Iklan Meta Instagram', '-', 'B 9508 KCI', 'Mobil', '', '', '', 'dalam kota', '', 'Berkala', 'Service Paket 1', 'Level 2', 30000, 'ADRI YANSYAH,AGUNG FITRIANTO', 'Penjadwalan', 1004, '1012', '2025-08-08 10:35:20', '2025-08-08 10:35:20'),
(13, 'PJ10042025080002', '2025-08-09', '09:33:00', 'Home Service', 'Perorangan', 'Siti Jubaedah', 'Siti Jubaedah', '082297663339', 'Kru Morena Trans', 'Anton', 'B 9508 KCI', 'Mobil', '', '', '', 'Ancol Selatan', '', 'Non Berkala', 'Cek Kaki Kaki', 'Level 3', 50000, 'AHMAD AFANDY', 'Penjadwalan', 1004, '1012', '2025-08-08 10:35:20', '2025-08-08 10:35:20'),
(14, 'PJ10052025080001', '2025-08-09', '10:33:00', 'Home Service', 'Perusahaan', 'Naway Travel Indonesia2', 'anwar2', '0822976633392', 'Iklan Meta Instagram', '-', 'B 7662 KAA', 'Mobil', '', '', '', 'dalam kota', '', 'Berkala', 'Service Paket 1', 'Level 2', 30000, 'ADRI YANSYAH,AGUNG FITRIANTO', 'Penjadwalan', 1005, '1012', '2025-08-08 10:35:20', '2025-08-08 10:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pkb`
--

CREATE TABLE `tbl_pkb` (
  `id` int(11) NOT NULL,
  `no_pkb` varchar(20) NOT NULL,
  `tgl_pkb` date NOT NULL,
  `lokasi` text NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `unit_bisnis` varchar(30) NOT NULL,
  `nopol_mac` varchar(15) NOT NULL,
  `kode_unit` varchar(10) NOT NULL,
  `no_polisi` varchar(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `cabang` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `no_rangka` varchar(30) NOT NULL,
  `no_mesin` varchar(30) NOT NULL,
  `merk` text NOT NULL,
  `type` text NOT NULL,
  `jenis_kendaraan` varchar(10) NOT NULL,
  `tipe_customer` varchar(10) NOT NULL,
  `customer` text NOT NULL,
  `alokasi` text NOT NULL,
  `pic` text NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keluhan` text NOT NULL,
  `mekanik` text NOT NULL,
  `total_harga` float NOT NULL,
  `bobot_service` varchar(30) NOT NULL,
  `diskon` float NOT NULL,
  `app_customer` longtext NOT NULL,
  `time_app_customer` datetime DEFAULT NULL,
  `user` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `modify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pkb`
--

INSERT INTO `tbl_pkb` (`id`, `no_pkb`, `tgl_pkb`, `lokasi`, `jam_mulai`, `jam_selesai`, `unit_bisnis`, `nopol_mac`, `kode_unit`, `no_polisi`, `tahun`, `cabang`, `km`, `no_rangka`, `no_mesin`, `merk`, `type`, `jenis_kendaraan`, `tipe_customer`, `customer`, `alokasi`, `pic`, `no_telepon`, `jenis`, `keluhan`, `mekanik`, `total_harga`, `bobot_service`, `diskon`, `app_customer`, `time_app_customer`, `user`, `time`, `modify`) VALUES
(1, 'PKB25085345', '2023-08-15', 'SURABAYA', '09:52:00', '11:52:00', 'Home Service', '', 'UX0005', 'B 4242 XXX', '0000', 1004, 69, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Non Berkala', 'Service Non Berkala', '1186', 185000, 'Service Ringan', 0, '', '0000-00-00 00:00:00', 0, '2025-09-03 00:00:00', '2025-09-03 00:00:00'),
(2, 'PKB25089211', '2023-11-17', 'SURABAYA', '09:52:00', '11:52:00', 'Home Service', '', 'UX0005', 'B 4242 XXX', '0000', 1004, 85, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Berkala', 'Service Berkala', '1186', 403292, 'Berat', 0, '', '0000-00-00 00:00:00', 0, '2025-09-04 00:00:00', '2025-09-04 00:00:00'),
(3, 'PKB25129901', '2023-12-28', 'SURABAYA', '09:52:00', '11:52:00', 'Home Service', '', 'UX0005', 'B 4242 XXX', '0000', 1004, 86, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Berkala', 'Service Berkala', '1186', 2075000, 'Service Sedang', 0, '', '0000-00-00 00:00:00', 0, '2025-09-05 00:00:00', '2025-09-05 00:00:00'),
(4, 'PKB25028762', '2024-02-06', 'PEKAYON', '09:52:00', '11:52:00', 'Home Service', '', 'UX0004', 'B 2318 KFU', '0000', 1004, 98, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Berkala', 'Service Berkala', '1186', 684960, 'Service Sedang', 0, '', '0000-00-00 00:00:00', 0, '2025-09-06 00:00:00', '2025-09-06 00:00:00'),
(5, 'PKB25039910', '2024-03-26', 'PEKAYON', '09:52:00', '11:52:00', 'Home Service', '', 'UX0004', 'B 2318 KFU', '0000', 1004, 100444, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Non Berkala', 'Service Non Berkala', '1186', 1455000, 'Service Ringan', 0, '', '0000-00-00 00:00:00', 0, '2025-09-07 00:00:00', '2025-09-07 00:00:00'),
(6, 'PKB25062129', '2024-06-22', 'PEKAYON', '09:52:00', '11:52:00', 'Home Service', '', 'UX0004', 'B 2318 KFU', '0000', 1004, 102821, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Non Berkala', 'Service Non Berkala', '1186', 2905000, 'Service Ringan', 0, '', '0000-00-00 00:00:00', 0, '2025-09-08 00:00:00', '2025-09-08 00:00:00'),
(7, 'PKB25082678', '2024-08-13', 'PEKAYON', '09:52:00', '11:52:00', 'Home Service', '', 'UX0004', 'B 2318 KFU', '0000', 1004, 105031, '', '', '', '', 'Mobil', 'Fleet', 'PT. Federal International Finance', 'Jakarta', '', '', 'Berkala', 'Service Berkala', '1186', 539456, '', 0, '', '0000-00-00 00:00:00', 0, '2025-09-09 00:00:00', '2025-09-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pkb_detail`
--

CREATE TABLE `tbl_pkb_detail` (
  `id` int(11) NOT NULL,
  `no_pkb` varchar(20) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `id_item` varchar(20) NOT NULL,
  `nama_item` text NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_satuan` float NOT NULL,
  `total` float NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pkb_detail`
--

INSERT INTO `tbl_pkb_detail` (`id`, `no_pkb`, `kategori`, `id_item`, `nama_item`, `qty`, `satuan`, `harga_satuan`, `total`, `status`) VALUES
(1, 'PKB25085345', 'Jasa', 'P25079995', 'Tune Up (Mobil)', 1, '', 110000, 110000, 'CLOSE'),
(2, 'PKB25085345', 'Jasa', 'P25079996', 'Check Oli Mesin', 1, '', 10000, 10000, 'CLOSE'),
(3, 'PKB25085345', 'Jasa', 'P25079997', 'Check Ban & Tekanan (Mobil)', 1, '', 5000, 5000, 'CLOSE'),
(4, 'PKB25085345', 'Jasa', 'P25079998', 'Check All Air', 1, '', 5000, 5000, 'CLOSE'),
(5, 'PKB25085345', 'Jasa', 'P25079999', 'Check Minyak Rem Mobil', 1, '', 10000, 10000, 'CLOSE'),
(6, 'PKB25085345', 'Barang', 'P25080000', 'Filter Solar 023-0 - Panther', 1, '', 45, 45, 'CLOSE'),
(7, 'PKB25089211', 'Jasa', 'P25080001', 'Tune Up (Mobil)', 1, '', 110000, 110000, 'CLOSE'),
(8, 'PKB25089211', 'Jasa', 'P25080002', 'Check Oli Mesin', 1, '', 10000, 10000, 'CLOSE'),
(9, 'PKB25089211', 'Jasa', 'P25080003', 'Check Air Radiator (Mobil)', 1, '', 150000, 150000, 'CLOSE'),
(10, 'PKB25089211', 'Jasa', 'P25080004', 'Periksa & Tambah Air Wiper', 1, '', 20000, 20000, 'CLOSE'),
(11, 'PKB25089211', 'Jasa', 'P25080005', 'Check Minyak Rem Mobil', 1, '', 10000, 10000, 'CLOSE'),
(12, 'PKB25089211', 'Jasa', 'P25080006', 'Check All Lampu (Mobil)', 1, '', 10000, 10000, 'CLOSE'),
(13, 'PKB25089211', 'Barang', 'P25080007', 'Filter Solar 023-0 - Panther', 1, '', 35000, 35000, 'CLOSE'),
(14, 'PKB25089211', 'Barang', 'P25080008', 'Air Accu', 1, '', 2292, 2292, 'CLOSE'),
(15, 'PKB25089211', 'Barang', 'P25080009', 'Bohlam K1 12 V Kuning', 1, '', 4000, 4000, 'CLOSE'),
(16, 'PKB25089211', 'Barang', 'P25080010', 'Bohlam K2 12 V', 1, '', 4500, 4500, 'CLOSE'),
(17, 'PKB25089211', 'Barang', 'P25080011', 'WD-40 Spray / Engine Penetrating Oil', 1, '', 47500, 47500, 'CLOSE'),
(18, 'PKB25129901', 'Jasa', 'P25080012', 'Tune Up (Mobil)', 1, '', 110000, 110000, 'CLOSE'),
(19, 'PKB25129901', 'Jasa', 'P25080013', 'Check Oli Mesin', 1, '', 10000, 10000, 'CLOSE'),
(20, 'PKB25129901', 'Barang', 'P25080014', 'Bongkar / Pasang Ban', 1, '', 50, 50, 'CLOSE'),
(21, 'PKB25129901', 'Barang', 'P25080015', 'Filter Solar 023-0 - Panther', 1, '', 35, 35, 'CLOSE'),
(22, 'PKB25129901', 'Barang', 'P25080016', 'Kabel Speedometer - Panther', 1, '', 90, 90, 'CLOSE'),
(23, 'PKB25129901', 'Barang', 'P25080017', 'Ban 27 X 8.5 R14 Forceum', 1, '', 1.78, 1.78, 'CLOSE'),
(24, 'PKB25028762', 'Barang', 'P25080018', 'Oli Caltex Havoline Syn Blend 10W-40', 1, '', 514.96, 514.96, 'CLOSE'),
(25, 'PKB25028762', 'Jasa', 'P25080019', 'Tune Up (Mobil)', 1, '', 110000, 110000, 'CLOSE'),
(26, 'PKB25028762', 'Jasa', 'P25080020', 'Check Filter Udara / Elemen Comp. (Mobil)', 1, '', 15000, 15000, 'CLOSE'),
(27, 'PKB25028762', 'Jasa', 'P25080021', 'Service Rem', 1, '', 20000, 20000, 'CLOSE'),
(28, 'PKB25028762', 'Jasa', 'P25080022', 'Check All Air', 1, '', 5000, 5000, 'CLOSE'),
(29, 'PKB25028762', 'Jasa', 'P25080023', 'Check All Lampu (Mobil)', 1, '', 10000, 10000, 'CLOSE'),
(30, 'PKB25028762', 'Jasa', 'P25080024', 'Check Kaki-Kaki', 1, '', 10000, 10000, 'CLOSE'),
(31, 'PKB25039910', 'Barang', 'P25080025', 'Tie Rod - CRV', 1, '', 400, 400, 'CLOSE'),
(32, 'PKB25039910', 'Barang', 'P25080026', 'Long Tie Rod / Rack End - CRV', 1, '', 400, 400, 'CLOSE'),
(33, 'PKB25039910', 'Barang', 'P25080027', 'Link Stabil - CRV', 1, '', 400, 400, 'CLOSE'),
(34, 'PKB25039910', 'Barang', 'P25080028', 'Spooring', 1, '', 245, 245, 'CLOSE'),
(35, 'PKB25039910', 'Jasa', 'P25080029', 'Check Kaki-Kaki', 1, '', 10000, 10000, 'CLOSE'),
(36, 'PKB25039911', 'Barang', 'P25080030', 'Ban 225/60 R18 Dunlop Sport Maxx', 1, '', 2.8, 2.8, 'CLOSE'),
(37, 'PKB25039912', 'Barang', 'P25080031', 'Balancing', 1, '', 50, 50, 'CLOSE'),
(38, 'PKB25039913', 'Barang', 'P25080032', 'Bongkar / Pasang Ban', 1, '', 40, 40, 'CLOSE'),
(39, 'PKB25039914', 'Jasa', 'P25080033', 'Check All Air', 1, '', 5000, 5000, 'CLOSE'),
(40, 'PKB25039915', 'Jasa', 'P25080034', 'Check All Lampu (Mobil)', 1, '', 10000, 10000, 'CLOSE'),
(41, 'PKB25062129', 'Barang', 'P25080035', 'Ban 225/60 R18 Dunlop Sport Maxx', 1, '', 2.8, 2.8, 'CLOSE'),
(42, 'PKB25062129', 'Barang', 'P25080036', 'Balancing', 1, '', 50, 50, 'CLOSE'),
(43, 'PKB25062129', 'Barang', 'P25080037', 'Bongkar / Pasang Ban', 1, '', 40, 40, 'CLOSE'),
(44, 'PKB25062129', 'Jasa', 'P25080038', 'Check All Air', 1, '', 5000, 5000, 'CLOSE'),
(45, 'PKB25062129', 'Jasa', 'P25080039', 'Check All Lampu (Mobil)', 1, '', 10000, 10000, 'CLOSE'),
(46, 'PKB25082678', 'Barang', 'P25080040', 'Oli Caltex Havoline Syn Blend 10W-40', 1, '', 374.456, 374.456, 'CLOSE'),
(47, 'PKB25082678', 'Jasa', 'P25080041', 'Tune Up (Mobil)', 1, '', 110000, 110000, 'CLOSE'),
(48, 'PKB25082678', 'Jasa', 'P25080042', 'Service Filter Udara (Mobil)', 1, '', 20000, 20000, 'CLOSE'),
(49, 'PKB25082678', 'Jasa', 'P25080043', 'Service Rem', 1, '', 20000, 20000, 'CLOSE'),
(50, 'PKB25082678', 'Jasa', 'P25080044', 'Check All Air', 1, '', 5000, 5000, 'CLOSE'),
(51, 'PKB25082678', 'Jasa', 'P25080045', 'Check All Lampu (Mobil)', 1, '', 10000, 10000, 'CLOSE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasing`
--

CREATE TABLE `tbl_purchasing` (
  `id` int(11) NOT NULL,
  `no_purchasing` varchar(20) NOT NULL,
  `tgl_kuitansi` date NOT NULL,
  `vendor` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `pajak` varchar(3) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `lampiran` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `time` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasing_detail`
--

CREATE TABLE `tbl_purchasing_detail` (
  `id` int(11) NOT NULL,
  `no_purchasing` varchar(30) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasing_mac`
--

CREATE TABLE `tbl_purchasing_mac` (
  `id` int(11) NOT NULL,
  `no_purchasing` varchar(20) NOT NULL,
  `tgl_pembelian` date NOT NULL,
  `nama_toko` text NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `pic` varchar(10) NOT NULL,
  `unit_bisnis` varchar(30) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `total` int(11) NOT NULL,
  `lampiran` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `time` datetime DEFAULT NULL,
  `modify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchasing_mac_detail`
--

CREATE TABLE `tbl_purchasing_mac_detail` (
  `id` int(11) NOT NULL,
  `no_purchasing` varchar(30) NOT NULL,
  `kode_barang` varchar(15) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_beli_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sparepart`
--

CREATE TABLE `tbl_sparepart` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `kode_part` varchar(100) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jenis_kendaraan` varchar(20) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `user_modif` varchar(50) NOT NULL,
  `modif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sparepart`
--

INSERT INTO `tbl_sparepart` (`id_barang`, `kode_barang`, `kode_part`, `nama_barang`, `kategori`, `satuan`, `jenis_kendaraan`, `user_create`, `tgl_create`, `user_modif`, `modif`) VALUES
(4, 'B000002', '1', 'Gear Set KWW', 'Part', 'Pcs', 'MOTOR', '1182', '2025-05-26 10:14:24', '', '0000-00-00 00:00:00'),
(5, 'B000002', '123', 'Baterai Remote Panjang', 'Part', 'Pcs', 'MOBIL', '1182', '2025-05-26 11:14:18', '', '0000-00-00 00:00:00'),
(6, 'B000002', '123', 'Oli', 'Pelumas', 'Botol', 'MOBIL', '1182', '2025-05-27 15:56:26', '', '0000-00-00 00:00:00'),
(7, 'B000003', '-', 'Gear Set KWW', 'Part', 'Set', 'MOBIL', '1182', '2025-06-02 11:38:16', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sparepart_detail`
--

CREATE TABLE `tbl_sparepart_detail` (
  `id_detail` int(11) NOT NULL,
  `no_purchasing` varchar(30) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_used` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sparepart_detail_mac`
--

CREATE TABLE `tbl_sparepart_detail_mac` (
  `id_detail` int(11) NOT NULL,
  `no_purchasing` varchar(30) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `cabang` varchar(100) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_return` int(11) NOT NULL,
  `unit_bisnis` varchar(30) NOT NULL,
  `no_polisi` varchar(30) NOT NULL,
  `user` int(11) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `tgl_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status_unit`
--

CREATE TABLE `tbl_status_unit` (
  `id_status_u` int(11) NOT NULL,
  `kode_unit` varchar(6) NOT NULL,
  `nopol` varchar(30) NOT NULL,
  `status_unit` varchar(10) NOT NULL,
  `start_unit` date NOT NULL,
  `end_unit` date NOT NULL,
  `keterangan` text NOT NULL,
  `marketing` varchar(100) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `user` varchar(10) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_status_unit`
--

INSERT INTO `tbl_status_unit` (`id_status_u`, `kode_unit`, `nopol`, `status_unit`, `start_unit`, `end_unit`, `keterangan`, `marketing`, `id_cabang`, `user`, `modif`) VALUES
(1, 'HS0009', 'B 9293 KCG', 'Service', '2024-12-04', '2024-12-06', 'Repair baut mounting transmisi ', '', 1004, '1145', '2025-08-08 04:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `id_submenu` int(11) NOT NULL,
  `nama_submenu` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_sub` int(5) NOT NULL,
  `id_sub2` int(5) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`id_submenu`, `nama_submenu`, `link`, `icon`, `id_menu`, `id_sub`, `id_sub2`, `is_active`, `urutan`) VALUES
(1, 'Menu', 'menu', 'fa fa-folder', 2, 0, 0, 'Y', 0),
(2, 'Sub Menu', 'submenu', 'fa fa-folder', 2, 0, 0, 'Y', 0),
(3, 'User', 'user', 'fa fa-folder', 2, 0, 0, 'Y', 0),
(4, 'User Level', 'userlevel', 'fa fa-folder', 2, 0, 0, 'Y', 0),
(5, 'Unit', 'master/unit/unit', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(6, 'Cabang', 'master/cabang/cabang', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(7, 'Kategori Biaya', 'master/biaya/biaya', 'fa fa-file-alt', 5, 15, 0, 'Y', 0),
(8, 'Kalender', 'master/kalender/kalender', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(9, 'Bank', 'master/bank/bank', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(10, 'Alasan No Deal', 'master/no_deal/alasan_no_deal', 'fa fa-file-alt', 5, 15, 0, 'Y', 0),
(11, 'Target Cabang', 'master/target/target', 'fa fa-file-alt', 5, 16, 0, 'Y', 0),
(12, 'Master Via', 'master/master_via/master_via', 'fa fa-file-alt', 5, 15, 0, 'Y', 0),
(13, 'Tahu Morena Dari', 'master/master_tahu/master_tahu', 'fa fa-file-alt', 5, 15, 0, 'Y', 0),
(14, 'Utama', '#', 'fa fa-folder', 5, 0, 0, 'Y', 0),
(15, 'Kategori', '#', 'fa fa-folder', 5, 0, 0, 'Y', 0),
(16, 'Target', '#', 'fa fa-folder', 5, 0, 0, 'Y', 0),
(17, 'Wilayah', 'master/master_wilayah/master_wilayah', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(18, 'Transaksi', '#', 'fa fa-folder-open', 7, 0, 0, 'Y', 0),
(19, 'Faq', 'faq/faq', 'fa fa-file-alt', 7, 18, 0, 'Y', 0),
(20, 'Mekanik', 'master/mekanik/mekanik', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(21, 'Insentif', 'master/Insentif/Insentif', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(22, 'Vendor', 'master/vendor/vendor', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(23, 'Sparepart', 'master/sparepart/sparepart', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(24, 'Purchasing Gudang', 'transaksi/purchasing_gudang/purchasing_gudang', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(25, 'Penjadwalan', 'transaksi/penjadwalan/penjadwalan', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(26, 'Purchasing Mac', 'transaksi/purchasing_mac/purchasing_mac', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(27, 'Pengambilan', 'transaksi/pengambilan/pengambilan', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(28, 'Pengambilan', 'transaksi/pengambilan/app_pengambilan', 'fa fa-file-alt', 4, 0, 0, 'Y', 0),
(29, 'Paket', 'master/paket/paket', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(30, 'Pengembalian', 'transaksi/pengembalian/pengembalian', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(31, 'Pengembalian', 'transaksi/pengembalian/app_pengembalian', 'fa fa-file-alt', 4, 0, 0, 'Y', 0),
(33, 'PKB', 'transaksi/pkb/pkb', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(34, 'Customer', 'master/customer/customer', 'fa fa-file-alt', 5, 14, 0, 'Y', 0),
(35, 'Komponen', 'transaksi/komponen/komponen', 'fa fa-file-alt', 3, 0, 0, 'Y', 0),
(36, 'Indikator', 'master/indikator/indikator', 'fa fa-file-alt', 5, 15, 0, 'Y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `id_unit` int(11) NOT NULL,
  `kode_unit` varchar(7) NOT NULL,
  `nopol` varchar(30) NOT NULL,
  `nosin` varchar(30) NOT NULL,
  `noka` varchar(40) NOT NULL,
  `type` varchar(150) DEFAULT NULL,
  `merk` varchar(30) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `km` int(11) NOT NULL,
  `bbm` varchar(50) NOT NULL,
  `status` varchar(13) NOT NULL,
  `id_cabang` varchar(8) NOT NULL,
  `unit_bisnis` varchar(20) NOT NULL,
  `UpdationDate` date DEFAULT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp(),
  `stnk_th` date DEFAULT NULL,
  `stnk_5th` date DEFAULT NULL,
  `jenis_kendaraan` varchar(6) NOT NULL,
  `transmisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`id_unit`, `kode_unit`, `nopol`, `nosin`, `noka`, `type`, `merk`, `keterangan`, `tahun`, `km`, `bbm`, `status`, `id_cabang`, `unit_bisnis`, `UpdationDate`, `user`, `modif`, `stnk_th`, `stnk_5th`, `jenis_kendaraan`, `transmisi`) VALUES
(42, 'HS0007', 'B 7662 KAA', '', '', 'ISUZU E2 ELF NQR 71 EC', 'Medium Bus', '-', 2016, 0, '', 'Aktif', '1005', 'Home Service', '2025-06-24', 1012, '2025-06-24 02:31:12', '0000-00-00', '0000-00-00', '', ''),
(113, 'TW0001', 'B 4242 HGA', '', '', 'NQR 71 EC E2-1 (XXI) (6.1)', 'MITSUBISHI', '-', 2017, 0, '', 'Aktif', '1004', 'Towing', '2025-06-24', 1012, '2025-06-24 04:44:15', '2025-06-24', '0000-00-00', '', ''),
(114, 'TW0002', 'B 5355 HTS', '', '', 'NQR 71 EC E2-1 (XXI) (6.1)', 'MITSUBISHI', '-', 2017, 0, '', 'Aktif', '1004', 'Towing', '2025-06-24', 1012, '2025-06-24 04:44:59', '0000-00-00', '0000-00-00', '', ''),
(115, 'WS0001', 'WS Jabar 1', '', '', '-', '-', '-', 0, 0, '', 'Aktif', '1004', 'Workshop', '2025-06-24', 1012, '2025-06-24 04:46:56', '2025-06-24', '0000-00-00', '', ''),
(116, 'WS0002', 'WS Jabar 2', '', '', '-', '-', '-', 0, 0, '', 'Aktif', '1005', 'Workshop', '2025-06-24', 1012, '2025-06-24 04:47:39', '2025-06-24', '0000-00-00', '', ''),
(117, 'HS0009', 'B 9293 KCG', 'K3MH66786', 'MHKB3BA1JKK065886', 'BV GRAN MAX 1.3 HF', 'DAIHATSU', '-', 2019, 0, '', 'Aktif', '1004', 'Home Service', '2025-07-22', 1066, '2025-07-22 06:21:51', '2025-07-22', '0000-00-00', '', ''),
(118, 'HS0010', 'B 9508 KCI', 'K3MJ43660', 'MHKB3BA1JPK092675', 'GRAN MAX BV 1.3 AC FH E4', 'DAIHATSU', '-', 2023, 0, '', 'Aktif', '1004', 'Home Service', '2025-07-22', 1066, '2025-07-22 06:25:17', '2025-07-22', '0000-00-00', '', ''),
(119, 'HS0011', 'B 9987 KCD', 'K3MG53165', 'MHKB3BA1JFK033497', 'GRAN MAX BLIND VAN 1.3 AC FH', 'DAIHATSU', '-', 2015, 0, '', 'Aktif', '1004', 'Home Service', '2025-07-22', 1066, '2025-07-22 06:26:08', '2025-07-22', '0000-00-00', '', ''),
(121, 'HS0013', 'D 8563 FC', 'K3MH05422', 'MHKB3BA1JHK045515', 'GRAN MAX BLIND VAN 1.3 AC M/T', 'DAIHATSU', '-', 2017, 0, '', 'Aktif', '1004', 'Home Service', '2025-07-22', 1066, '2025-07-22 06:40:26', '2025-07-22', '0000-00-00', '', ''),
(122, 'WS0003', 'W Bali', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2014', 'Workshop', '2025-07-22', 1012, '2025-07-22 06:43:22', '2025-07-22', '0000-00-00', '', ''),
(123, 'HS0014', 'B 9492 KCI', 'K3MJ42590', 'MHKB3BA1JPK092029', 'GRAN MAX BV 1.3 AC FH E4', 'DAIHATSU', '-', 2023, 0, '', 'Aktif', '2014', 'Home Service', '2025-07-22', 1012, '2025-07-22 06:44:08', '2025-07-22', '0000-00-00', '', ''),
(124, 'WS0004', 'W Banten', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2009', 'Workshop', '2025-07-22', 1012, '2025-07-22 06:53:08', '2025-07-22', '0000-00-00', '', ''),
(125, 'HS0015', 'B 9734 KCI', 'K3MJ57899', 'MHKB3BA1JRK099245', 'GRAN MAX BV 1.3 AC FH E4', 'DAIHATSU', '-', 2024, 0, '', 'Aktif', '2009', 'Home Service', '2025-07-22', 1012, '2025-07-22 06:53:52', '2025-07-22', '0000-00-00', '', ''),
(126, 'WS0005', 'W Jawa Tengah', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '1002', 'Workshop', '2025-07-22', 1012, '2025-07-22 06:58:26', '2025-07-22', '0000-00-00', '', ''),
(127, 'WS0006', 'W Jatim 1', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '1003', 'Workshop', '2025-07-22', 1012, '2025-07-22 06:59:13', '2025-07-22', '0000-00-00', '', ''),
(128, 'WS0007', 'W Jatim 2', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2016', 'Workshop', '2025-07-22', 1012, '2025-07-22 07:00:40', '2025-07-22', '0000-00-00', '', ''),
(129, 'WS0008', 'W Riau', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2001', 'Workshop', '2025-07-22', 1012, '2025-07-22 07:01:20', '2025-07-22', '0000-00-00', '', ''),
(130, 'WS0009', 'W Sumbagsel 1', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2012', 'Workshop', '2025-07-22', 1012, '2025-07-22 07:02:33', '2025-07-22', '0000-00-00', '', ''),
(131, 'WS0010', 'W Sumbagsel 2', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2013', 'Workshop', '2025-07-22', 1012, '2025-07-22 07:03:10', '2025-07-22', '0000-00-00', '', ''),
(132, 'WS0011', 'W Lampung', '-', '-', '-', '-', '-', 0, 0, '', 'Aktif', '2006', 'Workshop', '2025-07-22', 1012, '2025-07-22 07:03:45', '2025-07-22', '0000-00-00', '', ''),
(133, 'HS0016', 'B 9831 KCD', 'K3MG38698', 'MHKB3BA1JFK030770', 'GRAN MAX BLIND VAN 1.3 M/T', 'DAIHATSU', '-', 2015, 0, '', 'Aktif', '1002', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:11:45', '2025-07-22', '0000-00-00', '', ''),
(134, 'HS0017', 'W 8521 DS', 'K3MG22079', 'MHKB3BA1JFK029900', 'GRAN MAX BLIND VAN AC FH 1.3 M/T', 'DAIHATSU', '-', 2015, 0, '', 'Aktif', '1003', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:12:43', '2025-07-22', '0000-00-00', '', ''),
(135, 'HS0018', 'BM 9014 TS', 'K3MG60768', 'MHKB3BA1JGK034740', 'GRAN MAX BLIND VAN 1.3 AC FH', 'DAIHATSU', '-', 2016, 0, '', 'Aktif', '2001', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:13:37', '2025-07-22', '0000-00-00', '', ''),
(136, 'HS0019', 'BG 8315 PC', 'K3MG49434', 'MHKB3BA1JFK032384', 'GRAN MAX BLIND VAN AC FH 1.3 M/T', 'DAIHATSU', '-', 2015, 0, '', 'Aktif', '2012', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:14:31', '2025-07-22', '0000-00-00', '', ''),
(137, 'HS0020', 'BG 8601 NQ', 'K3MJ09059', 'MHKB3BA1JNK080447', 'GRAN MAX BV 1.3 AC', 'DAIHATSU', '-', 2022, 0, '', 'Aktif', '2013', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:15:14', '2025-07-22', '0000-00-00', '', ''),
(138, 'HS0021', 'B 9409 KCI', 'K3MJ34535', 'MHKB3BA1JPK089740', 'GRAN MAX BV 1.3 AC FH E4', 'DAIHATSU', '-', 2023, 0, '', 'Aktif', '2016', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:15:58', '2025-07-22', '0000-00-00', '', ''),
(139, 'HS0022', 'B 9787 KCI', 'K3MJ57894', 'MHKB3BA1JRK099224', 'GRAN MAX BV 1.3 AC FH E4', 'DAIHATSU', '-', 2024, 0, '', 'Aktif', '2006', 'Home Service', '2025-07-22', 1012, '2025-07-22 07:16:43', '2025-07-22', '0000-00-00', '', ''),
(140, 'UX0005', 'B 4242 XXX', 'K3MJ57894', 'MHKB3BA1JRK099224', 'NQR 71 EC E2-1 (XXI) (6.1)', 'MITSUBISHI', '-', 2017, 135000, 'Bensin', 'Aktif', 'CUS0001', 'Towing', '2025-08-28', 1012, '2025-06-24 04:44:15', '2025-06-24', '2025-08-16', 'Mobil', 'Manual'),
(141, 'UX0004', 'B 2318 KFU', 'K3MH66786', 'MHKB3BA1JKK065886', 'Avanza', 'Toyota', '-', 2014, 12000, 'Bensin', 'Aktif', 'CUS0001', 'Unit External', '2025-08-28', 1012, '2025-08-26 13:51:02', '2025-08-26', '2025-08-26', 'Mobil', 'Automatic'),
(142, 'UX0003', 'B 1111 GGF', 'K3MJ43660', 'MHKB3BA1JKK065886', 'Sigra', 'DAIHATSU', '-', 2014, 24000, 'Bensin', 'Aktif', 'CUS0001', 'Unit External', '2025-08-28', 1012, '2025-08-26 13:50:48', '2025-08-26', '2025-08-25', 'Mobil', 'Manual'),
(143, 'UX0002', 'B 2083 KYU', 'K3MJ43660', 'MHKB3BA1JPK092675', 'Stargazer', 'Hyundai', '-', 2023, 31300, 'Bensin', 'Aktif', 'CUS0001', 'Unit External', '2025-08-28', 1012, '2025-08-26 13:46:57', '2025-08-26', '2025-08-10', 'Mobil', 'Automatic'),
(144, 'UX0001', 'B 1111 KLL', 'K3MH66786', 'MHKB3BA1JKK065886', 'NQR 71 EC E2-1 (XXI) (6.1)', 'DAIHATSU', '-', 2024, 14358, 'Bensin', 'Aktif', 'CUS0001', 'Unit External', '2025-08-28', 1012, '2025-08-26 13:46:44', '2025-08-26', '2025-08-31', 'Mobil', 'Automatic'),
(145, 'UX0006', 'B 4362 XXX', 'K3MH66786', 'MHKB3BA1JKK065886', 'NQR 71 EC E2-1 (XXI) (6.1)', 'MITSUBISHI', '-', 2017, 24735, 'Bensin', 'Aktif', 'CUS0001', 'Towing', '2025-08-28', 1012, '2025-06-24 04:44:15', '2025-06-24', '2025-08-03', 'Mobil', 'Manual');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_bisnis`
--

CREATE TABLE `tbl_unit_bisnis` (
  `id_unit_bisnis` int(11) NOT NULL,
  `unit_bisnis` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `user` varchar(20) NOT NULL,
  `modif` varchar(30) NOT NULL,
  `kode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_unit_bisnis`
--

INSERT INTO `tbl_unit_bisnis` (`id_unit_bisnis`, `unit_bisnis`, `status`, `user`, `modif`, `kode`) VALUES
(1, 'Home Service', 'Aktif', '1012', '', 'HS'),
(2, 'Towing', 'Aktif', '1012', '', 'TW'),
(3, 'Body Repair', 'Aktif', '1012', '', 'BR'),
(4, 'Workshop', 'Aktif', '1012', '', 'WS'),
(5, 'Unit External', 'Tidak Aktif', '1012', '', 'UX');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ttd` varchar(255) NOT NULL,
  `id_level` int(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `jabatan2` varchar(30) NOT NULL,
  `marketing` varchar(20) NOT NULL,
  `id_cabang` int(5) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `kode_referral` varchar(20) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `log_out` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `fullname`, `password`, `image`, `ttd`, `id_level`, `jabatan`, `jabatan2`, `marketing`, `id_cabang`, `is_active`, `kode_referral`, `telp`, `log_out`) VALUES
(1, '1012', 'Tri Yatno', '202cb962ac59075b964b07152d234b70', 'ICON_MOVAS.png', 'ttd_pak_tri.png', 1, 'Super Admin', 'Manager IT', 'USER', 1000, 'Y', 'qfuept0vsu', '628979934583', 0),
(2, '1094', 'Bhakti', '7702df90328e56ac054ff0a204da8cee', '', '', 2, 'USER', 'Supervisor', 'USER', 1000, 'Y', 'g4exwvfk09', '0', 0),
(9, '1133', 'Eko Budi Santoso', '202cb962ac59075b964b07152d234b70', '', '1133.png', 12, 'MARKETING', 'Pos Head', 'Marketing Cabang', 2014, 'Y', '5iwvgr4oft', '0', 0),
(11, '1007', 'Gunawan', '202cb962ac59075b964b07152d234b70', '', '1007.png', 7, 'USER', 'Manager Service & Area', 'USER', 1000, 'Y', '', '0', 0),
(12, '1005', 'Faizal', '9cb8beb229227f0da457f07e982a09d9', '', '1005.png', 8, 'USER', 'Manager Fin & Acc', 'USER', 1000, 'Y', '', '0', 0),
(13, '1008', 'Eko B. Heriyanto', '76c1608f04f1ace89f627fa7b6713893', '', '1008.png', 9, 'USER', 'Operational Director', 'USER', 1000, 'Y', '', '0', 0),
(14, '1011', 'Deden Kurniawan', '202cb962ac59075b964b07152d234b70', '', '1011.png', 10, 'USER', 'Business Support Director', 'USER', 1000, 'Y', '', '0', 0),
(22, '3000', 'Customer Service', '202cb962ac59075b964b07152d234b70', '', '', 18, 'Marketing', 'Admin Morena Trans', 'Customer Service', 1000, 'Y', 'knencr1rk7', '6281277991500', 0),
(41, '1135', 'PITRI HANDAYANI', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 3, 'Admin Morena Trans', 'Admin Morena Trans', 'USER', 1005, 'Y', '', '082214060925', 0),
(42, '1095', 'FAWZI FATAH RAMDHAN', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 12, 'Admin Morena Trans', 'Admin Morena Trans', 'USER', 1005, 'Y', 'goy7yz25jq', '087832721722', 0),
(43, '1085', 'MURSIDUL AMRI', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 12, 'Admin Morena Trans', 'Admin Morena Trans', 'USER', 1005, 'Y', '', '081222489605', 0),
(44, '1116', 'ADITAMA NUGRAHA SAPUTRA', '202cb962ac59075b964b07152d234b70', '', '', 19, 'SPV AR', 'Spv AR HO', 'USER', 1000, 'Y', '', '', 1),
(45, '1066', 'SOPANDI', '202cb962ac59075b964b07152d234b70', '', '', 3, 'Service Advisor', 'Service Advisor', 'USER', 1004, 'Y', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlevel`
--

CREATE TABLE `tbl_userlevel` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_userlevel`
--

INSERT INTO `tbl_userlevel` (`id_level`, `nama_level`) VALUES
(1, 'Super Admin'),
(2, 'SPV HO'),
(3, 'Service Advisor'),
(4, 'Marketing Trans'),
(5, 'Kacab Trans'),
(6, 'Management Unit'),
(7, 'Manager Service & Area'),
(8, 'Manager Fin & Acc'),
(9, 'Dir Ops'),
(10, 'Dir BS'),
(11, 'Admin Trans HO'),
(12, 'Kapos Cabang'),
(13, 'SPV Marketing HO'),
(15, 'Manager Marketing Ho'),
(17, 'Admin Agen HO'),
(18, 'Customer Service'),
(19, 'Finance HO');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE `tbl_vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(150) NOT NULL,
  `jenis_unit` varchar(25) NOT NULL,
  `cabang` varchar(50) NOT NULL,
  `no_telp` varchar(70) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `atas_nama` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `user_create` varchar(50) NOT NULL,
  `tgl_create` datetime NOT NULL,
  `user` varchar(50) NOT NULL,
  `modif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`id_vendor`, `nama_vendor`, `jenis_unit`, `cabang`, `no_telp`, `alamat`, `kota`, `pic`, `no_rekening`, `atas_nama`, `email`, `user_create`, `tgl_create`, `user`, `modif`) VALUES
(1, 'PT. Sukabumi Trading Coy', 'MOBIL', '1000', '081928281615', '1', '1', '1', '', '', '1', '1182', '2025-05-23 11:19:11', '', '0000-00-00 00:00:00'),
(2, 'Kuda Lumping', 'MOBIL', '1000', '081928281615', 'cibubur cileungsi', 'Bekasi', 'Malikha', '9829282898', 'ERIK PITON', 'yudakeling@gmail.com', '1182', '2025-06-02 16:59:48', '', '0000-00-00 00:00:00'),
(7, 'PT. Suka', 'MOBIL', '1000', '081928281615', 'Oke', 'Jakarta', 'Ibu Pradina', '928827287', 'PT. Indah Logistik', 'juna@gmail.com', '1182', '2025-06-04 10:19:29', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_via`
--

CREATE TABLE `tbl_via` (
  `id_via` int(11) NOT NULL,
  `via` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `user` int(5) NOT NULL,
  `modif` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_via`
--

INSERT INTO `tbl_via` (`id_via`, `via`, `status`, `user`, `modif`) VALUES
(1, 'Media Sosial', 'Aktif', 0, '2024-07-16 07:42:43'),
(2, 'Visit', 'Aktif', 1012, '2024-07-16 02:35:59'),
(3, 'Call', 'Aktif', 1094, '2024-07-22 01:03:17'),
(4, 'Chatting', 'Aktif', 1094, '2024-07-22 01:03:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `kalender`
--
ALTER TABLE `kalender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indexes for table `m_indikator`
--
ALTER TABLE `m_indikator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_akses_menu`
--
ALTER TABLE `tbl_akses_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_akses_submenu`
--
ALTER TABLE `tbl_akses_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alasan_no_deal`
--
ALTER TABLE `tbl_alasan_no_deal`
  ADD PRIMARY KEY (`id_no_deal`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `tbl_biaya`
--
ALTER TABLE `tbl_biaya`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `tbl_cabang`
--
ALTER TABLE `tbl_cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_insentif`
--
ALTER TABLE `tbl_insentif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_komponen_utama`
--
ALTER TABLE `tbl_komponen_utama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mekanik`
--
ALTER TABLE `tbl_mekanik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paket_detail`
--
ALTER TABLE `tbl_paket_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengambilan`
--
ALTER TABLE `tbl_pengambilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengambilan_detail`
--
ALTER TABLE `tbl_pengambilan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pengembalian_detail`
--
ALTER TABLE `tbl_pengembalian_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penjadwalan`
--
ALTER TABLE `tbl_penjadwalan`
  ADD PRIMARY KEY (`id_penjadwalan`);

--
-- Indexes for table `tbl_pkb`
--
ALTER TABLE `tbl_pkb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pkb_detail`
--
ALTER TABLE `tbl_pkb_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasing`
--
ALTER TABLE `tbl_purchasing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasing_detail`
--
ALTER TABLE `tbl_purchasing_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasing_mac`
--
ALTER TABLE `tbl_purchasing_mac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchasing_mac_detail`
--
ALTER TABLE `tbl_purchasing_mac_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sparepart`
--
ALTER TABLE `tbl_sparepart`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_sparepart_detail`
--
ALTER TABLE `tbl_sparepart_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tbl_sparepart_detail_mac`
--
ALTER TABLE `tbl_sparepart_detail_mac`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `tbl_status_unit`
--
ALTER TABLE `tbl_status_unit`
  ADD PRIMARY KEY (`id_status_u`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`id_submenu`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `tbl_unit_bisnis`
--
ALTER TABLE `tbl_unit_bisnis`
  ADD PRIMARY KEY (`id_unit_bisnis`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_userlevel`
--
ALTER TABLE `tbl_userlevel`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- Indexes for table `tbl_via`
--
ALTER TABLE `tbl_via`
  ADD PRIMARY KEY (`id_via`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kalender`
--
ALTER TABLE `kalender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id_kategori_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_indikator`
--
ALTER TABLE `m_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_akses_menu`
--
ALTER TABLE `tbl_akses_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_akses_submenu`
--
ALTER TABLE `tbl_akses_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbl_alasan_no_deal`
--
ALTER TABLE `tbl_alasan_no_deal`
  MODIFY `id_no_deal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_biaya`
--
ALTER TABLE `tbl_biaya`
  MODIFY `id_biaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_insentif`
--
ALTER TABLE `tbl_insentif`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_komponen_utama`
--
ALTER TABLE `tbl_komponen_utama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mekanik`
--
ALTER TABLE `tbl_mekanik`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_paket_detail`
--
ALTER TABLE `tbl_paket_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengambilan`
--
ALTER TABLE `tbl_pengambilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengambilan_detail`
--
ALTER TABLE `tbl_pengambilan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengembalian`
--
ALTER TABLE `tbl_pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengembalian_detail`
--
ALTER TABLE `tbl_pengembalian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penjadwalan`
--
ALTER TABLE `tbl_penjadwalan`
  MODIFY `id_penjadwalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pkb`
--
ALTER TABLE `tbl_pkb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_pkb_detail`
--
ALTER TABLE `tbl_pkb_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_purchasing`
--
ALTER TABLE `tbl_purchasing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasing_detail`
--
ALTER TABLE `tbl_purchasing_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasing_mac`
--
ALTER TABLE `tbl_purchasing_mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchasing_mac_detail`
--
ALTER TABLE `tbl_purchasing_mac_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sparepart`
--
ALTER TABLE `tbl_sparepart`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sparepart_detail`
--
ALTER TABLE `tbl_sparepart_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sparepart_detail_mac`
--
ALTER TABLE `tbl_sparepart_detail_mac`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_status_unit`
--
ALTER TABLE `tbl_status_unit`
  MODIFY `id_status_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tbl_unit_bisnis`
--
ALTER TABLE `tbl_unit_bisnis`
  MODIFY `id_unit_bisnis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_userlevel`
--
ALTER TABLE `tbl_userlevel`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_vendor`
--
ALTER TABLE `tbl_vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_via`
--
ALTER TABLE `tbl_via`
  MODIFY `id_via` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
