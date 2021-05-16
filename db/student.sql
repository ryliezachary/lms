-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2021 at 04:05 pm
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(219, 'PEDRO', 'PENDUKO', 24, '101', 'dbc0f004854457f59fb16ab863a3a1722cef553f', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(220, 'michael', 'sy', 25, '102', 'c8306ae139ac98f432932286151dc0ec55580eca', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(221, 'estilong', 'jonathan', 25, '103', '934385f53d1bd0c1b8493e44d0dfd4c8e88a04bb', 'uploads/Untitled.png', 'Registered'),
(222, 'calub', 'librado', 25, '104', '78a8efcbaaa1a9a30f9f327aa89d0b6acaaffb03', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(223, 'Rambo', 'Villanueva', 25, '105', 'e114c448f4ab8554ad14eff3d66dfeb3965ce8fc', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(224, 'Belinda', 'Dungan', 25, '106', '7224f997fc148baa0b7f81c1eda6fcc3fd003db0', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(225, 'Ryan', 'Bo', 24, '107', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
