-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 07:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `catatan` text NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun_ajaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `nis`, `kelas`, `keterangan`, `tanggal`, `nama`, `catatan`, `semester`, `tahun_ajaran`) VALUES
(15, 2345, '6A', 'alpha', '2019-10-12', 'Abdullah Faqih', 'di ubah', 'semester 1', '2019/2020'),
(16, 2355, '6A', 'sakit', '2019-10-13', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(17, 2345, '6A', 'sakit', '2019-10-14', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 2', '2019/2020'),
(19, 2345, '6A', 'sakit', '2019-10-14', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 2', '2020/2021'),
(21, 2345, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(22, 2347, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(23, 2349, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(24, 2351, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(25, 2354, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(26, 2353, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(27, 2356, '6A', 'sakit', '2019-10-16', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(28, 2378, '6B', 'sakit', '2019-10-17', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 2', '2019/2020'),
(29, 2373, '6B', 'sakit', '2019-10-17', 'Abdullah Faqih', 'ERROR KERNEL', 'semester 1', '2019/2020'),
(30, 2363, '6A', 'sakit', '2019-11-01', 'Ismu Nurkhasanah', 'Seng Benerrrr', 'semester 1', '2019/2020'),
(31, 2345, '6A', 'sakit', '2019-11-01', 'Mahardhika Arya Bimnantara', 'Sakit Hati', 'semester 1', '2019/2020'),
(32, 2348, '6A', 'sakit', '2019-11-01', 'Adelia Tri Ramadhani', 'Sakit Hati', 'semester 1', '2019/2020'),
(33, 2345, '6A', 'sakit', '2019-11-01', 'Mahardhika Arya Bimnantara', '', 'semester 1', '2019/2020'),
(34, 2345, '6A', 'sakit', '2019-11-01', 'Mahardhika Arya Bimnantara', '', 'semester 1', '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `NamaLengkap` text NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `NamaLengkap`, `kelas`, `username`, `password`, `level`) VALUES
(2, 'Ibu Marsiah', '6B', 'Pengabsen 6B', '$2y$10$/hsSYkcLmhEG5RW8v5lbzOp3.QVUNY8AU/jbfAHWrP6x3XMEgPxlG', 'pengabsen'),
(3, 'Pak Maryanto', '6A', 'Pengabsen 6A', '$2y$10$dGV.sZ.Q3mOcOmaootKmfubF5XY4G9Q0d61UAPBTgNOfGPSTvEzGS', 'pengabsen'),
(4, 'Mahardhika Arya Bimantara', '', 'admin', '$2y$10$G5MLJFfZAKq/m9bRwvzwlehx/NvXsJk2DP5wE8GC9CrYpemUqx4EG', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `nama`) VALUES
(1, '6A'),
(2, '6B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaturan`
--

CREATE TABLE `tb_pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengaturan`
--

INSERT INTO `tb_pengaturan` (`id`, `nama`) VALUES
(1, 'semester 1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nis` int(11) NOT NULL,
  `tahun_ajaran` text NOT NULL,
  `siswa_tahun` varchar(10) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_ayah` varchar(15) NOT NULL,
  `no_ibu` varchar(15) NOT NULL,
  `alamat_ayah` text NOT NULL,
  `alamat_ibu` text NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nama`, `foto`, `alamat`, `telepon`, `kelas`, `nisn`, `nis`, `tahun_ajaran`, `siswa_tahun`, `nama_ayah`, `nama_ibu`, `no_ayah`, `no_ibu`, `alamat_ayah`, `alamat_ibu`, `agama`, `status`) VALUES
(1, 'Mahardhika Arya Bimnantara', '', 'Banjarnegara', '085227199636', '6A', '00237563727', 2345, '2019/2020', '', '', '', '', '', '', '', '', ''),
(2, 'Arya Mahardhika', '', 'Banjarnegara', '858124185', '6A', '237563728', 2346, '2019/2020', '', '', '', '', '', '', '', '', ''),
(3, 'Abdullah Faqih', '', 'Banjarnegara', '858124186', '6A', '237563729', 2347, '2019/2020', '', '', '', '', '', '', '', '', ''),
(4, 'Adelia Tri Ramadhani', '', 'Banjarnegara', '858124187', '6A', '237563730', 2348, '2019/2020', '', '', '', '', '', '', '', '', ''),
(5, 'Alfieka Maisaroh', '', 'Banjarnegara', '858124188', '6A', '237563731', 2349, '2019/2020', '', '', '', '', '', '', '', '', ''),
(6, 'Aufa Ariq Amanulloh', '', 'Banjarnegara', '858124189', '6A', '237563732', 2350, '2019/2020', '', '', '', '', '', '', '', '', ''),
(7, 'Awang Afri Nugroho', '', 'Banjarnegara', '858124190', '6A', '237563733', 2351, '2019/2020', '', '', '', '', '', '', '', '', ''),
(8, 'Desi Nur Anggreani', '', 'Banjarnegara', '858124191', '6A', '237563734', 2352, '2019/2020', '', '', '', '', '', '', '', '', ''),
(9, 'Dwi Syafrilia', '', 'Banjarnegara', '858124192', '6A', '237563735', 2353, '2019/2020', '', '', '', '', '', '', '', '', ''),
(10, 'Dwiki Bayu Ardiansyah', '', 'Banjarnegara', '858124193', '6A', '237563736', 2354, '2019/2020', '', '', '', '', '', '', '', '', ''),
(11, 'Erlita  Mardiantini', '', 'Banjarnegara', '858124194', '6A', '237563737', 2355, '2019/2020', '', '', '', '', '', '', '', '', ''),
(12, 'Felisa Dwi Utami Putri', '', 'Banjarnegara', '858124195', '6A', '237563738', 2356, '2019/2020', '', '', '', '', '', '', '', '', ''),
(13, 'Gaiska Artama Putra', '', 'Banjarnegara', '858124196', '6A', '237563739', 2357, '2019/2020', '', '', '', '', '', '', '', '', ''),
(14, 'Ghani Hindam Fadhillah Ahmad', '', 'Banjarnegara', '858124197', '6A', '237563740', 2358, '2019/2020', '', '', '', '', '', '', '', '', ''),
(15, 'Helmi Alfa Izzuddin', '', 'Banjarnegara', '858124198', '6A', '237563741', 2359, '2019/2020', '', '', '', '', '', '', '', '', ''),
(16, 'Ira Cahya Melati', '', 'Banjarnegara', '858124199', '6A', '237563742', 2360, '2019/2020', '', '', '', '', '', '', '', '', ''),
(17, 'Irfan Agil Wicaksono', '', 'Banjarnegara', '858124200', '6A', '237563743', 2361, '2019/2020', '', '', '', '', '', '', '', '', ''),
(18, 'Irkham Fatkhur Rifa\'I', '', 'Banjarnegara', '858124201', '6A', '237563744', 2362, '2019/2020', '', '', '', '', '', '', '', '', ''),
(19, 'Ismu Nurkhasanah', '', 'Banjarnegara', '858124202', '6A', '237563745', 2363, '2019/2020', '', '', '', '', '', '', '', '', ''),
(20, 'Latif Nugraha Purwa', '', 'Banjarnegara', '858124203', '6A', '237563746', 2364, '2019/2020', '', '', '', '', '', '', '', '', ''),
(21, 'M. Sabar Setiaji', '', 'Banjarnegara', '858124204', '6B', '237563747', 2365, '2019/2020', '', '', '', '', '', '', '', '', ''),
(22, 'Mahardhika Arya Bimantara', '', 'Banjarnegara', '858124205', '6B', '237563748', 2366, '2019/2020', '', '', '', '', '', '', '', '', ''),
(23, 'Manda Meylafasya', '', 'Banjarnegara', '858124206', '6B', '237563749', 2367, '2019/2020', '', '', '', '', '', '', '', '', ''),
(24, 'Maulina Catur Wulandari', '', 'Banjarnegara', '858124207', '6B', '237563750', 2368, '2019/2020', '', '', '', '', '', '', '', '', ''),
(25, 'Maya Astriyani', '', 'Banjarnegara', '858124208', '6B', '237563751', 2369, '2019/2020', '', '', '', '', '', '', '', '', ''),
(26, 'Meivanny Erlisa Putri', '', 'Banjarnegara', '858124209', '6B', '237563752', 2370, '2019/2020', '', '', '', '', '', '', '', '', ''),
(27, 'Muhammad Alan Setyo Adi', '', 'Banjarnegara', '858124210', '6B', '237563753', 2371, '2019/2020', '', '', '', '', '', '', '', '', ''),
(28, 'Prima Tri Lestari', '', 'Banjarnegara', '858124211', '6B', '237563754', 2372, '2019/2020', '', '', '', '', '', '', '', '', ''),
(29, 'Ratna Kusumaningtias', '', 'Banjarnegara', '858124212', '6B', '237563755', 2373, '2019/2020', '', '', '', '', '', '', '', '', ''),
(30, 'Sahid Anwar', '', 'Banjarnegara', '858124213', '6B', '237563756', 2374, '2019/2020', '', '', '', '', '', '', '', '', ''),
(31, 'Sita Nurhasanah', '', 'Banjarnegara', '858124214', '6B', '237563757', 2375, '2019/2020', '', '', '', '', '', '', '', '', ''),
(32, 'Syaifulloh Abdul Mutakin', '', 'Banjarnegara', '858124215', '6B', '237563758', 2376, '2019/2020', '', '', '', '', '', '', '', '', ''),
(33, 'Ulyan Hanafi', '', 'Banjarnegara', '858124216', '6B', '237563759', 2377, '2019/2020', '', '', '', '', '', '', '', '', ''),
(34, 'Uswatun Triana', '', 'Banjarnegara', '858124217', '6B', '237563760', 2378, '2019/2020', '', '', '', '', '', '', '', '', ''),
(35, 'Wasi Aspirawan', '', 'Banjarnegara', '858124218', '6B', '237563761', 2379, '2019/2020', '', '', '', '', '', '', '', '', ''),
(36, 'Wicaksono Juni Irawan', '', 'Banjarnegara', '858124219', '6B', '237563762', 2380, '2019/2020', '', '', '', '', '', '', '', '', ''),
(37, 'Yogi Epriano', '', 'Banjarnegara', '858124220', '6B', '237563763', 2381, '2019/2020', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun`
--

CREATE TABLE `tb_tahun` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tahun`
--

INSERT INTO `tb_tahun` (`id`, `nama`) VALUES
(1, '2019/2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tahun`
--
ALTER TABLE `tb_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
