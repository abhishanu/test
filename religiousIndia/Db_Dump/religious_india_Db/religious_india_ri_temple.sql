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
-- Table structure for table `ri_temple`
--

DROP TABLE IF EXISTS `ri_temple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple` (
  `TEMPLE_ID` varchar(20) NOT NULL default '',
  `TEMPLE_NAME` varchar(100) default NULL,
  `TEMPLE_DESC` varchar(500) default NULL,
  `TEMPLE_ADDRESS_ID` varchar(20) default NULL,
  `AUTH_CHANNEL_PARTNER` varchar(2) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `MAIN_IMAGE_ID` varchar(50) default NULL,
  `CONTACT_NO` varchar(12) default NULL,
  `Image_Gallery` text,
  PRIMARY KEY  (`TEMPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple`
--

LOCK TABLES `ri_temple` WRITE;
/*!40000 ALTER TABLE `ri_temple` DISABLE KEYS */;
INSERT INTO `ri_temple` VALUES ('1','Golden Temple','This temple is in the punjab(amritsar)','2','0','1','abhi','2018-04-04 11:26:56','','2018-04-04 11:26:56','5','1122112211','[{\"imageId\":\"22\"},{\"imageId\":\"23\"},{\"imageId\":\"24\"},{\"imageId\":\"25\"},{\"imageId\":\"26\"},{\"imageId\":\"27\"},{\"imageId\":\"28\"},{\"imageId\":\"29\"},{\"imageId\":\"30\"},{\"imageId\":\"31\"},{\"imageId\":\"32\"},{\"imageId\":\"33\"},{\"imageId\":\"34\"},{\"imageId\":\"35\"},{\"imageId\":\"36\"}]'),('2','Badrinath Temple','This temple is a hindu temple of lord vishnu','1','1','1','abhi','2018-04-04 11:28:15','','2018-04-04 11:28:15','4','0000000011',NULL),('3','kashi vishwanath','Land of Shiva','3','0','1','abhi','2018-04-16 17:12:10','','2018-04-16 17:12:10','2','12121212',NULL),('4','kalka ji mandir','Kalka Ji Mandir is one of the oldest temples in the country and in Delhi as it was built in 1764 AD and is dedicated to goddess Kali','4','0','1','abhi',NULL,NULL,NULL,'11',NULL,NULL);
/*!40000 ALTER TABLE `ri_temple` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:38
