-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Sep 2024 pada 04.20
-- Versi server: 10.1.9-MariaDB
-- Versi PHP: 8.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `PASSWORD` mediumtext,
  `LAST_LOGIN` varchar(40) DEFAULT NULL,
  `ROLE` varchar(15) DEFAULT NULL,
  `FULLNAME` varchar(128) DEFAULT NULL,
  `JENKEL` char(1) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext,
  `PHOTO` mediumtext,
  `DTE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ROLE`, `FULLNAME`, `JENKEL`, `NO_TELP`, `ALAMAT`, `PHOTO`, `DTE_CREATED`) VALUES
('AD001', 'Anas', '195ace8d50de761419faf08845304398', '01-09-2024 11:40:13', 'superadmin', 'Ahmad Nasir, S.Ak', 'L', '081324126156', 'Plered, Purwakarta', 'img_872371.png', '2022-10-13'),
('AD002', 'siti12', 'db04eb4b07e0aaf8d1d477ae342bdff9', '25-01-2023 04:24:07', 'admin', 'Siti Mutoharoh', 'P', '081324126158', 'Plered, Purwakarta', 'th_(2).jpg', '2022-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext,
  `GENDER` char(1) DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` mediumtext,
  `D_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('AGT001', 'AD001', 'Nisrin Rizkilillah', 'Purwakarta', '05/20/2006', 'Kp. Cidangdeur', 'P', '083816725985', 'th_(2).jpg', '2022-12-31'),
('AGT002', 'AD001', 'RIFA PAUZIAH', 'PURWAKARTA', '05/05/2005', 'Kp. Tegal Lega', 'P', '087770131420', 'th_(2)1.jpg', '2022-12-31'),
('AGT003', 'AD001', 'AKMAL KAMALUDIN', 'Garut', '08/25/2001', 'Kp.Sukasari', 'L', '0882001025508', 'img_87237.png', '2022-12-31'),
('AGT004', 'AD001', 'DAVINA FIRZAFANYA SYABILLA', 'PURWAKARTA', '08/26/2006', 'JL. ALTERNATIF DESA CIGELAM', 'P', '0882001025516', 'th_(2)2.jpg', '2022-12-31'),
('AGT005', 'AD001', 'Nazwa Rudin', 'Karawang', '07/10/2005', 'Babakanmaja', 'P', '0882001025536', 'th_(2)3.jpg', '2022-12-31'),
('AGT006', 'AD001', 'Rizky Alfatir', 'Karawang', '10/28/2006', 'Cicadas', 'L', '0882001025516', 'img_872371.png', '2022-12-31'),
('AGT007', 'AD001', 'Taopian Yuda Assobar', 'Purwakarta', '06/24/2006', 'Kp. Cibodas', 'L', '088971581456', 'img_872372.png', '2022-12-31'),
('AGT008', 'AD001', 'Tedi Andriansyah', 'Purwakarta', '12/04/2006', 'Kp. CIbodong', 'L', '088971581458', 'img_872373.png', '2022-12-31'),
('AGT009', 'AD001', 'ASEP SURYANA', 'Purwakarta', '01/26/2005', 'Babakan Rameung', 'L', '0882001025513', 'img_872374.png', '2022-12-31'),
('AGT010', 'AD001', 'AZQIA SALMA SUJANA', 'Purwakarta', '05/09/2005', 'Pasir embe', 'P', '0882001025527', 'th_(2)4.jpg', '2022-12-31'),
('AGT011', 'AD001', 'HANI PEBRIANTI', 'Purwakarta', '02/12/2005', 'Harja', 'P', '0882001025529', 'th_(2)5.jpg', '2022-12-31'),
('AGT012', 'AD001', 'Ibnu Fiki Fauzi', 'Purwakarta', '07/06/1998', 'Purwakarta', 'L', '081324126', 'budak_ganteng_hayang_nginum2.jpg', '2023-01-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `ISBN` varchar(20) NOT NULL,
  `TITLE` varchar(150) DEFAULT NULL,
  `AUTHOR` varchar(128) DEFAULT NULL,
  `PUBLISHER` varchar(128) DEFAULT NULL,
  `YEAR` char(4) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `KELUAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_ADMIN`, `ISBN`, `TITLE`, `AUTHOR`, `PUBLISHER`, `YEAR`, `QTY`, `KELUAR`) VALUES
('BKO001', 'AD001', '978-602-427-146-6', 'Seni Budaya SMA/MA/SMK/MAK Kelas XI smstr 2', 'Sem  cornelyoes Bangun, Siswandi, Tati Narawati, & Jose Rizal Manua', 'PT.Gramedia', '2017', 8, 0),
('BKO002', 'AD001', '978-602-427-144-2', 'Seni Budaya SMA/MA/SMK/MAK Kelas X smstr 2', 'Zackiaria Soetedja, Dewi Suryati, Milasari, Agus Supriatna', 'PT.Gramedia', '2017', 2, 1),
('BKO003', 'AD001', '978-602-427-148-0', 'Seni Budaya SMA/MA/SMK/MAK Kelas XII smstr 2', 'Agus Budiman, Dewi Suriati Budiwati, Sukanta & Zakaria S Soetedja', 'PT.Gramedia', '2018', 7, 0),
('BKO004', 'AD001', '978-979-068-169-9', 'Fisika SMA/MA kelas X', 'Joko Sumarsono', 'Pusat Perbukuan', '2009', 8, 0),
('BKO005', 'AD001', '978-602-3449-94-1', 'Fisika SMA/MA Kelas XI', 'Sufi ani rufaida, Sarwanto', 'Mediatama', '2014', 1, 0),
('BKO006', 'AD001', '978-979-086-172-9', 'Fisika SMA/MA Kelas XI', 'Bambang Hariyadi', 'CV.Teguh Karya', '2010', 1, 0),
('BKO007', 'AD001', '978-979-068-193-4', 'Ekonomi 1 SMA/MA kelas X', 'Sri Nurmulyani, Agus Mahfudz, Leni Permana', 'Pusat Perbukuan', '2009', 3, 0),
('BKO008', 'AD001', '978-979-068-200-9', 'Ekonomi 3 SMA/MA Kelas XII', 'Sri Nurmulyani, Agus Mahfudz, Leni Permana', 'Pusat Perbukuan', '2009', 4, 0),
('BKO009', 'AD001', '978-602-3449-91-0', 'Ekonomi SMA/MA Kelas XI', 'Sari Dwi Astuti,  Heri sawiji', 'CV. Media Tama', '2014', 4, 0),
('BKO010', 'AD001', '978-979-068-197-2', 'Ekonomi 2 SMA/MA kelas XI', 'Sri Nurmulyani, Agus Mahfudz, Leni Permana', 'Pusat Perbukuan', '2010', 2, 0),
('BKO011', 'AD001', '978-979-068-180-4', 'Kimia 1 SMA/MA Kelas X', 'Budi Utami, Agung nugroho catur saputro, Lina mAhrdani, sri yamtina, Bakti mulyani', 'Pusat Perbukuan', '2010', 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `ID_DIPINJAM` int(11) NOT NULL,
  `ID_PINJAM` varchar(10) DEFAULT NULL,
  `ID_BUKU` varchar(10) DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `DENDA` int(11) DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`ID_DIPINJAM`, `ID_PINJAM`, `ID_BUKU`, `TGL_KEMBALI`, `DENDA`, `STATUS`) VALUES
(4, 'P221231001', 'BKO003', '2022-12-31', 0, 'Sudah Kembali'),
(5, 'P221231002', 'BKO009', '2022-12-31', 0, 'Sudah Kembali'),
(6, 'P221231003', 'BKO006', '2023-01-01', 0, 'Sudah Kembali'),
(7, 'P230101001', 'BKO005', '2023-01-02', 0, 'Sudah Kembali'),
(8, 'P230102001', 'BKO006', '2023-01-25', 8000, 'Sudah Kembali'),
(9, 'P230125001', 'BKO002', NULL, 0, 'Belum Kembali'),
(10, 'P230125001', 'BKO005', '2023-01-25', 0, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notif`
--

CREATE TABLE `notif` (
  `ID_NOTIF` int(11) NOT NULL,
  `ID_ADMIN` varchar(128) NOT NULL,
  `JUDUL` varchar(128) NOT NULL,
  `ISI` varchar(128) NOT NULL,
  `DT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notif`
--

INSERT INTO `notif` (`ID_NOTIF`, `ID_ADMIN`, `JUDUL`, `ISI`, `DT`) VALUES
(11, 'AD001', 'Peminjaman Buku', 'Untuk Petugas Buku yang sudah dibaca harap di simpan kembali kedalam layout yang sudah di tentukan.', '2022-10-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PINJAM` varchar(10) NOT NULL,
  `ID_ANGGOTA` varchar(10) DEFAULT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `JML_BUKU` int(11) NOT NULL,
  `STATS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PINJAM`, `ID_ANGGOTA`, `ID_ADMIN`, `TGL_PINJAM`, `JML_BUKU`, `STATS`) VALUES
('P221231001', 'AGT001', 'AD002', '2022-12-31', 1, 'Sudah Kembali'),
('P221231002', 'AGT004', 'AD002', '2022-12-31', 1, 'Sudah Kembali'),
('P221231003', 'AGT006', 'AD002', '2022-12-31', 1, 'Sudah Kembali'),
('P230101001', 'AGT004', 'AD002', '2023-01-01', 1, 'Sudah Kembali'),
('P230102001', 'AGT006', 'AD002', '2023-01-02', 1, 'Sudah Kembali'),
('P230125001', 'AGT002', 'AD002', '2023-01-25', 2, 'Belum Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpus`
--

CREATE TABLE `perpus` (
  `ID_PERPUS` int(11) NOT NULL,
  `NAMA_P` varchar(128) DEFAULT NULL,
  `ALAMAT_P` mediumtext,
  `ABOUT` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perpus`
--

INSERT INTO `perpus` (`ID_PERPUS`, `NAMA_P`, `ALAMAT_P`, `ABOUT`) VALUES
(3, 'PERPUSTAKAAN SMK MINNATUL HUDA', ' JL. Gg Coklat, Kp. Cibogo Peuntas RT 018 RW 009, Desa Cibogo Hilir, Kecamatan Plered, Kabupaten Purwakarta', 'Perpustakan SMK Minnatul Huda, Mengelola proses pendataan buku dan transaksi peminjaman serta pengembalian buku.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD UNIQUE KEY `ANGGOTA_PK` (`ID_ANGGOTA`),
  ADD KEY `MAKE_FK` (`ID_ADMIN`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD UNIQUE KEY `BUKU_PK` (`ID_BUKU`),
  ADD KEY `CREATE_FK` (`ID_ADMIN`);

--
-- Indeks untuk tabel `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD PRIMARY KEY (`ID_DIPINJAM`),
  ADD UNIQUE KEY `DETAIL_PINJAM_PK` (`ID_DIPINJAM`),
  ADD KEY `MEMILIKI_FK` (`ID_PINJAM`),
  ADD KEY `MENGAMBIL_FK` (`ID_BUKU`);

--
-- Indeks untuk tabel `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`ID_NOTIF`),
  ADD KEY `FK_NOTIF_MEMBUAT_ADMIN` (`ID_ADMIN`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PINJAM`),
  ADD UNIQUE KEY `PEMINJAMAN_PK` (`ID_PINJAM`),
  ADD KEY `MELAKUKAN_FK` (`ID_ANGGOTA`),
  ADD KEY `MELAYANI_FK` (`ID_ADMIN`);

--
-- Indeks untuk tabel `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`ID_PERPUS`),
  ADD UNIQUE KEY `PERPUS_PK` (`ID_PERPUS`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  MODIFY `ID_DIPINJAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `notif`
--
ALTER TABLE `notif`
  MODIFY `ID_NOTIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `perpus`
--
ALTER TABLE `perpus`
  MODIFY `ID_PERPUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_ANGGOTA_MAKE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_BUKU_CREATE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD CONSTRAINT `FK_DETAIL_P_MEMILIKI_PEMINJAM` FOREIGN KEY (`ID_PINJAM`) REFERENCES `peminjaman` (`ID_PINJAM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DETAIL_P_MENGAMBIL_BUKU` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `FK_NOTIF_MEMBUAT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_MELAKUKAN_ANGGOTA` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PEMINJAM_MELAYANI_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
