CREATE DATABASE  IF NOT EXISTS `ecommercewebsite-phase3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommercewebsite-phase3`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommercewebsite-phase3
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryDescription` varchar(255) DEFAULT NULL,
  `categoryTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contactuser`
--

DROP TABLE IF EXISTS `contactuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactuser` (
  `contactUser_id` int NOT NULL AUTO_INCREMENT,
  `contactUser_email` varchar(100) DEFAULT NULL,
  `contactUser_name` varchar(100) DEFAULT NULL,
  `contactUser_phone` varchar(12) DEFAULT NULL,
  `contactUser_query` varchar(1500) DEFAULT NULL,
  `contactUser_subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`contactUser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pId` int NOT NULL AUTO_INCREMENT,
  `pDesc` varchar(3000) DEFAULT NULL,
  `pDiscount` int NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `pPhoto` varchar(255) DEFAULT NULL,
  `pPrice` int NOT NULL,
  `pQuantity` int NOT NULL,
  `category_categoryId` int DEFAULT NULL,
  PRIMARY KEY (`pId`),
  KEY `FK825v7lftk50hyta3jlxerywcb` (`category_categoryId`),
  CONSTRAINT `FK825v7lftk50hyta3jlxerywcb` FOREIGN KEY (`category_categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchasedrecord`
--

DROP TABLE IF EXISTS `purchasedrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasedrecord` (
  `id_Purchase` int NOT NULL,
  `purchase_User` varchar(100) DEFAULT NULL,
  `purchase_UserEmail` varchar(100) DEFAULT NULL,
  `purchase_UserContact` varchar(12) DEFAULT NULL,
  `purchase_UserShippingAddress` varchar(200) DEFAULT NULL,
  `purchase_Date` varchar(45) DEFAULT NULL,
  `purchase_Category` varchar(45) DEFAULT NULL,
  `purchase_DeliveryStatus` varchar(45) DEFAULT NULL,
  `purchase_PaymentMode` varchar(45) DEFAULT NULL,
  `purchase_TotalAmount` varchar(45) DEFAULT NULL,
  `purchase_ExpectedDaysForDelivery` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Purchase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_address` varchar(1500) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_phone` varchar(12) DEFAULT NULL,
  `user_pic` varchar(1500) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12  2:01:53
