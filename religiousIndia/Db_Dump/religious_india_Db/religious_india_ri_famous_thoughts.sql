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
-- Table structure for table `ri_famous_thoughts`
--

DROP TABLE IF EXISTS `ri_famous_thoughts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_famous_thoughts` (
  `THOUGHT_ID` varchar(20) NOT NULL default '',
  `THOUGHT_TITLE` varchar(300) character set utf8 default NULL,
  `THOUGHT_DESC` varchar(300) character set utf8 default NULL,
  `THOUGHT_REFRENCE` varchar(100) character set utf8 default NULL,
  `THOUGHT_AUTHOR` varchar(50) default NULL,
  `CREATED_BY` varchar(50) default NULL,
  `CREATED_ON` datetime default NULL,
  `UPDATED_BY` varchar(50) default NULL,
  `UPDATED_ON` datetime default NULL,
  PRIMARY KEY  (`THOUGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_famous_thoughts`
--

LOCK TABLES `ri_famous_thoughts` WRITE;
/*!40000 ALTER TABLE `ri_famous_thoughts` DISABLE KEYS */;
INSERT INTO `ri_famous_thoughts` VALUES ('1','अपर्याप्तं तदस्माकं बलं भीष्माभिरक्षितम्‌ ।\nपर्याप्तं त्विदमेतेषां बलं भीमाभिरक्षितम्‌ ॥','','श्रीमद्भगवद्गीता (द्वितीय अध्याय, श्लोक 23)','Shri Krishna','abhi','2018-03-30 12:09:07','','2018-03-30 12:09:07'),('2',' परित्राणाय साधूनाम् विनाशाय च दुष्कृताम्। धर्मसंस्थापनार्थाय सम्भवामि युगे-युगे॥ ','','श्श्रीमद्भगवद्गीता (चतुर्थ अध्याय, श्लोक 8)','Shri Krishna','abhi','2018-03-30 12:25:28','','2018-03-30 12:25:28'),('3',' परित्राणाय साधूनाम् विनाशाय च दुष्कृताम्। धर्मसंस्थापनार्थाय सम्भवामि युगे-युगे॥ ','','श्श्रीमद्भगवद्गीता (चतुर्थ अध्याय, श्लोक 8)','Shri Krishna','abhi','2018-03-30 14:13:45','','2018-03-30 14:13:45'),('4',' कर्मण्येवाधिकारस्ते मा फलेषु कदाचन। मा कर्मफलहेतुर्भूर्मा ते सङ्गोऽस्त्वकर्मणि॥ ','','श्रीमद्भगवद्गीता (द्वितीय अध्याय, श्लोक 47)','Shri Krishna','abhi','2018-03-30 14:36:25','','2018-03-30 14:36:25');
/*!40000 ALTER TABLE `ri_famous_thoughts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:01:29
