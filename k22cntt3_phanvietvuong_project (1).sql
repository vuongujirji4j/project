-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2023 lúc 01:59 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `k22cntt3_phanvietvuong_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `makh` int(11) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `tai_khoan` varchar(50) NOT NULL,
  `mat_khau` varchar(32) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `dien_thoai` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ngay_sinh` datetime NOT NULL,
  `gioi_tinh` tinyint(4) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`makh`, `ho_ten`, `tai_khoan`, `mat_khau`, `dia_chi`, `dien_thoai`, `email`, `ngay_sinh`, `gioi_tinh`, `trang_thai`) VALUES
(123, 'phan viết vượng', 'vượng', '1234567', 'hà noi', '03327899', 'hhhuh@gmail.com', '2023-12-04 19:58:10', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `tai_khoan` varchar(50) NOT NULL,
  `mat_khau` varchar(32) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri`
--

INSERT INTO `quan_tri` (`tai_khoan`, `mat_khau`, `trang_thai`) VALUES
('vượng', '012345678', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`makh`),
  ADD UNIQUE KEY `tai_khoan` (`tai_khoan`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`tai_khoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
