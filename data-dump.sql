-- MySQL dump 10.13  Distrib 8.3.0, for macos14 (arm64)
--
-- Host: localhost    Database: CS341
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CISGO`
--

DROP TABLE IF EXISTS `CISGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CISGO` (
  `NUMID` int NOT NULL AUTO_INCREMENT,
  `ADMINSTATUS` enum('Pending','Approved') NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `EVENT` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `CITY` varchar(200) NOT NULL,
  `COUNTRY` varchar(200) NOT NULL,
  `COORLONG` varchar(200) DEFAULT NULL,
  `COORLAT` varchar(200) DEFAULT NULL,
  `DEPARTMENT` enum('Shiley School of Engineering','Pamplin School of Business','School of Education','School of Nursing and Health Innovations','College of Arts and Sciences','Other') NOT NULL,
  `TYPE` enum('Teaching','Research','Working','Volunteer','Other') NOT NULL,
  `STATUS` enum('Past','Ongoing') NOT NULL,
  `STARTDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`NUMID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CISGO`
--

LOCK TABLES `CISGO` WRITE;
/*!40000 ALTER TABLE `CISGO` DISABLE KEYS */;
INSERT INTO `CISGO` VALUES (1,'Pending','John Doe','','jd@gmail.com','Portland','USA','',NULL,'Shiley School of Engineering','Teaching','Ongoing',NULL,NULL,'this is a test description'),(2,'Pending','Jane Smith','','js@gmail.com','Seattle','USA','',NULL,'School of Education','Other','Past',NULL,NULL,'this is a second datapoint'),(3,'Pending','Connor Sisourath','','sisourat25@up.edu','Los Angeles','USA','',NULL,'Shiley School of Engineering','Volunteer','Ongoing',NULL,NULL,'another test'),(4,'Pending','Marshall ZZZhang','','zhangm24@up.edu','Vancouver','Canada','',NULL,'School of Nursing and Health Innovations','Research','Past',NULL,NULL,'I love Canada!'),(21,'Approved','sung','sdfsdfsf','sisourat25@up.edu','Shanghai','China','31.2323437','121.4691024','Shiley School of Engineering','Teaching','Past','2024-03-12','2024-03-21',''),(22,'Approved','testPin1','sfsdjkf','sdfsklj@gmail.com','New York','United States','40.7127281','-74.0060152','Shiley School of Engineering','Teaching','Past','2024-04-01','2024-04-02','fdsfsfds'),(23,'Approved','testPin2','sfsdjkf','sdfsklj@gmail.com','Sydney','Australia','-33.8698439','151.2082848','Shiley School of Engineering','Teaching','Past','2024-04-01','2024-04-02','fdsfsfds'),(24,'Approved','loc2','jhkj','hkjhjkh@gmail.com','South San Francisco','United States','37.622451999999996','-122.38398938548363','Shiley School of Engineering','Teaching','Past','2024-04-01','2024-04-02','kjkjkl');
/*!40000 ALTER TABLE `CISGO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 14:02:51
