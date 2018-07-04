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
-- Table structure for table `ri_user_details`
--

DROP TABLE IF EXISTS `ri_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_user_details` (
  `USER_ID` int(11) NOT NULL auto_increment,
  `LOCATION` varchar(50) default NULL,
  `FIRSTNAME` varchar(100) default NULL,
  `MIDDLENAME` varchar(100) default NULL,
  `LASTNAME` varchar(100) default NULL,
  `GENDER` varchar(10) default NULL,
  `DOB` date default NULL,
  `PRIMARY_PHONE` varchar(12) default NULL,
  `SECONDARY_PHONE` varchar(12) default NULL,
  `USER_ROLE_ID` varchar(20) default NULL,
  `EMAIL` varchar(70) default NULL,
  `PHOTO_ID` varchar(20) default NULL,
  `PANCARD` varchar(10) default NULL,
  `AADHARCARD` varchar(20) default NULL,
  `VOTERID` varchar(20) default NULL,
  `TEMPLE_ID` varchar(20) default NULL,
  `PANDIT_ID` varchar(20) default NULL,
  `EVENT_ID` varchar(20) default NULL,
  `POOJA_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default '1',
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `Address_Id` varchar(20) default NULL,
  PRIMARY KEY  (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_user_details`
--

LOCK TABLES `ri_user_details` WRITE;
/*!40000 ALTER TABLE `ri_user_details` DISABLE KEYS */;
INSERT INTO `ri_user_details` VALUES (1,NULL,'Abhishek','Kumar','Gupta','Male',NULL,NULL,NULL,'5','ak1@religiousIndia.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'Abhishek','Kumar','Gupta','Male',NULL,NULL,NULL,'5','ak2@religiousIndia.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'Abhishek','','Gupta','Male',NULL,NULL,NULL,'5','ak@religiousIndia.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'sdf',NULL,'sdf','Female',NULL,NULL,NULL,NULL,'sdfd@sdf.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'Mayank',NULL,'Jindal','Male',NULL,NULL,NULL,NULL,'jindalit@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'Abhi','Kumar','Gupta','Male',NULL,NULL,NULL,NULL,'abhi@religiousIndia.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Amritsar','Deepak',' ','Kapoor','Male',NULL,'8317000000',NULL,NULL,'pandit@religiousIndia.com','20',NULL,NULL,NULL,'1','1',NULL,NULL,'1',NULL,NULL,NULL,NULL,'15'),(10,'Delhi','Abhishek','Kumar','Gupta','Male',NULL,'9812120000',NULL,NULL,'ak@religiousIndia.com','41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'10'),(11,'Amritsar','R ','K','Shridhar','Male',NULL,'9812120000',NULL,NULL,'shri@religiousIndia.com','21',NULL,NULL,NULL,'1','5',NULL,NULL,'1',NULL,NULL,NULL,NULL,'5'),(12,'Uttar Pradesh','Mayank',' ','Jindal','Male',NULL,'8712121212',NULL,NULL,'mayank.religiousIndia.com','40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'5'),(13,'Delhi','Abhishek','Kumar','','Male',NULL,NULL,NULL,'5','ak.gupta2@religiousIndia.com','41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'6'),(14,NULL,'Abhishek','Kumar','','Male',NULL,NULL,NULL,'5','ak5.gupta2@religiousIndia.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'Abhi','','','Male',NULL,NULL,NULL,'5','abhishek.gupta02@irissoftware.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:20
