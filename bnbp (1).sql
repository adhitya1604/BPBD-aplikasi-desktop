-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2023 pada 04.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnbp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nama`, `username`, `password`) VALUES
('Adhitya Andriansyah Putra', 'adhitya16', 'adhitya123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bencana`
--

CREATE TABLE `bencana` (
  `kejadian` varchar(225) NOT NULL,
  `jenis` varchar(225) NOT NULL,
  `waktu` date NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bencana`
--

INSERT INTO `bencana` (`kejadian`, `jenis`, `waktu`, `keterangan`) VALUES
('011', 'Gempa Bumi', '2022-07-01', 'Gempa bumi skala 7 '),
('012', 'Tsunami', '2022-07-04', 'Tsunami 2 meter'),
('013', 'Gunung Meletus', '2022-07-27', 'Anak Gunung Krakatau'),
('014', 'Banjir', '2022-08-01', 'banjir di bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `korban`
--

CREATE TABLE `korban` (
  `kejadian` varchar(225) NOT NULL,
  `posko` varchar(225) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `umur` varchar(225) NOT NULL,
  `jk` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `korban`
--

INSERT INTO `korban` (`kejadian`, `posko`, `nama`, `umur`, `jk`, `alamat`, `keterangan`) VALUES
('011', '002', 'Danu ranu', '12', 'Laki- Laki', 'Cicadas', 'keadaan luka ringan'),
('012', '001', 'Rani', '12', 'Laki- Laki', 'KiaraCondong', 'patah tulang'),
('013', '003', 'Nur', '18', 'Perempuan', 'Jalan Halimun', 'Sehat ,  kedinginan perlu selimut'),
('014', '004', 'nur', '12', 'Perempuan', 'cicadas', 'perlu obat obatan'),
('014', '004', 'toni', '25', 'Laki- Laki', 'kiaracondong', 'perlu obat obatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posko`
--

CREATE TABLE `posko` (
  `posko` varchar(225) NOT NULL,
  `lokasi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `posko`
--

INSERT INTO `posko` (`posko`, `lokasi`) VALUES
('001', 'Cicadas '),
('002', 'kiara condong'),
('003', 'Jl Halimun'),
('004', 'Cimahi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `bencana`
--
ALTER TABLE `bencana`
  ADD PRIMARY KEY (`kejadian`);

--
-- Indeks untuk tabel `korban`
--
ALTER TABLE `korban`
  ADD KEY `kejadian` (`kejadian`),
  ADD KEY `posko` (`posko`);

--
-- Indeks untuk tabel `posko`
--
ALTER TABLE `posko`
  ADD PRIMARY KEY (`posko`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `korban`
--
ALTER TABLE `korban`
  ADD CONSTRAINT `korban_ibfk_1` FOREIGN KEY (`posko`) REFERENCES `posko` (`posko`),
  ADD CONSTRAINT `korban_ibfk_2` FOREIGN KEY (`kejadian`) REFERENCES `bencana` (`kejadian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
