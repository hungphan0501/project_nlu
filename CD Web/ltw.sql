-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 04:32 AM
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
-- Cơ sở dữ liệu: `ltw`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `specific_address` varchar(255) NOT NULL,
  `is_default` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `id_customer`, `user_name`, `phone`, `city`, `district`, `ward`, `specific_address`, `is_default`) VALUES
(7, 28, 'Hùng Phan', '0869251532', 'Ho Chi Minh', 'Thu Duc', 'Linh Trung', 'KTX C Nong Lam, Linh Trung, Thu Duc, Ho Chi Minh', 1),
(8, 28, 'Phan V?n Hùng', '0869251532', 'Bình D??ng', 'D? An', '?ông Hòa', '89/17 Tân L?p, ?ông Hòa, D? An, Bình D??ng', 1),
(9, 28, 'Phan V?n Hùng', '0869251532', 'Bình D??ng', 'D? An', '?ông Hòa', 'Khu Tao S?ng, ?ông Hòa, D? An, Bình D??ng', 0),
(10, 23, 'Hùng Phan', '0869251532', 'Hồ Chí Minh', 'Thủ Đức', 'Linh Trung', ', Linh Trung, Thủ Đức, Hồ Chí Minh', 0),
(11, 23, 'Hùng Phan', '0869251532', 'Hồ Chí Minh', 'Thủ Đức', 'Linh Trung', 'Khu Tao Sống', 0),
(12, 30, 'Hùng Phan', '0965787813', 'Hồ Chí Minh', 'Thủ Đức', 'Linh Trung', 'Ktx C, Nông Lâm, Linh Trung, Thủ Đức, Hồ Chí Minh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `urlImg` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `linkTo` varchar(255) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `urlImg`, `title`, `text`, `linkTo`, `type`) VALUES
(1, 'men-intro-carousel1.webp', 'men-carousel-1', '', '', 'carousel-man'),
(2, 'men-intro-carousel2.webp', 'men-carousel-1', '', '', 'carousel-man'),
(3, 'men-intro-carousel3.webp', 'men-carousel-1', '', '', 'carousel-man'),
(4, 'women-intro-carousel1.webp', 'women-carousel', '', '', 'carousel-woman'),
(5, 'women-intro-carousel2.webp', 'women-carousel', '', '', 'carousel-woman'),
(6, 'women-intro-carousel3.webp', 'women-carousel', '', '', 'carousel-woman'),
(7, 'man-running.webp', 'Running Man', 'Chances are, there’s a shoe here that you’ll love as much as they do, and you can scroll deeper for a variety of shoes that cater to different preferences for stability and cushioning.', 'SearchListProduct?categoryOnNav=Running Man&pagination=1', 'intro-category-man'),
(8, 'man-football.webp', 'Trainer Men', 'About half of those runners are men—and most importantly, they’re an extremely diverse group of guys. Some are seriously speedy dudes hitting sky-high mileage and knocking on the door of the Olympic Trial', 'SearchListProduct?categoryOnNav=Trainer Man&pagination=1', 'intro-category-man'),
(10, 'man-skateboard.jpg', 'golf man', 'We’re always pushing innovation in the streets, on the mountains and everywhere in between. Designed, tested and inspired by our pro skate and snow teams, DC products are geared towards supporting the needs of our top pros, but with the everyday athlete in mind. This is where style meets performance. This is where durability meets affordability. This is DC Shoes.', 'SearchListProduct?categoryOnNav=Skateboard Man&pagination=1', 'intro-category-man'),
(11, 'man-sneakers.jpg\r\n', 'Sneakers Man', 'Just when you thought you\'d seen it all, Nike wows with an all-new way to quickly and easily get into your shoes. Great for people with limited mobility seeking ease of entry, or anyone wanting a quicker way to get in and go! The entire heel (including the sole) of the Nike Go FlyEase pivots open for a totally hands-free entry.\n\n', 'SearchListProduct?categoryOnNav=Sneakers Man&pagination=1', 'intro-category-man'),
(13, 'woman-football.jfif', 'Trainer Woman', 'About half of those runners are men—and most importantly, they’re an extremely diverse group of guys. Some are seriously speedy dudes hitting sky-high mileage and knocking on the door of the Olympic Trial', 'SearchListProduct?categoryOnNav=Running Woman&pagination=1', 'intro-category-woman'),
(14, 'woman-sneakers.webp\r\n', 'sneakers woman', 'Just when you thought you\'d seen it all, Nike wows with an all-new way to quickly and easily get into your shoes. Great for people with limited mobility seeking ease of entry, or anyone wanting a quicker way to get in and go! The entire heel (including the sole) of the Nike Go FlyEase pivots open for a totally hands-free entry.\n\n', 'SearchListProduct?categoryOnNav=Sneakers Woman&pagination=1', 'intro-category-woman'),
(15, 'woman-slide.jpg\r\n', 'Trainer Woman', 'Ideal for the pool deck or shower, these men\'s slides feature a quick-drying Cloudfoam footbed that cradles your feet with soft cushioning. The bandage-style upper shows off contrast 3-Stripes for a classic athletic look. The EVA outsole provides lightweight comfort.\n\n', 'SearchListProduct?categoryOnNav=Slides Woman&pagination=1', 'intro-category-woman'),
(16, 'woman-skateboard.jfif\r\n', 'golf woman', 'We’re always pushing innovation in the streets, on the mountains and everywhere in between. Designed, tested and inspired by our pro skate and snow teams, DC products are geared towards supporting the needs of our top pros, but with the everyday athlete in mind. This is where style meets performance. This is where durability meets affordability. This is DC Shoes.', 'SearchListProduct?categoryOnNav=Skateboard Woman&pagination=1', 'intro-category-woman'),
(17, 'running-woman.jpg', 'Running Woman', 'Chances are, there’s a shoe here that you’ll love as much as they do, and you can scroll deeper for a variety of shoes that cater to different preferences for stability and cushioning.', 'SearchListProduct?categoryOnNav=Running Woman&pagination=1', 'intro-category-woman');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`) VALUES
(1, 'Adidas', 'logo-brand-02.svg'),
(2, 'On running', '2_on-running-logo-vector.png'),
(3, 'Puma', 'logo-brand-09.svg'),
(4, 'Reebok', 'logo-brand-05.svg'),
(5, 'Salomon', 'salomon-logo.png'),
(6, 'Tommy Hilfiger', 'tommy-hilfiger-2.svg'),
(7, 'Under Armour', 'logo-brand-08.svg'),
(9, 'Vans', 'logo-brand-10.svg'),
(10, 'Asics', 'logo-brand-01.svg'),
(12, 'Calvin Klein', '1200px-CK_Calvin_Klein_logo.png'),
(13, 'Converse', 'converse-logo.png'),
(14, 'Emporio Armani EA7', 'ea7-emporio-armani.png'),
(15, 'Lacoste', '1280px-Lacoste_logo.png'),
(16, 'New Balance', 'logo-brand-06.svg'),
(17, 'Nike', 'logo-brand-04.svg'),
(22, 'test', '22_Screenshot (55).png'),
(23, 'rides', 'Screenshot (45).png'),
(26, 'testttt', 'Screenshot (37).png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `id_customer` int(20) NOT NULL,
  `id_product_detail` int(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_customer`, `id_product_detail`, `quantity`, `total_price`) VALUES
(2, 22, 10, 12, 720),
(3, 18, 20, 2, 180),
(19, 30, 189, 5, 375);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `gender`) VALUES
(2, 'golf', 'man'),
(3, 'running', 'man'),
(4, 'trainer', 'man'),
(5, 'sneaker', 'man'),
(6, 'climbing', 'woman'),
(7, 'golf', 'woman'),
(8, 'running', 'woman'),
(9, 'trainer', 'woman'),
(10, 'sneaker', 'woman'),
(12, 'themsss', 'man'),
(13, 'testss', 'man');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_product` int(8) NOT NULL,
  `content` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_reply` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_product`, `content`, `date`, `id_user`, `id_reply`) VALUES
(15, 16070029, 'Sản phẩm này rất tốt, phù hợp với túi tiền của sinh viên, rất chất lượng và tuyệt vời', '26/05/23: 00:30:49', 23, 0),
(16, 16240485, 'Sản phẩm rất tốt, chất lượng phù hợp với sinh viên.', '28/05/23: 22:58:06', 30, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linkimg`
--

CREATE TABLE `linkimg` (
  `id` int(11) NOT NULL,
  `id_product` int(8) NOT NULL,
  `img` varchar(255) NOT NULL,
  `level` int(1) DEFAULT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `linkimg`
--

INSERT INTO `linkimg` (`id`, `id_product`, `img`, `level`, `color`) VALUES
(1, 16070029, 'GY3171_a.jpg', 0, 'white'),
(2, 16070029, 'GY3171_b.jpg', 1, 'white'),
(3, 16070029, 'GY3171_c.jpg', 1, 'white'),
(4, 16070029, 'GY3171_d.jpg', 1, 'white'),
(5, 16070029, 'GY3171_g.jpg', 1, 'white'),
(6, 16070588, '392770_a.jpg', 0, 'black'),
(7, 16070588, '392770_b.jpg', 1, 'black'),
(8, 16070588, '392770_c.jpg', 1, 'black'),
(9, 16070588, '392770_d.jpg', 1, 'black'),
(10, 16070588, '392772_a.jpg', 0, 'white'),
(11, 16070588, '392772_b.jpg', 1, 'white'),
(12, 16070588, '392772_c.jpg', 1, 'white'),
(13, 16070588, '392772_d.jpg', 1, 'white'),
(14, 16071726, '421424_a.jpg', 0, 'black'),
(15, 16071726, '421424_b.jpg', 1, 'black'),
(16, 16071726, '421424_c.jpg', 1, 'black'),
(17, 16071726, '421424_d.jpg', 1, 'black'),
(18, 16071726, '450944_a.jpg', 0, 'white'),
(19, 16071726, '450944_b.jpg', 1, 'white'),
(20, 16071726, '450944_c.jpg', 1, 'white'),
(21, 16071726, '450944_d.jpg', 1, 'white'),
(22, 16085921, '460771_a.jpg', 0, 'white'),
(23, 16085921, '460771_b.jpg', 1, 'white'),
(24, 16085921, '460771_c.jpg', 1, 'white'),
(25, 16085921, '460771_d.jpg', 1, 'white'),
(26, 16085932, 'S42780_a.jpg', 0, 'white'),
(27, 16085932, 'S42780_b.jpg', 1, 'white'),
(28, 16085932, 'S42780_c.jpg', 1, 'white'),
(29, 16085932, 'S42780_d.jpg', 1, 'white'),
(30, 16085932, 'S42780_g.jpg', 1, 'white'),
(31, 16116869, '459084_a.jpg', 0, 'white'),
(32, 16116869, '459084_b.jpg', 1, 'white'),
(33, 16116869, '459084_c.jpg', 1, 'white'),
(34, 16116869, '459084_d.jpg', 1, 'white'),
(35, 16116869, '476148_a.jpg', 0, 'black'),
(36, 16116869, '476148_b.jpg', 1, 'black'),
(37, 16116869, '476148_c.jpg', 1, 'black'),
(38, 16116869, '476148_d.jpg', 1, 'black'),
(39, 16118109, '473069_a.jpg', 0, 'white'),
(40, 16118109, '473069_b.jpg', 1, 'white'),
(41, 16118109, '473069_c.jpg', 1, 'white'),
(42, 16118109, '473069_d.jpg', 1, 'white'),
(43, 16119350, '476448_a.jpg', 0, 'white'),
(44, 16119350, '476448_b.jpg', 1, 'white'),
(45, 16119350, '476448_c.jpg', 1, 'white'),
(46, 16119350, '476448_d.jpg', 1, 'white'),
(47, 16126979, 'H04562_a.jpg', 0, 'white'),
(48, 16126979, 'H04562_b.jpg', 1, 'white'),
(49, 16126979, 'H04562_c.jpg', 1, 'white'),
(50, 16126979, 'H04562_d.jpg', 1, 'white'),
(51, 16126979, 'H04562_g.jpg', 1, 'white'),
(52, 16127820, '475826_a.jpg', 0, 'white'),
(53, 16127820, '475826_b.jpg', 1, 'white'),
(54, 16127820, '475826_c.jpg', 1, 'white'),
(55, 16127820, '475826_d.jpg', 1, 'white'),
(56, 16128160, '393403_a.jpg', 0, 'white'),
(57, 16128160, '393403_b.jpg', 1, 'white'),
(58, 16128160, '393403_c.jpg', 1, 'white'),
(59, 16128160, '393403_d.jpg', 1, 'white'),
(60, 16132374, '392770_a.jpg', 0, 'black'),
(61, 16132374, '392770_b.jpg', 1, 'black'),
(62, 16132374, '392770_c.jpg', 1, 'black'),
(63, 16132374, '392770_d.jpg', 1, 'black'),
(64, 16132374, '392772_a.jpg', 0, 'white'),
(65, 16132374, '392772_b.jpg', 1, 'white'),
(66, 16132374, '392772_c.jpg', 1, 'white'),
(67, 16132374, '392772_d.jpg', 1, 'white'),
(68, 16132531, 'CT2229-004_a.jpg', 0, 'white'),
(69, 16132531, 'CT2229-004_b.jpg', 1, 'white'),
(70, 16132531, 'CT2229-004_c.jpg', 1, 'white'),
(71, 16132531, 'CT2229-004_d.jpg', 1, 'white'),
(72, 16132531, 'CT2229-004_g.jpg', 1, 'white'),
(73, 16132531, 'CT2229-004_h.jpg', 1, 'white'),
(74, 16135411, '475661_a.jpg', 0, 'black'),
(75, 16135411, '475661_b.jpg', 1, 'black'),
(76, 16135411, '475661_c.jpg', 1, 'black'),
(77, 16135411, '475661_d.jpg', 1, 'black'),
(78, 16135411, '475821_a.jpg', 0, 'white'),
(79, 16135411, '475821_b.jpg', 1, 'white'),
(80, 16135411, '475821_c.jpg', 1, 'white'),
(81, 16135411, '475821_d.jpg', 1, 'white'),
(82, 16135426, 'BQ3207-100_a.jpg', 0, 'white'),
(83, 16135426, 'BQ3207-100_b.jpg', 1, 'white'),
(84, 16135426, 'BQ3207-100_c.jpg', 1, 'white'),
(85, 16135426, 'BQ3207-100_d.jpg', 1, 'white'),
(86, 16135426, 'BQ3207-100_g.jpg', 1, 'white'),
(87, 16135439, '458390_a.jpg', 0, 'white'),
(88, 16135439, '458390_b.jpg', 1, 'white'),
(89, 16135439, '458390_c.jpg', 1, 'white'),
(90, 16135439, '458390_d.jpg', 1, 'white'),
(91, 16135462, '458365_a.jpg', 0, 'black'),
(92, 16135462, '458365_b.jpg', 1, 'black'),
(93, 16135462, '458365_c.jpg', 1, 'black'),
(94, 16135462, '458365_d.jpg', 1, 'black'),
(95, 16135462, '459669_a.jpg', 0, 'white'),
(96, 16135462, '459669_b.jpg', 1, 'white'),
(97, 16135462, '459669_c.jpg', 1, 'white'),
(98, 16135462, '459669_d.jpg', 1, 'white'),
(99, 16135477, '445873_a.jpg', 0, 'white'),
(100, 16135477, '445873_b.jpg', 1, 'white'),
(101, 16135477, '445873_c.jpg', 1, 'white'),
(102, 16135477, '445873_d.jpg', 1, 'white'),
(103, 16135477, '445875_a.jpg', 0, 'black'),
(104, 16135477, '445875_b.jpg', 1, 'black'),
(105, 16135477, '445875_c.jpg', 1, 'black'),
(106, 16135477, '445875_d.jpg', 1, 'black'),
(107, 16138580, '398348_a.jpg', 0, 'white'),
(108, 16138580, '398348_b.jpg', 1, 'white'),
(109, 16138580, '398348_c.jpg', 1, 'white'),
(110, 16138580, '398348_d.jpg', 1, 'white'),
(111, 16138580, '398348_g.jpg', 1, 'white'),
(112, 16138580, '398348_h.jpg', 1, 'white'),
(113, 16138603, '396047_a.jpg', 0, 'white'),
(114, 16138603, '396047_b.jpg', 1, 'white'),
(115, 16138603, '396047_c.jpg', 1, 'white'),
(116, 16138603, '396047_d.jpg', 1, 'white'),
(117, 16138603, '396052_a.jpg', 0, 'black'),
(118, 16138603, '396052_b.jpg', 1, 'black'),
(119, 16138603, '396052_c.jpg', 1, 'black'),
(120, 16138603, '396052_d.jpg', 1, 'black'),
(121, 16140797, '397003_a.jpg', 0, 'white'),
(122, 16140797, '397003_b.jpg', 1, 'white'),
(123, 16140797, '397003_c.jpg', 1, 'white'),
(124, 16140797, '397003_d.jpg', 1, 'white'),
(125, 16140797, '461398_a.jpg', 0, 'black'),
(126, 16140797, '461398_b.jpg', 1, 'black'),
(127, 16140797, '461398_c.jpg', 1, 'black'),
(128, 16140797, '461398_d.jpg', 1, 'black'),
(129, 16140799, '476034_a.jpg', 0, 'white'),
(130, 16140799, '476034_b.jpg', 1, 'white'),
(131, 16140799, '476034_c.jpg', 1, 'white'),
(132, 16140799, '476034_d.jpg', 1, 'white'),
(133, 16141679, '393408_a.jpg', 0, 'black'),
(134, 16141679, '393408_b.jpg', 1, 'black'),
(135, 16141679, '393408_c.jpg', 1, 'black'),
(136, 16141679, '393408_d.jpg', 1, 'black'),
(137, 16141679, '393411_a.jpg', 0, 'white'),
(138, 16141679, '393411_b.jpg', 1, 'white'),
(139, 16141679, '393411_c.jpg', 1, 'white'),
(140, 16141679, '393411_d.jpg', 1, 'white'),
(141, 16144878, '16144878_H04537_g.jpg', 1, 'white'),
(142, 16144878, '457964_a.jpg', 1, 'white'),
(143, 16144878, '457964_b.jpg', 1, 'white'),
(144, 16144878, '457964_c.jpg', 1, 'white'),
(145, 16144878, '457964_d.jpg', 1, 'white'),
(146, 16158819, '16158819_365927_e.jpg', 1, 'white'),
(147, 16158819, '16158819_368531_b.jpg', 1, 'white'),
(148, 16158819, '16158819_392796_f.jpg', 1, 'white'),
(149, 16158819, '16158819_392801_e.jpg', 1, 'white'),
(150, 16158819, '16158819_S42774_g.jpg', 1, 'white'),
(151, 16158819, 'G57564_a.jpg', 1, 'white'),
(152, 16158819, 'G57564_b.jpg', 1, 'white'),
(153, 16158819, 'G57564_c.jpg', 1, 'white'),
(154, 16158819, 'G57564_d.jpg', 1, 'white'),
(155, 16158819, 'G57564_g.jpg', 1, 'white'),
(156, 16159139, '415595_a.jpg', 0, 'black'),
(157, 16159139, '415595_b.jpg', 1, 'black'),
(158, 16159139, '415595_c.jpg', 1, 'black'),
(159, 16159139, '415595_d.jpg', 1, 'black'),
(160, 16159139, '415600_a.jpg', 0, 'white'),
(161, 16159139, '415600_b.jpg', 1, 'white'),
(162, 16159139, '415600_c.jpg', 1, 'white'),
(163, 16159139, '415600_d.jpg', 1, 'white'),
(164, 16159236, '398640_a.jpg', 0, 'black'),
(165, 16159236, '398640_b.jpg', 1, 'black'),
(166, 16159236, '398640_c.jpg', 1, 'black'),
(167, 16159236, '398640_d.jpg', 1, 'black'),
(168, 16159236, '398645_a.jpg', 0, 'white'),
(169, 16159236, '398645_b.jpg', 1, 'white'),
(170, 16159236, '398645_c.jpg', 1, 'white'),
(171, 16159236, '398645_d.jpg', 1, 'white'),
(172, 16159256, '476083_a.jpg', 0, 'white'),
(173, 16159256, '476083_b.jpg', 1, 'white'),
(174, 16159256, '476083_c.jpg', 1, 'white'),
(175, 16159256, '476083_d.jpg', 1, 'white'),
(176, 16159256, '476084_a.jpg', 0, 'black'),
(177, 16159256, '476084_b.jpg', 1, 'black'),
(178, 16159256, '476084_c.jpg', 1, 'black'),
(179, 16159256, '476084_d.jpg', 1, 'black'),
(180, 16159327, '445875_a.jpg', 0, 'white'),
(181, 16159327, '445875_b.jpg', 1, 'white'),
(182, 16159327, '445875_c.jpg', 1, 'white'),
(183, 16159327, '445875_d.jpg', 1, 'white'),
(184, 16159327, '454756_a.jpg', 0, 'black'),
(185, 16159327, '454756_b.jpg', 1, 'black'),
(186, 16159327, '454756_c.jpg', 1, 'black'),
(187, 16159327, '454756_d.jpg', 1, 'black'),
(188, 16159351, '473881_a.jpg', 0, 'white'),
(189, 16159351, '473881_b.jpg', 1, 'white'),
(190, 16159351, '473881_c.jpg', 1, 'white'),
(191, 16159351, '473881_d.jpg', 1, 'white'),
(192, 16159643, '460721_a.jpg', 0, 'black'),
(193, 16159643, '460721_b.jpg', 1, 'black'),
(194, 16159643, '460721_c.jpg', 1, 'black'),
(195, 16159643, '460721_d.jpg', 1, 'black'),
(196, 16159643, '467004_a.jpg', 0, 'white'),
(197, 16159643, '467004_b.jpg', 1, 'white'),
(198, 16159643, '467004_c.jpg', 1, 'white'),
(199, 16159643, '467004_d.jpg', 1, 'white'),
(200, 16159684, '368531_a.jpg', 0, 'black'),
(201, 16159684, '368531_b.jpg', 1, 'black'),
(202, 16159684, '368531_c.jpg', 1, 'black'),
(203, 16159684, '368531_d.jpg', 1, 'black'),
(204, 16159684, '459102_a.jpg', 0, 'white'),
(205, 16159684, '459102_b.jpg', 1, 'white'),
(206, 16159684, '459102_c.jpg', 1, 'white'),
(207, 16159684, '459102_d.jpg', 1, 'white'),
(208, 16159754, 'H00496_a.jpg', 0, 'white'),
(209, 16159754, 'H00496_b.jpg', 1, 'white'),
(210, 16159754, 'H00496_c.jpg', 1, 'white'),
(211, 16159754, 'H00496_d.jpg', 1, 'white'),
(212, 16159754, 'H00496_g.jpg', 1, 'white'),
(213, 16159845, '393340_a.jpg', 0, 'white'),
(214, 16159845, '393340_b.jpg', 1, 'white'),
(215, 16159845, '393340_c.jpg', 1, 'white'),
(216, 16159845, '393340_d.jpg', 1, 'white'),
(217, 16159845, '393341_a.jpg', 0, 'black'),
(218, 16159845, '393341_b.jpg', 1, 'black'),
(219, 16159845, '393341_c.jpg', 1, 'black'),
(220, 16159845, '393341_d.jpg', 1, 'black'),
(221, 16160296, '365927_a.jpg', 0, 'white'),
(222, 16160296, '365927_b.jpg', 1, 'white'),
(223, 16160296, '365927_c.jpg', 1, 'white'),
(224, 16160296, '365928_a.jpg', 0, 'black'),
(225, 16160296, '365928_b.jpg', 1, 'black'),
(226, 16160296, '365928_c.jpg', 1, 'black'),
(227, 16160296, '365928_d.jpg', 1, 'black'),
(228, 16161204, '396047_a.jpg', 0, 'black'),
(229, 16161204, '396047_b.jpg', 1, 'black'),
(230, 16161204, '396047_c.jpg', 1, 'black'),
(231, 16161204, '396047_d.jpg', 1, 'black'),
(232, 16161204, '396052_a.jpg', 0, 'white'),
(233, 16161204, '396052_b.jpg', 1, 'white'),
(234, 16161204, '396052_c.jpg', 1, 'white'),
(235, 16161204, '396052_d.jpg', 1, 'white'),
(236, 16161937, '415554_a.jpg', 0, 'white'),
(237, 16161937, '415554_b.jpg', 1, 'white'),
(238, 16161937, '415554_c.jpg', 1, 'white'),
(239, 16161937, '415554_d.jpg', 1, 'white'),
(240, 16161937, '415555_a.jpg', 0, 'black'),
(241, 16161937, '415555_b.jpg', 1, 'black'),
(242, 16161937, '415555_c.jpg', 1, 'black'),
(243, 16161937, '415555_d.jpg', 1, 'black'),
(244, 16162547, '461524_a.jpg', 0, 'white'),
(245, 16162547, '461524_b.jpg', 1, 'white'),
(246, 16162547, '461524_c.jpg', 1, 'white'),
(247, 16162547, '461524_d.jpg', 1, 'white'),
(248, 16162547, '461533_a.jpg', 0, 'black'),
(249, 16162547, '461533_b.jpg', 1, 'black'),
(250, 16162547, '461533_c.jpg', 1, 'black'),
(251, 16162547, '461533_d.jpg', 1, 'black'),
(252, 16168777, 'H04537_a.jpg', 0, 'white'),
(253, 16168777, 'H04537_b.jpg', 1, 'white'),
(254, 16168777, 'H04537_c.jpg', 1, 'white'),
(255, 16168777, 'H04537_d.jpg', 1, 'white'),
(256, 16168777, 'H04537_g.jpg', 1, 'white'),
(257, 16172353, 'H00886_a.jpg', 0, 'white'),
(258, 16172353, 'H00886_b.jpg', 1, 'white'),
(259, 16172353, 'H00886_c.jpg', 1, 'white'),
(260, 16172353, 'H00886_d.jpg', 1, 'white'),
(261, 16172353, 'H00886_g.jpg', 1, 'white'),
(262, 16180511, 'CQ8893-010_a.jpg', 0, 'white'),
(263, 16180511, 'CQ8893-010_b.jpg', 1, 'white'),
(264, 16180511, 'CQ8893-010_c.jpg', 1, 'white'),
(265, 16180511, 'CQ8893-010_d.jpg', 1, 'white'),
(266, 16180511, 'CQ8893-010_g.jpg', 1, 'white'),
(267, 16180511, 'CQ8893-010_h.jpg', 1, 'white'),
(268, 16183980, 'H68088_a.jpg', 0, 'white'),
(269, 16183980, 'H68088_b.jpg', 1, 'white'),
(270, 16183980, 'H68088_c.jpg', 1, 'white'),
(271, 16183980, 'H68088_d.jpg', 1, 'white'),
(272, 16183980, 'H68088_g.jpg', 1, 'white'),
(273, 16183981, '461351_a.jpg', 0, 'white'),
(274, 16183981, '461351_b.jpg', 1, 'white'),
(275, 16183981, '461351_c.jpg', 1, 'white'),
(276, 16183981, '461351_d.jpg', 1, 'white'),
(277, 16183981, '461360_a.jpg', 0, 'black'),
(278, 16183981, '461360_b.jpg', 1, 'black'),
(279, 16183981, '461360_c.jpg', 1, 'black'),
(280, 16183981, '461360_d.jpg', 1, 'black'),
(281, 16184638, 'GY3173_a.jpg', 0, 'white'),
(282, 16184638, 'GY3173_b.jpg', 1, 'white'),
(283, 16184638, 'GY3173_c.jpg', 1, 'white'),
(284, 16184638, 'GY3173_d.jpg', 1, 'white'),
(285, 16184638, 'GY3173_g.jpg', 1, 'white'),
(286, 16185706, 'FY5680_a.jpg', 0, 'white'),
(287, 16185706, 'FY5680_b.jpg', 1, 'white'),
(288, 16185706, 'FY5680_c.jpg', 1, 'white'),
(289, 16185706, 'FY5680_d.jpg', 1, 'white'),
(290, 16185706, 'FY5680_g.jpg', 1, 'white'),
(291, 16185706, 'FY5680_h.jpg', 1, 'white'),
(292, 16185756, '451722_a.jpg', 0, 'black'),
(293, 16185756, '451722_b.jpg', 1, 'black'),
(294, 16185756, '451722_c.jpg', 1, 'black'),
(295, 16185756, '451722_d.jpg', 1, 'black'),
(296, 16185756, '451726_a.jpg', 0, 'white'),
(297, 16185756, '451726_b.jpg', 1, 'white'),
(298, 16185756, '451726_c.jpg', 1, 'white'),
(299, 16185756, '451726_d.jpg', 1, 'white'),
(300, 16185841, 'DN5175-141_a.jpg', 0, 'white'),
(301, 16185841, 'DN5175-141_b.jpg', 1, 'white'),
(302, 16185841, 'DN5175-141_c.jpg', 1, 'white'),
(303, 16185841, 'DN5175-141_d.jpg', 1, 'white'),
(304, 16185841, 'DN5175-141_g.jpg', 1, 'white'),
(305, 16185854, '415457_a.jpg', 0, 'black'),
(306, 16185854, '415457_b.jpg', 1, 'black'),
(307, 16185854, '415457_c.jpg', 1, 'black'),
(308, 16185854, '415457_d.jpg', 1, 'black'),
(309, 16185854, '415494_a.jpg', 0, 'white'),
(310, 16185854, '415494_b.jpg', 1, 'white'),
(311, 16185854, '415494_c.jpg', 1, 'white'),
(312, 16185854, '415494_d.jpg', 1, 'white'),
(313, 16187052, '460703_a.jpg', 0, 'black'),
(314, 16187052, '460703_b.jpg', 1, 'black'),
(315, 16187052, '460703_c.jpg', 1, 'black'),
(316, 16187052, '460703_d.jpg', 1, 'black'),
(317, 16187052, '460711_a.jpg', 0, 'white'),
(318, 16187052, '460711_b.jpg', 1, 'white'),
(319, 16187052, '460711_c.jpg', 1, 'white'),
(320, 16187052, '460711_d.jpg', 1, 'white'),
(321, 16188332, '398631_a.jpg', 0, 'white'),
(322, 16188332, '398631_b.jpg', 1, 'white'),
(323, 16188332, '398631_c.jpg', 1, 'white'),
(324, 16188332, '398631_d.jpg', 1, 'white'),
(325, 16188332, '460774_a.jpg', 0, 'black'),
(326, 16188332, '460774_b.jpg', 1, 'black'),
(327, 16188332, '460774_c.jpg', 1, 'black'),
(328, 16188332, '460774_d.jpg', 1, 'black'),
(329, 16188337, '454760_a.jpg', 0, 'white'),
(330, 16188337, '454760_b.jpg', 1, 'white'),
(331, 16188337, '454760_c.jpg', 1, 'white'),
(332, 16188337, '454760_d.jpg', 1, 'white'),
(333, 16188337, '454761_a.jpg', 0, 'black'),
(334, 16188337, '454761_b.jpg', 1, 'black'),
(335, 16188337, '454761_c.jpg', 1, 'black'),
(336, 16188337, '454761_d.jpg', 1, 'black'),
(337, 16191513, '415457_a.jpg', 0, 'black'),
(338, 16191513, '415457_b.jpg', 1, 'black'),
(339, 16191513, '415457_c.jpg', 1, 'black'),
(340, 16191513, '415457_d.jpg', 1, 'black'),
(341, 16191513, '415494_a.jpg', 0, 'white'),
(342, 16191513, '415494_b.jpg', 1, 'white'),
(343, 16191513, '415494_c.jpg', 1, 'white'),
(344, 16191513, '415494_d.jpg', 1, 'white'),
(345, 16191515, 'FY9624_a.jpg', 0, 'white'),
(346, 16191515, 'FY9624_b.jpg', 1, 'white'),
(347, 16191515, 'FY9624_c.jpg', 1, 'white'),
(348, 16191515, 'FY9624_d.jpg', 1, 'white'),
(349, 16191515, 'FY9624_g.jpg', 1, 'white'),
(350, 16191784, 'H00889_a.jpg', 0, 'white'),
(351, 16191784, 'H00889_b.jpg', 1, 'white'),
(352, 16191784, 'H00889_c.jpg', 1, 'white'),
(353, 16191784, 'H00889_d.jpg', 1, 'white'),
(354, 16191784, 'H00889_g.jpg', 1, 'white'),
(355, 16193455, '454760_a.jpg', 0, 'black'),
(356, 16193455, '454760_b.jpg', 1, 'black'),
(357, 16193455, '454760_c.jpg', 1, 'black'),
(358, 16193455, '454760_d.jpg', 1, 'black'),
(359, 16193455, '454761_a.jpg', 0, 'white'),
(360, 16193455, '454761_b.jpg', 1, 'white'),
(361, 16193455, '454761_c.jpg', 1, 'white'),
(362, 16193455, '454761_d.jpg', 1, 'white'),
(363, 16193564, '459569_a.jpg', 0, 'white'),
(364, 16193564, '459569_b.jpg', 1, 'white'),
(365, 16193564, '459569_c.jpg', 1, 'white'),
(366, 16193564, '459569_d.jpg', 1, 'white'),
(367, 16193564, 'CT2423-009_a.jpg', 0, 'black'),
(368, 16193564, 'CT2423-009_b.jpg', 1, 'black'),
(369, 16193564, 'CT2423-009_c.jpg', 1, 'black'),
(370, 16193564, 'CT2423-009_d.jpg', 1, 'black'),
(371, 16193565, '415494_a.jpg', 0, 'white'),
(372, 16193565, '415494_b.jpg', 1, 'white'),
(373, 16193565, '415494_c.jpg', 1, 'white'),
(374, 16193565, '415494_d.jpg', 1, 'white'),
(375, 16193565, '415497_a.jpg', 0, 'black'),
(376, 16193565, '415497_b.jpg', 1, 'black'),
(377, 16193565, '415497_c.jpg', 1, 'black'),
(378, 16193565, '415497_d.jpg', 1, 'black'),
(379, 16195013, '415488_a.jpg', 0, 'white'),
(380, 16195013, '415488_b.jpg', 1, 'white'),
(381, 16195013, '415488_c.jpg', 1, 'white'),
(382, 16195013, '415488_d.jpg', 1, 'white'),
(383, 16195856, '421424_a.jpg', 0, 'black'),
(384, 16195856, '421424_b.jpg', 1, 'black'),
(385, 16195856, '421424_c.jpg', 1, 'black'),
(386, 16195856, '421424_d.jpg', 1, 'black'),
(387, 16195856, '450944_a.jpg', 0, 'white'),
(388, 16195856, '450944_b.jpg', 1, 'white'),
(389, 16195856, '450944_c.jpg', 1, 'white'),
(390, 16195856, '450944_d.jpg', 1, 'white'),
(391, 16197887, 'GY0162_a.jpg', 0, 'white'),
(392, 16197887, 'GY0162_b.jpg', 1, 'white'),
(393, 16197887, 'GY0162_c.jpg', 1, 'white'),
(394, 16197887, 'GY0162_d.jpg', 1, 'white'),
(395, 16197887, 'GY0162_g.jpg', 1, 'white'),
(396, 16198191, '457684_a.jpg', 0, 'black'),
(397, 16198191, '457684_b.jpg', 1, 'black'),
(398, 16198191, '457684_c.jpg', 1, 'black'),
(399, 16198191, '457684_d.jpg', 1, 'black'),
(400, 16198191, '476156_a.jpg', 0, 'white'),
(401, 16198191, '476156_b.jpg', 1, 'white'),
(402, 16198191, '476156_c.jpg', 1, 'white'),
(403, 16198191, '476156_d.jpg', 1, 'white'),
(404, 16199725, '461406_a.jpg', 0, 'white'),
(405, 16199725, '461406_b.jpg', 1, 'white'),
(406, 16199725, '461406_c.jpg', 1, 'white'),
(407, 16199725, '461406_d.jpg', 1, 'white'),
(408, 16199725, '461413_a.jpg', 0, 'black'),
(409, 16199725, '461413_b.jpg', 1, 'black'),
(410, 16199725, '461413_c.jpg', 1, 'black'),
(411, 16199725, '461413_d.jpg', 1, 'black'),
(412, 16201171, '461369_a.jpg', 0, 'black'),
(413, 16201171, '461369_b.jpg', 1, 'black'),
(414, 16201171, '461369_c.jpg', 1, 'black'),
(415, 16201171, '461369_d.jpg', 1, 'black'),
(416, 16201171, '473050_a.jpg', 0, 'white'),
(417, 16201171, '473050_b.jpg', 1, 'white'),
(418, 16201171, '473050_c.jpg', 1, 'white'),
(419, 16201171, '473050_d.jpg', 1, 'white'),
(420, 16202085, 'DC4064-001_a.jpg', 0, 'white'),
(421, 16202085, 'DC4064-001_b.jpg', 1, 'white'),
(422, 16202085, 'DC4064-001_c.jpg', 1, 'white'),
(423, 16202085, 'DC4064-001_d.jpg', 1, 'white'),
(424, 16202085, 'DC4064-001_g.jpg', 1, 'white'),
(425, 16202085, 'DC4064-001_h.jpg', 1, 'white'),
(426, 16202085, 'DC4064-001_i.jpg', 1, 'white'),
(427, 16202345, '473046_a.jpg', 0, 'white'),
(428, 16202345, '473046_b.jpg', 1, 'white'),
(429, 16202345, '473046_c.jpg', 1, 'white'),
(430, 16202345, '473046_d.jpg', 1, 'white'),
(431, 16204372, 'FZ3577_a.jpg', 0, 'white'),
(432, 16204372, 'FZ3577_b.jpg', 1, 'white'),
(433, 16204372, 'FZ3577_c.jpg', 1, 'white'),
(434, 16204372, 'FZ3577_d.jpg', 1, 'white'),
(435, 16204372, 'FZ3577_g.jpg', 1, 'white'),
(436, 16205023, '392796_a.jpg', 0, 'white'),
(437, 16205023, '392796_b.jpg', 1, 'white'),
(438, 16205023, '392796_c.jpg', 1, 'white'),
(439, 16205023, '392796_d.jpg', 1, 'white'),
(440, 16210779, '365940_a.jpg', 0, 'black'),
(441, 16210779, '365940_b.jpg', 1, 'black'),
(442, 16210779, '365940_c.jpg', 1, 'black'),
(443, 16210779, '365940_d.jpg', 1, 'black'),
(444, 16210779, '379056_a.jpg', 0, 'white'),
(445, 16210779, '379056_b.jpg', 1, 'white'),
(446, 16210779, '379056_c.jpg', 1, 'white'),
(447, 16210779, '379056_d.jpg', 1, 'white'),
(448, 16211024, '476156_a.jpg', 0, 'white'),
(449, 16211024, '476156_b.jpg', 1, 'white'),
(450, 16211024, '476156_c.jpg', 1, 'white'),
(451, 16211024, '476156_d.jpg', 1, 'white'),
(452, 16211163, '3024155-001_C_0001_a.jpg', 0, 'white'),
(453, 16211163, '3024155-001_C_0001_b.jpg', 1, 'white'),
(454, 16211163, '3024155-001_C_0001_c.jpg', 1, 'white'),
(455, 16211163, '3024155-001_C_0001_d.jpg', 1, 'white'),
(456, 16212150, '476440_a.jpg', 0, 'white'),
(457, 16212150, '476440_b.jpg', 1, 'white'),
(458, 16212150, '476440_c.jpg', 1, 'white'),
(459, 16212150, '476440_d.jpg', 1, 'white'),
(460, 16213133, 'W5740WT1_C_0010_a.jpg', 0, 'white'),
(461, 16213133, 'W5740WT1_C_0010_b.jpg', 1, 'white'),
(462, 16213133, 'W5740WT1_C_0010_c.jpg', 1, 'white'),
(463, 16213133, 'W5740WT1_C_0010_d.jpg', 1, 'white'),
(464, 16213135, '473634_a.jpg', 0, 'white'),
(465, 16213135, '473634_b.jpg', 1, 'white'),
(466, 16213135, '473634_c.jpg', 1, 'white'),
(467, 16213135, '473634_d.jpg', 1, 'white'),
(468, 16213550, '460536_a.jpg', 0, 'white'),
(469, 16213550, '460536_b.jpg', 1, 'white'),
(470, 16213550, '460536_c.jpg', 1, 'white'),
(471, 16213550, '460536_d.jpg', 1, 'white'),
(472, 16213608, '381852_a.jpg', 0, 'white'),
(473, 16213608, '381852_b.jpg', 1, 'white'),
(474, 16213608, '381852_c.jpg', 1, 'white'),
(475, 16213608, '381852_d.jpg', 1, 'white'),
(476, 16213608, '461412_a.jpg', 0, 'black'),
(477, 16213608, '461412_b.jpg', 1, 'black'),
(478, 16213608, '461412_c.jpg', 1, 'black'),
(479, 16213608, '461412_d.jpg', 1, 'black'),
(480, 16214297, '458064_a.jpg', 0, 'white'),
(481, 16214297, '458064_b.jpg', 1, 'white'),
(482, 16214297, '458064_c.jpg', 1, 'white'),
(483, 16214297, '458064_d.jpg', 1, 'white'),
(484, 16214297, '458076_a.jpg', 0, 'black'),
(485, 16214297, '458076_b.jpg', 1, 'black'),
(486, 16214297, '458076_c.jpg', 1, 'black'),
(487, 16214297, '458076_d.jpg', 1, 'black'),
(488, 16214307, '460537_a.jpg', 0, 'white'),
(489, 16214307, '460537_b.jpg', 1, 'white'),
(490, 16214307, '460537_c.jpg', 1, 'white'),
(491, 16214307, '460537_d.jpg', 1, 'white'),
(492, 16214843, 'DO1344-100_C_0012_a.jpg', 0, 'white'),
(493, 16214843, 'DO1344-100_C_0012_b.jpg', 1, 'white'),
(494, 16214843, 'DO1344-100_C_0012_c.jpg', 1, 'white'),
(495, 16214843, 'DO1344-100_C_0012_d.jpg', 1, 'white'),
(496, 16215239, '392792_a.jpg', 0, 'black'),
(497, 16215239, '392792_b.jpg', 1, 'black'),
(498, 16215239, '392792_c.jpg', 1, 'black'),
(499, 16215239, '392792_d.jpg', 1, 'black'),
(500, 16215239, '392801_a.jpg', 0, 'white'),
(501, 16215239, '392801_b.jpg', 1, 'white'),
(502, 16215239, '392801_c.jpg', 1, 'white'),
(503, 16215239, '392801_d.jpg', 1, 'white'),
(504, 16215342, '379056_a.jpg', 0, 'white'),
(505, 16215342, '379056_b.jpg', 1, 'white'),
(506, 16215342, '379056_c.jpg', 1, 'white'),
(507, 16215342, '379056_d.jpg', 1, 'white'),
(508, 16215342, '451710_a.jpg', 0, 'black'),
(509, 16215342, '451710_b.jpg', 1, 'black'),
(510, 16215342, '451710_c.jpg', 1, 'black'),
(511, 16215342, '451710_d.jpg', 1, 'black'),
(512, 16216555, '464101_a.jpg', 0, 'white'),
(513, 16216555, '464101_b.jpg', 1, 'white'),
(514, 16216555, '464101_c.jpg', 1, 'white'),
(515, 16216555, '464101_d.jpg', 1, 'white'),
(516, 16224622, 'DQ0814-100_C_0012_a.jpg', 0, 'white'),
(517, 16224622, 'DQ0814-100_C_0012_b.jpg', 1, 'white'),
(518, 16224622, 'DQ0814-100_C_0012_c.jpg', 1, 'white'),
(519, 16224622, 'DQ0814-100_C_0012_d.jpg', 1, 'white'),
(520, 16224847, '1202A296.001_C_0001_a.jpg', 0, 'white'),
(521, 16224847, '1202A296.001_C_0001_b.jpg', 1, 'white'),
(522, 16224847, '1202A296.001_C_0001_c.jpg', 1, 'white'),
(523, 16224847, '1202A296.001_C_0001_d.jpg', 1, 'white'),
(524, 16225536, 'HW0HW005680GM_C_0001_a.jpg', 0, 'white'),
(525, 16225536, 'HW0HW005680GM_C_0001_b.jpg', 1, 'white'),
(526, 16225536, 'HW0HW005680GM_C_0001_c.jpg', 1, 'white'),
(527, 16225536, 'HW0HW005680GM_C_0001_d.jpg', 1, 'white'),
(528, 16226873, 'DC9474-001_C_0001_a.jpg', 0, 'white'),
(529, 16226873, 'DC9474-001_C_0001_b.jpg', 1, 'white'),
(530, 16226873, 'DC9474-001_C_0001_c.jpg', 1, 'white'),
(531, 16226873, 'DC9474-001_C_0001_d.jpg', 1, 'white'),
(532, 16227565, '451724_a.jpg', 0, 'white'),
(533, 16227565, '451724_b.jpg', 1, 'white'),
(534, 16227565, '451724_c.jpg', 1, 'white'),
(535, 16227565, '451724_d.jpg', 1, 'white'),
(536, 16227565, '451726_a.jpg', 0, 'black'),
(537, 16227565, '451726_b.jpg', 1, 'black'),
(538, 16227565, '451726_c.jpg', 1, 'black'),
(539, 16227565, '451726_d.jpg', 1, 'black'),
(540, 16227621, 'GX1419_C_0024_a.jpg', 0, 'white'),
(541, 16227621, 'GX1419_C_0024_b.jpg', 1, 'white'),
(542, 16227621, 'GX1419_C_0024_c.jpg', 1, 'white'),
(543, 16227621, 'GX1419_C_0024_d.jpg', 1, 'white'),
(544, 16228385, 'HW0HW005680K6_C_0010_a.jpg', 0, 'white'),
(545, 16228385, 'HW0HW005680K6_C_0010_b.jpg', 1, 'white'),
(546, 16228385, 'HW0HW005680K6_C_0010_c.jpg', 1, 'white'),
(547, 16228385, 'HW0HW005680K6_C_0010_d.jpg', 1, 'white'),
(548, 16228388, 'DH0558-500_C_0050_a.jpg', 0, 'white'),
(549, 16228388, 'DH0558-500_C_0050_b.jpg', 1, 'white'),
(550, 16228388, 'DH0558-500_C_0050_c.jpg', 1, 'white'),
(551, 16228388, 'DH0558-500_C_0050_d.jpg', 1, 'white'),
(552, 16228402, '462999_a.jpg', 0, 'white'),
(553, 16228402, '462999_b.jpg', 1, 'white'),
(554, 16228402, '462999_c.jpg', 1, 'white'),
(555, 16228402, '462999_d.jpg', 1, 'white'),
(556, 16229047, '457990_a.jpg', 0, 'white'),
(557, 16229047, '457990_b.jpg', 1, 'white'),
(558, 16229047, '457990_c.jpg', 1, 'white'),
(559, 16229047, '457990_d.jpg', 1, 'white'),
(560, 16229047, '458000_a.jpg', 0, 'black'),
(561, 16229047, '458000_b.jpg', 1, 'black'),
(562, 16229047, '458000_c.jpg', 1, 'black'),
(563, 16229047, '458000_d.jpg', 1, 'black'),
(564, 16229077, '415595_a.jpg', 0, 'white'),
(565, 16229077, '415595_b.jpg', 1, 'white'),
(566, 16229077, '415595_c.jpg', 1, 'white'),
(567, 16229077, '415595_d.jpg', 1, 'white'),
(568, 16229077, '457703_a.jpg', 0, 'black'),
(569, 16229077, '457703_b.jpg', 1, 'black'),
(570, 16229077, '457703_c.jpg', 1, 'black'),
(571, 16229077, '457703_d.jpg', 1, 'black'),
(572, 16229086, 'GY0157_a.jpg', 0, 'white'),
(573, 16229086, 'GY0157_b.jpg', 1, 'white'),
(574, 16229086, 'GY0157_c.jpg', 1, 'white'),
(575, 16229086, 'GY0157_d.jpg', 1, 'white'),
(576, 16229086, 'GY0157_g.jpg', 1, 'white'),
(577, 16229861, '458643_a.jpg', 0, 'white'),
(578, 16229861, '458643_b.jpg', 1, 'white'),
(579, 16229861, '458643_c.jpg', 1, 'white'),
(580, 16229861, '458643_d.jpg', 1, 'white'),
(581, 16229936, 'YW0YW004420GJ_C_0001_a.jpg', 0, 'white'),
(582, 16229936, 'YW0YW004420GJ_C_0001_b.jpg', 1, 'white'),
(583, 16229936, 'YW0YW004420GJ_C_0001_c.jpg', 1, 'white'),
(584, 16229936, 'YW0YW004420GJ_C_0001_d.jpg', 1, 'white'),
(585, 16231013, 'DD1523-001_C_0001_a.jpg', 0, 'white'),
(586, 16231013, 'DD1523-001_C_0001_b.jpg', 1, 'white'),
(587, 16231013, 'DD1523-001_C_0001_c.jpg', 1, 'white'),
(588, 16231013, 'DD1523-001_C_0001_d.jpg', 1, 'white'),
(589, 16231315, 'DJ6881-001_C_0001_a.jpg', 0, 'white'),
(590, 16231315, 'DJ6881-001_C_0001_b.jpg', 1, 'white'),
(591, 16231315, 'DJ6881-001_C_0001_c.jpg', 1, 'white'),
(592, 16231315, 'DJ6881-001_C_0001_d.jpg', 1, 'white'),
(593, 16231317, '687977-020_C_0001_a.jpg', 0, 'white'),
(594, 16231317, '687977-020_C_0001_b.jpg', 1, 'white'),
(595, 16231317, '687977-020_C_0001_c.jpg', 1, 'white'),
(596, 16231317, '687977-020_C_0001_d.jpg', 1, 'white'),
(597, 16231332, '451762_a.jpg', 0, 'white'),
(598, 16231332, '451762_b.jpg', 1, 'white'),
(599, 16231332, '451762_c.jpg', 1, 'white'),
(600, 16231332, '451762_d.jpg', 1, 'white'),
(601, 16231428, 'DM3064-100_C_0010_a.jpg', 0, 'white'),
(602, 16231428, 'DM3064-100_C_0010_b.jpg', 1, 'white'),
(603, 16231428, 'DM3064-100_C_0010_c.jpg', 1, 'white'),
(604, 16231428, 'DM3064-100_C_0010_d.jpg', 1, 'white'),
(605, 16231619, 'H05180_C_0010_a.jpg', 0, 'white'),
(606, 16231619, 'H05180_C_0010_b.jpg', 1, 'white'),
(607, 16231619, 'H05180_C_0010_c.jpg', 1, 'white'),
(608, 16231619, 'H05180_C_0010_d.jpg', 1, 'white'),
(609, 16231620, 'DC4566-100_C_0012_a.jpg', 0, 'white'),
(610, 16231620, 'DC4566-100_C_0012_b.jpg', 1, 'white'),
(611, 16231620, 'DC4566-100_C_0012_c.jpg', 1, 'white'),
(612, 16231620, 'DC4566-100_C_0012_d.jpg', 1, 'white'),
(613, 16231918, 'DH9632-101_C_0012_a.jpg', 0, 'white'),
(614, 16231918, 'DH9632-101_C_0012_b.jpg', 1, 'white'),
(615, 16231918, 'DH9632-101_C_0012_c.jpg', 1, 'white'),
(616, 16231918, 'DH9632-101_C_0012_d.jpg', 1, 'white'),
(617, 16231929, '3023550-001_a.jpg', 0, 'white'),
(618, 16231929, '3023550-001_b.jpg', 1, 'white'),
(619, 16231929, '3023550-001_c.jpg', 1, 'white'),
(620, 16231929, '3023550-001_d.jpg', 1, 'white'),
(621, 16231929, '30692301_C_0001_a.jpg', 0, 'white'),
(622, 16231929, '30692301_C_0001_b.jpg', 1, 'white'),
(623, 16231929, '30692301_C_0001_c.jpg', 1, 'white'),
(624, 16231929, '30692301_C_0001_d.jpg', 1, 'white'),
(625, 16231930, '465031_a.jpg', 0, 'white'),
(626, 16231930, '465031_b.jpg', 1, 'white'),
(627, 16231930, '465031_c.jpg', 1, 'white'),
(628, 16231930, '465031_d.jpg', 1, 'white'),
(629, 16231931, '1201A142-600_C_0060_a.jpg', 0, 'white'),
(630, 16231931, '1201A142-600_C_0060_b.jpg', 1, 'white'),
(631, 16231931, '1201A142.600_C_0060_c.jpg', 1, 'white'),
(632, 16231931, '1201A142.600_C_0060_d.jpg', 1, 'white'),
(633, 16231932, '1201A063.004_C_0001_a.jpg', 0, 'white'),
(634, 16231932, '1201A063.004_C_0001_b.jpg', 1, 'white'),
(635, 16231932, '1201A063.004_C_0001_c.jpg', 1, 'white'),
(636, 16231932, '1201A063.004_C_0001_d.jpg', 1, 'white'),
(637, 16232089, '391176_a.jpg', 0, 'white'),
(638, 16232089, '391176_b.jpg', 1, 'white'),
(639, 16232089, '391176_c.jpg', 1, 'white'),
(640, 16232089, '391176_d.jpg', 1, 'white'),
(641, 16232089, '460735_a.jpg', 0, 'black'),
(642, 16232089, '460735_b.jpg', 1, 'black'),
(643, 16232089, '460735_c.jpg', 1, 'black'),
(644, 16232089, '460735_d.jpg', 1, 'black'),
(645, 16232102, 'H05246_a.jpg', 0, 'white'),
(646, 16232102, 'H05246_c.jpg', 1, 'white'),
(647, 16232102, 'H05246_d.jpg', 1, 'white'),
(648, 16232102, 'H05246_g.jpg', 1, 'white'),
(649, 16232473, '19526901_C_0001_a.jpg', 0, 'white'),
(650, 16232473, '19526901_C_0001_b.jpg', 1, 'white'),
(651, 16232473, '19526901_C_0001_c.jpg', 1, 'white'),
(652, 16232473, '19526901_C_0001_d.jpg', 1, 'white'),
(653, 16232474, 'DJ9776-001_C_0001_a.jpg', 0, 'white'),
(654, 16232474, 'DJ9776-001_C_0001_b.jpg', 1, 'white'),
(655, 16232474, 'DJ9776-001_C_0001_c.jpg', 1, 'white'),
(656, 16232474, 'DJ9776-001_C_0001_d.jpg', 1, 'white'),
(657, 16232825, 'DJ3874-600_C_0066_a.jpg', 0, 'white'),
(658, 16232825, 'DJ3874-600_C_0066_b.jpg', 1, 'white'),
(659, 16232825, 'DJ3874-600_C_0066_c.jpg', 1, 'white'),
(660, 16232825, 'DJ3874-600_C_0066_d.jpg', 1, 'white'),
(661, 16232826, 'H03904_C_0010_a.jpg', 0, 'white'),
(662, 16232826, 'H03904_C_0010_b.jpg', 1, 'white'),
(663, 16232826, 'H03904_C_0010_c.jpg', 1, 'white'),
(664, 16232826, 'H03904_C_0010_d.jpg', 1, 'white'),
(665, 16233075, '461409_a.jpg', 0, 'black'),
(666, 16233075, '461409_b.jpg', 1, 'black'),
(667, 16233075, '461409_c.jpg', 1, 'black'),
(668, 16233075, '461409_d.jpg', 1, 'black'),
(669, 16233075, '461413_a.jpg', 0, 'white'),
(670, 16233075, '461413_b.jpg', 1, 'white'),
(671, 16233075, '461413_c.jpg', 1, 'white'),
(672, 16233075, '461413_d.jpg', 1, 'white'),
(673, 16233081, '415515_a.jpg', 0, 'black'),
(674, 16233081, '415515_b.jpg', 1, 'black'),
(675, 16233081, '415515_c.jpg', 1, 'black'),
(676, 16233081, '415515_d.jpg', 1, 'black'),
(677, 16233081, '416666_a.jpg', 0, 'white'),
(678, 16233081, '416666_b.jpg', 1, 'white'),
(679, 16233081, '416666_c.jpg', 1, 'white'),
(680, 16233081, '416666_d.jpg', 1, 'white'),
(681, 16233128, '397001_a.jpg', 0, 'black'),
(682, 16233128, '397001_b.jpg', 1, 'black'),
(683, 16233128, '397001_c.jpg', 1, 'black'),
(684, 16233128, '397001_d.jpg', 1, 'black'),
(685, 16233128, '397003_a.jpg', 0, 'white'),
(686, 16233128, '397003_b.jpg', 1, 'white'),
(687, 16233128, '397003_c.jpg', 1, 'white'),
(688, 16233128, '397003_d.jpg', 1, 'white'),
(689, 16233184, 'HW0HW005740K4_C_0010_a.jpg', 0, 'white'),
(690, 16233184, 'HW0HW005740K4_C_0010_b.jpg', 1, 'white'),
(691, 16233184, 'HW0HW005740K4_C_0010_c.jpg', 1, 'white'),
(692, 16233184, 'HW0HW005740K4_C_0010_d.jpg', 1, 'white'),
(693, 16233653, '393303_a.jpg', 0, 'black'),
(694, 16233653, '393303_b.jpg', 1, 'black'),
(695, 16233653, '393303_c.jpg', 1, 'black'),
(696, 16233653, '393303_d.jpg', 1, 'black'),
(697, 16233653, '393304_a.jpg', 0, 'white'),
(698, 16233653, '393304_b.jpg', 1, 'white'),
(699, 16233653, '393304_c.jpg', 1, 'white'),
(700, 16233653, '393304_d.jpg', 1, 'white'),
(701, 16233654, 'H04537_a.jpg', 0, 'white'),
(702, 16233654, 'H04537_b.jpg', 1, 'white'),
(703, 16233654, 'H04537_c.jpg', 1, 'white'),
(704, 16233654, 'H04537_d.jpg', 1, 'white'),
(705, 16233654, 'H04537_g.jpg', 1, 'white'),
(706, 16233655, '479885_a.jpg', 0, 'white'),
(707, 16233655, '479885_b.jpg', 1, 'white'),
(708, 16233655, '479885_c.jpg', 1, 'white'),
(709, 16233655, '479885_d.jpg', 1, 'white'),
(710, 16234360, '481073_a.jpg', 0, 'white'),
(711, 16234360, '481073_b.jpg', 1, 'white'),
(712, 16234360, '481073_c.jpg', 1, 'white'),
(713, 16234360, '481073_d.jpg', 1, 'white'),
(714, 16234652, '449519_a.jpg', 0, 'white'),
(715, 16234652, '449519_b.jpg', 1, 'white'),
(716, 16234652, '449519_c.jpg', 1, 'white'),
(717, 16234652, '449519_d.jpg', 1, 'white'),
(718, 16234881, '470317_a.jpg', 0, 'white'),
(719, 16234881, '470317_b.jpg', 1, 'white'),
(720, 16234881, '470317_c.jpg', 1, 'white'),
(721, 16234881, '470317_d.jpg', 1, 'white'),
(722, 16234968, 'DM8328-600_C_0066_a.jpg', 0, 'white'),
(723, 16234968, 'DM8328-600_C_0066_b.jpg', 1, 'white'),
(724, 16234968, 'DM8328-600_C_0066_c.jpg', 1, 'white'),
(725, 16234968, 'DM8328-600_C_0066_d.jpg', 1, 'white'),
(726, 16234987, 'DC4066-500_a.jpg', 0, 'white'),
(727, 16234987, 'DC4066-500_b.jpg', 1, 'white'),
(728, 16234987, 'DC4066-500_c.jpg', 1, 'white'),
(729, 16234987, 'DC4066-500_d.jpg', 1, 'white'),
(730, 16234987, 'DC4066-500_g.jpg', 1, 'white'),
(731, 16235094, 'DN5461-100_C_0010_a.jpg', 0, 'white'),
(732, 16235094, 'DN5461-100_C_0010_b.jpg', 1, 'white'),
(733, 16235094, 'DN5461-100_C_0010_c.jpg', 1, 'white'),
(734, 16235094, 'DN5461-100_C_0010_d.jpg', 1, 'white'),
(735, 16235545, '476439_a.jpg', 0, 'black'),
(736, 16235545, '476439_b.jpg', 1, 'black'),
(737, 16235545, '476439_c.jpg', 1, 'black'),
(738, 16235545, '476439_d.jpg', 1, 'black'),
(739, 16235545, '476440_a.jpg', 0, 'white'),
(740, 16235545, '476440_b.jpg', 1, 'white'),
(741, 16235545, '476440_c.jpg', 1, 'white'),
(742, 16235545, '476440_d.jpg', 1, 'white'),
(743, 16235546, '458398_a.jpg', 0, 'white'),
(744, 16235546, '458398_b.jpg', 1, 'white'),
(745, 16235546, '458398_c.jpg', 1, 'white'),
(746, 16235546, '458398_d.jpg', 1, 'white'),
(747, 16235546, '475984_a.jpg', 0, 'black'),
(748, 16235546, '475984_b.jpg', 1, 'black'),
(749, 16235546, '475984_c.jpg', 1, 'black'),
(750, 16235546, '475984_d.jpg', 1, 'black'),
(751, 16236208, 'S42774_a.jpg', 0, 'white'),
(752, 16236208, 'S42774_b.jpg', 1, 'white'),
(753, 16236208, 'S42774_c.jpg', 1, 'white'),
(754, 16236208, 'S42774_d.jpg', 1, 'white'),
(755, 16236208, 'S42774_g.jpg', 1, 'white'),
(756, 16236623, 'GY0155_a.jpg', 0, 'white'),
(757, 16236623, 'GY0155_b.jpg', 1, 'white'),
(758, 16236623, 'GY0155_c.jpg', 1, 'white'),
(759, 16236623, 'GY0155_d.jpg', 1, 'white'),
(760, 16236623, 'GY0155_g.jpg', 1, 'white'),
(761, 16236712, 'GY1273_C_0001_a.jpg', 0, 'white'),
(762, 16236712, 'GY1273_C_0001_b.jpg', 1, 'white'),
(763, 16236712, 'GY1273_C_0001_c.jpg', 1, 'white'),
(764, 16236712, 'GY1273_C_0001_d.jpg', 1, 'white'),
(765, 16237715, '445873_a.jpg', 0, 'white'),
(766, 16237715, '445873_b.jpg', 1, 'white'),
(767, 16237715, '445873_c.jpg', 1, 'white'),
(768, 16237715, '445873_d.jpg', 1, 'white'),
(769, 16237715, '445875_a.jpg', 0, 'black'),
(770, 16237715, '445875_b.jpg', 1, 'black'),
(771, 16237715, '445875_c.jpg', 1, 'black'),
(772, 16237715, '445875_d.jpg', 1, 'black'),
(773, 16237995, '415504_a.jpg', 0, 'white'),
(774, 16237995, '415504_b.jpg', 1, 'white'),
(775, 16237995, '415504_c.jpg', 1, 'white'),
(776, 16237995, '415504_d.jpg', 1, 'white'),
(777, 16237995, '415508_a.jpg', 0, 'black'),
(778, 16237995, '415508_b.jpg', 1, 'black'),
(779, 16237995, '415508_c.jpg', 1, 'black'),
(780, 16237995, '415508_d.jpg', 1, 'black'),
(781, 16238115, 'DM0850-001_C_0001_a.jpg', 0, 'white'),
(782, 16238115, 'DM0850-001_C_0001_b.jpg', 1, 'white'),
(783, 16238115, 'DM0850-001_C_0001_c.jpg', 1, 'white'),
(784, 16238115, 'DM0850-001_C_0001_d.jpg', 1, 'white'),
(785, 16238341, 'CI3705-001_C_0001_a.jpg', 0, 'white'),
(786, 16238341, 'CI3705-001_C_0001_b.jpg', 1, 'white'),
(787, 16238341, 'CI3705-001_C_0001_c.jpg', 1, 'white'),
(788, 16238341, 'CI3705-001_C_0001_d.jpg', 1, 'white'),
(789, 16240485, 'DH0558-001_C_0001_a.jpg', 0, 'white'),
(790, 16240485, 'DH0558-001_C_0001_b.jpg', 1, 'white'),
(791, 16240485, 'DH0558-001_C_0001_c.jpg', 1, 'white'),
(792, 16240485, 'DH0558-001_C_0001_d.jpg', 1, 'white'),
(793, 16240736, '476099_a.jpg', 0, 'white'),
(794, 16240736, '476099_b.jpg', 1, 'white'),
(795, 16240736, '476099_c.jpg', 1, 'white'),
(796, 16240736, '476099_d.jpg', 1, 'white'),
(797, 16241861, 'CT2392-001_a.jpg', 0, 'white'),
(798, 16241861, 'CT2392-001_b.jpg', 1, 'white'),
(799, 16241861, 'CT2392-001_c.jpg', 1, 'white'),
(800, 16241861, 'CT2392-001_d.jpg', 1, 'white'),
(801, 16241861, 'CT2392-001_g.jpg', 1, 'white'),
(802, 16241861, 'CT2392-001_h.jpg', 1, 'white'),
(803, 16242716, '16242716_1.jpg', 1, 'red');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `create_at` date NOT NULL,
  `id_address` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `status_payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer`, `total_price`, `create_at`, `id_address`, `status`, `payment_type`, `status_payment`) VALUES
(10161, 28, 1080, '2023-05-15', 9, 'Hoan tat', 'Paypal', 'Da thanh toan'),
(10162, 23, 1080, '2023-05-06', 7, 'Hoàn tất', 'Paypal', 'Da thanh toan'),
(10163, 23, 1080, '2023-05-11', 7, 'Hoàn tất', 'Paypal', 'Da thanh toan'),
(10165, 25, 3240, '2023-05-28', 7, 'Hoàn tất', 'Paypal', 'Da thanh toan'),
(10171, 23, 330, '2023-05-29', 9, 'Đã đặt hàng', 'Paypal', 'Da thanh toan'),
(10173, 23, 640, '2023-05-28', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10174, 30, 1048, '2023-05-28', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10175, 30, 300, '2023-05-28', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10176, 23, 200, '2023-05-29', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10177, 23, 354, '2023-06-24', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10178, 23, 75, '2023-08-14', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán'),
(10179, 28, 105, '2023-11-29', 9, 'Chờ xác nhận', 'Paypal', 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `id_product_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `quantity`, `id_product_detail`) VALUES
(45, 10161, 3, 3),
(46, 10161, 12, 10),
(47, 10161, 2, 20),
(48, 10162, 3, 3),
(49, 10162, 12, 10),
(50, 10162, 2, 20),
(51, 10163, 3, 3),
(52, 10163, 12, 10),
(53, 10163, 3, 20),
(57, 10165, 9, 3),
(58, 10165, 36, 10),
(59, 10165, 6, 20),
(62, 10171, 1, 4),
(63, 10171, 3, 18),
(66, 10173, 3, 184),
(67, 10173, 3, 18),
(68, 10173, 6, 27),
(69, 10173, 1, 470),
(70, 10174, 4, 678),
(71, 10174, 6, 48),
(72, 10175, 4, 189),
(73, 10176, 1, 189),
(74, 10176, 5, 149),
(75, 10177, 3, 192),
(76, 10177, 3, 25),
(77, 10178, 1, 189),
(78, 10179, 1, 626);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(8) NOT NULL,
  `brand` int(11) DEFAULT NULL,
  `name` varchar(74) DEFAULT NULL,
  `category` int(11) DEFAULT current_timestamp(),
  `price` int(3) DEFAULT NULL,
  `sale_rate` int(2) DEFAULT NULL,
  `total_value` int(3) DEFAULT NULL,
  `sole_value` int(2) DEFAULT NULL,
  `create_at` varchar(10) DEFAULT NULL,
  `update_at` varchar(10) DEFAULT NULL,
  `description` varchar(335) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `brand`, `name`, `category`, `price`, `sale_rate`, `total_value`, `sole_value`, `create_at`, `update_at`, `description`, `img`) VALUES
(16070029, 17, 'Nike Flex Experience Run 10 Real', 4, 90, 25, 332, 150, NULL, NULL, 'Giày này đã được phát triển với công nghệ Dynamic Fit mang đến sự vừa vặn, nâng đỡ và thoải mái quanh mắt cá chân. Đôi ủng này có kết cấu được bố trí một cách chiến lược dày hơn và đặc hơn ở ngón chân và mu bàn chân để tăng cường khả năng kiểm soát ở những nơi bạn cần nhất, trong khi dây buộc lệch tâm cho phép bạn đánh bóng gọn gàng.', 'GY3171_a.jpg'),
(16070588, 17, 'Nike Flex Experience Run 10', 4, 60, 20, 148, 64, '14/2/2019', '14/2/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '392770_a.jpg'),
(16071726, 17, 'Nike Nike React Escape Run Women&#039;s Road Running Shoes', 9, 90, 22, 96, 56, '10/12/2018', '10/12/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '421424_a.jpg'),
(16085921, 1, 'adidas Galaxy 5', 4, 43, 0, 131, 285, '', '25/4/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '460771_a.jpg'),
(16085932, 17, 'Nike Nike Revolution 5 Women&#039;s Running Shoe', 9, 50, 37, 141, 59, '3/9/2020', '3/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'S42780_a.jpg'),
(16116869, 7, 'Under Armour Charged Vantage Running Shoes', 4, 65, 44, 139, 46, NULL, NULL, 'Giày này đã được phát triển với công nghệ Dynamic Fit mang đến sự vừa vặn, nâng đỡ và thoải mái quanh mắt cá chân. Đôi ủng này có kết cấu được bố trí một cách chiến lược dày hơn và đặc hơn ở ngón chân và mu bàn chân để tăng cường khả năng kiểm soát ở những nơi bạn cần nhất, trong khi dây buộc lệch tâm cho phép bạn đánh bóng gọn gàng.', NULL),
(16118109, 7, 'Under Armour Sonic STRT', 4, 85, 15, 134, 47, '2/2/2020', '2/2/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '473069_a.jpg'),
(16119350, 16, 'New Balance 411', 4, 50, 43, 105, 77, '2/12/2019', '2/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476448_a.jpg'),
(16126979, 7, 'Under Armour Surge 2 Women&#039;s', 9, 42, 23, 90, 47, '20/11/2020', '20/11/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H04562_a.jpg'),
(16127820, 2, 'On running Cloud Women&#039;s', 9, 120, 43, 132, 63, '5/9/2020', '5/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '475826_a.jpg'),
(16128160, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 10, 108, 69, '23/5/2020', '23/5/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '393403_a.jpg'),
(16132374, 17, 'Nike Downshifter 9', 4, 55, 5, 95, 60, '15/1/2020', '15/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '392770_a.jpg'),
(16132531, 17, 'Nike Air Max Bella TR4 Women&#039;s', 9, 73, 45, 123, 43, '8/9/2018', '8/9/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'CT2229-004_a.jpg'),
(16135411, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 38, 115, 43, '24/6/2019', '24/6/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '475661_a.jpg'),
(16135426, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 46, 83, 63, '2/10/2018', '2/10/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'BQ3207-100_a.jpg'),
(16135439, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 35, 146, 66, '7/7/2020', '7/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '458390_a.jpg'),
(16135462, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 39, 111, 45, '26/7/2020', '26/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '458365_a.jpg'),
(16135477, 17, 'Nike Downshifter 11 Women&#039;s', 9, 55, 28, 100, 67, '20/2/2018', '20/2/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '445873_a.jpg'),
(16138580, 17, 'Nike Air Max Bella TR4 Women&#039;s', 9, 73, 15, 148, 59, '20/12/2020', '20/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '398348_a.jpg'),
(16138603, 17, 'Nike Quest 3 Women&#039;s', 9, 68, 18, 123, 74, '7/8/2019', '7/8/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '396047_a.jpg'),
(16140797, 17, 'Nike Air Zoom Pegasus 38', 4, 110, 7, 142, 70, '4/1/2019', '4/1/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '397003_a.jpg'),
(16140799, 17, 'Nike Air Zoom Pegasus 38', 4, 110, 22, 103, 73, '18/2/2019', '18/2/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476034_a.jpg'),
(16141679, 16, 'New Balance Fresh Foam 1080v11', 4, 135, 39, 126, 59, '4/2/2018', '4/2/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '393408_a.jpg'),
(16144878, 1, 'adidas Response Run Shoes', 9, 55, 12, 199, 176, '', '17/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '16144878_H04537_g.jpg'),
(16158819, 1, 'adidas Falcon 2', 2, 45, 22, 132, 119, '', '8/4/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '16158819_365927_e.jpg'),
(16159139, 4, 'Reebok reebok lite 3 shoes', 2, 35, 11, 91, 41, '21/5/2019', '21/5/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415595_a.jpg'),
(16159236, 4, 'Reebok reebok lite 3 shoes', 2, 35, 23, 124, 44, '2/7/2019', '2/7/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '398640_a.jpg'),
(16159256, 4, 'Reebok reebok lite 3 shoes', 2, 35, 28, 145, 43, '6/1/2020', '6/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476083_a.jpg'),
(16159327, 4, 'Reebok reebok energylux 2 shoes', 9, 35, 10, 111, 77, '20/1/2018', '20/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '445875_a.jpg'),
(16159351, 4, 'Reebok reebok lite 3 shoes', 2, 35, 45, 102, 66, '8/5/2020', '8/5/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '473881_a.jpg'),
(16159643, 4, 'Reebok Lite Plus 3', 2, 20, 11, 131, 56, '2/6/2018', '2/6/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '460721_a.jpg'),
(16159684, 4, 'Reebok reebok energylux 2 shoes', 2, 35, 43, 110, 48, '4/2/2018', '4/2/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '368531_a.jpg'),
(16159754, 4, 'Reebok Lite Plus 3', 2, 25, 47, 90, 42, '10/6/2019', '10/6/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H00496_a.jpg'),
(16159845, 4, 'Reebok reebok lite 3 shoes', 2, 35, 38, 87, 62, '24/7/2020', '24/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '393340_a.jpg'),
(16160296, 1, 'adidas EQ19 Run', 2, 55, 40, 138, 74, '27/7/2019', '27/7/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '365927_a.jpg'),
(16161204, 1, 'adidas Response Super 2.0 Shoes', 2, 75, 0, 655, 414, '', '12/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '396047_a.jpg'),
(16161937, 1, 'adidas EQ21 Run Ready', 2, 75, 14, 115, 75, '16/12/2020', '16/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415554_a.jpg'),
(16162547, 1, 'adidas X9000L2 Shoes', 7, 85, 49, 81, 41, '21/10/2019', '21/10/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '461524_a.jpg'),
(16168777, 4, 'Reebok reebok lite 3 shoes', 7, 35, 16, 138, 75, '9/7/2019', '9/7/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H04537_a.jpg'),
(16172353, 17, 'Nike Run Swift 2', 7, 60, 13, 135, 47, '11/12/2019', '11/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H00886_a.jpg'),
(16180511, 4, 'Reebok reebok lite plus 3 shoes', 7, 38, 26, 136, 69, '13/9/2018', '13/9/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'CQ8893-010_a.jpg'),
(16183980, 7, 'Under Armour Charged Pursuit 2 Women&#039;s', 7, 50, 27, 148, 40, '14/2/2020', '14/2/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H68088_a.jpg'),
(16183981, 7, 'Under Armour Rogue 2.5', 7, 65, 8, 145, 36, '2/6/2018', '2/6/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '461351_a.jpg'),
(16184638, 1, 'adidas EQ21 Run COLD.RDY Shoes', 7, 75, 36, 96, 79, '13/8/2019', '13/8/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GY3173_a.jpg'),
(16185706, 17, 'Nike Serenity Run Women&#039;s', 7, 73, 22, 83, 57, '28/1/2019', '28/1/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'FY5680_a.jpg'),
(16185756, 17, 'Nike Quest 4', 7, 70, 10, 111, 50, '14/12/2020', '14/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '451722_a.jpg'),
(16185841, 17, 'Nike Quest 4 Women&#039;s', 7, 68, 0, 87, 70, '18/8/2020', '18/8/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DN5175-141_a.jpg'),
(16185854, 17, 'Nike Quest 4 Women&#039;s', 7, 70, 43, 111, 60, '13/9/2019', '13/9/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415457_a.jpg'),
(16187052, 2, 'On running Cloud Nova', 7, 135, 0, 82, 77, '6/10/2019', '6/10/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '460703_a.jpg'),
(16188332, 7, 'Under Armour HOVR Phantom 2', 7, 120, 22, 94, 61, '12/7/2020', '12/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '398631_a.jpg'),
(16188337, 7, 'Under Armour HOVR Phantom 2 Women&#039;s', 7, 120, 45, 91, 65, '12/4/2019', '12/4/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '454760_a.jpg'),
(16191513, 16, 'New Balance 327 Women&#039;s', 7, 80, 25, 135, 43, '15/12/2019', '15/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415457_a.jpg'),
(16191515, 16, 'New Balance 327 Women&#039;s', 7, 80, 15, 83, 31, '11/12/2020', '11/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'FY9624_a.jpg'),
(16191784, 7, 'Under Armour HOVR Phantom 2 Women&#039;s', 7, 120, 14, 120, 65, '22/12/2019', '22/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H00889_a.jpg'),
(16193455, 16, 'New Balance 327 Women&#039;s', 7, 80, 9, 134, 55, '4/9/2020', '4/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '454760_a.jpg'),
(16193564, 17, 'Nike Free Run 5.0 Women&#039;s', 8, 100, 39, 149, 69, '25/8/2019', '25/8/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '459569_a.jpg'),
(16193565, 17, 'Nike Free Run 5.0 Women&#039;s', 8, 100, 19, 131, 75, '22/3/2020', '22/3/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415494_a.jpg'),
(16195013, 17, 'Nike City Rep TR Women&#039;s', 8, 60, 4, 111, 77, '19/1/2018', '19/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415488_a.jpg'),
(16195856, 17, 'Nike Terra Kiger 7', 8, 125, 20, 133, 45, '15/1/2020', '15/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '421424_a.jpg'),
(16197887, 16, 'New Balance 327 Women&#039;s', 8, 80, 46, 124, 50, '2/1/2020', '2/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GY0162_a.jpg'),
(16198191, 7, 'Under Armour Charged Pursuit', 7, 50, 47, 139, 51, '23/10/2018', '23/10/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '457684_a.jpg'),
(16199725, 10, 'Asics GEL Sonoma 6', 7, 80, 23, 101, 37, '23/6/2018', '23/6/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '461406_a.jpg'),
(16201171, 10, 'Asics GEL-Pulse 13', 7, 90, 19, 80, 56, '19/2/2019', '19/2/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '461369_a.jpg'),
(16202085, 16, 'New Balance Fresh Foam Roav', 7, 80, 42, 96, 78, '11/12/2018', '11/12/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DC4064-001_a.jpg'),
(16202345, 10, 'Asics GEL Sonoma 6', 7, 80, 6, 96, 69, '4/1/2018', '4/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '473046_a.jpg'),
(16204372, 17, 'Nike Air Zoom Pegasus 38', 7, 110, 27, 111, 78, '10/5/2019', '10/5/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'FZ3577_a.jpg'),
(16205023, 7, 'Under Armour Rogue 2.5', 3, 65, 6, 135, 29, '12/11/2020', '12/11/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '392796_a.jpg'),
(16210779, 2, 'On running Cloud Nova', 3, 135, 41, 94, 73, '22/3/2020', '22/3/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '365940_a.jpg'),
(16211024, 2, 'On running Cloud Waterproof', 3, 135, 44, 142, 51, '28/8/2018', '28/8/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476156_a.jpg'),
(16211163, 12, 'Calvin Klein Violet Women&#039;s', 6, 150, 45, 105, 58, '20/8/2018', '20/8/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '3024155-001_C_0001_a.jpg'),
(16212150, 17, 'Nike Downshifter 9', 3, 55, 0, 120, 66, '24/2/2020', '24/2/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476440_a.jpg'),
(16213133, 12, 'Calvin Klein Violet Women&#039;s', 6, 200, 18, 106, 52, '16/3/2018', '16/3/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'W5740WT1_C_0010_a.jpg'),
(16213135, 12, 'Calvin Klein Violet Women&#039;s', 6, 200, 47, 111, 53, '6/10/2020', '6/10/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '473634_a.jpg'),
(16213550, 7, 'Under Armour Charged Bandit', 3, 85, 12, 113, 59, '18/9/2018', '18/9/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '460536_a.jpg'),
(16213608, 10, 'Asics GEL-Trabuco 9', 3, 120, 24, 87, 35, '3/9/2018', '3/9/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '381852_a.jpg'),
(16214297, 7, 'Under Armour Charged Pursuit 2', 3, 50, 6, 128, 69, '11/1/2019', '11/1/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '458064_a.jpg'),
(16214307, 1, 'adidas Falcon 2', 3, 45, 17, 144, 62, '16/4/2020', '16/4/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '460537_a.jpg'),
(16214843, 17, 'Nike Air Zoom Pegasus 38', 6, 180, 48, 127, 75, '11/7/2020', '11/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DO1344-100_C_0012_a.jpg'),
(16215239, 17, 'Nike Flex Run 2021', 3, 70, 0, 104, 59, '11/11/2020', '11/11/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '392792_a.jpg'),
(16215342, 5, 'Salomon XA Pro Street', 3, 125, 25, 91, 74, '13/10/2019', '13/10/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '379056_a.jpg'),
(16216555, 17, 'Nike Air Force 1 Fontanka Women&#039;s', 6, 180, 9, 138, 63, '1/9/2020', '1/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '464101_a.jpg'),
(16216589, 12, 'Calvin Klein Jeans Sole Sneaker Logo Women&#039;s', 6, 170, 6, 95, 34, '2/6/2019', '2/6/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'default.jpg'),
(16224622, 17, 'Nike Air Max 270 Women&#039;s', 6, 220, 13, 85, 72, '22/4/2020', '22/4/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DQ0814-100_C_0012_a.jpg'),
(16224847, 17, 'Nike Blazer Mid &#039;Shoellery&#039; Women&#039;s', 6, 170, 31, 128, 46, '21/6/2019', '21/6/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '1202A296.001_C_0001_a.jpg'),
(16225536, 17, 'Nike Air Max 270 Women&#039;s', 6, 220, 32, 85, 50, '18/5/2019', '18/5/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'HW0HW005680GM_C_0001_a.jpg'),
(16226873, 15, 'Lacoste Carnaby Women&#039;s', 6, 180, 45, 88, 73, '3/11/2020', '3/11/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DC9474-001_C_0001_a.jpg'),
(16227565, 17, 'Nike React Infinity Run Flyknit 2', 3, 145, 22, 82, 77, '5/6/2020', '5/6/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '451724_a.jpg'),
(16227618, 16, 'New Balance 5740 Women&#039;s', 6, 180, 5, 81, 53, '9/9/2020', '9/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'default.jpg'),
(16227621, 16, 'New Balance 5740 Women&#039;s', 6, 180, 32, 111, 66, '1/5/2019', '1/5/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GX1419_C_0024_a.jpg'),
(16228385, 17, 'Nike Air Max 97 Women&#039;s', 6, 250, 42, 130, 54, '8/8/2020', '8/8/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'HW0HW005680K6_C_0010_a.jpg'),
(16228388, 17, 'Nike Air Max 95 Women&#039;s', 6, 230, 40, 107, 64, '6/4/2018', '6/4/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DH0558-500_C_0050_a.jpg'),
(16228402, 7, 'Under Armour Sonic STRT', 3, 85, 35, 136, 38, '17/9/2019', '17/9/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '462999_a.jpg'),
(16229047, 17, 'Nike Pegasus Trail 3 GORE-TEX', 3, 135, 44, 117, 51, '17/10/2020', '17/10/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '457990_a.jpg'),
(16229077, 17, 'Nike Pegasus Trail 3 GORE-TEX', 3, 135, 13, 127, 74, '4/4/2019', '4/4/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415595_a.jpg'),
(16229086, 17, 'Nike Pegasus Trail 3 GORE-TEX Women&#039;s', 8, 135, 49, 146, 67, '6/7/2018', '6/7/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GY0157_a.jpg'),
(16229861, 1, 'adidas Run Falcon 2.0 Shoes', 8, 45, 12, 113, 47, '13/9/2018', '13/9/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '458643_a.jpg'),
(16229936, 17, 'Nike Dunk Low SE Women&#039;s', 10, 160, 21, 132, 43, '10/11/2018', '10/11/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'YW0YW004420GJ_C_0001_a.jpg'),
(16231013, 17, 'Nike Air Max 270 Women&#039;s', 10, 220, 0, 114, 58, '26/3/2018', '26/3/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DD1523-001_C_0001_a.jpg'),
(16231315, 1, 'adidas Originals ZX 750', 5, 150, 16, 129, 34, '27/5/2020', '27/5/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DJ6881-001_C_0001_a.jpg'),
(16231317, 17, 'Nike Air Max 95', 5, 240, 23, 107, 57, '7/10/2020', '7/10/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '687977-020_C_0001_a.jpg'),
(16231332, 2, 'On running Cloud x Shift Women&#039;s', 8, 150, 9, 101, 45, '24/12/2019', '24/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '451762_a.jpg'),
(16231428, 17, 'Nike Air Force 1 Crater Women&#039;s', 10, 180, 39, 144, 60, '28/5/2018', '28/5/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DM3064-100_C_0010_a.jpg'),
(16231619, 17, 'Nike Air Force 1 Women&#039;s', 10, 160, 42, 106, 61, '4/1/2020', '4/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H05180_C_0010_a.jpg'),
(16231620, 17, 'Nike Air Max 97 Women&#039;s', 10, 250, 43, 108, 53, '4/1/2020', '4/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DC4566-100_C_0012_a.jpg'),
(16231918, 17, 'Nike Air Max 97 Women&#039;s', 10, 250, 10, 93, 75, '15/1/2020', '15/1/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DH9632-101_C_0012_a.jpg'),
(16231929, 7, 'Under Armour HOVR Phantom 2', 3, 120, 46, 87, 78, '19/9/2020', '19/9/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '3023550-001_a.jpg'),
(16231930, 7, 'Under Armour Charged Vantage', 5, 140, 49, 101, 72, '21/2/2020', '21/2/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '465031_a.jpg'),
(16231931, 7, 'Under Armour Charged Vantage', 5, 140, 49, 132, 67, '12/10/2020', '12/10/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '1201A142-600_C_0060_a.jpg'),
(16231932, 7, 'Under Armour Charged Vantage', 5, 140, 8, 109, 68, '16/10/2018', '16/10/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '1201A063.004_C_0001_a.jpg'),
(16232089, 17, 'Nike Run Swift 2', 3, 60, 18, 137, 58, '25/12/2018', '25/12/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '391176_a.jpg'),
(16232102, 2, 'On running Cloud x Shift Women&#039;s', 8, 150, 31, 94, 79, '11/4/2019', '11/4/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H05246_a.jpg');
INSERT INTO `product` (`id`, `brand`, `name`, `category`, `price`, `sale_rate`, `total_value`, `sole_value`, `create_at`, `update_at`, `description`, `img`) VALUES
(16232473, 12, 'Calvin Klein Cole Women&#039;s', 10, 240, 39, 96, 66, '20/10/2019', '20/10/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '19526901_C_0001_a.jpg'),
(16232474, 12, 'Calvin Klein Cole Women&#039;s', 10, 170, 20, 95, 51, '6/12/2020', '6/12/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DJ9776-001_C_0001_a.jpg'),
(16232825, 17, 'Nike Air Force 1 &#039;Shoellery&#039; Women&#039;s', 10, 180, 42, 91, 62, '20/9/2019', '20/9/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DJ3874-600_C_0066_a.jpg'),
(16232826, 17, 'Nike Blazer Mid Next Women&#039;s', 10, 140, 24, 144, 30, '15/3/2018', '15/3/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H03904_C_0010_a.jpg'),
(16233075, 10, 'Asics GEL-Cumulus', 3, 120, 4, 87, 75, '17/6/2020', '17/6/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '461409_a.jpg'),
(16233081, 17, 'Nike Juniper Trail Women&#039;s', 8, 73, 30, 86, 53, '1/8/2018', '1/8/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415515_a.jpg'),
(16233128, 17, 'Nike Reax 8 TR', 3, 75, 20, 147, 52, '10/4/2020', '10/4/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '397001_a.jpg'),
(16233184, 17, 'Nike Air Huarache Women&#039;s', 10, 170, 10, 144, 60, '13/1/2018', '13/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'HW0HW005740K4_C_0010_a.jpg'),
(16233653, 17, 'Nike React Infinity Run Flyknit 2 Women&#039;s', 8, 145, 23, 143, 73, '6/7/2018', '6/7/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '393303_a.jpg'),
(16233654, 17, 'Nike React Infinity Run Flyknit 2', 3, 145, 41, 106, 35, '1/8/2020', '1/8/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'H04537_a.jpg'),
(16233655, 17, 'Nike Nike ZoomX Invincible Run Flyknit Women&#039;s Road Running Shoes', 8, 165, 8, 91, 41, '2/5/2019', '2/5/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '479885_a.jpg'),
(16234360, 15, 'Lacoste Carnaby 121', 5, 180, 29, 119, 45, '17/6/2020', '17/6/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '481073_a.jpg'),
(16234652, 2, 'On running Cloud Women&#039;s', 8, 120, 27, 127, 61, '20/4/2020', '20/4/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '449519_a.jpg'),
(16234881, 6, 'Tommy Hilfiger Harrison Sneaker', 5, 170, 0, 146, 40, '14/10/2019', '14/10/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '470317_a.jpg'),
(16234968, 1, 'adidas Originals Forum Bold Women&#039;s', 10, 160, 34, 94, 57, '19/12/2019', '19/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DM8328-600_C_0066_a.jpg'),
(16234987, 10, 'Asics Gel-1130', 8, 80, 49, 100, 38, '24/1/2018', '24/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DC4066-500_a.jpg'),
(16235094, 17, 'Nike Dunk Low SE Women&#039;s', 10, 160, 17, 115, 55, '26/1/2018', '26/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DN5461-100_C_0010_a.jpg'),
(16235545, 17, 'Nike Nike Zoom Fly 4 Men&#039;s Road Running Shoes', 3, 145, 0, 129, 53, '8/9/2019', '8/9/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476439_a.jpg'),
(16235546, 17, 'Nike Nike Air Zoom Pegasus 38 Women&#039;s Road Running Shoes', 8, 113, 22, 90, 55, '15/7/2018', '15/7/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '458398_a.jpg'),
(16236208, 7, 'Under Armour Rogue 2.5 PRE ORDER', 3, 65, 32, 84, 52, '27/9/2019', '27/9/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'S42774_a.jpg'),
(16236623, 2, 'On running Cloud Women&#039;s', 8, 120, 33, 87, 58, '9/1/2018', '9/1/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GY0155_a.jpg'),
(16236712, 17, 'Nike Blazer Mid &#039;77 Jumbo', 5, 160, 21, 101, 59, '26/1/2019', '26/1/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'GY1273_C_0001_a.jpg'),
(16237715, 17, 'Nike Nike React Miler 2 Shield Women&#039;s Weatherised Road Running Shoes', 8, 125, 46, 121, 56, '28/8/2019', '28/8/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '445873_a.jpg'),
(16237995, 14, 'Emporio Armani EA7 Crusher Reflex Knit Women&#039;s', 8, 160, 0, 85, 35, '3/7/2018', '3/7/2018', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '415504_a.jpg'),
(16238115, 17, 'Nike Air Huarache Women&#039;s', 10, 170, 44, 142, 59, '9/8/2019', '9/8/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DM0850-001_C_0001_a.jpg'),
(16238341, 17, 'Nike Air Force 1 Low', 5, 160, 31, 108, 43, '24/4/2019', '24/4/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'CI3705-001_C_0001_a.jpg'),
(16240485, 17, 'Nike Waffle One Women&#039;s', 10, 160, 0, 117, 68, '10/12/2019', '10/12/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'DH0558-001_C_0001_a.jpg'),
(16240736, 2, 'On running Cloud Nova', 3, 135, 39, 141, 68, '18/7/2020', '18/7/2020', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', '476099_a.jpg'),
(16241861, 1, 'adidas Run Falcon 2.0 TR', 3, 50, 27, 133, 31, '7/2/2019', '7/2/2019', 'This shoe have been developed with Dynamic Fit technology which delivers a snug, supportive and comfortable fit around the ankle. The boots have strategically placed texturing which is thicker and denser at the toe and instep to enhance control where you need it most, while the off-centre lacing allows you to strike the ball cleanly.', 'CT2392-001_a.jpg'),
(16242716, 17, 'Nike', 5, 110, 10, 0, 0, '4-02-122', '122/2/4', 'xyz', '16242716_1.jpg'),
(16242718, 1, 'Nike XYZ', 5, 100, 10, 0, 0, '2-05-122', '122/5/2', 'xyz', 'default.jpg'),
(16242719, 10, 'Nike 9999', 5, 100, 10, 0, 0, '2-05-122', '122/5/2', 'xyz', 'default.jpg'),
(16242720, 1, 'Nike XYZ', 5, 100, 10, 0, 0, '2-05-122', '122/5/2', 'asdd', 'default.jpg'),
(16242721, 1, 'Nike XYZ', 5, 100, 10, 94, 94, NULL, NULL, 'Nike fake loại 1, 2, 3. Phù hợp cho sinh viên nhé.\r\n', NULL),
(16243750, 3, 'Giày Puma fake loại 1 ', 6, 80, 10, 250, 250, '23/05/23', '23/05/23', 'Giày Puma fake loại 1 chất lượng phù cho những anh chị sinh viên tuy không đủ điều kiện kinh tế những vẫn thích làm màu nhé kkkk.', 'default.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `id_product` int(8) NOT NULL,
  `size` int(2) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `id_product`, `size`, `quantity`, `create_at`, `update_at`, `active`, `color`) VALUES
(2, 16070029, 37, 60, '6/1/2020', '11/7/2021', 1, 'white'),
(3, 16070029, 38, 55, '13/6/2020', '1/8/2021', 1, 'black'),
(4, 16070029, 39, 75, '19/1/2020', '5/6/2021', 1, 'bla'),
(5, 16070029, 40, 68, '9/2/2020', '20/8/2021', 1, 'white'),
(6, 16070029, 43, 32, '22/6/2020', '24/10/2021', 1, 'white'),
(7, 16070588, 35, 52, '27/1/2020', '6/6/2021', 1, 'white'),
(8, 16070588, 38, 52, '27/8/2020', '23/4/2021', 1, 'white'),
(9, 16070588, 39, 56, '22/5/2020', '14/7/2021', 1, 'black'),
(10, 16070588, 40, 63, '7/9/2020', '7/8/2021', 1, 'black'),
(11, 16070588, 41, 56, '10/4/2020', '7/9/2021', 1, 'white'),
(12, 16070588, 43, 47, '5/10/2020', '8/1/2021', 1, 'white'),
(13, 16071726, 36, 52, '3/11/2020', '7/10/2021', 1, 'white'),
(14, 16071726, 37, 52, '1/11/2020', '20/10/2021', 1, 'black'),
(15, 16071726, 37, 63, '20/2/2020', '13/10/2021', 1, 'white'),
(16, 16071726, 38, 56, '2/6/2020', '25/3/2021', 1, 'white'),
(17, 16071726, 39, 72, '15/4/2020', '7/10/2021', 1, 'black'),
(18, 16071726, 40, 52, '9/8/2020', '18/4/2021', 1, 'white'),
(19, 16071726, 41, 52, '25/9/2020', '3/3/2021', 1, 'black'),
(20, 16071726, 42, 63, '22/3/2020', '24/4/2021', 1, 'black'),
(21, 16085921, 35, 40, '0.000855085508415841', '0.000090009000495049', 1, 'white'),
(22, 16085921, 38, 63, '3/3/2020', '25/8/2021', 1, 'white'),
(23, 16085921, 40, 72, '26/4/2020', '13/10/2021', 1, 'white'),
(24, 16085921, 41, 63, '9/9/2020', '6/5/2021', 1, 'white'),
(25, 16085921, 43, 47, '4/9/2020', '27/11/2021', 1, 'white'),
(26, 16085932, 38, 72, '15/1/2020', '23/5/2021', 1, 'white'),
(27, 16085932, 39, 52, '17/3/2020', '20/11/2021', 1, 'white'),
(28, 16085932, 40, 56, '8/7/2020', '9/11/2021', 1, 'white'),
(29, 16116869, 35, 47, '5/3/2020', '5/4/2021', 1, 'black'),
(30, 16116869, 39, 72, '25/7/2020', '5/5/2021', 1, 'white'),
(31, 16116869, 40, 52, '9/11/2020', '9/2/2021', 1, 'black'),
(32, 16116869, 41, 56, '10/11/2020', '19/8/2021', 1, 'black'),
(33, 16116869, 42, 47, '19/7/2020', '1/9/2021', 1, 'white'),
(34, 16116869, 43, 56, '6/6/2020', '22/5/2021', 1, 'black'),
(35, 16118109, 35, 52, '17/10/2020', '13/7/2021', 1, 'white'),
(36, 16118109, 36, 52, '9/1/2020', '17/7/2021', 1, 'white'),
(37, 16118109, 37, 56, '8/5/2020', '15/9/2021', 1, 'white'),
(38, 16118109, 41, 72, '27/10/2020', '13/4/2021', 1, 'white'),
(39, 16119350, 36, 56, '17/3/2020', '8/4/2021', 1, 'white'),
(40, 16119350, 38, 72, '20/11/2020', '4/5/2021', 1, 'white'),
(41, 16119350, 40, 63, '9/7/2020', '25/5/2021', 1, 'white'),
(42, 16119350, 41, 52, '1/11/2020', '21/7/2021', 1, 'white'),
(43, 16119350, 43, 63, '21/3/2020', '16/2/2021', 1, 'white'),
(44, 16126979, 36, 56, '10/4/2020', '27/9/2021', 1, 'white'),
(45, 16126979, 37, 72, '26/3/2020', '25/1/2021', 1, 'white'),
(46, 16126979, 42, 72, '15/10/2020', '3/2/2021', 1, 'white'),
(47, 16127820, 35, 52, '12/7/2020', '17/8/2021', 1, 'white'),
(48, 16127820, 41, 63, '8/2/2020', '13/2/2021', 1, 'white'),
(49, 16128160, 35, 52, '10/4/2020', '8/6/2021', 1, 'white'),
(50, 16128160, 36, 63, '16/10/2020', '6/2/2021', 1, 'white'),
(51, 16128160, 39, 56, '25/4/2020', '20/8/2021', 1, 'white'),
(52, 16128160, 40, 72, '18/1/2020', '10/7/2021', 1, 'white'),
(53, 16128160, 43, 56, '8/7/2020', '21/5/2021', 1, 'white'),
(54, 16132374, 35, 63, '27/10/2020', '3/10/2021', 1, 'black'),
(55, 16132374, 35, 63, '17/8/2020', '19/11/2021', 1, 'white'),
(56, 16132374, 37, 63, '21/3/2020', '16/1/2021', 1, 'white'),
(57, 16132374, 38, 52, '2/11/2020', '12/3/2021', 1, 'white'),
(58, 16132374, 39, 52, '2/10/2020', '5/8/2021', 1, 'black'),
(59, 16132374, 39, 63, '27/9/2020', '6/8/2021', 1, 'white'),
(60, 16132374, 40, 63, '16/10/2020', '11/2/2021', 1, 'white'),
(61, 16132374, 41, 63, '10/3/2020', '1/2/2021', 1, 'black'),
(62, 16132374, 41, 56, '26/2/2020', '22/1/2021', 1, 'white'),
(63, 16132374, 42, 47, '21/8/2020', '6/7/2021', 1, 'white'),
(64, 16132374, 43, 56, '17/8/2020', '20/5/2021', 1, 'white'),
(65, 16132531, 36, 52, '27/9/2020', '11/11/2021', 1, 'white'),
(66, 16132531, 37, 72, '5/3/2020', '21/4/2021', 1, 'white'),
(67, 16132531, 40, 52, '13/8/2020', '6/9/2021', 1, 'white'),
(68, 16132531, 41, 52, '15/1/2020', '26/2/2021', 1, 'white'),
(69, 16132531, 43, 63, '22/8/2020', '13/2/2021', 1, 'white'),
(70, 16135411, 35, 72, '19/9/2020', '22/10/2021', 1, 'white'),
(71, 16135411, 36, 47, '22/1/2020', '20/11/2021', 1, 'white'),
(72, 16135411, 37, 47, '2/7/2020', '23/10/2021', 1, 'black'),
(73, 16135411, 39, 47, '19/1/2020', '6/3/2021', 1, 'black'),
(74, 16135411, 39, 63, '3/3/2020', '10/1/2021', 1, 'white'),
(75, 16135411, 41, 52, '13/8/2020', '15/9/2021', 1, 'black'),
(76, 16135411, 43, 52, '12/4/2020', '8/3/2021', 1, 'white'),
(77, 16135426, 35, 63, '3/7/2020', '5/5/2021', 1, 'white'),
(78, 16135426, 36, 52, '7/3/2020', '25/4/2021', 1, 'white'),
(79, 16135426, 42, 72, '26/10/2020', '6/9/2021', 1, 'white'),
(80, 16135426, 43, 56, '19/10/2020', '12/1/2021', 1, 'white'),
(81, 16135439, 35, 47, '26/3/2020', '9/9/2021', 1, 'white'),
(82, 16135439, 43, 47, '26/11/2020', '5/4/2021', 1, 'white'),
(83, 16135462, 36, 72, '22/4/2020', '1/3/2021', 1, 'black'),
(84, 16135462, 36, 47, '4/5/2020', '10/9/2021', 1, 'white'),
(85, 16135462, 38, 63, '4/2/2020', '9/11/2021', 1, 'black'),
(86, 16135462, 39, 63, '14/5/2020', '23/2/2021', 1, 'black'),
(87, 16135462, 39, 47, '6/4/2020', '19/11/2021', 1, 'white'),
(88, 16135462, 40, 52, '9/6/2020', '10/11/2021', 1, 'white'),
(89, 16135462, 41, 47, '10/10/2020', '10/2/2021', 1, 'white'),
(90, 16135462, 43, 47, '20/10/2020', '18/9/2021', 1, 'black'),
(91, 16135477, 35, 56, '11/2/2020', '7/6/2021', 1, 'white'),
(92, 16135477, 37, 47, '5/7/2020', '5/6/2021', 1, 'white'),
(93, 16135477, 39, 72, '12/3/2020', '18/5/2021', 1, 'black'),
(94, 16135477, 41, 56, '10/1/2020', '5/11/2021', 1, 'white'),
(95, 16135477, 42, 56, '10/1/2020', '14/11/2021', 1, 'white'),
(96, 16135477, 43, 72, '22/11/2020', '18/10/2021', 1, 'white'),
(97, 16138580, 36, 47, '15/2/2020', '26/3/2021', 1, 'white'),
(98, 16138580, 38, 56, '15/5/2020', '12/2/2021', 1, 'white'),
(99, 16138580, 42, 56, '22/3/2020', '21/5/2021', 1, 'white'),
(100, 16138603, 36, 63, '21/10/2020', '15/5/2021', 1, 'black'),
(101, 16138603, 36, 63, '13/10/2020', '17/3/2021', 1, 'white'),
(102, 16138603, 37, 47, '5/11/2020', '7/7/2021', 1, 'black'),
(103, 16138603, 39, 56, '23/4/2020', '24/10/2021', 1, 'white'),
(104, 16138603, 40, 63, '15/5/2020', '26/6/2021', 1, 'black'),
(105, 16138603, 40, 56, '27/4/2020', '5/7/2021', 1, 'white'),
(106, 16138603, 41, 47, '8/5/2020', '8/7/2021', 1, 'black'),
(107, 16140797, 35, 72, '5/7/2020', '3/10/2021', 1, 'white'),
(108, 16140797, 37, 72, '12/10/2020', '20/8/2021', 1, 'white'),
(109, 16140797, 38, 63, '10/7/2020', '23/5/2021', 1, 'black'),
(110, 16140797, 39, 52, '2/8/2020', '15/11/2021', 1, 'white'),
(111, 16140797, 41, 72, '14/10/2020', '27/10/2021', 1, 'black'),
(112, 16140797, 42, 56, '1/6/2020', '18/8/2021', 1, 'black'),
(113, 16140797, 42, 72, '25/3/2020', '24/1/2021', 1, 'white'),
(114, 16140799, 35, 63, '13/1/2020', '1/6/2021', 1, 'white'),
(115, 16140799, 37, 72, '13/5/2020', '24/8/2021', 1, 'white'),
(116, 16140799, 40, 63, '2/2/2020', '16/6/2021', 1, 'white'),
(117, 16140799, 42, 72, '18/7/2020', '24/11/2021', 1, 'white'),
(118, 16141679, 35, 52, '19/3/2020', '3/1/2021', 1, 'black'),
(119, 16141679, 35, 72, '18/4/2020', '6/1/2021', 1, 'white'),
(120, 16141679, 36, 47, '7/1/2020', '21/3/2021', 1, 'black'),
(121, 16141679, 37, 72, '11/5/2020', '17/2/2021', 1, 'black'),
(122, 16141679, 41, 63, '1/7/2020', '9/1/2021', 1, 'black'),
(123, 16144878, 36, 52, '25/5/2020', '19/7/2021', 1, 'white'),
(124, 16144878, 40, 52, '12/6/2020', '20/5/2021', 1, 'white'),
(125, 16144878, 41, 72, '22/10/2020', '23/1/2021', 1, 'white'),
(126, 16158819, 42, 56, '3/4/2020', '24/9/2021', 1, 'white'),
(127, 16158819, 43, 63, '26/9/2020', '26/1/2021', 1, 'white'),
(128, 16159139, 35, 56, '7/1/2020', '5/10/2021', 1, 'black'),
(129, 16159139, 37, 52, '13/7/2020', '14/3/2021', 1, 'black'),
(130, 16159139, 38, 72, '2/11/2020', '22/1/2021', 1, 'white'),
(131, 16159139, 39, 72, '26/9/2020', '8/11/2021', 1, 'black'),
(132, 16159139, 42, 52, '17/5/2020', '21/6/2021', 1, 'black'),
(133, 16159139, 42, 56, '20/6/2020', '19/7/2021', 1, 'white'),
(134, 16159139, 43, 72, '13/6/2020', '23/5/2021', 1, 'black'),
(135, 16159236, 36, 56, '15/9/2020', '6/4/2021', 1, 'white'),
(136, 16159236, 37, 56, '7/6/2020', '25/6/2021', 1, 'black'),
(137, 16159236, 38, 63, '9/9/2020', '26/5/2021', 1, 'white'),
(138, 16159236, 40, 52, '4/2/2020', '13/7/2021', 1, 'black'),
(139, 16159236, 41, 47, '15/10/2020', '19/9/2021', 1, 'white'),
(140, 16159236, 42, 72, '13/4/2020', '5/1/2021', 1, 'black'),
(141, 16159236, 42, 63, '13/8/2020', '21/3/2021', 1, 'white'),
(142, 16159256, 35, 63, '23/7/2020', '19/1/2021', 1, 'black'),
(143, 16159256, 36, 72, '27/1/2020', '26/1/2021', 1, 'black'),
(144, 16159256, 36, 72, '24/4/2020', '16/10/2021', 1, 'white'),
(145, 16159256, 37, 56, '24/6/2020', '27/10/2021', 1, 'black'),
(146, 16159256, 38, 72, '6/6/2020', '14/3/2021', 1, 'white'),
(147, 16159256, 39, 47, '2/9/2020', '15/6/2021', 1, 'black'),
(148, 16159256, 40, 47, '19/4/2020', '19/8/2021', 1, 'black'),
(149, 16159256, 41, 63, '20/6/2020', '21/5/2021', 1, 'black'),
(150, 16159256, 42, 52, '18/4/2020', '20/1/2021', 1, 'black'),
(151, 16159256, 43, 52, '25/9/2020', '12/1/2021', 1, 'black'),
(152, 16159256, 43, 56, '15/10/2020', '8/4/2021', 1, 'white'),
(153, 16159327, 36, 72, '22/9/2020', '9/7/2021', 1, 'white'),
(154, 16159327, 39, 47, '5/6/2020', '5/9/2021', 1, 'black'),
(155, 16159327, 40, 47, '6/2/2020', '26/9/2021', 1, 'black'),
(156, 16159327, 41, 72, '10/7/2020', '1/1/2021', 1, 'black'),
(157, 16159327, 42, 52, '21/5/2020', '5/10/2021', 1, 'white'),
(158, 16159327, 43, 56, '18/8/2020', '22/4/2021', 1, 'black'),
(159, 16159351, 35, 63, '20/3/2020', '25/5/2021', 1, 'white'),
(160, 16159351, 40, 52, '11/4/2020', '26/2/2021', 1, 'white'),
(161, 16159643, 35, 72, '4/4/2020', '11/1/2021', 1, 'black'),
(162, 16159643, 35, 72, '20/2/2020', '1/11/2021', 1, 'white'),
(163, 16159643, 37, 52, '27/2/2020', '25/9/2021', 1, 'black'),
(164, 16159643, 38, 47, '11/8/2020', '8/8/2021', 1, 'black'),
(165, 16159643, 38, 72, '20/8/2020', '23/11/2021', 1, 'white'),
(166, 16159643, 40, 47, '22/10/2020', '6/11/2021', 1, 'black'),
(167, 16159643, 42, 47, '13/3/2020', '12/2/2021', 1, 'black'),
(168, 16159643, 42, 63, '12/9/2020', '20/6/2021', 1, 'white'),
(169, 16159643, 43, 72, '12/4/2020', '23/6/2021', 1, 'white'),
(170, 16159684, 37, 52, '14/7/2020', '10/4/2021', 1, 'black'),
(171, 16159684, 37, 56, '19/11/2020', '11/9/2021', 1, 'white'),
(172, 16159684, 39, 63, '26/9/2020', '9/2/2021', 1, 'black'),
(173, 16159684, 40, 47, '27/6/2020', '24/9/2021', 1, 'white'),
(174, 16159684, 41, 72, '14/2/2020', '14/3/2021', 1, 'white'),
(175, 16159684, 42, 47, '13/2/2020', '20/10/2021', 1, 'white'),
(176, 16159754, 37, 56, '20/11/2020', '18/2/2021', 1, 'white'),
(177, 16159754, 41, 63, '24/2/2020', '11/1/2021', 1, 'white'),
(178, 16159754, 42, 52, '25/8/2020', '12/8/2021', 1, 'white'),
(179, 16159845, 36, 52, '14/6/2020', '5/5/2021', 1, 'black'),
(180, 16159845, 39, 52, '11/1/2020', '14/8/2021', 1, 'white'),
(181, 16159845, 40, 63, '3/7/2020', '2/8/2021', 1, 'black'),
(182, 16159845, 42, 63, '7/3/2020', '16/1/2021', 1, 'white'),
(183, 16160296, 37, 47, '17/10/2020', '9/3/2021', 1, 'white'),
(184, 16160296, 38, 63, '27/8/2020', '6/11/2021', 1, 'black'),
(185, 16160296, 41, 56, '18/7/2020', '15/3/2021', 1, 'black'),
(186, 16160296, 41, 52, '26/6/2020', '18/3/2021', 1, 'white'),
(187, 16160296, 42, 72, '25/10/2020', '20/5/2021', 1, 'black'),
(188, 16161204, 38, 52, '22/1/2020', '6/1/2021', 1, 'white'),
(189, 16161204, 40, 47, '15/3/2020', '14/1/2021', 1, 'black'),
(190, 16161204, 40, 72, '22/10/2020', '26/10/2021', 1, 'white'),
(191, 16161204, 41, 52, '18/5/2020', '5/7/2021', 1, 'white'),
(192, 16161204, 42, 63, '16/5/2020', '9/6/2021', 1, 'black'),
(193, 16161204, 43, 72, '1/7/2020', '1/5/2021', 1, 'black'),
(194, 16161204, 43, 56, '19/3/2020', '20/5/2021', 1, 'white'),
(195, 16161937, 38, 47, '13/8/2020', '26/2/2021', 1, 'black'),
(196, 16161937, 39, 72, '4/4/2020', '8/7/2021', 1, 'black'),
(197, 16161937, 39, 72, '16/10/2020', '10/1/2021', 1, 'white'),
(198, 16161937, 40, 72, '26/5/2020', '7/6/2021', 1, 'black'),
(199, 16161937, 42, 63, '13/7/2020', '15/4/2021', 1, 'black'),
(200, 16161937, 42, 63, '21/6/2020', '23/6/2021', 1, 'white'),
(201, 16161937, 43, 63, '16/4/2020', '24/11/2021', 1, 'white'),
(202, 16162547, 37, 72, '3/11/2020', '6/4/2021', 1, 'black'),
(203, 16162547, 38, 56, '21/3/2020', '14/7/2021', 1, 'black'),
(204, 16162547, 38, 63, '7/4/2020', '11/7/2021', 1, 'white'),
(205, 16162547, 39, 47, '24/6/2020', '12/5/2021', 1, 'black'),
(206, 16162547, 41, 63, '11/2/2020', '11/6/2021', 1, 'white'),
(207, 16162547, 42, 72, '15/2/2020', '24/3/2021', 1, 'black'),
(208, 16162547, 43, 72, '5/3/2020', '16/5/2021', 1, 'white'),
(209, 16168777, 36, 52, '18/10/2020', '23/6/2021', 1, 'white'),
(210, 16168777, 39, 56, '2/8/2020', '8/11/2021', 1, 'white'),
(211, 16168777, 42, 72, '14/6/2020', '9/10/2021', 1, 'white'),
(212, 16168777, 43, 56, '24/5/2020', '12/5/2021', 1, 'white'),
(213, 16172353, 39, 52, '15/3/2020', '21/4/2021', 1, 'white'),
(214, 16172353, 42, 56, '15/2/2020', '19/11/2021', 1, 'white'),
(215, 16180511, 36, 72, '27/10/2020', '21/4/2021', 1, 'white'),
(216, 16180511, 37, 47, '21/5/2020', '4/10/2021', 1, 'white'),
(217, 16180511, 40, 63, '15/2/2020', '23/4/2021', 1, 'white'),
(218, 16180511, 41, 56, '9/3/2020', '5/2/2021', 1, 'white'),
(219, 16183980, 41, 47, '4/9/2020', '1/2/2021', 1, 'white'),
(220, 16183981, 35, 52, '12/10/2020', '8/8/2021', 1, 'white'),
(221, 16183981, 37, 72, '24/9/2020', '7/10/2021', 1, 'black'),
(222, 16183981, 41, 63, '10/1/2020', '8/10/2021', 1, 'black'),
(223, 16183981, 41, 63, '2/7/2020', '9/4/2021', 1, 'white'),
(224, 16183981, 42, 72, '2/5/2020', '24/7/2021', 1, 'black'),
(225, 16183981, 43, 63, '19/7/2020', '15/3/2021', 1, 'black'),
(226, 16184638, 36, 52, '9/3/2020', '1/6/2021', 1, 'white'),
(227, 16184638, 37, 52, '23/3/2020', '7/11/2021', 1, 'white'),
(228, 16184638, 41, 72, '26/6/2020', '18/8/2021', 1, 'white'),
(229, 16184638, 42, 63, '21/8/2020', '4/4/2021', 1, 'white'),
(230, 16185706, 37, 47, '2/11/2020', '27/2/2021', 1, 'white'),
(231, 16185706, 41, 72, '17/9/2020', '12/5/2021', 1, 'white'),
(232, 16185756, 35, 47, '19/6/2020', '25/1/2021', 1, 'black'),
(233, 16185756, 36, 52, '10/1/2020', '18/3/2021', 1, 'black'),
(234, 16185756, 37, 47, '17/10/2020', '4/10/2021', 1, 'white'),
(235, 16185756, 41, 63, '2/8/2020', '16/7/2021', 1, 'black'),
(236, 16185756, 42, 56, '15/4/2020', '13/1/2021', 1, 'white'),
(237, 16185756, 43, 52, '16/10/2020', '10/6/2021', 1, 'white'),
(238, 16185841, 39, 72, '19/9/2020', '2/6/2021', 1, 'white'),
(239, 16185841, 43, 63, '17/11/2020', '21/10/2021', 1, 'white'),
(240, 16185854, 37, 52, '24/7/2020', '22/8/2021', 1, 'black'),
(241, 16185854, 38, 47, '18/1/2020', '14/11/2021', 1, 'black'),
(242, 16185854, 40, 63, '20/5/2020', '18/9/2021', 1, 'black'),
(243, 16185854, 41, 63, '8/6/2020', '25/2/2021', 1, 'black'),
(244, 16185854, 42, 63, '27/11/2020', '18/10/2021', 1, 'black'),
(245, 16185854, 43, 47, '27/3/2020', '4/3/2021', 1, 'black'),
(246, 16187052, 35, 72, '14/10/2020', '8/4/2021', 1, 'black'),
(247, 16187052, 35, 52, '12/9/2020', '17/3/2021', 1, 'white'),
(248, 16187052, 36, 63, '4/10/2020', '19/2/2021', 1, 'black'),
(249, 16187052, 42, 47, '5/7/2020', '1/1/2021', 1, 'black'),
(250, 16187052, 42, 52, '19/1/2020', '9/7/2021', 1, 'white'),
(251, 16188332, 35, 52, '14/10/2020', '24/3/2021', 1, 'white'),
(252, 16188332, 36, 56, '13/2/2020', '7/11/2021', 1, 'black'),
(253, 16188332, 36, 47, '8/2/2020', '2/11/2021', 1, 'white'),
(254, 16188332, 38, 56, '22/4/2020', '21/3/2021', 1, 'black'),
(255, 16188332, 39, 72, '22/6/2020', '3/10/2021', 1, 'black'),
(256, 16188332, 39, 47, '21/5/2020', '2/10/2021', 1, 'white'),
(257, 16188332, 41, 56, '11/3/2020', '10/5/2021', 1, 'black'),
(258, 16188332, 41, 56, '17/6/2020', '27/11/2021', 1, 'white'),
(259, 16188332, 42, 72, '3/1/2020', '6/8/2021', 1, 'black'),
(260, 16188332, 43, 63, '10/4/2020', '5/3/2021', 1, 'white'),
(261, 16188337, 37, 56, '1/2/2020', '7/2/2021', 1, 'white'),
(262, 16188337, 38, 52, '3/1/2020', '16/11/2021', 1, 'black'),
(263, 16188337, 40, 63, '9/4/2020', '14/10/2021', 1, 'black'),
(264, 16188337, 43, 52, '25/2/2020', '8/7/2021', 1, 'black'),
(265, 16191513, 35, 47, '1/7/2020', '4/8/2021', 1, 'black'),
(266, 16191513, 35, 52, '1/1/2020', '10/2/2021', 1, 'white'),
(267, 16191513, 37, 72, '22/1/2020', '22/5/2021', 1, 'white'),
(268, 16191513, 38, 52, '6/9/2020', '12/6/2021', 1, 'black'),
(269, 16191513, 40, 72, '22/9/2020', '18/7/2021', 1, 'black'),
(270, 16191513, 41, 56, '27/6/2020', '12/4/2021', 1, 'white'),
(271, 16191513, 42, 63, '23/8/2020', '23/7/2021', 1, 'black'),
(272, 16191513, 42, 56, '26/2/2020', '7/6/2021', 1, 'white'),
(273, 16191513, 43, 52, '13/1/2020', '20/6/2021', 1, 'black'),
(274, 16191515, 37, 47, '15/10/2020', '24/7/2021', 1, 'white'),
(275, 16191515, 40, 63, '6/1/2020', '19/1/2021', 1, 'white'),
(276, 16191784, 35, 52, '24/11/2020', '9/7/2021', 1, 'black'),
(277, 16191784, 35, 47, '19/10/2020', '17/11/2021', 1, 'white'),
(278, 16191784, 37, 56, '2/6/2020', '25/3/2021', 1, 'black'),
(279, 16191784, 37, 72, '10/1/2020', '24/4/2021', 1, 'white'),
(280, 16191784, 39, 47, '15/8/2020', '6/3/2021', 1, 'white'),
(281, 16191784, 40, 72, '3/10/2020', '17/5/2021', 1, 'black'),
(282, 16191784, 40, 72, '11/3/2020', '25/1/2021', 1, 'white'),
(283, 16191784, 41, 63, '17/6/2020', '9/7/2021', 1, 'white'),
(284, 16191784, 43, 63, '18/11/2020', '3/2/2021', 1, 'black'),
(285, 16193455, 36, 47, '13/2/2020', '15/9/2021', 1, 'white'),
(286, 16193455, 37, 52, '8/9/2020', '22/9/2021', 1, 'white'),
(287, 16193455, 38, 47, '10/11/2020', '16/4/2021', 1, 'black'),
(288, 16193455, 40, 72, '20/7/2020', '2/2/2021', 1, 'white'),
(289, 16193455, 41, 52, '15/6/2020', '20/1/2021', 1, 'black'),
(290, 16193455, 43, 72, '13/4/2020', '12/8/2021', 1, 'black'),
(291, 16193455, 43, 52, '10/3/2020', '2/8/2021', 1, 'white'),
(292, 16193564, 35, 47, '13/10/2020', '19/10/2021', 1, 'white'),
(293, 16193564, 38, 47, '15/8/2020', '7/3/2021', 1, 'black'),
(294, 16193564, 38, 47, '21/11/2020', '19/4/2021', 1, 'white'),
(295, 16193564, 39, 63, '16/3/2020', '5/10/2021', 1, 'black'),
(296, 16193564, 41, 52, '14/4/2020', '11/11/2021', 1, 'black'),
(297, 16193564, 43, 63, '22/4/2020', '5/1/2021', 1, 'black'),
(298, 16193565, 37, 72, '8/1/2020', '7/4/2021', 1, 'black'),
(299, 16193565, 37, 56, '25/9/2020', '8/6/2021', 1, 'white'),
(300, 16193565, 39, 63, '17/10/2020', '3/1/2021', 1, 'black'),
(301, 16193565, 40, 56, '10/8/2020', '20/10/2021', 1, 'white'),
(302, 16193565, 41, 56, '23/1/2020', '24/8/2021', 1, 'black'),
(303, 16193565, 41, 72, '10/2/2020', '20/3/2021', 1, 'white'),
(304, 16193565, 42, 47, '8/2/2020', '23/7/2021', 1, 'black'),
(305, 16193565, 43, 72, '20/7/2020', '7/8/2021', 1, 'white'),
(306, 16195013, 36, 52, '19/4/2020', '14/5/2021', 1, 'white'),
(307, 16195013, 43, 72, '23/3/2020', '21/4/2021', 1, 'white'),
(308, 16195856, 36, 56, '4/5/2020', '6/7/2021', 1, 'black'),
(309, 16195856, 37, 52, '15/1/2020', '1/11/2021', 1, 'black'),
(310, 16195856, 37, 56, '17/4/2020', '27/3/2021', 1, 'white'),
(311, 16195856, 39, 47, '25/5/2020', '3/3/2021', 1, 'white'),
(312, 16195856, 40, 63, '19/10/2020', '13/7/2021', 1, 'black'),
(313, 16195856, 40, 47, '23/5/2020', '4/1/2021', 1, 'white'),
(314, 16195856, 42, 56, '18/5/2020', '27/8/2021', 1, 'black'),
(315, 16197887, 35, 47, '7/4/2020', '15/7/2021', 1, 'white'),
(316, 16197887, 38, 52, '14/9/2020', '13/11/2021', 1, 'white'),
(317, 16197887, 41, 52, '12/1/2020', '5/11/2021', 1, 'white'),
(318, 16197887, 43, 56, '22/3/2020', '7/8/2021', 1, 'white'),
(319, 16198191, 36, 56, '14/8/2020', '3/7/2021', 1, 'white'),
(320, 16198191, 37, 52, '26/7/2020', '17/8/2021', 1, 'white'),
(321, 16198191, 38, 72, '18/6/2020', '24/9/2021', 1, 'white'),
(322, 16198191, 39, 56, '1/11/2020', '14/1/2021', 1, 'white'),
(323, 16198191, 40, 63, '19/3/2020', '20/10/2021', 1, 'black'),
(324, 16198191, 41, 72, '6/10/2020', '4/6/2021', 1, 'white'),
(325, 16199725, 35, 72, '10/4/2020', '25/4/2021', 1, 'white'),
(326, 16199725, 37, 47, '6/10/2020', '24/10/2021', 1, 'white'),
(327, 16199725, 39, 72, '26/8/2020', '12/11/2021', 1, 'black'),
(328, 16199725, 41, 63, '11/7/2020', '27/3/2021', 1, 'white'),
(329, 16199725, 42, 56, '17/6/2020', '11/5/2021', 1, 'white'),
(330, 16201171, 35, 52, '7/1/2020', '4/11/2021', 1, 'black'),
(331, 16201171, 36, 52, '3/3/2020', '1/1/2021', 1, 'black'),
(332, 16201171, 37, 56, '11/5/2020', '25/11/2021', 1, 'white'),
(333, 16201171, 38, 72, '4/11/2020', '13/4/2021', 1, 'white'),
(334, 16201171, 39, 72, '16/5/2020', '4/3/2021', 1, 'white'),
(335, 16201171, 41, 52, '15/10/2020', '12/4/2021', 1, 'black'),
(336, 16201171, 42, 72, '9/6/2020', '20/1/2021', 1, 'black'),
(337, 16201171, 42, 72, '5/10/2020', '11/11/2021', 1, 'white'),
(338, 16202085, 36, 52, '8/1/2020', '10/3/2021', 1, 'white'),
(339, 16202085, 38, 52, '6/1/2020', '22/4/2021', 1, 'white'),
(340, 16202085, 39, 56, '9/7/2020', '2/2/2021', 1, 'white'),
(341, 16202085, 43, 63, '26/10/2020', '13/4/2021', 1, 'white'),
(342, 16202345, 40, 47, '12/1/2020', '24/1/2021', 1, 'white'),
(343, 16202345, 41, 63, '22/2/2020', '12/11/2021', 1, 'white'),
(344, 16202345, 43, 72, '26/9/2020', '15/1/2021', 1, 'white'),
(345, 16204372, 35, 63, '14/3/2020', '16/11/2021', 1, 'white'),
(346, 16204372, 40, 56, '21/10/2020', '5/5/2021', 1, 'white'),
(347, 16204372, 43, 56, '1/1/2020', '9/6/2021', 1, 'white'),
(350, 16205023, 35, 72, '23/2/2020', '16/11/2021', 1, 'white'),
(351, 16205023, 37, 72, '26/9/2020', '24/4/2021', 1, 'white'),
(352, 16205023, 41, 63, '6/5/2020', '24/5/2021', 1, 'white'),
(353, 16210779, 35, 52, '3/10/2020', '5/1/2021', 1, 'black'),
(354, 16210779, 36, 47, '7/10/2020', '21/1/2021', 1, 'white'),
(355, 16210779, 37, 56, '16/11/2020', '25/3/2021', 1, 'black'),
(356, 16210779, 37, 47, '5/7/2020', '18/6/2021', 1, 'white'),
(357, 16210779, 39, 52, '6/7/2020', '10/7/2021', 1, 'black'),
(358, 16210779, 40, 72, '8/4/2020', '22/11/2021', 1, 'black'),
(359, 16210779, 42, 52, '20/9/2020', '16/10/2021', 1, 'black'),
(360, 16210779, 42, 47, '10/5/2020', '14/10/2021', 1, 'white'),
(361, 16210779, 43, 72, '2/11/2020', '23/8/2021', 1, 'white'),
(362, 16211024, 37, 72, '26/2/2020', '9/5/2021', 1, 'white'),
(363, 16211024, 40, 52, '9/7/2020', '16/6/2021', 1, 'white'),
(364, 16211163, 38, 52, '1/7/2020', '24/7/2021', 1, 'white'),
(365, 16211163, 39, 56, '5/5/2020', '6/5/2021', 1, 'white'),
(366, 16211163, 41, 56, '4/2/2020', '3/7/2021', 1, 'white'),
(367, 16211163, 42, 52, '20/6/2020', '27/10/2021', 1, 'white'),
(372, 16212150, 41, 72, '2/6/2020', '16/11/2021', 1, 'white'),
(373, 16212150, 43, 47, '3/11/2020', '24/7/2021', 1, 'white'),
(374, 16213133, 35, 56, '25/10/2020', '22/4/2021', 1, 'white'),
(375, 16213133, 36, 47, '9/9/2020', '18/10/2021', 1, 'white'),
(376, 16213133, 37, 52, '5/11/2020', '6/11/2021', 1, 'white'),
(377, 16213133, 39, 56, '3/7/2020', '19/2/2021', 1, 'white'),
(378, 16213133, 43, 56, '21/4/2020', '20/3/2021', 1, 'white'),
(379, 16213135, 37, 52, '14/9/2020', '10/7/2021', 1, 'white'),
(380, 16213135, 39, 47, '24/1/2020', '24/8/2021', 1, 'white'),
(381, 16213550, 43, 63, '20/1/2020', '7/4/2021', 1, 'white'),
(382, 16213608, 35, 47, '17/11/2020', '25/10/2021', 1, 'black'),
(383, 16213608, 39, 52, '11/5/2020', '1/1/2021', 1, 'black'),
(384, 16213608, 41, 56, '18/6/2020', '7/5/2021', 1, 'black'),
(385, 16213608, 43, 47, '10/4/2020', '26/4/2021', 1, 'black'),
(386, 16214297, 36, 47, '19/8/2020', '23/10/2021', 1, 'white'),
(387, 16214297, 38, 47, '2/4/2020', '19/1/2021', 1, 'black'),
(388, 16214297, 40, 72, '19/11/2020', '19/5/2021', 1, 'white'),
(389, 16214297, 41, 56, '24/9/2020', '22/11/2021', 1, 'black'),
(390, 16214297, 41, 47, '13/2/2020', '27/4/2021', 1, 'white'),
(391, 16214297, 42, 56, '3/11/2020', '17/2/2021', 1, 'white'),
(392, 16214307, 36, 72, '20/10/2020', '10/3/2021', 1, 'white'),
(393, 16214307, 37, 47, '7/11/2020', '7/1/2021', 1, 'white'),
(394, 16214307, 39, 72, '24/9/2020', '11/4/2021', 1, 'white'),
(395, 16214307, 42, 52, '12/5/2020', '14/8/2021', 1, 'white'),
(396, 16214843, 35, 47, '8/10/2020', '17/8/2021', 1, 'white'),
(397, 16214843, 37, 63, '18/1/2020', '11/8/2021', 1, 'white'),
(398, 16214843, 38, 52, '23/7/2020', '10/5/2021', 1, 'white'),
(399, 16214843, 40, 63, '11/6/2020', '7/10/2021', 1, 'white'),
(400, 16214843, 42, 56, '25/10/2020', '4/4/2021', 1, 'white'),
(401, 16214843, 43, 52, '2/11/2020', '14/9/2021', 1, 'white'),
(402, 16215239, 35, 52, '16/4/2020', '3/6/2021', 1, 'black'),
(403, 16215239, 35, 72, '21/3/2020', '15/11/2021', 1, 'white'),
(404, 16215239, 36, 52, '11/9/2020', '24/6/2021', 1, 'black'),
(405, 16215239, 36, 47, '7/5/2020', '23/6/2021', 1, 'white'),
(406, 16215239, 39, 72, '13/6/2020', '15/11/2021', 1, 'black'),
(407, 16215239, 40, 63, '6/2/2020', '8/11/2021', 1, 'white'),
(408, 16215239, 42, 56, '18/11/2020', '7/4/2021', 1, 'black'),
(409, 16215239, 43, 72, '23/7/2020', '14/5/2021', 1, 'white'),
(410, 16215342, 36, 47, '10/6/2020', '7/7/2021', 1, 'black'),
(411, 16215342, 37, 63, '25/4/2020', '8/7/2021', 1, 'black'),
(412, 16215342, 37, 52, '3/10/2020', '7/10/2021', 1, 'white'),
(413, 16215342, 38, 56, '1/6/2020', '25/7/2021', 1, 'black'),
(414, 16215342, 40, 72, '15/6/2020', '2/9/2021', 1, 'white'),
(415, 16215342, 43, 63, '12/7/2020', '18/10/2021', 1, 'white'),
(416, 16216555, 35, 56, '2/11/2020', '17/7/2021', 1, 'white'),
(417, 16216555, 36, 56, '10/5/2020', '22/1/2021', 1, 'white'),
(418, 16216555, 38, 47, '22/7/2020', '24/10/2021', 1, 'white'),
(419, 16216555, 39, 52, '9/7/2020', '22/9/2021', 1, 'white'),
(420, 16216555, 40, 56, '8/1/2020', '10/9/2021', 1, 'white'),
(421, 16216555, 43, 47, '16/7/2020', '19/1/2021', 1, 'white'),
(422, 16216589, 35, 63, '10/8/2020', '13/9/2021', 1, 'white'),
(423, 16216589, 36, 63, '19/5/2020', '25/1/2021', 1, 'white'),
(424, 16216589, 37, 63, '19/4/2020', '5/1/2021', 1, 'white'),
(425, 16216589, 40, 52, '19/10/2020', '22/1/2021', 1, 'white'),
(426, 16216589, 41, 56, '17/9/2020', '27/7/2021', 1, 'white'),
(427, 16216589, 42, 56, '23/9/2020', '2/2/2021', 1, 'white'),
(428, 16216589, 43, 63, '21/6/2020', '11/8/2021', 1, 'white'),
(429, 16224622, 39, 63, '24/10/2020', '9/2/2021', 1, 'white'),
(430, 16224622, 40, 63, '1/9/2020', '13/8/2021', 1, 'white'),
(431, 16224622, 43, 56, '19/9/2020', '1/1/2021', 1, 'white'),
(432, 16224847, 35, 63, '24/5/2020', '25/8/2021', 1, 'white'),
(433, 16224847, 37, 47, '23/10/2020', '10/5/2021', 1, 'white'),
(434, 16224847, 39, 47, '6/1/2020', '21/6/2021', 1, 'white'),
(435, 16224847, 42, 56, '21/8/2020', '8/10/2021', 1, 'white'),
(439, 16225536, 35, 47, '23/9/2020', '23/3/2021', 1, 'white'),
(440, 16225536, 36, 72, '12/5/2020', '2/6/2021', 1, 'white'),
(441, 16225536, 38, 63, '16/5/2020', '23/7/2021', 1, 'white'),
(442, 16225536, 41, 52, '17/7/2020', '21/9/2021', 1, 'white'),
(443, 16225536, 42, 52, '18/3/2020', '1/8/2021', 1, 'white'),
(449, 16226873, 36, 63, '4/11/2020', '12/4/2021', 1, 'white'),
(450, 16226873, 39, 72, '26/3/2020', '8/5/2021', 1, 'white'),
(451, 16226873, 41, 63, '6/5/2020', '9/1/2021', 1, 'white'),
(455, 16227565, 37, 72, '25/9/2020', '23/10/2021', 1, 'white'),
(456, 16227565, 38, 63, '3/3/2020', '4/5/2021', 1, 'black'),
(457, 16227565, 40, 47, '24/5/2020', '15/10/2021', 1, 'white'),
(458, 16227565, 42, 56, '3/6/2020', '8/10/2021', 1, 'black'),
(459, 16227618, 35, 47, '24/2/2020', '2/11/2021', 1, 'white'),
(460, 16227618, 36, 47, '27/10/2020', '23/10/2021', 1, 'white'),
(461, 16227618, 40, 52, '4/2/2020', '14/4/2021', 1, 'white'),
(462, 16227621, 39, 52, '2/1/2020', '20/5/2021', 1, 'white'),
(463, 16227621, 40, 63, '26/8/2020', '9/2/2021', 1, 'white'),
(464, 16227621, 43, 56, '12/3/2020', '12/3/2021', 1, 'white'),
(469, 16228385, 36, 47, '2/4/2020', '1/2/2021', 1, 'white'),
(470, 16228385, 40, 72, '1/5/2020', '12/8/2021', 1, 'white'),
(471, 16228385, 42, 63, '11/2/2020', '9/10/2021', 1, 'white'),
(472, 16228388, 35, 63, '5/11/2020', '13/11/2021', 1, 'white'),
(473, 16228388, 37, 56, '12/10/2020', '23/10/2021', 1, 'white'),
(474, 16228388, 41, 47, '20/7/2020', '3/5/2021', 1, 'white'),
(475, 16228388, 42, 72, '9/1/2020', '15/7/2021', 1, 'white'),
(476, 16228388, 43, 47, '17/7/2020', '23/7/2021', 1, 'white'),
(477, 16228402, 35, 47, '2/2/2020', '21/10/2021', 1, 'white'),
(478, 16228402, 38, 72, '6/4/2020', '27/6/2021', 1, 'white'),
(479, 16228402, 39, 72, '15/5/2020', '2/1/2021', 1, 'white'),
(480, 16228402, 41, 52, '11/10/2020', '14/5/2021', 1, 'white'),
(481, 16228402, 42, 52, '3/6/2020', '27/9/2021', 1, 'white'),
(482, 16229047, 36, 63, '4/8/2020', '1/5/2021', 1, 'black'),
(483, 16229047, 37, 52, '3/6/2020', '20/2/2021', 1, 'black'),
(484, 16229047, 39, 56, '16/8/2020', '19/7/2021', 1, 'black'),
(485, 16229047, 39, 47, '12/10/2020', '21/9/2021', 1, 'white'),
(486, 16229047, 40, 72, '2/11/2020', '8/11/2021', 1, 'white'),
(487, 16229047, 41, 47, '3/9/2020', '1/3/2021', 1, 'white'),
(488, 16229047, 43, 63, '14/9/2020', '1/6/2021', 1, 'white'),
(489, 16229077, 35, 47, '8/4/2020', '21/5/2021', 1, 'black'),
(490, 16229077, 35, 47, '11/3/2020', '20/6/2021', 1, 'white'),
(491, 16229077, 37, 47, '24/2/2020', '6/11/2021', 1, 'black'),
(492, 16229077, 37, 52, '14/7/2020', '25/6/2021', 1, 'white'),
(493, 16229077, 39, 47, '25/7/2020', '12/4/2021', 1, 'black'),
(494, 16229077, 39, 52, '4/7/2020', '12/4/2021', 1, 'white'),
(495, 16229077, 43, 52, '20/7/2020', '5/3/2021', 1, 'white'),
(496, 16229086, 35, 72, '21/4/2020', '15/1/2021', 1, 'white'),
(497, 16229086, 36, 52, '2/5/2020', '19/7/2021', 1, 'white'),
(498, 16229086, 38, 63, '4/3/2020', '3/10/2021', 1, 'white'),
(499, 16229086, 39, 47, '7/6/2020', '8/10/2021', 1, 'white'),
(500, 16229086, 42, 72, '18/7/2020', '23/10/2021', 1, 'white'),
(501, 16229861, 35, 63, '13/1/2020', '24/7/2021', 1, 'white'),
(502, 16229861, 42, 52, '5/5/2020', '10/11/2021', 1, 'white'),
(503, 16229936, 36, 52, '20/3/2020', '11/2/2021', 1, 'white'),
(504, 16229936, 39, 52, '18/4/2020', '25/11/2021', 1, 'white'),
(505, 16229936, 42, 47, '7/2/2020', '21/5/2021', 1, 'white'),
(517, 16231013, 38, 56, '24/4/2020', '19/4/2021', 1, 'white'),
(518, 16231013, 39, 63, '1/1/2020', '24/2/2021', 1, 'white'),
(519, 16231013, 43, 72, '13/4/2020', '23/10/2021', 1, 'white'),
(520, 16231315, 38, 72, '17/1/2020', '26/5/2021', 1, 'white'),
(521, 16231315, 40, 56, '10/8/2020', '5/2/2021', 1, 'white'),
(522, 16231315, 43, 52, '11/10/2020', '17/2/2021', 1, 'white'),
(523, 16231317, 37, 63, '24/7/2020', '21/3/2021', 1, 'white'),
(524, 16231317, 38, 47, '26/2/2020', '11/7/2021', 1, 'white'),
(525, 16231317, 39, 72, '23/4/2020', '2/3/2021', 1, 'white'),
(526, 16231317, 43, 63, '14/1/2020', '23/6/2021', 1, 'white'),
(527, 16231332, 35, 52, '26/4/2020', '27/6/2021', 1, 'white'),
(528, 16231332, 43, 63, '16/11/2020', '25/2/2021', 1, 'white'),
(529, 16231428, 36, 72, '3/7/2020', '23/2/2021', 1, 'white'),
(530, 16231428, 37, 47, '7/2/2020', '23/2/2021', 1, 'white'),
(531, 16231428, 41, 63, '6/6/2020', '6/3/2021', 1, 'white'),
(532, 16231619, 40, 52, '7/3/2020', '7/7/2021', 1, 'white'),
(533, 16231619, 41, 72, '1/1/2020', '23/7/2021', 1, 'white'),
(534, 16231619, 42, 72, '14/7/2020', '1/10/2021', 1, 'white'),
(535, 16231620, 37, 47, '13/9/2020', '16/3/2021', 1, 'white'),
(536, 16231620, 38, 47, '22/2/2020', '12/5/2021', 1, 'white'),
(537, 16231918, 37, 47, '10/4/2020', '24/10/2021', 1, 'white'),
(538, 16231918, 38, 56, '25/11/2020', '18/9/2021', 1, 'white'),
(539, 16231918, 41, 72, '20/9/2020', '16/8/2021', 1, 'white'),
(540, 16231918, 42, 72, '13/8/2020', '20/8/2021', 1, 'white'),
(541, 16231929, 36, 47, '15/2/2020', '21/4/2021', 1, 'black'),
(542, 16231929, 37, 72, '3/8/2020', '25/4/2021', 1, 'black'),
(543, 16231929, 40, 63, '14/8/2020', '7/2/2021', 1, 'black'),
(544, 16231929, 41, 72, '8/5/2020', '17/10/2021', 1, 'white'),
(545, 16231929, 43, 47, '23/2/2020', '24/1/2021', 1, 'white'),
(546, 16231930, 37, 56, '1/6/2020', '19/4/2021', 1, 'white'),
(547, 16231930, 39, 52, '25/8/2020', '14/3/2021', 1, 'white'),
(548, 16231930, 40, 56, '7/8/2020', '16/2/2021', 1, 'white'),
(549, 16231930, 41, 72, '2/3/2020', '11/5/2021', 1, 'white'),
(550, 16231931, 35, 63, '20/3/2020', '16/3/2021', 1, 'white'),
(551, 16231931, 38, 52, '17/1/2020', '2/9/2021', 1, 'white'),
(552, 16231931, 41, 47, '13/5/2020', '23/11/2021', 1, 'white'),
(553, 16231931, 42, 56, '15/4/2020', '10/6/2021', 1, 'white'),
(554, 16231931, 43, 72, '15/7/2020', '14/3/2021', 1, 'white'),
(555, 16231932, 37, 52, '2/3/2020', '1/10/2021', 1, 'white'),
(556, 16231932, 38, 56, '1/5/2020', '1/3/2021', 1, 'white'),
(557, 16231932, 41, 72, '27/4/2020', '2/7/2021', 1, 'white'),
(558, 16232089, 35, 56, '20/10/2020', '3/11/2021', 1, 'black'),
(559, 16232089, 35, 63, '11/7/2020', '16/8/2021', 1, 'white'),
(560, 16232089, 36, 47, '5/3/2020', '9/5/2021', 1, 'black'),
(561, 16232089, 36, 56, '18/9/2020', '22/11/2021', 1, 'white'),
(562, 16232089, 38, 52, '15/2/2020', '17/9/2021', 1, 'black'),
(563, 16232089, 39, 63, '14/1/2020', '7/1/2021', 1, 'black'),
(564, 16232089, 40, 47, '1/11/2020', '11/2/2021', 1, 'black'),
(565, 16232089, 41, 52, '9/11/2020', '15/6/2021', 1, 'black'),
(566, 16232089, 41, 56, '23/5/2020', '24/6/2021', 1, 'white'),
(567, 16232089, 43, 56, '6/1/2020', '25/3/2021', 1, 'black'),
(568, 16232102, 38, 47, '15/1/2020', '2/9/2021', 1, 'white'),
(569, 16232102, 39, 52, '26/11/2020', '11/5/2021', 1, 'white'),
(570, 16232473, 37, 63, '2/9/2020', '6/5/2021', 1, 'white'),
(571, 16232473, 41, 63, '8/7/2020', '18/10/2021', 1, 'white'),
(572, 16232473, 42, 72, '9/5/2020', '20/6/2021', 1, 'white'),
(573, 16232474, 38, 72, '2/5/2020', '21/11/2021', 1, 'white'),
(574, 16232474, 39, 47, '17/3/2020', '3/11/2021', 1, 'white'),
(575, 16232474, 40, 72, '3/9/2020', '16/7/2021', 1, 'white'),
(576, 16232474, 43, 56, '17/10/2020', '20/4/2021', 1, 'white'),
(577, 16232825, 36, 56, '19/6/2020', '27/4/2021', 1, 'white'),
(578, 16232826, 38, 56, '13/4/2020', '19/11/2021', 1, 'white'),
(579, 16232826, 40, 56, '25/2/2020', '14/4/2021', 1, 'white'),
(580, 16233075, 35, 52, '4/2/2020', '5/2/2021', 1, 'white'),
(581, 16233075, 38, 63, '22/5/2020', '10/4/2021', 1, 'black'),
(582, 16233075, 38, 72, '27/4/2020', '4/11/2021', 1, 'white'),
(583, 16233075, 39, 63, '11/7/2020', '5/4/2021', 1, 'black'),
(584, 16233075, 39, 47, '26/2/2020', '25/10/2021', 1, 'white'),
(585, 16233075, 41, 47, '19/2/2020', '3/3/2021', 1, 'black'),
(586, 16233081, 37, 52, '18/9/2020', '3/7/2021', 1, 'white'),
(587, 16233081, 39, 47, '1/7/2020', '5/3/2021', 1, 'white'),
(588, 16233081, 41, 56, '22/6/2020', '6/9/2021', 1, 'black'),
(589, 16233081, 41, 47, '6/11/2020', '7/10/2021', 1, 'white'),
(590, 16233081, 42, 63, '22/3/2020', '12/5/2021', 1, 'white'),
(591, 16233081, 43, 52, '10/6/2020', '11/4/2021', 1, 'white'),
(592, 16233128, 35, 47, '3/10/2020', '4/4/2021', 1, 'white'),
(593, 16233128, 37, 63, '6/4/2020', '13/9/2021', 1, 'black'),
(594, 16233128, 38, 47, '24/1/2020', '15/11/2021', 1, 'black'),
(595, 16233128, 38, 63, '3/7/2020', '11/4/2021', 1, 'white'),
(596, 16233128, 39, 52, '1/3/2020', '27/5/2021', 1, 'black'),
(597, 16233128, 39, 52, '12/8/2020', '16/3/2021', 1, 'white'),
(598, 16233128, 42, 52, '12/11/2020', '3/6/2021', 1, 'white'),
(599, 16233128, 43, 47, '27/2/2020', '13/11/2021', 1, 'white'),
(600, 16233184, 35, 56, '18/8/2020', '4/3/2021', 1, 'white'),
(601, 16233184, 37, 52, '23/3/2020', '3/5/2021', 1, 'white'),
(602, 16233184, 42, 63, '23/5/2020', '27/4/2021', 1, 'white'),
(603, 16233184, 43, 56, '6/11/2020', '25/11/2021', 1, 'white'),
(604, 16233653, 36, 47, '20/5/2020', '11/9/2021', 1, 'black'),
(605, 16233653, 37, 56, '2/9/2020', '17/5/2021', 1, 'black'),
(606, 16233653, 37, 52, '17/6/2020', '23/9/2021', 1, 'white'),
(607, 16233653, 38, 56, '7/6/2020', '27/4/2021', 1, 'white'),
(608, 16233653, 40, 63, '17/5/2020', '17/4/2021', 1, 'white'),
(609, 16233653, 41, 56, '12/10/2020', '11/6/2021', 1, 'black'),
(610, 16233653, 42, 47, '3/11/2020', '9/1/2021', 1, 'black'),
(611, 16233653, 42, 52, '15/9/2020', '19/2/2021', 1, 'white'),
(612, 16233654, 37, 52, '26/5/2020', '15/8/2021', 1, 'white'),
(613, 16233654, 38, 47, '19/2/2020', '8/11/2021', 1, 'white'),
(614, 16233655, 36, 56, '11/9/2020', '10/8/2021', 1, 'white'),
(615, 16233655, 38, 72, '4/11/2020', '12/6/2021', 1, 'white'),
(616, 16234360, 35, 63, '2/1/2020', '24/1/2021', 1, 'white'),
(617, 16234360, 37, 52, '19/2/2020', '27/5/2021', 1, 'white'),
(618, 16234360, 38, 72, '15/5/2020', '25/5/2021', 1, 'white'),
(619, 16234360, 39, 52, '9/6/2020', '17/8/2021', 1, 'white'),
(620, 16234652, 36, 56, '3/5/2020', '13/8/2021', 1, 'white'),
(621, 16234652, 41, 72, '24/3/2020', '16/3/2021', 1, 'white'),
(622, 16234881, 35, 52, '10/8/2020', '16/3/2021', 1, 'white'),
(623, 16234881, 37, 52, '2/5/2020', '14/4/2021', 1, 'white'),
(624, 16234881, 39, 52, '18/4/2020', '8/9/2021', 1, 'white'),
(625, 16234881, 42, 72, '7/9/2020', '26/1/2021', 1, 'white'),
(626, 16234968, 43, 47, '2/5/2020', '15/1/2021', 1, 'white'),
(627, 16234987, 36, 52, '3/6/2020', '27/10/2021', 1, 'white'),
(628, 16234987, 37, 52, '15/1/2020', '21/10/2021', 1, 'white'),
(629, 16234987, 40, 52, '18/6/2020', '15/9/2021', 1, 'white'),
(630, 16234987, 41, 72, '19/1/2020', '18/5/2021', 1, 'white'),
(631, 16234987, 42, 63, '8/5/2020', '5/7/2021', 1, 'white'),
(632, 16234987, 43, 63, '11/7/2020', '3/1/2021', 1, 'white'),
(633, 16235094, 36, 72, '4/1/2020', '18/5/2021', 1, 'white'),
(634, 16235094, 38, 72, '11/10/2020', '13/1/2021', 1, 'white'),
(635, 16235094, 39, 72, '11/9/2020', '19/3/2021', 1, 'white'),
(636, 16235094, 42, 63, '7/10/2020', '2/7/2021', 1, 'white'),
(637, 16235094, 43, 56, '23/6/2020', '20/10/2021', 1, 'white'),
(638, 16235545, 37, 63, '12/7/2020', '11/1/2021', 1, 'black'),
(639, 16235545, 37, 63, '16/6/2020', '26/9/2021', 1, 'white'),
(640, 16235545, 39, 47, '27/3/2020', '20/4/2021', 1, 'white'),
(641, 16235545, 41, 52, '13/9/2020', '7/10/2021', 1, 'black'),
(642, 16235545, 41, 72, '23/8/2020', '9/11/2021', 1, 'white'),
(643, 16235545, 42, 52, '9/3/2020', '25/7/2021', 1, 'black'),
(644, 16235545, 42, 52, '8/11/2020', '23/11/2021', 1, 'white'),
(645, 16235546, 35, 72, '12/4/2020', '6/7/2021', 1, 'white'),
(646, 16235546, 38, 72, '17/1/2020', '5/7/2021', 1, 'black'),
(647, 16235546, 40, 47, '2/1/2020', '1/6/2021', 1, 'black'),
(648, 16235546, 42, 72, '13/7/2020', '16/1/2021', 1, 'white'),
(649, 16236208, 35, 47, '15/4/2020', '8/8/2021', 1, 'white'),
(650, 16236208, 37, 72, '25/8/2020', '7/2/2021', 1, 'white'),
(651, 16236208, 39, 72, '9/3/2020', '15/10/2021', 1, 'white'),
(652, 16236208, 41, 56, '24/5/2020', '8/6/2021', 1, 'white'),
(653, 16236623, 40, 63, '10/7/2020', '4/6/2021', 1, 'white'),
(654, 16236712, 36, 63, '9/5/2020', '11/6/2021', 1, 'white'),
(655, 16236712, 37, 72, '17/1/2020', '19/7/2021', 1, 'white'),
(656, 16236712, 39, 63, '6/10/2020', '9/11/2021', 1, 'white'),
(657, 16236712, 41, 72, '22/1/2020', '5/10/2021', 1, 'white'),
(658, 16236712, 42, 52, '10/4/2020', '18/11/2021', 1, 'white'),
(659, 16236712, 43, 72, '25/11/2020', '14/8/2021', 1, 'white'),
(660, 16237715, 36, 72, '8/11/2020', '10/3/2021', 1, 'white'),
(661, 16237715, 37, 47, '2/4/2020', '8/2/2021', 1, 'white'),
(662, 16237715, 39, 63, '23/10/2020', '7/8/2021', 1, 'black'),
(663, 16237715, 40, 52, '12/5/2020', '25/6/2021', 1, 'white'),
(664, 16237715, 41, 56, '10/1/2020', '10/9/2021', 1, 'black'),
(665, 16237715, 43, 47, '26/7/2020', '18/8/2021', 1, 'black'),
(666, 16237995, 35, 56, '21/5/2020', '11/3/2021', 1, 'white'),
(667, 16237995, 38, 63, '17/3/2020', '17/4/2021', 1, 'white'),
(668, 16237995, 41, 72, '26/11/2020', '8/4/2021', 1, 'black'),
(669, 16237995, 43, 56, '17/1/2020', '15/5/2021', 1, 'black'),
(670, 16238115, 38, 52, '21/7/2020', '13/11/2021', 1, 'white'),
(671, 16238115, 40, 47, '13/2/2020', '1/7/2021', 1, 'white'),
(672, 16238115, 41, 52, '3/2/2020', '24/4/2021', 1, 'white'),
(673, 16238341, 37, 63, '26/11/2020', '8/2/2021', 1, 'white'),
(674, 16238341, 39, 56, '2/11/2020', '17/5/2021', 1, 'white'),
(675, 16238341, 43, 47, '14/7/2020', '22/8/2021', 1, 'white'),
(676, 16240485, 37, 72, '14/3/2020', '26/4/2021', 1, 'white'),
(677, 16240485, 38, 52, '8/9/2020', '10/3/2021', 1, 'white'),
(678, 16240485, 39, 63, '13/11/2020', '18/10/2021', 1, 'white'),
(679, 16240485, 40, 56, '9/4/2020', '7/10/2021', 1, 'white'),
(680, 16240736, 35, 63, '17/5/2020', '19/9/2021', 1, 'white'),
(681, 16240736, 36, 72, '19/8/2020', '23/9/2021', 1, 'white'),
(682, 16240736, 37, 56, '4/5/2020', '11/3/2021', 1, 'white'),
(683, 16240736, 41, 52, '23/8/2020', '8/1/2021', 1, 'white'),
(684, 16241861, 36, 52, '5/6/2020', '10/5/2021', 1, 'white'),
(16243735, 16070029, 40, 42, '2023-04-13', '23/05/23', 1, 'pink'),
(16243763, 16243750, 36, 50, '23/05/23', '23/05/23', 1, 'black'),
(16243764, 16243750, 37, 35, '23/05/23', '23/05/23', 1, 'white'),
(16243765, 16243750, 38, 65, '23/05/23', '23/05/23', 1, 'white'),
(16243766, 16243750, 39, 45, '23/05/23', '23/05/23', 1, 'black'),
(16243767, 16243750, 40, 55, '23/05/23', '23/05/23', 1, 'white'),
(16243768, 16242721, 38, 45, '2023-05-03', '24/05/23', 1, 'black'),
(16243769, 16242721, 39, 33, '2023-05-10', '24/05/23', 1, 'pink'),
(16243770, 16242721, 37, 16, '2023-05-04', '24/05/23', 1, 'white');

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
(9, 'ROLE_USER');

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
  `id_address` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `id_cart` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `date_of_birth`, `gender`, `id_address`, `is_admin`, `create_at`, `update_at`, `avatar`, `password`, `first_name`, `last_name`, `id_cart`) VALUES
(21, 'Phan Văn Hùng', '191300184191@st.hcmuaf.edu.vn', '0869251532', '05/01/2001', 'Nam', 7, 0, NULL, NULL, '21.jpg', '$2a$10$minopaNwNSkYV1PzEpJyN.IlnYdB6saeG9qqP/YvJ7l8FCDRcdbde', NULL, NULL, NULL),
(22, 'Huỳnh Thị Thu Diệu', 'thudieu@gmail.com', '0965871235', '14/05/2001', 'Nữ', 12, 0, NULL, NULL, '22.jpg', '$2a$10$bS2hqZsunHHaZErGoj1TSu7YER2cBV.R4oUkdGsSVenY3MLA8pmja', NULL, NULL, NULL),
(23, 'Nguyễn Ngọc Hiếu', '19130072@st.hcmuaf.edu.vn', '0367891825', '04/03/2001', 'Nam', 8, 0, NULL, NULL, '23.jpg', '$2a$10$lzMvfiM2wlmj10wsF.YyBOFmNbbhtdKOu.tL0neFxAUf.8ZF6gM/K', NULL, NULL, NULL),
(25, 'jonny phan', 'jonnyphan@', '0864987539', '08/03/1999', 'Nam', 9, 0, NULL, NULL, '25.jpg', '$2a$10$DzRKNR.BA3Zg1Lid34CfDeaCEpfMJj7p.8k2O2M7SqU2z.l5WzTXm', NULL, NULL, NULL),
(27, 'Jonny Phan', 'hungphan.05012001@gmail.com', '0376125987', '16/07/1998', 'Nam', 11, 0, NULL, NULL, '27.jpg', '$2a$10$Cxd66iO9pvmfgJ.Aphn74OWziSKaiKUDaMsZa3gq9oRI3VcZ04RO2', NULL, NULL, NULL),
(28, 'Hùng Phan', '19130081@st.hcmuaf.edu.vn', '1241313123213', '12/12/2000', 'Nam', 9, 1, NULL, NULL, '28.jpg', '$2a$10$u7fmJ6Py0zcW3Qi0IUjFae9UtCj5X2Wpkk7lZuvHqUY3ck1j6gewC', NULL, NULL, NULL),
(30, 'Hùng Phan', '191300@st.hcmuaf.edu.vn', '0869251532', '05/01/2001', 'Nam', 0, 0, NULL, NULL, '30.png', '$2a$10$UyiAlNNkFsXtqc5PyNSZteDyUuJ7MgAfctoVFypZgFtPGhk2pdgBi', NULL, NULL, NULL);

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
(30, 9);

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `id` int(11) NOT NULL,
  `from_date` text NOT NULL,
  `to_date` text NOT NULL,
  `discount` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`id`, `from_date`, `to_date`, `discount`, `code`, `used`) VALUES
(2, '2022-08-01', '2022-09-01', 12, 'giam10', 0),
(3, '2022-08-15', '2022-08-18', 1, '40799', 0),
(4, '2022-08-17', '2022-09-02', 39, 'e8a7f', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`id_user`),
  ADD KEY `idProduct` (`id_product`);

--
-- Chỉ mục cho bảng `linkimg`
--
ALTER TABLE `linkimg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linkimg_ibfk_1` (`id_product`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOrder` (`id_order`),
  ADD KEY `idProductDetail` (`id_product_detail`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`category`),
  ADD KEY `brand` (`brand`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id_product`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
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
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `linkimg`
--
ALTER TABLE `linkimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=804;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10180;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16243751;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16243771;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `user_otp`
--
ALTER TABLE `user_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `linkimg`
--
ALTER TABLE `linkimg`
  ADD CONSTRAINT `linkimg_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_product_detail`) REFERENCES `product_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
