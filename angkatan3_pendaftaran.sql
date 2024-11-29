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
-- Database: `angkatan3_pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `gelombang`
--

CREATE TABLE `gelombang` (
  `id` int(11) NOT NULL,
  `nama_gelombang` varchar(40) NOT NULL,
  `aktif` tinyint(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gelombang`
--

INSERT INTO `gelombang` (`id`, `nama_gelombang`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'gelombang 1', 0, '2024-11-11 14:06:11', '2024-11-12 08:38:39'),
(2, 'gelombang 2', 0, '2024-11-12 06:33:33', '2024-11-12 11:44:54'),
(3, 'gelombang 3', 1, '2024-11-12 06:33:41', '2024-11-12 11:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', '2024-11-11 13:57:05', '2024-11-12 11:38:22'),
(2, 'Otomotif Sepeda Motor', '2024-11-11 13:57:26', '2024-11-12 11:38:13'),
(3, 'Jaringan Komputer', '2024-11-11 13:57:44', '2024-11-12 11:38:01'),
(4, 'Operator Komputer', '2024-11-12 06:34:18', '2024-11-12 11:37:52'),
(5, 'Bahasa Inggris', '2024-11-12 06:34:24', '2024-11-12 11:37:23'),
(6, 'Desain Grafis', '2024-11-12 06:34:32', '2024-11-12 11:37:14'),
(7, 'Tata Boga', '2024-11-12 06:34:37', '2024-11-12 11:37:05'),
(8, 'Tata Busana', '2024-11-12 06:34:46', '2024-11-12 11:36:55'),
(9, 'Tata Graha', '2024-11-12 06:34:50', '2024-11-12 11:36:47'),
(10, 'Teknik Pendingin', '2024-11-12 06:34:56', '2024-11-12 11:36:39'),
(11, 'Teknik Komputer', '2024-11-12 06:35:19', '2024-11-12 11:36:30'),
(12, 'Barista', '2024-11-12 06:35:44', '2024-11-12 11:36:20'),
(13, 'Bahasa Korea', '2024-11-12 06:35:49', '2024-11-12 11:36:13'),
(14, 'Makeup Artist', '2024-11-12 06:36:01', '2024-11-12 11:36:04'),
(15, 'Video Editor', '2024-11-12 06:36:12', '2024-11-12 11:35:56'),
(16, 'Content Creator', '2024-11-12 06:36:18', '2024-11-12 11:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `nama_level` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `nama_level`, `created_at`, `updated_at`) VALUES
(3, 'Administrator', '2024-11-11 11:37:51', '2024-11-11 11:53:52'),
(4, 'Admin Aplikasi', '2024-11-11 11:42:30', '2024-11-11 11:42:30'),
(7, 'PIC Jurusan', '2024-11-11 12:06:28', '2024-11-12 12:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_pelatihan`
--

CREATE TABLE `peserta_pelatihan` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_gelombang` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `kartu_keluarga` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(16) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(30) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `kejuruan` varchar(20) NOT NULL,
  `nomor_hp` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `aktivitas_saat_ini` varchar(50) NOT NULL,
  `status` tinyint(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta_pelatihan`
--

INSERT INTO `peserta_pelatihan` (`id`, `id_jurusan`, `id_gelombang`, `nama_lengkap`, `nik`, `kartu_keluarga`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `nama_sekolah`, `kejuruan`, `nomor_hp`, `email`, `aktivitas_saat_ini`, `status`, `created_at`, `updated_at`) VALUES
(20, 1, 2, 'Edwar', '123', '123', 'laki-laki', 'Jakarta', '2024-11-12', 'SMK', 'Sekolah AJa Dulu', 'Otomotif', '123', 'edwar@gmail.com', '2', 2, '2024-11-12 11:32:18', '2024-11-12 11:32:18'),
(21, 1, 3, 'Putra Ajah', '123', '123', 'laki-laki', 'Jakarta', '2024-11-12', 'SMK', 'Sekolah AJa Dulu', 'Teknik Jaringan Komp', '123', 'coba@gmail.com', '1', 1, '2024-11-13 08:35:58', '2024-11-13 08:35:58'),
(23, 3, 3, 'lea', '123', '123', 'laki-laki', 'Jakarta', '2024-11-13', 'asd', 'asd', 'das', '123', 'lea@gmail.com', '2', 0, '2024-11-13 05:42:12', '2024-11-13 05:42:12'),
(24, 3, 3, 'sdas', '21321', '213', 'laki-laki', 'Jakarta', '2024-11-13', 'SMK', 'weq', 'qwe', '1212321', 'ad@gmail.com', '1', 0, '2024-11-13 08:36:47', '2024-11-13 08:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `creared_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_level`, `id_jurusan`, `nama_lengkap`, `email`, `password`, `creared_at`, `updated_at`) VALUES
(6, 3, NULL, 'Edwar Ibrahim', 'edwar@gmail.com', '123', '2024-11-11 07:51:02', '2024-11-12 06:28:07'),
(7, 4, NULL, 'Jarfy Afandi', 'admin@gmail.com', '123', '2024-11-11 12:04:50', '2024-11-12 06:28:16'),
(8, 7, 3, 'coba doang', 'coba@gmail.com', '123', '2024-11-12 07:34:14', '2024-11-13 05:34:21'),
(10, 7, 1, 'coba lagi', 'ad@gmail.com', '123', '2024-11-12 11:59:49', '2024-11-13 05:34:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gelombang`
--
ALTER TABLE `gelombang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_gelombang` (`id_gelombang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gelombang`
--
ALTER TABLE `gelombang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peserta_pelatihan`
--
ALTER TABLE `peserta_pelatihan`
  ADD CONSTRAINT `id_gelombang` FOREIGN KEY (`id_gelombang`) REFERENCES `gelombang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `id_level` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
