/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.36-community-log : Database - capstone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`capstone` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `capstone`;

/*Table structure for table `activity_log` */

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `activity_log` */

insert  into `activity_log`(`activity_log_id`,`username`,`date`,`action`) values (11,'teph','2019-09-17 14:57:38','Add Subject ICT 101');
insert  into `activity_log`(`activity_log_id`,`username`,`date`,`action`) values (12,'admin','2019-09-18 11:39:17','Add Subject CSC 103');
insert  into `activity_log`(`activity_log_id`,`username`,`date`,`action`) values (13,'admin','2019-09-18 11:40:41','Add User juan');

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `answer` */

insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (1,4,'cv','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (2,4,'cv','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (3,4,'cvcv','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (4,4,'cvvc','D');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (5,5,'sdsd','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (6,5,'sdsd','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (7,5,'sdsd','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (8,5,'sdds','D');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (9,6,'ds','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (10,6,'dssd','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (11,6,'dssd','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (12,6,'sdsd','D');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (13,11,'a','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (14,11,'sdds','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (15,11,'sdds','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (16,11,'sdds','D');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (17,12,'A','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (18,12,'B','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (19,12,'C','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (20,12,'D','D');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (21,13,'A','A');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (22,13,'B','B');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (23,13,'C','C');
insert  into `answer`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (24,13,'D','D');

/*Table structure for table `answer_pretest` */

DROP TABLE IF EXISTS `answer_pretest`;

CREATE TABLE `answer_pretest` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `answer_pretest` */

insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (5,2,'a','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (6,2,'b','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (7,2,'c','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (8,2,'d','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (9,3,'B','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (10,3,'V','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (11,3,'V','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (12,3,'VH','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (13,7,'ab','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (14,7,'b','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (15,7,'c','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (16,7,'d','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (17,9,'dsds','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (18,9,'sdds','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (19,9,'sdds','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (20,9,'sdsd','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (21,10,'dsds','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (22,10,'sdsd','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (23,10,'sdsd','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (24,10,'sdsd','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (25,11,'A','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (26,11,'B','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (27,11,'C','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (28,11,'D','D');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (29,12,'A','A');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (30,12,'b','B');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (31,12,'c','C');
insert  into `answer_pretest`(`answer_id`,`quiz_question_id`,`answer_text`,`choices`) values (32,12,'d','D');

/*Table structure for table `assignment` */

DROP TABLE IF EXISTS `assignment`;

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `file_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `assignment` */

insert  into `assignment`(`assignment_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`file_id`) values (13,'admin/uploads/1767_File_sample.pdf','2019-10-08 16:55:21','kj',21,189,'chapter 1',148);

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `class` */

insert  into `class`(`class_id`,`class_name`) values (24,'BSIT');
insert  into `class`(`class_id`,`class_name`) values (25,'BSCS');

/*Table structure for table `class_quiz` */

DROP TABLE IF EXISTS `class_quiz`;

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `file_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `class_quiz` */

insert  into `class_quiz`(`class_quiz_id`,`teacher_class_id`,`quiz_time`,`quiz_id`,`file_id`) values (8,187,3600,4,147);
insert  into `class_quiz`(`class_quiz_id`,`teacher_class_id`,`quiz_time`,`quiz_id`,`file_id`) values (9,189,3600,6,148);

/*Table structure for table `class_subject_overview` */

DROP TABLE IF EXISTS `class_subject_overview`;

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`class_subject_overview_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `class_subject_overview` */

insert  into `class_subject_overview`(`class_subject_overview_id`,`teacher_class_id`,`content`) values (1,187,'<p>jhjhjjh</p>\r\n');
insert  into `class_subject_overview`(`class_subject_overview_id`,`teacher_class_id`,`content`) values (2,188,'<p>fkh gk gfk fkj</p>\r\n');
insert  into `class_subject_overview`(`class_subject_overview_id`,`teacher_class_id`,`content`) values (3,189,'<p>&nbsp;</p>\r\n\r\n<p>fdssa</p>\r\n\r\n<p>fasdf</p>\r\n');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

insert  into `comment`(`comment_id`,`content`,`post_id`) values (14,'dffd',27);
insert  into `comment`(`comment_id`,`content`,`post_id`) values (13,'ss',17);

/*Table structure for table `content` */

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `content` */

insert  into `content`(`content_id`,`title`,`content`) values (1,'Mission','');
insert  into `content`(`content_id`,`title`,`content`) values (2,'Vision','');
insert  into `content`(`content_id`,`title`,`content`) values (3,'History','');
insert  into `content`(`content_id`,`title`,`content`) values (4,'Footer','');
insert  into `content`(`content_id`,`title`,`content`) values (5,'Upcoming Events','');
insert  into `content`(`content_id`,`title`,`content`) values (6,'Title','');
insert  into `content`(`content_id`,`title`,`content`) values (7,'News','');
insert  into `content`(`content_id`,`title`,`content`) values (8,'Announcements','');
insert  into `content`(`content_id`,`title`,`content`) values (10,'Calendar','');
insert  into `content`(`content_id`,`title`,`content`) values (11,'Directories','');
insert  into `content`(`content_id`,`title`,`content`) values (12,'president','');
insert  into `content`(`content_id`,`title`,`content`) values (13,'motto','');
insert  into `content`(`content_id`,`title`,`content`) values (14,'Campuses','');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`department_id`,`department_name`,`dean`) values (10,'CIT','ALVIN MALICDEM');
insert  into `department`(`department_id`,`department_name`,`dean`) values (11,'Straight','Mam Munar');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (12,' 	  Orientation with the Parents of the College Freshmen',0,'06/04/2013','06/04/2013');
insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (13,'Start of Classes',0,'11/04/2013','11/04/2013');
insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (14,'Intercampus Sports and Cultural Fest/College Week',0,'11/19/2013','11/22/2013');
insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (15,'Long Test',113,'12/05/2013','12/06/2013');
insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (16,'Long Test',0,'12/05/2013','12/06/2013');
insert  into `event`(`event_id`,`event_title`,`teacher_class_id`,`date_start`,`date_end`) values (17,'sdasf',147,'11/16/2013','11/16/2013');

/*Table structure for table `file_student` */

DROP TABLE IF EXISTS `file_student`;

CREATE TABLE `file_student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `file_student` */

insert  into `file_student`(`id`,`file_id`,`student_id`) values (17,140,221);
insert  into `file_student`(`id`,`file_id`,`student_id`) values (24,148,224);
insert  into `file_student`(`id`,`file_id`,`student_id`) values (23,147,221);
insert  into `file_student`(`id`,`file_id`,`student_id`) values (18,143,221);

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL,
  `percentile` varchar(100) DEFAULT NULL,
  `content` mediumblob,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (140,'admin/uploads/5496_File_sample.pdf','2019-09-18 11:58:07','Intro to prog 2',20,188,'Charlie_Chapter1','CHARLIEMARZAN','45','<p>dffddfdfdffd</p>\r\n');
insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (143,'admin/uploads/3953_File_question.sql','2019-09-30 22:17:00','Variable',20,188,'Chapter 2','CHARLIEMARZAN','55',NULL);
insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (145,'admin/uploads/4918_File_sample.pdf','2019-10-02 13:52:00','dssd',20,188,'sdds','CHARLIEMARZAN','55',NULL);
insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (147,'admin/uploads/4918_File_sample.pdf','2019-10-08 09:17:03','jj',20,187,'chapter 1','CHARLIEMARZAN','55',NULL);
insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (148,'admin/uploads/7222_File_sample.pdf','2019-10-08 16:31:42','FASDFSD',21,189,'cHAPTER 1','JesecaBaculo','100','<p>TRWETWERT</p>\r\n\r\n<p>TWEERT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TRWET</p>\r\n\r\n<p>&nbsp;</p>\r\n');
insert  into `files`(`file_id`,`floc`,`fdatein`,`fdesc`,`teacher_id`,`class_id`,`fname`,`uploaded_by`,`percentile`,`content`) values (144,'admin/uploads/5996_File_CSWMP_ASSESSMENT.xml','2019-09-30 22:17:31','Chapter 3',20,188,'Iteration','CHARLIEMARZAN','75',NULL);

/*Table structure for table `learner` */

DROP TABLE IF EXISTS `learner`;

CREATE TABLE `learner` (
  `id_learner` int(11) NOT NULL AUTO_INCREMENT,
  `learners` varchar(100) DEFAULT NULL,
  `content_style` blob,
  PRIMARY KEY (`id_learner`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `learner` */

insert  into `learner`(`id_learner`,`learners`,`content_style`) values (1,'Visual','You learn well from seeing words in books, on the board, and in workbooks.  You remember and understand information and instructions better if you read them.  You don\'t need as much oral explanation as an auditory learner, and you can often learn more alone, with a book.  You should take notes from lectures at oral directions if you want to remember information.');
insert  into `learner`(`id_learner`,`learners`,`content_style`) values (2,'Tactile','You learn best and you have the opportunity to do you hands-on experiences with materials.  That is, working on experiments in a laboratory, handling and building models, and touching and working with materials to provide you with the most successful learning situation. Writing notes or instructions can help you remember information, and physical involvement in class related activities may help you understand new information.');
insert  into `learner`(`id_learner`,`learners`,`content_style`) values (3,'Auditory','You learn from hearing words spoken them from oral explanations.  You may remember information by reading aloud or by moving your lips as you read, especially when you\'re learning the material.  You benefit from hearing audiotapes, lectures, and class discussions.  You benefit from making tapes to listen to, by teaching other students, and by conversing with your teacher.');
insert  into `learner`(`id_learner`,`learners`,`content_style`) values (4,'Group','You learn more easily when you study with at least one other student, and you will be more successful completing work well when you work with others.  You value group interaction in class work with other students, and you remember information better when you work with two or three classmates.  The stimulation you receive from group work help should learn and understand new information.');
insert  into `learner`(`id_learner`,`learners`,`content_style`) values (5,'Kinesthetic','You learn best by experience, by being involved physically in classroom experiences.  You remember information well when you actively participate in activities, field trips, and role-playing in the classroom.  The combination of stimuli for example, an audiotape combined with an activity, will help you understand the material.');
insert  into `learner`(`id_learner`,`learners`,`content_style`) values (6,'Individual','You learn best when you work alone.  You think well when you study alone, and you remember information you learn by yourself.  You understand the material best when you learn it alone, and you make better progress in learning when you work by yourself.');

/*Table structure for table `learner_learning` */

DROP TABLE IF EXISTS `learner_learning`;

CREATE TABLE `learner_learning` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_learner` int(10) DEFAULT NULL,
  `id_file` int(10) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `learner_learning` */

insert  into `learner_learning`(`id`,`id_learner`,`id_file`,`reference`) values (9,2,140,'https://www.youtube.com/watch?v=xLXlK9Vlk2o');
insert  into `learner_learning`(`id`,`id_learner`,`id_file`,`reference`) values (7,3,147,'https://www.youtube.com/watch?v=xLXlK9Vlk2o');
insert  into `learner_learning`(`id`,`id_learner`,`id_file`,`reference`) values (8,5,147,'https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3');
insert  into `learner_learning`(`id`,`id_learner`,`id_file`,`reference`) values (10,1,148,'https://www.youtube.com/watch?v=xLXlK9Vlk2o');
insert  into `learner_learning`(`id`,`id_learner`,`id_file`,`reference`) values (11,3,148,'https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` blob NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values (2,20,'wwwww','2019-09-18 12:19:03',220,'CHARLIE MARZAN','michael sy','');
insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values (3,220,'tttt','2019-09-18 12:20:27',20,'michael sy','CHARLIE MARZAN','');
insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values (4,221,'ss','2019-10-07 11:33:53',20,'abad enrique','CHARLIE MARZAN','');
insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values (5,20,'sds','2019-10-07 11:36:33',221,'CHARLIE MARZAN','abad enrique','');
insert  into `message`(`message_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`,`message_status`) values (6,224,'Sorry, you failed the assessment of this chapter. To help you pass, the following are references you might read and watch which are based from your learning style.<br>&nbsp;&nbsp;<b>auditory</b><br>&nbsp;&nbsp;<a target=_blank href=https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3>https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3</a><br>','2019-10-08 17:19:38',21,'Belinda&nbsp;Dungan','Jeseca&nbsp;Baculo','');

/*Table structure for table `message_sent` */

DROP TABLE IF EXISTS `message_sent`;

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `reciever_id` int(11) NOT NULL,
  `content` blob NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  PRIMARY KEY (`message_sent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `message_sent` */

insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (1,20,'weee','2019-09-18 12:17:22',220,'CHARLIE MARZAN','michael sy');
insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (2,20,'wwwww','2019-09-18 12:19:03',220,'CHARLIE MARZAN','michael sy');
insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (3,220,'tttt','2019-09-18 12:20:27',20,'michael sy','CHARLIE MARZAN');
insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (4,221,'ss','2019-10-07 11:33:53',20,'abad enrique','CHARLIE MARZAN');
insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (5,20,'sds','2019-10-07 11:36:33',221,'CHARLIE MARZAN','abad enrique');
insert  into `message_sent`(`message_sent_id`,`reciever_id`,`content`,`date_sended`,`sender_id`,`reciever_name`,`sender_name`) values (6,224,'Sorry, you failed the assessment of this chapter. To help you pass, the following are references you might read and watch which are based from your learning style.<br>&nbsp;&nbsp;<b>auditory</b><br>&nbsp;&nbsp;<a target=_blank href=https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3>https://www.youtube.com/watch?v=n83SX-37mXQ&list=PLkrzfEDjeYJkEpssEhdJ744Gq4vgARczK&index=3</a><br>','2019-10-08 17:19:38',21,'Belinda&nbsp;Dungan','Jeseca&nbsp;Baculo');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (3,187,'Add Quiz file','2019-09-17 20:01:41','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (4,187,'Add Quiz file','2019-09-18 10:40:25','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (6,188,'Add Assignment file name <b>Charlie_Assignment#1</b>','2019-09-18 12:00:10','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (7,187,'Add Downloadable Materials file name <b>www</b>','2019-09-18 12:03:59','downloadable_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (8,188,'Add Downloadable Materials file name <b>www</b>','2019-09-18 12:03:59','downloadable_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (9,188,'Add Practice Quiz file','2019-09-18 12:06:51','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (13,187,'Add Quiz file','2019-10-02 14:02:00','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (14,187,'Add Assignment file name <b>chapter 1</b>','2019-10-02 14:02:48','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (15,188,'Add Quiz file','2019-10-02 14:57:54','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (16,188,'Add Quiz file','2019-10-02 15:30:18','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (17,188,'Add Quiz file','2019-10-02 15:46:42','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (18,188,'Add Assignment file name <b>dssd</b>','2019-10-02 15:47:55','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (19,187,'Add Annoucements','2019-10-05 11:35:15','announcements_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (20,188,'Add Annoucements','2019-10-05 11:35:16','announcements_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (22,187,'Add Quiz file','2019-10-08 09:16:22','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (24,187,'Add Quiz file','2019-10-08 09:45:46','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (25,188,'Add Quiz file','2019-10-08 09:45:46','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (26,0,'Add Downloadable Materials file name <b>cHAPTER 1</b>','2019-10-08 16:31:42','downloadable_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (27,189,'Add Quiz file','2019-10-08 16:38:32','student_quiz_list.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (28,189,'Add Assignment file name <b>kjjk</b>','2019-10-08 16:50:15','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (29,189,'Add Assignment file name <b>kjjk</b>','2019-10-08 16:50:54','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (30,189,'Add Assignment file name <b>jj</b>','2019-10-08 16:51:40','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (31,189,'Add Assignment file name <b>klkl</b>','2019-10-08 16:52:08','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (32,189,'Add Assignment file name <b>klkl</b>','2019-10-08 16:52:50','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (33,189,'Add Assignment file name <b>klkl</b>','2019-10-08 16:53:03','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (34,189,'Add Assignment file name <b>klkl</b>','2019-10-08 16:53:19','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (35,189,'Add Assignment file name <b>klkl</b>','2019-10-08 16:54:00','assignment_student.php');
insert  into `notification`(`notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`) values (36,189,'Add Assignment file name <b>chapter 1</b>','2019-10-08 16:55:21','assignment_student.php');

/*Table structure for table `notification_read` */

DROP TABLE IF EXISTS `notification_read`;

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification_read` */

/*Table structure for table `notification_read_teacher` */

DROP TABLE IF EXISTS `notification_read_teacher`;

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_read_teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification_read_teacher` */

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`post_id`,`content`,`user_id`,`subject_id`) values (18,'hello',21,188);
insert  into `post`(`post_id`,`content`,`user_id`,`subject_id`) values (27,'dssd',20,187);
insert  into `post`(`post_id`,`content`,`user_id`,`subject_id`) values (26,'sdsd',20,187);
insert  into `post`(`post_id`,`content`,`user_id`,`subject_id`) values (28,'dssd',20,187);

/*Table structure for table `postest_activate` */

DROP TABLE IF EXISTS `postest_activate`;

CREATE TABLE `postest_activate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject_id` int(10) DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `postest_activate` */

insert  into `postest_activate`(`id`,`subject_id`,`student_id`) values (3,188,221);

/*Table structure for table `pretest_question` */

DROP TABLE IF EXISTS `pretest_question`;

CREATE TABLE `pretest_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `teacher_class_id` int(11) DEFAULT NULL,
  `qtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `pretest_question` */

insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (2,187,'<p>Q1</p>\r\n',1,0,'2019-09-17 20:33:06','A',187,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (3,187,'<p>Q2</p>\r\n',1,0,'2019-09-17 20:40:48','D',187,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (4,187,'<p>jkjk</p>\r\n',2,0,'2019-09-17 20:44:28','False',187,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (5,188,'<p>eee</p>\r\n',2,0,'2019-09-18 11:54:14','True',188,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (6,188,'<p>rrr</p>\r\n',2,0,'2019-09-18 11:54:32','True',188,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (7,188,'<p>yyy</p>\r\n',1,0,'2019-09-18 11:55:00','A',188,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (8,188,'<p>sss</p>\r\n',2,0,'2019-10-02 16:16:11','True',188,'posttest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (9,187,'<p>dsds</p>\r\n',1,0,'2019-10-07 11:10:34','C',187,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (10,187,'<p>sdsd</p>\r\n',1,0,'2019-10-07 11:30:49','B',187,'posttest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (11,189,'<p>Question 1</p>\r\n',1,0,'2019-10-08 16:30:23','A',189,'pretest');
insert  into `pretest_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`,`teacher_class_id`,`qtype`) values (12,189,'<p>qUYESTIon 2</p>\r\n',1,0,'2019-10-08 16:30:47','A',189,'pretest');

/*Table structure for table `question_type` */

DROP TABLE IF EXISTS `question_type`;

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL,
  PRIMARY KEY (`question_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `question_type` */

insert  into `question_type`(`question_type_id`,`question_type`) values (1,'Multiple Choice');
insert  into `question_type`(`question_type_id`,`question_type`) values (2,'True or False');

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `quiz` */

insert  into `quiz`(`quiz_id`,`quiz_title`,`quiz_description`,`date_added`,`teacher_id`) values (4,'Quiz # 1','chapter 1','2019-10-02 15:29:14',20);
insert  into `quiz`(`quiz_id`,`quiz_title`,`quiz_description`,`date_added`,`teacher_id`) values (5,'quiz # 2','xzzxdd','2019-10-02 15:46:16',20);
insert  into `quiz`(`quiz_id`,`quiz_title`,`quiz_description`,`date_added`,`teacher_id`) values (6,'Quiz # 1','Chapter 1','2019-10-08 16:36:59',21);

/*Table structure for table `quiz_question` */

DROP TABLE IF EXISTS `quiz_question`;

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`quiz_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `quiz_question` */

insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values (6,4,'<p>dsd</p>\r\n',1,0,'2019-10-02 15:29:33','A');
insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values (7,4,'<p>ddsds</p>\r\n',2,0,'2019-10-02 15:30:02','True');
insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values (11,5,'<p>fddf</p>\r\n',1,0,'2019-10-07 10:41:48','');
insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values (12,6,'<p>Quixz 1.AA</p>\r\n',1,0,'2019-10-08 16:37:32','A');
insert  into `quiz_question`(`quiz_question_id`,`quiz_id`,`question_text`,`question_type_id`,`points`,`date_added`,`answer`) values (13,6,'<p>Quiz 2..fasdfa</p>\r\n',1,0,'2019-10-08 16:38:15','A');

/*Table structure for table `school_year` */

DROP TABLE IF EXISTS `school_year`;

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`school_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `school_year` */

insert  into `school_year`(`school_year_id`,`school_year`) values (3,'2019-2020');

/*Table structure for table `score_posttest` */

DROP TABLE IF EXISTS `score_posttest`;

CREATE TABLE `score_posttest` (
  `teacher_class_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

/*Data for the table `score_posttest` */

insert  into `score_posttest`(`teacher_class_id`,`student_id`,`score`) values (188,221,1);

/*Table structure for table `score_pretest` */

DROP TABLE IF EXISTS `score_pretest`;

CREATE TABLE `score_pretest` (
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `score_pretest` */

insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (187,219,1);
insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (189,224,2);
insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (187,221,2);
insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (187,222,2);
insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (188,221,1);
insert  into `score_pretest`(`teacher_class_id`,`student_id`,`score`) values (188,220,3);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (219,'PEDRO','PENDUKO',24,'101','101','uploads/NO-IMAGE-AVAILABLE.jpg','Unregistered');
insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (220,'michael','sy',25,'111','111','uploads/NO-IMAGE-AVAILABLE.jpg','Unregistered');
insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (221,'estilong','jonathan',25,'3054','123','uploads/Untitled.png','Registered');
insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (222,'calub','librado',25,'3033','123','uploads/NO-IMAGE-AVAILABLE.jpg','Registered');
insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (223,'Rambo','Villanueva',25,'333','','uploads/NO-IMAGE-AVAILABLE.jpg','Unregistered');
insert  into `student`(`student_id`,`firstname`,`lastname`,`class_id`,`username`,`password`,`location`,`status`) values (224,'Belinda','Dungan',25,'444','1234','uploads/NO-IMAGE-AVAILABLE.jpg','Registered');

/*Table structure for table `student_assignment` */

DROP TABLE IF EXISTS `student_assignment`;

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  PRIMARY KEY (`student_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `student_assignment` */

insert  into `student_assignment`(`student_assignment_id`,`assignment_id`,`floc`,`assignment_fdatein`,`fdesc`,`fname`,`student_id`,`grade`) values (1,1,'admin/uploads/9606_File_Book1.xlsx','2019-10-02 14:26:28','dfdf','chapter 1',221,'80');
insert  into `student_assignment`(`student_assignment_id`,`assignment_id`,`floc`,`assignment_fdatein`,`fdesc`,`fname`,`student_id`,`grade`) values (2,3,'admin/uploads/7994_File_sample.pdf','2019-10-02 15:48:32','asa','asas',221,'90');

/*Table structure for table `student_backpack` */

DROP TABLE IF EXISTS `student_backpack`;

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_backpack` */

/*Table structure for table `student_class_quiz` */

DROP TABLE IF EXISTS `student_class_quiz`;

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  PRIMARY KEY (`student_class_quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `student_class_quiz` */

insert  into `student_class_quiz`(`student_class_quiz_id`,`class_quiz_id`,`student_id`,`student_quiz_time`,`grade`) values (41,6,221,'0','2');
insert  into `student_class_quiz`(`student_class_quiz_id`,`class_quiz_id`,`student_id`,`student_quiz_time`,`grade`) values (42,7,221,'0','1');
insert  into `student_class_quiz`(`student_class_quiz_id`,`class_quiz_id`,`student_id`,`student_quiz_time`,`grade`) values (44,8,221,'0','0');
insert  into `student_class_quiz`(`student_class_quiz_id`,`class_quiz_id`,`student_id`,`student_quiz_time`,`grade`) values (45,9,224,'0','0');

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`subject_code`,`subject_title`,`category`,`description`,`unit`,`Pre_req`,`semester`) values (42,'ICT 101','Programming 1','','<p>Introduction in&nbsp; Java Programming</p>\r\n',3,'','1st');
insert  into `subject`(`subject_id`,`subject_code`,`subject_title`,`category`,`description`,`unit`,`Pre_req`,`semester`) values (43,'CSC 103','Computer Programming 2','','<p>fadsf</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>fad</p>\r\n\r\n<p>sf</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>fads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>ads</p>\r\n\r\n<p>f</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n',3,'','1st');

/*Table structure for table `survey` */

DROP TABLE IF EXISTS `survey`;

CREATE TABLE `survey` (
  `id_question` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `survey` */

insert  into `survey`(`id_question`,`question`) values (1,'When the teacher tells me the instructions I understand better.');
insert  into `survey`(`id_question`,`question`) values (2,'I prefer to learn by moving around and doing something in class.');
insert  into `survey`(`id_question`,`question`) values (3,'I get more work done when I work with others.');
insert  into `survey`(`id_question`,`question`) values (4,'I learn more when I study with a group.');
insert  into `survey`(`id_question`,`question`) values (5,'In class, I learn best when I work with others.');
insert  into `survey`(`id_question`,`question`) values (6,'I learn better by reading what teacher writes on the whiteboard.');
insert  into `survey`(`id_question`,`question`) values (7,'When someone tells me how to do something in class, I learn better.');
insert  into `survey`(`id_question`,`question`) values (8,'When I make things in class, I learn better.');
insert  into `survey`(`id_question`,`question`) values (9,'I remember things I have heard in class better than things I have read.');
insert  into `survey`(`id_question`,`question`) values (10,'When I read instructions, I remember them better.');
insert  into `survey`(`id_question`,`question`) values (11,'I learn more when I can make a model of something.');
insert  into `survey`(`id_question`,`question`) values (12,'I understand better when I read instructions myself.');
insert  into `survey`(`id_question`,`question`) values (13,'When I study alone, I remember things better.');
insert  into `survey`(`id_question`,`question`) values (14,'I learn more when I make something for class project.');
insert  into `survey`(`id_question`,`question`) values (15,'I enjoy learning in class by doing experiments.');
insert  into `survey`(`id_question`,`question`) values (16,'I learn better when I make drawings as I study.');
insert  into `survey`(`id_question`,`question`) values (17,'I learn better in class when the teacher gives a lecture.');
insert  into `survey`(`id_question`,`question`) values (18,'When I work alone, I learn better.');
insert  into `survey`(`id_question`,`question`) values (19,'I understand things better in class when I participate in role-playing.');
insert  into `survey`(`id_question`,`question`) values (20,'I learn better in class when I listen to someone.  ');
insert  into `survey`(`id_question`,`question`) values (21,'I enjoy working on an assignment with two or three classmates.');
insert  into `survey`(`id_question`,`question`) values (22,'When I build something, I remember what I have learned better.');
insert  into `survey`(`id_question`,`question`) values (23,'I prefer to study with others.');
insert  into `survey`(`id_question`,`question`) values (24,'I learn better by seeing the directions than by listening to someone.');
insert  into `survey`(`id_question`,`question`) values (25,'I enjoy making something for a class project.');
insert  into `survey`(`id_question`,`question`) values (26,'I learn best in class when I can participate in related activities.');
insert  into `survey`(`id_question`,`question`) values (27,'In class I work better when I work alone.');
insert  into `survey`(`id_question`,`question`) values (28,'I prefer working on projects by myself.');
insert  into `survey`(`id_question`,`question`) values (29,'I learn more by reading textbooks than by listening to lectures.');
insert  into `survey`(`id_question`,`question`) values (30,'In general I prefer to work by myself.');

/*Table structure for table `survey_answer` */

DROP TABLE IF EXISTS `survey_answer`;

CREATE TABLE `survey_answer` (
  `id_survey` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` int(10) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `answer` int(10) DEFAULT NULL,
  `con` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_survey`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `survey_answer` */

insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (2,221,'visual',44,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (3,221,'tactile',44,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (4,221,'auditory',44,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (5,221,'group',44,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (6,221,'kinesthetic',34,0);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (7,221,'individual',44,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (8,222,'visual',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (9,222,'tactile',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (10,222,'auditory',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (11,222,'group',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (12,222,'kinesthetic',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (13,222,'individual',0,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (37,224,'individual',48,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (36,224,'kinesthetic',44,0);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (35,224,'group',40,0);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (34,224,'auditory',48,1);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (33,224,'tactile',46,0);
insert  into `survey_answer`(`id_survey`,`id_student`,`category`,`answer`,`con`) values (32,224,'visual',44,0);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`teacher_id`,`username`,`password`,`firstname`,`lastname`,`department_id`,`location`,`about`,`teacher_status`,`teacher_stat`) values (20,'charlie','charlie','CHARLIE','MARZAN',10,'uploads/NO-IMAGE-AVAILABLE.jpg','','','');
insert  into `teacher`(`teacher_id`,`username`,`password`,`firstname`,`lastname`,`department_id`,`location`,`about`,`teacher_status`,`teacher_stat`) values (21,'jeseca','1234','Jeseca','Baculo',11,'uploads/NO-IMAGE-AVAILABLE.jpg','','Registered','');

/*Table structure for table `teacher_backpack` */

DROP TABLE IF EXISTS `teacher_backpack`;

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher_backpack` */

/*Table structure for table `teacher_class` */

DROP TABLE IF EXISTS `teacher_class`;

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_class` */

insert  into `teacher_class`(`teacher_class_id`,`teacher_id`,`class_id`,`subject_id`,`thumbnails`,`school_year`) values (187,20,24,42,'admin/uploads/thumbnails.jpg','2019-2020');
insert  into `teacher_class`(`teacher_class_id`,`teacher_id`,`class_id`,`subject_id`,`thumbnails`,`school_year`) values (188,20,25,43,'admin/uploads/thumbnails.jpg','2019-2020');
insert  into `teacher_class`(`teacher_class_id`,`teacher_id`,`class_id`,`subject_id`,`thumbnails`,`school_year`) values (189,21,25,43,'admin/uploads/thumbnails.jpg','2019-2020');

/*Table structure for table `teacher_class_announcements` */

DROP TABLE IF EXISTS `teacher_class_announcements`;

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_class_announcements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_class_announcements` */

insert  into `teacher_class_announcements`(`teacher_class_announcements_id`,`content`,`teacher_id`,`teacher_class_id`,`date`) values (1,'<p>ffdfd</p>\r\n','20',187,'2019-10-05 11:35:15');
insert  into `teacher_class_announcements`(`teacher_class_announcements_id`,`content`,`teacher_id`,`teacher_class_id`,`date`) values (2,'<p>ffdfd</p>\r\n','20',188,'2019-10-05 11:35:16');

/*Table structure for table `teacher_class_student` */

DROP TABLE IF EXISTS `teacher_class_student`;

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_class_student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_class_student` */

insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (378,187,219,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (380,188,219,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (382,188,221,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (384,187,221,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (386,187,220,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (387,187,222,20);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (388,189,220,21);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (389,189,221,21);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (390,189,222,21);
insert  into `teacher_class_student`(`teacher_class_student_id`,`teacher_class_id`,`student_id`,`teacher_id`) values (393,189,224,21);

/*Table structure for table `teacher_notification` */

DROP TABLE IF EXISTS `teacher_notification`;

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `teacher_notification` */

insert  into `teacher_notification`(`teacher_notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`,`student_id`,`assignment_id`) values (1,188,'Submit Assignment file name <b>chapter 1</b>','2019-10-02 14:26:28','view_submit_assignment.php',221,1);
insert  into `teacher_notification`(`teacher_notification_id`,`teacher_class_id`,`notification`,`date_of_notification`,`link`,`student_id`,`assignment_id`) values (2,188,'Submit Assignment file name <b>asas</b>','2019-10-02 15:48:32','view_submit_assignment.php',221,3);

/*Table structure for table `teacher_shared` */

DROP TABLE IF EXISTS `teacher_shared`;

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_shared_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher_shared` */

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

/*Data for the table `user_log` */

insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (88,'teph','2019-09-17 14:56:06','2019-09-17 15:04:50',13);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (89,'admin','2019-09-18 11:35:21','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (90,'admin','2019-09-18 11:50:30','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (91,'admin','2019-09-18 11:50:30','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (92,'admin','2019-09-22 12:06:00','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (93,'admin','2019-09-30 13:20:49','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (94,'admin','2019-09-30 22:05:53','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (95,'admin','2019-10-05 10:38:00','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (96,'admin','2019-10-07 12:45:45','2019-10-08 17:15:25',15);
insert  into `user_log`(`user_log_id`,`username`,`login_date`,`logout_date`,`user_id`) values (97,'admin','2019-10-08 16:17:14','2019-10-08 17:15:25',15);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`username`,`password`,`firstname`,`lastname`) values (13,'teph','teph','Stephanie','villanueva');
insert  into `users`(`user_id`,`username`,`password`,`firstname`,`lastname`) values (14,'jkev','jkev','john kevin','lorayna');
insert  into `users`(`user_id`,`username`,`password`,`firstname`,`lastname`) values (15,'admin','admin','admin','admin');
insert  into `users`(`user_id`,`username`,`password`,`firstname`,`lastname`) values (16,'juan','juan','juan','pedro');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
