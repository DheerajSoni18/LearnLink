-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: learnlink
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnotes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Subject` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NotesTitle` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NotesDecription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `File1` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `File2` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `File3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `File4` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotes`
--

LOCK TABLES `tblnotes` WRITE;
/*!40000 ALTER TABLE `tblnotes` DISABLE KEYS */;
INSERT INTO `tblnotes` VALUES (1,1,'Math','Maths Shortcuts','It contain math shortcuts.','d41d8cd98f00b204e9800998ecf8427e1702536045.pdf','d41d8cd98f00b204e9800998ecf8427e1702536260.pdf','d41d8cd98f00b204e9800998ecf8427e1702536700.pdf','','2023-12-14 06:19:56','2024-11-12 14:43:21'),(2,1,'English','English Vocabulary','Vocabulary List','d41d8cd98f00b204e9800998ecf8427e1731422999.pdf','','','','2023-12-14 07:33:52','2024-11-12 14:49:59'),(3,1,'English','English Literature','Literature Content','d41d8cd98f00b204e9800998ecf8427e1731422999.pdf','','','','2023-12-14 07:33:52','2024-11-12 15:03:33'),(4,2,'Math','Maths Shortcuts','It contain math shortcuts.','d41d8cd98f00b204e9800998ecf8427e1702536045.pdf','d41d8cd98f00b204e9800998ecf8427e1702536260.pdf','d41d8cd98f00b204e9800998ecf8427e1702536700.pdf','','2023-12-14 06:19:56','2024-11-12 14:43:21'),(5,3,'Math','Maths Shortcuts','It contain math shortcuts.','d41d8cd98f00b204e9800998ecf8427e1702536045.pdf','d41d8cd98f00b204e9800998ecf8427e1702536260.pdf','d41d8cd98f00b204e9800998ecf8427e1702536700.pdf','','2023-12-14 06:19:56','2024-11-12 14:43:21'),(6,2,'English','English Vocabulary','Vocabulary List','d41d8cd98f00b204e9800998ecf8427e1731422999.pdf','','','','2023-12-14 07:33:52','2024-11-12 15:03:33'),(8,4,'PHP','PHP PDO, Array and Strings','PHP Data Object-PDO, Array and Strings','d41d8cd98f00b204e9800998ecf8427e1702662450.pdf','d41d8cd98f00b204e9800998ecf8427e1702662450.pdf','','','2023-12-15 17:47:30','2023-12-15 17:47:55');
/*!40000 ALTER TABLE `tblnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(250) NOT NULL,
  `MobileNumber` bigint NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MobileNumber_UNIQUE` (`MobileNumber`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,'Dheeraj Soni',7458976152,'dheeraj@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','2024-11-12 05:26:12'),(2,'Jhanvi Vyas',9260996461,'janvi@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','2024-11-13 11:48:57'),(3,'Indra Kumar',9406741273,'indrakumar@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','2024-11-15 17:46:20'),(4,'Wasim Akram',6206893100,'wasim@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','2024-11-18 13:36:36');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 20:43:00
