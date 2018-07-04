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
-- Table structure for table `ri_home_banner`
--

DROP TABLE IF EXISTS `ri_home_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_home_banner` (
  `IMAGE_ID` varchar(20) default NULL,
  `BANNER_NAME` varchar(100) default NULL,
  `ITEM_ID` varchar(20) default NULL,
  `SUB_ITEM_ID` varchar(20) default NULL,
  `DATA_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `BANNER_DESC` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_home_banner`
--

LOCK TABLES `ri_home_banner` WRITE;
/*!40000 ALTER TABLE `ri_home_banner` DISABLE KEYS */;
INSERT INTO `ri_home_banner` VALUES ('2','Haridwar Har Ki Pauri.','1','1','','1','abhi','2018-03-29 18:18:45','','2018-03-29 18:18:45','Haridwar, visit Mansa Devi Temple & Ganga aarti at Har Ki Pauri.'),('3','ARULMIGU MEENAKSHI SUNDARESHWARAR THIRUKKOIL','1','2','','1','abhi','2018-03-29 18:29:51','','2018-03-29 18:29:51','This is a test description for the title'),('4','Badrinath Temple','2','1','','1','abhi','2018-03-29 18:30:04','','2018-03-29 18:30:04',' Badrinarayan Temple is a Hindu temple dedicated to Vishnu'),('11','Kalkaji Mandir','3','3',NULL,'1','abhi',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_home_banner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:33
