-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2020 lúc 01:55 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettour`
--

CREATE TABLE `chitiettour` (
  `id_chitiet` int(11) NOT NULL,
  `id_tour_ct` int(11) DEFAULT NULL,
  `id_kh_ct` int(11) DEFAULT NULL,
  `id_kv_ct` int(11) DEFAULT NULL,
  `id_dd_ct` int(11) DEFAULT NULL,
  `id_ks_ct` int(11) DEFAULT NULL,
  `ngaydi` date NOT NULL,
  `ngayve` date NOT NULL,
  `price_ct` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiettour`
--

INSERT INTO `chitiettour` (`id_chitiet`, `id_tour_ct`, `id_kh_ct`, `id_kv_ct`, `id_dd_ct`, `id_ks_ct`, `ngaydi`, `ngayve`, `price_ct`) VALUES
(1, 1, 2, 2, 1, 2, '2020-11-01', '2020-11-07', 1400000.00),
(2, 2, 1, 1, 2, 1, '2020-11-02', '2020-11-30', 2500000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_kh_dk` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(50) DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_kh_dk`, `name`, `email`, `sdt`, `pass`) VALUES
(1, 'Người đăng ký thứ 1', 'hothilan@gmail.com', 1234567, '12345'),
(2, 'Người Đăng ký thứ 2', 'hothilan1@gmail.com', 32143211, '12345678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `id_dd` int(11) NOT NULL,
  `name_dd` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating_dd` int(11) NOT NULL DEFAULT 5,
  `id_kv` int(11) DEFAULT NULL,
  `img_dd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diadiem`
--

INSERT INTO `diadiem` (`id_dd`, `name_dd`, `rating_dd`, `id_kv`, `img_dd`) VALUES
(1, 'Hồ Chí Minh', 5, 1, 'img.png'),
(2, 'Long an', 5, 2, 'img1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `name_kh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email_kh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_kh` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `name_kh`, `email_kh`, `sdt_kh`) VALUES
(1, 'Khách hàng 1', 'hothilan@gmail.com', 123456789),
(2, 'Khách hàng 1', 'hothilan1@gmail.com', 1234567821);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachsan`
--

CREATE TABLE `khachsan` (
  `id_ks` int(11) NOT NULL,
  `name_ks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_dd` int(11) DEFAULT NULL,
  `rate_ks` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachsan`
--

INSERT INTO `khachsan` (`id_ks`, `name_ks`, `id_dd`, `rate_ks`) VALUES
(1, 'Khách sạn 1', 1, 4),
(2, 'Khách sạn 2', 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `id_kv` int(11) NOT NULL,
  `name_kv` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`id_kv`, `name_kv`) VALUES
(1, 'Khu Vực 1'),
(2, 'Khu vực 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `id_kh_dk` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`id_kh_dk`, `email`, `pass`) VALUES
(1, 'hothilan@gmail.com', '12345'),
(2, 'hothilan1@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noidungbocuc`
--

CREATE TABLE `noidungbocuc` (
  `id_noidung` int(11) NOT NULL,
  `noidung` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noidungbocuc`
--

INSERT INTO `noidungbocuc` (`id_noidung`, `noidung`, `ngaydang`, `rating`) VALUES
(1, 'Đẹp xức xắc luoonggg nhengg', '2020-11-01', 3),
(2, 'Chòi đắc quỷ thằng thiên địa oi', '2020-11-02', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id_tour` int(11) NOT NULL,
  `name_tour` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_tour` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_noidung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id_tour`, `name_tour`, `img_tour`, `id_noidung`) VALUES
(1, 'Tour đến với Trần Đức Boo', 'hinh.png', 1),
(2, 'Tour mèo méo meo mèo meo con mèo ngu ngốc đáng eo cute phô mai que', 'hinh1.png', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD PRIMARY KEY (`id_chitiet`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_kh_dk`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`id_dd`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- Chỉ mục cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`id_ks`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`id_kv`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_kh_dk`),
  ADD UNIQUE KEY `pass` (`pass`),
  ADD UNIQUE KEY `pass_2` (`pass`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `noidungbocuc`
--
ALTER TABLE `noidungbocuc`
  ADD PRIMARY KEY (`id_noidung`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id_tour`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  MODIFY `id_chitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_kh_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id_dd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `id_kv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `id_kh_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `noidungbocuc`
--
ALTER TABLE `noidungbocuc`
  MODIFY `id_noidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `id_tour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
