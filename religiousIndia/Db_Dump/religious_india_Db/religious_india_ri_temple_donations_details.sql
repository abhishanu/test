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
-- Table structure for table `ri_temple_donations_details`
--

DROP TABLE IF EXISTS `ri_temple_donations_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple_donations_details` (
  `VERSION_ID` varchar(20) NOT NULL default '',
  `DONATION_ID` varchar(20) NOT NULL default '',
  `TEMPLE_ID` varchar(20) default NULL,
  `DONATION_CATEGORY_ID` varchar(20) default NULL,
  `DONATION_SUB_CATEGORY_ID` varchar(20) default NULL,
  `USER_ID` varchar(20) default NULL,
  `AMOUNT_DONATED` varchar(10) default NULL,
  `PAYMENT_ID` varchar(20) default NULL,
  `DONATION_DATE` datetime default NULL,
  `DONATION_STATUS_ID` varchar(20) default NULL,
  `DATE_COMPLETED` datetime default NULL,
  `USER_REVIEW_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`DONATION_ID`,`VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple_donations_details`
--

LOCK TABLES `ri_temple_donations_details` WRITE;
/*!40000 ALTER TABLE `ri_temple_donations_details` DISABLE KEYS */;
INSERT INTO `ri_temple_donations_details` VALUES ('1','1','1','1','1','1','123','1234',NULL,'1',NULL,'1','1',NULL,NULL,NULL,NULL),('1','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1','5',NULL,'2',NULL,NULL,'10000.0','44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Abhi','2018-05-11 15:07:24');
/*!40000 ALTER TABLE `ri_temple_donations_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:12
