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
-- Table structure for table `ri_temple_overview`
--

DROP TABLE IF EXISTS `ri_temple_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple_overview` (
  `TEMPLE_ID` varchar(20) NOT NULL default '',
  `TEMPLE_HISTORY` text,
  `TEMPLE_HAS_VIDEO` varchar(2) default NULL,
  `Temple_VIDEO_LINK` varchar(50) default NULL,
  `TEMPLE_HISTORY_IMAGE` varchar(10) default NULL,
  `TEMPLE_INTRO_LINE` varchar(50) default NULL,
  `TEMPLE_INTRO_DETAILS` text,
  `TEMPLE_MISSION_STMT_DETAILS` text,
  `TEMPLE_SPECIAL_SERVICES_DETAILS` text,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`TEMPLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple_overview`
--

LOCK TABLES `ri_temple_overview` WRITE;
/*!40000 ALTER TABLE `ri_temple_overview` DISABLE KEYS */;
INSERT INTO `ri_temple_overview` VALUES ('1','The construction of Harmandir Sahib was intended to build a place of worship for men and women from all walks of life and all religions to worship God equally.[2][6] The four entrances (representing the four directions) to get into the Harmandir Sahib also symbolise the openness of the Sikhs towards all people and religions.[7] Over 100,000 people visit the shrine daily for worship, and also partake jointly in the free community kitchen and meal (Langar) regardless of any distinctions, a tradition that is a hallmark of all Sikh Gurdwaras.','0',NULL,'6','Golden Temple','[{\'Image\':7,\'Desc\':\'Guru Nanak\'},{\'Image\':9,\'Desc\':\'HarGovind\'},{\'Image\':10,\'Desc\':\'Guru Amar Das\'}]','[{\'Image\':8,\'Desc\':\"Langar\"}]',NULL,'1','abhi',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_temple_overview` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:24
