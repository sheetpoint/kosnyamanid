-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Des 2024 pada 13.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Berada`
--

CREATE TABLE `Berada` (
  `id_kos` int(11) NOT NULL,
  `id_rw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Berada`
--

INSERT INTO `Berada` (`id_kos`, `id_rw`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 6),
(18, 6),
(19, 6),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 10),
(36, 10),
(37, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10),
(43, 10),
(44, 11),
(45, 11),
(46, 11),
(47, 11),
(48, 11),
(49, 11),
(50, 11),
(51, 11),
(52, 11),
(53, 11),
(71, 11),
(72, 11),
(73, 11),
(74, 11),
(75, 11),
(76, 11),
(77, 11),
(78, 11),
(79, 11),
(80, 11),
(81, 11),
(82, 11),
(83, 11),
(84, 11),
(85, 11),
(86, 11),
(87, 11),
(88, 11),
(89, 11),
(90, 11),
(91, 11),
(92, 11),
(93, 11),
(94, 11),
(95, 11),
(96, 11),
(97, 11),
(98, 11),
(99, 11),
(100, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Berada_Pemilik`
--

CREATE TABLE `Berada_Pemilik` (
  `id_kos` int(11) NOT NULL,
  `id_pemilik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Berada_Pemilik`
--

INSERT INTO `Berada_Pemilik` (`id_kos`, `id_pemilik`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Client`
--

CREATE TABLE `Client` (
  `id_client` int(11) NOT NULL,
  `nama_client` varchar(255) NOT NULL,
  `umur_client` int(11) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(255) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Kos`
--

CREATE TABLE `Kos` (
  `id_kos` int(11) NOT NULL,
  `nama_kos` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Kos`
--

INSERT INTO `Kos` (`id_kos`, `nama_kos`, `alamat`, `jumlah_kamar`, `keterangan`) VALUES
(1, 'Kos Putri Ibu Ida', 'Jl. Waringin 2 No. 20', 11, 'N/A'),
(2, 'Kos Putri Ibu Hj. Chasanah', 'Jl. Waringin 2 No. 2', 5, 'N/A'),
(3, 'Kos Putri As Salam', 'Jl. Hos Cokroaminoto No.24', 10, 'N/A'),
(4, 'WIJAYA', 'Jl. Jati No. 35 RT 02/02', 6, 'N/A'),
(5, 'Kos Dwi Prastio', 'Jl. Waringin Gg. 3 No. 7 Rt 03', 3, 'N/A'),
(6, 'Kos Nur Laili', 'Jl. Jati Gg. 3 Rt 03', 4, 'N/A'),
(7, 'Kos H. Maryam', 'Jl. Waringin Gg. 7 / 1', 16, 'N/A'),
(8, 'Waringin Guest House', 'Jl. Waringin No. 110 Rt 05', 17, 'N/A'),
(9, 'Kost Puteri Fuad', 'Jalan Waringin RT 5 RW 3', 5, 'N/A'),
(10, 'Saodah Kos', 'Jl. Waringin Gg. 13 RT 03', 8, 'N/A'),
(11, 'Rumah Kost Ben\'s', 'Jl. Waringin No. 44 RT 01', 24, 'N/A'),
(12, 'Slamet Kos', 'Jl. Waringin Gg. 15 RT 06', 10, 'N/A'),
(13, 'Kos Hj. Abidah', 'Jl. Musi Gg. 4 No. 3', 7, 'N/A'),
(14, 'Kos Samsul Maarif', 'Jl. Musi Gg. 1', 4, 'N/A'),
(15, 'Kos Dalim', 'Jl. Musi Gg. 3', 11, 'N/A'),
(16, 'Kos Hj. Fudoh', 'Jl. Musi Gg. 2', 3, 'N/A'),
(17, 'Dewi Kos Kristin', 'Jl. Paweden No. 5 RT 03', 8, 'N/A'),
(18, 'Kos 21 Merry', 'Jl. Paweden No. 21 RT 04', 5, 'N/A'),
(19, 'Indo Kos Hadi Permana', 'Jl. Paweden No. 16 RT 02', 4, 'N/A'),
(20, 'Kos Gunawan', 'Jl. Cimanuk No. 19 RT 02', 6, 'N/A'),
(21, 'Kos Samsudin', 'Jl. Cimanuk No. 23 RT 02', 8, 'N/A'),
(22, 'Dahlia Kos H. Khasan Khariri', 'Jl. Serayu Gg. 4 RT 04', 10, 'N/A'),
(23, 'Kos Nurhayati', 'Jl. P Kemerdekaan Gg. 13 A RT 08', 6, 'N/A'),
(24, 'D\'Best Kost', 'Jln. Brantas I / 2', 9, 'N/A'),
(25, 'Didit Kost', 'Jln. Brantas III / 15', 8, 'N/A'),
(26, 'Viralin Kost', 'Jln. Kalisari I', 14, 'N/A'),
(27, 'H. Iskandar Kost', 'Jln. Kalisari I', 10, 'N/A'),
(28, 'Dwi Wangsa Kost', 'Jln. Citarum Rt 9/Rw 08', 18, 'N/A'),
(29, 'Sugeng Kost', 'Jl. Panggung Timur RT 10', 9, 'N/A'),
(30, 'Budi Kost', 'Jl. Panggung Timur RT 10', 6, 'N/A'),
(31, 'Dany Kost', 'Jl. Panggung Timur RT 10', 3, 'N/A'),
(32, 'Mugiono Kost', 'Jl. Panggung Timur RT 10', 8, 'N/A'),
(33, 'Suharman Kost', 'Jl. Citarum', 5, 'N/A'),
(34, 'Hj. Taipah Kost', 'Jl. Panggung Timur RT 10', 6, 'N/A'),
(35, 'Kos Carmidi', 'Jl. Halmahera Gg. 1 RT 02', 6, 'N/A'),
(36, 'Kos Casniah', 'Jl. Halmahera Gg. 1 RT 02', 4, 'N/A'),
(37, 'Kos Saipul Anik', 'Jl. Halmahera Gg. 1 RT 02', 5, 'N/A'),
(38, 'Kos Irawan', 'Jl. Halmahera Gg. 1 RT 02', 4, 'N/A'),
(39, 'Kos Rudi', 'N/A', 10, 'N/A'),
(40, 'Kyla Kost', 'N/A', 18, 'N/A'),
(41, 'Kost Sani', 'Karimunjawa RT 04', 9, 'N/A'),
(42, 'Halmahera Kostel', 'Jl. Halmahera RT 04', 34, 'N/A'),
(43, 'Kost Susilo', 'Jl. Seram RT 04', 7, 'N/A'),
(44, 'Kos Putri H. Sugeng', 'Jl. Karimunjawa 2 RT 01', 4, 'N/A'),
(45, 'Kos Putra Uus', 'Jl. Halmahera No. 72 RT 01', 4, 'N/A'),
(46, 'Le Garden Residen', 'Jl. Martoloyo RT 02', 22, 'Near Pasar Beras'),
(47, 'Kos Iwan Marbun', 'Jl. Karimunjawa 2 RT 03', 10, 'N/A'),
(48, 'Kos Toipah', 'Jl. Karimunjawa 2 RT 03', 3, 'N/A'),
(49, 'Kos Kimyang', 'Jl. Bali gg. Bali 1 RT 04', 3, 'N/A'),
(50, 'Kos Jariyah', 'Jl. Sangir RT 06', 9, 'N/A'),
(51, 'Bahtera Kos', 'Jl. Sangir RT 06', 12, 'N/A'),
(52, 'Kos Mendosa', 'Jl. Karimunjawa 2 RT 07', 8, 'N/A'),
(53, 'Kos Sutrisno', 'Jl. Karimunjawa 2 RT 07', 9, 'N/A'),
(71, 'Kos Artajaya', 'Jl. Karimunjawa 2 RT 07', 11, 'N/A'),
(72, 'Kos Al Mukaromah', 'Jl. Karimunjawa 2 RT 07', 18, 'N/A'),
(73, 'Kos Anis', 'Jl. Halmahera No. 36 RT 08', 4, 'N/A'),
(74, 'Vespa Kos', 'Jl. Halmahera No. 56 RT 08', 6, 'N/A'),
(75, 'Aulia Kos', 'Jl. Karimunjawa No. 2-4 RT 08', 21, 'N/A'),
(76, 'Kos Banda', 'Jl. Halmahera RT 08', 7, 'N/A'),
(77, 'Kos Delima', 'Jl. Halmahera RT 08', 6, 'N/A'),
(78, 'Kos Muna\'im', 'Jl. Halmahera RT 08', 15, 'N/A'),
(79, 'Crysant Kos', 'Jl. Karimunjawa 2 RT 08', 16, 'N/A'),
(80, 'Sejahtera Kos', 'Jl. Karimunjawa 1 RT 10', 15, 'N/A'),
(81, 'Kos Ragil', 'Jl. Sangir 2 RT 10', 2, 'N/A'),
(82, 'Indah Kos', 'Jl. Halmahera RT 11', 21, 'N/A'),
(83, 'Sasana Parihita Kos', 'Jl. Halmahera RT 08', 8, 'N/A'),
(84, 'Kos CRV', 'Jl. Halmahera No. 44 RT 11', 4, 'N/A'),
(85, 'Setiawan Kos', 'Jl. Halmahera RT 11', 14, 'N/A'),
(86, 'Suhardi Kos', 'Jl. Halmahera RT 11', 8, 'N/A'),
(87, 'Sri Yuliastuti Kos', 'Jl. Halmahera RT 11', 10, 'N/A'),
(88, 'Saodah Kos', 'Jl. Halmahera RT 11', 6, 'N/A'),
(89, 'Sherly House', 'Jl. Halmahera RT 11', 14, 'N/A'),
(90, 'Kusniati Kos', 'Jl. Halmahera RT 11', 10, 'N/A'),
(91, 'Sudarti Kos', 'Jl. Halmahera RT 11', 10, 'N/A'),
(92, 'Ngasiman Kos', 'Jl. Halmahera RT 11', 3, 'N/A'),
(93, 'Hadiyono Kos', 'Jl. Halmahera RT 11', 5, 'N/A'),
(94, 'Endang Kos', 'Jl. Halmahera RT 11', 2, 'N/A'),
(95, 'Nasripah Kos', 'Jl. Halmahera RT 11', 4, 'N/A'),
(96, 'Roliyah Kos', 'Jl. Sangir RT 12', 8, 'N/A'),
(97, 'Tuminah Kos', 'Jl. Sangir RT 12', 6, 'N/A'),
(98, 'Sakri Efendi Kos', 'Jl. Sangir RT 12', 5, 'N/A'),
(99, 'Lusnari Kos', 'Jl. Sangir RT 12', 4, 'N/A'),
(100, 'Naffan Kos', 'Jl. Sangir 1 RT 13', 4, 'N/A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Memilih`
--

CREATE TABLE `Memilih` (
  `id_client` int(11) NOT NULL,
  `id_kos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Pemilik`
--

CREATE TABLE `Pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Pemilik`
--

INSERT INTO `Pemilik` (`id_pemilik`, `nama_pemilik`, `jenis_kelamin`, `email`, `password`) VALUES
(1, 'Ida Roshidayati', 'Perempuan', 'ida@gmail.com', 'securepass1'),
(2, 'Hj. Chasanah', 'Perempuan', 'chasanah@gmail.com', 'securepass2'),
(3, 'Nawiroh', 'Perempuan', 'nawiroh@gmail.com', 'securepass3'),
(4, 'Sridiningsih', 'Perempuan', 'sridiningsih@gmail.com', 'securepass4'),
(5, 'Dwi Prastio S', 'Laki-laki', 'dwi.prastio@gmail.com', 'securepass5'),
(6, 'Nur Laili', 'Perempuan', 'nur.laili@gmail.com', 'securepass6'),
(7, 'H. Maryam', 'Perempuan', 'maryam@gmail.com', 'securepass7'),
(8, 'Kho Siu Ing', 'Perempuan', 'kho.siu.ing@gmail.com', 'securepass8'),
(9, 'Fuad', 'Laki-laki', 'fuad@gmail.com', 'securepass9'),
(10, 'Saodah', 'Perempuan', 'saodah@gmail.com', 'securepass10'),
(11, 'Budijanto Kusumo', 'Laki-laki', 'budijanto.kusumo@gmail.com', 'securepass11'),
(12, 'Slamet', 'Laki-laki', 'slamet@gmail.com', 'securepass12'),
(13, 'Hj. Abidah', 'Perempuan', 'hj.abidah@gmail.com', 'securepass13'),
(14, 'Samsul Maarif', 'Laki-laki', 'samsul.maarif@gmail.com', 'securepass14'),
(15, 'Dalim', 'Laki-laki', 'dalim@gmail.com', 'securepass15'),
(16, 'Hj. Fudoh', 'Perempuan', 'hj.fudoh@gmail.com', 'securepass16'),
(17, 'Kristin', 'Perempuan', 'kristin@gmail.com', 'securepass17'),
(18, 'Merry', 'Perempuan', 'merry@gmail.com', 'securepass18'),
(19, 'Hadi Permana', 'Laki-laki', 'hadi.permana@gmail.com', 'securepass19'),
(20, 'Gunawan', 'Laki-laki', 'gunawan@gmail.com', 'securepass20'),
(21, 'Samsudin', 'Laki-laki', 'samsudin@gmail.com', 'securepass21'),
(22, 'H. Khasan Khariri', 'Laki-laki', 'khasan.khariri@gmail.com', 'securepass22'),
(23, 'Nurhayati', 'Perempuan', 'nurhayati@gmail.com', 'securepass23'),
(24, 'Kiki / Aditya', 'Laki-laki', 'kiki.aditya@gmail.com', 'securepass24'),
(25, 'Kurniawan Agus / Didit', 'Laki-laki', 'kurniawan.didit@gmail.com', 'securepass25'),
(26, 'Vincen', 'Laki-laki', 'vincen@gmail.com', 'securepass26'),
(27, 'H. Iskandar', 'Laki-laki', 'h.iskandar@gmail.com', 'securepass27'),
(28, 'Dimas', 'Laki-laki', 'dimas@gmail.com', 'securepass28'),
(29, 'Sugeng', 'Laki-laki', 'sugeng@gmail.com', 'securepass29'),
(30, 'Budi', 'Laki-laki', 'budi@gmail.com', 'securepass30'),
(31, 'Dany', 'Laki-laki', 'dany@gmail.com', 'securepass31'),
(32, 'Mugiono', 'Laki-laki', 'mugiono@gmail.com', 'securepass32'),
(33, 'Suharman', 'Laki-laki', 'suharman@gmail.com', 'securepass33'),
(34, 'Hj. Taipah', 'Perempuan', 'hj.taipah@gmail.com', 'securepass34'),
(35, 'Carmidi', 'Laki-laki', 'carmidi@gmail.com', 'securepass35'),
(36, 'Casniah', 'Perempuan', 'casniah@gmail.com', 'securepass36'),
(37, 'Saipul Anik', 'Laki-laki', 'saipul.anik@gmail.com', 'securepass37'),
(38, 'Irawan', 'Laki-laki', 'irawan@gmail.com', 'securepass38'),
(39, 'Rudi', 'Laki-laki', 'rudi@gmail.com', 'securepass39'),
(40, 'Tuti', 'Perempuan', 'tuti@gmail.com', 'securepass40'),
(41, 'Sani / Cholid', 'Laki-laki', 'sani.cholid@gmail.com', 'securepass41'),
(42, 'Andoko', 'Laki-laki', 'andoko@gmail.com', 'securepass42'),
(43, 'Susilo', 'Laki-laki', 'susilo@gmail.com', 'securepass43'),
(44, 'H. Sugeng', 'Laki-laki', 'h.sugeng@gmail.com', 'securepass44'),
(45, 'Uus Ilham Alif Ibnugroho', 'Laki-laki', 'uus.ilham@gmail.com', 'securepass45'),
(46, 'Andri Gunawan', 'Laki-laki', 'andri.gunawan@gmail.com', 'securepass46'),
(47, 'Iwan Marbun', 'Laki-laki', 'iwan.marbun@gmail.com', 'securepass47'),
(48, 'Toipah', 'Perempuan', 'toipah@gmail.com', 'securepass48'),
(49, 'Suparno', 'Laki-laki', 'suparno@gmail.com', 'securepass49'),
(50, 'Jariyah', 'Perempuan', 'jariyah@gmail.com', 'securepass50'),
(51, 'Ramelan', 'Laki-laki', 'ramelan@gmail.com', 'securepass51'),
(52, 'Arif Tirtahana CK', 'Laki-laki', 'arif.ck@gmail.com', 'securepass52'),
(53, 'Sutrisno', 'Laki-laki', 'sutrisno@gmail.com', 'securepass53'),
(71, 'Sutrisno', 'Laki-laki', 'sutrisno@gmail.com', 'securepass71'),
(72, 'Hj. Suratmi', 'Perempuan', 'hj.suratmi@gmail.com', 'securepass72'),
(73, 'Adi Yanuar', 'Laki-laki', 'adi.yanuar@gmail.com', 'securepass73'),
(74, 'Sanny Mifthaur R', 'Laki-laki', 'sanny.mifthaur@gmail.com', 'securepass74'),
(75, 'H. Zamroni', 'Laki-laki', 'h.zamroni@gmail.com', 'securepass75'),
(76, 'Toipah', 'Perempuan', 'toipah@gmail.com', 'securepass76'),
(77, 'Suripah', 'Perempuan', 'suripah@gmail.com', 'securepass77'),
(78, 'Muna\'im', 'Laki-laki', 'munaim@gmail.com', 'securepass78'),
(79, 'Karsan', 'Laki-laki', 'karsan@gmail.com', 'securepass79'),
(80, 'Hendri Napitupulu', 'Laki-laki', 'hendri.napitupulu@gmail.com', 'securepass80'),
(81, 'Ragil Puji Lestari', 'Perempuan', 'ragil.puji@gmail.com', 'securepass81'),
(82, 'Tarjono', 'Laki-laki', 'tarjono@gmail.com', 'securepass82'),
(83, 'Enggar Miswati', 'Perempuan', 'enggar.miswati@gmail.com', 'securepass83'),
(84, 'Vidya (Asmawi)', 'Laki-laki', 'vidya.asmawi@gmail.com', 'securepass84'),
(85, 'Budi Setiawan', 'Laki-laki', 'budi.setiawan@gmail.com', 'securepass85'),
(86, 'Suhardi', 'Laki-laki', 'suhardi@gmail.com', 'securepass86'),
(87, 'Sri Yuliastuti', 'Perempuan', 'sri.yuliastuti@gmail.com', 'securepass87'),
(88, 'Saodah', 'Perempuan', 'saodah@gmail.com', 'securepass88'),
(89, 'Suwarjana', 'Laki-laki', 'suwarjana@gmail.com', 'securepass89'),
(90, 'Kusniati', 'Perempuan', 'kusniati@gmail.com', 'securepass90'),
(91, 'Sudarti', 'Perempuan', 'sudarti@gmail.com', 'securepass91'),
(92, 'Ngasiman', 'Laki-laki', 'ngasiman@gmail.com', 'securepass92'),
(93, 'Hadiyono', 'Laki-laki', 'hadiyono@gmail.com', 'securepass93'),
(94, 'Endang Karniti', 'Perempuan', 'endang.karniti@gmail.com', 'securepass94'),
(95, 'Nasripah', 'Perempuan', 'nasripah@gmail.com', 'securepass95'),
(96, 'Roliyah', 'Perempuan', 'roliyah@gmail.com', 'securepass96'),
(97, 'Tuminah', 'Perempuan', 'tuminah@gmail.com', 'securepass97'),
(98, 'Sakri Efendi Kos', 'Laki-laki', 'sakri.efendi@gmail.com', 'securepass98'),
(99, 'Lusnari', 'Perempuan', 'lusnari@gmail.com', 'securepass99'),
(100, 'Hadi Santoso', 'Laki-laki', 'hadi.santoso@gmail.com', 'securepass100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Wilayah_RW`
--

CREATE TABLE `Wilayah_RW` (
  `id_rw` int(11) NOT NULL,
  `nama_rw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `Wilayah_RW`
--

INSERT INTO `Wilayah_RW` (`id_rw`, `nama_rw`) VALUES
(1, 'RW 01'),
(2, 'RW 02'),
(3, 'RW 03'),
(4, 'RW 04'),
(5, 'RW 05'),
(6, 'RW 06'),
(7, 'RW 07'),
(8, 'RW 08'),
(9, 'RW 09'),
(10, 'RW 10'),
(11, 'RW 11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Berada`
--
ALTER TABLE `Berada`
  ADD PRIMARY KEY (`id_kos`,`id_rw`),
  ADD KEY `id_rw` (`id_rw`);

--
-- Indeks untuk tabel `Berada_Pemilik`
--
ALTER TABLE `Berada_Pemilik`
  ADD PRIMARY KEY (`id_kos`,`id_pemilik`),
  ADD KEY `id_pemilik` (`id_pemilik`);

--
-- Indeks untuk tabel `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `Kos`
--
ALTER TABLE `Kos`
  ADD PRIMARY KEY (`id_kos`);

--
-- Indeks untuk tabel `Memilih`
--
ALTER TABLE `Memilih`
  ADD PRIMARY KEY (`id_client`,`id_kos`),
  ADD KEY `id_kos` (`id_kos`);

--
-- Indeks untuk tabel `Pemilik`
--
ALTER TABLE `Pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- Indeks untuk tabel `Wilayah_RW`
--
ALTER TABLE `Wilayah_RW`
  ADD PRIMARY KEY (`id_rw`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `Client`
--
ALTER TABLE `Client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `Kos`
--
ALTER TABLE `Kos`
  MODIFY `id_kos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `Pemilik`
--
ALTER TABLE `Pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `Wilayah_RW`
--
ALTER TABLE `Wilayah_RW`
  MODIFY `id_rw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `Berada`
--
ALTER TABLE `Berada`
  ADD CONSTRAINT `berada_ibfk_1` FOREIGN KEY (`id_kos`) REFERENCES `Kos` (`id_kos`) ON DELETE CASCADE,
  ADD CONSTRAINT `berada_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `Wilayah_RW` (`id_rw`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Berada_Pemilik`
--
ALTER TABLE `Berada_Pemilik`
  ADD CONSTRAINT `berada_pemilik_ibfk_1` FOREIGN KEY (`id_kos`) REFERENCES `Kos` (`id_kos`) ON DELETE CASCADE,
  ADD CONSTRAINT `berada_pemilik_ibfk_2` FOREIGN KEY (`id_pemilik`) REFERENCES `Pemilik` (`id_pemilik`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Memilih`
--
ALTER TABLE `Memilih`
  ADD CONSTRAINT `memilih_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `Client` (`id_client`) ON DELETE CASCADE,
  ADD CONSTRAINT `memilih_ibfk_2` FOREIGN KEY (`id_kos`) REFERENCES `Kos` (`id_kos`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
