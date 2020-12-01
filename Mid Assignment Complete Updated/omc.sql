-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 02:40 PM
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
-- Database: `omc`
--

-- --------------------------------------------------------

--
-- Table structure for table `empsalary`
--

CREATE TABLE `empsalary` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `salary` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `empsalary`
--

INSERT INTO `empsalary` (`id`, `username`, `salary`, `date`) VALUES
(1, 'shafin11', '10000', '2020-11-24'),
(2, 'mahin11', '500', '2020-11-24'),
(3, 'sagar111', '10000', '0000-00-00'),
(4, 'sagar111', '10000', '2020-11-25'),
(5, 'mahin11', '10000', '0000-00-00');

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
(3, 'Peracitamol', 2, 'Beximco', 1000, 'Tablet'),
(4, 'Sergel 20', 7, 'SKF Pharma', 2000, 'Capsule'),
(5, 'Purisal', 80, 'Acme Pharma', 1000, 'Syrup'),
(6, 'Napa Extra', 3, 'Acno Pharma', 100, 'Tablet'),
(8, 'Civit', 5, 'Square Pharma', 1000, 'Tablet'),
(9, 'Renidine', 5, 'Square Pharma', 50, 'Capsule');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Message` varchar(1000) NOT NULL,
  `SendFrom` varchar(20) NOT NULL,
  `SendTo` varchar(20) NOT NULL,
  `Date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Message`, `SendFrom`, `SendTo`, `Date`) VALUES
('hi', 'Nafiz', 'Sadat Ebne', 'Mon Nov 23 2020 00:48:35 GMT+0600 (Bangladesh Standard Time)'),
('hi', 'Sadat Ebne', 'Nafiz', 'Mon Nov 23 2020 00:49:18 GMT+0600 (Bangladesh Standard Time)');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `buy` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `MedicineName` varchar(50) NOT NULL,
  `amount` int(20) NOT NULL,
  `price` int(10) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `username`, `MedicineName`, `amount`, `price`, `date`) VALUES
(7, 'Miraz', 'Napa', 10, 20, '24/11/2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContactNO` int(11) NOT NULL,
  `NID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `UserType` varchar(20) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Name`, `Password`, `Email`, `ContactNO`, `NID`, `Gender`, `UserType`, `Address`, `Image`) VALUES
(2, 'Nafiz', 'Nafiz Ahamed Nahid', '1234', 'Na@gmail.com', 12345677, '0', 'Male', 'admin', 'Dhaka', '20200.jpg'),
(3, 'Nahid', 'nafizahmednahid', '12345', 'A@gmail.com', 23423, '0', 'male', 'admin', 'Dhaka', NULL),
(5, 'Sadat Ebne', 'Sadat', '1234', 's@gmail.com', 345346, '0', 'Male', 'manager', 'Pabna', NULL),
(7, 'Miraz Hossain', 'Miraz', '1234', 's@gmail.com', 24253, '0', 'Male', 'user', 'Dhaka', NULL),
(9, 'Nahid Ahamed', 'Nahid', '1234', 'A@gmail.com', 8845634, '0', 'male', 'manager', 'Dhaka', NULL),
(17, 'Rahim1', 'Rahim Hasan', '12345', 'r@gmail.com', 880234, '0', 'male', 'admin', 'Dhaka', NULL),
(32, 'admin11', 'Ahamed', '12345', 'a@gmail.com', 2147483647, '123', 'male', 'admin', 'Dhaka1204', NULL),
(33, 'Rifat Mahin', 'Rifat1', '1234', 's@gmail.com', 24253, '5345635', 'Male', 'user', 'Dhaka', NULL),
(35, 'Tony Stark', 'Stark', '1234', 's@gmail.com', 24253, '5345635', 'Male', 'user', 'Liberty city', NULL),
(36, 'nafizahmednahid@', 'Nksaldfsdkgfa', '12345', 'a@gmail.com', 2147483647, NULL, 'male', 'admin', 'Jurain,Dhaka1204', NULL),
(41, 'Jamil1', 'Jamil  ', '12345', 'A@gmail.com', 234235, '', 'male', 'user', 'Dhaka1204', NULL),
(42, 'Mahin1', 'Mahin', '12345', 'A@gmail.com', 234235, '', 'male', 'user', 'Dhaka', NULL),
(43, 'Rahman', 'Rahman Ali ', '12345', 'A@gmail.com', 234235, '', 'male', 'user', 'Cumilla', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empsalary`
--
ALTER TABLE `empsalary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empsalary`
--
ALTER TABLE `empsalary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
