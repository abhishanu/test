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
-- Table structure for table `ri_temple_connectivity`
--

DROP TABLE IF EXISTS `ri_temple_connectivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple_connectivity` (
  `ADDRESS_ID` varchar(20) default NULL,
  `PARKING_LOT_DESC` varchar(100) default NULL,
  `NEAREST_BUS_STAND` varchar(100) default NULL,
  `NEAREST_RAILWAY_STATION` varchar(100) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `NEAREST_AIRPORT` varchar(100) default NULL,
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `ri_temple_connectivity_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `ri_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple_connectivity`
--

LOCK TABLES `ri_temple_connectivity` WRITE;
/*!40000 ALTER TABLE `ri_temple_connectivity` DISABLE KEYS */;
INSERT INTO `ri_temple_connectivity` VALUES ('1','','Kedarnath Road, Khumera','No railway station in the 50Km range','1','abhi','2018-04-09 14:45:43','','2018-04-09 14:45:43','Army Helipad Badrinath'),('2','','Grand Trunk Road, Near Panj Peer, New Golden Avenue, Golden Avenue, Amritsar','Amritsar','1','abhi','2018-04-16 12:07:58','','2018-04-16 12:07:58','Allama Iqbal International Airport'),('3','','Jaitpura, Varanasi','Varanasi City','1','abhi','2018-04-16 17:19:07','','2018-04-16 17:19:07','Lal Bahadur Shastri International Airport'),('4','','',NULL,'1','abhi','2018-05-14 17:10:35',NULL,NULL,''),(NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,' ',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_temple_connectivity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:22
