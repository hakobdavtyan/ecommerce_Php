-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 07 2021 г., 21:39
-- Версия сервера: 5.6.43-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecomerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Hp'),
(2, 'DELL'),
(3, 'Motorola'),
(4, 'Son Eracson'),
(5, 'LG'),
(6, 'Apple');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(0, '127.0.0.1', 0),
(0, '127.0.0.1', 0),
(10, '127.0.0.1', 0),
(2, '127.0.0.1', 0),
(1, '127.0.0.1', 0),
(12, '127.0.0.1', 0),
(7, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Computers'),
(3, 'Mobiles'),
(4, 'Cameras'),
(5, 'iPads'),
(6, 'Tablets'),
(7, 'iPads'),
(8, 'iPhones'),
(9, 'gbdfbgf'),
(10, ''),
(11, ''),
(12, ''),
(13, 'eeeeeeeeeeeeeeee'),
(14, 'rrrrrrrrrrrrrrrr');

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_city` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(1, '127.0.0.1', 'wali', 'awb@gmail.com', '123', 'Armenia', 'Karachi', '44345435', '23423 defds', 'Без названия (3).jpg'),
(3, '127.0.0.1', 'wali', '12@gmail.com', '122', 'Armenia', 'Karachi', '44345435', '23423 defds', 'Без названия (3).jpg'),
(4, '127.0.0.1', 'Hakob1', 'hakob.davtyan.93@mail.ru', '1111', 'Armenia', 'Karachifg', '5454945', '526452', 'Apple_new-iphone-se-white_04152020_big.jpg.large.jpg'),
(5, '127.0.0.1', 'Davtyan', 'Hakob66@mail.ru', '1111', 'France', 'Karachifg', '2543', '56342132', 'Без названия (3).jpg'),
(6, '127.0.0.1', 'colak1', 'colak@mail.ru', '111', 'Armenia', 'Karachi', '44345435', '', 'images (1).jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8_unicode_ci NOT NULL,
  `product_keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'hp', 600, '<p>sedfcs</p>', 'samsung-nx-300.jpg.optimal camera.jpg', 'Hp'),
(2, 1, 2, 'DELL', 700, '<p>6555555756gfhf</p>', 'DELL.jpg', 'DELL'),
(4, 3, 5, 'LG', 500, '<p>7y8jknkj</p>', 'LG G9.jpg', 'lg'),
(6, 3, 6, 'apple', 400, '<p>hujgtuyt</p>', 'Apple_new-iphone-se-white_04152020_big.jpg.large.jpg', 'apple'),
(7, 3, 3, 'motorola', 500, '<p>guytuyf</p>', 'motorola-one-5g-2020.jpg', 'motorola'),
(8, 3, 3, 'motorola', 500, '<p>guytuyf</p>', 'motorola-one-5g-2020.jpg', 'motorola'),
(9, 4, 4, 'Toshiba Camera', 250, '<p>kjgfdsgfbnfvb</p>', 'images.jpg', 'Toshiba,cameras,Special'),
(10, 3, 4, 'Sony Tablet', 350, '<p>nhbgvfdyuhjjk</p>', 'Без названия.jpg', 'Sony,cameras,Special'),
(11, 1, 2, 'Dell pink Laptop', 500, 'this is very nice laptop and I like it very much.....', 'DELL.jpg', 'DELL'),
(12, 1, 1, 'hp', 400, 'ujyukm', 'HP.jpg', 'tfuigktuhikj'),
(13, 8, 6, 'apple', 400, '<p>o;hjklknjkl</p>', 'Apple_new-iphone-se-white_04152020_big.jpg.large.jpg', 'klhjlnhj');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
