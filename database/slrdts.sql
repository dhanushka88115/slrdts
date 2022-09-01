/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.5-10.4.24-MariaDB : Database - mmsslrdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mmsslrdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `mmsslrdb`;

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) values (1,'admin','anuj.lpu1@gmail.com','Test@1234','2016-04-05 02:01:45','2016-04-17');

/*Table structure for table `adminlog` */

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

/*Table structure for table `devisions` */

CREATE TABLE `devisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devision_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

/*Data for the table `devisions` */

insert  into `devisions`(`id`,`devision_name`) values (1,'GM Office');
insert  into `devisions`(`id`,`devision_name`) values (2,'CR');
insert  into `devisions`(`id`,`devision_name`) values (3,'COM');
insert  into `devisions`(`id`,`devision_name`) values (4,'SRS');

/*Table structure for table `registration` */

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recidate` date DEFAULT NULL,
  `devision` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `recitype` varchar(500) DEFAULT NULL,
  `regplace` varchar(250) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32424 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`comment`) values (5,'2022-08-31','CR',56,'LMNOP','Loan Infor','By Normal Post','Maradana','Give your Priority');
insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`comment`) values (34,'2022-08-30','SRS',345454,'PQR','Attention on land','By Hand','Kelaniya','Pay Attention');
insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`comment`) values (56,'2022-09-01','CR',88,'QRST','Vehicle','By Normal Post','Hambanthota','No need');
insert  into `registration`(`id`,`recidate`,`devision`,`regno`,`subject`,`title`,`recitype`,`regplace`,`comment`) values (4444,'2022-08-04','GM Office',4444,'ABC','Land','By Hand','Colombo 02','Need to Auothorize');

/*Table structure for table `rooms` */

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `room_no` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rooms` */

insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (1,5,100,8000,'2020-04-12 04:15:43');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (2,2,201,6000,'2020-04-12 07:00:47');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (3,2,200,6000,'2020-04-12 07:00:58');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (4,3,112,4000,'2020-04-12 07:01:07');
insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (5,5,132,2000,'2020-04-12 07:01:15');

/*Table structure for table `states` */

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `states` */

insert  into `states`(`id`,`State`) values (1,'Andaman and Nicobar Island (UT)');
insert  into `states`(`id`,`State`) values (2,'Andhra Pradesh');
insert  into `states`(`id`,`State`) values (3,'Arunachal Pradesh');
insert  into `states`(`id`,`State`) values (4,'Assam');
insert  into `states`(`id`,`State`) values (5,'Bihar');
insert  into `states`(`id`,`State`) values (6,'Chandigarh (UT)');
insert  into `states`(`id`,`State`) values (7,'Chhattisgarh');
insert  into `states`(`id`,`State`) values (8,'Dadra and Nagar Haveli (UT)');
insert  into `states`(`id`,`State`) values (9,'Daman and Diu (UT)');
insert  into `states`(`id`,`State`) values (10,'Delhi (NCT)');
insert  into `states`(`id`,`State`) values (11,'Goa');
insert  into `states`(`id`,`State`) values (12,'Gujarat');
insert  into `states`(`id`,`State`) values (13,'Haryana');
insert  into `states`(`id`,`State`) values (14,'Himachal Pradesh');
insert  into `states`(`id`,`State`) values (15,'Jammu and Kashmir');
insert  into `states`(`id`,`State`) values (16,'Jharkhand');
insert  into `states`(`id`,`State`) values (17,'Karnataka');
insert  into `states`(`id`,`State`) values (18,'Kerala');
insert  into `states`(`id`,`State`) values (19,'Lakshadweep (UT)');
insert  into `states`(`id`,`State`) values (20,'Madhya Pradesh');
insert  into `states`(`id`,`State`) values (21,'Maharashtra');
insert  into `states`(`id`,`State`) values (22,'Manipur');
insert  into `states`(`id`,`State`) values (23,'Meghalaya');
insert  into `states`(`id`,`State`) values (24,'Mizoram');
insert  into `states`(`id`,`State`) values (25,'Nagaland');
insert  into `states`(`id`,`State`) values (26,'Odisha');
insert  into `states`(`id`,`State`) values (27,'Puducherry (UT)');
insert  into `states`(`id`,`State`) values (28,'Punjab');
insert  into `states`(`id`,`State`) values (29,'Rajastha');
insert  into `states`(`id`,`State`) values (30,'Sikkim');
insert  into `states`(`id`,`State`) values (31,'Tamil Nadu');
insert  into `states`(`id`,`State`) values (32,'Telangana');
insert  into `states`(`id`,`State`) values (33,'Tripura');
insert  into `states`(`id`,`State`) values (34,'Uttarakhand');
insert  into `states`(`id`,`State`) values (35,'Uttar Pradesh');
insert  into `states`(`id`,`State`) values (36,'West Bengal');

/*Table structure for table `userlog` */

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (6,3,'10806121','::1','','','2020-07-20 20:26:45');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (7,3,'test@gmail.com','::1','','','2022-08-30 13:35:00');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (8,3,'test@gmail.com','::1','','','2022-08-30 14:14:23');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (9,3,'test@gmail.com','::1','','','2022-08-30 14:24:55');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (10,3,'test@gmail.com','::1','','','2022-08-30 15:41:05');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (11,3,'test@gmail.com','::1','','','2022-08-30 15:53:39');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (12,3,'test@gmail.com','::1','','','2022-08-30 16:29:36');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (13,3,'test@gmail.com','::1','','','2022-08-31 08:58:35');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (14,3,'test@gmail.com','::1','','','2022-08-31 11:58:40');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (15,3,'test@gmail.com','::1','','','2022-08-31 12:50:18');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (16,3,'test@gmail.com','::1','','','2022-09-01 08:46:36');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (17,3,'test@gmail.com','::1','','','2022-09-01 12:13:51');
insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (18,3,'test@gmail.com','10.5.232.18','','','2022-09-01 13:39:05');

/*Table structure for table `userregistration` */

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (3,'10806121','Anuj','','kumar','male',1234567890,'test@gmail.com','Test@123','2020-07-20 20:26:18',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (4,'1235',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-30 13:34:45',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-30 13:37:46',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (6,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-30 14:14:05',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (7,'345454',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-30 14:22:59',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (8,'4444',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-30 15:53:04',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (9,'56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-31 08:57:44',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (10,'90',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-01 08:52:23',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (11,'88',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-01 08:54:37',NULL,NULL);
insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (12,'PS/2009/178',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-09-01 13:42:46',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
