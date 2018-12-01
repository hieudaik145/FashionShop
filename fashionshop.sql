-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 06:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(25) NOT NULL,
  `user_id` bigint(25) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `total`, `payment`, `adress`, `date`) VALUES
(1543682948467, 1, 618500, 'Banking Plus', 'Tam Ky - Quang Nam', '2018-12-01 16:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(25) NOT NULL,
  `bill_id` bigint(25) NOT NULL,
  `product_id` bigint(25) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `price`, `quantity`) VALUES
(1, 1543682948467, 1, 399000, 1),
(2, 1543682948467, 34, 219000, 1),
(3, 1543682948467, 5, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(0, 'Trang Phục Nữ'),
(1, 'Giày Nữ'),
(2, 'Túi Sách Nữ'),
(3, 'Phụ Kiện Nữ'),
(4, 'Đồ Ngủ & Nội Y');

-- --------------------------------------------------------

--
-- Table structure for table `categorymen`
--

CREATE TABLE `categorymen` (
  `categoryMen_ID` int(20) NOT NULL,
  `categoryMen_Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorymen`
--

INSERT INTO `categorymen` (`categoryMen_ID`, `categoryMen_Name`) VALUES
(5, 'Trang Phục Nam'),
(6, 'Giày Nam'),
(7, 'Túi Xách Nam'),
(8, 'Phụ Kiện Nam');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'vo van hieu', '123', 'admin@gmail.com', 32679832);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(15) NOT NULL,
  `category_id` int(15) DEFAULT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `price_old` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  `product_overview` longtext COLLATE utf8_unicode_ci,
  `product_additional` longtext COLLATE utf8_unicode_ci,
  `product_review` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_image`, `product_image1`, `product_image2`, `product_price`, `price_old`, `product_description`, `product_overview`, `product_additional`, `product_review`) VALUES
(1, 0, 'Chân Váy Lime Orange -JO17810004-W', 'images/chanvay1.jpg', 'images/chanvay2.jpg', 'images/chanvay3.jpg', 399000, 450000, 'After Work là dòng thương hiệu cao cấp - bắt kịp xu hướng thời trang Hàn Quốc và thế giới. Đặc biệt là các sản phẩm Váy  Đầm After Work được Lime Orange kết hợp với Seoul Design Lab để thiết kế , phù hợp với người Á Đông', 'After Work là dòng thương hiệu cao cấp - bắt kịp xu hướng thời trang Hàn Quốc và thế giới. Đặc biệt là các sản phẩm Váy  Đầm After Work được Lime Orange kết hợp với Seoul Design Lab để thiết kế , phù hợp với người Á Đông', 'DỊCH VỤ & KHUYẾN MÃI LIÊN QUAN\r\nNhập mã TIKIYEUBAN10 giảm ngay 40k cho đơn hàng đầu tiên từ 400k thuộc các nhóm hàng Thời trang, Làm Đẹp & Sức Khỏe, Đồ Chơi, Mẹ và Bé và Hàng Tiêu Dùng - Thực Phẩm (trừ Tã, Bĩm, Sữa, Bia).Số lượng coupon có hạn, chương trình có thể kết thúc sớm khi hết lượt sử dụng coupon', 'After Work là dòng thương hiệu cao cấp - bắt kịp xu hướng thời trang Hàn Quốc và thế giới. Đặc biệt là các sản phẩm Váy  Đầm After Work được Lime Orange kết hợp với Seoul Design Lab để thiết kế , phù hợp với người Á Đông'),
(5, 5, 'Áo Khoát Nam', 'images/pc7.jpg', NULL, NULL, 500, 0, NULL, NULL, '', NULL),
(6, 2, 'Bánh Bèo Vô Dụng', NULL, NULL, NULL, 20, 0, NULL, NULL, NULL, NULL),
(22, 1, 'product1', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(33, 2, 'Đồ Nội Y Nữ', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(34, 5, '\r\nÁo Khoát Nam \r\n\r\n \r\n\r\n', 'images/aokhoat01.jpg', 'images/aokhoat02.jpg', 'images/aokhoat03.jpg', 219000, 0, 'Thiết kế tinh tế với cổ bẻ; tay dài; đính nút bản to nổi bật;\r\n\r\nCá tính Kiểu dáng thời trang; đường chỉ may tỉ mỉ; tinh tế.\r\n\r\nMàu sắc : đen; xanh đen, xám\r\n\r\nKiểu dáng Trang nhã dễ dàng mix cùng các trang phục khác như áo thun; áo sơ mi\r\n\r\nChất liệu: dù cán 2 lớp dày vừa + lớp dù lót bên trong\r\n\r\nSize: M: 50 - 55kg, L:55 - 65kg , XL: 66 - 75kg', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categorymen`
--
ALTER TABLE `categorymen`
  ADD PRIMARY KEY (`categoryMen_ID`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` bigint(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `bill_detail_id` bigint(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
