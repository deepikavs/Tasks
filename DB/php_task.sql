-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2018 at 10:15 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `php_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `sample_table`
--

CREATE TABLE IF NOT EXISTS `sample_table` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `words` varchar(100) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sample_table`
--

INSERT INTO `sample_table` (`s_id`, `words`) VALUES
(1, 'horse'),
(2, 'dog'),
(3, 'zebra'),
(4, 'elephant');

-- --------------------------------------------------------

--
-- Table structure for table `wordcount_details`
--

CREATE TABLE IF NOT EXISTS `wordcount_details` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT,
  `words` varchar(100) NOT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `wordcount_details`
--

INSERT INTO `wordcount_details` (`w_id`, `words`) VALUES
(1, 'a'),
(2, 'horse'),
(3, 'and'),
(4, 'dog'),
(5, 'a'),
(6, 'horse'),
(7, 'and'),
(8, 'dog'),
(9, 'a'),
(10, 'horse'),
(11, 'and'),
(12, 'dog'),
(13, 'a'),
(14, 'horse'),
(15, 'and'),
(16, 'dog'),
(17, 'a'),
(18, 'horse'),
(19, 'and'),
(20, 'dog'),
(21, 'a'),
(22, 'horse'),
(23, 'and'),
(24, 'dog'),
(25, 'a'),
(26, 'horse'),
(27, 'and'),
(28, 'dog'),
(29, 'a'),
(30, 'horse'),
(31, 'and'),
(32, 'dog'),
(33, 'a'),
(34, 'horse'),
(35, 'and'),
(36, 'dog'),
(37, 'a'),
(38, 'horse'),
(39, 'and'),
(40, 'dog'),
(41, 'a'),
(42, 'horse'),
(43, 'and'),
(44, 'dog'),
(45, 'a'),
(46, 'horse'),
(47, 'and'),
(48, 'dog'),
(49, 'a'),
(50, 'horse'),
(51, 'and'),
(52, 'dog'),
(53, 'a'),
(54, 'horse'),
(55, 'and'),
(56, 'dog'),
(57, 'a'),
(58, 'horse'),
(59, 'and'),
(60, 'dog'),
(61, 'a'),
(62, 'horse'),
(63, 'and'),
(64, 'dog'),
(65, 'a'),
(66, 'horse'),
(67, 'and'),
(68, 'dog'),
(69, 'a'),
(70, 'horse'),
(71, 'and'),
(72, 'dog'),
(73, 'a'),
(74, 'horse'),
(75, 'and'),
(76, 'dog'),
(77, 'a'),
(78, 'horse'),
(79, 'and'),
(80, 'dog');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
