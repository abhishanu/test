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
-- Table structure for table `ri_pandit_details`
--

DROP TABLE IF EXISTS `ri_pandit_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_pandit_details` (
  `VERSION_ID` int(11) NOT NULL default '0',
  `PANDIT_ID` varchar(20) NOT NULL default '',
  `USER_ID` mediumtext,
  `SUBSCRIPTION_DETAILS_ID` varchar(20) default NULL,
  `PANDIT_CATEGORY_ID` varchar(20) default NULL,
  `PANDIT_EDUCATIONAL_DETAILS` text,
  `TYPE_OF_AVAILABILITY` varchar(20) default NULL,
  `IS_ASSOCIATED_WITH_TEMPLE` varchar(2) default NULL,
  `IS_FREE_LANCER` varchar(2) default NULL,
  `Specilaization` text,
  `SPECILAIZATION_POOJA` varchar(20) default NULL,
  `PANDIT_EXP_START_DATE` datetime default NULL,
  `PANDIT_PROFESSIONAL_RESUME` text,
  `PANDIT_DAILY_AVAILABILITY_TIMINGS_ID` varchar(20) default NULL,
  `BOOKS_PUBLISHED_DETAILS` varchar(100) default NULL,
  `FAMOUS_ARTICLES_LINK` text,
  `MAGZINE_ASSOCIATION_DETAILS` varchar(250) default NULL,
  `Award_received_Details` text,
  `VIDEO_ID_DETAILS` varchar(200) default NULL,
  `PHOTO_ID_DETAILS` varchar(200) default NULL,
  `RI_PANDIT_RATING` mediumtext,
  `IS_ACTIVE` varchar(2) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  `IMAGE_ID` varchar(20) default NULL,
  `Reviewers` int(11) default NULL,
  `Temple_Id` varchar(50) default NULL,
  `Pandit_Desc` varchar(500) default NULL,
  PRIMARY KEY  (`PANDIT_ID`,`VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_pandit_details`
--

LOCK TABLES `ri_pandit_details` WRITE;
/*!40000 ALTER TABLE `ri_pandit_details` DISABLE KEYS */;
INSERT INTO `ri_pandit_details` VALUES (0,'1','12',NULL,'NEW',NULL,'PERSONAL','1','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.2','1',NULL,NULL,NULL,NULL,'20',4,NULL,'A learned and well-versed Panditji. Available for all Bengali rituals.'),(2,'5','11',NULL,'VIP','BA (Hindi Literature)','VIDEO','1','0','Astrology Services,Monthly Horoscopes,Life Consulting and Remedies,Vashikaran Mantras,Horoscope Specialist,Know Future by DOB','Horoscope Specialist',NULL,NULL,'1.0',NULL,'[{\'Article_Name\':\'A Bud That Is Healthy Will Blossom\',\'URL\':\'\'},{\'Article_Name\':\'Love purifies you!!\',\'URL\':\'\'},{\'Article_Name\':\'Sacred Space- Who Is Corrupt?\',\'URL\':\'\'},{\'Article_Name\':\'Celebrate, Feel The Joy, Because Life Is Light\',\'URL\':\'\'},{\'Article_Name\':\'The Divine Energy To Overcome Obstacles\',\'URL\':\'\'},{\'Article_Name\':\'The Spirit Is Willing But The Flesh Is Weak\',\'URL\':\'\'},{\'Article_Name\':\'The big ‘C’ of corruption\',\'URL\':\'\'},{\'Article_Name\':\'Money And Maya\',\'URL\':\'\'},{\'Article_Name\':\'Love purifies you!!\',\'URL\':\'\'},{\'Article_Name\':\'Give Room For Imperfections\',\'URL\':\'\'}]',NULL,'[{\'Image_Id\':\'37\',\'Name\':\'SAKSHAM-2016 Award\',\'Desc\':\'Most recently in the first week of November 2016, globally celebrated astrologer Pandit Ankit Sharma received another prestigious award in the field of Astrology, during a mega and momentous astrological seminar named as the Akhil Bhartiya Jyotish Sammelan - SAKSHAM. Organized by a reputed social organization of Ambala Cantt., the Jyotish Shakti Sangh, this grand event was held at BPC Jain Hall, Jagadhari Road, Ambala Cantt (Haryana) from 5th to 6th November 2016.\'},{\'Image_Id\':\'38\',\'Name\':\'Jyotish Prangan Certificate and Award\',\'Desc\':\'In October 2016, globally renowned astrologer Pandit Ankit Sharma was given the during a massive event named as URJA, which was a highly significant mega event on Astrology and Ayurveda. Held from 14th to 16th October 2016 at sector-34 of Chandigarh, URJA was organized jointly by a prestigious social organization Jyotish Prangan (located in Panchkula, Haryana), and the Planet Ayurveda. Over 100 internationally famous Astrologers, Vastu Shastra Specialists, Ayurveda Specialists, professional Psychic Readers, Tarot Card Readers, etc. pertaining to India and abroad, had actively participated in URJA.\'}]',NULL,NULL,'3.4200000000000004','1',NULL,NULL,'Abhi','2018-06-04 13:24:47','21',5,'1','This is the official profile of Sri Sri Ravi Shankar on Speaking Tree. Sri Sri is a universally revered spiritual and humanitarian leader. His vision of violence-free and stress-free society through the awakening of human values has inspired millions to broaden their spheres of responsibility and work towards the betterment of the world.');
/*!40000 ALTER TABLE `ri_pandit_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:06
