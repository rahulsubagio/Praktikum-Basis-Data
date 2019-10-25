-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 25 Okt 2019 pada 11.42
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_basdat2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `no_identitas` varchar(5) NOT NULL,
  `jenis_identitas` varchar(5) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`no_identitas`, `jenis_identitas`, `nama`, `alamat`) VALUES
('001', 'SIM', 'Andi', 'pontianak'),
('002', 'SIM', 'Budi', 'pontianak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailmenyewa`
--

CREATE TABLE `detailmenyewa` (
  `kode_sewa` varchar(5) DEFAULT NULL,
  `kode_film` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailmenyewa`
--

INSERT INTO `detailmenyewa` (`kode_sewa`, `kode_film`) VALUES
('S0001', 'A01'),
('S0001', 'A02'),
('S0002', 'D01'),
('S0003', 'A02'),
('S0003', 'D01'),
('S0003', 'H01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `kode_film` varchar(5) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `judul` varchar(20) DEFAULT NULL,
  `jml_keping` int(10) DEFAULT NULL,
  `jml_film` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`kode_film`, `jenis`, `judul`, `jml_keping`, `jml_film`) VALUES
('A01', 'action', 'Spiderman', 2, 3),
('A02', 'action', 'Spiderman 2', 2, 5),
('D01', 'drama', 'Love Story', 2, 3),
('H01', 'horor', 'Evil Death', 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompokfilm`
--

CREATE TABLE `kelompokfilm` (
  `jenis` varchar(20) NOT NULL,
  `harga_sewa` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompokfilm`
--

INSERT INTO `kelompokfilm` (`jenis`, `harga_sewa`) VALUES
('action', 3000),
('drama', 3500),
('horor', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menyewa`
--

CREATE TABLE `menyewa` (
  `kode_sewa` varchar(5) NOT NULL,
  `no_identitas` varchar(5) DEFAULT NULL,
  `tgl_sewa` datetime DEFAULT NULL,
  `tot_film` int(10) DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `tot_hrg` int(20) DEFAULT NULL,
  `denda` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menyewa`
--

INSERT INTO `menyewa` (`kode_sewa`, `no_identitas`, `tgl_sewa`, `tot_film`, `tgl_kembali`, `tot_hrg`, `denda`) VALUES
('S0001', '001', '2007-01-01 00:00:00', 2, '2007-01-02 00:00:00', 6000, 0),
('S0002', '002', '2007-01-03 00:00:00', 1, '2007-01-03 00:00:00', 3500, 0),
('S0003', '001', '2007-01-06 00:00:00', 3, '2007-01-08 00:00:00', 9500, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`no_identitas`);

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`kode_film`);

--
-- Indeks untuk tabel `kelompokfilm`
--
ALTER TABLE `kelompokfilm`
  ADD PRIMARY KEY (`jenis`);

--
-- Indeks untuk tabel `menyewa`
--
ALTER TABLE `menyewa`
  ADD PRIMARY KEY (`kode_sewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
