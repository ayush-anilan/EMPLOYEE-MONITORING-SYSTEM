-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 01:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(3) NOT NULL,
  `clientname` varchar(100) NOT NULL,
  `assignedto` varchar(100) NOT NULL,
  `deadline` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'w'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `clientname`, `assignedto`, `deadline`, `status`) VALUES
(1, 'testclient', '1', 'null', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(3) NOT NULL,
  `clientname` varchar(100) NOT NULL,
  `clientaddress` varchar(100) NOT NULL,
  `clientmobile` varchar(50) NOT NULL,
  `clientemail` varchar(50) NOT NULL,
  `workdetails` varchar(500) NOT NULL,
  `income` varchar(40) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `completedate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `clientname`, `clientaddress`, `clientmobile`, `clientemail`, `workdetails`, `income`, `startdate`, `completedate`) VALUES
(1, 'testclient', 'THRISSUR', '9988776655', 'egopi@gmail.com', 'to create a website', '100000', '2022-01-01', '2022-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(3) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation`, `salary`, `description`) VALUES
(1, 'senior developer', '30000', ''),
(2, 'junior developer', '18000', ''),
(3, 'technical associate', '22000', ''),
(4, 'null', '5000', 'beginner level employee');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(5) NOT NULL,
  `empid` varchar(30) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `empage` varchar(50) NOT NULL,
  `empgender` varchar(50) NOT NULL,
  `empaddress` varchar(500) NOT NULL,
  `empdesignation` varchar(500) NOT NULL,
  `empmobile` varchar(20) NOT NULL,
  `empemail` varchar(40) NOT NULL,
  `emppassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empid`, `empname`, `empage`, `empgender`, `empaddress`, `empdesignation`, `empmobile`, `empemail`, `emppassword`) VALUES
(1, '1', 'gopi', '23', 'male', 'thrissur', 'testclient', '9988776655', 'gopi@gmail.com', 'gopi1234'),
(2, '2', 'ddd', '23', 'male', 'qqq', 'Technical Associate', '3333334455', 'iii@gmail.com', 'rrr'),
(3, '3', 'testemployee', '34', 'male', 'thrissur', 'developer', '9988774433', 'test@gmail.com', 'test1234');

-- --------------------------------------------------------

--
-- Table structure for table `idletime`
--

CREATE TABLE `idletime` (
  `id` int(3) NOT NULL,
  `totaltime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idletime`
--

INSERT INTO `idletime` (`id`, `totaltime`) VALUES
(1, '50');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(5) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `empdesignation` varchar(100) NOT NULL,
  `empsalary` varchar(100) NOT NULL,
  `empmonth` varchar(100) NOT NULL,
  `empovertime` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `empid`, `empname`, `empdesignation`, `empsalary`, `empmonth`, `empovertime`) VALUES
(6, '1', 'gopi', 'technical associate', '22000', 'Jan', '0'),
(7, '1', 'gopi', 'technical associate', '22000', 'feb', '0');

-- --------------------------------------------------------

--
-- Table structure for table `worklog`
--

CREATE TABLE `worklog` (
  `id` int(3) NOT NULL,
  `empid` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worklog`
--
ALTER TABLE `worklog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `worklog`
--
ALTER TABLE `worklog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
