-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2018 at 09:06 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eration`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddealers`
--

CREATE TABLE IF NOT EXISTS `adddealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealername` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `aadhar` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `adddealers`
--

INSERT INTO `adddealers` (`id`, `dealername`, `district`, `place`, `address`, `email`, `aadhar`) VALUES
(3, 'KDFJWF', 'Thiruvananthapuram', 'WEFWSEF', 'WEFGWSEF', 'fasnayoosaf83@gmail.com', '21435'),
(4, 'RANJU', 'Kollam', 'SDCASDAS', 'SFASDASD', 'ranj@gmail.com', '12435'),
(5, '', '', '', '', '', ''),
(6, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'siya', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE IF NOT EXISTS `applied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumername` varchar(30) NOT NULL,
  `aadhar` int(11) NOT NULL,
  `address` text NOT NULL,
  `code` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`id`, `consumername`, `aadhar`, `address`, `code`) VALUES
(1, 'dilu', 12434345, 'dfgregrg', '0'),
(2, 'feasfwsfse', 2423, 'sfsdf', '0'),
(3, '', 0, '', '0'),
(4, 'dilu', 12434345, 'dfgregrg', '0'),
(5, 'dilu', 12434345, 'dfgregrg', '0'),
(6, 'dilu', 12434345, 'dfgregrg', 'RC495'),
(7, '', 0, '', 'RC975'),
(8, '', 0, '', 'RC501'),
(9, 'dilu', 12434345, 'dfgregrg', 'RC593'),
(10, 'dilu', 12434345, 'dfgregrg', 'RC456'),
(11, 'km', 0, 'hgvyhgv', 'RC164'),
(12, 'rhiy', 123445, 'ef4t', 'RC31'),
(13, 'feasfwsfse', 2423, 'sfsdf', 'RC789'),
(14, 'rhiy', 12344, 'ef4t', 'RC525'),
(15, 'feasfwsfse', 2423, 'sfsdf', 'RC712'),
(16, 'sonumma', 12545465, 'dsjdugauydg', 'RC874'),
(17, 'km', 0, 'hgvyhgv', 'RC562');

-- --------------------------------------------------------

--
-- Table structure for table `applycards`
--

CREATE TABLE IF NOT EXISTS `applycards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumername` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `aadhar` varchar(30) NOT NULL,
  `dealername` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `applycards`
--

INSERT INTO `applycards` (`id`, `consumername`, `address`, `aadhar`, `dealername`) VALUES
(1, 'dilu', 'dfgregrg', '12434345', ''),
(2, 'km', 'hgvyhgv', 'jnjn', ''),
(3, 'feasfwsfse', 'sfsdf', '2423', ''),
(4, 'feasfwsfse', 'sfsdf', '2423', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, 'nidhi', 'hh cvvbhgjh', '8566598', ''),
(8, 'nidhi', 'hh cvvbhgjh', '8566598', ''),
(9, 'nidhi', 'hh cvvbhgjh', '8566598', ''),
(10, 'nidhi', 'hh cvvbhgjh', '8566555556', ''),
(11, 'nidhi', 'hh cvvbhgjh', '85665555564', ''),
(12, 'nidhi', 'hh cvvbhgjh', '856655555644', ''),
(13, 'rhiy', 'ef4t', '12344', 'maji'),
(14, 'rhiy', 'ef4t', '123445', 'maji'),
(15, 'ruydfyughf', 'fdyshftguyt', '41655474', ''),
(16, 'ranju', 'vennikkal', '896542235', ''),
(17, 'sdgffgjh', 'dfhtgfj', '12334', ''),
(18, 'cdvgrbht', 'gghthnjyjuy', '123456', ''),
(19, 'sonumma', 'dsjdugauydg', '12545465', 'maji'),
(20, 'majumma', 'jhfgvy', '6588596', 'maji');

-- --------------------------------------------------------

--
-- Table structure for table `dealerlogin`
--

CREATE TABLE IF NOT EXISTS `dealerlogin` (
  `dealername` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealerlogin`
--

INSERT INTO `dealerlogin` (`dealername`, `password`) VALUES
('maji', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sendcomplaint`
--

CREATE TABLE IF NOT EXISTS `sendcomplaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` text NOT NULL,
  `details` text NOT NULL,
  `dealername` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sendcomplaint`
--

INSERT INTO `sendcomplaint` (`id`, `about`, `details`, `dealername`) VALUES
(1, 'ruhtsfxrtyhrtxjy', 'wetvrfg4wqrcy7234jcrg4jjhijhbh', ''),
(2, 'siuriegh', 'reghtryht5r', ''),
(3, 'bhuhnkj', 'ftyfguyghi', 'maji');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockname` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usercomplaint`
--

CREATE TABLE IF NOT EXISTS `usercomplaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(30) NOT NULL,
  `details` varchar(30) NOT NULL,
  `consumername` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usercomplaint`
--

INSERT INTO `usercomplaint` (`id`, `about`, `details`, `consumername`) VALUES
(1, 'ration', 'time lag', 'ramu'),
(2, 'ration', 'bad', 'ramu'),
(3, 'ration', 'bad', 'ramu'),
(4, 'ration', 'time', 'ramu');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumername` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `consumername`, `password`) VALUES
(1, 'ramu', '123456');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
