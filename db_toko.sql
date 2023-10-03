-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2023 pada 14.18
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(16, 'BR001', 13, 'Cream siang', 'MS Glow', '80000', '85000', 'PCS', '37', '12 September 2023, 18:30', '15 September 2023, 14:50'),
(17, 'BR002', 13, 'Cream malam', 'MS Glow', '80000', '85000', 'PCS', '83', '12 September 2023, 18:32', NULL),
(18, 'BR003', 13, 'Toner', 'MS Glow', '70000', '75000', 'PCS', '83', '12 September 2023, 18:32', NULL),
(19, 'BR004', 14, 'Lipstik', 'MS Glow', '80000', '85000', 'PCS', '50', '12 September 2023, 18:34', NULL),
(20, 'BR005', 14, 'LIipcream', 'MS Glow', '60000', '65000', 'PCS', '46', '12 September 2023, 18:35', NULL),
(21, 'BR006', 15, 'Lipbam', 'MS Glow', '25000', '30000', 'PCS', '33', '12 September 2023, 18:36', NULL),
(22, 'BR007', 16, 'bedak', 'MS Glow', '20000', '25000', 'PCS', '50', '13 September 2023, 10:38', NULL),
(23, 'BR008', 18, 'Emina', 'Emina', '50000', '55000', 'PCS', '30', '15 September 2023, 14:51', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(13, 'Skincare', '12 September 2023, 18:21'),
(14, 'Lipstik', '12 September 2023, 18:21'),
(15, 'Liptin', '12 September 2023, 18:21'),
(16, 'Sunscreen', '12 September 2023, 18:21'),
(17, 'Facial Foam', '12 September 2023, 18:22'),
(18, 'Foundation', '12 September 2023, 18:24'),
(19, 'Eyeshadow', '12 September 2023, 18:24'),
(20, 'Pensil Alis ', '12 September 2023, 18:24'),
(21, 'Eyeliner', '12 September 2023, 18:29'),
(22, 'Maskara', '12 September 2023, 18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '9aee052e0bf75073fdb55bfa82f074da', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Murtafiatun Darojah', 'Palu', '082259854763', 'fiaf97172@gmail.com', 'WhatsApp Image 2023-09-12 at 19.17.38.jpeg', '7206095508010002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(26, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(27, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(28, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(29, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(30, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(31, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(32, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(33, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(34, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(35, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(36, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(37, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(38, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(39, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(40, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(41, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(42, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(43, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(44, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(45, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(46, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(47, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(48, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(49, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(50, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(51, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(52, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(53, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(54, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(55, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(56, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(57, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(58, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(59, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(60, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(61, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(62, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(63, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(64, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(65, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(66, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(67, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(68, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(69, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(70, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(71, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(72, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(73, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(74, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(75, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(76, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(77, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(78, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(79, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(80, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(81, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(82, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(83, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(84, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(85, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(86, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(87, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(88, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(89, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(90, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(91, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(92, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(93, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(94, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(95, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(96, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(97, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(98, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(99, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(100, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(101, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(102, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023'),
(103, 'BR001', 1, '1', '85000', '12 September 2023, 18:38', '09-2023'),
(104, 'BR006', 1, '1', '30000', '12 September 2023, 18:39', '09-2023'),
(105, 'BR003', 1, '1', '75000', '12 September 2023, 18:39', '09-2023'),
(106, 'BR002', 1, '1', '85000', '12 September 2023, 18:39', '09-2023'),
(107, 'BR005', 1, '1', '65000', '13 September 2023, 10:36', '09-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(42, 'BR001', 1, '1', '85000', '12 September 2023, 18:38'),
(43, 'BR006', 1, '1', '30000', '12 September 2023, 18:39'),
(44, 'BR003', 1, '1', '75000', '12 September 2023, 18:39'),
(45, 'BR002', 1, '1', '85000', '12 September 2023, 18:39'),
(46, 'BR005', 1, '1', '65000', '13 September 2023, 10:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'KA-SIR', 'Tondo', '082259854763', 'FIA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
