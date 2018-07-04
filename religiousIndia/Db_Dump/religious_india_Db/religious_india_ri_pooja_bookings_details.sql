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
-- Table structure for table `ri_pooja_bookings_details`
--

DROP TABLE IF EXISTS `ri_pooja_bookings_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_pooja_bookings_details` (
  `VERSION_ID` int(11) default NULL,
  `POOJA_BOOKING_ID` int(11) NOT NULL auto_increment,
  `USER_ID` varchar(20) NOT NULL,
  `POOJA_SERVICE_SUB_CATEGORY_ID_1` varchar(20) default NULL,
  `POOJA_SERVICE_SUB_CATEGORY_ID_2` varchar(20) default NULL,
  `PANDIT_ID` varchar(20) NOT NULL,
  `POOJA_ADD_ON_ID` varchar(20) default NULL,
  `POOJA_MODE_ID` varchar(20) default NULL,
  `POOJA_MEDIA_DETAILS_ID` varchar(20) default NULL,
  `POOJA_COMMUNICATION_ID` varchar(20) default NULL,
  `DATE_CONDUCTED` datetime default NULL,
  `DATE_BOOKED` datetime default NULL,
  `Timing` varchar(100) default NULL,
  `Is_Multi_Days` varchar(2) default '0',
  `No_Of_Days` varchar(2) default '1',
  `PAYMENT_ID` varchar(20) default NULL,
  `Is_Out_Station` varchar(2) default NULL,
  `OUTSTATION_LOCATION` varchar(100) default NULL,
  `POOJA_STATUS_ID` varchar(20) default NULL,
  `POOJA_LANGUAGE` varchar(50) default NULL,
  `USER_REVIEW_ID` varchar(20) default NULL,
  `DATE_COMPLETED` datetime default NULL,
  `CANCELLATION_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `pooja_desc` varchar(150) default NULL,
  PRIMARY KEY  (`POOJA_BOOKING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_pooja_bookings_details`
--

LOCK TABLES `ri_pooja_bookings_details` WRITE;
/*!40000 ALTER TABLE `ri_pooja_bookings_details` DISABLE KEYS */;
INSERT INTO `ri_pooja_bookings_details` VALUES (0,1,'11',NULL,NULL,'5',NULL,'1',NULL,NULL,'2018-06-25 00:00:00','2018-05-29 00:00:00','6-9','1','3','11','0',NULL,NULL,'1','10','2018-06-13 14:26:26',NULL,'1','Abhi','2018-05-30 14:26:26','Abhi','2018-05-30 14:26:26','3 Days complete \'grah shanti puja\'');
/*!40000 ALTER TABLE `ri_pooja_bookings_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:37
