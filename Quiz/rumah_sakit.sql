-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Nov 2019 pada 04.25
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
-- Database: `praktikum_basdat3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `idDr` varchar(5) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `spesialisasi` varchar(20) DEFAULT NULL,
  `taripkonsul` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`idDr`, `nama`, `spesialisasi`, `taripkonsul`) VALUES
('dr001', 'Barmawi', 'Bedah', 175000),
('dr002', 'Lazuardi', 'Umum', 155000),
('dr003', 'Mahendradatta', 'Anak', 165000),
('dr005', 'Anis', 'Penyakit Dalam', 165000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `idPasien` varchar(6) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `ibuKandung` varchar(30) DEFAULT NULL,
  `tglLahir` datetime DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`idPasien`, `nama`, `ibuKandung`, `tglLahir`, `alamat`) VALUES
('980001', 'Mustofa', 'Siti Suniyah', '1973-08-29 00:00:00', 'bandung'),
('980002', 'Supoyo', 'Nourma Anita', '1968-07-13 00:00:00', 'Bantul'),
('980003', 'Suripno', 'Sudartinah', '1971-09-08 00:00:00', 'Bantul'),
('990001', 'Budi', 'Fatimah anggraini', '1991-09-03 00:00:00', 'Kulonprogo'),
('990002', 'Budiman', 'Ceicilia Windarti', '1988-12-15 00:00:00', 'Bantul'),
('990003', 'Hari', 'Agustina Wahyuni', '1983-06-14 00:00:00', 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranap`
--

CREATE TABLE `ranap` (
  `idPasien` varchar(6) DEFAULT NULL,
  `wktMasuk` datetime DEFAULT NULL,
  `idDr` varchar(5) DEFAULT NULL,
  `idRuang` varchar(5) DEFAULT NULL,
  `wktKeluar` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranap`
--

INSERT INTO `ranap` (`idPasien`, `wktMasuk`, `idDr`, `idRuang`, `wktKeluar`) VALUES
('980002', '2008-10-12 00:00:00', 'dr001', 'da001', '2008-12-16 00:00:00'),
('980002', '2007-08-01 00:00:00', 'dr002', 'da001', '2007-08-17 00:00:00'),
('990001', '2007-03-19 00:00:00', 'dr003', 'da001', '2007-06-17 00:00:00'),
('990001', '2007-12-21 00:00:00', 'dr001', 'da002', '2008-12-01 00:00:00'),
('990003', '2008-11-18 00:00:00', 'dr002', 'da002', '2008-12-16 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `idRuang` varchar(5) NOT NULL,
  `NamaRuang` varchar(20) DEFAULT NULL,
  `Biaya` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`idRuang`, `NamaRuang`, `Biaya`) VALUES
('da001', 'Dahlia 01', 520000),
('da002', 'Dahlia 02', 450000),
('VP001', 'VVIP', 250000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`idDr`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`idRuang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
