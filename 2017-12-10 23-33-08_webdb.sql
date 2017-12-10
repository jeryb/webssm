/*
SQLyog Trial v12.3.3 (64 bit)
MySQL - 5.5.15 : Database - webdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`webdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `webdb`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`pwd`) values 
('admin','jifeng');

/*Table structure for table `ath_pro` */

DROP TABLE IF EXISTS `ath_pro`;

CREATE TABLE `ath_pro` (
  `Ath_ID` decimal(8,0) NOT NULL,
  `Pro_ID` decimal(3,0) NOT NULL,
  PRIMARY KEY (`Ath_ID`,`Pro_ID`),
  KEY `FK_ath_pro` (`Pro_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ath_pro` */

/*Table structure for table `athlete` */

DROP TABLE IF EXISTS `athlete`;

CREATE TABLE `athlete` (
  `ID` decimal(8,0) NOT NULL,
  `Name` varchar(8) NOT NULL,
  `Identity` varchar(18) NOT NULL,
  `Age` decimal(2,0) NOT NULL,
  `Sex` varchar(2) NOT NULL,
  `Tel` decimal(11,0) NOT NULL,
  `Score` decimal(2,0) DEFAULT NULL,
  `Team_ID` decimal(4,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_athlete` (`Team_ID`),
  CONSTRAINT `FK_athlete` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `athlete` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(20) NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL,
  `belong` varchar(100) NOT NULL DEFAULT '',
  `place` varchar(30) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL DEFAULT '',
  `selected` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`name`,`time`,`credit`,`belong`,`place`,`amount`,`detail`,`selected`) values 
(2,'油画','2015/2016(2)',4,'山水画社','广知楼103',21,'书法基础A班：每周六下午15:30~17:00（1.5个周学时），共开设10周；           书法基础B班：每周六晚18:30~20:00（1.5个周学时），共开设10周；           书法提高班：每周日15:00~17:00（2个周学时），共开设10周； ',20),
(3,'读书交流会','2015/2016(2)',2,'书山有路书社','图书馆二楼',20,'本课程突破传统面试技巧培训讲授式、零散型、非延续、少反馈的缺点，采用体验式培训的方式，重实战，多模拟，发挥人力资源管理专业优势，提供真实案例，给予专业点评，再辅以课程延续性、可及时反馈的优势，为学员在大学生活中常面临的社团面试及求职面试等提供有效指导。本课程将基于面试技巧、礼仪等方面的基本理论，结合大量课堂情境模拟练习及案例分析，帮助学员提高自身面试技能和礼仪修养，从容应对各种面试。',16),
(6,'test','2013/2014(2)',3,'test','test',20,'11',0);

/*Table structure for table `judger` */

DROP TABLE IF EXISTS `judger`;

CREATE TABLE `judger` (
  `ID` decimal(4,0) NOT NULL,
  `TEL` decimal(11,0) NOT NULL,
  `Age` varchar(2) NOT NULL,
  `Identity` varchar(18) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Name` varchar(16) NOT NULL,
  `Team_ID` decimal(4,0) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_judger` (`Team_ID`),
  CONSTRAINT `FK_judger` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `judger` */

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `Title` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Passage` varchar(500) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `notice` */

insert  into `notice`(`Title`,`Passage`) values 
('中文','你好');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Time` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `rule` varchar(1000) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `project` */

insert  into `project`(`ID`,`Name`,`Time`,`rule`) values 
(0,'跳马','12.22','这个比赛想要参加必须和马跳舞'),
(1,'体操','11.22','这个比赛想要参加必须身材好'),
(2,'吊环','12.04','这个比赛想要参加必须身材好'),
(3,'铁人','12.09','这个比赛想要参加必须命够硬'),
(4,'单杠','12.13','这个比赛想要参加必须能上单杠');

/*Table structure for table `project_update` */

DROP TABLE IF EXISTS `project_update`;

CREATE TABLE `project_update` (
  `ID` int(20) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Rule` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `AthSignUp` int(20) DEFAULT NULL,
  `AthPlay` int(20) DEFAULT NULL,
  `ScoreCalc` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `project_update` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `year` varchar(4) NOT NULL DEFAULT '',
  `major` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`pwd`,`name`,`sex`,`year`,`major`) values 
('1','pwd','gg','男','2015','jj');

/*Table structure for table `study` */

DROP TABLE IF EXISTS `study`;

CREATE TABLE `study` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` varchar(20) NOT NULL DEFAULT '',
  `s_name` varchar(20) NOT NULL DEFAULT '',
  `s_major` varchar(100) NOT NULL DEFAULT '',
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL DEFAULT '',
  `c_belong` varchar(100) NOT NULL DEFAULT '',
  `c_credit` int(11) NOT NULL,
  `c_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `study` */

insert  into `study`(`id`,`s_id`,`s_name`,`s_major`,`c_id`,`c_name`,`c_belong`,`c_credit`,`c_time`) values 
(2,'1','gg','jj',3,'读书交流会','书山有路书社',2,'2015/2016(2)');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `ID` decimal(5,0) NOT NULL DEFAULT '0',
  `Team_Name` varchar(20) DEFAULT '',
  `Leader_Id` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `Leader_Phone` varchar(20) DEFAULT '',
  `Doctor_Phone` varchar(20) DEFAULT '',
  `Coach_Name` varchar(20) DEFAULT '',
  `Coach_Phone` varchar(20) DEFAULT '',
  `Coach_Sex` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `Coach_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `PWD` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `Leader_Name` varchar(20) DEFAULT '',
  `Doctor_Name` varchar(20) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `team` */

insert  into `team`(`ID`,`Team_Name`,`Leader_Id`,`Leader_Phone`,`Doctor_Phone`,`Coach_Name`,`Coach_Phone`,`Coach_Sex`,`Coach_ID`,`PWD`,`Leader_Name`,`Doctor_Name`) values 
(1,'飞虎队','2333','55221','0','肥虎队','123','1','1','pwd','飞虎队','@#￥%#……￥'),
(2,'二师兄说的队','6666','12345','2333','黑龙江队','123','2','2','pwd','二师兄说的队','陈叫兽'),
(4,'堆√怼队','7777','696969','2333','龙队','fdg','ewr','3','pwd','堆√怼队','Do.Chen');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `user_age` int(3) DEFAULT NULL,
  `user_address` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `userinfo` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
