-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: banking
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `Accountno` varchar(16) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `DateOfBirth` varchar(10) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `District` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `MaritialStatus` varchar(9) DEFAULT NULL,
  `Mother_Name` varchar(30) DEFAULT NULL,
  `Father_Name` varchar(30) DEFAULT NULL,
  `Balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Accountno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('1103520482420001','Rustom','1995-08-25','7865412395','H-18, Sec-23, Noida','Gautambudh Nagar','Uttar Pradesh','Male','Unmarried','Mrs. Sharma','Mr. Sharma','45000.00');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balancesheet`
--

DROP TABLE IF EXISTS `balancesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balancesheet` (
  `Accountno` varchar(16) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Mode` varchar(8) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `from_to_Account` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balancesheet`
--

LOCK TABLES `balancesheet` WRITE;
/*!40000 ALTER TABLE `balancesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `balancesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draft`
--

DROP TABLE IF EXISTS `draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft` (
  `Draftno` varchar(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Favour` varchar(50) DEFAULT NULL,
  `Accountno` varchar(16) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft`
--

LOCK TABLES `draft` WRITE;
/*!40000 ALTER TABLE `draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fd`
--

DROP TABLE IF EXISTS `fd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd` (
  `FDno` varchar(4) NOT NULL,
  `Accountno` varchar(16) DEFAULT NULL,
  `Mode` varchar(6) DEFAULT NULL,
  `Rupees` decimal(10,2) DEFAULT NULL,
  `Period` int(3) DEFAULT NULL,
  `Interest` decimal(4,2) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`FDno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fd`
--

LOCK TABLES `fd` WRITE;
/*!40000 ALTER TABLE `fd` DISABLE KEYS */;
INSERT INTO `fd` VALUES ('1','1103090278020001','Child','10000.00',5,'2.50','2016-10-09');
/*!40000 ALTER TABLE `fd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `DateOfBirth` varchar(10) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `User` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `UserType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Akshay','Male','2000-12-19','7838877685','Sorkha, Sec-115, Noida','akshay123','123456','Admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-17  9:26:54
