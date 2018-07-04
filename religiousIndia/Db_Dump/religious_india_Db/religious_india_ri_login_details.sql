CREATE DATABASE  IF NOT EXISTS `religious_india` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `religious_india`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: religious_india
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `ri_login_details`
--

DROP TABLE IF EXISTS `ri_login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_login_details` (
  `PASS` varchar(50) default NULL,
  `USER_ROLE_ID` varchar(20) default NULL,
  `USER_ID` varchar(70) NOT NULL default '',
  `LOGIN_TYPE_ID` varchar(50) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`USER_ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_login_details`
--

LOCK TABLES `ri_login_details` WRITE;
/*!40000 ALTER TABLE `ri_login_details` DISABLE KEYS */;
INSERT INTO `ri_login_details` VALUES ('YWJoaQ==','5','abhishek.gupta02@irissoftware.com','4','1','Abhi','2018-05-31 18:49:18','Abhi',NULL),('MTIzNA==','5','ak.gupta2@religiousIndia.com','4','1','Abhi','2018-05-23 18:32:03','Abhi',NULL),('MTIzNA==','5','ak.gupta@religiousIndia.com','4','1','Abhi','2018-05-23 18:31:15','Abhi',NULL),('MTIzNA==','5','ak1@religiousIndia.com','4','1',NULL,'2018-05-09 16:43:24',NULL,NULL),('MTIzNA==','5','ak2@religiousIndia.com','4','1',NULL,'2018-05-09 16:43:55',NULL,NULL),('MTIzNA==','5','ak5.gupta2@religiousIndia.com','4','1','Abhi','2018-05-28 12:18:31','Abhi',NULL),('MTIzNA==','5','ak@religiousIndia.com','4','1','Abhi','2018-05-15 14:08:57','Abhi',NULL),('YWJoaTEyMw==',NULL,'itsme@religiousIndia.com',NULL,'1','Abhi','2018-05-17 13:24:16','Abhi',NULL),('MTIzNA==',NULL,'jindalit@gmail.com',NULL,'1','Abhi','2018-05-15 14:24:12','Abhi',NULL),('YWJoaTEyMw==',NULL,'noId@gmail.com',NULL,'1','Abhi','2018-05-17 13:31:35','Abhi',NULL),('MTIzNA==',NULL,'sdfd@sdf.com',NULL,'1','Abhi','2018-05-15 14:14:00','Abhi',NULL);
/*!40000 ALTER TABLE `ri_login_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:54
