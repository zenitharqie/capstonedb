-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 10:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bantubangkit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id_campaign` int(10) NOT NULL,
  `nama_campaign` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `deskripsi_campaign` text NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `dana_target_campaign` int(255) DEFAULT 1,
  `dana_terkumpul_campaign` int(255) NOT NULL DEFAULT 1,
  `tanggal_buka_campaign` date NOT NULL,
  `tanggal_tutup_campaign` date NOT NULL,
  `rekening_campaign` varchar(255) DEFAULT NULL,
  `status_campaign` varchar(255) DEFAULT 'Tidak Berjalan',
  `verifikasi_campaign` varchar(255) DEFAULT 'Not Verified',
  `foto_campaign` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id_campaign`, `nama_campaign`, `username`, `deskripsi_campaign`, `nama_kategori`, `nama_provinsi`, `dana_target_campaign`, `dana_terkumpul_campaign`, `tanggal_buka_campaign`, `tanggal_tutup_campaign`, `rekening_campaign`, `status_campaign`, `verifikasi_campaign`, `foto_campaign`) VALUES
(16, 'Rumah Untuk Kucing Jalanan', NULL, 'Bu Rima adalah Pensiunan berhati malaikat yang ingin membantu kucing terlantar. Namun, dari tahun ke tahun jumlah kucing terlantar yang ditampung melunjak tetapi tidak diikuti dana pensiun yang didapat Bu Rima. Bantu Kucing Jalanan, Bantu Bu Risma!', 'Hewan', 'Kalimantan Barat', 1000000, 81060000, '2024-04-05', '2024-04-19', NULL, 'Tidak Berjalan', 'Verified', '66100aa8cdb2e.jpg'),
(18, 'Bantu Bangun Gereja', NULL, 'Di Samarinda gereja adalah tempat aman bagi mereka. Gereja sangat krusial untu menunjung kebutuhan spiritual mereka. Sayangnya gereja di Samarinda masih belum mencukupi dibandingkan umatnya. Mari bantu bangun gereja di Samarinda!', 'Rumah Ibadah', 'Kalimantan Timur', 9000000, 7000000, '2024-04-19', '2025-05-08', NULL, 'Berjalan', 'Verified', '661015b4ae08e.jpg'),
(22, 'Mesjid yang Layak Untuk Semuanya', NULL, 'Mesjid di Daerah ini sangatlah dalam sehingga perlu banyak usaha untuk bisa membangun rumah di sana. Mereka perlu bantuan kalian, membangun mesjid yang layak untuk mereka semua! Berikan kehusyukkan mereka semua di bulan puasa ini.', 'Rumah Ibadah', 'Nanggroe Aceh Darussalam', 50000000, 1, '2024-04-12', '2025-05-01', NULL, 'Berjalan', 'Verified', '66139cdb988f1.jpg'),
(23, 'Pak Toni Ingin Membeli Beras', NULL, 'Pak Toni adalah pensiunan yang sebelum bekerja di badan usaha milik negara. Namun nasib buruk membuat perusahaan tersebut bangkrut dan PHK Pak Toni tanpa uang pesagon sepeserpun. Pak Toni memiliki 3 anak dan seorang istri. Pak Toni bahkan tidak mampu membeli beras', 'Kemanusiaan', 'Bengkulu', 9000000, 1, '2024-04-09', '2025-04-27', NULL, 'Berjalan', 'Verified', '6613b29db3537.jpg'),
(24, 'Dek Rafif ingin Kemotrapi', NULL, 'Dek Rafif adalah siswa di Sekolah dasar yang punya banyak mimpi untuk bisa berkontribusi di dunia menjadi Pilot. Namun, mimpi ini harus kandas karena Dek Rafif terkena kanker ganas yang membuat hidupnya berputar balik. Dek Rafif memerlukan Kemotrapi namun keluarganya belum mampu untuk memenuhi itu. Bantu Dek Rafif!', 'Anak-Anak', 'DKI Jakarta', 10000000, 1, '2024-04-27', '2025-05-23', NULL, 'Berjalan', 'Verified', '6613b396b54c9.jpg'),
(25, 'Mudahkan Jalan ke Sekolah', NULL, 'Sekolah di pedalaman papua gunung sanagtalah sulit untuk diakses, memerlukan waktu 6 jam dari pemukiman hingga menuju ke sekolah. Jalan yang dilalui juga sanagt tidak memungkinkan untuk dilewati karena harus melewati sungai tanpa jembatan. Bantu anak papua penggunungan mendapatkan pendidikan yang layak', 'Anak-Anak', 'Papua Pegunungan', 7500000, 94001, '2024-04-08', '2025-06-27', NULL, 'Berjalan', 'Verified', '6613b45b4fafb.jpeg'),
(26, 'Kali Ciliwing Hancur', NULL, 'Kali Ciliwung sudah lama menjadi perairan yang sanagt mencemaskan karena banyaknya sampah di sana, baru-baru ini bendungan di daerah kali ciliwng sudah sangat rusak dan meledak. Perlu bantuan cepat dari kita semua atau jakarta akan sangat tercemar', 'Lingkungan', 'DKI Jakarta', 1500000, 1, '2024-04-27', '2025-04-30', NULL, 'Berjalan', 'Verified', '6613b5d9b1cce.jpeg'),
(27, 'Jalan Meledak di Maluku Utara', NULL, 'Jalan di Maluku Utara adalah jalan yang menjadi jalan rempah utama. Namun, harus mengalami nasib buruk yang dapat dilihat pada gambar tesebut. Bantu semuanya mengakses jalan yang sehat sehingga ekonomi Berjalan', 'Lingkungan', 'Maluku Utara', 1000000000, 1, '2024-04-04', '2025-04-20', NULL, 'Berjalan', 'Verified', '6613b6885e6ef.jpg'),
(28, 'Palestina Perlu Suara', NULL, 'Seperti biasanya konflik Israel-Palestina membawa banyak petaka bagi negara Palestina ini. Bantu Mereka yang Membutuhkan dan berikan mereka harapan untuk hidup dan menjalankan kehidupan mereka yang sangat berharga. Semua kehidupan berharga jagalah mereka!', 'Kegiatan Sosial', 'DKI Jakarta', 777777777, 1, '2024-04-12', '2024-05-03', NULL, 'Tidak Berjalan', 'Verified', '6613b7349092e.jpeg'),
(29, 'Bantu Pak Deni Beli Susu', NULL, 'Pak Deni adalah seorang satpam komplek yang harus memenuhi kebutuhan dari gaji bulannya. Pak Deni baru saja dianugerahi anak lelaki bersama istrinya. Namun, gaji yang dimiliki belum cukup untuk memenuhi semua kebutuhan yang ada termasuk membeli susu untuk Dek Rumi. Bantu Pak Deni memenuhi nutrisi untuk anaknya bantu mereka untuk menggapai mimpi cemerlang mereka untuk kontribusi yang ada.\r\n', 'Anak-Anak', 'Jawa Timur', 700000, 1, '2024-04-08', '2024-04-08', NULL, 'Tidak Berjalan', 'Verified', '6613f437e9fc7.jpg'),
(34, 'Pak Toni Ingin Membeli Beras', NULL, 'Bisa', 'Kesehatan', 'Kalimantan Tengah', 15000000, 1, '2024-05-02', '2024-05-30', NULL, 'Tidak Berjalan', 'Not Verified', NULL),
(36, 'Aman dari Rabies', NULL, 'contoh', 'Hewan', 'Jawa Barat', 50000000, 1, '2024-05-18', '2024-05-10', NULL, 'Tidak Berjalan', 'Verified', '6656b23cc9a95.jpg'),
(38, 'Pak Toni Ingin Membeli Beras', '', 'sda s', 'Hewan', 'Sumatera Utara', 50000000, 1, '2024-06-05', '2024-06-19', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(39, 'ikan', '', ' sads ', 'Hewan', 'Nanggroe Aceh Darussalam', 1, 1, '2024-06-11', '2024-06-17', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(40, 'ikan', 'singa', ' daf as', 'Kesehatan', 'Sumatera Utara', 50000000, 1, '2024-06-17', '2024-06-17', NULL, 'Tidak Berjalan', 'Not Verified', '6670530ca993c.jpg'),
(41, '\r\nWarning:  Undefined variable $nama_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(42, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(43, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(44, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(45, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(46, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(47, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(48, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 38\r\n', '', '\r\nWarning:  Undefined variable $deskripsi_campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 39\r\n', '\r\nWarning:  Undefined variable $nama_kategori in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 40\r\n', '\r\nWarning:  Undefined variable $nama_provinsi in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 41\r\n', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(49, '\r\nWarning:  Undefined variable $campaign in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 36\r\n\r\nWarning:  Trying to access array offset on value of type null in C:xampphtdocsBantuBangkit2user_pembayaranpage.php on line 36\r\n', '', '', '', '', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(51, '', '', '', '', '', 0, 1, '0000-00-00', '0000-00-00', NULL, 'Tidak Berjalan', 'Not Verified', ''),
(52, ' asd', 'singa', 'as da', 'Hewan', 'Banten', 1200, 1, '2024-06-04', '2024-06-19', '11111111', 'Tidak Berjalan', 'Not Verified', '66711c71e18a9.jpeg'),
(53, ' asd', 'singa', 'as da', 'Hewan', 'Banten', 1200, 1, '2024-06-04', '2024-06-19', '11111111', 'Tidak Berjalan', 'Not Verified', '66711e222b1d9.jpeg'),
(54, 'Pak Toni Ingin Membeli Beras', 'admin2', 'asdf ', 'Hewan', 'Sumatera Utara', 50000000, 1, '2024-06-01', '2024-06-29', '11111', 'Tidak Berjalan', 'Not Verified', ''),
(55, 'Pak Toni Ingin Membeli Beras', 'singa', 'sad', 'Hewan', 'Nanggroe Aceh Darussalam', 50000000, 1, '2024-06-07', '2024-06-27', '11111', 'Tidak Berjalan', 'Not Verified', '66712f27ac785.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(255) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `foto_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(16, 'Hewan', '66116c2ee1bb6.jpg'),
(17, 'Kesehatan', '66116cc81d05a.jpg'),
(18, 'Anak-Anak', '66116d025adba.jpg'),
(19, 'Bencana Alam', '66116fcc9962c.jpg'),
(20, 'Kemanusiaan', '66116fff97a5a.jpg'),
(21, 'Rumah Ibadah', '6611708e9bb84.jpg'),
(22, 'Kegiatan Sosial', '661170b2bcf08.jpg'),
(23, 'Lingkungan', '661170db1cffe.jpg'),
(24, 'Infrastuktur', '6611712472c68.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(255) NOT NULL,
  `nama_metode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_metode`) VALUES
(1, 'BNI'),
(2, 'BCA'),
(3, 'Dana'),
(4, 'Gopay'),
(5, 'ShopeePay'),
(6, 'BSI'),
(7, 'OVO'),
(8, 'BRI'),
(9, 'Mandiri'),
(10, 'Bank Permata');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(255) NOT NULL,
  `id_campaign` int(255) DEFAULT NULL,
  `nama_campaign` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tanggal_pembayaran` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `metode_pembayaran` varchar(255) NOT NULL DEFAULT '',
  `nominal_pembayaran` int(255) NOT NULL,
  `status_pembayaran` varchar(255) DEFAULT 'Not Verified',
  `pesan_pembayaran` text NOT NULL,
  `foto_pembayaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_campaign`, `nama_campaign`, `name`, `tanggal_pembayaran`, `metode_pembayaran`, `nominal_pembayaran`, `status_pembayaran`, `pesan_pembayaran`, `foto_pembayaran`) VALUES
(21, 25, 'Mudahkan Jalan ke Sekolah', 'singa', '2024-06-18 06:50:25', 'BNI', 1000, 'Not Verified', 'asd', '66711af0d35bb.jpeg'),
(22, 25, 'Mudahkan Jalan ke Sekolah', 'singa', '2024-06-18 07:00:25', 'BNI', 80000, 'Verified', 'asda', '6671302a30074.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(255) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `foto_provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`, `foto_provinsi`) VALUES
(1, 'Nanggroe Aceh Darussalam', ''),
(2, 'Sumatera Utara', ''),
(3, 'Sumatera Selatan', ''),
(4, 'Sumatera Barat', ''),
(5, 'Bengkulu', ''),
(6, 'Riau', ''),
(7, 'Kepulauan Riau', ''),
(8, 'Jambi', ''),
(9, 'Lampung', ''),
(10, 'Bangka Belitung', ''),
(11, 'Kalimantan Barat', ''),
(12, 'Kalimantan Timur', ''),
(13, 'Kalimantan Selatan', ''),
(14, 'Kalimantan Tengah', ''),
(15, 'Kalimantan Utara', ''),
(16, 'Banten', ''),
(17, 'DKI Jakarta', ''),
(18, 'Jawa Barat', ''),
(19, 'Jawa Tengah', ''),
(20, 'Daerah Istimewa Yogyakarta', ''),
(21, 'Jawa Timur', ''),
(22, 'Bali', ''),
(23, 'Nusa Tenggara Timur', ''),
(24, 'Nusa Tenggara Barat', ''),
(25, 'Gorontalo', ''),
(26, 'Sulawesi Barat', ''),
(27, 'Sulawesi Tengah', ''),
(28, 'Sulawesi Utara', ''),
(29, 'Sulawesi Tenggara', ''),
(30, 'Sulawesi Selatan', ''),
(31, 'Maluku Utara', ''),
(32, 'Maluku', ''),
(33, 'Papua Barat', ''),
(34, 'Papua', ''),
(35, 'Papua Tengah', ''),
(36, 'Papua Pegunungan', ''),
(37, 'Papua Selatan', ''),
(38, 'Papua Barat Daya', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user',
  `user_status` varchar(255) NOT NULL DEFAULT 'Active',
  `foto_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`, `user_status`, `foto_user`) VALUES
(1, 'admin', 'admin@gmail.com', '12345', 'admin', 'Active', ''),
(19, 'user', 'user@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'Active', ''),
(20, 'singa', 'singa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'Active', ''),
(21, 'admin2', 'admin2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', 'Active', ''),
(22, 'Hansen Dafa', 'hansen.pramudya@gmail.com', 'e02b915b6080d6087f3d8d75dd11a65c', 'user', 'Active', ''),
(23, 'Rizal', 'rizal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'Active', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id_campaign`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id_campaign` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id_provinsi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
