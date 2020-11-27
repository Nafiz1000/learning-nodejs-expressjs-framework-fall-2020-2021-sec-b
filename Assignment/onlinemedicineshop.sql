-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 07:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemedicineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unitprice` float NOT NULL,
  `VendorName` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `unitprice`, `VendorName`, `quantity`, `Type`) VALUES
(1, 'Napa', 10, 'Square Pharma', 1000, 'Peracitalmol'),
(2, 'Nksaldfsdkgfa', 321, 'sdfsdsdbgf', 2134, 'Tablet'),
(3, 'Peracitamol', 2, 'Beximco', 1000, 'Tablet'),
(4, 'Sergel 20', 7, 'SKF Pharma', 2000, 'Capsule'),
(5, 'Purisal', 80, 'Acme Pharma', 1000, 'Syrup'),
(6, 'Napa Extra', 3, 'Acno Pharma', 100, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ContactNO` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `UserType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Password`, `Email`, `ContactNO`, `Address`, `UserType`) VALUES
(1, 'Nafiz', '1234', 'N@gmail.com', 2343456, 'Dhaka', 'admin'),
(2, 'Nahid', '1234', 'Na@gmail.com', 24253, 'Dhaka', 'admin'),
(3, 'Sadat Ebne', '1234', 's@gmail.com', 23423, 'Pabna', 'customer'),
(4, 'Miraz Hossain', '1234', 'm@gmail.com', 24253, 'Dhaka', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
