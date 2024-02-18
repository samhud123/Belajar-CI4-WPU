-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 04:58 AM
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
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', '1708089070_d9b1cd1bddb531678acb.jpg', NULL, '2024-02-16 13:11:10'),
(14, 'Spider Man', 'spider-man', 'Samirul Huda', 'Gramedia', '1708089535_3d6e46826cd26bf2c437.jpeg', '2024-02-16 13:18:42', '2024-02-16 13:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-02-16-134719', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1708092352, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Sakti Ardianto', 'Jln. R.M. Said No. 175, Bengkulu 90424, Sumut', '2012-08-14 03:44:03', '2024-02-18 02:10:31'),
(2, 'Mala Puspasari', 'Jr. Zamrud No. 84, Prabumulih 16904, Bali', '1996-07-03 08:26:08', '2024-02-18 02:10:31'),
(3, 'Ifa Hasanah', 'Jr. Jend. Sudirman No. 556, Sibolga 88076, Sulbar', '1973-08-09 22:34:35', '2024-02-18 02:10:31'),
(4, 'Sari Kuswandari', 'Jr. Aceh No. 257, Padangpanjang 24186, Jateng', '1971-10-05 15:20:54', '2024-02-18 02:10:31'),
(5, 'Jelita Tina Palastri S.H.', 'Psr. R.E. Martadinata No. 97, Bitung 33565, Pabar', '2001-02-06 07:56:19', '2024-02-18 02:10:31'),
(6, 'Vanesa Namaga', 'Gg. Astana Anyar No. 984, Payakumbuh 34891, Pabar', '1979-08-21 21:11:30', '2024-02-18 02:10:31'),
(7, 'Agus Mandala', 'Kpg. Basudewo No. 22, Bekasi 19213, Malut', '2012-11-01 13:42:46', '2024-02-18 02:10:31'),
(8, 'Jatmiko Suryono S.Gz', 'Psr. Yoga No. 616, Tidore Kepulauan 36349, Sulsel', '1998-01-26 19:04:00', '2024-02-18 02:10:31'),
(9, 'Agnes Pertiwi', 'Jln. K.H. Wahid Hasyim (Kopo) No. 931, Mataram 37414, Kalbar', '1970-12-05 14:07:10', '2024-02-18 02:10:31'),
(10, 'Zahra Usada', 'Ki. Zamrud No. 17, Prabumulih 45876, Bengkulu', '2004-11-24 02:51:51', '2024-02-18 02:10:31'),
(11, 'Drajat Hutapea', 'Kpg. Tubagus Ismail No. 103, Pangkal Pinang 86928, Bengkulu', '1995-01-05 13:40:24', '2024-02-18 02:10:31'),
(12, 'Ella Nasyidah', 'Ds. Batako No. 298, Semarang 60329, Sulut', '1970-06-15 06:20:02', '2024-02-18 02:10:31'),
(13, 'Irfan Winarno S.Ked', 'Dk. Rajiman No. 453, Sabang 44800, Sulbar', '1995-02-18 12:17:09', '2024-02-18 02:10:31'),
(14, 'Yono Banawa Gunawan M.TI.', 'Ds. Gatot Subroto No. 406, Banjarmasin 15324, Maluku', '2015-07-06 15:02:26', '2024-02-18 02:10:31'),
(15, 'Umar Januar', 'Ds. Otista No. 808, Denpasar 70621, Kaltim', '2006-12-15 06:51:54', '2024-02-18 02:10:31'),
(16, 'Vero Halim S.Pd', 'Psr. Bagonwoto  No. 878, Bitung 89511, Jatim', '1996-10-24 00:45:26', '2024-02-18 02:10:31'),
(17, 'Tami Lintang Nasyidah S.I.Kom', 'Ki. Urip Sumoharjo No. 408, Medan 89169, Sumut', '1971-05-11 16:50:35', '2024-02-18 02:10:31'),
(18, 'Salsabila Yunita Wulandari', 'Jr. Ahmad Dahlan No. 271, Mataram 84786, Riau', '2011-08-22 13:40:13', '2024-02-18 02:10:31'),
(19, 'Olga Galuh Waskita S.I.Kom', 'Ds. B.Agam Dlm No. 241, Pematangsiantar 65920, Sulsel', '2012-12-23 11:16:41', '2024-02-18 02:10:31'),
(20, 'Darmanto Saptono S.Farm', 'Kpg. Pintu Besar Selatan No. 794, Bandung 60223, NTT', '2013-07-22 03:09:37', '2024-02-18 02:10:31'),
(21, 'Dalima Hartati', 'Dk. Sutarto No. 315, Palangka Raya 29631, Kalbar', '1971-05-01 00:10:26', '2024-02-18 02:10:31'),
(22, 'Amelia Rahayu', 'Gg. Ujung No. 229, Sibolga 63928, Aceh', '2012-01-22 07:27:41', '2024-02-18 02:10:31'),
(23, 'Hardi Adikara Mansur S.E.I', 'Jln. Tentara Pelajar No. 239, Pekalongan 91263, Maluku', '2005-12-05 05:54:31', '2024-02-18 02:10:31'),
(24, 'Mala Karimah Haryanti', 'Gg. Basuki No. 342, Kotamobagu 43361, Kalteng', '1984-10-30 05:05:38', '2024-02-18 02:10:31'),
(25, 'Harsanto Irawan S.Gz', 'Gg. Yogyakarta No. 26, Ternate 86706, Sulut', '1978-10-09 07:40:16', '2024-02-18 02:10:31'),
(26, 'Ira Mardhiyah', 'Jln. Baha No. 983, Kediri 94786, Sulsel', '2009-02-04 11:20:15', '2024-02-18 02:10:31'),
(27, 'Victoria Wahyuni', 'Ds. Kyai Mojo No. 126, Administrasi Jakarta Timur 16702, Sulbar', '1977-11-18 11:55:15', '2024-02-18 02:10:31'),
(28, 'Taufan Mandala', 'Psr. Otista No. 913, Lhokseumawe 40199, Banten', '1973-03-02 19:49:54', '2024-02-18 02:10:31'),
(29, 'Putri Permata', 'Jr. Bambon No. 836, Solok 97387, NTB', '1976-06-06 11:40:45', '2024-02-18 02:10:31'),
(30, 'Agnes Mayasari', 'Ds. Lembong No. 233, Administrasi Jakarta Timur 35243, Kaltara', '2008-04-04 22:38:28', '2024-02-18 02:10:31'),
(31, 'Aurora Sakura Yolanda', 'Dk. Ujung No. 194, Cirebon 24650, NTB', '1970-04-26 15:26:45', '2024-02-18 02:35:08'),
(32, 'Kamila Novitasari', 'Ki. Abang No. 260, Tangerang Selatan 92969, Banten', '1971-01-08 02:19:27', '2024-02-18 02:35:08'),
(33, 'Harsaya Maheswara', 'Ki. Baiduri No. 473, Bukittinggi 63542, Kalbar', '2003-01-08 02:50:23', '2024-02-18 02:35:08'),
(34, 'Zulaikha Najwa Lailasari S.I.Kom', 'Dk. Sudirman No. 305, Subulussalam 38085, Kepri', '2000-01-05 04:31:44', '2024-02-18 02:35:08'),
(35, 'Vicky Riyanti', 'Psr. Jayawijaya No. 687, Jambi 42714, Malut', '1997-05-06 23:14:25', '2024-02-18 02:35:08'),
(36, 'Gatra Dabukke', 'Psr. Siliwangi No. 335, Tegal 53686, Banten', '1979-01-28 07:23:36', '2024-02-18 02:35:08'),
(37, 'Yunita Tami Laksmiwati', 'Gg. Bank Dagang Negara No. 634, Tanjung Pinang 44975, Sumut', '1970-02-07 23:25:53', '2024-02-18 02:35:08'),
(38, 'Rina Usada S.E.', 'Gg. Salak No. 220, Cirebon 89308, Pabar', '1980-02-02 05:45:25', '2024-02-18 02:35:08'),
(39, 'Viktor Ajimat Wasita S.Pt', 'Gg. Batako No. 250, Sungai Penuh 26954, Kalsel', '1996-01-22 23:46:13', '2024-02-18 02:35:08'),
(40, 'Bakda Setiawan', 'Ki. Krakatau No. 832, Cilegon 57302, Kalteng', '1993-02-07 05:38:28', '2024-02-18 02:35:08'),
(41, 'Aurora Puspita', 'Gg. Adisucipto No. 919, Bandung 68005, Sumbar', '1976-12-19 23:43:35', '2024-02-18 02:35:08'),
(42, 'Reksa Wahyudin', 'Ds. Baan No. 257, Pasuruan 82851, Sulteng', '2016-01-25 16:31:51', '2024-02-18 02:35:08'),
(43, 'Jamalia Lailasari', 'Jr. Industri No. 330, Lhokseumawe 75831, Gorontalo', '2015-05-17 12:55:34', '2024-02-18 02:35:08'),
(44, 'Darijan Viman Sinaga S.Sos', 'Psr. Bayam No. 160, Pekalongan 55853, Sumbar', '2017-12-21 10:16:11', '2024-02-18 02:35:08'),
(45, 'Jasmani Adriansyah', 'Ds. Bappenas No. 440, Denpasar 26622, Malut', '1994-11-27 17:10:54', '2024-02-18 02:35:08'),
(46, 'Devi Ira Palastri', 'Jr. Wahidin Sudirohusodo No. 956, Bandung 91178, Kalteng', '1990-06-06 21:58:20', '2024-02-18 02:35:08'),
(47, 'Ana Puspasari', 'Kpg. Baung No. 671, Banjarbaru 90193, Sultra', '2003-03-24 19:29:42', '2024-02-18 02:35:08'),
(48, 'Iriana Yolanda', 'Kpg. Balikpapan No. 906, Tanjungbalai 23005, Kepri', '2006-11-19 20:44:31', '2024-02-18 02:35:08'),
(49, 'Laksana Suwarno', 'Jr. Muwardi No. 290, Pasuruan 66358, NTT', '1988-04-22 20:38:59', '2024-02-18 02:35:08'),
(50, 'Slamet Galur Sihombing M.Farm', 'Kpg. Kiaracondong No. 562, Madiun 15472, Sumsel', '2001-08-30 12:31:37', '2024-02-18 02:35:08'),
(51, 'Salsabila Riyanti', 'Ds. Nanas No. 323, Lubuklinggau 52475, Bali', '1999-12-16 06:11:04', '2024-02-18 02:35:08'),
(52, 'Hardi Agus Nugroho M.TI.', 'Dk. Badak No. 36, Sibolga 28714, Bali', '1988-06-06 02:25:28', '2024-02-18 02:35:08'),
(53, 'Danuja Anggriawan S.Kom', 'Ki. Bank Dagang Negara No. 172, Tanjung Pinang 69783, Sumbar', '2012-02-15 10:22:27', '2024-02-18 02:35:08'),
(54, 'Darmana Wibisono', 'Jr. Mulyadi No. 886, Depok 18071, Papua', '1971-08-30 17:52:40', '2024-02-18 02:35:08'),
(55, 'Laila Hastuti', 'Kpg. Setia Budi No. 69, Singkawang 31312, Jambi', '2000-04-06 06:14:36', '2024-02-18 02:35:08'),
(56, 'Hasan Laswi Habibi', 'Kpg. Ahmad Dahlan No. 633, Administrasi Jakarta Timur 24611, Babel', '1982-12-26 21:50:10', '2024-02-18 02:35:08'),
(57, 'Eka Kasim Prayoga', 'Psr. Bank Dagang Negara No. 898, Tual 17655, Papua', '1991-09-28 22:26:29', '2024-02-18 02:35:08'),
(58, 'Harsanto Thamrin', 'Ds. Bacang No. 988, Bandar Lampung 23975, Jateng', '1983-04-28 14:31:19', '2024-02-18 02:35:08'),
(59, 'Wisnu Pratama', 'Ds. Sugiyopranoto No. 206, Solok 11934, Jabar', '1994-04-16 03:26:58', '2024-02-18 02:35:08'),
(60, 'Cakrawangsa Pangestu', 'Jln. Dago No. 700, Serang 13895, Sulsel', '1993-07-13 21:37:04', '2024-02-18 02:35:08'),
(61, 'Himawan Prasetya', 'Ds. Bakau Griya Utama No. 398, Ambon 93980, Kalsel', '1979-05-09 14:34:23', '2024-02-18 02:35:08'),
(62, 'Asmuni Suwarno', 'Gg. Basoka No. 937, Samarinda 84466, DIY', '2004-06-12 17:58:54', '2024-02-18 02:35:08'),
(63, 'Halima Yani Yolanda', 'Jln. Haji No. 879, Tanjungbalai 17497, Jabar', '1990-09-07 03:15:27', '2024-02-18 02:35:08'),
(64, 'Taufik Pradipta', 'Kpg. Jakarta No. 928, Kediri 51550, Kalbar', '2023-08-24 18:25:58', '2024-02-18 02:35:08'),
(65, 'Yuni Puspasari', 'Ki. Honggowongso No. 418, Parepare 96031, Pabar', '1993-05-06 14:32:28', '2024-02-18 02:35:08'),
(66, 'Emong Hidayanto M.Farm', 'Jr. Sumpah Pemuda No. 154, Tangerang Selatan 53438, NTT', '2022-12-22 10:32:21', '2024-02-18 02:35:08'),
(67, 'Endah Riyanti', 'Psr. Yoga No. 142, Ternate 52923, NTT', '2007-01-31 16:43:25', '2024-02-18 02:35:08'),
(68, 'Jono Sitompul', 'Ds. Bakti No. 349, Subulussalam 47570, Gorontalo', '1974-06-10 21:43:18', '2024-02-18 02:35:08'),
(69, 'Hamima Citra Haryanti S.Pt', 'Kpg. Kali No. 606, Subulussalam 46906, Sulsel', '1978-05-20 16:06:24', '2024-02-18 02:35:08'),
(70, 'Ibrani Jaiman Simanjuntak', 'Jr. Baranang No. 408, Lhokseumawe 93791, DIY', '2017-05-10 23:00:13', '2024-02-18 02:35:08'),
(71, 'Queen Hasanah', 'Dk. PHH. Mustofa No. 849, Dumai 60705, Jambi', '1970-02-16 05:05:19', '2024-02-18 02:35:08'),
(72, 'Anggabaya Heryanto Hutapea M.Pd', 'Psr. Gedebage Selatan No. 302, Solok 77761, Pabar', '1975-07-07 11:51:55', '2024-02-18 02:35:08'),
(73, 'Aisyah Azalea Purnawati', 'Gg. Umalas No. 411, Makassar 58737, Maluku', '1997-12-10 10:16:27', '2024-02-18 02:35:08'),
(74, 'Nabila Carla Winarsih', 'Dk. Banal No. 782, Serang 27413, DKI', '1999-07-22 11:33:03', '2024-02-18 02:35:08'),
(75, 'Bahuwarna Marpaung', 'Jr. Achmad No. 142, Pematangsiantar 33119, NTB', '1973-09-11 19:22:40', '2024-02-18 02:35:08'),
(76, 'Prasetyo Prayoga', 'Ds. Dipenogoro No. 981, Cimahi 78158, Malut', '1979-09-01 02:44:21', '2024-02-18 02:35:08'),
(77, 'Vanesa Oktaviani', 'Ki. Cemara No. 655, Samarinda 69056, Maluku', '1980-11-07 22:51:13', '2024-02-18 02:35:08'),
(78, 'Belinda Chelsea Farida S.T.', 'Gg. Imam No. 259, Kediri 14832, Jateng', '2006-01-21 16:56:09', '2024-02-18 02:35:08'),
(79, 'Rendy Mangunsong', 'Ds. Hayam Wuruk No. 655, Administrasi Jakarta Barat 25278, Sultra', '2022-12-14 23:11:08', '2024-02-18 02:35:08'),
(80, 'Elisa Kiandra Susanti S.Pt', 'Kpg. Achmad No. 96, Singkawang 85157, Sumbar', '2016-12-21 22:48:11', '2024-02-18 02:35:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
