-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 09, 2023 at 10:47 AM
-- Server version: 5.7.24
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(6, 'Цвет', 1),
(7, 'Размер', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3),
(14, 'Серый', 6),
(15, 'Бежевый', 6),
(16, 'Коричневый', 6),
(17, 'Синевато-черный', 6),
(18, '47x47', 7),
(19, '24,5x98,2', 7),
(20, '60x120', 7),
(21, '30x60', 7),
(22, '14,8x59,7', 7),
(23, '20x50', 7),
(24, '50x50', 7),
(25, 'Темный', 6),
(26, 'Белый', 6),
(27, '60x60', 7),
(28, 'Оранжевый', 6);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(3, 'СЕРАКАСА', 1),
(4, 'СТН', 1),
(5, 'ПАМЕСА', 1),
(6, 'БЕЛАНИ', 1),
(7, 'ГРАНИТЕЯ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(1, 'Испанский', 1),
(2, 'Белорусский', 1),
(3, 'Российский', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Мир кафеля', '3', '10', 'г. Бишкек', '+996770010201', 'Кыргызстан', '<p><i></i></p>\r\n\r\nМир кафеля - в нашем ассортименте вы найдете интересные коллекции, которые воплотят даже самые смелые дизайнерские решения\r\n\r\n\r\n\r\n<p><i></i></p><p><i>&nbsp;</i></p>', 'KGS');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'Продавец', 'a:8:{i:0;s:9:\"viewBrand\";i:1;s:12:\"viewCategory\";i:2;s:11:\"viewProduct\";i:3;s:11:\"createOrder\";i:4;s:11:\"updateOrder\";i:5;s:9:\"viewOrder\";i:6;s:11:\"deleteOrder\";i:7;s:11:\"viewProfile\";}'),
(5, 'Кассир', 'a:4:{i:0;s:11:\"createOrder\";i:1;s:11:\"updateOrder\";i:2;s:9:\"viewOrder\";i:3;s:11:\"deleteOrder\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(1, 'BILPR-1A47', 'Нурсултан', 'Ала-Тоо3', '0770020300', '1685346790', '3180.00', '13', '413.40', '10', '318.00', '3906.40', '5', 1, 1),
(2, 'BILPR-91EA', 'Тест', 'адрес', '23535', '1685440017', '76122.00', '3', '9895.86', '10', '7612.20', '93580.06', '50', 1, 1),
(3, 'BILPR-AF47', 'Суйун Байышов', 'ул. Тыналиева 2/21', '0779416565', '1685446209', '6328.00', '13', '822.64', '10', '632.80', '7733.44', '50', 1, 1),
(5, 'BILPR-4298', 'Суйун Байышов', 'ул. Тыналиева 2/21', '0779416565', '1685821186', '10760.00', '3', '1398.80', '10', '1076.00', '13184.80', '50', 2, 1),
(6, 'BILPR-1038', 'тест', 'тест', '012124', '1686287690', '4930.00', '3', '147.90', '10', '493.00', '5520.90', '50', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(3, 1, 1, '2', '1590', '3180.00'),
(9, 3, 18, '4', '1582', '6328.00'),
(14, 5, 19, '5', '2152', '10760.00'),
(15, 2, 21, '26', '2845', '73970.00'),
(16, 2, 20, '2', '2152', '2152.00'),
(17, 6, 12, '5', '986', '4930.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(1, 'Порто Графито Дек', 'СЕР00-1', '1590', '17', 'assets/images/product_image/64745921dd3d8.jpg', '<i></i><h1><i>Керамогран</i><i></i><i>ит Порто Графито Дек из коллекции Порто производства фабрики</i></h1><h1><i>&nbsp;\r\n\r\nСЕРАКАСА</i></h1><i></i>', '[\"15\",\"18\"]', '[\"3\"]', '[\"1\"]', 1, 1),
(2, 'Абсолют Айс', 'СЕР00-2', '1800', '20', 'assets/images/product_image/64747fc031a5d.jpg', '<p></p><p></p><h1><i></i><i></i><i></i><i></i><i>Керамогран</i><i></i><i>ит Абсолют Айс (D12038M) из коллекции Абсолют производства</i></h1><h1><i>&nbsp;фабрики \r\n\r\nСЕРАКАСА</i></h1><blockquote></blockquote><blockquote></blockquote><blockquote></blockquote><i></i><p></p><p></p><p></p><p></p><p></p><h1><small></small></h1><p></p><p></p><p></p><h1><b></b></h1><p></p>', '[\"14\",\"19\"]', '[\"3\"]', '[\"1\"]', 1, 1),
(3, 'Алтеа Империал', 'СЕР00-3', '1890', '20', 'assets/images/product_image/647480f3cb45f.jpg', '<p>\r\n\r\n<i>\r\n\r\n<i></i></i></p><h1><i><i>Напольная плитка Алтеа Империал из коллекции Алтеа производства фабрики</i></i></h1><h1><i><i>&nbsp;СЕРАКАСА</i></i></h1><i>\r\n\r\n<i></i>\r\n\r\n</i>\r\n\r\n<br><p></p>', '[\"16\",\"18\"]', '[\"3\"]', '[\"1\"]', 1, 1),
(4, 'Дива Крем', 'STN00-1', '4420', '20', 'assets/images/product_image/647484b83d30b.jpg', '<p>\r\n\r\n</p><p><b><i></i></b><i></i><i>\r\n\r\n<i></i></i></p><h1><i><i>Керамогранит Дива Крем из коллекции Дива производства фабрики</i></i></h1><h1><i><i>&nbsp;СТН</i></i></h1><i>\r\n\r\n</i><b></b><p></p><i>\r\n\r\n</i><br><p></p>', '[\"15\",\"20\"]', '[\"4\"]', '[\"1\"]', 1, 1),
(6, 'Ардесия Ноир', 'ПАМ00-1', '4981', '20', 'assets/images/product_image/64748783bfb07.jpg', '<p></p><i>\r\n\r\n<h1><i><i>Керамогранит Ардесия Ноир из коллекции Ардесия производства фабрики</i></i><br></h1><h1><i><i>&nbsp;ПАМЕСА</i></i></h1><p></p>\r\n\r\n</i><h2></h2><i><br>\r\n\r\n\r\n<p>\r\n<i></i></p><h1><i><br></i></h1>\r\n\r\n<br><p></p>\r\n\r\n</i>\r\n\r\n\r\n\r\n<h1><br></h1>\r\n<br><br><p></p>', '[\"25\",\"20\"]', '[\"5\"]', '[\"1\"]', 1, 1),
(7, 'Данае Есмаральда', 'ПАМ00-2', '6510', '20', 'assets/images/product_image/64748b1adc227.jpg', '<h1>\r\n\r\n\r\n\r\n\r\n\r\n<i>Керамогранит Данае Эсмаральда из коллекции \r\n\r\nДанае \r\n\r\nпроизводства фабрики</i></h1><h1><i>&nbsp;ПАМЕСА</i><br></h1>', '[\"15\",\"20\"]', '[\"5\"]', '[\"1\"]', 1, 1),
(8, 'Камелот Серый', 'BEL00-1', '690', '20', 'assets/images/product_image/64748df62d57d.jpg', '<p>\r\n\r\n</p><p><i></i></p><h1><i>Керамогранит Камелот серый из коллекции Камелот производства фабрики</i></h1><h1><i>&nbsp;БЕЛАНИ</i></h1><i><i><h1><b></b></h1><h1><b>&nbsp;\r\n\r\n\r\n</b></h1></i></i><p></p><b>\r\n\r\n</b><i><b></b></i><br><p></p>', '[\"14\",\"21\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(9, 'Денвер Серый', 'BEL00-2', '785', '20', 'assets/images/product_image/64748eb7cffa1.jpg', '<p><i><i></i></i></p><h1><i><i><br>Керамогранит Денвер Серый из коллекции Денвер производства фабрики</i></i></h1><h1><i><i>&nbsp;\r\n\r\nБЕЛАНИ\r\n\r\n</i></i></h1><p></p>\r\n\r\n<br><i><h1><br></h1>\r\n\r\n\r\n<i><h1></h1><h1></h1></i></i>\r\n\r\n<br>', '[\"14\",\"22\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(10, 'Норд Серый', 'BEL00-3', '817', '20', 'assets/images/product_image/64748f340fe74.jpg', '<p><i><i></i></i></p><h1></h1><i><i>\r\n\r\n<i><i><h1><br>Керамогранит Норд Серый из коллекции Норд производства фабрики</h1><h1>&nbsp;\r\n\r\nБЕЛАНИ\r\n\r\n</h1></i></i>\r\n\r\n<br></i></i><p></p>\r\n\r\n<br>', '[\"14\",\"21\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(11, 'Алькор Бежевый', 'BEL00-4', '918', '20', 'assets/images/product_image/6474902ea7cac.jpg', '<p><i><br>\r\n\r\n<i></i></i></p><h1><i><i>Керамогранит Алькор Бежевый из коллекции Алькор производства фабрики</i></i></h1><h1><i><i>&nbsp;БЕЛАНИ</i></i></h1><p></p>\r\n\r\n<br>', '[\"15\",\"23\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(12, 'Амалфи Серый', 'BEL00-5', '986', '15', 'assets/images/product_image/6474901b4904e.jpg', '<p>\r\n\r\n</p><p><i><i></i></i></p><h1><i><i><br>Керамогранит Амалфи Серый из коллекции Амалфи производства фабрики</i></i></h1><h1><i><i>&nbsp;БЕЛАНИ</i></i></h1><p></p><br>\r\n\r\n<br><p></p>', '[\"14\",\"21\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(13, 'Борнео Белый', 'BEL00-6', '986', '20', 'assets/images/product_image/6474909553660.jpg', '<p>\r\n\r\n</p><p><i><i></i></i></p>\r\n\r\n<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Борнео Белый из коллекции Борнео производства фабрики</i></i></h1><h1><i><i>&nbsp;БЕЛАНИ</i></i></h1><br>\r\n\r\n<br><p></p><br>\r\n\r\n<br><p></p>', '[\"26\",\"21\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(14, 'Лайфстоун Коричневый', 'BEL00-7', '986', '20', 'assets/images/product_image/6474919b9b3cd.jpg', '<p>\r\n\r\n\r\n\r\n</p><h1><i><i><br>Керамогранит Лайфстоун Коричневый из коллекции \r\n\r\nЛайфстоун \r\n\r\nпроизводства&nbsp;</i></i></h1><h1><i><i>фабрики БЕЛАНИ</i></i></h1><h1><i><i>&nbsp;</i></i></h1><br>\r\n\r\n\r\n\r\n<br><p></p>', '[\"16\",\"21\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(15, 'Нетания Микс', 'BEL00-8', '1184', '20', 'assets/images/product_image/647491f626db9.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Нетания Микс из коллекции \r\n\r\nНетания \r\n\r\nпроизводства фабрики</i></i></h1><h1><i><i>&nbsp;БЕЛАНИ</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"15\",\"24\"]', '[\"6\"]', '[\"2\"]', 1, 1),
(16, 'Таганай Элегант', 'GRA00-1', '1582', '20', 'assets/images/product_image/6474926ecda0e.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Таганай Элегант из коллекции \r\n\r\nТаганай \r\n\r\nпроизводства фабрики</i></i></h1><h1><i><i>&nbsp;ГРАНИТЕЯ</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"14\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(17, 'Конжак Элегант', 'GRA00-2', '1582', '20', 'assets/images/product_image/647492cd36bfc.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Конжак Элегант из коллекции \r\n\r\nКонжак \r\n\r\nпроизводства фабрики</i></i></h1><h1><i><i>&nbsp;ГРАНИТЕЯ</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"14\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(18, 'Сунгуль Бежевый', 'GRA00-3', '1582', '16', 'assets/images/product_image/6474935c22766.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Сунгуль Бежевый из коллекции \r\n\r\nСунгуль \r\n\r\nпроизводства фабрики</i></i></h1><h1><i><i>&nbsp;ГРАНИТЕЯ</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"15\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(19, 'Исет Элегант', 'GRA00-4', '2152', '15', 'assets/images/product_image/64749416c982f.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Исет Элегант из коллекции Исет производства фабрики</i></i></h1><h1><i><i>&nbsp;ГРАНИТЕЯ</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"15\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(20, 'Пайер Серый', 'GRA00-5', '2152', '20', 'assets/images/product_image/647494837527f.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Пайер Серый из коллекции Пайер производства фабрики</i></i></h1><h1><i><i>&nbsp;ГРАНИТЕЯ</i></i></h1><br><br><p></p>', '[\"14\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(21, 'Караташ Синевато-Черный', 'GRA00-6', '2845', '0', 'assets/images/product_image/64749544e8094.jpg', '<p>\r\n\r\n</p><h1><i><i><br>Керамогранит Караташ Синевато-Черный из коллекции Караташ производства&nbsp;</i></i></h1><h1><i><i>фабрики ГРАНИТЕЯ</i></i></h1><h1><i><i>&nbsp;&nbsp;</i></i></h1><br>\r\n\r\n<br><p></p>', '[\"17\",\"27\"]', '[\"7\"]', '[\"3\"]', 1, 1),
(22, 'тестовый', 'test00-1', '600', '20', 'assets/images/product_image/64804f51a1a67.jpg', '<p>test</p>', '[\"15\",\"22\"]', '[\"5\"]', '[\"2\"]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'Рабочий городок', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@gmail.com', 'Suiun', 'Baiyshov', '+996770020300', 1),
(2, 'testuser', '$2y$10$qhzIamCToeUn.rulhP55NOFO18v4hVp3ZAknN1ykR4e9UyR0s6XO2', 'testuser@gmail.com', 'Test', 'Testov', '0770121232', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
