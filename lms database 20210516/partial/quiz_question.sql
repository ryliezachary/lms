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
-- Table structure for table `quiz_question`
-- 

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL auto_increment,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY  (`quiz_question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `quiz_question`
-- 

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES 
(6, 4, '<p>dsd</p>\r\n', 1, 0, '2019-10-02 15:29:33', 'A'),
(7, 4, '<p>ddsds</p>\r\n', 2, 0, '2019-10-02 15:30:02', 'True'),
(11, 5, '<p>fddf</p>\r\n', 1, 0, '2019-10-07 10:41:48', ''),
(12, 6, '<p>Quixz 1.AA</p>\r\n', 1, 0, '2019-10-08 16:37:32', 'A'),
(13, 6, '<p>Quiz 2..fasdfa</p>\r\n', 1, 0, '2019-10-08 16:38:15', 'A'),
(14, 7, '<p>True or false question</p>\r\n', 2, 0, '2021-05-16 04:39:20', 'True'),
(15, 7, '<p>How many kb are there in 1GB?</p>\r\n', 3, 0, '2021-05-16 04:53:08', '1000000'),
(16, 7, '<p>What is your prefer web&nbsp;programming language and Why?</p>\r\n', 4, 0, '2021-05-16 06:03:02', 'Some example web programming language C#, Java, PHP, Phyton, Javascript.'),
(17, 189, '<p>Slingle Line question?</p>\r\n', 3, 0, '2021-05-16 06:51:27', 'Single line recommended answer.');
