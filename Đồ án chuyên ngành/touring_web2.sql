-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 04:40 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `touring_web2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `no_adults` int(11) NOT NULL,
  `no_children` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `date_start` date NOT NULL,
  `payment` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status_payment` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `status_tour` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `id_user`, `id_tour`, `no_adults`, `no_children`, `total_price`, `date_start`, `payment`, `status_payment`, `status_tour`, `create_at`) VALUES
(5, 23, 100000005, 2, 0, 13980000, '2023-05-24', 'paypal', 'Đã thanh toán', 'Đã đi', '18/04/23: 15:20:11'),
(6, 29, 100000001, 2, 1, 12022800, '2023-06-02', 'paypal', 'Đã thanh toán', 'Đã đi', '18/04/23: 15:43:45'),
(7, 23, 100000001, 4, 2, 24045600, '2023-05-25', 'paypal', 'Đã thanh toán', 'Đã đi', '19/04/23: 10:29:31'),
(8, 23, 100000001, 2, 1, 12022800, '2023-05-25', 'paypal', 'Đã thanh toán', 'Đã đi', '20/04/23: 10:58:04'),
(9, 23, 100000001, 2, 0, 11184000, '2023-06-02', 'paypal', 'Đã thanh toán', 'Đã đi', '26/04/23: 12:51:16'),
(10, 23, 100000001, 2, 3, 13700400, '2023-05-25', 'paypal', 'Đã thanh toán', 'Đã đi', '02/05/23: 00:45:53'),
(11, 23, 100000001, 4, 2, 24045600, '2023-05-25', 'paypal', 'Đã thanh toán', 'Chờ khởi hành\r\n', '03/05/23: 12:26:47'),
(12, 23, 100000001, 2, 2, 12861600, '2023-06-02', 'paypal', 'Đã thanh toán', 'Chờ khởi hành\r\n', '03/05/23: 14:46:33'),
(13, 23, 100000001, 3, 1, 17614800, '2023-05-25', 'paypal', 'Đã thanh toán', 'Chờ khởi hành\r\n', '04/05/23: 02:24:33'),
(14, 23, 100000002, 2, 1, 17000000, '2023-05-26', 'paypal', 'Đã thanh toán', 'Chờ khởi hành\r\n', '10/05/23: 01:04:28'),
(15, 23, 100000003, 1, 0, 9410000, '2023-05-27', 'paypal', 'Đã thanh toán', 'Chờ khởi hành\r\n', '14/05/23: 11:41:24'),
(16, 23, 100000004, 2, 0, 14700000, '2023-05-27', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '14/05/23: 11:46:19'),
(17, 23, 100000015, 2, 0, 14880000, '2023-06-05', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '26/05/23: 10:06:38'),
(18, 23, 100000005, 2, 1, 16080000, '2023-05-24', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '21/06/23: 01:32:23'),
(19, 23, 100000005, 2, 2, 18170000, '2023-05-24', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '21/06/23: 01:37:45'),
(22, 23, 100000008, 2, 1, 14720000, '2023-07-25', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '25/06/23: 23:51:35'),
(23, 23, 100000015, 2, 1, 17110000, '2023-07-18', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '26/06/23: 12:26:26'),
(24, 23, 100000003, 2, 0, 18820000, '2023-07-12', 'paypal', 'Đã thanh toán', 'Chờ khởi hành', '03/08/23: 18:26:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `star` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `id_reply` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_tour`, `star`, `content`, `create_at`, `likes`, `id_reply`) VALUES
(10001931, 22, 100000001, 5, 'Cân nhắc khá nhiều nhưng cuối cùng tôi cũng chọn bestprice. Mọi thứ đều ổn từ khâu tư vấn tới khi đi du lịch. Vì đi một mình nên đi ghép đoàn, tôi đã làm quen và kết bạn thêm với mọi người. Lịch trình khá thú vị, nhiều điểm tham quan đẹp', '14/05/23: 20:36:19', 2, 0),
(10001933, 25, 100000001, 5, 'Các điểm tham quan đều rất đẹp, kiến trúc đặc biệt, rất ấn tượng với Vịnh Hạ Long có hệ thực vật và thiết kế vô cùng mới lạ. Thời gian di chuyển giữa các điểm k quá dài nên không bị mệt', '15/05/23: 08:59:31', 4, 0),
(10001934, 29, 100000001, 5, 'Mình rất thích cách thuyết minh của bạn hướng dẫn nghe rất thu hút và bổ ích. Một điểm cộng là các bữa ăn khá ngon, ăn no.', '15/05/23: 14:26:32', 0, 0),
(10001936, 23, 100000001, 4, 'thật là quải đạn các bạn à kkkkkk\r\n', '16/05/23: 03:56:39', 0, 0),
(10001937, 23, 100000015, 5, 'Tour quá xịn xò ạ', '16/06/23: 23:53:19', 0, 0),
(10001938, 23, 100000006, 5, 'Chuyên đi tuyệt vời. Nhân viên nhiệt tình, dịch vụ rất tốt.\r\n', '25/06/23: 18:23:59', 0, 0),
(10001939, 28, 100000006, 4, 'Tour chất lượng.', '26/06/23: 09:56:23', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departure_dates`
--

CREATE TABLE `departure_dates` (
  `id` bigint(20) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departure_dates`
--

INSERT INTO `departure_dates` (`id`, `id_tour`, `date_start`, `date_end`, `quantity`) VALUES
(1000201, 100000001, '2023-06-27', '2023-06-29', 12),
(1000202, 100000002, '2023-06-26', '2023-06-29', 8),
(1000203, 100000003, '2023-07-27', '2023-07-30', 17),
(1000204, 100000004, '2023-07-27', '2023-07-31', 15),
(1000205, 100000005, '2023-07-24', '2023-07-27', 8),
(1000206, 100000006, '2023-07-02', '2023-07-04', 20),
(1000207, 100000007, '2023-07-28', '2023-07-31', 18),
(1000208, 100000008, '2023-07-01', '2023-07-06', 23),
(1000209, 100000009, '2023-07-01', '2023-07-04', 12),
(1000210, 100000010, '2023-07-03', '2023-07-05', 1),
(1000211, 100000011, '2023-07-06', '2023-07-08', 31),
(1000212, 100000012, '2023-07-04', '2023-07-08', 4),
(1000213, 100000013, '2023-07-02', '2023-07-05', 5),
(1000214, 100000014, '2023-07-05', '2023-07-08', 21),
(1000215, 100000015, '2023-07-05', '2023-07-09', 13),
(1000216, 100000001, '2023-07-05', '2023-07-07', 13),
(1000217, 100000001, '2023-07-14', '2023-07-16', 21),
(1000218, 100000001, '2023-07-09', '2023-07-11', 12),
(1000219, 100000001, '2023-07-20', '2023-07-22', 30),
(1000220, 100000001, '2023-07-24', '2023-07-26', 30),
(1000221, 100000002, '2023-06-01', '2023-06-04', 22),
(1000222, 100000002, '2023-06-07', '2023-06-10', 25),
(1000223, 100000002, '2023-06-12', '2023-06-15', 19),
(1000224, 100000002, '2023-06-19', '2023-06-22', 15),
(1000225, 100000002, '2023-06-27', '2023-06-30', 40),
(1000226, 100000003, '2023-07-01', '2023-07-04', 6),
(1000227, 100000003, '2023-07-07', '2023-07-10', 14),
(1000228, 100000003, '2023-07-12', '2023-07-15', 8),
(1000229, 100000003, '2023-07-20', '2023-07-23', 22),
(1000230, 100000003, '2023-07-27', '2023-07-30', 29),
(1000231, 100000004, '2023-07-02', '2023-07-06', 12),
(1000232, 100000004, '2023-07-04', '2023-07-08', 18),
(1000233, 100000004, '2023-07-17', '2023-07-21', 24),
(1000234, 100000004, '2023-07-27', '2023-07-31', 34),
(1000235, 100000005, '2023-07-07', '2023-07-10', 16),
(1000236, 100000005, '2023-07-12', '2023-07-15', 25),
(1000237, 100000005, '2023-07-26', '2023-07-29', 14),
(1000238, 100000006, '2023-07-05', '2023-07-07', 11),
(1000239, 100000006, '2023-07-18', '2023-07-20', 27),
(1000240, 100000006, '2023-07-22', '2023-07-24', 29),
(1000241, 100000006, '2023-07-27', '2023-07-29', 32),
(1000242, 100000007, '2023-07-05', '2023-07-08', 12),
(1000243, 100000007, '2023-07-11', '2023-07-14', 25),
(1000244, 100000007, '2023-07-20', '2023-07-23', 42),
(1000245, 100000008, '2023-07-08', '2023-07-13', 12),
(1000246, 100000008, '2023-07-19', '2023-07-24', 18),
(1000247, 100000008, '2023-07-25', '2023-07-31', 33),
(1000248, 100000009, '2023-07-05', '2023-07-08', 18),
(1000249, 100000009, '2023-07-14', '2023-07-17', 24),
(1000250, 100000009, '2023-07-22', '2023-07-25', 31),
(1000251, 100000009, '2023-07-27', '2023-07-30', 20),
(1000252, 100000010, '2023-07-07', '2023-07-09', 11),
(1000253, 100000010, '2023-07-19', '2023-07-21', 24),
(1000254, 100000010, '2023-07-24', '2023-07-26', 33),
(1000255, 100000010, '2023-07-29', '2023-07-31', 22),
(1000256, 100000011, '2023-07-13', '2023-07-15', 22),
(1000257, 100000011, '2023-07-20', '2023-07-22', 18),
(1000258, 100000011, '2023-07-27', '2023-07-29', 28),
(1000259, 100000012, '2023-07-10', '2023-07-14', 12),
(1000260, 100000012, '2023-07-14', '2023-07-18', 21),
(1000261, 100000012, '2023-07-17', '2023-07-21', 17),
(1000262, 100000012, '2023-07-20', '2023-07-24', 10),
(1000263, 100000013, '2023-07-08', '2023-07-11', 25),
(1000264, 100000013, '2023-07-22', '2023-07-25', 22),
(1000265, 100000013, '2023-07-27', '2023-07-30', 35),
(1000266, 100000014, '2023-07-15', '2023-07-18', 12),
(1000267, 100000014, '2023-07-26', '2023-07-29', 32),
(1000268, 100000015, '2023-07-07', '2023-07-11', 10),
(1000269, 100000015, '2023-07-18', '2023-07-22', 22),
(1000270, 100000015, '2023-07-27', '2023-07-31', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_avatar`
--

CREATE TABLE `img_avatar` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `img` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `img_avatar`
--

INSERT INTO `img_avatar` (`id`, `id_user`, `img`) VALUES
(12120027, 22, '22.jpg'),
(12120028, 25, 'default.jpg'),
(12120029, 26, 'default.jpg'),
(12120030, 27, 'default.jpg'),
(12120031, 21, 'default.jpg'),
(12120033, 23, '23.jpg'),
(12120034, 29, '29.jpg'),
(12120035, 28, '28.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link_img`
--

CREATE TABLE `link_img` (
  `id` bigint(20) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `name_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link_img`
--

INSERT INTO `link_img` (`id`, `id_tour`, `name_img`, `level`) VALUES
(100001, 100000001, '100000001_1.jpg', 0),
(100002, 100000002, '100000002_1.jpg', 0),
(100003, 100000003, '100000003_1.jpg', 0),
(100004, 100000004, '100000004_1.jpg', 0),
(100005, 100000005, '100000005_1.jpg', 0),
(100006, 100000006, '100000006_1.jpg', 0),
(100007, 100000001, '100000001_2.jpg', 1),
(100008, 100000001, '100000001_3.jpg', 1),
(100009, 100000001, '100000001_4.jpg', 1),
(100010, 100000001, '100000001_5.png', 1),
(100011, 100000002, '100000002_2.jpg', 1),
(100012, 100000002, '100000002_3.jpg', 1),
(100013, 100000002, '100000002_4.jpg', 1),
(100014, 100000002, '100000002_5.jpg', 1),
(100015, 100000003, '100000003_2.jpg', 1),
(100016, 100000003, '100000003_3.jpg', 1),
(100017, 100000003, '100000003_4.jpg', 1),
(100018, 100000003, '100000003_5.jpg', 1),
(100019, 100000004, '100000004_2.jpg', 1),
(100020, 100000004, '100000004_3.jpg', 1),
(100021, 100000004, '100000004_4.jpg', 1),
(100022, 100000004, '100000004_5.jpg', 1),
(100023, 100000005, '100000005_2.jpg', 1),
(100024, 100000005, '100000005_3.jpg', 1),
(100025, 100000005, '100000005_4.jpg', 1),
(100026, 100000005, '100000005_5.jpg', 1),
(100027, 100000006, '100000006_2.jpg', 1),
(100028, 100000006, '100000006_3.jpg', 1),
(100029, 100000006, '100000006_4.jpg', 1),
(100030, 100000006, '100000006_5.jpg', 1),
(100031, 100000007, '100000007_1.jpg', 0),
(100032, 100000007, '100000007_2.jpg', 1),
(100033, 100000007, '100000007_3.jpg', 1),
(100034, 100000007, '100000007_4.jpg', 1),
(100035, 100000007, '100000007_5.jpg', 1),
(100036, 100000008, '100000008_1.jpg', 0),
(100037, 100000008, '100000008_2.jpg', 1),
(100038, 100000008, '100000008_3.jpg', 1),
(100039, 100000008, '100000008_4.jpg', 1),
(100040, 100000008, '100000008_5.jpg', 1),
(100041, 100000009, '100000009_1.jpg', 0),
(100042, 100000009, '100000009_2.jpg', 1),
(100043, 100000009, '100000009_3.jpg', 1),
(100044, 100000009, '100000009_4.jpg', 1),
(100045, 100000009, '100000009_5.jpg', 1),
(100046, 100000010, '100000010_1.jpg', 0),
(100047, 100000010, '100000010_2.jpg', 1),
(100048, 100000010, '100000010_3.jpg', 1),
(100049, 100000010, '100000010_4.jpg', 1),
(100050, 100000010, '100000010_5.jpg', 1),
(100051, 100000011, '100000011_1.jpg', 0),
(100052, 100000011, '100000011_2.jpg', 1),
(100053, 100000011, '100000011_3.jpg', 1),
(100054, 100000011, '100000011_4.jpg', 1),
(100055, 100000011, '100000011_5.jpg', 1),
(100056, 100000012, '100000012_1.jpg', 0),
(100057, 100000012, '100000012_2.jpg', 1),
(100058, 100000012, '100000012_3.jpg', 1),
(100059, 100000012, '100000012_4.jpg', 1),
(100060, 100000012, '100000012_5.jpg', 1),
(100060, 100000013, '100000013_1.jpg', 0),
(100061, 100000013, '100000013_2.jpg', 1),
(100062, 100000013, '100000013_3.jpg', 1),
(100063, 100000013, '100000013_4.jpg', 1),
(100064, 100000013, '100000013_5.jpg', 1),
(100065, 100000014, '100000014_1.jpg', 0),
(100066, 100000014, '100000014_2.jpg', 1),
(100067, 100000014, '100000014_3.jpg', 1),
(100068, 100000014, '100000014_4.jpg', 1),
(100069, 100000014, '100000014_5.jpg', 1),
(100070, 100000015, '100000015_1.jpg', 0),
(100071, 100000015, '100000015_2.jpg', 1),
(100072, 100000015, '100000015_3.jpg', 1),
(100073, 100000015, '100000015_4.jpg', 1),
(100074, 100000015, '100000015_5.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_USER'),
(3, 'ROLE_USER'),
(4, 'ROLE_USER'),
(6, 'ROLE_USER'),
(7, 'ROLE_ADMIN'),
(8, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`id`, `id_tour`, `title`, `level`) VALUES
(10121311, 100000001, 'TP.HCM – PHÚ QUỐC (ăn trưa, chiều)', 1),
(10121312, 100000001, 'PHÚ QUỐC – BÃI SAO – HÒN THƠM (Ăn sáng, trưa, tối)', 2),
(10121313, 100000001, 'PHÚ QUỐC – TP.HCM (Ăn sáng) (Ăn trưa tự túc)', 3),
(10121314, 100000002, 'TP.HCM – HÀ NỘI – LÀO CAI – HÀM RỒNG – SAPA (Ăn trưa, chiều)', 1),
(10121315, 100000002, ' SAPA – FANSIPAN – BẢN CÁT CÁT (Ăn sáng, trưa, chiều)', 2),
(10121316, 100000002, 'SAPA – HÀ NỘI – TP.HCM (Ăn sáng, trưa)', 3),
(10121317, 100000005, 'TP. HCM – TIỀN GIANG – MỸ THO – CẦN THƠ (Ăn sáng, trưa, chiều)', 1),
(10121318, 100000005, 'CHỢ NỔI CÁI RĂNG – THIỀN VIỆN TRÚC LÂM – TP. HCM (Ăn sáng, trưa)', 2),
(10121319, 100000006, 'CÀ MAU – NĂM CĂN – ĐẤT MŨI – BẠC LIÊU (Ăn sáng, trưa, chiều) ', 1),
(10121320, 100000006, 'CÀ MAU – BẠC LIÊU – SÓC TRĂNG – TP.HCM (Ăn sáng, trưa)', 2),
(10121321, 100000003, 'HÀ NỘI – ĐỒNG HỚI (Ngủ đêm trên tàu)', 0),
(10121322, 100000003, 'QUẢNG BÌNH (Ăn Sáng - Trưa - Tối)', 1),
(10121323, 100000003, 'ĐỘNG PHONG NHA – HANG TÁM CÔ ( Ăn Sáng - Trưa – Ăn tối tự túc)', 2),
(10121324, 100000003, 'QUẢNG BÌNH - HÀ NỘI (Ăn Sáng - Trưa – tối cơm hộp trên tàu)', 3),
(10121325, 100000004, 'TP.HCM – ĐÀ NẴNG – HỘI AN (ăn trưa, chiều)', 1),
(10121326, 100000004, 'ĐÀ NẴNG – BÀ NÀ (ăn sáng, chiều) (ăn trưa tự túc)', 2),
(10121327, 100000004, 'ĐÀ NẴNG – TP.HCM (ăn sáng, trưa)', 3),
(10121328, 100000007, 'TP.HCM – NHA TRANG (ăn trưa, chiều)', 1),
(10121329, 100000007, 'NHA TRANG – DU NGOẠN VỊNH (ăn sáng, trưa, chiều)', 2),
(10121330, 100000007, 'NHA TRANG – TP.HCM (ăn sáng, trưa)', 3),
(10121331, 100000008, 'TP.HCM – ĐÀ NẴNG – HỘI AN (ăn trưa, chiều)', 1),
(10121332, 100000008, 'ĐÀ NẴNG – BÀ NÀ (ăn sáng, chiều) (ăn trưa tự túc)', 2),
(10121333, 100000008, 'ĐÀ NẴNG – TP.HCM (ăn sáng, trưa)', 3),
(10121334, 100000009, 'TP.HCM – HÀ NỘI – CHÙA TAM CHÚC – NINH BÌNH (Ăn trưa, chiều)', 1),
(10121335, 100000009, 'TRÀNG AN – TUYỆT TÌNH CỐC – HANG MÚA (Ăn sáng, trưa, chiều)', 2),
(10121336, 100000009, 'CHÙA BÁI ĐÍNH – HÀ NỘI – TP.HCM (Ăn sáng, trưa)', 3),
(10121337, 100000010, 'TP. HCM – CHÂU ĐỐC (Ăn sáng, trưa, chiều)', 1),
(10121338, 100000010, 'CHÂU ĐỐC – CẦN THƠ (Ăn sáng, trưa, chiều)', 2),
(10121339, 100000010, 'CẦN THƠ – TIỀN GIANG – TP. HCM (Ăn sáng, trưa)', 3),
(10121340, 100000011, 'TP.HCM – PHAN THIẾT (Ăn sáng, trưa, chiều)', 1),
(10121341, 100000011, 'PHAN THIẾT – LÂU ĐÀI RƯỢU VANG - TP.HCM (Ăn sáng, trưa)', 2),
(10121342, 100000012, 'TP.HCM – RẠCH GIÁ', 1),
(10121343, 100000012, 'RẠCH GIÁ – HÒN LỚN – BÃI CÂY MẾN (Ăn sáng, trưa, chiều)', 2),
(10121344, 100000012, 'HÒN CỦ TRON – KHÁM PHÁ QUẦN ĐẢO NAM DU (Ăn sáng, trưa, chiều)', 3),
(10121345, 100000013, 'TP.HCM – THIỀN VIỆN TRÚC LÂM - ĐÀ LẠT (Ăn sáng, trưa, chiều)', 1),
(10121346, 100000013, 'ĐỒI CHÈ CẦU ĐẤT – ĐÀ LẠT VIEW ( Ăn sáng, trưa, chiều)', 2),
(10121347, 100000013, 'ĐÀ LẠT – TP. HỒ CHÍ MINH (Ăn sáng, trưa)', 3),
(10121348, 100000014, 'TP.HCM – THIỀN VIỆN TRÚC LÂM - ĐÀ LẠT (Ăn sáng, trưa, chiều)', 1),
(10121349, 100000014, 'ĐỒI CHÈ CẦU ĐẤT – ĐÀ LẠT VIEW ( Ăn sáng, trưa, chiều)', 2),
(10121350, 100000014, 'NÔNG TRẠI CÚN PUPPY – FAIRYTALE LAND (ăn sáng, trưa, chiều)', 3),
(10121351, 100000014, 'ĐÀ LẠT – TP. HỒ CHÍ MINH (Ăn sáng, trưa)', 4),
(10121352, 100000015, 'TP.HCM – PHAN THIẾT– NHA TRANG (Ăn sáng, trưa, chiều)', 1),
(10121353, 100000015, 'NHA TRANG – DỐC LẾT – VINWONDERS (Ăn sáng, trưa) (Ăn tối tự túc)', 2),
(10121354, 100000015, 'NHA TRANG – THÁP BÀ PONAGAR – ĐÀ LẠT (Ăn sáng, trưa, chiều)', 3),
(10121355, 100000015, 'ĐÀ LẠT – ĐỒI CHÈ CẦU ĐẤT - NHÀ THỜ DON BOSCO (Ăn sáng, trưa, chiều)', 4),
(10121356, 100000015, 'ĐÀ LẠT – TP. HỒ CHÍ MINH (Ăn sáng, trưa)', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule_detail`
--

CREATE TABLE `schedule_detail` (
  `id` bigint(20) NOT NULL,
  `id_schedule` bigint(20) NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule_detail`
--

INSERT INTO `schedule_detail` (`id`, `id_schedule`, `time`, `content`, `level`) VALUES
(2131001, 10121311, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng.\r\nĐại diện công ty Du Lịch Việt đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi Phú Quốc. \r\nĐến sân bay Phú Quốc, Hướng dẫn viên đón Quý khách Tham quan Dinh Cậu.\r\nTham quan các làng nghề truyền thống nổi tiếng trên đảo:\r\nHồ tiêu Phú Quốc: tìm hiểu về cách trồng tiêu tại vườn. Tiêu Phú Quốc nổi tiếng với hạt to, đen và cay thơm. Du khách có thể mua tiêu về làm quà tại nhà vườn.', 1),
(2131003, 10121311, 'Trưa:', 'Dùng cơm trưa.\r\nĐoàn về khách sạn, nhận phòng nghỉ ngơi.\r\nXe đưa đoàn Khám phá thành phố không ngủ Grand World Phú Quốc – checkin dòng sông Venice\r\nKhám Phá Phú Quốc UnitedCenter - Grandword ,Trung tâm mới sầm uất và đa tiện tích của Phú Quốc với hệ sinh thái dịch vụ trọn vẹn từ dân sinh đến giải trí, nay được hoàn thiện ngoạn mục bằng sự ra mắt của Grand World, Thiên đường giải trí - mua sắm - lễ hội độc đáo và đa dạng bậc nhất Đông Nam Á với chuỗi trải nghiệm xuyên suốt 24h.', 2),
(2131004, 10121311, 'Tối:', 'Dùng cơm tối.\r\nNghỉ đêm tại Phú Quốc.\r\n', 3),
(2131005, 10121312, 'Sáng:', 'Dùng bữa sáng.\r\n\r\nXe đưa đoàn tiến về phía Nam, tham quan Ngọc trai cao cấp Phú Quốc: quý khách được trực tiếp tham quan quy trình nuôi trai lấy ngọc tại các cơ sở nuôi cấy ngọc trai chuyên nghiệp tại Phú Quốc.\r\nQuý khách đến ga An Thới – Nhà ga đi Cáp treo Hòn Thơm. Quý khách trải nghiệm với cáp treo vượt biển dài nhất thế giớ với tổng chiều dài vượt biển 7.899,9m - cáp treo dài nhất thế giới được tổ chức Guinness chứng nhận.\r\nĐoàn dừng chân tại Bãi Sao, một trong những bãi biển đẹp nhất Phú Quốc với bãi cát dài thoang thoảng, trắng mịn. Đoàn tự do chụp hình lưu niệm.\r\n', 1),
(2131006, 10121312, 'Trưa: ', 'Dùng cơm trưa.\r\n\r\nNhà tù Phú Quốc: khu di tích lịch sử - nơi chứng kiến bao tội ác của thực dân Pháp và đế quốc Mỹ khi giam cầm hơn 32 ngàn tù binh chiến tranh (có lúc lên  đến con số 40 ngàn tù binh) trong khoảng thời gian tồn tại chưa đầy 6 năm.\r\nViếng thăm Chùa Hộ Quốc (hay Thiền Viện Trúc Lâm Hộ Quốc), nằm trên sườn núi hướng ra biển ở phía cuối của một con đường uốn khúc qua các triền núi của đảo Phú Quốc, Thiền Viện Trúc Lâm Hộ Quốc có thể được xem là một trong những ngôi chùa có địa thế đẹp nhất Việt Nam.', 2),
(2131007, 10121312, 'Tối:', 'Dùng cơm tối.\r\n\r\nNghỉ đêm tại Phú Quốc.', 3),
(2131008, 10121313, 'Sáng:', 'Dùng bữa sáng.  \r\nQuý khách có thể tự do tắm biển, nghỉ ngơi tại khách sạn, tự do đi chợ mua sắm đặc sản về làm quà cho người thân', 1),
(2131009, 10121313, 'Trưa', 'Dùng bữa sáng.  \r\nQuý khách có thể tự do tắm biển, nghỉ ngơi tại khách sạn, tự do đi chợ mua sắm đặc sản về làm quà cho người thân.\r\n Khám phá CÔNG VIÊN CHỦ ĐỀ VINWONDERS PHÚ QUỐC :\r\n- Khu lâu đài trung tâm – Châu Âu trung cổ \r\n- Khu Viking – Khu làng bí mật \r\n- Khu cảm giác mạnh – thế giới phiêu lưu \r\n- Khu công viên nước – thế giới lốc xoáy\r\n- Khu cổ tích – Thế giới diệu kỳ\r\n', 2),
(2131010, 10121313, 'Chiều', 'Hướng dẫn viên tiễn đoàn ra sân bay Phú Quốc, đón chuyến bay về TP.HCM.\r\nKết thúc chương trình tham quan, chia tay và hẹn gặp lại.', 3),
(2131011, 10121314, 'Sáng: ', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng.\r\nĐại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Hà Nội. Đến sân bay Nội Bài, Hướng dẫn viên đón đoàn khởi hành đến Lào Cai trên con đường cao tốc dài nhất Việt Nam - mạch nối liền giữa Hà Nội và các tỉnh Tây Bắc.', 1),
(2131013, 10121314, 'Trưa:', 'Dùng bữa trưa.\r\n\r\nĐoàn tiếp tục đến thị trấn vùng cao Sapa, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.\r\nTham quan và chinh phục núi Hàm Rồng với vườn lan, vườn đào, rừng đá, sân mây, lên đến Cổng trời, ngắm toàn cảnh Sapa trong sương mờ.', 2),
(2131014, 10121314, 'Chiều:', 'Dùng bữa chiều. Nghỉ đêm tại Sapa.\r\n\r\nTự do dạo phố, tham quan nhà thờ đá Sapa, tham dự đêm chợ Tình (nếu đi vào tối thứ 7). ', 3),
(2131015, 10121315, 'Sáng:', 'Dùng buffet sáng tại khách sạn.\r\nĐoàn khởi hành tham quan chinh phục Fansipan, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9 km về phía tây nam. Du khách chinh phục \"Nóc nhà Đông Dương\" với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại Khu du lịch tâm linh – Chùa Trình, Chùa Hạ tại ga đến (chi phí cáp treo tự túc).', 1),
(2131016, 10121315, 'Trưa:', 'Dùng bữa trưa.\r\n\r\nThăm bản Cát Cát, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.', 2),
(2131017, 10121315, 'Chiều:', 'Dùng bữa chiều. Nghỉ đêm tại Sapa.\r\n\r\nQuý khách có thể dạo phố đêm Sapa, thưởng thức đặc sản vùng cao như: thịt lợn cấp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao.', 3),
(2131018, 10121316, 'Sáng:', 'Dùng buffet sáng tại khách sạn.\r\nQuý khách tự do nghỉ ngơi tại khách sạn.', 1),
(2131019, 10121316, 'Trưa:', 'Dùng bữa trưa.\r\n\r\nĐoàn khởi hành về Hà Nội.\r\nHướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về  TP.HCM.\r\nKết thúc chương trình tham quan, chia tay và hẹn gặp lại.', 2),
(2131020, 10121317, 'Sáng:', 'Xe và Hướng Dẫn Viên Công Ty Du Lịch Việt đón Quý khách tại điểm hẹn.\r\nKhởi hành đi Mỹ Tho. \r\nQuý khách dùng bữa sáng tại Trung Lương. Tiếp tục lộ trình ghé tham quan chùa Vĩnh Tràng với lối kiến trúc kết hợp Châu Âu và Châu Á.\r\nĐoàn xuống bến đò 30/04, Quý khách xuống thuyền thưởng ngoạn cảnh sông nước miền Tây Nam Bộ với 4 cù lao: Long, Lân , Quy, Phụng, thưởng thức hương vị ngọt ngào của trái dừa xiêm.\r\nThuyền đưa đoàn đi tham quan cù lao Thới Sơn, đi bộ trên đường làng, tham quan trại nuôi ong mật, uống trà mật ong, thưởng thức các loại mứt đặc sản. Tham quan vườn cây ăn trái, thưởng thức các loại trái cây tại vườn, nghe nhạc tài tử Nam Bộ. Đi xuồng chèo trong rạch dừa nước thiên nhiên.\r\nThuyền lớn đưa khách sang Bến Tre tham quan lò kẹo dừa nổi tiếng Bến Tre.\r\nTham quan Cồn Phụng ( Di tích Ông Đạo Dừa).', 1),
(2131021, 10121317, 'Trưa: ', 'Dùng cơm trưa. Thuyền đưa du khách trở lại Bến Tàu 30/4, khởi hành đi Cần Thơ.', 2),
(2131022, 10121317, 'Chiều:', 'Dùng cơm chiều, nghỉ đêm khách sạn tại Cần Thơ.', 3),
(2131023, 10121318, 'Sáng:', 'Du khách đến bến Ninh Kiều: Thuyền đưa du khách tham quan chợ nổi Cái Răng với cảnh nhộn nhịp buôn bán trên sông, một nét văn hóa rất đặc sắc ở vùng đồng bằng sông nước Cửu Long.\r\nVề lại khách sạn, dùng bữa sáng. \r\nViếng thăm Thiền Viện Trúc Lâm Phương Nam được xem là một trong những công trình nghệ thuật độc đáo của đất Tây Đô - ngôi chùa rộng nhất khu vực Đồng bằng sông Cửu Long, được xây dựng trên diện tích gần 4 ha, với kết cấu lợp ngói, khung cột gỗ lim, chánh điện rộng cùng nhà tổ, nhiều tượng Phật được làm bằng gỗ Du Sam. ', 1),
(2131024, 10121318, 'Trưa: ', 'Dùng cơm trưa.\r\nKhởi hành về TP.HCM trên dừng chân tham quan cầu treo Mỹ Thuận, tiếp tục lộ trình về đến Tp.HCM. Kết thúc hành trình tour, chào tạm biệt và hẹn gặp lại Quý khách.', 2),
(2131025, 10121319, 'Sáng:', 'Dùng bữa sáng tại nhà hàng.\r\nKhởi hành về Năm Căn – thị trấn Cực Nam giàu có nguồn tài nguyên thủy hải sản.\r\nXe đưa Quý Khách tới Đất Mũi (Mũi Cà Mau):\r\nTrên đường Quý khách ngắm nhìn Tượng đài Anh hùng - Liệt sỹ Phan Ngọc Hiển, người có công lãnh đạo khởi nghĩa Hòn Khoai (Cà Mau).\r\nTham quan mốc tọa độ quốc gia. \r\nPanô biểu tượng mũi Cà Mau. \r\nLên Vọng Lâm Đài cao trên 20m để ngắm nhìn tòan cảnh Mũi Cà Mau. \r\nTham quan mô hình thu nhỏ Làng Rừng kháng chiến. ', 1),
(2131026, 10121319, 'Trưa:', 'Dùng cơm trưa. Đoàn trở về thị trấn Năm Căn, đến thăm, mua sắm tại chợ Năm Căn.', 2),
(2131027, 10121319, 'Chiều:', 'Sau khi dùng cơm chiều du khách có thời gian tự do nghỉ ngơi và khám phá thành phố về đêm, cảm nhận không gian thanh bình tự do đúng chất của chuyến du lịch. Nghỉ đêm khách sạn tại Cà Mau.', 3),
(2131028, 10121320, 'Sáng:', 'Dùng bữa sáng tại nhà hàng.\r\nKhởi hành đến Bạc Liêu, Đoàn đến viếng thăm Nhà thờ Tắc Sậy (Nhà thờ Cha Trương Bửu Diệp).\r\nTham quan Nhà công tử Bạc Liêu gắn liền với giai thoại các chàng công tử Bạc Liêu nổi tiếng vùng Lục tỉnh Nam Kỳ xa xưa.\r\nTham quan Khu lưu niệm nhạc sĩ Cao Văn Lầu nơi an nghỉ cuối cùng của tác giả bài Dạ Cổ Hoài Lang nổi tiếng Nam Bộ. Tại đây du khách được nghe giới thiệu về thân thế, sự nghiệp của ông, quá trình phát triển nghệ thuật từ bản Dạ Cổ.', 1),
(2131029, 10121320, 'Trưa:', 'Dùng cơm trưa. Đoàn khởi hành về TP.HCM, trên đường Quý khách có dịp chiêm ngưỡng vẻ đẹp cầu Cần Thơ nằm trên quốc lộ 1A nối liền hai bờ sông Hậu thuộc tỉnh Vĩnh Long và thành phố Cần Thơ. Về đến TP.HCM, đưa Quý khách về điểm đón ban đầu. Chia tay Quý khách và hẹn gặp lại.', 2),
(2131030, 10121321, 'Tối:', 'Quý khách tập trung tại ga Hà Nội - đường Lê Duẩn. Hướng dẫn viên đón và làm thủ tục cho Quý khách lên tàu khởi hành đi Đồng Hới.\r\nQuý khách nghỉ đêm trên tàu. ', 1),
(2131031, 10121322, 'Sáng:', 'Xe đón Quý khách tại Ga Đồng Hới, xe đưa Quý khách ăn sáng tại nhà hàng. Sau đó HDV đón đoàn đi tham quan:\r\n\r\nBãi Đá Nhảy: Một bãi biển với sự kỳ công của tạo hóa đã nhào nặn, hòa quyện giữa cát – đá – sóng biển tại nên những hình thù hấp dẫn, độc đáo.', 1),
(2131032, 10121322, 'Trưa:', 'Quý khách ăn trưa tại nhà hàng, thưởng thức ẩm thực Quảng Bình. \r\n\r\nSau khi ăn trưa, xe đưa Quý khách về khách sạn nhận phòng nghỉ ngơi.\r\nChiều  Quý khách tự do tắm biển Nhật Lệ.', 2),
(2131033, 10121322, 'Chiều:', 'Đoàn ăn tối tại nhà hàng, khám phá TP Đồng Hới về đêm với các dịch vụ giải trí thú vị. Nghỉ đêm tại khách sạn.', 3),
(2131034, 10121323, 'Sáng:', 'Quý khách lên thuyền ngược dòng Son thơ mộng, thưởng ngoạn phong cảnh thiên nhiên hữu tình hai bên bờ sông, du khách sẽ bắt gặp hình ảnh những thiếu nữ, những đứa trẻ vui đùa bên bờ sông có dịp trải nghiệm cuộc sống sinh hoạt của xóm làng ven sông mang đậm hồn quê Việt.\r\nQuý khách chinh phục Động Phong Nha - Hang nước dài nhất Đông Nam Á tận hưởng cảnh quan núi đá vôi ngoạn mục, hệ thống sông ngầm và thạch nhủ có một không hai ở trên thế giới. Khám phá hang Cô Tiên & Cung Đình chiêm ngưỡng các khối thạch nhũ tuyệt đẹp được kiến tạo bởi thiên nhiên qua hàng ngàn thiên niên kỷ.', 1),
(2131035, 10121323, 'Trưa:', 'Quý khách ăn trưa tại nhà hàng\r\nChiều Đoàn tiếp tục tham quan Hang Tám thanh niên xung phong và Đền tưởng niệm AHLS đường 20 Quyết Thắng.\r\n15h00: Sau chương trình xe đưa Đoàn về khách sạn, nghỉ ngơi, tắm biền.', 2),
(2131036, 10121323, 'Tối:', 'Tối Quý khách ăn tối tự túc, thưởng thức phố ăn đêm hải sản dọc bờ biển Nhật Lệ.\r\nNghỉ đêm tại khách sạn.', 3),
(2131037, 10121324, 'Sáng:', 'Đoàn tự do tắm biển và dùng bữa sáng tại khách sạn..\r\n12h00: Đoàn trả phòng khách sạn. Đoàn ăn trưa tại nhà hàng.\r\nChiều Xe ô tô đưa đoàn đi thăm quan một vòng thành phố Đồng Hới với Quảng Bình Quan, Tượng Đài Mẹ Suốt, Thành Đồng Hới, Tháp Chuông – Nhà Thờ Tam Tòa. Quý khách mua hải sản và đặc sản địa phương về làm quà cho người thân và gia đình.', 1),
(2131038, 10121324, 'Chiều:', 'Xe đưa Quý khách ra ga Đồng Hới, Quý khách lên tàu khởi hành về Hà Nội, đoàn dùng cơm hộp trên tầu.', 2),
(2131039, 10121324, 'Tối:', 'Đoàn về đến Ga Hà Nội. HDV chia tay Quý khách. Kết thúc chương trình và hẹn gặp lại trong những chương trình tiếp theo.', 3),
(2131040, 10121325, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng.\r\n\r\nĐại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Đà Nẵng.\r\nĐến sân bay, Hướng dẫn viên đón đoàn Tham quan Ngũ Hành Sơn - được ví như hòn non bộ khổng lồ giữa lòng thành phố Đà Nẵng với Động Huyền Không, Chùa Linh Ứng, Chùa Tam Thai, Vọng Hải Đài, …mua sắm quà lưu niệm tại làng nghề điêu khắc đá Non Nước.', 1),
(2131041, 10121325, 'Trưa:', 'Dùng cơm trưa.\r\nĐến Hội An, tham quan Phố Cổ Hội An - di sản văn hoá thế giới với Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng…', 2),
(2131042, 10121325, 'Chiều:', 'Dùng cơm chiều.\r\nTrải nghiệm Show diễn “Ký Ức Hội An”, chương trình văn hóa nghệ thuật ngoài trời độc đáo, với sự tổng hòa tinh tế của âm nhạc, thơ ca, ánh sáng, nghệ thuật trình diễn 3D, tạo hình, múa… Vở diễn là câu chuyện tái hiện lại những nét văn hóa đặc trưng của Hội An 400 năm lịch sử với cuộc sống thôn quê bình dị, tới những nét hoàng kim của một thương cảng sầm uất một thời. (chi phí tự túc)      \r\nĐoàn trở về, nghỉ đêm tại Đà Nẵng.', 3),
(2131043, 10121326, 'Sáng:', 'Dùng buffet sáng tại khách sạn.\r\n\r\nKhởi hành đến với cao nguyên Bà Nà nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo (chi phí cáp treo tự túc).\r\nQuý khách tự do tham quan, vui chơi giải trí tại Bà Nà với Công Viên Fantasy, Rạp chiếu phim 3D Mega 360 độ với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam, Hai rạp chiếu phim 4D và 5Di, Xe Trượt Ống, Hầm rượu, Vườn hoa tình yêu, Bảo Tàng Sáp, tự do chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.', 1),
(2131044, 10121326, 'Trưa:', ' \r\nQuý khách tự túc bữa ăn trưa.Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình: Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.', 2),
(2131045, 10121326, 'Chiều:', 'Dùng cơm chiều. Nghỉ đêm tại Đà Nẵng.        \r\nQuý khách tự do dạo phố, ngắm các cây cầu nổi tiếng của thành phố Đà Nẵng: cầu Rồng, cầu Sông Hàn, cầu Trần Thị Lý, cầu Thuận Phước...', 3),
(2131046, 10121327, 'Sáng:', 'Dùng buffet sáng tại khách sạn.\r\n\r\nĐoàn tự do tắm biển Mỹ Khê hoặc đi chợ mua sắm đặc sản về làm quà cho gia đình.\r\nTham quan một vòng bán đảo Sơn Trà…viếng Linh Ứng Tự và thưởng ngoạn vẻ đẹp của biển Mỹ Khê (được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).', 1),
(2131047, 10121327, 'Trưa:', ' \r\nTrưa: Dùng cơm trưa.\r\nHướng dẫn viên tiễn đoàn ra sân bay Đà Nẵng, đón chuyến bay về TP.HCM.\r\nKết thúc chương trình tham quan, chia tay và hẹn gặp lại.', 2),
(2131048, 10121328, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng. Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Cam Ranh.', 1),
(2131049, 10121328, 'Trưa:', 'Đoàn dùng cơm trưa. Quý khách về khách sạn nhận phòng nghỉ ngơi.', 2),
(2131050, 10121328, 'Chiều:', 'HDV và xe sẽ đón quý khách dùng cơm tối tại nhà hàng. Về khách sạn nghĩ ngơi. Quý khách có thể tham gia khu chợ đêm tại khu vực Quảng Trường trung tâm thành phố hoặc đi dạo bộ dọc bờ biển Nha Trang.', 3),
(2131051, 10121329, 'Sáng:', 'Đoàn dùng bữa sáng tại khách sạn. Xe và hướng dẫn viên đến đón khách tại khách sạn. Sau đó đưa quý khách xuống cảng Cầu Đá. Tiếp theo ca nô đưa quý khách đến Vịnh San Hô hoặc Hòn Mun, quý khách ngắm làn nước biển trong xanh và vẻ đẹp tuyệt mỹ của vịnh Nha Trang. Đến Vịnh San Hô quý khách lên đảo nhận ghế nghỉ ngơi và tự do bơi lội để đắm mình dưới làn nước trong xanh và chiên ngưỡng hệ động vật san hô tại đây.Ngoài ra quý khách có thể tham gia các trò chơi cảm giác mạnh như : lặn biển khám phá đại dương, moto nước, bay dù,…. (tự túc chi phí các trò chơi cảm giác mạnh). Quý khách tiếp tục đến với Làng Chài tại đây quý khách có thể chọn cho mình các loại hải sản tươi sống để làm phong phú thực đơn bữa trưa của mình (chi phí hải sản tự túc)', 1),
(2131052, 10121329, 'Trưa:', 'Quý khách dùng cơm trưa tại bè với các món : cá chiên sốt cà, tôm hấp sả, thịt ram cháy cạnh, rau xào, trứng chiên, lẩu chua cá, cơm trắng + tráng miệng. Ca nô đưa quý khách đến với khu du lịch Bãi Tranh. Quý khách nhận ghế dù nghĩ ngơi, tự do tắm biển tại đây. Quý khách trở lại ca nô. Ca nô đưa quý khách về tới cảng. Xe và HDV đưa quý khách về khách sạn nghĩ ngơi.', 2),
(2131053, 10121329, 'Chiều:', 'HDV đưa quý khách dùng cơm tối tại nhà hàng. Sau đó quý khách tự do khám phá chợ đêm Nha Trang, công viên Phù Đổng, Cà phê Bốn Mùa, khu hải sản Tháp Bà. Về khách sạn nghỉ ngơi.', 3),
(2131054, 10121330, 'Sáng:', 'Dùng bữa sáng tại khách sạn. Xe và HDV đưa quý khách đến Nhà Yến Nha Trang, đến đây quý khách tìm hiểu về đặc sản Nha Trang cũng như tìm hiểu ngành nghề khai thác chế biến tổ yến sào.', 1),
(2131055, 10121330, 'Trưa:', 'Quý khách dùng bữa trưa với đặc sản Nem Nướng và Bún Cá - một nét văn hóa ẩm thực của người dân Nha Trang. Hướng dẫn viên tiễn đoàn ra sân bay Cam Ranh đón chuyến bay về TP.HCM. Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.', 2),
(2131056, 10121331, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng. Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Đà Nẵng. Đến sân bay, Hướng dẫn viên đón đoàn Tham quan Ngũ Hành Sơn - được ví như hòn non bộ khổng lồ giữa lòng thành phố Đà Nẵng với Động Huyền Không, Chùa Linh Ứng, Chùa Tam Thai, Vọng Hải Đài, …mua sắm quà lưu niệm tại làng nghề điêu khắc đá Non Nước.', 1),
(2131057, 10121331, 'Trưa:', 'Dùng cơm trưa. Đến Hội An, tham quan Phố Cổ Hội An - di sản văn hoá thế giới với Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng…', 2),
(2131058, 10121331, 'Chiều:', 'Dùng cơm chiều. Trải nghiệm Show diễn “Ký Ức Hội An”, chương trình văn hóa nghệ thuật ngoài trời độc đáo, với sự tổng hòa tinh tế của âm nhạc, thơ ca, ánh sáng, nghệ thuật trình diễn 3D, tạo hình, múa… Vở diễn là câu chuyện tái hiện lại những nét văn hóa đặc trưng của Hội An 400 năm lịch sử với cuộc sống thôn quê bình dị, tới những nét hoàng kim của một thương cảng sầm uất một thời. (chi phí tự túc). Đoàn trở về, nghỉ đêm tại Đà Nẵng.', 3),
(2131059, 10121332, 'Sáng:', 'Dùng buffet sáng tại khách sạn. Khởi hành đến với cao nguyên Bà Nà nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo (chi phí cáp treo tự túc). Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với Công Viên Fantasy, Rạp chiếu phim 3D Mega 360 độ với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam, Hai rạp chiếu phim 4D và 5Di, Xe Trượt Ống, Hầm rượu, Vườn hoa tình yêu, Bảo Tàng Sáp, tự do chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.', 1),
(2131060, 10121332, 'Trưa:', 'Quý khách tự túc bữa ăn trưa. Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình: Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.', 2),
(2131061, 10121332, 'Chiều:', 'Dùng cơm chiều. Nghỉ đêm tại Đà Nẵng. Quý khách tự do dạo phố, ngắm các cây cầu nổi tiếng của thành phố Đà Nẵng: cầu Rồng, cầu Sông Hàn, cầu Trần Thị Lý, cầu Thuận Phước...', 3),
(2131062, 10121333, 'Sáng:', 'Dùng buffet sáng tại khách sạn. Đoàn tự do tắm biển Mỹ Khê hoặc đi chợ mua sắm đặc sản về làm quà cho gia đình. Tham quan một vòng bán đảo Sơn Trà…viếng Linh Ứng Tự và thưởng ngoạn vẻ đẹp của biển Mỹ Khê (được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).', 1),
(2131063, 10121333, 'Trưa:', 'Dùng cơm trưa. Hướng dẫn viên tiễn đoàn ra sân bay Đà Nẵng, đón chuyến bay về TP.HCM. Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.', 2),
(2131064, 10121334, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ba tiếng. Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đáp chuyến bay đi Hà Nội. Đến sân bay Nội Bài, Hướng dẫn viên đón đoàn khởi hành đến Ninh Bình, nơi có danh thắng Tràng An được UNESCO công nhận là di sản hỗn hợp văn hóa và thiên nhiên của thế giới.', 1),
(2131065, 10121334, 'Trưa:', 'Dùng cơm trưa. Thăm Chùa Tam Chúc, ngôi chùa lớn nhất thế giới. Với diện tích quần thể lên tới 5.000 ha, được tạc 1.200 bức tượng bằng dung nham núi lửa và sở hữu nhiều báu vật trên thế giới. Quần thể Tam Chúc với cảnh quan hùng vĩ, phía trước, giữa lòng hồ là 6 quả núi với hình dạng quả chuông, phía sau là 7 ngọn núi có thể phát sáng khi có ánh trăng ban đêm tạo nên thế tiền lục nhạc, hậu thất tinh.', 2),
(2131066, 10121334, 'Chiều:', 'Dùng bữa tối. Nghỉ đêm tại Ninh Bình. Quý khách có thể tự do dạo phố, thưởng thức các món đặc sản Ninh Binh như thịt dê núi, ốc núi, nem Yên Mạc, cơm cháy.', 3),
(2131067, 10121335, 'Sáng:', 'Dùng buffet sáng tại khách sạn. Đoàn xuôi thuyền đi dọc theo suối giữa cánh đồng lúa thăm Khu du lịch Tràng An nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí, quý khách đi đò thăm Hang sáng, Hang tối, Hang nấu rượu và tìm hiểu văn hóa lịch sử nơi đây.', 1),
(2131068, 10121335, 'Trưa:', 'Dùng cơm trưa. Ghé thăm Tuyệt Tình Cốc, nơi cảnh vật hoang sơ, bình yên thơ mộng bốn bề là núi đá phía dưới là non nước xanh biếc 1 màu, cùng với đó là sự góp mặt của rất nhiều hang động lớn nhỏ tạo lên vẻ đẹp huyền bí mà không nơi đâu có được như nơi đây, điển hình trong số đó phải kể đến Động Am Tiêm, động nằm ở lưng chừng núi đường đi rất hiểm trở phải leo qua 205 bậc đá mới lên tới nơi. Quý khách đến Hang Múa – được mệnh danh là Vạn Lý Trường Thành thu nhỏ. Quý khách có thể chinh phục hơn 400 bậc đá để ngắm toàn bộ khung cảnh Tam Cốc (Một Hạ Long Trên Cạn) từ trên cao. Đây là điểm đến thu hút hàng trăm nghìn các bạn trẻ khắp nơi thường xuyên đến đây để chụp ảnh, check in…', 2),
(2131068, 10121335, 'Chiều:', 'Dùng bữa tối. Nghỉ đêm tại Ninh Bình.', 3),
(2131070, 10121336, 'Sáng:', 'Dùng buffet sáng tại khách sạn. Tham quan chùa Bái Đính – ngôi chùa có nhiều kỷ lục nhất Việt Nam (ngôi chùa có diện tích rộng nhất – Tượng Phật bằng đồng lớn nhất Việt Nam). Đoàn trở về Hà Nội', 1),
(2131071, 10121336, 'Trưa:', 'Dùng bữa trưa.Đoàn tự do tham quan Hồ Hoàn Kiếm, Đền Ngọc Sơn. Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM. Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.', 2),
(2131072, 10121337, 'Sáng:', 'Xe và Hướng Dẫn Viên Công Ty Du Lịch Việt  đón Quý khách tại điểm hẹn. Khởi hành đi Châu Đốc (An Giang). Quý khách dừng chân dùng bữa sáng tại Trung Lương, Đoàn tiếp tục hành trình đến Châu Đốc.', 1),
(2131073, 10121337, 'Trưa:', 'Dùng cơm trưa. Đoàn di chuyển tham quan Rừng Tràm Trà Sư – là khu rừng ngập nước tiêu biểu cho vùng Tây sông Hậu, là nơi sinh sống nhiều loài thực vật và chim cò quý hiếm được ghi vào sách đỏ Việt Nam. Nghe thuyết minh và xem tư liệu về Rừng Tràm. Đi Tắc Ráng len lỏi theo những con rạch qua Lung Sen vào rừng tràm, chèo xuồng ba lá qua các con rạch ngắm cánh rừng biếc xanh bạt ngàn mênh mông, nở đầy những bông hoa tràm trắng tinh khiết trong nắng sớm, hương tràm thoảng đưa nhẹ nhàng khiến tinh thần trở nên thư thái. Lắng nghe tiếng từng nhịp chèo khua trên dòng nước, tiếng cá vẫy đuôi tạo nên những âm thanh là lạ, tiếng chim hót véo von trên ngọn tràm – những âm thanh rất đặc trưng của miền Tây vào mùa nước nổi. Đoàn khởi hành tham quan và hành hương tại Núi Cấm hay còn gọi là Thiên Cẩm Sơn có độ cao 705 m so với mặt nước biển, là ngọn núi cao nhất trong Thất Sơn.', 2),
(2131074, 10121337, 'Chiều:', 'Dùng cơm chiều. Nghỉ đêm khách sạn tại Châu Đốc.', 3),
(2131075, 10121338, 'Sáng:', 'Dùng bữa sáng. Viếng Tây An Cổ Tự (Chùa Tây An Núi Sam) - ngôi chùa có kiến trúc kết hợp phong cách nghệ thuật Ấn Độ và kiến trúc cổ dân tộc đầu tiên tại Việt Nam. Viếng Lăng Thoại Ngọc Hầu, đền thờ ông Thoại Ngọc Hầu, mộ ông cùng hai phu nhân được xây vào thập niên 30 của thế kỷ 20. Hành hương tại Miếu Bà Chúa Xứ Núi Sam, một di tích lịch sử, kiến trúc và tâm linh quan trọng của tỉnh An Giang. Ðược lập vào năm 1820, kiến trúc theo kiểu chữ \"quốc\".', 1),
(2131076, 10121338, 'Trưa:', 'Dùng cơm trưa. Đoàn khởi hành đến Cần Thơ, viếng thăm Thiền Viện Trúc Lâm Phương Nam được xem là một trong những công trình nghệ thuật độc đáo của đất Tây Đô - ngôi chùa rộng nhất khu vực Đồng bằng sông Cửu Long, được xây dựng trên diện tích gần 4 ha, với kết cấu lợp ngói, khung cột gỗ lim, chánh điện rộng cùng nhà tổ, nhiều tượng Phật được làm bằng gỗ Du Sam.', 2),
(2131077, 10121338, 'Chiều:', 'Dùng cơm chiều. Nghỉ đêm khách sạn tại Cần Thơ.', 3),
(2131078, 10121339, 'Sáng:', 'Du khách đến bến Ninh Kiều: Thuyền đưa Quý khách tham quan chợ nổi Cái Răng - một trong những chợ trên sông nổi tiếng ở miền Tây Nam Bộ với cảnh nhộn nhịp buôn bán trên sông, một nét văn hóa rất đặc sắc ở vùng đồng bằng sông nước Cửu Long. Về lại khách sạn, dùng bữa sáng. Đoàn khởi hành đến Tiền Giang. Đến Mỹ Tho, tham quan chùa Vĩnh Tràng với lối kiến trúc kết hợp Châu Âu và Châu Á. Đoàn xuống bến đò 30/04, Quý khách xuống thuyền thưởng ngoạn cảnh sông nước miền Tây Nam Bộ với 4 cù lao: Long, Lân , Quy, Phụng, thưởng thức hương vị ngọt ngào của trái dừa xiêm. Thuyền đưa đoàn đi tham quan cù lao Thới Sơn, đi bộ trên đường làng, tham quan trại nuôi ong mật, uống trà mật ong, thưởng thức các loại mứt đặc sản. Tham quan vườn cây ăn trái, thưởng thức các loại trái cây tại vườn, nghe nhạc tài tử Nam Bộ. Đi xuồng chèo trong rạch dừa nước thiên nhiên. Thuyền lớn đưa khách sang Bến Tre tham quan lò kẹo dừa nổi tiếng Bến Tre. Tham quan Cồn Phụng ( Di tích Ông Đạo Dừa).', 1),
(2131079, 10121339, 'Trưa:', 'Dùng cơm trưa. Khởi hành về TP.HCM, kết thúc hành trình tour, Chào tạm biệt và hẹn gặp lại.', 2),
(2131080, 10121340, 'Sáng:', 'Xe và Hướng Dẫn Viên Công Ty Du Lịch Việt  đón Quý khách tại điểm hẹn, khởi hành đi Phan Thiết. Dừng chân dùng bữa sáng tại Ngã Ba Dầu Dây. Tiếp tục lộ trình ghé tham quan Núi TàKou: Du khách có thể leo núi hay đi Cáp treo (chi phí tự túc), tham quan Chùa Linh Sơn Trường Thọ với tượng Phật nằm dài 49m', 1),
(2131081, 10121340, 'Trưa:', 'Dùng cơm trưa tại nhà hàng.', 2),
(2131082, 10121340, 'Chiều:', 'Khởi hành vào Khu Du lịch Hòn Rơm, trên đuuờng đi thưởng ngoạn quần thể danh lam, thắng cảnh nổi tiếng của Phan Thiết như: Tháp Chàm Poshanu, Lầu Ông Hoàng, Bĩa Đá Ông Địa, rặng dừ Hàm Tiến. Tự do tắm biển và thưởng thức hải sản tươi sống tại bãi biển (chi phí tự túc). Tiếp tục chinh phục Đồi Cát Vàng Bay, ngắm cảnh, chụp hình lưu niệm, chiêm ngưỡng hoàng hôn trên biển Phan Thiết. Dùng cơm tối. Nghỉ đêm tại Phan Thiết. Quý khách có thể tham gia Chương trình biểu diễn ca múa nhạc kịch trên nền sân khấu nhạc nước tại sân khấu Làng Chài (chi phí và phương tiện vận chuyển tự túc). Địa chỉ: Nguyễn Thông – Phú Hài – Phan Thiết – Bình Thuận. ', 3),
(2131083, 10121341, 'Sáng:', 'Dùng bữa sáng tại khách sạn. Tự do tắm biển, tắm hồ bơi. Tham quan Lâu đài Rượu Vang RD, với hình ảnh cung điện cổ kính, lộng lẫy và nguy nga ở Châu Âu. Đoàn tự do chiêm ngưỡng phong cách kiến trúc đẹp mê hồn và thưởng thức những ly rượu vang hảo hạng tại hầm rượu quy mô ẩn sâu dưới lòng đất.', 1),
(2131084, 10121341, 'Trưa:', 'Dùng cơm trưa tại nhà hàng. Khởi hành về lại TP.HCM, tham quan và mua đặc sản tại Cơ sở sản xuất nước mắm hoặc ghé chợ Phan Thiết. Về đến TP.HCM, đưa khách về điểm đón ban đầu. Chia tay Quý khách và hẹn gặp lại.', 2),
(2131085, 10121342, 'Tối:', 'Khởi hành đi Rạch Giá (Kiên Giang) – Quý khách nghỉ ngơi trên xe.', 1),
(2131086, 10121343, 'Sáng:', 'Đến Rạch Giá, dùng bữa sáng. Đoàn đón chuyến tàu đến hòn Lớn (còn gọi là hòn Củ Tron, 1 trong 21 hòn đảo lớn nhỏ nằm trong quần đảo Nam Du (chuyến tàu khởi hành khoảng 07h20 – đến đảo Nam Du khoảng 09h40). Trên đường tàu đi ngang qua Hòn tre, Hòn Sơn, Quý khách có dịp chiêm ngưỡng– những hòn đảo còn mang vẻ đẹp hoang sơ và cảnh sắc vùng biển trời Tây Nam của Tổ quốc, phía xa là những hòn đảo đan xen với nhau, mỗi hòn đảo có nét đẹp riêng. Đến hòn Lớn, Quý khách nhận phòng nghỉ ngơi. Đoàn khám phá cảnh sắc trên Hòn Lớn bằng xe máy (chi phí xe máy tự túc), tham quan, tắm biển tại bãi biển Đất Đỏ - Giếng Tiên, một trong những bãi tắm đẹp của đảo.', 1),
(2131087, 10121343, 'Trưa:', 'Dùng bữa trưa. Đến dốc Ông Tình ngắm toàn cảnh Bãi Ngự từ trên cao – là bãi tắm sạch đẹp vào mùa gió nam, và có dấu ấn rất đặc biệt vì là nơi vua Gia Long chạy giặc sang Xiêm đã dừng chân “ngự giá” tại đây. Chinh phục Hải đăng Nam Du nằm trên đỉnh Hòn Lớn (Củ Tron), được xem là ngọn hải đăng cao nhất Việt Nam nhờ nằm ở định đồi cao hơn 300 mét so với mực nước biển. Đoàn ghé tham quan bãi Cây Mến với làn nước biển trong vắt và mát lạnh với những hàng dừa xanh nghiêng bóng, tuổi thọ có cây lên tới 70 – 80 năm.', 2),
(2131088, 10121343, 'Chiều:', 'Quý khách thưởng thức tiệc BBQ nướng trên bãi biển, nghỉ đêm trên đảo.', 3),
(2131089, 10121344, 'Sáng:', 'Dùng bữa sáng. Đoàn đến Hòn Mấu, trên đường ngang qua Hòn Ngang - trung tâm xã Nam Du nơi tập trung người dân sinh sống, tham quan bãi Bấc (còn gọi là bãi Đá Đen) có những tảng đá lớn, nhỏ nhấp nhô theo từng con sóng.', 1),
(2131090, 10121344, 'Trưa:', 'Dùng bữa trưa, tiếp tục đón Hòn Hai Bờ Đập với phong cảnh hoang sơ. Quý khách tự do tắm biển, lặn ngắm san hô, bắt hải sản (nhum, sò, ốc, ...)', 2),
(2131091, 10121344, 'Chiều:', 'Dùng cơm chiều, Quý khách tự do dạo biển, ngắm hoàng hôn trên đảo. Nghỉ đêm trên đảo.', 3),
(2131092, 10121345, 'Sáng:', 'Quý khách có thể thức sớm để ngắm nhìn ánh bình minh trên đảo, hòa mình vào cảnh sắc thiên nhiên, cuộc sống thường ngày của người dân trên đảo. Dùng bữa sáng. Đoàn đón tàu trở về đất liền (chuyến tàu khởi hành khoảng 10h15), khởi hành về TP.HCM. Trên đường Quý khách dừng châm mua đặc sản thốt nốt, nem Lai Vung,... về làm quà cho người thân.', 1),
(2131093, 10121345, 'Trưa:', 'Đến TP.HCM. Kết thúc chuyến đi, chia tay đoàn và hẹn gặp lại Quý khách.', 2),
(2131094, 10121346, 'Sáng:', 'Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn khởi hành đi Đà Lạt. Đoàn dùng bữa sáng tại Ngã Ba Dầu Dây. Đoàn tiếp tục khởi hành đến TP. Đà Lạt.', 1),
(2131095, 10121346, 'Trưa:', 'Dùng cơm trưa tại nhà hàng. Tham quan Thiền Viện Trúc Lâm, đi cáp treo qua đồi Rôbin (chi phí tự túc), ngắm cảnh rừng thông, hồ Tuyền Lâm, núi Phượng Hoàng từ trên cao. Đoàn đến Đà Lạt, đến Quảng trường Lâm Viên với tuyệt tác kiến trúc bằng kính: Bông Hoa Dã Quỳ và Nụ Hoa Atiso.', 2),
(2131096, 10121346, 'Chiều:', 'Dùng cơm tối, nhận phòng nghỉ ngơi. Quý khách tự túc dạo thành phố Đà Lạt về đêm, ngắm cảnh Hồ Xuân Hương, thưởng thức hương vị cà phê phố núi (chi phí tự túc). Nghỉ đêm khách sạn tại Đà Lạt.', 3),
(2131097, 10121347, 'Sáng:', 'Dùng bữa sáng. Tham quan Đồi Chè Cầu Đất (Cầu Đất Farm) với độ cao trên 1.650 m so với mặt nước biển nên khi hậu mát mẻ, khung cảnh vừa yên bình vừa hung vĩ với bạt ngàn đồi chè hiện ngay trước mắt. Diện tích rộng trên 220 ha, đồi chè Cầu Đất được đánh giá là địa điểm check-in hoành tráng và chất hàng đầu tại Đà Lạt, với điểm nhấn là những chiếc “tua bin điện gió” trắng mới toanh hòa mình vào thảm trà xanh tươi tắn. Dừng chân tại Phindeli Cầu Đất Farm, điểm check-in view điện gió – đồi trà, nổi bật với những toa tàu đỏ mang những nét cổ điển hoặc nhâm nhi một ly cà phê, thưởng ngoạn cảnh ngọn đồi xanh mát. (chi phí tự túc). Viếng thăm chùa Linh Phước (Chùa Ve Chai) là một công trình kiến trúc khảm sành đặc sắc của thành phố Đà Lạt với hình ảnh con rồng dài 49 m được làm bằng 12.000 vỏ chai bia.', 1),
(2131098, 10121347, 'Trưa:', 'Dùng bữa trưa. Tham quan nhà thờ Don Bosco với nét kiến trúc đậm chất Châu Âu cổ điển, dễ thấy nhất là những cột trụ khổng lồ, dãy hành lang trải dài, đường nét trạm khắc tinh xảo, mái chóp nhọn,… Ga Đà Lạt, nhà ga cổ nhất Đông Dương còn sót lại ở Việt Nam. Quý khách tự do chiêm ngưỡng những đầu máy xe lửa cổ cùng những kiến trúc độc đáo đến từ thập niên 90.', 2),
(2131099, 10121347, 'Chiều:', 'Dùng cơm tối. Tự do dạo phố núi, và mua sắm đặc sản tại chợ đêm Đà Lạt. Nghỉ đêm tại Đà Lạt.', 3),
(2131100, 10121348, 'Sáng:', 'Dùng bữa sáng, trả phòng. Khởi hành đến Mê Linh coffee Garden, một không gian được thiết kế mở. Quý khách có thể vừa thưởng thức hương vị cà phê chồn đặc trưng (chi phí tự túc), vừa có một tầm nhìn trọn vẹn về cảnh sắc Đà Lạt 360 độ.', 1),
(2131101, 10121348, 'Trưa:', 'Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa.', 2),
(2131102, 10121349, 'Sáng:', 'Xe và Hướng Dẫn Viên Du Lịch Việt đón Quý khách tại điểm hẹn khởi hành đi Đà Lạt. Đoàn dùng bữa sáng tại Ngã Ba Dầu Dây. Đoàn tiếp tục khởi hành đến TP. Đà Lạt.', 1),
(2131103, 10121349, 'Trưa:', 'Dùng cơm trưa tại nhà hàng. Tham quan Thiền Viện Trúc Lâm, đi cáp treo qua đồi Rôbin (chi phí tự túc), ngắm cảnh rừng thông, hồ Tuyền Lâm, núi Phượng Hoàng từ trên cao.', 2),
(2131104, 10121349, 'Chiều:', 'Dùng cơm tối, nhận phòng nghỉ ngơi. Quý khách tự túc dạo thành phố Đà Lạt về đêm, ngắm cảnh Hồ Xuân Hương, thưởng thức hương vị cà phê phố núi (chi phí tự túc). Nghỉ đêm khách sạn tại Đà Lạt.', 3),
(2131105, 10121350, 'Sáng:', 'Dùng bữa sáng. Tham quan Đồi Chè Cầu Đất (Cầu Đất Farm) với độ cao trên 1.650 m so với mặt nước biển nên khi hậu mát mẻ, khung cảnh vừa yên bình vừa hung vĩ với bạt ngàn đồi chè hiện ngay trước mắt. Diện tích rộng trên 220 ha, đồi chè Cầu Đất được đánh giá là địa điểm check-in hoành tráng và chất hàng đầu tại Đà Lạt, với điểm nhấn là những chiếc “tua bin điện gió” trắng mới toanh hòa mình vào thảm trà xanh tươi tắn.', 1),
(2131106, 10121350, 'Trưa:', 'Dùng bữa trưa. Tham quan nhà thờ Don Bosco với nét kiến trúc đậm chất Châu Âu cổ điển, dễ thấy nhất là những cột trụ khổng lồ, dãy hành lang trải dài, đường nét trạm khắc tinh xảo, mái chóp nhọn,…', 2),
(2131107, 10121350, 'Chiều:', 'Dùng cơm tối. Tự do dạo phố núi, và mua sắm đặc sản tại chợ đêm Đà Lạt. Nghỉ đêm tại Đà Lạt. ', 3),
(2131108, 10121351, 'Sáng:', 'Dùng bữa sáng, trả phòng. Khởi hành đến Mê Linh coffee Garden, một không gian được thiết kế mở. Quý khách có thể vừa thưởng thức hương vị cà phê chồn đặc trưng (chi phí tự túc), vừa có một tầm nhìn trọn vẹn về cảnh sắc Đà Lạt 360 độ.', 1),
(2131109, 10121351, 'Trưa:', 'Khởi hành về TP.HCM, đến Bảo Lộc dùng cơm trưa.', 2),
(2131110, 10121352, 'Sáng:', 'Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng. Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi Hà Nội. Đến sân bay Nội Bài, Hướng dẫn viên đón đoàn khởi hanh đi Hà Giang. Trên đường đi Quý khách sẽ được chiêm ngưỡng phong cảnh thiên nhiên thơ mộng, hữu tình của núi rừng Đông Bắc, với đồi chè, rừng cọ, ruộng bậc thang.', 1),
(2131111, 10121352, 'Trưa:', 'Dùng cơm trưa. Đoàn tiếp tục khởi hành đến Hà Giang – nơi có những con đường đèo, cứ nối nhau quanh co uốn lượn, nơi có những con người dân tộc chân chất, mặc dù cuộc sống nghèo khổ nhưng trên môi luôn nở nụ cười.', 2),
(2131112, 10121352, 'Chiều:', 'Dùng cơm tối. Quý  khách nghỉ đêm tại Hà Giang.', 3),
(2131113, 10121353, 'Sáng:', 'Dùng bữa sáng. Rời thành phố Hà Giang, đường lên Quản Bạ mở ra giữa hai bên vách núi cao chất ngất, vượt vòng cua khúc khuỷu, đi lên đèo Pắc Sum. Đoàn dừng chân ngắm cảnh và chụp ảnh tại dốc Bắc Sum. Lên đến Cổng Trời Quản Bạ, Quý khách có thể ngắm nhìn thị trấn Tam Sơn thơ mộng. Núi đôi Quản Bạ hiện lên giữa những núi đá trùng điệp và ruộng bậc thang với hình dáng, thế đứng ngồ ngộ khiến du khách không khỏi ngỡ ngàng trước vẻ đẹp kỳ vĩ của tạo hoá. Hai trái núi gắn với truyền thuyết “Núi Cô Tiên” rất thi vị', 1),
(2131114, 10121353, 'Trưa:', 'Dùng cơm trưa. Đoàn đến khu di tích nhà vua mèo Vương Chí Sình một dinh thự của bậc đế vương xưa, là một công trình có kiến trúc đẹp, hiếm có và rất độc đáo của Hà Giang..', 2),
(2131115, 10121353, 'Chiều:', 'Dùng cơm tối. Nghỉ đêm tại Đồng Văn.', 3),
(2131116, 10121354, 'Sáng:', 'Dùng bữa sáng. Đoàn tiếp tục khởi hành đến Mèo Vạc, trên đường dừng chân ngắm cảnh đèo Mã Phì Lèng, một trong \"tứ đại đỉnh đèo\" tại vùng núi phía Bắc Việt Nam, Mã Phì Lèng nằm giữa cao nguyên đá Đồng Văn, một bên là vách núi Mã Pí Lèng cao dựng đứng và một bên là sông Nho Quế thơ mộng. Đoàn lên thuyền, du thuyền trên Hẻm Tu sản – Sông Nho Quế. Sông Nho Quế chảy vào Việt Nam từ địa phận thôn Séo Lủng, xã Lũng Cú, huyện Đồng Văn đi qua Hẻm núi Tu Sản rồi chảy dọc đèo Mã Pì Lèng, khi đến Mèo Vạc thì chảy theo hướng Đông vào địa phận Cao Bằng rồi đổ vào Sông Gâm. Hẻm vực Tu Sản được coi là hẻm vực sâu nhất Đông Nam Á và nằm trong thung lũng có kiến tạo địa chất độc nhất vô nhị ở Việt Nam. Hẻm vực mang vẻ đẹp nên thơ, kỳ bí như sợi chỉ màu ngọc bích huyền ảo, ẩn hiện giữa núi rừng Đông Bắc hiểm trở (chi phí xe ôm tự túc).', 1),
(2131117, 10121354, 'Trưa:', 'Dùng cơm trưa tại thị trấn Bảo Lạc. Khởi hành đi Cao Bằng. Tham quan di tích Pắc Pó, nơi Chủ tịch Hồ Chí Minh chọn làm chỗ ở sau hơn 30 năm bôn ba ở nước ngoài trở về Tổ quốc (08/02/1941) để trực tiếp lãnh đạo cách mạng Việt Nam với hang Bo Bam, bãi Cò Rạc, hang Cốc Pó, suối Lê-nin, núi Các Mác, suối Nậm.', 2),
(2131118, 10121354, 'Chiều:', 'Dùng cơm tối. Nghỉ đêm tại Cao Bằng.', 3),
(2131119, 10121355, 'Sáng:', 'Dùng bữa sáng. Đoàn tiếp tục đến tham quan thác Bản Giốc – nằm tại biên giới giữa Việt Nam và Trung Quốc, Quý khách cảm nhận được thiên nhiên hùng vĩ cảnh đẹp hữu tình, thác Bản Giốc là một trong ba thác nước tự nhiên 3 tầng đẹp nhất Đông Nam Á.', 1),
(2131120, 10121355, 'Trưa:', 'Dùng cơm trưa. Đoàn khởi hành tham quan Động Ngườm Ngao, động đá vôi được hình thành cách đây 300 triệu năm trước Công Nguyên. Cùng với thời gian, những nhũ đá và măng đá đã tạo nên những khung cảnh thật sinh động, kì thú khiến con người phải thán phục, kinh ngạc.', 2),
(2131121, 10121355, 'Chiều:', 'Dùng cơm tối. Nghỉ đêm tại Cao Bằng.', 3),
(2131122, 10121356, 'Sáng:', 'Dùng bữa sáng. Đoàn khởi hành về Hà Nội.', 1),
(2131123, 10121356, 'Trưa:', 'Trên đường, dùng cơm trưa. Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM – Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `starting_point` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale` int(2) NOT NULL,
  `price` double NOT NULL,
  `img_main` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL,
  `price_sale` double NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id`, `name`, `title`, `starting_point`, `category`, `time`, `sale`, `price`, `img_main`, `view_count`, `price_sale`, `location`) VALUES
(100000001, 'Du lịch Hè - Tour Phú Quốc - Grand World - Vinwonders từ Sài Gòn 2023', 'Du lịch Hè - Tour Phú Quốc - Grand World - Vinwonders từ Sài Gòn 2023 .Du lịch Phú Quốc Khám phá Grand World Phú Quốc là một dự án siêu khủng tái hiện những công trình của thế giới như: kênh đào Venice lãng mạn, công trình tre khổng lồ, bảo tàng gấu Teddy… Ngoài ra nơi đây còn có hàng loạt tiện ích mới được nâng cấp cùng chuỗi hoạt động nghệ thuật độc đáo và những sự kiện âm nhạc đặc sắc, quy mô “khủng” mang đến không khí lễ hội bất tận suốt 365 ngày/năm.', 'Hồ Chí Minh', 101, '3 Ngày 2 đêm', 20, 6990000, 'link', 400, 5590000, 'Phú Quốc'),
(100000002, 'Du lịch Hè - Tour Du lịch Hà Nội - Sapa - Fansipan từ Sài Gòn 2023', 'Du lịch Hè - Tour Du lịch Hà Nội - Sapa - Fansipan từ Sài Gòn 2023. Tour Hè Du lịch Sapa - Sự lựa chọn hàng đầu của những du khách muốn khám phá xứ sở sương mù. Nơi đây còn được du khách gọi bằng cái tên thân quen \"thiên đường du lịch Sapa\". Sapa không chỉ thu hút du khách về mùa đông mà còn hấp dẫn du khách về mùa xuân. Thành phố Sapa chìm trong làn mây bồng bềnh huyền ảo, vẽ nên một bức tranh sơn thủy hữu tình. Một dáng vẻ trầm mặc, uy nghi pha chút lãng mạn thơ mộng, quý khách sẽ tìm thấy tất cả những cảm nhận ấy khi được tận mắt ngắm nhìn Sapa.', 'Hồ Chí Minh', 102, '3 Ngày 2 đêm', 15, 8690000, 'link2', 122, 7390000, 'Hà Nội'),
(100000003, 'Du lịch Hà Nội - Quảng Bình - Động Phong Nha - Bãi Đá Nhảy - Hang Tám Cô dịp Hè từ Hà Nội 2023', 'Du lịch Hà Nội mùa Hè - Tour Du lịch Quảng Bình Hè 2023 - Quảng Bình nằm trên mảnh đất Miền Trung với nhiều di tích và danh lam thắng cảnh đẹp như \"Vườn Quốc Gia Phong Nha Kẻ Bàng, Động Thiên Đường, Biển Nhật Lệ,\"... Quảng Bình là địa điểm du lịch độc đáo và thu hút rất đông du khách trong và ngoài nước. Tour du lịch Quảng Bình là lựa chọn hấp dẫn dành cho khách du lịch yêu thiên nhiên và đam mê mạo hiểm.. Tour du lịch Quảng Bình Hè tham quan Bãi Đá Nhảy là một bãi tắm tuyệt đẹp ở Quảng Bình. Chuyến du lịch Quảng Bình của bạn không thể bỏ lỡ một điểm tham quan hấp dẫn, tuyệt đẹp như thế này.', 'Hà Nội', 105, '3 Ngày 3 đêm', 12, 10690000, 'link2', 122, 9410000, 'Quảng Bình'),
(100000004, 'Du lịch Hè - Tour Du lịch Đà Nẵng - Bà Nà - Hội An từ Sài Gòn 2023', 'Du lịch Hè - Tour Du lịch Đà Nẵng - Bà Nà - Hội An từ Sài Gòn 2023. Tour Hè Du lịch Đà Nẵng được mệnh danh là ‘’thành phố đáng đến’’ với dòng sông Hàn thơ mộng với cây cầu Rồng biểu tượng của Thành phố biển du lịch Đà Nẵng - nơi mà quý khách có thể cảm nhận được sự pha trộn giữa khí hậu miền Bắc, miền Nam.Ngoài ra Đà Nẵng còn sở hữu nhiều danh lam thắng cảnh làm say lòng người như: Bà Nà Hills, Bán Đảo Sơn Trà, Ngũ Hành Sơn, Đà Nẵng, phố cổ Hội An….', 'Hồ Chí Minh', 103, '3 ngày 2 đêm', 21, 9300000, 'link4', 101, 7350000, 'Đà Nẵng'),
(100000005, 'Du lịch Miền Tây Tour Mỹ Tho - Cần Thơ từ Sài Gòn giá tốt 2023', 'Du lịch Miền Tây Tour Mỹ Tho - Cần Thơ từ Sài Gòn giá tốt . Du lịch Miền Tây - Xuôi theo dòng nước du khách đến với chợ nổi Cái Răng để chứng kiến điều kì lạ, chợ mà nổi được trên sông? Du khách đi chợ nổi Cái Răng trên sông Cần Thơ không chỉ để ngắm nhìn những ghe thuyền đầy ắp hoa quả, hàng hóa mà còn để thưởng thức hương vị tô hủ tiếu hay tô bún cua thơm ngon giữa dòng nước mênh mông. Bên cạnh tham quan các Chợ nổi, du khách còn được viếng thăm Thiền Viện Trúc Lâm Phương Nam, Thiền Viện được xem là một trong những công trình nghệ thuật độc đáo của đất Tây Đô - ngôi chùa rộng nhất khu vực Đồng bằng sông Cửu Long, được xây dựng trên diện tích gần 4 ha, với kết cấu lợp ngói, khung cột gỗ lim, chánh điện rộng cùng nhà tổ, nhiều tượng Phật được làm bằng gỗ Du Sam.', 'Hồ Chí Minh', 102, '2 Ngày 1 đêm', 0, 6990000, 'link', 101, 6990000, 'Miền Tây'),
(100000006, 'Du lịch Cà Mau - Bạc Liêu - Sóc Trăng 2 ngày 2 đêm từ Sài Gòn giá tốt 2023', 'Du lịch Cà Mau - Bạc Liêu - Sóc Trăng 2 ngày 2 đêm từ Sài Gòn giá tốt 2023 - Du khách sẽ được chu du miền Đất Mũi, nơi cuối cùng của tổ quốc để cảm nhận hết cái \"chất\" của vùng Đồng Bằng Sông Cửu Long rộng lớn với hệ sinh thái rừng ngập mặn rất đa dạng, ngắm cảnh thiên nhiên vả thưởng thức nhiều đặc sản hấp dẫn của mảnh đất địa cuối Tổ Quốc.', 'Hồ Chí Minh', 102, '2 Ngày 1 đêm', 21, 6990000, 'link', 210, 6990000, 'Cà Mau'),
(100000007, 'Du lịch Nha Trang - Tháp Bà Ponagar - Chùa Long Sơn - Vinwonders từ Sài Gòn 2023', 'Du lịch Nha Trang - Tháp Bà Ponagar - Chùa Long Sơn - Vinwonders từ Sài Gòn 2023. Du lịch Nha Trang - Thành phố biển Nha Trang nổi tiếng với những cảnh quan thiên nhiên đẹp “mê hoặc” lòng người, hàng năm thu hút hàng trăm ngàn du khách cả trong và ngoài nước đến thăm quan nghỉ dưỡng.', 'Hồ Chí Minh', 103, '3 Ngày 2 đêm', 0, 4799000, 'link', 0, 4799000, 'Nha Trang'),
(100000008, 'Du lịch Hè - Tour Đà Nẵng - Huế - Thánh Địa La Vang - Động Thiên Đường từ Sài Gòn 2023', 'Du lịch Hè - Tour Đà Nẵng - Huế - Thánh Địa La Vang - Động Thiên Đường từ Sài Gòn 2023 - Được thiên nhiên đặc biệt ưu đãi, mảnh đất miền Trung đẹp với nhiều dãy núi hùng vỹ xanh rì, những bờ biển cát trắng mịn thoai thoải và những dòng sông trong vắt thơ mộng.', 'Hồ Chí Minh', 103, '5 Ngày 4 đêm', 20, 7999000, 'link', 200, 7999000, 'Đà Nẵng'),
(100000009, 'Du lịch Hè - Tour Du lịch Hà Nội - Ninh Bình - Tam Chúc từ Sài Gòn 2023', 'Du lịch Hè - Tour Du lịch Hà Nội - Ninh Bình - Tam Chúc từ Sài Gòn 2023. Tour He Du lịch Ninh Bình là thành phố nằm ở cực Nam của đồng bằng sông Hồng với nhiều danh lam thắng cảnh nổi tiếng như cố đô Hoa Lư cùng bề dày lịch sử hào hùng, quần thể Tam Cốc - Bích Động đẹp say lòng, Tràng An với khung cảnh thiên nhiên hùng vĩ và nhiều địa điểm du lịch tâm linh như chùa Bái Đính, nhà thờ Phát Diệm.', 'Hồ Chí Minh', 104, '3 Ngày 2 đêm', 0, 7399000, 'link', 0, 7999000, 'Hà Nội'),
(100000010, 'Tour Du lịch Miền Tây Mỹ Tho - Cần Thơ - Châu Đốc từ Sài Gòn 2023', 'Tour Du lịch Miền Tây Mỹ Tho - Cần Thơ - Châu Đốc từ Sài Gòn 2023. Du lịch Miền Tây - Mang vẻ đẹp đặc trưng của vùng đồng bằng sông nước Cửu Long, An Giang nổi tiếng bởi cảnh quan thiên nhiên nhuốm màu sắc huyền bí. Nằm trong dãy núi Thất Sơn, núi Cấm là  ngọn núi cao nhất, nơi đây cảnh trí sơn thủy hữu tình, khí hậu mát mẻ được ví như một phiên bản “Đà Lạt” của miền Tây, là điểm đến lý tưởng du lịch sinh thái và tâm linh cho du khách hành hương cả nước.', 'Hồ Chí Minh', 101, '3 Ngày 2 đêm', 20, 3299000, 'link1', 180, 3299000, 'Mỹ Tho'),
(100000011, 'Du lịch Phan Thiết - Cát Vàng - Mũi Né - Hòn Rơm từ Sài Gòn 2023', 'Du lịch Phan Thiết - Cát Vàng - Mũi Né - Hòn Rơm từ Sài Gòn 2023 . Du lịch Phan Thiết sẽ điểm dừng chân đầy thú vị cho du khách trong những ngày nghỉ cuối tuần của mình. Với làn nước biển trong xanh, những con sóng hiền hòa vỗ về trên bờ cát trải dài….mang đến cho bạn một cảm giác thanh bình đến khó tả. ', 'Hồ Chí Minh', 103, '2 Ngày 1 đêm', 0, 2299000, 'link', 204, 2299000, 'Phan Thiết'),
(100000012, 'Du lịch Nam Du 3 ngày 3 đêm từ Tp.HCM giá tốt 2023', 'Du lịch Nam Du 3 ngày 3 đêm từ Tp.HCM giá tốt 2022. Du lịch Miền Tây - Chương trình tham quan Đảo Nam Du 3 ngày 3 đêm lần này sẽ đưa du khách ghé thăm những địa điểm tuyệt đẹp nhất của đảo Nam Du, lặn ngắm san hô, khám phá thế giới thủy cung huyền ảo, tham quan Dốc Ông Tình, chinh phục hải đăng Nam Du - nơi cao nhất của đảo chứa đựng nhiều câu chuyện thú vị... ', 'Hồ Chí Minh', 106, '3 Ngày 3 đêm', 0, 3999000, 'link', 0, 3999000, 'Nam Du'),
(100000013, 'Du lịch Đà Lạt View - Thiền Viện Trúc Lâm - Quê Garden - Fairytale Land từ Sài Gòn 2023', 'Du lịch Đà Lạt View - Thiền Viện Trúc Lâm - Quê Garden - Fairytale Land từ Sài Gòn 2023. Du lịch Đà Lạt cùng Du Lịch Việtngoài việc thưởng lãm vẻ đẹp đặc sắc của các loài hoa, khung cảnh thơ mộng với khí trời se lạnh của vùng đất phố núi, Quý khách sẽ được cảm nhận Đà Lạt chính là địa điểm du lịch đi hoài không chán bởi những “tọa độ sống ảo đẹp không góc chết” mang những phong cách hoàn toàn riêng biệt.', 'Hồ Chí Minh', 102, '3 Ngày 2 đêm', 20, 2599000, 'link', 103, 2599000, 'Đà Lạt'),
(100000014, 'Du lịch Đà Lạt - Thiền Viện Trúc Lâm - Nhà Thờ Don Bosco từ Sài Gòn 2023', 'Du lịch Đà Lạt cùng Du Lịch Việt sẽ đưa quý khách đến với thành phố nổi tiếng bậc nhất Việt Nam với sự thơ mộng và lãng mạn đặc trưng của mình. Đà Lạt được ví như một Paris thu nhỏ với view đẹp, thu hút lượng khách du lịch lớn mỗi năm trải nghiệm, khám phá. Du lịch Đà Lạt hẳn là ai cũng muốn tìm và ngắm những địa điểm view đẹp.', 'Hồ Chí Minh', 103, '3 Ngày 2 đêm', 0, 2599000, 'link', 201, 2599000, 'Đà Lạt'),
(100000015, 'Du lịch Hè - Tour Du lịch Đông Bắc Hà Nội - Hà Giang - Cao Bằng từ Sài Gòn 2023', 'Du lịch Hè - Tour Du lich Đông Bắc Hà Nội - Hà Giang - Cao Bằng từ Sài Gòn 2023. Tour du lịch Đông Bắc - Du Lịch Việt đưa du khách đến không gian xanh mát của núi rừng. Hành trình du lịch Đông Bắc, đưa du khách tham quan những thắng cảnh đồi núi trùng điệp hùng vĩ, hay những thác nước chảy cuồn cuộn, những cảnh thiên nhiên thơ mộng, hay sự nhộn nhịp của những con phố cổ. ', 'Hồ Chí Minh', 110, '5 Ngày 4 đêm', 20, 9299000, 'link', 388, 9299000, 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `date_of_birth`, `gender`, `address`, `password`) VALUES
(21, 'Phan Văn Hùng', '191300184191@st.hcmuaf.edu.vn', NULL, NULL, NULL, '7', '$2a$10$minopaNwNSkYV1PzEpJyN.IlnYdB6saeG9qqP/YvJ7l8FCDRcdbde'),
(22, 'Huỳnh Thị Thu Diệu', 'thudieu@gmail.com', NULL, NULL, NULL, '12', '$2a$10$7Tl/FqFG8VRuHYm.rjx9v.muW11wWQl53x6eKMc67ATJjfCCqL80K'),
(23, 'Phan Van Hung ', '19130072@st.hcmuaf.edu.vn', '0869251532', '05/01/2001', 'Nam', 'Ktx A, khu pho 6,Linh Trung,Thu Duc,Ho Chí Minh', '$2a$10$NbAHxXm6hv9nZ8cvZkF4MODq96lxtFMNh3djBRkDL2tXx47vX9ofm'),
(25, 'Jonny Phan', 'jonnyphan@', NULL, NULL, NULL, '9', '$2a$10$DzRKNR.BA3Zg1Lid34CfDeaCEpfMJj7p.8k2O2M7SqU2z.l5WzTXm'),
(27, 'Jonny Phan', 'hungphan.05012001@gmail.com', NULL, NULL, NULL, '11', '$2a$10$LlZwvbJgB3XjYwvO4DXFw.GJdAUZwSoHY4C0FP7zFZOtgig/7HoZ.'),
(28, 'Phan Văn Hùng', '19130081@st.hcmuaf.edu.vn', '0869251532', '05/01/2001', 'Nam', 'khu phố 6,Linh Trung,Thủ Dức,Hồ Chí Minh', '$2a$10$1yMtfM9XmFNJyVG2mTD07u/shZYEr5ZL6fGOL780xXsMT64oKJhN2'),
(29, 'Hùng Phan', 'hungtest@gmail.com', NULL, NULL, NULL, '0', '$2a$10$ZVc1FPgz3uFyT25fffu0mup/OPs81lyTuRCuKUQOGtjVSP23Jpniu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(20) NOT NULL,
  `role_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(21, 1),
(22, 2),
(23, 3),
(25, 4),
(27, 6),
(28, 7),
(29, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_otp`
--

CREATE TABLE `user_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `otp_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_otp`
--

INSERT INTO `user_otp` (`id`, `email`, `otp_code`, `expiry_time`) VALUES
(1, '19130081@st.hcmuaf.edu.vn', '103178', '2023-06-26 02:51:32'),
(2, '19130081@st.hcmuaf.edu.vn', '817913', '2023-06-26 05:36:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wish_list`
--

CREATE TABLE `wish_list` (
  `id` bigint(20) NOT NULL,
  `id_tour` bigint(20) NOT NULL,
  `id_user` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wish_list`
--

INSERT INTO `wish_list` (`id`, `id_tour`, `id_user`) VALUES
(12414218, 100000004, 23),
(12414219, 100000003, 23),
(12414220, 100000002, 23),
(12414222, 100000005, 23);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `departure_dates`
--
ALTER TABLE `departure_dates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_avatar`
--
ALTER TABLE `img_avatar`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Chỉ mục cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Chỉ mục cho bảng `user_otp`
--
ALTER TABLE `user_otp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001940;

--
-- AUTO_INCREMENT cho bảng `departure_dates`
--
ALTER TABLE `departure_dates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000271;

--
-- AUTO_INCREMENT cho bảng `img_avatar`
--
ALTER TABLE `img_avatar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12120036;

--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10121359;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000017;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `user_otp`
--
ALTER TABLE `user_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wish_list`
--
ALTER TABLE `wish_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12414224;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
