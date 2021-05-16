-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:27 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `answer_pretest`
-- 

CREATE TABLE `answer_pretest` (
  `answer_id` int(11) NOT NULL auto_increment,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY  (`answer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `answer_pretest`
-- 

INSERT INTO `answer_pretest` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES 
(5, 2, 'a', 'A'),
(6, 2, 'b', 'B'),
(7, 2, 'c', 'C'),
(8, 2, 'd', 'D'),
(9, 3, 'B', 'A'),
(10, 3, 'V', 'B'),
(11, 3, 'V', 'C'),
(12, 3, 'VH', 'D'),
(13, 7, 'ab', 'A'),
(14, 7, 'b', 'B'),
(15, 7, 'c', 'C'),
(16, 7, 'd', 'D'),
(17, 9, 'dsds', 'A'),
(18, 9, 'sdds', 'B'),
(19, 9, 'sdds', 'C'),
(20, 9, 'sdsd', 'D'),
(21, 10, 'dsds', 'A'),
(22, 10, 'sdsd', 'B'),
(23, 10, 'sdsd', 'C'),
(24, 10, 'sdsd', 'D'),
(25, 11, 'A', 'A'),
(26, 11, 'B', 'B'),
(27, 11, 'C', 'C'),
(28, 11, 'D', 'D'),
(29, 12, 'A', 'A'),
(30, 12, 'b', 'B'),
(31, 12, 'c', 'C'),
(32, 12, 'd', 'D'),
(33, 12, 'a', 'A'),
(34, 12, 'b', 'B'),
(35, 12, 'c', 'C'),
(36, 12, 'd', 'D');
