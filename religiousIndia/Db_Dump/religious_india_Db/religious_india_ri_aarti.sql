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
-- Table structure for table `ri_aarti`
--

DROP TABLE IF EXISTS `ri_aarti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_aarti` (
  `AARTI_ID` varchar(20) NOT NULL default '',
  `AARTI_NAME` varchar(70) default NULL,
  `AARTI_DESC` varchar(100) default NULL,
  `AARTI_DAY` varchar(70) default NULL,
  `START_TIME` varchar(50) default NULL,
  `END_TIME` varchar(50) default NULL,
  `TEMPLE_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`AARTI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_aarti`
--

LOCK TABLES `ri_aarti` WRITE;
/*!40000 ALTER TABLE `ri_aarti` DISABLE KEYS */;
INSERT INTO `ri_aarti` VALUES ('1','Morning Aarti','Daily Aarti','All','7','7.3','2','1','abhi','2018-04-06 13:04:05','','2018-04-06 13:04:05'),('2','Eve Aarti','Daily Aarti','All','19','19.5','2','1','abhi','2018-04-06 13:04:35','','2018-04-06 13:04:35'),('3','Morning Aarti','Daily aarti','All','8','8.30','1','1','abhi','2018-04-16 11:58:35','','2018-04-16 11:58:35'),('4','Eve Aatrti','Daily aarti','All','20','20.30','1','1','abhi','2018-04-16 11:58:56','','2018-04-16 11:58:56'),('5','Morning Aarti','Daily Aarti','All','5.30','6.15','3','1','abhi','2018-04-16 17:16:18','','2018-04-16 17:16:18'),('6','Eve Aarti','Daily Aarti','All','19.30','20','3','1','abhi','2018-04-16 17:16:50','','2018-04-16 17:16:50'),('7','Eve Aarti','Daily Aarti','All','17.30','17.45','4','1','abhi',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_aarti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:31
