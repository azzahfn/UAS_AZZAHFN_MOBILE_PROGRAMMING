-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Jan 2022 pada 04.13
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id`, `judul`, `kategori`) VALUES
(1, 'Dua Garis Biru', 'Drama'),
(2, 'The Raid', 'Action'),
(3, 'Mariposa', 'Romance'),
(4, 'Warkop DKI Reborn: Jangkrik Boss! Part 1', 'Komedi'),
(5, 'Dilan 1990', 'Romance'),
(6, 'Habibie & Ainun 3', 'Romance'),
(7, 'My Stupid Boss 2', 'Komedi'),
(8, 'Laskar Pelangi', 'Drama'),
(9, '5 cm', 'Petualang'),
(10, 'Comic 8: Casino Kings part 2', 'Komedi'),
(11, 'Keluarga Cemara', 'Drama'),
(12, 'Gundala', 'Petualangan'),
(13, 'ILY from 38.000 FT', 'Romance'),
(14, 'Sang Pemimpi', 'Drama'),
(15, 'Surga yang Tak Dirindukan', 'Religi'),
(16, 'Ketika Cinta Bertasbih 2', 'Religi'),
(17, 'Get Married', 'Komedi'),
(18, 'Bumi Manusia', 'Drama Sejarah'),
(19, '99 Cahaya di Langit Eropa', 'Religi'),
(20, 'London Love Story', 'Romance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
