-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 01:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cakestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `price` double NOT NULL,
  `id` bigint(20) NOT NULL,
  `description` varchar(6535) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`price`, `id`, `description`, `category`, `image_url`, `product_name`, `size`, `sub_category`) VALUES
(22000, 1, '					Thành phần: Sữa tươi, kem sữa, đường, kem thực vật, chất tạo đông gelatine, mứt phúc bồn tử. \n											', 'Bánh tráng miệng', '/images/Bánh Pana Cotta.jpg', 'Bánh Pana Cotta', 'S', 'Panna cotta & Pudding'),
(31000, 2, '\n												Thành phần: Kem sữa, kem thực vật, sữa tươi, đường, trứng gà, chất tạo đông gelatine, sô cô la trắng, bột mỳ, bột trà xanh (1%).Hạn sử dụng: 4 ngày kể từ ngày sản xuấtBảo quản: 2-5 độ\n', 'Bánh tráng miệng', '/images/Mousse Trà Xanh.jpg', 'Mousse Trà Xanh', 'S', 'Bánh mousse'),
(31000, 3, '\n												Thành phần: Kem sữa, kem thực vật, đường, phô mai kem, nước, trứng gà, chanh leo (4,5%), chất tạo đông gelatine, bột mỳ.Hạn sử dụng: 4 ngày kể từ ngày sản xuấtBảo quản; 2-5 độ\n', 'Bánh tráng miệng', '/images/Mousse Chanh Leo.jpg', 'Mousse Chanh Leo', 'S', 'Bánh mousse'),
(13000, 4, '\n												Thành phần: Sữa tươi, sữa chua cái, đường, sữa đặc, kem sữa.\n											', 'Bánh tráng miệng', '/images/Sữa Chua.jpg', 'Sữa Chua', 'M', 'Sữa chua'),
(22000, 5, '\n', 'Bánh tráng miệng', '/images/Tiramisu.jpg', 'Tiramisu', 'M', 'Sữa chua'),
(13000, 6, '\n', 'Bánh tráng miệng', '/images/Caramen.jpg', 'Caramen', 'M', 'Sữa chua'),
(36000, 7, '\n												Thành phần: Bột mỳ, đường, trứng, bơ, cà phê, bột hạnh nhân, rượu Kahlua, kem bơ cà phê, socola ganache, socola trang tríHạn sử dụng: 4 ngày kể từ ngày sản xuấtNhiệt độ: 2-5 độ\n', 'Bánh tráng miệng', '/images/Bánh Opera 90G.jpg', 'Bánh Opera 90G', 'L', 'Bánh miếng'),
(58000, 8, '\n												Thành phần: Bơ, đường, trứng, bột mì, bột nở, cacao, phô mai kem, chanh tươi, màu thực phẩmHạn sử dụng: 4 ngày kể từ ngày sản xuấtBảo quản: 2-5 độ\n', 'Bánh tráng miệng', '/images/Bánh 90G.jpg', 'Bánh Red Velvet 90G', 'S', 'Bánh miếng'),
(36000, 9, '\n												Thành phần: Phô mai kem, trứng, bột hạnh nhân, cà phê, rượu Kahlua, bơ, kem tươi, cacao, bánh quy, đường, hương vani tổng hợp, chất tạo đông gelatin, nước.Hạn sử dụng: 4 ngày kể từ ngày sản xuấtBảo quản: 2-5 độ\n', 'Bánh tráng miệng', '/images/Bánh Tiramisu 90G.jpg', 'Bánh Tiramisu 90G', 'L', 'Bánh miếng'),
(350000, 10, '\n												Thành phần: Bánh gato vani 5 lớp, nhân kem tươi, 1 lớp nhân cocktail hoa quả, trang trí sô cô la, hạnh nhân, lá hương thảo, quả tầm bóp.\n											', 'Bánh theo mùa', '/images/Bánh Kem Christmas Time 8.jpg', 'Bánh Kem Christmas Time 8', 'M', 'Bánh Kem Noel'),
(350000, 11, '\n												Thành Phần: Bánh gato cuộn vani, nhân kem tươi, 1 lớp nhân cocktail hoa quả, trang trí sô cô la, hạnh nhân, lá hương thảo, cam sấy khô.\n											', 'Bánh theo mùa', '/images/Bánh Kem Joy Of Christmas 8.jpg', 'Bánh Kem Joy Of Christmas 8', 'S', 'Bánh Kem Noel'),
(350000, 12, '\n												Thành phần: Bánh gato cuộn vani, nhân kem tươi, 1 lớp nhân cocktail hoa quả, trang trí sô cô la, quả tầm bóp.\n											', 'Bánh theo mùa', '/images/Bánh Kem Yule Log 8.jpg', 'Bánh Kem Yule Log 8', 'S', 'Bánh Kem Noel'),
(80000, 13, '\n												Thành Phần: Bột mỳ, bơ, đường, trứng gà, hạt macca (3,5%), sô cô la chíp trắng, bột làm bánh custard, muối, chất tạo xốp (E500ii, E450i, E341i).\n											', 'Bánh theo mùa', '/images/Bánh Quy Hạt Mắc Ca.jpg', 'Bánh Quy Hạt Mắc Ca', 'M', 'Bánh quy Tết'),
(80000, 14, '\n												Thành phần: Bột mỳ, bơ, đường, trứng gà, hạt dẻ cười (4,4%), bột làm bánh custard, muối, chất tạo xốp (E500ii, E450i, E341i).\n											', 'Bánh theo mùa', '/images/Bánh Quy Hạt Dẻ Cười.jpg', 'Bánh Quy Hạt Dẻ Cười', 'M', 'Bánh quy Tết'),
(80000, 15, '\n												Thành phần: Bột mỳ, bơ, đường, trứng gà, hạt óc chó (5,3%), bột làm bánh custard, muối, chất tạo xốp (E500ii, E450i, E341i).\n											', 'Bánh theo mùa', '/images/Bánh Quy Hạt Óc Chó.jpg', 'Bánh Quy Hạt Óc Chó', 'S', 'Bánh quy Tết'),
(390000, 16, '\n												Thành phần : - Bánh quy hạnh nhân 110g- Bánh quy bơ mứt dâu 120g- Bánh quy sô cô la chip 120g- Bánh quy dừa 110g- Nho khô đen (Black Raisin) 120g\n', 'Bánh theo mùa', '/images/Set Quà Dòng Chảy Hạnh Phúc.jpg', 'Set Quà Dòng Chảy Hạnh Phúc', 'M', 'Bánh quy Tết'),
(290000, 17, '\n												Thành phần:- Bánh quy hạnh nhân 100g- Bánh quy hạt óc chó 100g- Bánh quy hạt macca 100g- Bánh quy hạt dẻ cười 100g\n', 'Bánh theo mùa', '/images/Set Quà Lời Ru Mùa Xuân.jpg', 'Set Quà Lời Ru Mùa Xuân', 'S', 'Bánh quy Tết'),
(590000, 18, '\n												Thành phần:- Bánh quy hạnh nhân 100g- Bánh quy hạt óc chó 100g- Bánh quy hạt macca 100g- Bánh quy hạt dẻ cười 100g- Nam việt quất khô (Dried Cranberries) 120g- Nho khô đen (Black Raisin) 120g- Hồng trà Ceylon (Ceylon black tea) 100g\n', 'Bánh theo mùa', '/images/Set Quà Vũ Khúc Hạt Vàng.jpg', 'Set Quà Vũ Khúc Hạt Vàng', 'M', 'Bánh quy Tết'),
(80000, 19, '\n												Thành phần: Bột mỳ, bơ, đường, trứng gà, yến mạch (6,5%), bột làm bánh custard, muối, chất tạo xốp (E500ii, E450i, E341i).\n											', 'Bánh theo mùa', '/images/Bánh Quy Yến Mạch.jpg', 'Bánh Quy Yến Mạch', 'L', 'Bánh quy Tết'),
(36000, 20, '\n												Thành phần: Bột mỳ, bơ, đường, sữa tươi, sữa bột, trứng gà, vừng trắng, muối, chất tạo xốp (E500ii), men.Hạn sử dụng: 8 ngày kể từ ngày sản xuất\n', 'Bánh khô', '/images/Bánh Sừng Bò Mini.jpg', 'Bánh Sừng Bò Mini', 'S', 'Bánh sừng bò mini'),
(42000, 21, '\n												Thành phần: Bột mì, trứng gà, bơ, đường, đường fructose, bột dừa (7%), hương vani tổng hợp.\n											', 'Bánh khô', '/images/Bánh Quy Dừa.jpg', 'Bánh Quy Dừa', 'S', 'Bánh quy'),
(42000, 22, '\n												Thành phần: Bột mỳ, bơ (306%), đường, trứng, mứt dâu (5,1%).\n											', 'Bánh khô', '/images/Bánh Quy Bơ Mứt Dâu.jpg', 'Bánh Quy Bơ Mứt Dâu', 'S', 'Bánh quy'),
(42000, 23, '\n												Thành phần: Bột mỳ, đường, bơ, sô cô la chíp (12 %), trứng gà, chất tạo xốp (E500ii), muối. \n											', 'Bánh khô', '/images/Bánh Quy Socola Chip.jpg', 'Bánh Quy Socola Chip', 'S', 'Bánh quy'),
(42000, 24, '\n												Thành phần: Bột mỳ, trứng gà, đường, hạnh nhân cắt lát (14%), bơ, sữa bột, chất tạo xốp (E500ii, E450i, E341i), muối, hương vani tổng hợp.\n											', 'Bánh khô', '/images/Bánh Quy Hạnh Nhân.jpg', 'Bánh Quy Hạnh Nhân', 'L', 'Bánh quy'),
(42000, 25, '\n												Thành phần: Trứng, bột mì, đường, muối, hương vinilla\n											', 'Bánh khô', '/images/Bánh Lady Finger.jpg', 'Bánh Lady Finger', 'L', 'Bánh quy'),
(15000, 26, '\n												Thành phần: Bột mì, nước, bơ (17%), kem sữa, đường, rong biển (0.3%), men, muối, bột canh tôm, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i)Túi 52gNăng lượng: 507 KcalBảo quản sản phẩm: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.Lưu ý: Tiếp xúc với không khí sẽ ảnh hưởng tới độ giòn của sản phẩm, vui lòng đóng kín miệng bao bì sau khi mở.\n', 'Bánh khô', '/images/Bánh Mì Nướng Rong Biển.jpg', 'Bánh Mì Nướng Rong Biển', 'S', 'Bánh mì nướng'),
(15000, 27, '\n												Thành phần: Bột mì, nước, sữa tươi, bơ, đường, đường caramen (9,5%), men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i)Túi 52g Năng lượng: 385,7 KcalBảo quản sản phẩm: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.Lưu ý: Tiếp xúc với không khí sẽ ảnh hưởng tới độ giòn của sản phẩm, vui lòng đóng kín miệng bao bì sau khi mở.\n', 'Bánh khô', '/images/Bánh Mì Nướng Caramen.jpg', 'Bánh Mì Nướng Caramen', 'S', 'Bánh mì nướng'),
(15000, 28, '\n												Thành phần: Bột mì, nước, phô mai bột (4%), dầu, thực vật, men, bánh, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i)Túi 52g Năng lượng: 405 KcalBảo quản sản phẩm: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.Lưu ý: Tiếp xúc với không khí sẽ ảnh hưởng tới độ giòn của sản phẩm, vui lòng đóng kín miệng bao bì sau khi mở.\n', 'Bánh khô', '/images/Bánh Mì Nướng Phô Mai Que.jpg', 'Bánh Mì Nướng Phô Mai Que', 'M', 'Bánh mì nướng'),
(15000, 29, '\n												Thành phần: Bột mì, nước, bơ (17%), kem sữa, tỏi (1,8%), đường, men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i)Túi 52g Năng lượng: 483 KcalBảo quản sản phẩm: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.Lưu ý: Tiếp xúc với không khí sẽ ảnh hưởng tới độ giòn của sản phẩm, vui lòng đóng kín miệng bao bì sau khi mở.\n', 'Bánh khô', '/images/Bánh Mì Nướng Bơ Tỏi.jpg', 'Bánh Mì Nướng Bơ Tỏi', 'L', 'Bánh mì nướng'),
(15000, 30, '\n												Thành phần: Bột mì, nước, bơ, kem sữa, sốt pizza (7%), hành tây, đường, phô mai bột, lá kinh giới khô, ớt bột, men, muối, bột canh tôm, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i)Túi 52g Năng lượng: 506 KcalBảo quản sản phẩm: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.Lưu ý: Tiếp xúc với không khí sẽ ảnh hưởng tới độ giòn của sản phẩm, vui lòng đóng kín miệng bao bì sau khi mở.\n', 'Bánh khô', '/images/Bánh Mì Nướng Sốt Pizza.jpg', 'Bánh Mì Nướng Sốt Pizza', 'L', 'Bánh mì nướng'),
(99000, 31, '\n												Bột hạnh nhân, đường, lòng trắng trứng, sô cô la, sữa tươi, cam vàng, chanh vàng, chanh leo, mứt mơ, mứt dâu, trà bá tước, trà xanh, mè đen, gelatin, quả vani, hương bạc hà, màu thực phẩm.\n											', 'Bánh khô', '/images/Hộp Bánh Macaron.jpg', 'Hộp Bánh Macaron', 'L', 'Bánh Macaron'),
(380000, 32, '\n												Thành phần: Bánh kem tươi cốt bánh 5 lớp chiffon sô cô la chip, kem nhân phô mai, trang trí cam sấy, sô cô la và bông đường bi bạc.\n											', 'Bánh kem', '/images/Bánh Kem Forever Love.jpg', 'Bánh Kem Forever Love', 'L', 'Bánh sinh nhật'),
(320000, 33, '\n												Thành phần:Bánh kem tươi cốt bánh 6 lớp chiffon hoa quả khô, nhân kem tươi, trang trí hoa kem tươi.\n											', 'Bánh kem', '/images/Bánh Kem Pink Floral.jpg', 'Bánh Kem Pink Floral', 'L', 'Bánh sinh nhật'),
(150000, 34, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon phô mai, trang trí hoa quả tươi.\n											', 'Bánh kem', '/images/Bánh Kem Tasty Love.jpg', 'Bánh Kem Tasty Love', 'L', 'Bánh sinh nhật'),
(380000, 35, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon sô cô la chip, kem nhân phô mai, phủ ganat đen và trang trí sô cô la màu.\n											', 'Bánh kem', '/images/Bánh Kem Amazing Chocolate.jpg', 'Bánh Kem Amazing Chocolate', 'S', 'Bánh sinh nhật'),
(150000, 36, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon caramen, trang trí kem tươi.\n											', 'Bánh kem', '/images/Bánh kem Kiss me more.jpg', 'Bánh kem Kiss me more', 'L', 'Bánh sinh nhật'),
(390000, 37, '\n												Bánh mousse dừa, cốt bánh 1 lớp chiffon caramen, mặt bánh phủ jelly caramen và trang trí sô cô la\n											', 'Bánh kem', '/images/Bánh Kem Mousse Hawaii.jpg', 'Bánh Kem Mousse Hawaii', 'L', 'Bánh sinh nhật'),
(390000, 38, '\n												Bánh mousse chanh leo, cốt bánh 1 lớp chiffon phô mai, trang trí socola và mứt chuối.\n											', 'Bánh kem', '/images/Bánh Passion Fruit Mousse.jpg', 'Bánh Passion Fruit Mousse', 'L', 'Bánh sinh nhật'),
(320000, 39, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang trí sô cô la màu.\n											', 'Bánh kem', '/images/Bánh Kem Blue Ocean.jpg', 'Bánh Kem Blue Ocean', 'S', 'Bánh sinh nhật'),
(380000, 40, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi\n											', 'Bánh kem', '/images/Bánh Kem Rosie Love.jpg', 'Bánh Kem Rosie Love', 'L', 'Bánh sinh nhật'),
(320000, 41, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon sô cô la chip, nhân kem tươi, trang trí socola màu.\n											', 'Bánh kem', '/images/Bánh Kem Sweet Love.jpg', 'Bánh Kem Sweet Love', 'L', 'Bánh sinh nhật'),
(380000, 42, '\n												Bánh kem tươi cốt bánh 3 lớp chiffon vani, nhân cocktail hoa quả khô, trang trí kem tươi. \n											', 'Bánh kem', '/images/Bánh Kem Endless Love.jpg', 'Bánh Kem Endless Love', 'L', 'Bánh sinh nhật'),
(320000, 43, '\n												Bánh kem tươi cốt bánh 5 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hoa kem tươi. \n											', 'Bánh kem', '/images/Bánh kem Flower Of Love.jpg', 'Bánh kem Flower Of Love', 'S', 'Bánh sinh nhật'),
(390000, 44, '\n												Bánh mousse xoài, cốt bánh 1 lớp chiffon phô mai, kem tươi và xoài tươi, mặt bánh trang trí hoa kem tươi.\n											', 'Bánh kem', '/images/Bánh Mousse Mango.jpg', 'Bánh Mousse Mango', 'M', 'Bánh sinh nhật'),
(380000, 45, '\n												Bánh kem tươi cốt bánh 3 lớp, chiffon vani, nhân cocktail hoa quả, trang trí hoa kem tươi.\n											', 'Bánh kem', '/images/Bánh Kem Princess.jpg', 'Bánh Kem Princess', 'S', 'Bánh sinh nhật'),
(320000, 46, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon sô cô la chip, kem nhân phô mai, trang trí sô cô la.\n											', 'Bánh kem', '/images/Bánh Kem Chocolate Love.jpg', 'Bánh Kem Chocolate Love', 'M', 'Bánh sinh nhật'),
(150000, 47, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon caramen, trang trí ganache caramen, macaron và sô cô la.\n											', 'Bánh kem', '/images/Bánh Kem Sweet Heart 4.jpg', 'Bánh Kem Sweet Heart 4', 'M', 'Bánh sinh nhật'),
(380000, 48, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi\n											', 'Bánh kem', '/images/Bánh Kem LiLy Garden.jpg', 'Bánh Kem LiLy Garden', 'S', 'Bánh sinh nhật'),
(380000, 49, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon sô cô la chip, kem nhân phô mai, phủ ganat và trang trí sô cô la trắng.\n											', 'Bánh kem', '/images/Bánh Kem Chocolate Lover.jpg', 'Bánh Kem Chocolate Lover', 'S', 'Bánh sinh nhật'),
(390000, 50, '\n												Bánh mousse socola, cốt bánh 1 lớp chiffon sô cô la chip, sốt sô cô la phủ mặt bánh, trang trí sô cô la và bi bông đường\n											', 'Bánh kem', '/images/Bánh Mousse Chocolate.jpg', 'Bánh Mousse Chocolate', 'L', 'Bánh sinh nhật'),
(320000, 51, '\n												Thành phần: Bánh kem tươi cốt bánh 4 lớp chiffon hoa quả khô, nhân kem tươi, trang trí sô cô la màu.\n											', 'Bánh kem', '/images/Bánh Kem Romantic.jpg', 'Bánh Kem Romantic', 'S', 'Bánh sinh nhật'),
(320000, 52, '\n												Bánh kem tươi cốt bánh 4 lớp chiffon socola chip, nhân kem tươi, trang trí donut socola và macaron.\n											', 'Bánh kem', '/images/Bánh Kem Chocolate Fruit.jpg', 'Bánh Kem Chocolate Fruit', 'S', 'Bánh sinh nhật'),
(150000, 53, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp chiffon phô mai, trang trí kem tươi\n											', 'Bánh kem', '/images/Bánh Kem Love Melody 4.jpg', 'Bánh Kem Love Melody 4', 'M', 'Bánh sinh nhật'),
(380000, 54, '\n												Bánh kem tươi cốt bánh chiffon vani, nhân cocktail hoa quả, trang trí sô cô la.\n											', 'Bánh kem', '/images/Bánh Kem Sweet Cream.jpg', 'Bánh Kem Sweet Cream', 'L', 'Bánh sinh nhật'),
(380000, 55, '\n												Bánh kem tươi cốt bánh chiffon vani, nhân cocktail hoa quả, trang trí bánh cupcake, sô cô la và bông đường bi bạc.\n											', 'Bánh kem', '/images/Bánh Kem Kiss Of Lady.jpg', 'Bánh Kem Kiss Of Lady', 'L', 'Bánh sinh nhật'),
(320000, 56, '\n												Bánh kem tươi cốt bánh chiffon phô mai, kem tươi nhân phô mai, trang trí phụ kiện búp bê thiên thần, sô cô la và bông đường bi bạc\n											', 'Bánh kem', '/images/Bánh kem Pink Angel.jpg', 'Bánh kem Pink Angel', 'M', 'Bánh cho trẻ em'),
(320000, 57, '\n												Bánh kem tươi cốt bánh chiffon phô mai, kem tươi nhân phô mai, trang trí phụ kiện hình Doraemon, sô cô la và bông đường bi bạc\n											', 'Bánh kem', '/images/Bánh Kem Cloudy Doraemon.jpg', 'Bánh Kem Cloudy Doraemon', 'S', 'Bánh cho trẻ em'),
(320000, 58, '\n												Thành phần: Bánh kem tươi cốt bánh 3 lớp vani, 1 lớp nhân mứt xoài, trang trí kem tươi và sô cô la đồng tiền\n											', 'Bánh kem', '/images/Bánh Hoàng Kim.jpg', 'Bánh Hoàng Kim', 'L', 'Bánh kem đặt trước'),
(29000, 59, '\n												Thành phần: Trứng gà, bột mỳ, bơ, nước, đường, tinh bột biến tính (E1414), béo thực vật, bột sữa gầy, chất làm dày (E401), hương vani tổng hợp, màu thực phẩm (E160aii)), muối.\n											', 'Bánh ngọt', '/images/Bánh Su Kem Nhân Vani.jpg', 'Bánh Su Kem Nhân Vani', 'S', 'Bánh su kem'),
(30000, 60, '\n												Thành phần: Trứng gà, bột mỳ, bơ, nước, đường, sô cô la, tinh bột biến tính (E1414), béo thực vật, bột sữa gầy, chất làm dày (E401), hương vani tổng hợp, màu thực phẩm (E160aii)), muối.\n											', 'Bánh ngọt', '/images/Bánh Su Kem Nhân Socola.jpg', 'Bánh Su Kem Nhân Socola', 'M', 'Bánh su kem'),
(35000, 61, '\n												Thành phần: Trứng gà, kem sữa, bột mỳ, đường, rượu rum.\n											', 'Bánh ngọt', '/images/Bánh Cuộn Vani 110G.jpg', 'Bánh Cuộn Vani 110G', 'M', 'Bánh cuộn'),
(23000, 62, '\n												Thành phần: Trứng gà, đường, bột mỳ, nho khô (10%), hương vani tổng hợp, bơ, bột làm bánh Tartar, mật ong, siro đường, rượu rum.           \n											', 'Bánh ngọt', '/images/Bánh Cuộn Nho Miếng.jpg', 'Bánh Cuộn Nho Miếng', 'M', 'Bánh cuộn'),
(89000, 63, '\n												Thành phần: Trứng gà, kem sữa, bột mỳ, đường, mật ong, bột trà xanh (1%), rượu rum.      \n											', 'Bánh ngọt', '/images/Bánh Cuộn Trà Xanh 250 G.jpg', 'Bánh Cuộn Trà Xanh 250 G', 'L', 'Bánh cuộn'),
(23000, 64, '\n												Thành phần: Trứng gà, đường, bột mỳ, bột ca cao (2,5%), bơ, bột làm bánh Tartar, mật ong, siro đường, rượu rum.      \n											', 'Bánh ngọt', '/images/Bánh Cuộn Socola Miếng.jpg', 'Bánh Cuộn Socola Miếng', 'M', 'Bánh cuộn'),
(35000, 65, '\n												Thành phần: Trứng gà, kem sữa, bột mỳ, đường, mật ong, bột trà xanh (1%), rượu rum.  \n											', 'Bánh ngọt', '/images/Bánh Cuộn Trà Xanh 110G.jpg', 'Bánh Cuộn Trà Xanh 110G', 'M', 'Bánh cuộn'),
(89000, 66, '\n												Thành phần: Trứng gà, kem sữa, bột mỳ, đường, rượu rum.\n											', 'Bánh ngọt', '/images/Bánh Cuộn Vani 250G.jpg', 'Bánh Cuộn Vani 250G', 'L', 'Bánh cuộn'),
(19000, 67, '\n												Thành phần: Bột mỳ, trứng gà, đường, dầu thực vật, nước, sô cô la chíp (5%), bột sữa whey, dextrose, tinh bột biến tính (E1414), chất tạo xốp (E500ii, E450i, E341i), muối, chất nhũ hóa (E471, E475), chất làm dầy (E412, E466), hương vani tổng hợp, chất xử lý bột (E1100).. \n											', 'Bánh ngọt', '/images/Bánh Muffin Socola Chip.jpg', 'Bánh Muffin Socola Chip', 'S', 'Bánh ngọt'),
(30000, 68, '\n', 'Bánh ngọt', '/images/Bánh Cheese Cake.jpg', 'Bánh Cheese Cake', 'M', 'Bánh ngọt'),
(42000, 69, '\n												Thành phần: Trứng gà, bơ, bột mỳ, đường, vỏ chanh, chất tạo xốp (E500ii), hương vani tổng hợp. \n											', 'Bánh ngọt', '/images/Bánh Madeleine.jpg', 'Bánh Madeleine', 'S', 'Bánh ngọt'),
(40000, 70, '\n												Thành phần: Trứng gà, bột mỳ, đường, sô cô la (14%), bơ, kem sữa (5,6%), bột ca cao (2,5%), chất tạo xốp (E500ii, E450i, E341i).\n											', 'Bánh ngọt', '/images/Bánh Gato Socola Sữa.jpg', 'Bánh Gato Socola Sữa', 'L', 'Bánh ngọt'),
(11000, 71, '\n', 'Bánh ngọt', '/images/Bánh Trứng Vàng Baby.jpg', 'Bánh Trứng Vàng Baby', 'S', 'Bánh ngọt'),
(19000, 72, '\n												Thành phần: Bột mỳ, trứng gà, đường, dầu thực vật, nước, nho khô (9%), bột sữa whey, dextrose, tinh bột biến tính (E1414), chất tạo xốp (E500ii, E450i, E341i), muối, chất nhũ hóa (E471, E475), chất làm dầy (E412, E466), hương vani tổng hợp, chất xử lý bột (E1100).\n											', 'Bánh ngọt', '/images/Bánh Muffin Vani Nho Đen.jpg', 'Bánh Muffin Vani Nho Đen', 'S', 'Bánh ngọt'),
(22000, 73, '\n												Thành phần: Trứng gà, đường, bột mỳ, bột ca cao, hương cà phê tổng hợp, hương vani tổng hợp, bột làm bánh Tartar, bơ, mật ong, siro đường, rượu rum. \n											', 'Bánh ngọt', '/images/Bánh Chiffon 3 Vị.jpg', 'Bánh Chiffon 3 Vị', 'S', 'Bánh Chiffon'),
(32000, 74, '\n												Thành phần: Trứng gà, đường, bột mỳ, bơ, bột làm bánh Tartar, siro đường, hương vani tổng hợp, rượu rum.\n											', 'Bánh ngọt', '/images/Bánh Chiffon Vani.jpg', 'Bánh Chiffon Vani', 'M', 'Bánh Chiffon'),
(36000, 75, '\n												Thành phần: Trứng gà, đường, bột mỳ, bơ, nước, bột trà xanh (1%), bột làm bánh Tartar, mật ong, siro đường, rượu rum.         \n											', 'Bánh ngọt', '/images/Bánh Chiffon Trà Xanh.jpg', 'Bánh Chiffon Trà Xanh', 'S', 'Bánh Chiffon'),
(10000, 76, '\n												Thành phần: Bột mì, nước, men, muối, chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i).Hạn sử dụng: 30 ngày trong tủ đông\n', 'Bánh mỳ', '/images/Bánh Mì Mini Baguette.jpg', 'Bánh Mì Mini Baguette', 'S', 'Bánh mì baguette'),
(11000, 77, '\n												Bánh mì baguette thơm ngon chuẩn Pháp. Vỏ bánh giòn, ruột mềm, thơm ngậy vị bơ.Thành phần: Bột mỳ, men, muối, nước.\n', 'Bánh mỳ', '/images/Bánh Mì Baguette.jpg', 'Bánh Mì Baguette', 'L', 'Bánh mì baguette'),
(10000, 78, '\n												Bột mì hảo hạng, bột nhân su kem (10%), đường kính trắng, trứng gà, bơ thực vật, dầu thực vật, sữa đặc, sữa bột béo, sữa chua, muối tinh, men làm bánh mỳ, bột làm nở ibis.\n											', 'Bánh mỳ', '/images/Bánh Mì Nhân Kem Sữa.jpg', 'Bánh Mì Nhân Kem Sữa', 'L', 'Bánh mì ngọt'),
(10000, 79, '\n												Bột mì, đường kính trắng, bơ, sữa bột béo tan nhanh, táo khô, trứng gà, dầu thực vật, bột ngô, mạch nha, bột năng, ca cao, muối, men làm bánh mì.\n											', 'Bánh mỳ', '/images/Bánh Mì Nhân Sô Cô La Táo Đỏ.jpg', 'Bánh Mì Nhân Sô Cô La Táo Đỏ', 'M', 'Bánh mì ngọt'),
(20000, 80, '\n												Bột mỳ, sô cô la trắng (24%), nước, hạnh nhân cắt lát (11,3%), đường, cốm màu, trứng gà, bơ, sữa bột, muối tinh, men, chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i)\n											', 'Bánh mỳ', '/images/Bánh Donut Socola Trắng Hạnh Nhân 45G.jpg', 'Bánh Donut Socola Trắng Hạnh Nhân 45G', 'L', 'Bánh mì ngọt'),
(15000, 81, '\n												Thành phần: Bột mỳ, bơ, sữa bột, đường, trứng gà, men, muối, nước Trang trí: socola, cốm, đường icing\n											', 'Bánh mỳ', '/images/Bánh Donut Socola Dâu 45G.jpg', 'Bánh Donut Socola Dâu 45G', 'S', 'Bánh mì ngọt'),
(30000, 82, '\n												Bột mỳ, đường, bơ, nước, trứng gà, hạt óc chó (5,3%), muối, men, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Hạt Óc Chó Sốt Kem.jpg', 'Bánh Mì Hạt Óc Chó Sốt Kem', 'S', 'Bánh mì ngọt'),
(15000, 83, '\n												Bột mì hảo hạng, bơ thực vât, sô cô la (10%), dầu thực vật, trứng gà, đường kính trắng, men làm bánh, muối tinh, bột làm nở bánh ibis\n											', 'Bánh mỳ', '/images/Bánh Croissant Sô Cô La.jpg', 'Bánh Croissant Sô Cô La', 'S', 'Bánh mì ngọt'),
(10000, 84, '\n												Bột mì, đường kính trắng, hạt sen, dừa tươi, dầu ăn, bơ, nước cốt dừa, trứng gà, sữa bột, bột gạo, mạch nha, muối, men làm bánh mì.\n											', 'Bánh mỳ', '/images/Bánh Mì Nhân Sen Sữa Dừa.jpg', 'Bánh Mì Nhân Sen Sữa Dừa', 'S', 'Bánh mì ngọt'),
(15000, 85, '\n												Bột mỳ, sô cô la trắng (26%), nước, đường, cốm màu, trứng gà, bơ, sữa bột, bột trà xanh (03%), muối tinh, men, chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i), màu thực phẩm tổng hợp (INS 102, INS 133).\n											', 'Bánh mỳ', '/images/Bánh Donut Socola Trà Xanh 45G.jpg', 'Bánh Donut Socola Trà Xanh 45G', 'L', 'Bánh mì ngọt'),
(10000, 86, '\n												Bột mì hảo hạng, bột nhân su kem (5%), hạt đậu xanh (5%), đường kính trắng, trứng gà, bơ thực vật, dầu thực vật, sữa đặc, sữa bột béo, sữa chua, sorbitol, mạch nha, muối tinh, men làm bánh mỳ, bột gạo, bột làm nở bánh, màu thực phẩm, hương lá dứa\n											', 'Bánh mỳ', '/images/Bánh Mì Đậu Xanh Lá Dứa.jpg', 'Bánh Mì Đậu Xanh Lá Dứa', 'S', 'Bánh mì ngọt'),
(15000, 87, '\n												Thành phần: Bột bánh mỳ tươi (bột mỳ, đường, men, sữa bột, trứng gà, muối, bơ, nước), dừa khô\n											', 'Bánh mỳ', '/images/Bánh Mì Dừa Hạt Quinoa.jpg', 'Bánh Mì Dừa Hạt Quinoa', 'S', 'Bánh mì ngọt'),
(15000, 88, '\n												Thành phần: Bột mỳ, bơ, sữa bột, đường, trứng gà, men, muối, nước Trang trí: socola, cốm, đường tinh\n											', 'Bánh mỳ', '/images/Bánh Donut Socola.jpg', 'Bánh Donut Socola', 'S', 'Bánh mì ngọt'),
(30000, 89, '\n												Thành phần: Vỏ bánh mì kẹp cỡ lớn, chả, sốt bánh mỳ kẹp, dưa góp, rau mùi\n											', 'Bánh mỳ', '/images/Bánh Mì Kẹp Chả.jpg', 'Bánh Mì Kẹp Chả', 'L', 'Bánh mì kẹp'),
(32000, 90, '\n												Thành phần: Bột bánh mỳ gối (bột mỳ, men, muối, bơ, đường, trứng gà, nước), cá ngừ, phô mai, sốt Mayonnaise, trứng gàHạn sử dụng: 02 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Sandwich Cá Ngừ Phô Mai.jpg', 'Bánh Sandwich Cá Ngừ Phô Mai', 'L', 'Bánh mì kẹp'),
(30000, 91, '\n												Thành phần: Vỏ bánh mì kẹp cỡ lớn, pa tê, sốt bánh mỳ kẹp, dưa góp, rau mùi\n											', 'Bánh mỳ', '/images/Bánh Mì Kẹp Pa Tê.jpg', 'Bánh Mì Kẹp Pa Tê', 'M', 'Bánh mì kẹp'),
(30000, 92, '\n												Thành phần: Vỏ bánh mì kẹp cỡ lớn, pa tê, chả, thịt xá xíu, sốt bánh mỳ kẹp, dưa góp, rau mùi\n											', 'Bánh mỳ', '/images/Bánh Mì Kẹp Thập Cẩm.jpg', 'Bánh Mì Kẹp Thập Cẩm', 'L', 'Bánh mì kẹp'),
(30000, 93, '\n												Thành phần: Vỏ bánh mì kẹp cỡ lớn, thịt xá xíu, sốt bánh mỳ kẹp, dưa góp, rau mùi\n											', 'Bánh mỳ', '/images/Bánh Mì Kẹp Xá Xíu.jpg', 'Bánh Mì Kẹp Xá Xíu', 'S', 'Bánh mì kẹp'),
(32000, 94, '\n												Thành phần: Bột bánh mỳ gối (bột mỳ, men, muối, bơ, đường, trứng gà, nước), giăm bông, phomai, sốt Mayonnaise, trứng gà\n											', 'Bánh mỳ', '/images/Sandwich Giăm Bông Phô Mai.jpg', 'Sandwich Giăm Bông Phô Mai', 'S', 'Bánh mì kẹp'),
(30000, 95, '\n												Thành phần: Vỏ bánh mì kẹp cỡ lớn, gà nướng bỏ lò Teriyaki, sốt bánh mỳ kẹp, dưa góp, rau mùi\n											', 'Bánh mỳ', '/images/Bánh Mì Kẹp Gà Teriyaki.jpg', 'Bánh Mì Kẹp Gà Teriyaki', 'M', 'Bánh mì kẹp'),
(20000, 96, '\n												Thành phần: Bột mì, đường, muối, men, bơ anhchor, bột sữa, sữa tươi, trứng, nước, nhân táo.Hạn sử dụng: 02 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Danish Táo.jpg', 'Bánh Danish Táo', 'S', 'Bánh cán lớp'),
(15000, 97, '\n												Thành phần: Bột mỳ, men, muối, đường, trứng, sữa bột, bơ, nướcHạn sử dụng: 2 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Croissant.jpg', 'Bánh Croissant', 'M', 'Bánh cán lớp'),
(20000, 98, '\n												Thành phần: Bột mì, đường, muối, men , bột sữa, trứng gà, sữa tươi, bơ anchor, nước, nho khôHạn sử dụng: 02 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Danish Nho.jpg', 'Bánh Danish Nho', 'L', 'Bánh cán lớp'),
(15000, 99, '\n												Bột mì hảo hạng, thịt ba chỉ xông khói (10%), ruốc heo (8%), đường trắng, bơ thực vật, trứng gà, dầu thực vật, sữa đặc, sữa bột béo, sữa chua, men làm bánh, muối tinh, bột nở bánh ibis.\n											', 'Bánh mỳ', '/images/Bánh Mì Ruốc Ba Rọi.jpg', 'Bánh Mì Ruốc Ba Rọi', 'S', 'Bánh mì mặn'),
(15000, 100, '\n												Bột mì, thịt gà, đường kính trắng, dầu thực vật, bơ, trứng gà, sữa bột, đường nâu, xì dầu, hành, tỏi, bột khoai tây, hành tây, nước tương, muối, tương cà, dầu hào, men làm bánh mì, rượu nấu ăn, dấm trắng, dầu mè, bột ngô, gừng.\n											', 'Bánh mỳ', '/images/Bánh Mì Nhân Sợi Gà Sốt Teriyaki.jpg', 'Bánh Mì Nhân Sợi Gà Sốt Teriyaki', 'M', 'Bánh mì mặn'),
(26000, 101, '\n												Bột bánh burger (bột mỳ, men, đường, muối, trứng, bơ, nước), xúc xích (thịt gà & thịt lợn),phô mai, sốt bơ\n											', 'Bánh mỳ', '/images/Bánh Mì Xúc Xích Phô Mai.jpg', 'Bánh Mì Xúc Xích Phô Mai', 'L', 'Bánh mì mặn'),
(15000, 102, '\n												Bột mì hảo hạng, bơ thực vật, thịt ba chỉ xông khói (10%), dầu thực vật, trứng gà, đường kính trắng, ruốc heo, men làm bánh, muối tinh, bột làm nở bánh ibis.\n											', 'Bánh mỳ', '/images/Bánh Ngàn Lớp Ba Rọi.jpg', 'Bánh Ngàn Lớp Ba Rọi', 'L', 'Bánh mì mặn'),
(29000, 103, '\n												Thành phần; Bột mỳ, đường, dầu thực vật, muối, men, nước, giăm bông, nấm, phomai, rau củ hỗn hợp, sốt cà chua, lá kinh giới khô.Hạn sử dụng: 2 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Pizza Giăm Bông Nấm.jpg', 'Bánh Pizza Giăm Bông Nấm', 'L', 'Bánh mì mặn'),
(15000, 104, '\n												Bột mì hảo hạng, giăm bông (20%), bơ thực vật, dầu thực vật, trứng gà, đường kính trắng, ruốc heo, men làm bánh, muối tinh, bột làm nở bánh ibis\n											', 'Bánh mỳ', '/images/Bánh Ngàn Lớp Dăm Bông.jpg', 'Bánh Ngàn Lớp Dăm Bông', 'L', 'Bánh mì mặn'),
(15000, 105, '\n												Bột mì hảo hạng, xúc xích (15%), đường kính trắng, trứng gà, bơ thực vật, dầu thực vật, ruốc heo, sữa đặc, sữa bột béo, sữa chua, muối tinh, men làm bánh mì, bột làm nở ibis. \n											', 'Bánh mỳ', '/images/Bánh Mì Xúc Xích Cuộn Thừng.jpg', 'Bánh Mì Xúc Xích Cuộn Thừng', 'L', 'Bánh mì mặn'),
(25000, 106, '\n												Thành phần: Bột mỳ, đường, dầu thực vật, muối, men, nước, phomai, ngô ngọt, xúc xích, sốt cà chua, lá kinh giới khô.Hạn sử dụng: 02 ngày kể từ ngày sản xuất\n', 'Bánh mỳ', '/images/Bánh Pizza Xúc Xích Ngô.jpg', 'Bánh Pizza Xúc Xích Ngô', 'S', 'Bánh mì mặn'),
(15000, 107, '\n												Bột mỳ, dầu thực vật, xúc xích (105%), đường, nước, ruốc heo (6,6%), bơ, hành lá, muối, men, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Xúc Xích Ruốc.jpg', 'Bánh Mì Xúc Xích Ruốc', 'L', 'Bánh mì mặn'),
(28000, 108, '\n												Bột mì, ruốc heo (12,5%), dầu thực vật, nước, bơ, đường, trứng gà, sữa tươi, vừng trắng, muối, men, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Cuộn Ruốc.jpg', 'Bánh Mì Cuộn Ruốc', 'L', 'Bánh mì mặn'),
(20000, 109, '\n												Bột mì hảo hạng, trứng gà, dầu thực vật, đường kính trắng, ruốc heo (8%), hương vani, bột nở bánh ibis, muối tinh, bột làm bánh tartar\n											', 'Bánh mỳ', '/images/Bánh Bông Lan Cuộn Ruốc.jpg', 'Bánh Bông Lan Cuộn Ruốc', 'L', 'Bánh mì mặn'),
(20000, 110, '\n												Thành phần: Bột bánh mỳ tươi (bột mỳ, đường, men, sữa bột, trứng gà, muối, bơ, nước), ruốc lợn, sốt Mayonnaise\n											', 'Bánh mỳ', '/images/Bánh Tươi Ruốc.jpg', 'Bánh Tươi Ruốc', 'L', 'Bánh mì mặn'),
(20000, 111, '\n												Xúc xích (50%), bột mì hảo hạng, đường kính trắng, bơ, trứng, sữa đặc, sữa bột béo, sữa chua, men làm bánh mì, muối tinh, bột làm nở bánh ibis, bột ớt không cay.\n											', 'Bánh mỳ', '/images/Bánh Mì Cuộn Xúc Xích.jpg', 'Bánh Mì Cuộn Xúc Xích', 'S', 'Bánh mì mặn'),
(20000, 112, '\n												Bột mỳ, sữa tươi, sữa bột, đường, bơ, men, muối, nước,  ruốc gà cay, sốt Mayonnaise.\n											', 'Bánh mỳ', '/images/Bánh Tươi Ruốc Gà Cay.jpg', 'Bánh Tươi Ruốc Gà Cay', 'L', 'Bánh mì mặn'),
(40000, 113, '\n												Bột mì đen (14.5%), đường, sữa bột, bơ, muối, men, phụ gia bánh mỳ, nước\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Đen.jpg', 'Bánh Mì Gối Đen', 'L', 'Bánh mì gối'),
(40000, 114, '\n												Bột mỳ, nước, ngũ cốc (15%), sữa bột, đường, bơ  men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Ngũ Cốc.jpg', 'Bánh Mì Gối Ngũ Cốc', 'L', 'Bánh mì gối'),
(25000, 115, '\n												Thành phần: Bột mì, nước, đường kính, nho khô (4%), sữa bột béo (1,4%), bơ, shortening, men, muối, chất bảo quản (282), hương thực phẩm tổng hợp (hương sữa), chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Sữa Nho.jpg', 'Bánh Mì Gối Sữa Nho', 'L', 'Bánh mì gối'),
(30000, 116, '\n												Bột mì, men, muối, bơ, đường, sữa bột, trứng gà, nước\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Trắng.jpg', 'Bánh Mì Gối Trắng', 'S', 'Bánh mì gối'),
(40000, 117, '\n												Bột mỳ, nước, bột bánh mỳ nâu (17%), đường, sữa bột, bơ, men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300 E1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Nâu.jpg', 'Bánh Mì Gối Nâu', 'S', 'Bánh mì gối'),
(25000, 118, '\n												Thành phần: Bột mì, nước, bột mì nguyên cám (6%),đường kính, bơ, shortening, men, muối, chất bảo quản (282), hương thực phẩm tổng hợp (hương bơ), chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Nguyên Cám.jpg', 'Bánh Mì Gối Nguyên Cám', 'M', 'Bánh mì gối'),
(25000, 119, '\n												Thành phần: Bột mì, nước, hạt quinoa (3%),  vừng đen (3%), đường kính, bơ, shortening, men, muối, chất bảo quản (282), hương thực phẩm tổng hợp (hương sữa, hương bơ), chất nhũ hóa (471), chất chống oxi hóa (300), enzym: amylaza (1100i).\n											', 'Bánh mỳ', '/images/Bánh Mì Gối Hạt Quinoa.jpg', 'Bánh Mì Gối Hạt Quinoa', 'L', 'Bánh mì gối'),
(55000, 120, '\n												Thành phần: Bột mì, phomai, dứa (20%), dăm bông (15%), bơ, sốt cà chua, hành tây, ớt chuông, đường, men, muối, lá oregano\n											', 'Bánh đông lạnh', '/images/Pizza Dăm Bông Dứa.jpg', 'Pizza Dăm Bông Dứa', 'M', 'Bánh pizza'),
(69000, 121, '\n												Thành phần: Bột mì, phomai, hải sản (tôm 12,5%; mực 12,5%) bơ, sốt cà chua, hành tây, ớt chuông, đường, men, muối, lá oregano.\n											', 'Bánh đông lạnh', '/images/Pizza Hải Sản.jpg', 'Pizza Hải Sản', 'L', 'Bánh pizza'),
(80000, 122, '\n												Thành phần: Bột mì, phô mai khối, gà teriyaki (thịt gà (14%), sốt teriyaki (3%), dầu hào, xì dầu, hạt tiêu), nước, nấm mỡ, sốt pizza (8%), trứng gà, bơ, dầu thực vật, đường kính, muối, men bánh.\n											', 'Bánh đông lạnh', '/images/Pizza Gà Teriyaki.jpg', 'Pizza Gà Teriyaki', 'L', 'Bánh pizza'),
(90000, 123, '\n												Thành phần: Bột mì, phô mai khối, xúc xích tươi (15%), nước, ớt chuông, sốt pizza (8%), trứng gà, bơ, dầu thực vật, đường kính, muối, men bánh, lá mùi tây khô.\n											', 'Bánh đông lạnh', '/images/Pizza Xúc Xích Tươi.jpg', 'Pizza Xúc Xích Tươi', 'S', 'Bánh pizza'),
(110000, 124, '\n												Thành phần: Bột mì, phô mai (40%), bơ, sốt cà chua, hành tây, ớt chuông, đường, men, muối, lá oregano.\n											', 'Bánh đông lạnh', '/images/Bánh Pizza Phô Mai Hảo Hạng 220G.jpg', 'Bánh Pizza Phô Mai Hảo Hạng 220G', 'L', 'Bánh pizza'),
(90000, 125, '\n												Thành phần: Bột mì, phô mai khối, bò bulgogi (thịt bò (11%), sốt bulgogi (2,8%), xì dầu, hạt tiêu), nước, ớt chuông, hành tây, sốt pizza (8%), trứng gà, bơ, dầu thực vật, đường kính, muối, men, lá mùi tây khô.\n											', 'Bánh đông lạnh', '/images/Pizza Bò Bulgogi.jpg', 'Pizza Bò Bulgogi', 'M', 'Bánh pizza'),
(109000, 126, '\n												Thành phần: Mix 2 pizza dăm bông dứa & hải sản\n											', 'Bánh đông lạnh', '/images/Pizza Dăm Bông Dứa Và Hải Sản.jpg', 'Pizza Dăm Bông Dứa Và Hải Sản', 'S', 'Bánh pizza'),
(36000, 127, '\n Thành phần: Bột mỳ, thịt lợn (16%), nước, đường, sữa tươi, bơ, dầu thực vật, bột khoai tây, bột mỳ nguyên cám, dầu hào, nước tương đậu nành, rượu, hành khô, tỏi, hành tươi, xì dầu, muối, men, chất tạo đông gelatine, dầu điều 80g\n', 'Bánh đông lạnh', '/images/Bánh Bao Nhân Thịt Xá Xíu 240G.jpg', 'Bánh Bao Nhân Thịt Xá Xíu 240G', 'L', 'Bánh bao'),
(26000, 128, '\n												Thành phần: Bột mì, sữa tươi (16,5%), đường, nước, shortening, men, muối, chất tạo xốp (E500ii, E450i, E341i), hương sữa tổng hợp.\n											', 'Bánh đông lạnh', '/images/Bánh Bao Chay Sữa 220G.jpg', 'Bánh Bao Chay Sữa 220G', 'L', 'Bánh bao'),
(30000, 129, '\nThành phần: Bột mỳ, sữa tươi (13%), trứng gà (11%), nước, đường bơ, men, muối, màu thực phẩm: màu vàng\n', 'Bánh đông lạnh', '/images/Bánh Bao Nhân Trứng Sữa 240G.jpg', 'Bánh Bao Nhân Trứng Sữa 240G', 'M', 'Bánh bao'),
(30000, 130, '\n												Thành phần: Bột mì, đậu xanh (15%), sữa tươi, đường, nước, bột nếp, đường mạch nha, dầu thực vật, shortening, men, muối, chất tạo xốp (E500ii, E450i, E341i), hương sữa tổng hợp, hương đậu xanh tổng hợp, bột trà xanh.\n											', 'Bánh đông lạnh', '/images/Bánh Bao Nhân Đậu Xanh 240G.jpg', 'Bánh Bao Nhân Đậu Xanh 240G', 'M', 'Bánh bao'),
(36000, 131, '\n												Thành phần: Bột mỳ, thịt lợn (28%), nước, sữa tươi, đường, mộc nhĩ, bơ, miến, hành khô, bột khoai tay, bột ngọt, hạt tiêu, muối, men 80g\n											', 'Bánh đông lạnh', '/images/Bánh Bao Nhân Thịt 240G.jpg', 'Bánh Bao Nhân Thịt 240G', 'L', 'Bánh bao');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`) VALUES
(7, 3),
(8, 4),
(6, 6),
(9, 9),
(10, 14),
(11, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_product`
--

CREATE TABLE `shopping_cart_product` (
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total_price` double DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `shopping_cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_cart_product`
--

INSERT INTO `shopping_cart_product` (`quantity`, `total_price`, `id`, `product_id`, `shopping_cart_id`) VALUES
(1, NULL, 0, 1, 7),
(1, 22000, 1, 1, 9),
(2, 62000, 2, 2, 9),
(1, 31000, 103, 2, 6),
(1, 31000, 104, 3, 6),
(3, 1140000, 555, 32, 10);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_product_seq`
--

CREATE TABLE `shopping_cart_product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping_cart_product_seq`
--

INSERT INTO `shopping_cart_product_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `total_price` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sys_orders`
--

INSERT INTO `sys_orders` (`total_price`, `total_quantity`, `id`, `user_id`) VALUES
(114000, 5, 1, 14),
(103000, 4, 2, 14),
(93000, 3, 3, 14),
(93000, 3, 4, 14),
(953000, 6, 5, 14),
(563000, 5, 6, 14),
(563000, 5, 7, 14),
(563000, 5, 8, 14),
(78000, 2, 9, 14),
(62000, 2, 10, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `created_date` datetime(6) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`created_date`, `id`, `password`, `username`) VALUES
(NULL, 1, '$2a$10$gqHrslMttQWSsDSVRTK1OehkkBiXsJ/a4z2OURU./dizwOQu5Lovu', 'admin'),
(NULL, 2, '$2a$10$gqHrslMttQWSsDSVRTK1OehkkBiXsJ/a4z2OURU./dizwOQu5Lovu', 'kienminho'),
('2023-10-29 07:54:17.000000', 3, '$2a$10$z82Jzy.uBtieuTKQJ5o.l.w4z8.0IACUzaOHJbGqgi4shNdhWcFFy', 'Kienkien'),
('2023-10-29 07:56:02.000000', 4, '$2a$10$msMDlEpCizZs2ujwy4Bsz.esb3AklrLCUEU1SHLyFYg9U24JQcnIS', 'Dong'),
('2023-10-29 10:52:02.000000', 6, '$2a$10$pE8bQf7KFj7JnNrtKqmKKu5gMYyWR8USiCyhZDcMSq1q3i52TrtPG', 'Dev'),
('2023-10-30 14:14:33.000000', 7, '$2a$10$zgrQaxZXjME1NGQVljoO5OckevxZxmDK5OKyvyt/mGqVkiis4SgYi', 'Kienminho'),
('2023-10-30 15:11:17.000000', 9, '$2a$10$CAhmAlBFNwiMKDcbLpX25ulIZtgejHTABqR9gi/rCTZ/ktuCpckkC', 'Test'),
('2023-11-01 11:36:59.000000', 14, '$2a$10$MsvB5c2u5yi.K.PVGSrl3O8Hxk3JDsaw6LBxsWnEiz9aqBwV3pqiy', 'Dev2'),
('2023-11-15 03:58:51.000000', 15, '$2a$10$adsZCvBhqpOzUA0dKNOaAer7v2ic41WBVkajJPafFIi.2NshnefDq', 'dev1234'),
('2023-11-30 12:44:03.000000', 16, '$2a$10$Fs7vniEQ0T1zCMnEDhuIROFXF1NQjdkKGH.lDrZlSGK/VrBKAjuH.', 'Kien');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 6),
(2, 7),
(2, 9),
(2, 14),
(2, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_qx5dh8nhlnh77h8im91vlqwdv` (`user_id`);

--
-- Indexes for table `shopping_cart_product`
--
ALTER TABLE `shopping_cart_product`
  ADD PRIMARY KEY (`id`,`product_id`,`shopping_cart_id`),
  ADD KEY `FKrhdgnliwu0vsv3wka7409p81f` (`product_id`),
  ADD KEY `FKectgy7yh5dy3261o4rei8suxq` (`shopping_cart_id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpdvp5w4nxvoe5abgpv0lvyetn` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6w3lq7enh0mgv5r45vabpvxx8` (`created_date`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `FK254qp5akhuaaj9n5co4jww3fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `shopping_cart_product`
--
ALTER TABLE `shopping_cart_product`
  ADD CONSTRAINT `FKectgy7yh5dy3261o4rei8suxq` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`),
  ADD CONSTRAINT `FKrhdgnliwu0vsv3wka7409p81f` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD CONSTRAINT `FKpdvp5w4nxvoe5abgpv0lvyetn` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
