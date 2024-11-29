-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 12:57 PM
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
-- Database: `angkatan3_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `addres` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_customer`, `phone`, `addres`, `created_at`, `updated_at`) VALUES
(3, 'Lia', '123', 'A108 Adam Street, New York, NY 535022', '2024-11-15 09:20:29', '2024-11-15 09:20:29'),
(4, 'Edwar Ibrahim', '65469846', 'Bekasi timur', '2024-11-21 11:46:10', '2024-11-21 11:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `created_at`, `update_at`) VALUES
(1, 'Administrator', '2024-11-13 11:24:09', '2024-11-13 11:24:09'),
(2, 'Operator', '2024-11-13 11:24:09', '2024-11-13 11:24:09'),
(3, 'Pimpinan', '2024-11-15 06:51:25', '2024-11-15 06:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `nama_paket`, `harga`, `deskripsi`, `created_at`, `updated_at`) VALUES
(2, 'Cuci Sendiri', 5000, 'Harga di atas untuk per satu Kilogram', '2024-11-15 11:39:19', '2024-11-15 11:39:37'),
(4, 'Gosok Ajah', 4000, 'Sudah include pewangi ekstra', '2024-11-15 11:45:25', '2024-11-15 11:45:25'),
(5, 'Cuci dan Gosok', 6000, 'Sudah Terbungkus Rapih', '2024-11-15 11:46:41', '2024-11-15 11:46:41'),
(6, 'Paket Besar', 7000, 'Sprei \"My Love\", Karpet, dan Hambal', '2024-11-15 11:47:26', '2024-11-15 11:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `trans_laundry_pickup`
--

CREATE TABLE `trans_laundry_pickup` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_pay` double(10,2) NOT NULL,
  `pickup_change` double(10,2) NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_laundry_pickup`
--

INSERT INTO `trans_laundry_pickup` (`id`, `id_customer`, `id_order`, `pickup_date`, `pickup_pay`, `pickup_change`, `notes`, `created_at`, `updated_at`) VALUES
(5, 3, 15, '2024-11-21', 60000.00, 8000.00, '', '2024-11-21 09:27:50', '2024-11-21 09:27:50'),
(6, 4, 16, '2024-11-21', 300000.00, 5000.00, '', '2024-11-21 11:47:18', '2024-11-21 11:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `trans_order`
--

CREATE TABLE `trans_order` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `no_transaksi` varchar(50) NOT NULL,
  `tanggal_laundry` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_order`
--

INSERT INTO `trans_order` (`id`, `id_customer`, `no_transaksi`, `tanggal_laundry`, `status`, `created_at`, `updated_at`) VALUES
(14, 3, '#INV-201124-0001', '2024-11-20', 0, '2024-11-20 08:21:26', '2024-11-20 08:21:26'),
(15, 3, '#INV-201124-00015', '2024-11-20', 1, '2024-11-20 08:21:51', '2024-11-21 09:27:50'),
(16, 4, '#INV-211124-00016', '2024-11-21', 1, '2024-11-21 11:46:30', '2024-11-21 11:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `trans_order_detail`
--

CREATE TABLE `trans_order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_order_detail`
--

INSERT INTO `trans_order_detail` (`id`, `id_order`, `id_paket`, `qty`, `subtotal`, `catatan`, `created_at`, `updated_at`) VALUES
(19, 14, 2, 3, 15000, '', '2024-11-20 08:21:26', '2024-11-20 08:21:26'),
(20, 15, 5, 4, 24000, '', '2024-11-20 08:21:51', '2024-11-20 08:21:51'),
(21, 15, 6, 4, 28000, '', '2024-11-20 08:21:51', '2024-11-20 08:21:51'),
(22, 16, 5, 45, 270000, '', '2024-11-21 11:46:30', '2024-11-21 11:46:30'),
(23, 16, 2, 5, 25000, '', '2024-11-21 11:46:30', '2024-11-21 11:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_level`, `nama`, `email`, `password`, `username`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', '12345678', 'admin', '2024-11-13 11:47:19', '2024-11-13 11:47:49'),
(2, 2, 'Operator1', 'operator1@gmail.com', '12345678', 'operator1', '2024-11-13 13:25:58', '2024-11-15 07:38:54'),
(5, 3, 'Edwar Ibrahim', 'pimpinan@gmail.com', '12345678', 'pimpinan', '2024-11-15 11:41:18', '2024-11-15 11:41:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_laundry_pickup`
--
ALTER TABLE `trans_laundry_pickup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_order`
--
ALTER TABLE `trans_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_order_detail`
--
ALTER TABLE `trans_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ibfk_1` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trans_laundry_pickup`
--
ALTER TABLE `trans_laundry_pickup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trans_order`
--
ALTER TABLE `trans_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trans_order_detail`
--
ALTER TABLE `trans_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
