-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: May 16, 2021 at 02:29 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `capstone`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `activity_log`
-- 

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY  (`activity_log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `activity_log`
-- 

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES 
(11, 'teph', '2019-09-17 14:57:38', 'Add Subject ICT 101'),
(12, 'admin', '2019-09-18 11:39:17', 'Add Subject CSC 103'),
(13, 'admin', '2019-09-18 11:40:41', 'Add User juan');

-- --------------------------------------------------------

-- 
-- Table structure for table `answer`
-- 

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL auto_increment,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY  (`answer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `answer`
-- 

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES 
(1, 4, 'cv', 'A'),
(2, 4, 'cv', 'B'),
(3, 4, 'cvcv', 'C'),
(4, 4, 'cvvc', 'D'),
(5, 5, 'sdsd', 'A'),
(6, 5, 'sdsd', 'B'),
(7, 5, 'sdsd', 'C'),
(8, 5, 'sdds', 'D'),
(9, 6, 'ds', 'A'),
(10, 6, 'dssd', 'B'),
(11, 6, 'dssd', 'C'),
(12, 6, 'sdsd', 'D'),
(13, 11, 'a', 'A'),
(14, 11, 'sdds', 'B'),
(15, 11, 'sdds', 'C'),
(16, 11, 'sdds', 'D'),
(17, 12, 'A', 'A'),
(18, 12, 'B', 'B'),
(19, 12, 'C', 'C'),
(20, 12, 'D', 'D'),
(21, 13, 'A', 'A'),
(22, 13, 'B', 'B'),
(23, 13, 'C', 'C'),
(24, 13, 'D', 'D');

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

-- --------------------------------------------------------

-- 
-- Table structure for table `assignment`
-- 

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL auto_increment,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `file_id` int(10) default NULL,
  PRIMARY KEY  (`assignment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `assignment`
-- 

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `file_id`) VALUES 
(13, 'admin/uploads/1767_File_sample.pdf', '2019-10-08 16:55:21', 'kj', 21, 189, 'chapter 1', 148);

-- --------------------------------------------------------

-- 
-- Table structure for table `class`
-- 

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL auto_increment,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `class`
-- 

INSERT INTO `class` (`class_id`, `class_name`) VALUES 
(24, 'BSIT'),
(25, 'BSCS');

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

-- --------------------------------------------------------

-- 
-- Table structure for table `class_subject_overview`
-- 

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY  (`class_subject_overview_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `class_subject_overview`
-- 

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES 
(1, 187, '<p>jhjhjjh</p>\r\n'),
(2, 188, '<p>fkh gk gfk fkj</p>\r\n'),
(3, 189, '<p>&nbsp;</p>\r\n\r\n<p>fdssa</p>\r\n\r\n<p>fasdf</p>\r\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `comment`
-- 

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL auto_increment,
  `content` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY  (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `comment`
-- 

INSERT INTO `comment` (`comment_id`, `content`, `post_id`) VALUES 
(14, 'dffd', 27),
(13, 'ss', 17);

-- --------------------------------------------------------

-- 
-- Table structure for table `content`
-- 

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `content`
-- 

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES 
(1, 'Mission', ''),
(2, 'Vision', ''),
(3, 'History', ''),
(4, 'Footer', ''),
(5, 'Upcoming Events', ''),
(6, 'Title', ''),
(7, 'News', ''),
(8, 'Announcements', ''),
(10, 'Calendar', ''),
(11, 'Directories', ''),
(12, 'president', ''),
(13, 'motto', ''),
(14, 'Campuses', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `department`
-- 

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL auto_increment,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY  (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `department`
-- 

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES 
(10, 'CIT', 'ALVIN MALICDEM'),
(11, 'Straight', 'Mam Munar');

-- --------------------------------------------------------

-- 
-- Table structure for table `event`
-- 

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL auto_increment,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY  (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `event`
-- 

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES 
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013');

-- --------------------------------------------------------

-- 
-- Table structure for table `files`
-- 

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL auto_increment,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  `percentile` varchar(100) default NULL,
  `content` mediumblob,
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=149 ;

-- 
-- Dumping data for table `files`
-- 

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`, `percentile`, `content`) VALUES 
(140, 'admin/uploads/5496_File_sample.pdf', '2019-09-18 11:58:07', 'Intro to prog 2', 20, 188, 'Charlie_Chapter1', 'CHARLIEMARZAN', '45', 0x3c703e6466666464666466646666643c2f703e0d0a),
(143, 'admin/uploads/3953_File_question.sql', '2019-09-30 22:17:00', 'Variable', 20, 188, 'Chapter 2', 'CHARLIEMARZAN', '55', NULL),
(145, 'admin/uploads/4918_File_sample.pdf', '2019-10-02 13:52:00', 'dssd', 20, 188, 'sdds', 'CHARLIEMARZAN', '55', NULL),
(147, 'admin/uploads/4918_File_sample.pdf', '2019-10-08 09:17:03', 'jj', 20, 187, 'chapter 1', 'CHARLIEMARZAN', '55', NULL),
(148, 'admin/uploads/7222_File_sample.pdf', '2019-10-08 16:31:42', 'FASDFSD', 21, 189, 'cHAPTER 1', 'JesecaBaculo', '100', 0x3c703e5452574554574552543c2f703e0d0a0d0a3c703e5457454552543c2f703e0d0a0d0a3c703e266e6273703b3c2f703e0d0a0d0a3c703e54525745543c2f703e0d0a0d0a3c703e266e6273703b3c2f703e0d0a),
(144, 'admin/uploads/5996_File_CSWMP_ASSESSMENT.xml', '2019-09-30 22:17:31', 'Chapter 3', 20, 188, 'Iteration', 'CHARLIEMARZAN', '75', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `file_student`
-- 

CREATE TABLE `file_student` (
  `id` int(10) NOT NULL auto_increment,
  `file_id` int(10) default NULL,
  `student_id` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `file_student`
-- 

INSERT INTO `file_student` (`id`, `file_id`, `student_id`) VALUES 
(17, 140, 221),
(24, 148, 224),
(23, 147, 221),
(18, 143, 221),
(25, 147, 222);

-- --------------------------------------------------------

-- 
-- Table structure for table `learner`
-- 

CREATE TABLE `learner` (
  `id_learner` int(11) NOT NULL auto_increment,
  `learners` varchar(100) default NULL,
  `content_style` blob,
  PRIMARY KEY  (`id_learner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `learner`
-- 

INSERT INTO `learner` (`id_learner`, `learners`, `content_style`) VALUES 
(1, 'Visual', 0x596f75206c6561726e2077656c6c2066726f6d20736565696e6720776f72647320696e20626f6f6b732c206f6e2074686520626f6172642c20616e6420696e20776f726b626f6f6b732e2020596f752072656d656d62657220616e6420756e6465727374616e6420696e666f726d6174696f6e20616e6420696e737472756374696f6e732062657474657220696620796f752072656164207468656d2e2020596f7520646f6e2774206e656564206173206d756368206f72616c206578706c616e6174696f6e20617320616e2061756469746f7279206c6561726e65722c20616e6420796f752063616e206f6674656e206c6561726e206d6f726520616c6f6e652c2077697468206120626f6f6b2e2020596f752073686f756c642074616b65206e6f7465732066726f6d206c65637475726573206174206f72616c20646972656374696f6e7320696620796f752077616e7420746f2072656d656d62657220696e666f726d6174696f6e2e),
(2, 'Tactile', 0x596f75206c6561726e206265737420616e6420796f75206861766520746865206f70706f7274756e69747920746f20646f20796f752068616e64732d6f6e20657870657269656e6365732077697468206d6174657269616c732e2020546861742069732c20776f726b696e67206f6e206578706572696d656e747320696e2061206c61626f7261746f72792c2068616e646c696e6720616e64206275696c64696e67206d6f64656c732c20616e6420746f756368696e6720616e6420776f726b696e672077697468206d6174657269616c7320746f2070726f7669646520796f75207769746820746865206d6f7374207375636365737366756c206c6561726e696e6720736974756174696f6e2e2057726974696e67206e6f746573206f7220696e737472756374696f6e732063616e2068656c7020796f752072656d656d62657220696e666f726d6174696f6e2c20616e6420706879736963616c20696e766f6c76656d656e7420696e20636c6173732072656c617465642061637469766974696573206d61792068656c7020796f7520756e6465727374616e64206e657720696e666f726d6174696f6e2e),
(3, 'Auditory', 0x596f75206c6561726e2066726f6d2068656172696e6720776f7264732073706f6b656e207468656d2066726f6d206f72616c206578706c616e6174696f6e732e2020596f75206d61792072656d656d62657220696e666f726d6174696f6e2062792072656164696e6720616c6f7564206f72206279206d6f76696e6720796f7572206c69707320617320796f7520726561642c20657370656369616c6c79207768656e20796f75277265206c6561726e696e6720746865206d6174657269616c2e2020596f752062656e656669742066726f6d2068656172696e6720617564696f74617065732c206c656374757265732c20616e6420636c6173732064697363757373696f6e732e2020596f752062656e656669742066726f6d206d616b696e6720746170657320746f206c697374656e20746f2c206279207465616368696e67206f746865722073747564656e74732c20616e6420627920636f6e76657273696e67207769746820796f757220746561636865722e),
(4, 'Group', 0x596f75206c6561726e206d6f726520656173696c79207768656e20796f752073747564792077697468206174206c65617374206f6e65206f746865722073747564656e742c20616e6420796f752077696c6c206265206d6f7265207375636365737366756c20636f6d706c6574696e6720776f726b2077656c6c207768656e20796f7520776f726b2077697468206f74686572732e2020596f752076616c75652067726f757020696e746572616374696f6e20696e20636c61737320776f726b2077697468206f746865722073747564656e74732c20616e6420796f752072656d656d62657220696e666f726d6174696f6e20626574746572207768656e20796f7520776f726b20776974682074776f206f7220746872656520636c6173736d617465732e2020546865207374696d756c6174696f6e20796f7520726563656976652066726f6d2067726f757020776f726b2068656c702073686f756c64206c6561726e20616e6420756e6465727374616e64206e657720696e666f726d6174696f6e2e),
(5, 'Kinesthetic', 0x596f75206c6561726e206265737420627920657870657269656e63652c206279206265696e6720696e766f6c76656420706879736963616c6c7920696e20636c617373726f6f6d20657870657269656e6365732e2020596f752072656d656d62657220696e666f726d6174696f6e2077656c6c207768656e20796f75206163746976656c7920706172746963697061746520696e20616374697669746965732c206669656c642074726970732c20616e6420726f6c652d706c6179696e6720696e2074686520636c617373726f6f6d2e202054686520636f6d62696e6174696f6e206f66207374696d756c6920666f72206578616d706c652c20616e20617564696f7461706520636f6d62696e6564207769746820616e2061637469766974792c2077696c6c2068656c7020796f7520756e6465727374616e6420746865206d6174657269616c2e),
(6, 'Individual', 0x596f75206c6561726e2062657374207768656e20796f7520776f726b20616c6f6e652e2020596f75207468696e6b2077656c6c207768656e20796f7520737475647920616c6f6e652c20616e6420796f752072656d656d62657220696e666f726d6174696f6e20796f75206c6561726e20627920796f757273656c662e2020596f7520756e6465727374616e6420746865206d6174657269616c2062657374207768656e20796f75206c6561726e20697420616c6f6e652c20616e6420796f75206d616b65206265747465722070726f677265737320696e206c6561726e696e67207768656e20796f7520776f726b20627920796f757273656c662e);

-- --------------------------------------------------------

-- 
-- Table structure for table `learner_learning`
-- 

CREATE TABLE `learner_learning` (
  `id` int(10) NOT NULL auto_increment,
  `id_learner` int(10) default NULL,
  `id_file` int(10) default NULL,
  `reference` varchar(200) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `learner_learning`
-- 

INSERT INTO `learner_learning` (`id`, `id_learner`, `id_file`, `reference`) VALUES 
(9, 2, 140, 'https://www.youtube.com/watch?v=xLXlK9Vlk2o'),
(7, 3, 147, 'https://www.youtube.com/watch?v=xLXlK9Vlk2o'),
(8, 5, 147, 'https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3'),
(10, 1, 148, 'https://www.youtube.com/watch?v=xLXlK9Vlk2o'),
(11, 3, 148, 'https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3');

-- --------------------------------------------------------

-- 
-- Table structure for table `message`
-- 

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL auto_increment,
  `reciever_id` int(11) NOT NULL,
  `content` blob NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY  (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `message`
-- 

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES 
(2, 20, 0x7777777777, '2019-09-18 12:19:03', 220, 'CHARLIE MARZAN', 'michael sy', ''),
(3, 220, 0x74747474, '2019-09-18 12:20:27', 20, 'michael sy', 'CHARLIE MARZAN', ''),
(4, 221, 0x7373, '2019-10-07 11:33:53', 20, 'abad enrique', 'CHARLIE MARZAN', ''),
(5, 20, 0x736473, '2019-10-07 11:36:33', 221, 'CHARLIE MARZAN', 'abad enrique', ''),
(6, 224, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e266e6273703b266e6273703b3c623e61756469746f72793c2f623e3c62723e266e6273703b266e6273703b3c61207461726765743d5f626c616e6b20687265663d68747470733a2f2f7777772e796f75747562652e636f6d2f77617463683f763d6e383353582d33376d5851266c6973743d504c6b727a6645446a65594a6b457073734568644a37343447713476674152637a4b26696e6465783d333e68747470733a2f2f7777772e796f75747562652e636f6d2f77617463683f763d6e383353582d33376d5851266c6973743d504c6b727a6645446a65594a6b457073734568644a37343447713476674152637a4b26696e6465783d333c2f613e3c62723e, '2019-10-08 17:19:38', 21, 'Belinda&nbsp;Dungan', 'Jeseca&nbsp;Baculo', ''),
(7, 21, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e, '2021-05-16 04:26:39', 21, '&nbsp;', 'Jeseca&nbsp;Baculo', ''),
(8, 221, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e, '2021-05-16 06:39:04', 21, 'estilong&nbsp;jonathan', 'Jeseca&nbsp;Baculo', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `message_sent`
-- 

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL auto_increment,
  `reciever_id` int(11) NOT NULL,
  `content` blob NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`message_sent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `message_sent`
-- 

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES 
(1, 20, 0x77656565, '2019-09-18 12:17:22', 220, 'CHARLIE MARZAN', 'michael sy'),
(2, 20, 0x7777777777, '2019-09-18 12:19:03', 220, 'CHARLIE MARZAN', 'michael sy'),
(3, 220, 0x74747474, '2019-09-18 12:20:27', 20, 'michael sy', 'CHARLIE MARZAN'),
(4, 221, 0x7373, '2019-10-07 11:33:53', 20, 'abad enrique', 'CHARLIE MARZAN'),
(5, 20, 0x736473, '2019-10-07 11:36:33', 221, 'CHARLIE MARZAN', 'abad enrique'),
(6, 224, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e266e6273703b266e6273703b3c623e61756469746f72793c2f623e3c62723e266e6273703b266e6273703b3c61207461726765743d5f626c616e6b20687265663d68747470733a2f2f7777772e796f75747562652e636f6d2f77617463683f763d6e383353582d33376d5851266c6973743d504c6b727a6645446a65594a6b457073734568644a37343447713476674152637a4b26696e6465783d333e68747470733a2f2f7777772e796f75747562652e636f6d2f77617463683f763d6e383353582d33376d5851266c6973743d504c6b727a6645446a65594a6b457073734568644a37343447713476674152637a4b26696e6465783d333c2f613e3c62723e, '2019-10-08 17:19:38', 21, 'Belinda&nbsp;Dungan', 'Jeseca&nbsp;Baculo'),
(7, 21, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e, '2021-05-16 04:26:39', 21, '&nbsp;', 'Jeseca&nbsp;Baculo'),
(8, 221, 0x536f7272792c20796f75206661696c656420746865206173736573736d656e74206f66207468697320636861707465722e20546f2068656c7020796f7520706173732c2074686520666f6c6c6f77696e6720617265207265666572656e63657320796f75206d69676874207265616420616e64207761746368207768696368206172652062617365642066726f6d20796f7572206c6561726e696e67207374796c652e3c62723e, '2021-05-16 06:39:04', 21, 'estilong&nbsp;jonathan', 'Jeseca&nbsp;Baculo');

-- --------------------------------------------------------

-- 
-- Table structure for table `notification`
-- 

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY  (`notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `notification`
-- 

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES 
(3, 187, 'Add Quiz file', '2019-09-17 20:01:41', 'student_quiz_list.php'),
(4, 187, 'Add Quiz file', '2019-09-18 10:40:25', 'student_quiz_list.php'),
(6, 188, 'Add Assignment file name <b>Charlie_Assignment#1</b>', '2019-09-18 12:00:10', 'assignment_student.php'),
(7, 187, 'Add Downloadable Materials file name <b>www</b>', '2019-09-18 12:03:59', 'downloadable_student.php'),
(8, 188, 'Add Downloadable Materials file name <b>www</b>', '2019-09-18 12:03:59', 'downloadable_student.php'),
(9, 188, 'Add Practice Quiz file', '2019-09-18 12:06:51', 'student_quiz_list.php'),
(13, 187, 'Add Quiz file', '2019-10-02 14:02:00', 'student_quiz_list.php'),
(14, 187, 'Add Assignment file name <b>chapter 1</b>', '2019-10-02 14:02:48', 'assignment_student.php'),
(15, 188, 'Add Quiz file', '2019-10-02 14:57:54', 'student_quiz_list.php'),
(16, 188, 'Add Quiz file', '2019-10-02 15:30:18', 'student_quiz_list.php'),
(17, 188, 'Add Quiz file', '2019-10-02 15:46:42', 'student_quiz_list.php'),
(18, 188, 'Add Assignment file name <b>dssd</b>', '2019-10-02 15:47:55', 'assignment_student.php'),
(19, 187, 'Add Annoucements', '2019-10-05 11:35:15', 'announcements_student.php'),
(20, 188, 'Add Annoucements', '2019-10-05 11:35:16', 'announcements_student.php'),
(22, 187, 'Add Quiz file', '2019-10-08 09:16:22', 'student_quiz_list.php'),
(24, 187, 'Add Quiz file', '2019-10-08 09:45:46', 'student_quiz_list.php'),
(25, 188, 'Add Quiz file', '2019-10-08 09:45:46', 'student_quiz_list.php'),
(26, 0, 'Add Downloadable Materials file name <b>cHAPTER 1</b>', '2019-10-08 16:31:42', 'downloadable_student.php'),
(27, 189, 'Add Quiz file', '2019-10-08 16:38:32', 'student_quiz_list.php'),
(28, 189, 'Add Assignment file name <b>kjjk</b>', '2019-10-08 16:50:15', 'assignment_student.php'),
(29, 189, 'Add Assignment file name <b>kjjk</b>', '2019-10-08 16:50:54', 'assignment_student.php'),
(30, 189, 'Add Assignment file name <b>jj</b>', '2019-10-08 16:51:40', 'assignment_student.php'),
(31, 189, 'Add Assignment file name <b>klkl</b>', '2019-10-08 16:52:08', 'assignment_student.php'),
(32, 189, 'Add Assignment file name <b>klkl</b>', '2019-10-08 16:52:50', 'assignment_student.php'),
(33, 189, 'Add Assignment file name <b>klkl</b>', '2019-10-08 16:53:03', 'assignment_student.php'),
(34, 189, 'Add Assignment file name <b>klkl</b>', '2019-10-08 16:53:19', 'assignment_student.php'),
(35, 189, 'Add Assignment file name <b>klkl</b>', '2019-10-08 16:54:00', 'assignment_student.php'),
(36, 189, 'Add Assignment file name <b>chapter 1</b>', '2019-10-08 16:55:21', 'assignment_student.php'),
(37, 189, 'Add Quiz file', '2021-05-16 06:05:44', 'student_quiz_list.php');

-- --------------------------------------------------------

-- 
-- Table structure for table `notification_read`
-- 

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY  (`notification_read_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `notification_read`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `notification_read_teacher`
-- 

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY  (`notification_read_teacher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `notification_read_teacher`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `post`
-- 

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL auto_increment,
  `content` varchar(500) NOT NULL,
  `user_id` int(10) default NULL,
  `subject_id` int(10) default NULL,
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- 
-- Dumping data for table `post`
-- 

INSERT INTO `post` (`post_id`, `content`, `user_id`, `subject_id`) VALUES 
(18, 'hello', 21, 188),
(27, 'dssd', 20, 187),
(26, 'sdsd', 20, 187),
(28, 'dssd', 20, 187);

-- --------------------------------------------------------

-- 
-- Table structure for table `postest_activate`
-- 

CREATE TABLE `postest_activate` (
  `id` int(10) NOT NULL auto_increment,
  `subject_id` int(10) default NULL,
  `student_id` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `postest_activate`
-- 

INSERT INTO `postest_activate` (`id`, `subject_id`, `student_id`) VALUES 
(3, 188, 221);

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

-- --------------------------------------------------------

-- 
-- Table structure for table `question_type`
-- 

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY  (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `question_type`
-- 

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES 
(1, 'Multiple Choice'),
(2, 'True or False'),
(3, 'Single Line'),
(4, 'Multi Line');

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

-- --------------------------------------------------------

-- 
-- Table structure for table `school_year`
-- 

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL auto_increment,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY  (`school_year_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `school_year`
-- 

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES 
(3, '2019-2020');

-- --------------------------------------------------------

-- 
-- Table structure for table `score_posttest`
-- 

CREATE TABLE `score_posttest` (
  `teacher_class_id` int(10) NOT NULL auto_increment,
  `student_id` int(10) default NULL,
  `score` int(10) default NULL,
  PRIMARY KEY  (`teacher_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=189 ;

-- 
-- Dumping data for table `score_posttest`
-- 

INSERT INTO `score_posttest` (`teacher_class_id`, `student_id`, `score`) VALUES 
(188, 221, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `score_pretest`
-- 

CREATE TABLE `score_pretest` (
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) default NULL,
  `score` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `score_pretest`
-- 

INSERT INTO `score_pretest` (`teacher_class_id`, `student_id`, `score`) VALUES 
(187, 219, 1),
(189, 224, 2),
(187, 221, 2),
(187, 222, 2),
(188, 221, 1),
(188, 220, 3),
(189, 221, 0),
(189, 221, 0),
(189, 221, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `student`
-- 

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL auto_increment,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

-- 
-- Dumping data for table `student`
-- 

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES 
(219, 'PEDRO', 'PENDUKO', 24, '101', '101', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(220, 'michael', 'sy', 25, '111', '111', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(221, 'estilong', 'jonathan', 25, '3054', '123', 'uploads/Untitled.png', 'Registered'),
(222, 'calub', 'librado', 25, '3033', '123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(223, 'Rambo', 'Villanueva', 25, '333', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(224, 'Belinda', 'Dungan', 25, '444', '1234', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

-- 
-- Table structure for table `student_assignment`
-- 

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL auto_increment,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY  (`student_assignment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `student_assignment`
-- 

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES 
(1, 1, 'admin/uploads/9606_File_Book1.xlsx', '2019-10-02 14:26:28', 'dfdf', 'chapter 1', 221, '80'),
(2, 3, 'admin/uploads/7994_File_sample.pdf', '2019-10-02 15:48:32', 'asa', 'asas', 221, '90');

-- --------------------------------------------------------

-- 
-- Table structure for table `student_backpack`
-- 

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL auto_increment,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `student_backpack`
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

-- --------------------------------------------------------

-- 
-- Table structure for table `subject`
-- 

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL auto_increment,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY  (`subject_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `subject`
-- 

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES 
(42, 'ICT 101', 'Programming 1', '', '<p>Introduction in&nbsp; Java Programming</p>\r\n', 3, '', '1st'),
(43, 'CSC 103', 'Computer Programming 2', '', '<p>fadsf</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>fad</p>\r\n\r\n<p>sf</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>ads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

-- 
-- Table structure for table `survey`
-- 

CREATE TABLE `survey` (
  `id_question` int(10) NOT NULL auto_increment,
  `question` varchar(500) default NULL,
  PRIMARY KEY  (`id_question`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `survey`
-- 

INSERT INTO `survey` (`id_question`, `question`) VALUES 
(1, 'When the teacher tells me the instructions I understand better.'),
(2, 'I prefer to learn by moving around and doing something in class.'),
(3, 'I get more work done when I work with others.'),
(4, 'I learn more when I study with a group.'),
(5, 'In class, I learn best when I work with others.'),
(6, 'I learn better by reading what teacher writes on the whiteboard.'),
(7, 'When someone tells me how to do something in class, I learn better.'),
(8, 'When I make things in class, I learn better.'),
(9, 'I remember things I have heard in class better than things I have read.'),
(10, 'When I read instructions, I remember them better.'),
(11, 'I learn more when I can make a model of something.'),
(12, 'I understand better when I read instructions myself.'),
(13, 'When I study alone, I remember things better.'),
(14, 'I learn more when I make something for class project.'),
(15, 'I enjoy learning in class by doing experiments.'),
(16, 'I learn better when I make drawings as I study.'),
(17, 'I learn better in class when the teacher gives a lecture.'),
(18, 'When I work alone, I learn better.'),
(19, 'I understand things better in class when I participate in role-playing.'),
(20, 'I learn better in class when I listen to someone.  '),
(21, 'I enjoy working on an assignment with two or three classmates.'),
(22, 'When I build something, I remember what I have learned better.'),
(23, 'I prefer to study with others.'),
(24, 'I learn better by seeing the directions than by listening to someone.'),
(25, 'I enjoy making something for a class project.'),
(26, 'I learn best in class when I can participate in related activities.'),
(27, 'In class I work better when I work alone.'),
(28, 'I prefer working on projects by myself.'),
(29, 'I learn more by reading textbooks than by listening to lectures.'),
(30, 'In general I prefer to work by myself.');

-- --------------------------------------------------------

-- 
-- Table structure for table `survey_answer`
-- 

CREATE TABLE `survey_answer` (
  `id_survey` int(10) NOT NULL auto_increment,
  `id_student` int(10) default NULL,
  `category` varchar(30) default NULL,
  `answer` int(10) default NULL,
  `con` int(1) default NULL,
  PRIMARY KEY  (`id_survey`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `survey_answer`
-- 

INSERT INTO `survey_answer` (`id_survey`, `id_student`, `category`, `answer`, `con`) VALUES 
(2, 221, 'visual', 44, 1),
(3, 221, 'tactile', 44, 1),
(4, 221, 'auditory', 44, 1),
(5, 221, 'group', 44, 1),
(6, 221, 'kinesthetic', 34, 0),
(7, 221, 'individual', 44, 1),
(8, 222, 'visual', 0, 1),
(9, 222, 'tactile', 0, 1),
(10, 222, 'auditory', 0, 1),
(11, 222, 'group', 0, 1),
(12, 222, 'kinesthetic', 0, 1),
(13, 222, 'individual', 0, 1),
(37, 224, 'individual', 48, 1),
(36, 224, 'kinesthetic', 44, 0),
(35, 224, 'group', 40, 0),
(34, 224, 'auditory', 48, 1),
(33, 224, 'tactile', 46, 0),
(32, 224, 'visual', 44, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher`
-- 

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `teacher`
-- 

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES 
(20, 'charlie', 'charlie', 'CHARLIE', 'MARZAN', 10, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(21, 'jeseca', '1234', 'Jeseca', 'Baculo', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_backpack`
-- 

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL auto_increment,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY  (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `teacher_backpack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_class`
-- 

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY  (`teacher_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=190 ;

-- 
-- Dumping data for table `teacher_class`
-- 

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES 
(187, 20, 24, 42, 'admin/uploads/thumbnails.jpg', '2019-2020'),
(188, 20, 25, 43, 'admin/uploads/thumbnails.jpg', '2019-2020'),
(189, 21, 25, 43, 'admin/uploads/thumbnails.jpg', '2019-2020');

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_class_announcements`
-- 

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL auto_increment,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY  (`teacher_class_announcements_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `teacher_class_announcements`
-- 

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES 
(1, '<p>ffdfd</p>\r\n', '20', 187, '2019-10-05 11:35:15'),
(2, '<p>ffdfd</p>\r\n', '20', 188, '2019-10-05 11:35:16');

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_class_student`
-- 

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY  (`teacher_class_student_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=394 ;

-- 
-- Dumping data for table `teacher_class_student`
-- 

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES 
(378, 187, 219, 20),
(380, 188, 219, 20),
(382, 188, 221, 20),
(384, 187, 221, 20),
(386, 187, 220, 20),
(387, 187, 222, 20),
(388, 189, 220, 21),
(389, 189, 221, 21),
(390, 189, 222, 21),
(393, 189, 224, 21);

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_notification`
-- 

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL auto_increment,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY  (`teacher_notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `teacher_notification`
-- 

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES 
(1, 188, 'Submit Assignment file name <b>chapter 1</b>', '2019-10-02 14:26:28', 'view_submit_assignment.php', 221, 1),
(2, 188, 'Submit Assignment file name <b>asas</b>', '2019-10-02 15:48:32', 'view_submit_assignment.php', 221, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `teacher_shared`
-- 

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY  (`teacher_shared_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `teacher_shared`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES 
(13, 'teph', 'teph', 'Stephanie', 'villanueva'),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna'),
(15, 'admin', 'admin', 'admin', 'admin'),
(16, 'juan', 'juan', 'juan', 'pedro');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_log`
-- 

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL auto_increment,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

-- 
-- Dumping data for table `user_log`
-- 

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES 
(88, 'teph', '2019-09-17 14:56:06', '2019-09-17 15:04:50', 13),
(89, 'admin', '2019-09-18 11:35:21', '2021-05-16 04:19:18', 15),
(90, 'admin', '2019-09-18 11:50:30', '2021-05-16 04:19:18', 15),
(91, 'admin', '2019-09-18 11:50:30', '2021-05-16 04:19:18', 15),
(92, 'admin', '2019-09-22 12:06:00', '2021-05-16 04:19:18', 15),
(93, 'admin', '2019-09-30 13:20:49', '2021-05-16 04:19:18', 15),
(94, 'admin', '2019-09-30 22:05:53', '2021-05-16 04:19:18', 15),
(95, 'admin', '2019-10-05 10:38:00', '2021-05-16 04:19:18', 15),
(96, 'admin', '2019-10-07 12:45:45', '2021-05-16 04:19:18', 15),
(97, 'admin', '2019-10-08 16:17:14', '2021-05-16 04:19:18', 15),
(98, 'admin', '2021-05-11 03:56:47', '2021-05-16 04:19:18', 15),
(99, 'admin', '2021-05-11 03:58:17', '2021-05-16 04:19:18', 15),
(100, 'admin', '2021-05-11 03:58:32', '2021-05-16 04:19:18', 15),
(101, 'admin', '2021-05-11 04:27:03', '2021-05-16 04:19:18', 15),
(102, 'admin', '2021-05-11 04:34:14', '2021-05-16 04:19:18', 15),
(103, 'admin', '2021-05-12 02:22:20', '2021-05-16 04:19:18', 15),
(104, 'admin', '2021-05-12 03:11:37', '2021-05-16 04:19:18', 15),
(105, 'admin', '2021-05-12 03:21:42', '2021-05-16 04:19:18', 15),
(106, 'admin', '2021-05-12 04:02:16', '2021-05-16 04:19:18', 15),
(107, 'admin', '2021-05-12 04:33:22', '2021-05-16 04:19:18', 15),
(108, 'admin', '2021-05-12 04:58:13', '2021-05-16 04:19:18', 15),
(109, 'admin', '2021-05-12 05:26:23', '2021-05-16 04:19:18', 15),
(110, 'admin', '2021-05-14 01:03:39', '2021-05-16 04:19:18', 15),
(111, 'admin', '2021-05-16 04:15:15', '2021-05-16 04:19:18', 15);
