/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.26-MariaDB : Database - angulartest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`angulartest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `angulartest`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(225) DEFAULT NULL,
  `last_name` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`first_name`,`last_name`,`address`,`email`,`phone_number`,`status`,`create_date`,`update_date`) values (1,'Heidi','Bowman','5693 Poplar Dr',NULL,NULL,'active','2017-10-11 12:56:31','2017-10-12 12:56:46'),(2,'Andre ','Brooks','8204 Sweards Bluff Ave\r\n',NULL,NULL,'active','2017-10-11 12:56:50','2017-10-11 12:57:00'),(3,'Frances ','Rodriquez','5340 Greenhaven Ln\r\n',NULL,NULL,'active','2017-10-11 12:57:15','2017-10-11 12:57:15'),(4,'Alyssa ','Hayes','3506 Rudder Rd\r\n',NULL,NULL,'active','2017-10-11 12:57:35','2017-10-11 12:57:35'),(5,'Andrea ','Fields','6581 Bruce St\r\n',NULL,NULL,'active','2017-10-11 12:57:51','2017-10-11 12:57:51'),(6,'Wendy ','Cooper','5599 Shelley St\r\n',NULL,NULL,'active','2017-10-11 12:58:09','2017-10-11 12:58:09'),(7,'Willie ','Schmidt','5059 W Lone Mountain Rd\r\n',NULL,NULL,'active','2017-10-11 12:58:23','2017-10-11 12:58:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
