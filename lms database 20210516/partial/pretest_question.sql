-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:23 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `pretest_question`
-- 

CREATE TABLE `pretest_question` (
  `quiz_question_id` int(11) NOT NULL auto_increment,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `teacher_class_id` int(11) default NULL,
  `qtype` varchar(100) default NULL,
  PRIMARY KEY  (`quiz_question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `pretest_question`
-- 

INSERT INTO `pretest_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`, `teacher_class_id`, `qtype`) VALUES 
(2, 187, '<p>Q1</p>\r\n', 1, 0, '2019-09-17 20:33:06', 'A', 187, 'pretest'),
(3, 187, '<p>Q2</p>\r\n', 1, 0, '2019-09-17 20:40:48', 'D', 187, 'pretest'),
(4, 187, '<p>jkjk</p>\r\n', 2, 0, '2019-09-17 20:44:28', 'False', 187, 'pretest'),
(5, 188, '<p>eee</p>\r\n', 2, 0, '2019-09-18 11:54:14', 'True', 188, 'pretest'),
(6, 188, '<p>rrr</p>\r\n', 2, 0, '2019-09-18 11:54:32', 'True', 188, 'pretest'),
(7, 188, '<p>yyy</p>\r\n', 1, 0, '2019-09-18 11:55:00', 'A', 188, 'pretest'),
(8, 188, '<p>sss</p>\r\n', 2, 0, '2019-10-02 16:16:11', 'True', 188, 'posttest'),
(9, 187, '<p>dsds</p>\r\n', 1, 0, '2019-10-07 11:10:34', 'C', 187, 'pretest'),
(10, 187, '<p>sdsd</p>\r\n', 1, 0, '2019-10-07 11:30:49', 'B', 187, 'posttest'),
(11, 189, '<p>Question 1</p>\r\n', 1, 0, '2019-10-08 16:30:23', 'A', 189, 'pretest'),
(12, 189, '<p>qUYESTIon 2</p>\r\n', 1, 0, '2019-10-08 16:30:47', 'A', 189, 'pretest'),
(13, 189, '<p>Single line question 1?</p>\r\n', 3, 0, '2021-05-16 07:04:09', 'Single line recommended question 1.', 189, 'pretest'),
(14, 189, '<p>Multi line question 1?</p>\r\n', 4, 0, '2021-05-16 07:05:22', 'Multi line recommended question 1.', 189, 'pretest'),
(15, 189, '<p>Slingle Line question 2?</p>\r\n', 3, 0, '2021-05-16 07:09:55', 'Slingle Line recommended question 2.', 189, 'posttest'),
(16, 189, '<p>Multi Line&nbsp;question 2.</p>\r\n', 4, 0, '2021-05-16 07:10:40', 'Multi Line recommended question 2.', 189, 'posttest');
