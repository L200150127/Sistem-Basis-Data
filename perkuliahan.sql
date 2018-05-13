-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2018 pada 23.10
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkuliahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat_dosen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama`, `alamat_dosen`) VALUES
('D001', 'Nurgiyatna', 'Solo'),
('D002', 'Heru Supriyono', 'Malang'),
('D003', 'Endah Sudarmilah', 'Salatiga'),
('D004', 'Yogiek Indra Kurniawan', 'Banjarnegara'),
('D005', 'Husni Thamrin', 'Jakarta'),
('D006', 'Fatah Yasin', 'Sukoharjo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link_mahasiswa_matkul`
--

CREATE TABLE `link_mahasiswa_matkul` (
  `nim` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `link_mahasiswa_matkul`
--

INSERT INTO `link_mahasiswa_matkul` (`nim`, `kode_matkul`, `nilai`) VALUES
('L200150083', 'TIF001', 70),
('L200150083', 'TIF002', 60),
('L200150083', 'TIF003', 70),
('L200150083', 'TIF004', 88),
('L200150083', 'TIF005', 79),
('L200150088', 'TIF001', 80),
('L200150088', 'TIF002', 80),
('L200150088', 'TIF003', 80),
('L200150088', 'TIF004', 80),
('L200150088', 'TIF005', 80),
('L200150088', 'TIF006', 80),
('L200150088', 'TIF007', 84),
('L200150088', 'TIF008', 80),
('L200150088', 'TIF010', 80),
('L200150099', 'TIF001', 70),
('L200150099', 'TIF002', 80),
('L200150099', 'TIF003', 70),
('L200150099', 'TIF004', 70),
('L200150099', 'TIF005', 90),
('L200150099', 'TIF006', 80),
('L200150099', 'TIF007', 74),
('L200150099', 'TIF008', 70),
('L200150099', 'TIF010', 70),
('L200150112', 'TIF001', 90),
('L200150112', 'TIF002', 70),
('L200150112', 'TIF003', 70),
('L200150112', 'TIF004', 80),
('L200150112', 'TIF005', 70),
('L200150112', 'TIF008', 70),
('L200150112', 'TIF010', 70),
('L200150113', 'TIF001', 70),
('L200150113', 'TIF002', 60),
('L200150113', 'TIF003', 70),
('L200150113', 'TIF004', 80),
('L200150113', 'TIF005', 70),
('L200150113', 'TIF008', 70),
('L200150113', 'TIF010', 80),
('L200150117', 'TIF001', 80),
('L200150117', 'TIF002', 80),
('L200150117', 'TIF003', 70),
('L200150117', 'TIF004', 88),
('L200150117', 'TIF005', 89),
('L200150117', 'TIF006', 80),
('L200150117', 'TIF007', 81),
('L200150118', 'TIF001', 80),
('L200150118', 'TIF002', 80),
('L200150118', 'TIF006', 80),
('L200150118', 'TIF007', 84),
('L200150118', 'TIF008', 80),
('L200150118', 'TIF010', 90),
('L200150123', 'TIF001', 85),
('L200150123', 'TIF002', 85),
('L200150123', 'TIF003', 85),
('L200150123', 'TIF004', 85),
('L200150123', 'TIF005', 85),
('L200150123', 'TIF006', 85),
('L200150123', 'TIF007', 85),
('L200150123', 'TIF008', 85),
('L200150123', 'TIF010', 85),
('L200150125', 'TIF005', 85),
('L200150125', 'TIF006', 60),
('L200150125', 'TIF007', 78),
('L200150125', 'TIF008', 78),
('L200150125', 'TIF010', 82),
('L200150127', 'TIF001', 90),
('L200150127', 'TIF002', 85),
('L200150127', 'TIF003', 94),
('L200150127', 'TIF004', 96),
('L200150127', 'TIF005', 80),
('L200150127', 'TIF007', 85),
('L200150127', 'TIF008', 80),
('L200150127', 'TIF010', 92),
('L200150128', 'TIF001', 80),
('L200150128', 'TIF002', 80),
('L200150128', 'TIF003', 78),
('L200150128', 'TIF004', 80),
('L200150128', 'TIF005', 76),
('L200150128', 'TIF006', 80),
('L200150128', 'TIF007', 74),
('L200150128', 'TIF008', 85),
('L200150128', 'TIF010', 80),
('L200150129', 'TIF001', 80),
('L200150129', 'TIF002', 90),
('L200150129', 'TIF003', 88),
('L200150129', 'TIF004', 80),
('L200150129', 'TIF005', 96),
('L200150129', 'TIF006', 90),
('L200150129', 'TIF007', 94),
('L200150129', 'TIF008', 85),
('L200150129', 'TIF010', 90),
('L200150144', 'TIF001', 80),
('L200150144', 'TIF002', 80),
('L200150144', 'TIF003', 70),
('L200150144', 'TIF004', 78),
('L200150144', 'TIF005', 79),
('L200150144', 'TIF006', 80),
('L200150144', 'TIF007', 81),
('L200150146', 'TIF001', 90),
('L200150146', 'TIF002', 90),
('L200150146', 'TIF003', 90),
('L200150146', 'TIF004', 90),
('L200150146', 'TIF005', 90),
('L200150146', 'TIF006', 90),
('L200150146', 'TIF007', 94),
('L200150146', 'TIF008', 90),
('L200150146', 'TIF010', 90),
('L200154001', 'TIF001', 70),
('L200154001', 'TIF002', 80),
('L200154001', 'TIF003', 90),
('L200154001', 'TIF004', 80),
('L200154001', 'TIF005', 70),
('L200154001', 'TIF006', 80),
('L200154001', 'TIF007', 94),
('L200154001', 'TIF008', 80),
('L200154001', 'TIF010', 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `tgl_lahir`) VALUES
('L200150083', 'Diyan Bima Saputra', 'Wonogiri', '1997-10-15'),
('L200150088', 'Khofa Prayoga', 'Pemalang', '1997-08-10'),
('L200150099', 'Purwantinah', 'Salatiga', '1997-03-01'),
('L200150112', 'Dwi Pratiwi Putri', 'Bangka Belitung', '1998-01-01'),
('L200150113', 'Ismi Kamelia Najib Putri', 'Nusa Tenggara Barat', '1997-02-11'),
('L200150117', 'Widiyarti Endang Saputri', 'Wonogiri', '1997-02-11'),
('L200150118', 'Rina Kurniasari', 'Wonogiri', '1997-11-11'),
('L200150123', 'Danindya Puput Muliana Putri', 'Kalimantan Timur', '1997-04-01'),
('L200150125', 'Indra Bayu Candra Gupta', 'Wonogiri', '1993-08-28'),
('L200150127', 'Lyon', 'Sukoharjo', '1995-12-01'),
('L200150128', 'Sulthana Dzakira Drajat', 'Tangerang', '1998-01-14'),
('L200150129', 'Fendy', 'Pekalongan', '1997-06-22'),
('L200150144', 'Sam\'an Alghozy', 'Banyuwangi', '1996-08-09'),
('L200150146', 'Fakhrur Razi', 'Sukoharjo', '1997-04-23'),
('L200154001', 'Khilyatin Ulin Fitri', 'Solo', '1997-10-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(10) NOT NULL,
  `kode_ruang` varchar(10) NOT NULL,
  `nama_matkul` varchar(45) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kode_dosen` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_matkul`, `kode_ruang`, `nama_matkul`, `sks`, `semester`, `kode_dosen`) VALUES
('TIF001', 'JSEM1', 'Algoritma Pemrograman', 3, 1, 'D005'),
('TIF002', 'JSEM2', 'Algoritma Struktur Data', 4, 4, 'D005'),
('TIF003', 'J0407', 'Sistem Basis Data', 3, 4, 'D004'),
('TIF004', 'J0407', 'Rekayasa Perangkat Lunak', 3, 4, 'D003'),
('TIF005', 'JSEM2', 'Pendidikan Kewarganegaraan', 2, 8, 'D001'),
('TIF006', 'J0403', 'Pemrograman Web Dinamis', 3, 5, 'D004'),
('TIF007', 'J0408', 'Pemrograman Web Statis', 3, 1, 'D004'),
('TIF008', 'J0410', 'Data Mining & Data Warehousing', 3, 5, 'D002'),
('TIF009', 'J0409', 'Metode Penelitian & Publikasi Ilmiah', 3, 6, 'D003'),
('TIF010', 'J0408', 'Sistem Digital', 3, 2, 'D006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang_kuliah`
--

CREATE TABLE `ruang_kuliah` (
  `kode_ruang` varchar(10) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `deskripsi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang_kuliah`
--

INSERT INTO `ruang_kuliah` (`kode_ruang`, `kapasitas`, `deskripsi`) VALUES
('J0403', 50, 'Gedung J Lantai 4 Ruang nomor 3'),
('J0407', 50, 'Gedung J Lantai 4 Ruang nomor 7'),
('J0408', 50, 'Gedung J Lantai 4 Ruang nomor 8'),
('J0409', 50, 'Gedung J Lantai 4 Ruang nomor 9'),
('J0410', 50, 'Gedung J Lantai 4 Ruang nomor 10'),
('JSEM1', 100, 'Gedung J Seminar 1'),
('JSEM2', 100, 'Gedung J Seminar 2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `link_mahasiswa_matkul`
--
ALTER TABLE `link_mahasiswa_matkul`
  ADD PRIMARY KEY (`nim`,`kode_matkul`),
  ADD KEY `fk_matkul_link_mahasiswa_matkul` (`kode_matkul`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD KEY `fk_ruang_kuliah_matkul` (`kode_ruang`),
  ADD KEY `kode_dosen` (`kode_dosen`);

--
-- Indeks untuk tabel `ruang_kuliah`
--
ALTER TABLE `ruang_kuliah`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `link_mahasiswa_matkul`
--
ALTER TABLE `link_mahasiswa_matkul`
  ADD CONSTRAINT `fk_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_matkul_link_mahasiswa_matkul` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `fk_ruang_kuliah_matkul` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang_kuliah` (`kode_ruang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
