-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Des 2018 pada 16.47
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gs` text NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `waktu_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id`, `nama`, `gs`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `tempat`, `waktu_input`, `status`) VALUES
(1, 'andre', 'aku', '2018-12-05', '00:00:00', '00:00:00', '', '2018-12-23 08:17:12', 0),
(2, 'Andre Aditya Pelealu', 'aku', '2018-12-13', '13:00:00', '02:00:00', 'semarang', '2018-12-23 08:17:12', 0),
(3, 'Andre Aditya Pelealu', 'dia', '2018-12-06', '12:00:00', '13:59:00', 'semarang', '2018-12-23 08:17:12', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'budi', 'budi@g.com', '$2y$10$Y71/HkTBl1PHCOVVUJSNiOTruy62XHdL60lK968bP4PFljL8/TF2W', 0, '5N2yRT7EHx0oXpsq', '2018-12-23 08:27:57', NULL),
(2, 'budi', 'budi@g.comi', '$2y$10$0jz9jl8MialyALxQT/WXj.JFDGtDSSJATJN2d1hnL0HykthnyXgqG', 0, 'ObXzIMfjR3GegWYK', '2018-12-23 08:28:05', NULL),
(3, 'budi', 'budi@g.comw', '$2y$10$xZ7xC87x8jT6yTWA9c9Lv.5AN0/fUYss3Gw4/ZLMdNhm84QviYZ96', 1, 'WuJ2N1FvhApn6z4P', '2018-12-23 08:28:08', NULL),
(4, 'budi', 'budi1@g.com', '$2y$10$56WIYkQdhLgMqOEj7rlWgOcZHZisyGSfP8inpAGjAiwJajHZ9oT8O', 1, 'SQj70ZA1EYz2ku6O', '2018-12-23 08:28:10', NULL),
(5, 'budi', 'budi3@g.com', '$2y$10$Y6p7ZKEcrT2qnhNZIItwCuxtcfa8Uenxk1sVxMQOAQo9v7kuLMncK', 1, 'Koq8xj3OavnX70ZR', '2018-12-23 08:28:12', NULL),
(6, 'budi', 'budi4@tes.com', '$2y$10$gm50UxfkHBPFZnqS/oXtPOaO/19oDK88pOVP/FD/wqad80/JHjQY.', 1, 'EB6gqXOe0V9xAYUp', '2018-12-23 08:28:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
