-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 10:04 AM
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
-- Database: `mobibank`
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
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `ID` int(5) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Salary` varchar(10) NOT NULL,
  `Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`ID`, `UserName`, `Salary`, `Date`) VALUES
(5, 'Sadat Ebne', '10000', '24/11/2020'),
(9, 'admin', '5000', '24/11/2020');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `send` varchar(10) NOT NULL,
  `receive` varchar(10) NOT NULL,
  `balance` int(20) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `send`, `receive`, `balance`, `amount`, `date`) VALUES
(7, '1000', '500', 10000, 20000, '2020-04-02');

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
  `NID` int(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `UserType` varchar(20) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `UserName`, `Name`, `Password`, `Email`, `ContactNO`, `NID`, `Gender`, `UserType`, `Address`, `Image`) VALUES
(2, 'Nafiz', 'Nafiz Ahamed Nahid', '1234', 'Na@gmail.com', 12345677, 2123435324, 'Male', 'admin', 'Dhaka', '20200.jpg'),
(3, 'Nahid', 'nafizahmednahid', '12345', 'A@gmail.com', 23423, 123, 'male', 'admin', 'Dhaka', NULL),
(5, 'Sadat Ebne', 'Sadat', '1234', 's@gmail.com', 345346, 5345635, 'Male', 'manager', 'Pabna', NULL),
(7, 'Miraz Hossain', 'Miraz', '1234', 's@gmail.com', 24253, 5345635, 'Male', 'user', 'Dhaka', NULL),
(9, 'admin', 'n', '1234', 'A@gmail.com', 88, 123, 'male', 'manager', 'Dhaka', NULL),
(17, 'Rahim1', 'Rahim Hasan', '12345', 'r@gmail.com', 88, 123, 'male', 'admin', 'Dhaka', NULL),
(18, 'admin1', 'karim', '12345', 'a@gmail.com', 88, 123, 'male', 'admin', 'Dhaka', NULL),
(20, 'admin2', 'Hasan', '12345', 'a@gmail.com', 88, 123, 'male', 'admin', 'Dhaka', NULL),
(21, 'asfsdf', 'Nksaldfsdkgfa', '12345', 'a@gmail.com', 88, 123, 'male', 'admin', 'Dhaka', NULL),
(22, 'nafizahmednahid@gmail.com', 'Nksaldfsdkgfa', '12345', 'a@gmail.com', 88, 123, 'male', 'admin', 'Dhaka', NULL),
(23, 'Nafiz A', 'Nksaldfsdkgfa', '12345', 'a@gmail.com', 88, 567, 'male', 'admin', 'Dhaka', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empsalary`
--
ALTER TABLE `empsalary`
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
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
