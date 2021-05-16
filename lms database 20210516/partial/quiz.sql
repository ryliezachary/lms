-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:22 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `quiz`
-- 

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL auto_increment,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY  (`quiz_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `quiz`
-- 

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES 
(4, 'Quiz # 1', 'chapter 1', '2019-10-02 15:29:14', 20),
(5, 'quiz # 2', 'xzzxdd', '2019-10-02 15:46:16', 20),
(6, 'Quiz # 1', 'Chapter 1', '2019-10-08 16:36:59', 21),
(7, 'Test Quiz Title 1', 'Test Quiz Description 1', '2021-05-16 04:27:55', 21);
