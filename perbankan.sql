-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 02:53 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perbankan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang_bank`
--

CREATE TABLE `cabang_bank` (
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(45) NOT NULL,
  `alamat_cabang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang_bank`
--

INSERT INTO `cabang_bank` (`kode_cabang`, `nama_cabang`, `alamat_cabang`) VALUES
('BRUB', 'Bank Rut Unit Boyolali', 'Jl. Ahmad Yani 45'),
('BRUBA', 'Bank Rut Unit Balikpapan', 'Jl. Keempat 11'),
('BRUBE', 'Bank Rut Unit Berau', 'Jl. Ketujuh 14'),
('BRUK', 'Bank Rut Unit Klaten', 'Jl. Suparman 23'),
('BRUKA', 'Bank Rut Unit Kartasura', 'Jl. Kesembilan 16'),
('BRUKR', 'Bank Rut Unit Karanganyar', 'Jl. Tawangmangu 19'),
('BRUM', 'Bank Rut Unit Magelang', 'Jl. P. Tendean 63'),
('BRUP', 'Bank Rut Unit Pontianak', 'Jl. Kedelapan 15'),
('BRUS', 'Bank Rut Unit Surakarta', 'Jl. Slamet Riyadi 18'),
('BRUSA', 'Bank Rut Unit Samarinda', 'Jl. Kelima 12'),
('BRUSR', 'Bank Rut Unit Sragen', 'Jl. Pattimura 18'),
('BRUSU', 'Bank Rut Unit Sukoharjo', 'Jl. Kesepuluh 17'),
('BRUT', 'Bank Rut Unit Tarakan', 'Jl. Slamet Riyadi 22'),
('BRUTA', 'Bank Rut Unit Tanjung Selor', 'Jl. Keenam 13'),
('BRUW', 'Bank Rut Unit Wonogiri', 'Jl. Untung Suropati 12'),
('BRUY', 'Bank Rut Unit Yogyakarta', 'Jl. Anggrek 21');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id_nasabah` int(11) NOT NULL,
  `nama_nasabah` varchar(45) NOT NULL,
  `alamat_nasabah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id_nasabah`, `nama_nasabah`, `alamat_nasabah`) VALUES
(1, 'Sutopo', 'Jl. Jendral Sudirman 12'),
(2, 'Maryati', 'Jl. MT Haryono 31'),
(3, 'Suparman', 'Jl. Hasanudin 81'),
(4, 'Kartika Padmasari', 'Jl. Manggis 15'),
(5, 'Budi Eko Prayogo', 'Jl. Kantil 30'),
(6, 'Satria Eka Jaya', 'Jl. Slamet Riyadi 45'),
(7, 'Trianandya', 'Jl. Sutoyo 5'),
(8, 'Sari Murti', 'Jl. Pangandaran 11'),
(9, 'Canka Lokananta', 'Jl. Tidar 86'),
(10, 'Budi Martono', 'Jl. Merak 22'),
(11, 'Danindya', 'Jl. Aki Balak 22'),
(12, 'Puput', 'Jl. AMD 10'),
(13, 'Muliana', 'Jl. Jend. Sudirman 97'),
(14, 'Putri', 'Jl. Diponegoro 19'),
(15, 'Bening', 'Jl. Agatis 10'),
(16, 'Khatulistyawara', 'Jl. Ir. Soekarno 12'),
(17, 'Pandan Wangi', 'Jl. Imam Bonjol 20'),
(18, 'Andara', 'Jl. Pertama 26'),
(19, 'Rangga', 'Jl. Kedua 80'),
(20, 'Cinta', 'Jl. Ketiga 24');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah_has_rekening`
--

CREATE TABLE `nasabah_has_rekening` (
  `id_nasabahFK` int(11) NOT NULL,
  `no_rekeningFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nasabah_has_rekening`
--

INSERT INTO `nasabah_has_rekening` (`id_nasabahFK`, `no_rekeningFK`) VALUES
(1, 104),
(2, 103),
(3, 105),
(3, 106),
(4, 101),
(4, 107),
(5, 102),
(5, 107),
(6, 109),
(7, 109),
(8, 111),
(8, 112),
(9, 110),
(10, 108),
(10, 113),
(10, 119),
(11, 122),
(11, 123),
(12, 114),
(12, 121),
(13, 117),
(14, 120),
(15, 116),
(16, 118),
(17, 115);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `no_rekening` int(11) NOT NULL,
  `kode_cabangFK` varchar(20) DEFAULT NULL,
  `pin` varchar(20) NOT NULL DEFAULT '1234',
  `saldo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`no_rekening`, `kode_cabangFK`, `pin`, `saldo`) VALUES
(101, 'BRUS', '1111', 500000),
(102, 'BRUS', '2222', 350000),
(103, 'BRUS', '3333', 750000),
(104, 'BRUM', '4444', 900000),
(105, 'BRUM', '5555', 2000000),
(106, 'BRUS', '6666', 3000000),
(107, 'BRUS', '7777', 1000000),
(108, 'BRUB', '0000', 5000000),
(109, 'BRUB', '9999', 0),
(110, 'BRUY', '1234', 550000),
(111, 'BRUK', '4321', 150000),
(112, 'BRUK', '0123', 300000),
(113, 'BRUY', '8888', 255000),
(114, 'BRUBA', '1212', 300000),
(115, 'BRUT', '1020', 2500000),
(116, 'BRUTA', '9911', 100000),
(117, 'BRUBE', '8899', 2000000),
(118, 'BRUKR', '2233', 120000),
(119, 'BRUKA', '1010', 400000),
(120, 'BRUSA', '1144', 500000),
(121, 'BRUP', '5500', 900000),
(122, 'BRUSU', '2200', 2000000),
(123, 'BRUT', '1997', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_nasabahFK` int(11) DEFAULT NULL,
  `no_rekeningFK` int(11) DEFAULT NULL,
  `jenis_transaksi` varchar(20) NOT NULL DEFAULT 'debit',
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `id_nasabahFK`, `no_rekeningFK`, `jenis_transaksi`, `tanggal`, `jumlah`) VALUES
(1, 3, 105, 'debit', '2009-11-10 00:00:00', 50000),
(2, 2, 103, 'debit', '2009-11-10 00:00:00', 40000),
(3, 4, 101, 'kredit', '2009-11-12 00:00:00', 20000),
(4, 3, 106, 'debit', '2009-11-13 00:00:00', 50000),
(5, 5, 107, 'kredit', '2009-11-13 00:00:00', 30000),
(6, 1, 104, 'kredit', '2009-11-15 00:00:00', 200000),
(7, 9, 110, 'kredit', '2009-11-15 00:00:00', 150000),
(8, 5, 102, 'debit', '2009-11-16 00:00:00', 20000),
(9, 3, 105, 'kredit', '2009-11-18 00:00:00', 50000),
(10, 4, 107, 'debit', '2009-11-19 00:00:00', 100000),
(11, 2, 103, 'debit', '2009-11-19 00:00:00', 100000),
(12, 1, 104, 'debit', '2009-11-19 00:00:00', 50000),
(13, 4, 107, 'kredit', '2009-11-20 00:00:00', 200000),
(14, 3, 105, 'debit', '2009-11-21 00:00:00', 40000),
(15, 1, 104, 'kredit', '2009-11-22 00:00:00', 100000),
(16, 4, 101, 'kredit', '2009-11-22 00:00:00', 20000),
(17, 2, 103, 'debit', '2009-11-22 00:00:00', 50000),
(18, 5, 102, 'debit', '2009-11-25 00:00:00', 50000),
(19, 10, 108, 'debit', '2009-11-26 00:00:00', 100000),
(20, 3, 106, 'kredit', '2009-11-27 00:00:00', 50000),
(21, 2, 103, 'kredit', '2009-11-28 00:00:00', 200000),
(22, 3, 105, 'kredit', '2009-11-28 00:00:00', 100000),
(23, 5, 102, 'debit', '2009-11-30 00:00:00', 20000),
(24, 1, 104, 'debit', '2009-12-01 00:00:00', 50000),
(25, 2, 103, 'debit', '2009-12-02 00:00:00', 40000),
(26, 4, 101, 'debit', '2009-12-04 00:00:00', 50000),
(27, 2, 103, 'kredit', '2009-12-05 00:00:00', 100000),
(28, 5, 102, 'kredit', '2009-12-05 00:00:00', 200000),
(29, 7, 109, 'debit', '2009-12-05 00:00:00', 100000),
(30, 9, 110, 'debit', '2009-12-06 00:00:00', 20000),
(31, 12, 114, 'kredit', '2009-12-07 00:00:00', 20000),
(32, 11, 122, 'kredit', '2009-12-07 00:00:00', 25000),
(33, 13, 117, 'debit', '2009-12-08 00:00:00', 50000),
(34, 15, 116, 'debit', '2009-12-08 00:00:00', 100000),
(35, 11, 123, 'debit', '2009-12-08 00:00:00', 200000),
(36, 11, 123, 'kredit', '2009-12-10 00:00:00', 50000),
(37, 16, 118, 'debit', '2009-12-11 00:00:00', 100000),
(38, 14, 120, 'kredit', '2009-12-11 00:00:00', 50000),
(39, 17, 115, 'kredit', '2009-12-12 00:00:00', 50000),
(40, 16, 118, 'debit', '2009-12-13 00:00:00', 150000),
(41, 10, 119, 'debit', '2009-12-14 00:00:00', 100000),
(42, 12, 114, 'kredit', '2009-12-14 00:00:00', 125000),
(43, 12, 121, 'kredit', '2009-12-14 00:00:00', 125000),
(44, 16, 118, 'debit', '2009-12-15 00:00:00', 200000),
(45, 13, 117, 'debit', '2009-12-15 00:00:00', 50000),
(46, 14, 120, 'kredit', '2009-12-16 00:00:00', 175000),
(47, 17, 115, 'kredit', '2009-12-17 00:00:00', 80000),
(48, 10, 113, 'kredit', '2009-12-18 00:00:00', 130000),
(49, 11, 122, 'debit', '2009-12-19 00:00:00', 200000),
(50, 12, 114, 'kredit', '2009-12-20 00:00:00', 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
  ADD PRIMARY KEY (`kode_cabang`),
  ADD UNIQUE KEY `nama_cabang` (`nama_cabang`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id_nasabah`);

--
-- Indexes for table `nasabah_has_rekening`
--
ALTER TABLE `nasabah_has_rekening`
  ADD PRIMARY KEY (`id_nasabahFK`,`no_rekeningFK`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
