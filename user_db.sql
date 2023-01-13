-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 06.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nama_baju` varchar(100) NOT NULL,
  `size` varchar(5) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama_baju`, `size`, `stock`, `price`) VALUES
(5, 'Riber Boho Retro Dress', 'L', 10, 11422121),
(1, 'Sheeny Draped Slip Dress', 'L', 3, 15499556),
(1, 'Sheeny Draped Slip Dress', 'L', 3, 15499556),
(1, 'Sheeny Draped Slip Dress', 'L', 3, 15499556),
(1, 'Sheeny Draped Slip Dress', 'L', 3, 15499556),
(1, 'bikini', 'L', 3, 15499556),
(7, 'Aje Myrad Minidress', 'M', 10, 19059386),
(0, '', '', 0, 0),
(0, '', '', 0, 0),
(7, 'tanktop', 'L', 8, 10000),
(0, '', '', 0, 0),
(5, 'batik', 's', 4, 50000),
(0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(4, 'Siti Nabilah', 'nabilasiti398@gmail.com', 'lala123', 'user'),
(5, 'sona', 'sonaloho11@gmail.com', 'sona123', 'user'),
(6, 'yandri', 'yandri@gmail.com', 'asas1212', 'user'),
(7, 'Murti', 'murti@gmail.com', 'asas1212', 'admin'),
(8, 'sani', 'sani@gmail.com', 'sanicantik', 'user'),
(9, 'murtiasih', 'murtiasih@gmail.com', 'asas1212', 'user'),
(10, 'sitinabila', 'lala@gmail.com', 'lala123', 'user'),
(11, 'izhar', 'masnaya@gmail.com', 'asas1212', 'user'),
(12, 'sunny', 'sunnyside@gmail.com', 'sanicantik', 'user'),
(13, 'sunnyside', 'sunnyside@gmail.com', 'sani12345', 'user'),
(14, 'uki', 'uki@gmail.com', 'ukiganteng', 'user'),
(15, 'saputra', 'putra@gmail.com', 'putra123', 'user'),
(16, 'sitinabilakeisya', 'snabilak@gmail.com', 'lala12345', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
