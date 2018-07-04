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
-- Table structure for table `ri_main_menu_items`
--

DROP TABLE IF EXISTS `ri_main_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_main_menu_items` (
  `ITEM_ID` varchar(20) NOT NULL default '',
  `ITEM_NAME` varchar(50) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` char(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `url` varchar(100) default NULL,
  PRIMARY KEY  (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_main_menu_items`
--

LOCK TABLES `ri_main_menu_items` WRITE;
/*!40000 ALTER TABLE `ri_main_menu_items` DISABLE KEYS */;
INSERT INTO `ri_main_menu_items` VALUES ('1','TEMPLE DONATIONS','1','ABhi','2018-03-29 14:21:36','','2018-03-29 14:21:36','/temple-donations'),('2','BOOK PANDIT','1','','2018-03-29 14:22:06','','2018-03-29 14:22:06','/book-pandit'),('3','POOJA SERVICES','1','','2018-03-29 14:22:40','','2018-03-29 14:22:40','/pooja-services'),('4','EVENTS & FESTIVALS','1','','2018-03-29 14:23:22','','2018-03-29 14:23:22','events-festivals'),('5','LIVE DARSHAN','1','','2018-03-29 14:23:59','','2018-03-29 14:23:59','/live-darshan'),('6','BLOG','1','','2018-03-29 14:24:28','','2018-03-29 14:24:28','/blog');
/*!40000 ALTER TABLE `ri_main_menu_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:30
