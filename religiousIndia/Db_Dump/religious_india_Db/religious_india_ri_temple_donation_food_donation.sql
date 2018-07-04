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
-- Table structure for table `ri_temple_donation_food_donation`
--

DROP TABLE IF EXISTS `ri_temple_donation_food_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple_donation_food_donation` (
  `DONATION_SUB_CATEGORY_ID` varchar(20) NOT NULL,
  `DONATION_SUB_CATEGORY_NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(250) default NULL,
  `STARTDATE` datetime default NULL,
  `ENDDATE` datetime default NULL,
  `REQUIRED_MONEY` double default NULL,
  `COLLECTED_MONEY` double default NULL,
  `NO_OF_CONTIBUITORS` int(11) default NULL,
  `TEMPLE_ID` varchar(20) default NULL,
  `TEMPLE_DONATION_CATEGORY_ID` varchar(20) default NULL,
  `IMAGE_ID` varchar(20) default NULL,
  `ADDRESS_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`DONATION_SUB_CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple_donation_food_donation`
--

LOCK TABLES `ri_temple_donation_food_donation` WRITE;
/*!40000 ALTER TABLE `ri_temple_donation_food_donation` DISABLE KEYS */;
INSERT INTO `ri_temple_donation_food_donation` VALUES ('1','Food Donation At An Orphanage','It is unfortunate that scores of children are homeless and have no family members to look after them. Such children living in orphanages as well as other institutions','2018-05-12 07:26:29','2018-05-14 07:26:29',10000,5600,11,'1','3','8','2','1','abhi',NULL,NULL,NULL),('2','Food Donation At A Gurudwara','Sikhism has always championed the cause of donation and seva. The very fundamental belief is to give back to the society and uplift those who are in need.','2018-05-11 07:26:29','2018-05-14 07:26:29',12500,600,2,'1','3','14','1','1','abhi',NULL,NULL,NULL),('3','Food Donation At Old Age Home','Not everyone in life is fortunate to be surrounded by loved ones and family members.','2018-05-13 07:26:29','2018-05-14 07:26:29',5000,0,0,'1','3','15','1','1','abhi',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_temple_donation_food_donation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:39
