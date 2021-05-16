-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:25 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `class_quiz`
-- 

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `file_id` int(10) default NULL,
  PRIMARY KEY  (`class_quiz_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `class_quiz`
-- 

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`, `file_id`) VALUES 
(8, 187, 3600, 4, 147),
(9, 189, 3600, 6, 148),
(10, 189, 60, 7, NULL);
