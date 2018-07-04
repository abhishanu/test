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
-- Table structure for table `ri_address`
--

DROP TABLE IF EXISTS `ri_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_address` (
  `ADDRESS_ID` varchar(20) NOT NULL default '',
  `STATE` varchar(50) default NULL,
  `DIST` varchar(50) default NULL,
  `CITY` varchar(50) default NULL,
  `ADDRESS_DETAIL` varchar(100) default NULL,
  `IS_TEMPLE_ADDRESS` varchar(2) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `City_Id` varchar(20) default NULL,
  PRIMARY KEY  (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_address`
--

LOCK TABLES `ri_address` WRITE;
/*!40000 ALTER TABLE `ri_address` DISABLE KEYS */;
INSERT INTO `ri_address` VALUES ('1','Uttarakhand','Chamoli','Chamoli','Badrinath Temple,Uttarakhand','1','1','abhi','2018-04-06 18:02:52','','2018-04-06 18:02:52','1365'),('10','Delhi','Delhi','Delhi','C-545, New Ashok Nagar','0','1','abhi',NULL,NULL,NULL,NULL),('11','Uttar Pradesh','Noida','Noida','Noida extension','0','1','abhi',NULL,NULL,NULL,NULL),('15','Punjab','Amritsar','Amritsar','koi address nhi hai ','0','1','abhi',NULL,NULL,NULL,'1054'),('2','Punjab','Amritsar','Amritsar','Golden Temple Rd, Atta Mandi, Katra Ahluwalia','1','1','abhi','2018-04-12 18:02:52',NULL,'2018-04-12 18:02:52','1054'),('3','Uttar Pradesh','Varanasi','Varanasi','Kashi Vishvanath Temple,Varanasi','1','1','abhi','2018-04-16 17:14:38','','2018-04-16 17:14:38','1044'),('4','New Delhi','Delhi','Delhi','Nehru Place,New Delhi','1','1','abhi','2018-04-16 17:14:38',NULL,'2018-04-16 17:14:38','1109'),('5','Punjab','Amritsar','Amritsar','anjaan gali,gumnnam mahula','0','1','abhi','2018-04-16 17:14:38',NULL,'2018-04-16 17:14:38','1054'),('6','Delhi','Delhi','Delhi','C-545, New Ashok Nagar','0','1','abhi','2018-04-16 17:14:38',NULL,'2018-04-16 17:14:38',NULL);
/*!40000 ALTER TABLE `ri_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:17
