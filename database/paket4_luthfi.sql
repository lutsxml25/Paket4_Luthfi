-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 05.33
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paket4_luthfi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(19, 21, 5, 17, '25000.00'),
(19, 22, 3, 17, '7000.00'),
(21, 24, 1, 20, '17000.00'),
(21, 25, 4, 20, '21000.00'),
(22, 26, 1, 20, '17000.00'),
(22, 27, 3, 20, '7000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelepon`) VALUES
(1, 'Banyu luthfi winarno', 1, ''),
(2, 'Banyu luthfi winarno', 1, ''),
(3, 'Banyu luthfi winarno', 1, ''),
(4, 'Banyu luthfi winarno', 1, ''),
(5, 'Banyu luthfi winarno', 1, ''),
(6, 'Banyu luthfi winarno', 1, ''),
(7, 'banyu', 2, ''),
(8, 'Banyu luthfi winarno', 1, ''),
(9, 'Banyu luthfi winarno', 1, ''),
(10, 'Banyu luthfi winarno', 1, ''),
(11, 'Banyu luthfi winarno', 1, ''),
(12, 'Banyu luthfi winarno', 1, ''),
(13, 'Banyu luthfi winarno', 1, ''),
(14, 'Banyu luthfi winarno', 1, ''),
(15, 'Banyu luthfi winarno', 1, ''),
(16, 'Banyu luthfi winarno', 1, ''),
(17, 'Banyu luthfi winarno', 1, ''),
(18, 'Banyu luthfi winarno', 1, ''),
(19, 'Banyu luthfi winarno', 1, ''),
(20, 'Banyu luthfi winarno', 1, ''),
(21, 'Banyu luthfi winarno', 1, ''),
(22, 'Banyu luthfi winarno', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `Totalharga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `Totalharga`, `PelangganID`) VALUES
(1, '2024-02-26', '0.00', 0),
(2, '2024-02-26', '0.00', 0),
(3, '2024-02-26', '0.00', 0),
(4, '2024-02-26', '0.00', 0),
(5, '2024-02-26', '0.00', 0),
(6, '2024-02-27', '0.00', 0),
(7, '2024-02-27', '0.00', 0),
(8, '2024-02-27', '0.00', 0),
(9, '2024-02-27', '0.00', 0),
(10, '2024-02-27', '0.00', 0),
(11, '2024-02-27', '0.00', 0),
(12, '2024-02-27', '0.00', 0),
(13, '2024-02-27', '0.00', 0),
(14, '2024-02-27', '0.00', 0),
(15, '2024-02-27', '0.00', 0),
(16, '2024-02-27', '0.00', 0),
(17, '2024-02-27', '0.00', 0),
(18, '2024-02-27', '0.00', 0),
(19, '2024-02-28', '0.00', 0),
(20, '2024-02-28', '0.00', 0),
(21, '2024-02-28', '0.00', 0),
(22, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `Terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `foto`, `Terjual`) VALUES
(1, 'Ayam Geprek Original', '17000.00', 49, '27022024140253.jpg', 51),
(3, 'Es Teh Manis', '7000.00', 63, '27022024074952.jpg', 37),
(4, 'Milo Dinosaurus', '21000.00', 80, '27022024140007.jpg', 20),
(5, 'Ayam Geprek Mozarella', '25000.00', 3, '28022024031349.jpg', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Administrator','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Level`) VALUES
(5, 'Luthfi', 'cf0b59c73909ec5110eee21f3b0fc1a3', 'Petugas'),
(1000, 'Admin', 'e3afed0047b08059d0fada10f400c1e5', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PenjualanID` (`PenjualanID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`),
  ADD KEY `PenjualanID` (`PenjualanID`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_1` FOREIGN KEY (`ProdukID`) REFERENCES `produk` (`ProdukID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
