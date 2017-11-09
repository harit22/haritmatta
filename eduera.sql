/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.5.30 : Database - eduera
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eduera` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eduera`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `user` varchar(66) DEFAULT NULL,
  `pass` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`user`,`pass`) values ('a','a');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `studentnm` varchar(44) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `emailid` varchar(44) DEFAULT NULL,
  `mobile` varchar(44) DEFAULT NULL,
  `addrs` varchar(55) DEFAULT NULL,
  `cource` varchar(33) DEFAULT NULL,
  `DurationOfCource` varchar(99) DEFAULT NULL,
  `studentphoto` varchar(99) DEFAULT NULL,
  `idimage` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`studentnm`,`password`,`emailid`,`mobile`,`addrs`,`cource`,`DurationOfCource`,`studentphoto`,`idimage`) values ('2','2LRroPriA19GQvfnVrxv0g==','p','9999999999','p','MBA','3','2006_Security_01.jpg','1.jpg'),('ww','2LRroPriA19GQvfnVrxv0g==','pp','5555555555','p','M.TECH','5','2006_Security_01.jpg','ad.jpg'),('vd','2LRroPriA19GQvfnVrxv0g==','p','6666666666','p','MBA','3','admin4.jpg','admin4.jpg'),('s','2LRroPriA19GQvfnVrxv0g==','p','5456456456','p','M.TECH','7','cloud_computing_cio.com_.gif','admin4.jpg'),('p','2LRroPriA19GQvfnVrxv0g==','p','45645645645','p','M.TECH','7','cloud_computing_cio.com_.gif','cloud_computing_cio.com_.gif');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
