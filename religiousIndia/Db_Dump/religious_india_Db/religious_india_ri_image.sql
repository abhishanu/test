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
-- Table structure for table `ri_image`
--

DROP TABLE IF EXISTS `ri_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ri_image` (
  `Image_ID` varchar(20) NOT NULL default '',
  `CATEGORY` varchar(20) default NULL,
  `IMAGE_TYPE` varchar(20) default NULL,
  `IMAGE_PATH` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ri_image`
--

LOCK TABLES `ri_image` WRITE;
/*!40000 ALTER TABLE `ri_image` DISABLE KEYS */;
INSERT INTO `ri_image` VALUES ('2','temple','jpg','images/2.jpg'),('3','temple','jpg','images/3.jpg'),('4','temple','jpg','images/4.jpg'),('5','temple','jpg','images/5.jpg'),('6','history','jpg','images/Golden_Temple.jpg'),('8','service','jpg','images/langar.jpg'),('7','Guru-Image','jpg','images/guru-nanak.jpg'),('9','Guru-Image','jpg','images/Hargovind.jpg'),('10','Guru-Image','jpg','images/Guru_Amar_Das.jpg'),('11','temple','jpg','images/kalka-ji-mandir.jpg'),('12','User','jpg','images/user.jpg'),('13','Cloth donation','jpg','images/cloth_donation.jpg'),('15','Food donation','jpg','images/langar_food.jpg'),('14','Food donation','jpg','images/food_donation.jpg'),('16','Education','jpg','images/edu.jpg'),('17','Pooja','jpg','images/Hola-Mohalla-Diyan-Vadhaiyan.jpg'),('18','Pooja','jpg','images/Sangrand.jpg'),('19','Pooja','jpg','images/Mahamritunjya_Puja.jpg'),('20','Pandit','jpg','images/Pandit_ji.jpg'),('21','Pandit','jpg','images/panditji.jpg'),('22','Temple','jpg','images/Golden_Temple_1.jpg'),('23','Temple','jpg','images/Golden_Temple_2.jpg'),('24','Temple','jpg','images/Golden_Temple_3.jpg'),('25','Temple','jpg','images/Golden_Temple_4.jpg'),('26','Temple','jpg','images/Golden_Temple_5.jpg'),('27','Temple','jpg','images/Golden_Temple_6.jpg'),('28','Temple','jpg','images/Golden_Temple_7.jpg'),('29','Temple','jpg','images/Golden_Temple_8.jpg'),('30','Temple','jpg','images/Golden_Temple_9.jpg'),('31','Temple','jpg','images/Golden_Temple_10.jpg'),('32','Temple','jpg','images/Golden_Temple_11.jpg'),('33','Temple','jpg','images/Golden_Temple_12.jpg'),('34','Temple','jpg','images/Golden_Temple_13.jpg'),('35','Temple','jpg','images/Golden_Temple_14.jpg'),('36','Temple','jpg','images/Golden_Temple_15.jpg'),('40','Temple','jpeg','images/user_1.jpeg'),('41','User','jpeg','images/user_2.jpeg'),('37','Awards','jpg','images/award_1.jpg'),('38','Awards','jpg','images/award_2.jpg'),('45','Pooja','jpg','images/navgrah.jpg'),('46','Pooja','jpg','images/Pitra_Dosh_Nivaran_Puja.jpg'),('47','Pooja','jpg','images/Shani_Jaap_Pooja.jpg');
/*!40000 ALTER TABLE `ri_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:02:26
