-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2023 pada 08.40
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-php`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `nama`, `username`, `email`, `password`, `level`) VALUES
(4, 'farel', 'frel', 'farel@gmial.com', '$2y$10$bXsqZr9lQjQ/hl.G72uq.u1bVX73NVv/jBf/F4lsr7g3mFK0qDC5a', '1'),
(5, 'aziz', 'nobita', 'nobita@gmial.com', '$2y$10$CjrvW3vJwkc4Bmyb7IF3K.4.Rla3QQcWEQJPabcgi21AfDbp2MKpy', '3'),
(6, 'jihad', 'jihad', 'jihad@gmail.com', '$2y$10$Jl0JSoP054S7sTafdNNFJO9wGh3Sy6qkzsJ4xTGb4uVxPPQEpOF7G', '2'),
(7, 'arul', 'fawwaz', 'fawwaz@gmail.com', '$2y$10$DfDHyt0ymcaRG.22aWEZDeTOtxzRo633XgwS1ZTHYmgJs/K4sMORq', '1'),
(12, 'ANTON', 'anton', 'anton@gmail.com', '$2y$10$jrb/73ViZCKwMxjLZU.gTecO29CId2JD6VpQhVYR7Vh2OcJOtHEwi', '2'),
(13, 'Qithfirull Fawwwaz Gastia Dirrizal', 'q.a', 'qithfirullfawwaz09@gmail.com', '$2y$10$BrQXhlE7a3wWQqtdmtm4bOu/wv/J/fwsL42ACxGK38SU8kGH1r7l.', '1'),
(14, 'darkness', 'dr', 'dr@gmail.com', '$2y$10$ZsfNnehMnLY8PdaxHv7Qs.z1EzebqojtND7A6cy8YjPnIy6GNvOO.', '1'),
(15, 'jihad', 'jihad', 'jihad@gmail.com', '$2y$10$DFQEYLS2P3/9c0AxPYjUB..cMy.83dRu5IhmB6ytpCpkEZ6j50Xei', '2'),
(17, 'marco', 'marco', 'marco123@gmail.com', '$2y$10$q9iQz79x5EERVEjbcF2lPOvXKTP6OTS1.4wi0UW3Y8F/O7/yKh.yy', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `barcode` varchar(15) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `jumlah`, `harga`, `barcode`, `tanggal`) VALUES
(22, 'HP', '3', '7500000', '327478', '2023-08-24 06:53:58'),
(24, 'komputer', '4', '150000', '848088', '2023-08-24 06:53:52'),
(26, 'Hardisk besar', '3', '50000', '467171', '2023-08-28 02:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `prodi`, `jk`, `telepon`, `alamat`, `email`, `foto`) VALUES
(27, 'fawwaz', 'RPL', 'Laki-Laki', '0808856526458789', 'bandung', 'fawwaz09@gmail.com', '64e70ae4f1451.jpg'),
(28, 'farel', 'Teknik Informatika', 'Laki-Laki', '023456447867654', 'Bulan bandung matahari No 100', 'farel@gmail.com', '64e70b14c3457.jpg'),
(29, 'intan', 'RPL', 'Perempuan', '78979878979798', 'jakarta jawa barat No 145', 'intan@gmail.com', '64e70b01cf3fc.jpg'),
(32, 'arull', 'RPL', 'Laki-Laki', '0895644561524', 'Cimahi,Jawa Barat,Indonesia\r\n', '4rull@gmail.com', '64e849ae797a5.jpg'),
(33, 'jihad', 'RPL', 'Laki-Laki', '0782394723783', 'jakarta', 'jihad@gmail.com', '64ec0fbcea0c4.jpg'),
(34, 'jihad', 'Teknik Informatika', 'Laki-Laki', '0234568765465', 'jawa barat jakarta', 'jihad@gmail.com', '64ec37d5d0aae.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
