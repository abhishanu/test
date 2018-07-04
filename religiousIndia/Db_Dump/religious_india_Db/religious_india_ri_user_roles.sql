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
-- Table structure for table `ri_user_roles`
--

DROP TABLE IF EXISTS `ri_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_user_roles` (
  `USER_ROLE_ID` varchar(20) NOT NULL default '',
  `USER_ROLE` varchar(50) default NULL,
  `ROLE_DESC` varchar(100) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`USER_ROLE_ID`),
  UNIQUE KEY `USER_ROLE` (`USER_ROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_user_roles`
--

LOCK TABLES `ri_user_roles` WRITE;
/*!40000 ALTER TABLE `ri_user_roles` DISABLE KEYS */;
INSERT INTO `ri_user_roles` VALUES ('1','USER','Represents the general user of the website','1','abhi',NULL,NULL,NULL),('2','PANDIT','Represents the pandit user of the website','1','abhi',NULL,NULL,NULL),('3','TEMPLE','Represents the temple user of the website','1','abhi',NULL,NULL,NULL),('4','ADMIN','Represents the admin user of the website','1','abhi',NULL,NULL,NULL),('5','SUPER ADMIN','Represents the super admin user of the website','1','abhi',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ri_user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:14