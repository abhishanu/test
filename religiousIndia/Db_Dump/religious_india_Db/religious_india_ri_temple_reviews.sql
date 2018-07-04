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
-- Table structure for table `ri_temple_reviews`
--

DROP TABLE IF EXISTS `ri_temple_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_temple_reviews` (
  `VERSION_ID` int(11) default NULL,
  `REVIEW_ID` int(11) NOT NULL auto_increment,
  `RATING` varchar(20) NOT NULL,
  `USER_REVIEW_ABOUT` varchar(150) default NULL,
  `USER_REVIEW_DESC` text,
  `USER_ID` varchar(20) default NULL,
  `TEMPLE_ID` varchar(20) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`REVIEW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_temple_reviews`
--

LOCK TABLES `ri_temple_reviews` WRITE;
/*!40000 ALTER TABLE `ri_temple_reviews` DISABLE KEYS */;
INSERT INTO `ri_temple_reviews` VALUES (0,1,'2','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized','12','1','1','Abhi','2018-05-30 15:22:49','Abhi','2018-05-30 15:22:49'),(1,3,'5','Clean and well organized','2133131221321312123','12','1','1',NULL,NULL,'Abhi','2018-05-30 15:25:24'),(0,4,'2','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized','12','1','1','Abhi','2018-05-30 15:28:56','Abhi','2018-05-30 15:28:56'),(0,5,'2','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','ZHXHJSXB ','12','1','1','Abhi','2018-05-30 15:29:14','Abhi','2018-05-30 15:29:14'),(0,6,'5','ydgds','sdffffffewewr234324342','12','1','1','Abhi','2018-05-30 15:31:08','Abhi','2018-05-30 15:31:08'),(0,7,'4','qwe','qweeee','12','1','1','Abhi','2018-05-30 15:33:19','Abhi','2018-05-30 15:33:19'),(0,8,'1','new one','testnew','12','1','1','Abhi','2018-05-30 15:34:44','Abhi','2018-05-30 15:34:44');
/*!40000 ALTER TABLE `ri_temple_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:31
