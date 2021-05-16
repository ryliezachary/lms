-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:26 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `student_class_quiz`
-- 

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL auto_increment,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY  (`student_class_quiz_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- 
-- Dumping data for table `student_class_quiz`
-- 

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES 
(41, 6, 221, '0', '2'),
(42, 7, 221, '0', '1'),
(44, 8, 221, '0', '0'),
(45, 9, 224, '0', '0'),
(46, 0, 21, '0', '0'),
(47, 10, 221, '0', '0');
