-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 10:49 PM
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
-- Database: `dbdependent`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_tbl`
--

CREATE TABLE `brand_tbl` (
  `ID` int(11) NOT NULL,
  `Brand_Name` varchar(200) NOT NULL,
  `Created_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_tbl`
--

INSERT INTO `brand_tbl` (`ID`, `Brand_Name`, `Created_Date`) VALUES
(1, 'Ferrari', '2024-04-12 21:36:12'),
(2, 'Toyota\r\n', '2024-04-12 21:36:12'),
(3, 'Lexus', '2024-04-12 21:36:44'),
(4, 'Ford', '2024-04-12 21:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `model_tbl`
--

CREATE TABLE `model_tbl` (
  `ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  `Model_Name` varchar(200) NOT NULL,
  `Created_Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_tbl`
--

INSERT INTO `model_tbl` (`ID`, `Brand_ID`, `Model_Name`, `Created_Date`) VALUES
(1, 1, 'Ferrari 296 GTS', '2024-04-12 21:38:36'),
(2, 1, 'Ferrari F8 Spider', '2024-04-12 21:38:36'),
(3, 1, 'Ferrari Roma', '2024-04-12 21:39:59'),
(4, 2, 'LAND CRUISER', '2024-04-12 21:39:59'),
(5, 2, 'RAIZE', '2024-04-12 21:40:36'),
(6, 2, 'COROLLA CROSS', '2024-04-12 21:40:36'),
(7, 3, 'Lexus 300', '2024-04-12 21:41:36'),
(8, 3, 'Lexus 330', '2024-04-12 21:41:36'),
(9, 4, 'Mustang', '2024-04-14 03:41:58'),
(10, 4, 'Everest', '2024-04-14 03:41:58'),
(11, 1, 'Samnang Channy', '2024-04-14 03:44:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `model_tbl`
--
ALTER TABLE `model_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `model_tbl`
--
ALTER TABLE `model_tbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
