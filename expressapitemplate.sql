-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Agu 2020 pada 14.21
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressapitemplate`
--
CREATE DATABASE `expressapitemplate` IF NOT EXISTS;
USE `expressapitemplate`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin manager', 'admin@talkwe.com', '$2b$10$GkG9XeGne3Te9JETETsZJ.n7.W1NMM9qK9vd31S3S.YA/PrU/uNXO', 'http://192.168.43.81:3000/talkwe/images/2020-08-06T16:11:14.110ZIMG-20200806-WA0002.jpg', '2020-07-26 17:57:13', '2020-08-06 19:13:12'),
(5, 'staff', 'staff assistant', 'staff@talkwe.com', '$2b$10$O09TaCKwLysdXvvvvNu/meqmFK29SfsEsf7NPxjz.iEr1UNgIh9Pu', 'http://192.168.43.81:3000/talkwe/images/2020-08-06T12:17:54.819Z235544.jpg', '2020-07-26 18:56:06', '2020-08-06 13:45:40'),
(6, 'user', 'user creative banget', 'user@talkwe.com', '$2b$10$5WjQp7KdQUBJniJWvg4Wuubu/YCTQwtwH5gSvYxtmbVjhj6cFDLTG', 'http://192.168.43.81:3000/talkwe/images/2020-08-06T12:18:19.018Z2422614.jpg', '2020-07-26 18:56:22', '2020-08-06 13:45:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
