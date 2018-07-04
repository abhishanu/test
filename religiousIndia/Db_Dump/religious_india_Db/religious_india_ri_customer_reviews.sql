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
-- Table structure for table `ri_customer_reviews`
--

DROP TABLE IF EXISTS `ri_customer_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_customer_reviews` (
  `VERSION_ID` int(11) default NULL,
  `REVIEW_ID` double NOT NULL auto_increment,
  `RATING` varchar(20) NOT NULL,
  `USER_REVIEW_ABOUT` varchar(150) default NULL,
  `USER_REVIEW_DESC` text,
  `PANDIT_ID` varchar(20) default NULL,
  `POOJA_ID` varchar(20) default NULL,
  `USER_ID` varchar(20) default NULL,
  `BOOKING_ID` varchar(20) default NULL,
  `BOOKING_TYPE` varchar(10) default NULL,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`REVIEW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_customer_reviews`
--

LOCK TABLES `ri_customer_reviews` WRITE;
/*!40000 ALTER TABLE `ri_customer_reviews` DISABLE KEYS */;
INSERT INTO `ri_customer_reviews` VALUES (0,1,'4','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized',NULL,'5','12','1',NULL,'1','Abhi','2018-05-23 17:52:38','Abhi','2018-05-23 17:52:38'),(0,2,'4','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized',NULL,'5','12','1',NULL,'1','Abhi','2018-05-23 17:52:53','Abhi','2018-05-23 17:52:53'),(0,3,'4','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized','5',NULL,'12',NULL,NULL,'1','Abhi','2018-05-23 17:53:13','Abhi','2018-05-23 17:53:13'),(0,4,'4','Well organized and clean.The fact that volunteers run it so well is commendable.	 xyz','Clean and well organized','5',NULL,'13',NULL,NULL,'1','Abhi','2018-05-23 19:33:58','Abhi','2018-05-23 19:33:58'),(0,6,'3','Quite knowledgble man','Good Knowledge of veds','5',NULL,'10',NULL,NULL,'1','Abhi','2018-05-24 13:44:31','Abhi','2018-05-24 13:44:31'),(0,7,'4','tesr','aasdddd','5',NULL,'11',NULL,NULL,'1','Abhi','2018-06-04 13:22:06','Abhi','2018-06-04 13:22:06'),(0,8,'2','qwe23143','err','5',NULL,'12',NULL,NULL,'1','Abhi','2018-06-04 13:24:47','Abhi','2018-06-04 13:24:47');
/*!40000 ALTER TABLE `ri_customer_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:36
