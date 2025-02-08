-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 10:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pattern` varchar(50) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `pattern`, `size`, `image_url`) VALUES
(1, 'Men\'s T-shirt', 'Men', 500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/713n+TxyfCL._AC_UL480_FMwebp_QL65_.jpg'),
(2, 'Men\'s T-shirt', 'Men', 600.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/712HMJxTDNL._AC_UL480_FMwebp_QL65_.jpg'),
(3, 'Men\'s T-shirt', 'Men', 750.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71rjzNln29L._AC_UL480_FMwebp_QL65_.jpg'),
(4, 'Men\'s T-shirt', 'Men', 900.00, 'Animal Print', 'XL', 'https://m.media-amazon.com/images/I/61r0PYFOONL._AC_UL480_FMwebp_QL65_.jpg'),
(5, 'Men\'s T-shirt', 'Men', 800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71rzKMArJZL._AC_UL480_FMwebp_QL65_.jpg'),
(6, 'Men\'s T-shirt', 'Men', 950.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71tFKdBeeoL._AC_UL480_FMwebp_QL65_.jpg'),
(7, 'Men\'s T-shirt', 'Men', 1100.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61kx2kkqqgL._AC_UL480_FMwebp_QL65_.jpg'),
(8, 'Men\'s T-shirt', 'Men', 1200.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/71T7niHab1L._AC_UL480_FMwebp_QL65_.jpg'),
(9, 'Men\'s T-shirt', 'Men', 650.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71QbkA8EUNL._AC_UL480_FMwebp_QL65_.jpg'),
(10, 'Men\'s T-shirt', 'Men', 700.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/81JUb2j7IXL._AC_UL480_FMwebp_QL65_.jpg'),
(11, 'Men\'s Jeans', 'Men', 1200.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51nW98RxOLL._AC_UL480_FMwebp_QL65_.jpg'),
(12, 'Men\'s Jeans', 'Men', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/613IzkOCyyL._AC_UL480_FMwebp_QL65_.jpg'),
(13, 'Men\'s Jeans', 'Men', 1800.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71qiGpqPibL._AC_UL480_FMwebp_QL65_.jpg'),
(14, 'Men\'s Jeans', 'Men', 2000.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/61PIAyOPNaL._AC_UL480_FMwebp_QL65_.jpg'),
(15, 'Men\'s Jeans', 'Men', 1700.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61hl4aM8pML._AC_UL480_FMwebp_QL65_.jpg'),
(16, 'Men\'s Jeans', 'Men', 1900.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/610NyBvOtoL._AC_UL480_FMwebp_QL65_.jpg'),
(17, 'Men\'s Jeans', 'Men', 2200.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81vFbu3AWRL._AC_UL480_FMwebp_QL65_.jpg'),
(18, 'Men\'s Jeans', 'Men', 2300.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/81F4JdoVFxL._AC_UL480_FMwebp_QL65_.jpg'),
(19, 'Men\'s Jeans', 'Men', 1600.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/61nECygaW5L._AC_UL480_FMwebp_QL65_.jpg'),
(20, 'Men\'s Jeans', 'Men', 1400.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/61mUoHoutyL._AC_UL480_FMwebp_QL65_.jpg'),
(21, 'Men\'s Shirt', 'Men', 1500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51ystSbVCQL._AC_UL480_FMwebp_QL65_.jpg'),
(22, 'Men\'s Shirt', 'Men', 1700.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/61phx3KDUOL._AC_UL480_FMwebp_QL65_.jpg'),
(23, 'Men\'s Shirt', 'Men', 2000.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71g0oTtIobL._AC_UL480_FMwebp_QL65_.jpg'),
(24, 'Men\'s Shirt', 'Men', 2200.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51T70SlCdbL._AC_UL480_FMwebp_QL65_.jpg'),
(25, 'Men\'s Shirt', 'Men', 1800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51u+d+dUcFL._AC_UL480_FMwebp_QL65_.jpg'),
(26, 'Men\'s Shirt', 'Men', 2100.00, 'Floral', 'S', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAFgAQ4DASIAAhEB'),
(27, 'Men\'s Shirt', 'Men', 2500.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71pDuS5NieL._AC_UL480_FMwebp_QL65_.jpg'),
(28, 'Men\'s Shirt', 'Men', 2400.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/61ZbKLlt0sL._AC_UL480_FMwebp_QL65_.jpg'),
(29, 'Men\'s Shirt', 'Men', 1900.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/71aaj6gK53L._AC_UL480_FMwebp_QL65_.jpg'),
(30, 'Men\'s Shirt', 'Men', 1600.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/51-1quAW+rL._AC_UL480_FMwebp_QL65_.jpg'),
(31, 'Women\'s Floral Dress', 'Women', 1800.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/51sSW-M+6FL._AC_UL480_FMwebp_QL65_.jpg'),
(32, 'Women\'s Maxi Dress', 'Women', 2200.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/613x7E3cSeL._AC_UL480_FMwebp_QL65_.jpg'),
(33, 'Women\'s Floral Dress', 'Women', 2500.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/618Z3EkZH-L._AC_UL480_FMwebp_QL65_.jpg'),
(34, 'Women\'s Casual Dress', 'Women', 1300.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61RzEIJhZ1L._AC_UL480_FMwebp_QL65_.jpg'),
(35, 'Women\'s Party Dress', 'Women', 3000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/41GRMztjViL._AC_UL480_FMwebp_QL65_.jpg'),
(36, 'Women\'s Evening Dress', 'Women', 3500.00, 'Animal Print', 'L', 'https://m.media-amazon.com/images/I/519TY3c-QRL._AC_UL480_FMwebp_QL65_.jpg'),
(37, 'Women\'s A-line Dress', 'Women', 1800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51JCeqweglL._AC_UL480_FMwebp_QL65_.jpg'),
(38, 'Women\'s Pencil Dress', 'Women', 2700.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/61Evd02MKvL._AC_UL480_FMwebp_QL65_.jpg'),
(39, 'Women\'s Wrap Dress', 'Women', 2000.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/61XCsrLeVBL._AC_UL480_FMwebp_QL65_.jpg'),
(40, 'Women\'s Sheath Dress', 'Women', 2600.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71KeAJwVM1L._AC_UL480_FMwebp_QL65_.jpg'),
(41, 'Women\'s Casual Shirt', 'Women', 1200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61Igx9EA7EL._AC_UL480_FMwebp_QL65_.jpg'),
(42, 'Women\'s Button-up Shirt', 'Women', 1500.00, 'Animal Print', 'L', 'https://m.media-amazon.com/images/I/814ovXNIQ1L._AC_UL480_FMwebp_QL65_.jpg'),
(43, 'Women\'s Cotton Shirt', 'Women', 1800.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/71uBhRRbcWL._AC_UL480_FMwebp_QL65_.jpg'),
(44, 'Women\'s Denim Shirt', 'Women', 2500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61RmXV-fzJL._AC_UL480_FMwebp_QL65_.jpg'),
(45, 'Women\'s Floral Print Shirt', 'Women', 2200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/71CFB0OZa5L._AC_UL480_FMwebp_QL65_.jpg'),
(46, 'Women\'s Sleeveless Shirt', 'Women', 1300.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51GpW5Sh0IL._AC_UL480_FMwebp_QL65_.jpg'),
(47, 'Women\'s Checked Shirt', 'Women', 1700.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/614zIYp6WuL._AC_UL480_FMwebp_QL65_.jpg'),
(48, 'Women\'s Linen Shirt', 'Women', 1900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61JM1HZC7zL._AC_UL480_FMwebp_QL65_.jpg'),
(49, 'Women\'s Silk Shirt', 'Women', 3000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61bHDKAY5iL._AC_UL480_FMwebp_QL65_.jpg'),
(50, 'Women\'s Peplum Shirt', 'Women', 2100.00, 'Floral', 'XL', 'https://m.media-amazon.com/images/I/61uvwsccqvL._AC_UL480_FMwebp_QL65_.jpg'),
(51, 'Women\'s Skinny Jeans', 'Women', 2500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71Qox1JaZeL._AC_UL480_FMwebp_QL65_.jpg'),
(52, 'Women\'s Bootcut Jeans', 'Women', 2700.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61kBiRSFWgL._AC_UL480_FMwebp_QL65_.jpg'),
(53, 'Women\'s High-Waisted Jeans', 'Women', 3000.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/612+ZjkLFoL._AC_UL480_FMwebp_QL65_.jpg'),
(54, 'Women\'s Slim Fit Jeans', 'Women', 2300.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71LDQFeazbL._AC_UL480_FMwebp_QL65_.jpg'),
(55, 'Women\'s Distressed Jeans', 'Women', 3500.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/41MvWE2nqTL._AC_UL480_FMwebp_QL65_.jpg'),
(56, 'Women\'s Straight Leg Jeans', 'Women', 2800.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61bXzcgxQPL._AC_UL480_FMwebp_QL65_.jpg'),
(57, 'Women\'s Bootcut Stretch Jeans', 'Women', 3200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61KqTDoNGNL._AC_UL480_FMwebp_QL65_.jpg'),
(58, 'Women\'s Wide-Leg Jeans', 'Women', 2700.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51t8a26N1UL._AC_UL480_FMwebp_QL65_.jpg'),
(59, 'Women\'s White Jeans', 'Women', 2000.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51KJBTtayUL._AC_UL480_FMwebp_QL65_.jpg'),
(60, 'Women\'s Cropped Jeans', 'Women', 2200.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51gYlh7CJFL._AC_UL480_FMwebp_QL65_.jpg'),
(61, 'Women\'s Cotton Kurti', 'Women', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51OPa7+gA4L._AC_UL480_FMwebp_QL65_.jpg'),
(62, 'Women\'s Printed Kurti', 'Women', 1800.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71A1ywVLI6L._AC_UL480_FMwebp_QL65_.jpg'),
(63, 'Women\'s Embroidered Kurti', 'Women', 2500.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71jEo2rWXbL._AC_UL480_FMwebp_QL65_.jpg'),
(64, 'Women\'s Anarkali Kurti', 'Women', 3000.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/717c4vneBpL._AC_UL480_FMwebp_QL65_.jpg'),
(65, 'Women\'s Long Kurti', 'Women', 2200.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61ImY6zh7UL._AC_UL480_FMwebp_QL65_.jpg'),
(66, 'Women\'s Georgette Kurti', 'Women', 2800.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/81tLl0cXiAL._AC_UL480_FMwebp_QL65_.jpg'),
(67, 'Women\'s A-Line Kurti', 'Women', 2000.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51suEsggRLL._AC_UL480_FMwebp_QL65_.jpg'),
(68, 'Women\'s Chikankari Kurti', 'Women', 3500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/615qoMwjBbL._AC_UL480_FMwebp_QL65_.jpg'),
(69, 'Women\'s Rayon Kurti', 'Women', 1700.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71f3S6ED4zL._AC_UL480_FMwebp_QL65_.jpg'),
(70, 'Women\'s Half Sleeve Kurti', 'Women', 1900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51SFQKuA0JL._AC_UL480_FMwebp_QL65_.jpg'),
(71, 'Kids\' Denim Shirt', 'Kids', 3500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71S7jmTL-OL._AC_UL480_FMwebp_QL65_.jpg'),
(72, 'Kids\' Plaid Shirt', 'Kids', 4200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/81GN4fxE1dL._AC_UL480_FMwebp_QL65_.jpg'),
(73, 'Kids\' Cotton Shirt', 'Kids', 3100.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/41QLB0Lz5-L._AC_UL480_FMwebp_QL65_.jpg'),
(74, 'Kids\' Checkered Shirt', 'Kids', 3800.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/91SVVsVL0gL._AC_UL480_FMwebp_QL65_.jpg'),
(75, 'Kids\' Hawaiian Shirt', 'Kids', 4500.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/61kBPJz5AfL._AC_UL480_FMwebp_QL65_.jpg'),
(76, 'Kids\' Long Sleeve Shirt', 'Kids', 3300.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/91TmycACS8L._AC_UL480_FMwebp_QL65_.jpg'),
(77, 'Kids\' Graphic Shirt', 'Kids', 4900.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71fbmyIZysL._AC_UL480_FMwebp_QL65_.jpg'),
(78, 'Kids\' Striped Shirt', 'Kids', 4700.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81pQePUSCYL._AC_UL480_FMwebp_QL65_.jpg'),
(79, 'Kids\' Party Shirt', 'Kids', 4100.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61NDmUiNRGL._AC_UL480_FMwebp_QL65_.jpg'),
(80, 'Kids\' Designer Shirt', 'Kids', 5000.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/81ReBxlDK-L._AC_UL480_FMwebp_QL65_.jpg'),
(81, 'Kids\' Denim Pants', 'Kids', 3200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61tAUaptGnL._AC_UL480_FMwebp_QL65_.jpg'),
(82, 'Kids\' Jogger Pants', 'Kids', 3500.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/81HWpyNaPmL._AC_UL480_FMwebp_QL65_.jpg'),
(83, 'Kids\' Cargo Pants', 'Kids', 3800.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71SkymFFSRL._AC_UL480_FMwebp_QL65_.jpg'),
(84, 'Kids\' Chino Pants', 'Kids', 4000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71RMjZ5MENL._AC_UL480_FMwebp_QL65_.jpg'),
(85, 'Kids\' Track Pants', 'Kids', 4200.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81kIxIU6qtL._AC_UL480_FMwebp_QL65_.jpg'),
(86, 'Kids\' Formal Pants', 'Kids', 4500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/81+r0BgLTqL._AC_UL480_FMwebp_QL65_.jpg'),
(87, 'Kids\' Skinny Pants', 'Kids', 4700.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/81Vvldnym0L._AC_UL480_FMwebp_QL65_.jpg'),
(88, 'Kids\' Sweatpants', 'Kids', 4900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71RMcw0EL-L._AC_UL480_FMwebp_QL65_.jpg'),
(89, 'Kids\' Beach Pants', 'Kids', 5000.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/61BUTnhvIFL._AC_UL480_FMwebp_QL65_.jpg'),
(90, 'Kids\' Designer Pants', 'Kids', 4800.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/51QTZIfWlQL._AC_UL480_FMwebp_QL65_.jpg'),
(91, 'Kids\' Floral Frock', 'Kids', 1200.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/51n+BnSV8ML._AC_UL480_FMwebp_QL65_.jpg'),
(92, 'Kids\' Party Frock', 'Kids', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51GfKoDuQwL._AC_UL480_FMwebp_QL65_.jpg'),
(93, 'Kids\' Velvet Frock', 'Kids', 1800.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51hUhgdBHQL._AC_UL480_FMwebp_QL65_.jpg'),
(94, 'Kids\' Lace Frock', 'Kids', 1900.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/51Z0-hX7LjL._AC_UL480_FMwebp_QL65_.jpg'),
(95, 'Kids\' Cotton Frock', 'Kids', 1300.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71Lo362obNL._AC_UL480_FMwebp_QL65_.jpg'),
(96, 'Kids\' Winter Frock', 'Kids', 2200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/61lSRjUyvfL._AC_UL480_FMwebp_QL65_.jpg'),
(97, 'Kids\' Casual Frock', 'Kids', 1100.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/61g3CB46P0L._AC_UL480_FMwebp_QL65_.jpg'),
(98, 'Kids\' Designer Frock', 'Kids', 2500.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/41VPQEHsDLL._AC_UL480_FMwebp_QL65_.jpg'),
(99, 'Kids\' Partywear Frock', 'Kids', 3000.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/51dpe5JdzsL._AC_UL480_FMwebp_QL65_.jpg'),
(100, 'Kids\' Printed Frock', 'Kids', 1400.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71mPHUkcxhL._AC_UL480_FMwebp_QL65_.jpg'),
(101, 'Men\'s T-shirt', 'Men', 500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/713n+TxyfCL._AC_UL480_FMwebp_QL65_.jpg'),
(102, 'Men\'s T-shirt', 'Men', 600.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/712HMJxTDNL._AC_UL480_FMwebp_QL65_.jpg'),
(103, 'Men\'s T-shirt', 'Men', 750.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71rjzNln29L._AC_UL480_FMwebp_QL65_.jpg'),
(104, 'Men\'s T-shirt', 'Men', 900.00, 'Animal Print', 'XL', 'https://m.media-amazon.com/images/I/61r0PYFOONL._AC_UL480_FMwebp_QL65_.jpg'),
(105, 'Men\'s T-shirt', 'Men', 800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71rzKMArJZL._AC_UL480_FMwebp_QL65_.jpg'),
(106, 'Men\'s T-shirt', 'Men', 950.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71tFKdBeeoL._AC_UL480_FMwebp_QL65_.jpg'),
(107, 'Men\'s T-shirt', 'Men', 1100.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61kx2kkqqgL._AC_UL480_FMwebp_QL65_.jpg'),
(108, 'Men\'s T-shirt', 'Men', 1200.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/71T7niHab1L._AC_UL480_FMwebp_QL65_.jpg'),
(109, 'Men\'s T-shirt', 'Men', 650.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71QbkA8EUNL._AC_UL480_FMwebp_QL65_.jpg'),
(110, 'Men\'s T-shirt', 'Men', 700.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/81JUb2j7IXL._AC_UL480_FMwebp_QL65_.jpg'),
(111, 'Men\'s Jeans', 'Men', 1200.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51nW98RxOLL._AC_UL480_FMwebp_QL65_.jpg'),
(112, 'Men\'s Jeans', 'Men', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/613IzkOCyyL._AC_UL480_FMwebp_QL65_.jpg'),
(113, 'Men\'s Jeans', 'Men', 1800.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71qiGpqPibL._AC_UL480_FMwebp_QL65_.jpg'),
(114, 'Men\'s Jeans', 'Men', 2000.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/61PIAyOPNaL._AC_UL480_FMwebp_QL65_.jpg'),
(115, 'Men\'s Jeans', 'Men', 1700.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61hl4aM8pML._AC_UL480_FMwebp_QL65_.jpg'),
(116, 'Men\'s Jeans', 'Men', 1900.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/610NyBvOtoL._AC_UL480_FMwebp_QL65_.jpg'),
(117, 'Men\'s Jeans', 'Men', 2200.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81vFbu3AWRL._AC_UL480_FMwebp_QL65_.jpg'),
(118, 'Men\'s Jeans', 'Men', 2300.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/81F4JdoVFxL._AC_UL480_FMwebp_QL65_.jpg'),
(119, 'Men\'s Jeans', 'Men', 1600.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/61nECygaW5L._AC_UL480_FMwebp_QL65_.jpg'),
(120, 'Men\'s Jeans', 'Men', 1400.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/61mUoHoutyL._AC_UL480_FMwebp_QL65_.jpg'),
(121, 'Men\'s Shirt', 'Men', 1500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51ystSbVCQL._AC_UL480_FMwebp_QL65_.jpg'),
(122, 'Men\'s Shirt', 'Men', 1700.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/61phx3KDUOL._AC_UL480_FMwebp_QL65_.jpg'),
(123, 'Men\'s Shirt', 'Men', 2000.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71g0oTtIobL._AC_UL480_FMwebp_QL65_.jpg'),
(124, 'Men\'s Shirt', 'Men', 2200.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51T70SlCdbL._AC_UL480_FMwebp_QL65_.jpg'),
(125, 'Men\'s Shirt', 'Men', 1800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51u+d+dUcFL._AC_UL480_FMwebp_QL65_.jpg'),
(126, 'Men\'s Shirt', 'Men', 2100.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/61fYGRZacsL._AC_UL480_FMwebp_QL65_.jpg'),
(127, 'Men\'s Shirt', 'Men', 2500.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71pDuS5NieL._AC_UL480_FMwebp_QL65_.jpg'),
(128, 'Men\'s Shirt', 'Men', 2400.00, 'Striped', 'XL', 'https://m.media-amazon.com/images/I/61ZbKLlt0sL._AC_UL480_FMwebp_QL65_.jpg'),
(129, 'Men\'s Shirt', 'Men', 1900.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/71aaj6gK53L._AC_UL480_FMwebp_QL65_.jpg'),
(130, 'Men\'s Shirt', 'Men', 1600.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/51-1quAW+rL._AC_UL480_FMwebp_QL65_.jpg'),
(131, 'Women\'s Floral Dress', 'Women', 1800.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/51sSW-M+6FL._AC_UL480_FMwebp_QL65_.jpg'),
(132, 'Women\'s Maxi Dress', 'Women', 2200.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/613x7E3cSeL._AC_UL480_FMwebp_QL65_.jpg'),
(133, 'Women\'s Floral Dress', 'Women', 2500.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/618Z3EkZH-L._AC_UL480_FMwebp_QL65_.jpg'),
(134, 'Women\'s Casual Dress', 'Women', 1300.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61RzEIJhZ1L._AC_UL480_FMwebp_QL65_.jpg'),
(135, 'Women\'s Party Dress', 'Women', 3000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/41GRMztjViL._AC_UL480_FMwebp_QL65_.jpg'),
(136, 'Women\'s Evening Dress', 'Women', 3500.00, 'Animal Print', 'L', 'https://m.media-amazon.com/images/I/519TY3c-QRL._AC_UL480_FMwebp_QL65_.jpg'),
(137, 'Women\'s A-line Dress', 'Women', 1800.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51JCeqweglL._AC_UL480_FMwebp_QL65_.jpg'),
(138, 'Women\'s Pencil Dress', 'Women', 2700.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/61Evd02MKvL._AC_UL480_FMwebp_QL65_.jpg'),
(139, 'Women\'s Wrap Dress', 'Women', 2000.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/61XCsrLeVBL._AC_UL480_FMwebp_QL65_.jpg'),
(140, 'Women\'s Sheath Dress', 'Women', 2600.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71KeAJwVM1L._AC_UL480_FMwebp_QL65_.jpg'),
(141, 'Women\'s Casual Shirt', 'Women', 1200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61Igx9EA7EL._AC_UL480_FMwebp_QL65_.jpg'),
(142, 'Women\'s Button-up Shirt', 'Women', 1500.00, 'Animal Print', 'L', 'https://m.media-amazon.com/images/I/814ovXNIQ1L._AC_UL480_FMwebp_QL65_.jpg'),
(143, 'Women\'s Cotton Shirt', 'Women', 1800.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/71uBhRRbcWL._AC_UL480_FMwebp_QL65_.jpg'),
(144, 'Women\'s Denim Shirt', 'Women', 2500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61RmXV-fzJL._AC_UL480_FMwebp_QL65_.jpg'),
(145, 'Women\'s Floral Print Shirt', 'Women', 2200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/71CFB0OZa5L._AC_UL480_FMwebp_QL65_.jpg'),
(146, 'Women\'s Sleeveless Shirt', 'Women', 1300.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51GpW5Sh0IL._AC_UL480_FMwebp_QL65_.jpg'),
(147, 'Women\'s Checked Shirt', 'Women', 1700.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/614zIYp6WuL._AC_UL480_FMwebp_QL65_.jpg'),
(148, 'Women\'s Linen Shirt', 'Women', 1900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61JM1HZC7zL._AC_UL480_FMwebp_QL65_.jpg'),
(149, 'Women\'s Silk Shirt', 'Women', 3000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61bHDKAY5iL._AC_UL480_FMwebp_QL65_.jpg'),
(150, 'Women\'s Peplum Shirt', 'Women', 2100.00, 'Floral', 'XL', 'https://m.media-amazon.com/images/I/61uvwsccqvL._AC_UL480_FMwebp_QL65_.jpg'),
(151, 'Women\'s Skinny Jeans', 'Women', 2500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71Qox1JaZeL._AC_UL480_FMwebp_QL65_.jpg'),
(152, 'Women\'s Bootcut Jeans', 'Women', 2700.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61kBiRSFWgL._AC_UL480_FMwebp_QL65_.jpg'),
(153, 'Women\'s High-Waisted Jeans', 'Women', 3000.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/612+ZjkLFoL._AC_UL480_FMwebp_QL65_.jpg'),
(154, 'Women\'s Slim Fit Jeans', 'Women', 2300.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71LDQFeazbL._AC_UL480_FMwebp_QL65_.jpg'),
(155, 'Women\'s Distressed Jeans', 'Women', 3500.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/41MvWE2nqTL._AC_UL480_FMwebp_QL65_.jpg'),
(156, 'Women\'s Straight Leg Jeans', 'Women', 2800.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61bXzcgxQPL._AC_UL480_FMwebp_QL65_.jpg'),
(157, 'Women\'s Bootcut Stretch Jeans', 'Women', 3200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61KqTDoNGNL._AC_UL480_FMwebp_QL65_.jpg'),
(158, 'Women\'s Wide-Leg Jeans', 'Women', 2700.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51t8a26N1UL._AC_UL480_FMwebp_QL65_.jpg'),
(159, 'Women\'s White Jeans', 'Women', 2000.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/51KJBTtayUL._AC_UL480_FMwebp_QL65_.jpg'),
(160, 'Women\'s Cropped Jeans', 'Women', 2200.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51gYlh7CJFL._AC_UL480_FMwebp_QL65_.jpg'),
(161, 'Women\'s Cotton Kurti', 'Women', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51OPa7+gA4L._AC_UL480_FMwebp_QL65_.jpg'),
(162, 'Women\'s Printed Kurti', 'Women', 1800.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/71A1ywVLI6L._AC_UL480_FMwebp_QL65_.jpg'),
(163, 'Women\'s Embroidered Kurti', 'Women', 2500.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71jEo2rWXbL._AC_UL480_FMwebp_QL65_.jpg'),
(164, 'Women\'s Anarkali Kurti', 'Women', 3000.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/717c4vneBpL._AC_UL480_FMwebp_QL65_.jpg'),
(165, 'Women\'s Long Kurti', 'Women', 2200.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/61ImY6zh7UL._AC_UL480_FMwebp_QL65_.jpg'),
(166, 'Women\'s Georgette Kurti', 'Women', 2800.00, 'Striped', 'S', 'https://m.media-amazon.com/images/I/81tLl0cXiAL._AC_UL480_FMwebp_QL65_.jpg'),
(167, 'Women\'s A-Line Kurti', 'Women', 2000.00, 'Solid', 'XL', 'https://m.media-amazon.com/images/I/51suEsggRLL._AC_UL480_FMwebp_QL65_.jpg'),
(168, 'Women\'s Chikankari Kurti', 'Women', 3500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/615qoMwjBbL._AC_UL480_FMwebp_QL65_.jpg'),
(169, 'Women\'s Rayon Kurti', 'Women', 1700.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71f3S6ED4zL._AC_UL480_FMwebp_QL65_.jpg'),
(170, 'Women\'s Half Sleeve Kurti', 'Women', 1900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51SFQKuA0JL._AC_UL480_FMwebp_QL65_.jpg'),
(171, 'Kids\' Denim Shirt', 'Kids', 3500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71S7jmTL-OL._AC_UL480_FMwebp_QL65_.jpg'),
(172, 'Kids\' Plaid Shirt', 'Kids', 4200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/81GN4fxE1dL._AC_UL480_FMwebp_QL65_.jpg'),
(173, 'Kids\' Cotton Shirt', 'Kids', 3100.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/41QLB0Lz5-L._AC_UL480_FMwebp_QL65_.jpg'),
(174, 'Kids\' Checkered Shirt', 'Kids', 3800.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/91SVVsVL0gL._AC_UL480_FMwebp_QL65_.jpg'),
(175, 'Kids\' Hawaiian Shirt', 'Kids', 4500.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/61kBPJz5AfL._AC_UL480_FMwebp_QL65_.jpg'),
(176, 'Kids\' Long Sleeve Shirt', 'Kids', 3300.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/91TmycACS8L._AC_UL480_FMwebp_QL65_.jpg'),
(177, 'Kids\' Graphic Shirt', 'Kids', 4900.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71fbmyIZysL._AC_UL480_FMwebp_QL65_.jpg'),
(178, 'Kids\' Striped Shirt', 'Kids', 4700.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81pQePUSCYL._AC_UL480_FMwebp_QL65_.jpg'),
(179, 'Kids\' Party Shirt', 'Kids', 4100.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/61NDmUiNRGL._AC_UL480_FMwebp_QL65_.jpg'),
(180, 'Kids\' Designer Shirt', 'Kids', 5000.00, 'Striped', 'M', 'https://m.media-amazon.com/images/I/81ReBxlDK-L._AC_UL480_FMwebp_QL65_.jpg'),
(181, 'Kids\' Denim Pants', 'Kids', 3200.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/61tAUaptGnL._AC_UL480_FMwebp_QL65_.jpg'),
(182, 'Kids\' Jogger Pants', 'Kids', 3500.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/81HWpyNaPmL._AC_UL480_FMwebp_QL65_.jpg'),
(183, 'Kids\' Cargo Pants', 'Kids', 3800.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/71SkymFFSRL._AC_UL480_FMwebp_QL65_.jpg'),
(184, 'Kids\' Chino Pants', 'Kids', 4000.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/71RMjZ5MENL._AC_UL480_FMwebp_QL65_.jpg'),
(185, 'Kids\' Track Pants', 'Kids', 4200.00, 'Striped', 'L', 'https://m.media-amazon.com/images/I/81kIxIU6qtL._AC_UL480_FMwebp_QL65_.jpg'),
(186, 'Kids\' Formal Pants', 'Kids', 4500.00, 'Solid', 'S', 'https://m.media-amazon.com/images/I/81+r0BgLTqL._AC_UL480_FMwebp_QL65_.jpg'),
(187, 'Kids\' Skinny Pants', 'Kids', 4700.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/81Vvldnym0L._AC_UL480_FMwebp_QL65_.jpg'),
(188, 'Kids\' Sweatpants', 'Kids', 4900.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/71RMcw0EL-L._AC_UL480_FMwebp_QL65_.jpg'),
(189, 'Kids\' Beach Pants', 'Kids', 5000.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/61BUTnhvIFL._AC_UL480_FMwebp_QL65_.jpg'),
(190, 'Kids\' Designer Pants', 'Kids', 4800.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/51QTZIfWlQL._AC_UL480_FMwebp_QL65_.jpg'),
(191, 'Kids\' Floral Frock', 'Kids', 1200.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/51n+BnSV8ML._AC_UL480_FMwebp_QL65_.jpg'),
(192, 'Kids\' Party Frock', 'Kids', 1500.00, 'Solid', 'M', 'https://m.media-amazon.com/images/I/51GfKoDuQwL._AC_UL480_FMwebp_QL65_.jpg'),
(193, 'Kids\' Velvet Frock', 'Kids', 1800.00, 'Solid', 'L', 'https://m.media-amazon.com/images/I/51hUhgdBHQL._AC_UL480_FMwebp_QL65_.jpg'),
(194, 'Kids\' Lace Frock', 'Kids', 1900.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/51Z0-hX7LjL._AC_UL480_FMwebp_QL65_.jpg'),
(195, 'Kids\' Cotton Frock', 'Kids', 1300.00, 'Animal Print', 'M', 'https://m.media-amazon.com/images/I/71Lo362obNL._AC_UL480_FMwebp_QL65_.jpg'),
(196, 'Kids\' Winter Frock', 'Kids', 2200.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/61lSRjUyvfL._AC_UL480_FMwebp_QL65_.jpg'),
(197, 'Kids\' Casual Frock', 'Kids', 1100.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/61g3CB46P0L._AC_UL480_FMwebp_QL65_.jpg'),
(198, 'Kids\' Designer Frock', 'Kids', 2500.00, 'Floral', 'M', 'https://m.media-amazon.com/images/I/41VPQEHsDLL._AC_UL480_FMwebp_QL65_.jpg'),
(199, 'Kids\' Partywear Frock', 'Kids', 3000.00, 'Floral', 'L', 'https://m.media-amazon.com/images/I/51dpe5JdzsL._AC_UL480_FMwebp_QL65_.jpg'),
(200, 'Kids\' Printed Frock', 'Kids', 1400.00, 'Floral', 'S', 'https://m.media-amazon.com/images/I/71mPHUkcxhL._AC_UL480_FMwebp_QL65_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
