-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 01 月 03 日 13:50
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `sys_tickets`
--

-- --------------------------------------------------------

--
-- 資料表結構 `browse`
--

CREATE TABLE `browse` (
  `id` int(11) NOT NULL,
  `memberID` char(5) NOT NULL,
  `browsetime` date DEFAULT NULL,
  `performID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `browse`
--

INSERT INTO `browse` (`id`, `memberID`, `browsetime`, `performID`) VALUES
(1, 'b1080', '2023-12-12', 'a1234'),
(2, 'a5201', '2023-09-10', 'c4856'),
(3, 'd8849', '2023-05-30', 'b1245'),
(4, 'a4568', '2023-11-05', 'b6562'),
(5, 'c8762', '2023-09-16', 'b7328'),
(6, 'c5467', '2023-07-11', 'c7124');

-- --------------------------------------------------------

--
-- 資料表結構 `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `memberID` char(5) NOT NULL,
  `cartime` date DEFAULT NULL,
  `tranID` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `car`
--

INSERT INTO `car` (`id`, `memberID`, `cartime`, `tranID`) VALUES
(1, 'b1080', '2023-12-13', 'a123456'),
(2, 'a5201', '2023-10-18', 'a543069'),
(3, 'd8849', '2023-11-25', 'b124567'),
(4, 'a4568', '2023-12-24', 'b656214'),
(5, 'c8762', '2023-10-05', 'b732846'),
(6, 'c5467', '2023-10-09', 'c712436');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `id` int(5) NOT NULL,
  `memberID` char(30) DEFAULT 'A',
  `personID` char(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `address` char(30) DEFAULT NULL,
  `email` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`id`, `memberID`, `personID`, `name`, `birthday`, `phone`, `address`, `email`) VALUES
(1, 'b1080', 'N152487694', '王曉明', '1998-07-12', 987645633, '桃園市', 'apple0000@gmail.com'),
(2, 'a5201', 'N254638792', '林子驗', '2003-11-25', 975612356, '台中市', 'qtfyg8486@gmail.com'),
(3, 'd8849', 'N124568255', '張昊廷', '1865-04-21', 945684255, '台南市', 'gyfyu84826@gmil.com'),
(4, 'a4568', 'N152354867', '彭于婷', '2001-10-09', 984652345, '高雄市', 'jyyfyygiho@gmail.com'),
(5, 'c8762', 'N229752452', '蕭孟諺', '1876-08-06', 942642645, '台北市', 'iihuigji@gmail.com'),
(6, 'c5467', 'N284962616', '付梓祥', '1816-06-18', 914462151, '新北市', 'ihuguhuihj@gmail.com'),
(16, 'm1234', '11050663', '銘傳', '2024-01-02', 123456789, '台北市', '123@mcu.edu.tw'),
(17, 's1234', '11220383', '蛙蛙', '3000-01-25', 0, '挖的發', 'ting20040125@gmail.com'),
(18, 'A', 'e', 'f', '2004-01-02', 1244, 'e', 'e'),
(19, 'A', 'r3r', 'jiejif', '3722-08-31', 9302, '3r9', 'r3r'),
(20, 'A', '3', 'Jinyu', '2003-01-03', 3, 'd', '3'),
(21, 'A', '11050663', 'Jinyu', '2000-01-01', 123456789, '台北市', '123@mcu.edu.tw'),
(22, 'A', '11050663', '銘傳', '2000-01-01', 123456789, '台北市', '123@mcu.edu.tw'),
(23, 'A', '11050663', '銘傳', '2000-01-01', 123456789, '台北市', '123@mcu.edu.tw'),
(24, 'A', '11050663', '銘傳', '2000-01-01', 123456789, '台北市', '123@mcu.edu.tw');

-- --------------------------------------------------------

--
-- 資料表結構 `oder_number`
--

CREATE TABLE `oder_number` (
  `id` int(11) NOT NULL,
  `memberID` char(5) DEFAULT NULL,
  `cartime` date DEFAULT current_timestamp(),
  `performID` char(5) DEFAULT NULL,
  `amount` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `oder_number`
--

INSERT INTO `oder_number` (`id`, `memberID`, `cartime`, `performID`, `amount`) VALUES
(1, 'b1080', '2023-12-13', 'a1234', 2),
(2, 'a5201', '2023-10-18', 'c4856', 3),
(3, 'd8849', '2023-11-25', 'b1245', 1),
(4, 'a4568', '2023-12-24', 'b6562', 4),
(5, 'c8762', '2023-10-05', 'b7328', 2),
(6, 'c5467', '2023-10-09', 'c7124', 8),
(7, 'b1080', NULL, 'F1823', 1),
(8, 'b1080', '2024-01-01', 'F1823', 1),
(9, 'b1080', '2024-01-01', 'F1823', 1),
(10, 'b1080', '2024-01-01', 'F1823', 1),
(11, 'b1080', '2024-01-01', 'F1823', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `performance`
--

CREATE TABLE `performance` (
  `id` int(11) NOT NULL,
  `performID` char(5) NOT NULL,
  `performname` varchar(10) DEFAULT NULL,
  `unitprice` int(4) DEFAULT NULL,
  `place` varchar(5) DEFAULT NULL,
  `category` varchar(3) DEFAULT NULL,
  `time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `performance`
--

INSERT INTO `performance` (`id`, `performID`, `performname`, `unitprice`, `place`, `category`, `time`) VALUES
(1, 'a1234', '陳恭恩的舞蹈人生', 1500, '台中歌劇院', '舞蹈類', '2024-06-07'),
(2, 'c4856', '小王子', 1450, '台中歌劇院', '戲劇類', '2023-12-27'),
(3, 'b1245', '悲慘世界', 1000, '台北歌劇院', '音樂劇', '2024-07-09'),
(4, 'b6562', '吳思念巡迴演唱會', 800, '台北小巨蛋', '演唱會', '2025-09-29'),
(5, 'b7328', '迪士尼100周年', 600, '台中歌劇院', '舞台劇', '2024-11-16'),
(6, 'c7124', '宮崎駿', 1800, '台北歌劇院', '音樂會', '2023-07-28');

-- --------------------------------------------------------

--
-- 資料表結構 `performer`
--

CREATE TABLE `performer` (
  `id` int(11) NOT NULL,
  `performID` char(5) NOT NULL,
  `performername` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `performer`
--

INSERT INTO `performer` (`id`, `performID`, `performername`) VALUES
(1, 'a1234', '陳恭恩'),
(2, 'c4856', '李曦瑞'),
(3, 'b1245', '朴寬停'),
(4, 'b6562', '吳思念'),
(5, 'b7328', '溫子浩'),
(6, 'c7124', '任契鮮');

-- --------------------------------------------------------

--
-- 資料表結構 `point`
--

CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `tranID` int(11) NOT NULL,
  `performID` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `point`
--

INSERT INTO `point` (`id`, `tranID`, `performID`, `amount`, `point`) VALUES
(0, 1, 2, 3, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `tranID` char(7) NOT NULL,
  `performID` char(5) NOT NULL,
  `amount` int(4) DEFAULT NULL,
  `saleprice` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `record`
--

INSERT INTO `record` (`id`, `tranID`, `performID`, `amount`, `saleprice`) VALUES
(1, 'a123456', 'a1234', 2, 1500),
(2, 'a543069', 'c4856', 3, 1450),
(3, 'b124567', 'b1245', 1, 1000),
(4, 'b656214', 'b6562', 4, 800),
(5, 'b732846', 'b7328', 2, 600),
(6, 'c712436', 'c7124', 8, 1800);

-- --------------------------------------------------------

--
-- 資料表結構 `Transaction`
--

CREATE TABLE `Transaction` (
  `id` int(11) NOT NULL,
  `tranID` char(7) NOT NULL,
  `transMid` char(5) NOT NULL,
  `method` varchar(4) DEFAULT NULL,
  `transtime` date DEFAULT NULL,
  `bankID` char(3) NOT NULL,
  `bankname` varchar(10) DEFAULT NULL,
  `cardtype` char(4) NOT NULL,
  `cardID` char(12) NOT NULL,
  `dueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `Transaction`
--

INSERT INTO `Transaction` (`id`, `tranID`, `transMid`, `method`, `transtime`, `bankID`, `bankname`, `cardtype`, `cardID`, `dueDate`) VALUES
(1, 'a123456', 'b1080', '信用卡', '2023-12-13', '004', '台灣銀行', 'visa', '485262348652', '0000-00-00'),
(2, 'a543069', 'a5201', '信用卡', '2023-10-18', '012', '台北富邦', 'visa', '588452522655', '0000-00-00'),
(3, 'b124567', 'd8849', '信用卡', '2023-11-25', '053', '台中銀行', 'jcb', '515226262562', '0000-00-00'),
(4, 'b656214', 'a4568', '信用卡', '2023-12-24', '162', '彰化六信', 'visa', '155254852255', '0000-00-00'),
(5, 'b732846', 'c8762', '信用卡', '2023-10-05', '822', '中國信託', 'jcb', '548225859665', '0000-00-00'),
(6, 'c712436', 'c5467', '信用卡', '2023-10-09', '053', '台中銀行', 'jcb', '514482659522', '0000-00-00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `browse`
--
ALTER TABLE `browse`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `oder_number`
--
ALTER TABLE `oder_number`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `performer`
--
ALTER TABLE `performer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `browse`
--
ALTER TABLE `browse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `oder_number`
--
ALTER TABLE `oder_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `performer`
--
ALTER TABLE `performer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Transaction`
--
ALTER TABLE `Transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
