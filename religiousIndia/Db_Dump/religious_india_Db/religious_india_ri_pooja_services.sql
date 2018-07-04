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
-- Table structure for table `ri_pooja_services`
--

DROP TABLE IF EXISTS `ri_pooja_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_pooja_services` (
  `SERVICE_ID` varchar(20) NOT NULL default '',
  `SERVICE_NAME` varchar(70) default NULL,
  `PANDIT_ID` varchar(20) default NULL,
  `TEMPLE_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `Service_Desc` text,
  `IMAGE_ID` varchar(20) default NULL,
  PRIMARY KEY  (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_pooja_services`
--

LOCK TABLES `ri_pooja_services` WRITE;
/*!40000 ALTER TABLE `ri_pooja_services` DISABLE KEYS */;
INSERT INTO `ri_pooja_services` VALUES ('1','Bhoomi Poojan','10','3','1','abhi',NULL,NULL,NULL,NULL,NULL),('2','Rudrabhishek','10','3','1','abhi',NULL,NULL,NULL,NULL,NULL),('3','Maha Abhishek',NULL,'2','1','abhi',NULL,NULL,NULL,NULL,NULL),('4','Hola Mohalla','5','1','1','abhi',NULL,NULL,NULL,'Military exercises swordsmanship and horse riding like are displayed by Nihang Singhs. ','17'),('5','Sangrand','5','1','1','abhi',NULL,NULL,NULL,'It marks the beginning of a new month. At the Gurudwara','18'),('6','Mahamritunjya Puja','1',NULL,'1','abhi',NULL,NULL,NULL,'The power of Mahamrityunjaya Jaap is such that an individual can achieve Moksha by chanting it','19'),('7','Navagraha Pujas','5','1','1','abhi','2018-04-16 17:19:07',NULL,NULL,'Navgrah puja can be performed anytime to please the nine planets and get their blessings. Navgrah puja is done during the housewarming ceremony, during marriages, child naming ceremonies and all the important events in life','45'),('8','Pitra Dosh Nivaran Puja','5','1','1','abhi',NULL,NULL,NULL,'This puja relieves the souls of the deceased ancestors, It helps in nullifying Pitra Rin','46'),('9','Shani Jaap for Shani Dosha Shanti','5','1','1','abhi',NULL,NULL,NULL,'If you are burdened with Saturn, it will bring disappointments, sorrow, miseries, delays, difficulties, disputes and disharmony.','47');
/*!40000 ALTER TABLE `ri_pooja_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:43
