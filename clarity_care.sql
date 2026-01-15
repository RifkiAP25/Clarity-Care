-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 11:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clarity_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `deskripsi`, `gambar`, `stok`, `harga`, `kategori`, `tanggal_update`) VALUES
(5, 'bodrex', '\r\n    Dengan tablet lapis ganda, Bodrex dapat cepat bereaksi atasi sakit kepala, menurunkan demam, dan sakit gigi.\r\n    Kandungan paracetamol dan kafein meringankan rasa sakit tanpa membuat kantuk.\r\n    Aturan pakai sesuai usia:\r\n        Anak-anak usia 6-12 tahun: 0,5-1 tablet, 3-4 kali sehari.\r\n        Dewasa dan anak-anak di atas 12 tahun: 1 tablet, 3-4 kali sehari.\r\n', 'Bodrex.jpg', 40, 5000.00, '', '2024-12-28 11:13:43'),
(6, 'Sanadryl', '\r\n    Obat batuk berdahak disertai gejala flu, hidung tersumbat, bersin-bersin, mata berair, gatal pada saluran pernapasan dan tenggorokan.\r\n    Meningkatkan volume dan mengurangi kekentalan lendir, mempermudah pengeluaran dahak dari saluran napas.\r\n    Komposisi: Tiap 5 mL sirup mengandung diphenhydramine HCl 12.5 mg, ammonium klorida 100 mg, K-guaiacolsulfonate 30 mg, natrium citrate 50 mg, mentol 1 mg.\r\n    Aturan Sesuai Usia :\r\n        Dosis: Dewasa 2 sendok teh (10 mL), 3-4 kali sehari. Anak-anak 1 sendok teh (5 mL), 3-4 kali sehari.\r\n        Kemasan: Botol isi 120 mL.\r\n', 'Sanadryl.jpg', 10, 17500.00, '', '2024-12-28 11:16:35'),
(7, 'Neo Entrostop', ' Merupakan obat untuk mengatasi diare dengan kandungan Attapulgite dan Pektin.\r\n• Obat ini dapat digunakan untuk mengobati diare non spesifik.\r\n• Komposisi: Attapulgite koloid aktif 650 mg dan Pektin 50 mg.\r\n• Dosis:\r\n\r\n    Dewasa dan Anak > 12 tahun: 2 tablet setiap kali setelah diare, maksimal 12 tablet per hari (24 jam).\r\n    Anak 6-12 tahun: 1 tablet setiap kali setelah diare, maksimal 6 tablet per hari (24 jam).\r\n\r\n', 'NeoEntrostop.jpg', 47, 8500.00, '', '2024-12-28 11:28:47'),
(8, 'Mylanta', ' Mylanta adalah obat yang bermanfaat untuk meredakan gejala sakit maag, seperti sakit perut yang disebabkan oleh mual dan perih.\r\n• Digunakan untuk menangani asam lambung berlebih pada penderita gastritis, tukak lambung, atau GERD.\r\n• Mengandung antasida, seperti aluminium hidroksida dan magnesium hidroksida untuk menetralkan asam lambung berlebih.\r\n• Varian Mylanta Cair dan Mylanta tablet mengandung tambahan simethicone untuk meredakan gejala kelebihan asam lambung, seperti mual atau perut terasa perih.\r\n• Bisa dikonsumsi sebelum atau sesudah makan.', 'Mylanta.jpg', 47, 19000.00, '', '2024-12-28 11:54:29'),
(9, 'Viks', 'VICKS Formula 44 Sirup Obat Batuk 54 ml adalah sirup obat batuk yang mengandung Dextromethorphan HBr dan Doxylamine Succinate.\r\n• Digunakan untuk mengatasi batuk kering, bersin-bersin, dan tenggorokan gatal.\r\n• Membantu meringankan batuk tidak berdahak disertai bersin-bersin atau alergi.\r\n• Cara Pakai:\r\n\r\n    Gunakan setiap 4 jam sesuai kebutuhan, sampai 6 kali sehari.\r\n    Dewasa (12 tahun ke atas): 2 sendok takar (10 mL).\r\n    Anak-anak (6-12 tahun): 1 sendok takar (5 mL).\r\n    Atau gunakan sesuai petunjuk dokter.\r\n\r\n• Komposisi:\r\n\r\n    Setiap 5 mL mengandung:\r\n    Dextromethorphan Hydrobromide 5 mg.\r\n    Doxylamine Succinate 2 mg.\r\n    Alcohol 10.5%.\r\n\r\n', 'Viks.jpg', 30, 38000.00, '', '2024-12-28 11:57:03'),
(11, 'Panadol', '• Merupakan obat dengan kandungan Paracetamol yang dapat digunakan untuk meringankan rasa sakit seperti sakit kepala, sakit gigi, dan sakit pada otot, serta menurunkan demam.\r\n• Paracetamol bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) dan menghambat sintesis prostaglandin sehingga mengurangi nyeri ringan hingga sedang (analgesik).\r\n• Indikasi Umum:\r\n\r\n    Meredakan nyeri ringan hingga sedang seperti sakit kepala, sakit gigi, sakit otot, serta menurunkan demam.\r\n\r\n• Komposisi:\r\n\r\n    Setiap kaplet mengandung Paracetamol 500 mg.\r\n\r\n• Dosis:\r\n\r\n    Dewasa dan anak usia > 12 tahun: 1-2 kaplet, 3-4 kali sehari (maksimum 8 kaplet dalam 24 jam).\r\n    Anak-anak usia 6-11 tahun: 1/2 - 1 kaplet, 3-4 kali sehari (maksimum 4 kaplet dalam 24 jam).\r\n\r\n• Aturan Pakai:\r\n\r\n    Dikonsumsi sebelum atau sesudah makan', 'Panadol.jpg', 10, 13000.00, '', '2024-12-30 12:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_details` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_details`, `total_price`, `payment_method`, `created_at`) VALUES
(12, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 17500, 'bank', '2024-12-04 08:35:55'),
(13, '[{\"product\":\"1\",\"quantity\":\"1\",\"total\":\"Rp 5.000\"},{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 24000, 'bank', '2024-12-26 06:09:38'),
(14, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"},{\"product\":\"6\",\"quantity\":\"2\",\"total\":\"Rp 26.000\"}]', 45000, 'bank', '2024-12-26 06:23:38'),
(22, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 17500, 'bank', '2024-12-26 07:34:51'),
(23, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-26 10:41:21'),
(24, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-26 10:41:42'),
(25, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 17500, 'bank', '2024-12-26 10:42:50'),
(26, '[{\"product\":\"1\",\"quantity\":\"1\",\"total\":\"Rp 5.000\"}]', 5000, 'bank', '2024-12-26 11:05:30'),
(27, '[{\"product\":\"1\",\"quantity\":\"1\",\"total\":\"Rp 5.000\"}]', 5000, 'bank', '2024-12-28 11:54:55'),
(28, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-28 12:09:06'),
(29, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-28 12:14:44'),
(30, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"}]', 38000, 'bank', '2024-12-28 12:15:33'),
(31, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"}]', 38000, 'ovo', '2024-12-28 12:15:39'),
(32, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 17500, 'ovo', '2024-12-28 12:18:16'),
(33, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 17500, 'ovo', '2024-12-28 12:27:10'),
(34, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 0\"}]', 17500, 'ovo', '2024-12-28 12:27:56'),
(35, '[{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 0\"}]', 17500, 'ovo', '2024-12-28 12:28:40'),
(36, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"},{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 55500, 'bank', '2024-12-28 12:30:12'),
(37, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"},{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 55500, 'gopay', '2024-12-28 12:34:28'),
(38, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"},{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 55500, 'gopay', '2024-12-28 12:34:42'),
(39, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"},{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 55500, 'bank', '2024-12-28 12:34:57'),
(40, '[{\"product\":\"5\",\"quantity\":\"1\",\"total\":\"Rp 38.000\"},{\"product\":\"2\",\"quantity\":\"1\",\"total\":\"Rp 17.500\"}]', 55500, 'bank', '2024-12-28 12:37:54'),
(41, '[{\"product\":\"0\",\"quantity\":\"1\",\"total\":\"Rp 0\"}]', 0, 'bank', '2024-12-28 13:06:22'),
(42, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-28 13:18:41'),
(43, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'gopay', '2024-12-28 13:18:48'),
(44, '[{\"product\":\"3\",\"quantity\":\"1\",\"total\":\"Rp 19.000\"}]', 19000, 'bank', '2024-12-30 12:39:45'),
(45, '[{\"product\":\"1\",\"quantity\":\"5\",\"total\":\"Rp 25.000\"},{\"product\":\"4\",\"quantity\":\"5\",\"total\":\"Rp 42.500\"},{\"product\":\"4\",\"quantity\":\"2\",\"total\":\"Rp 17.000\"}]', 84500, 'bank', '2024-12-30 12:40:31'),
(46, '[{\"product\":\"1\",\"quantity\":\"1\",\"total\":\"Rp 5.000\"}]', 5000, 'bank', '2024-12-30 12:46:57'),
(47, '[{\"product\":\"2\",\"quantity\":\"4\",\"total\":\"Rp 70.000\"},{\"product\":\"1\",\"quantity\":\"1\",\"total\":\"Rp 5.000\"}]', 75000, 'bank', '2024-12-30 12:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_path` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock obat`
--

CREATE TABLE `stock obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock obat`
--

INSERT INTO `stock obat` (`id`, `nama_obat`, `kategori`, `stok`, `harga`) VALUES
(1, 'Bodrex', 'Obat Sakit Kepala', 10, 15000.00),
(2, 'Sanadryl', 'Obat Batuk', 0, 12000.00),
(3, 'Mylanta', 'Obat Maag', 5, 18000.00),
(4, 'Neo Enstrostop', 'Obat Diare', 3, 20000.00),
(5, 'vicks', 'Obat Flu', 0, 25000.00),
(6, 'Panadol', 'Obat Demam', 20, 30000.00),
(1, 'Bodrex', 'Obat Sakit Kepala', 10, 15000.00),
(2, 'Sanadryl', 'Obat Batuk', 0, 12000.00),
(3, 'Mylanta', 'Obat Maag', 5, 18000.00),
(4, 'Neo Enstrostop', 'Obat Diare', 3, 20000.00),
(5, 'vicks', 'Obat Flu', 0, 25000.00),
(6, 'Panadol', 'Obat Demam', 20, 30000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `gender` enum('Male','Female','','') NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Customer','Apoteker','Admin','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telephone`, `address`, `gender`, `password`, `role`) VALUES
(9, 'Nahida Najwa Salsabila', 'nahidanajwa@gmail.com', '0892373221', 'jalan akademiya no 10, akademiya, sumeru, teyvat', 'Female', '$2y$10$ZLqA/0.DgMtQ.vxcLezB1ODAzLV3t8jljXwi7/S5Wspo2lXXk9.Ji', 'Admin'),
(17, 'apoteker', 'apoteker@gmail.com', '13313231', 'ksjejd', 'Male', '$2y$10$yNSvoWbVhMY2yVVMlGkX6uzL4l6sonkJJRZbMQxu4hWBJE3tVL4Qu', 'Apoteker'),
(25, 'Customer', 'Customere@gmail.com', '0839732234', 'Rumah Customer', 'Female', '$2y$10$BFL5tz2002Uvz9kYlXjlieG5QHyqbd1JqaouP34oEDdJ99oPMxbgi', 'Customer'),
(26, 'admin', 'admin@gmail.com', '087377121', 'rumah admin', 'Male', '$2y$10$jprodiI0cOr6CSQ6CmZpIeJsUEi1xgESwo3FT8ACuJs7yV6btW2AW', 'Admin'),
(28, 'tes', 'tes@gmail.com', 'tes', 'tes', 'Male', '$2y$10$fmoIiXTw5NZC5kV38ko5T.L9AtC.2/1RgvTg/z19jzTmM6hc8PbmW', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
