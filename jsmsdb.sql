-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jsmsdb
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Earing','Various  type of earing','2024-01-18 04:23:02','2024-03-09 18:15:06',1),(2,'Pendants','Pendants is very beautiful','2024-01-18 04:23:02','2024-03-09 18:15:16',1),(3,'Finger Rings','There is huge variety of finger rings','2024-01-18 04:23:02','2024-03-09 18:15:16',1),(5,'Chain','Chain','2024-01-18 04:23:02','2024-03-09 18:15:16',1),(6,'Necklace','Necklace','2024-01-18 04:23:02','2024-03-09 18:15:16',1),(7,'Nose pin','Nose pin','2024-01-18 04:23:02','2024-03-09 18:15:16',1),(8,'Toe Ring','Toe Ring','2024-01-18 04:23:02','2024-03-09 18:15:16',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `PId` varchar(255) DEFAULT NULL,
  `IsOrderPlaced` int(5) DEFAULT NULL,
  `OrderNumber` int(5) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Quantity` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,5,'22',1,424108694,'Cash on Delivery','2024-02-01 18:30:00',1),(8,5,'21',1,424108694,'Cash on Delivery','2024-02-01 18:30:00',1),(9,5,'26',1,424108694,'Cash on Delivery','2024-02-01 18:30:00',1),(11,5,'28',1,424108694,'Cash on Delivery','2024-02-01 18:30:00',1),(12,5,'26',1,624951460,'Credit Card','2024-02-02 18:30:00',1),(13,5,'31',1,260984104,'Debit Card','2024-02-02 18:30:00',1),(15,5,'27',1,849570981,'E-Wallet','2024-02-02 18:30:00',1),(16,5,'26',1,849570981,'E-Wallet','2024-02-03 18:30:00',1),(21,6,'28',1,224122905,'E-Wallet','2024-02-04 18:30:00',1),(22,6,'26',1,224122905,'E-Wallet','2024-02-04 18:30:00',1),(23,5,'26',NULL,NULL,NULL,'2024-02-06 18:30:00',1),(24,5,'31',NULL,NULL,NULL,'2024-02-08 18:30:00',1),(33,6,'28',NULL,NULL,NULL,'2024-02-11 18:30:00',1),(34,0,'34',NULL,NULL,NULL,'2024-02-11 18:30:00',1),(36,7,'28',1,819293354,'Cash on Delivery','2024-02-11 18:30:00',1),(37,7,'29',1,819293354,'Cash on Delivery','2024-02-11 18:30:00',1),(38,7,'31',1,819293354,'Cash on Delivery','2024-02-11 18:30:00',1),(39,7,'27',NULL,NULL,NULL,'2024-02-29 18:30:00',1),(40,7,'28',NULL,NULL,NULL,'2024-02-29 18:30:00',1),(41,8,'33',1,788230030,'Cash on Delivery','2024-08-06 15:14:25',1),(44,8,'27',1,448448817,'Cash on Delivery','2024-08-09 14:20:46',1),(46,8,'27',1,203099225,'Cash on Delivery','2024-08-11 16:41:09',1),(64,8,'28',1,682422583,'Cash on Delivery','2024-08-11 18:10:56',2),(67,8,'27',1,197919588,'Cash on Delivery','2024-08-11 19:25:05',1),(69,8,'26',1,100084107,'Cash on Delivery','2024-08-11 19:35:33',2),(70,8,'26',1,151214198,'Cash on Delivery','2024-08-11 19:48:03',4),(71,0,'42',NULL,NULL,NULL,'2024-08-13 12:35:26',2),(73,0,'27',NULL,NULL,NULL,'2024-08-17 08:33:14',3),(74,8,'26',1,744711105,'Cash on Delivery','2024-08-17 08:33:57',2),(75,8,'26',NULL,NULL,NULL,'2024-08-17 08:42:01',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productweight` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `addedBy` int(11) DEFAULT NULL,
  `lastUpdatedBy` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (26,1,1,'Gold','Glinting Butterfly Diamond Stud Earrings(14 Carate)','1',64,'gender','Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt\r\nApprox.Weight - 1 g','d917f129d6e4b0895d864682a3909c5b.jpg','610510f601f662581c6fbb577c8b30f5.jpg','a6146e9bb59550da409063667a94b450.jpg',4,'Out of Stock','2024-01-20 05:26:23','2024-08-17 08:41:26',1,1),(27,1,2,'Gold','Drop Earing 22 Carate','3G',210,'gender','Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi','c3c08f9c03c66d753798274b4245d158.jpg','c3c08f9c03c66d753798274b4245d158.jpg','c3c08f9c03c66d753798274b4245d158.jpg',120,'In Stock','2024-01-20 05:26:23','2024-08-13 08:09:02',1,1),(28,2,10,'Diamond','Crystal Diamond Pendant','',1250,'gender','Width - 7.2 mm\nHeight - 28.9 mm\nPurity - 18 Kt\nApprox.Weight - 1.62 g','42e3a6ca313022c6d3f34a1676bd434f.jpg','e431ea294034a9afbc885e35e4ad0558.jpg','42e3a6ca313022c6d3f34a1676bd434f.jpg',80,'In Stock','2024-01-20 05:26:23','2024-08-13 10:41:08',1,NULL),(29,2,12,'Gold','Teardrop Pendant in gold','',270,'gender','Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K','19e2705e043c3807b4a19fd336977ec8.jpg','3fcb00947475cd8a85638374f20198b2.jpg','19e2705e043c3807b4a19fd336977ec8.jpg',85,'In Stock','2024-01-20 05:26:23','2024-08-13 10:38:45',1,NULL),(30,1,1,'Gold','ring','7gm',545,'gender','hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk','205a8fd06cdb1ab80d3b1436c004be9b.jpg','ca1df5cc5f239e4475e32d2c451b9caa.jpg','205a8fd06cdb1ab80d3b1436c004be9b.jpg',89,'In Stock','2024-01-20 05:26:23','2024-08-13 10:39:49',1,1),(31,2,11,'Diamond','bjgjlhhui','12 gm',5300,'Female','jhghjghhkkjl\r\nkjhiuyiu\r\nkjyiuyioulhyiuytiu\r\njiouiy','b0962738125cc719cb04e494ef6675f8.jpg','94896cbf76d9133c94b737da69d79832.jpg','0f60661062bc215e2f63d28554dc6832.jpg',90,'In Stock','2024-01-20 05:26:23','2024-08-13 10:40:31',1,NULL),(32,2,12,'Gold','Teardrop Pendant in gold','',140,'gender','Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K','19e2705e043c3807b4a19fd336977ec8.jpg','3fcb00947475cd8a85638374f20198b2.jpg','19e2705e043c3807b4a19fd336977ec8.jpg',85,'In Stock','2024-01-20 05:26:23','2024-08-13 10:42:52',1,NULL),(33,1,1,'Gold','gjhghjgj','7gm',490,'gender','hjkhkjhkjhkhkhklvcgf\r\ngtuyiuhkjk','205a8fd06cdb1ab80d3b1436c004be9b.jpg','ca1df5cc5f239e4475e32d2c451b9caa.jpg','205a8fd06cdb1ab80d3b1436c004be9b.jpg',89,'In Stock','2024-01-20 05:26:23','2024-08-13 10:42:21',1,NULL),(34,2,12,'Gold','Teardrop Pendant in gold','',140,'gender','Teardrop Pendant in gold\r\nProduct Information\r\nWeight: 2 gm\r\nCarate: 22K','19e2705e043c3807b4a19fd336977ec8.jpg','3fcb00947475cd8a85638374f20198b2.jpg','19e2705e043c3807b4a19fd336977ec8.jpg',85,'In Stock','2024-01-20 05:26:23','2024-08-13 10:45:36',1,NULL),(35,2,10,'Diamond','Crystal Diamond Pendant','',1200,'gender','Width - 7.2 mm\r\nHeight - 28.9 mm\r\nPurity - 18 Kt\r\nApprox.Weight - 1.62 g','42e3a6ca313022c6d3f34a1676bd434f.jpg','e431ea294034a9afbc885e35e4ad0558.jpg','42e3a6ca313022c6d3f34a1676bd434f.jpg',80,'In Stock','2024-01-20 05:26:23','2024-08-13 10:39:28',1,NULL),(36,1,2,'Gold','Drop Earing 22 Carate','3',310,'gender','Drop Earing 22 Carate\r\nuiyuiyui\r\njoiuoi\r\nkoujoi','c3c08f9c03c66d753798274b4245d158.jpg','c3c08f9c03c66d753798274b4245d158.jpg','c3c08f9c03c66d753798274b4245d158.jpg',120,'In Stock','2024-01-20 05:26:23','2024-08-13 10:44:56',1,NULL),(37,1,2,'Gold','fsdfsd','2',140,'Female','dsfsdf','402fdfb700f491da48cf8536e0593cf0.jpg','402fdfb700f491da48cf8536e0593cf0.jpg','402fdfb700f491da48cf8536e0593cf0.jpg',34,'In Stock','2024-01-20 05:26:23','2024-08-13 10:43:27',1,NULL),(38,1,5,'Gold','Dangling Gold Earings','2.5',175,'Female','Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt\r\nApprox.Weight - 2.5 g','2188b935708bcc228d1819f8360205a0.png','2188b935708bcc228d1819f8360205a0.png','2188b935708bcc228d1819f8360205a0.png',3,'In Stock','2024-08-11 20:20:10',NULL,1,NULL),(39,3,17,'Silver','classic tiger Eye','4',280,'Male','Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\ncolour - Blue','0dbedc90ef24dcddbe2eeda396b7d461.png','0dbedc90ef24dcddbe2eeda396b7d461.png','0dbedc90ef24dcddbe2eeda396b7d461.png',2,'In Stock','2024-08-13 08:29:30',NULL,1,NULL),(40,3,16,'Gold','blue Stone Ring','5',350,'Male','Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt\r\nColour - Blue\r\nApprox.Weight - 5 g','bca237197d6a3fb609a8d5f824e8bd87.png','bca237197d6a3fb609a8d5f824e8bd87.png','bca237197d6a3fb609a8d5f824e8bd87.png',4,'In Stock','2024-08-13 08:39:44',NULL,1,NULL),(41,5,22,'Platinum','franco chain','3',350,'Female','Product Information\r\nHeight - 5.9 mm\r\nPurity - 14 Kt','e4480167369bb7a596adb8a599129000.png','e4480167369bb7a596adb8a599129000.png','e4480167369bb7a596adb8a599129000.png',4,'In Stock','2024-08-13 12:27:00',NULL,1,NULL),(42,5,22,'Platinum','Briscoe chain','2',175,'Male','Product Information\r\nWidth - 7.5 mm\r\nHeight - 5.9 mm\r\nPurity - 14 Kt','86f8db438ffddbe9344dd0dd44e96e26.png','86f8db438ffddbe9344dd0dd44e96e26.png','86f8db438ffddbe9344dd0dd44e96e26.png',2,'Out of Stock','2024-08-13 12:29:09','2024-08-13 12:35:04',1,1),(43,7,25,'Gold','Aesthetic Floral','0.7 G',45,'Female','Aesthetic Floral Filigree 0.7g Gold Nosepin for Women\r\n','97962506eb924e7c28d99b2b00da155e.png','97962506eb924e7c28d99b2b00da155e.png','97962506eb924e7c28d99b2b00da155e.png',2,'In Stock','2024-08-18 16:01:14',NULL,1,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategoryName` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,1,'Stud Earrings','2024-01-20 04:32:15','2024-03-09 18:15:32',1),(5,1,'Gold Earings','2024-01-20 04:32:15','2024-08-11 20:11:55',1),(10,2,'CRYSTAL PENDANT','2024-01-20 04:32:15','2024-03-09 18:15:40',1),(11,2,'CROSS PENDANT','2024-01-20 04:32:15','2024-03-09 18:15:40',1),(12,2,'TEARDROP PENDANT','2024-01-20 04:32:15','2024-03-09 18:15:40',1),(16,3,'Gold Ring','2024-01-20 04:32:15','2024-08-13 08:35:52',1),(17,3,'Silver Ring','2024-01-20 04:32:15','2024-08-13 08:20:51',1),(20,3,'Engagement Ring','2024-01-20 04:32:15','2024-03-09 18:15:40',1),(21,5,'Gold Chain','2024-01-20 04:32:15','2024-08-13 12:32:57',1),(22,5,'Bulkaati','2024-01-20 04:32:15','2024-08-13 12:23:50',1),(24,9,'Sub Test','2024-01-20 04:32:15','2024-03-09 18:15:40',1),(25,7,'Gold','2024-08-18 15:58:51',NULL,1);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'Admin','admin',8979555558,'admin@gmail.com','f925916e2754e5e03f75dd58a5733251','2024-01-10 04:36:52');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (6,'Kalid Ali','Kalid@gmail.com','This is for Testing.','2024-02-15 16:34:16',NULL),(7,'test','test@gmail.com','Test','2024-03-01 16:56:19',1),(9,'Anuj','ak@gmail.com','This is for Testing.','2024-03-05 11:49:26',1);
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderaddresses`
--

DROP TABLE IF EXISTS `tblorderaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorderaddresses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(5) DEFAULT NULL,
  `Ordernumber` int(10) DEFAULT NULL,
  `Flatnobuldngno` varchar(200) DEFAULT NULL,
  `StreetName` varchar(200) DEFAULT NULL,
  `Area` varchar(200) DEFAULT NULL,
  `Landmark` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Phone` bigint(11) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `PaymentMethod` varchar(200) DEFAULT NULL,
  `OrderTime` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderaddresses`
--

LOCK TABLES `tblorderaddresses` WRITE;
/*!40000 ALTER TABLE `tblorderaddresses` DISABLE KEYS */;
INSERT INTO `tblorderaddresses` VALUES (1,5,424108694,'456','ghy','hjkh','guytuy','ytyt',201017,6565785875,'rt@gmail.com','Cash on Delivery','2024-02-03 18:30:00','Delivered','Your order has been delivered','2024-03-09 18:17:52'),(2,5,624951460,'H-809','Abc street','Gokuldham','Hyuf palace','ghaziabad',155016,7979879798,'hjk@gmail.com','Credit Card','2024-02-03 18:30:00','Delivered','Order has been deliver','2024-03-09 18:17:52'),(3,5,260984104,'ggjh','jhgjh','jhgjh','hkhk','kjhkj',664446,8887997789,'kj@gmail.com','Debit Card','2024-02-03 18:30:00','Order Cancelled','Order Cancelled','2024-03-09 18:17:52'),(5,5,849570981,'hgjhg','jhgh','jhg','koiuoiuo','oiuoiuo',789456,9879879879,'kjk@gmail.com','E-Wallet','2024-02-03 18:30:00',NULL,NULL,'2024-03-09 18:17:52'),(6,6,224122905,'H 345','ABC Street','New XYZ','NA','New Delhi',110001,1234567890,'ak@gmail.cokm','','2024-02-11 18:30:00','Order Confirmed','Order Has been Confirmed','2024-03-09 18:17:52'),(7,7,819293354,'XYZ','ABC Street','Noida','NA','Noida',201301,3698521470,'jhohn@gmail.com','Cash on Delivery','2024-02-11 18:30:00','Delivered','Delivered','2024-03-09 18:17:52'),(8,8,788230030,'2099','km4','flat area','','Mogadishu',2001,615709822,'Aliahmed@gmail.com','Cash on Delivery','2024-08-09 14:33:04','Order Cancelled',NULL,'2024-08-09 14:33:04'),(9,8,448448817,'2099','km4','flat area','','Mogadishu',2001,616789222,'Mohamed100@gmail.com','Cash on Delivery','2024-08-09 14:35:18','Order Cancelled',NULL,'2024-08-09 14:35:18'),(10,8,203099225,'2099','km4','flat area','','Mogadishu',2001,616859365,'Aliahmed@gmail.com','Cash on Delivery','2024-08-11 16:46:44','Order Cancelled','fav customer','2024-08-11 16:46:44'),(11,8,682422583,'2099','km4','flat area','','Mogadishu',2001,616819695,'ahmed2002@gmail.com','Cash on Delivery','2024-08-11 19:20:22','Order Confirmed','sssss','2024-08-11 19:20:22'),(12,8,197919588,'3333','km4','flat area','','Mogadishu',2001,618681969,'Mohamed100@gmail.com','Cash on Delivery','2024-08-11 19:25:39',NULL,NULL,'2024-08-11 19:25:39'),(13,8,100084107,'3333','km4','flat area','','Mogadishu',2001,610681969,'ahmed100@gmail.com','Cash on Delivery','2024-08-11 19:40:46','Delivered','ddd','2024-08-11 19:40:46'),(14,8,151214198,'3333','km4','flat area','','Mogadishu',2001,617681969,'ahmed100@gmail.com','Cash on Delivery','2024-08-11 19:49:05','Order Cancelled',NULL,'2024-08-11 19:49:05'),(15,8,744711105,'3333','km4','flat area','','Mogadishu',2001,619685936,'Aliahmed@gmail.com','Cash on Delivery','2024-08-18 15:47:35','Order Cancelled',NULL,'2024-08-18 15:47:35');
/*!40000 ALTER TABLE `tblorderaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpage`
--

LOCK TABLES `tblpage` WRITE;
/*!40000 ALTER TABLE `tblpage` DISABLE KEYS */;
INSERT INTO `tblpage` VALUES (1,'aboutus','About Us','<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>',NULL,NULL,NULL,''),(2,'contactus','Contact Us','Xamar-Weyne, Muqdisho-Somalia','info@gmail.com',252615808847,NULL,'10:30 am to 8:30 pm');
/*!40000 ALTER TABLE `tblpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreview`
--

DROP TABLE IF EXISTS `tblreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblreview` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductID` int(10) DEFAULT NULL,
  `ReviewTitle` varchar(200) DEFAULT NULL,
  `Review` mediumtext DEFAULT NULL,
  `UserId` int(5) DEFAULT NULL,
  `DateofReview` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreview`
--

LOCK TABLES `tblreview` WRITE;
/*!40000 ALTER TABLE `tblreview` DISABLE KEYS */;
INSERT INTO `tblreview` VALUES (1,1,'Great Product','nice product I have great expierince',2,'2024-02-06 18:30:00','Review Accept','Review Accept','2021-08-12 07:15:07'),(2,3,'Great Expierence','nice product',1,'2024-02-06 18:30:00','Review Reject','Review Reject','2021-08-12 07:15:07'),(5,26,'test','Value for Money. Excellent Product',5,'2024-02-11 18:30:00','Review Accept','Review Accept','2021-08-25 16:54:56'),(6,26,'Nice Product','Nice Prodouct',5,'2024-02-11 18:30:00','Review Accept','Review Accept','2022-02-05 10:05:11');
/*!40000 ALTER TABLE `tblreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubscriber`
--

DROP TABLE IF EXISTS `tblsubscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubscriber`
--

LOCK TABLES `tblsubscriber` WRITE;
/*!40000 ALTER TABLE `tblsubscriber` DISABLE KEYS */;
INSERT INTO `tblsubscriber` VALUES (1,'ani@gmail.com','2024-03-05 07:32:33'),(2,'Geedi@gmail.com','2024-03-05 07:32:33'),(6,'j@gmail.com','2024-03-05 07:32:33'),(7,'cfsdf@gmail.com','2024-03-05 07:32:33'),(8,'money@gmail.com','2024-03-05 07:32:33'),(9,'Keynan@gmail.com','2024-03-05 07:32:33'),(10,'jh@gmail.com','2024-03-05 07:32:33');
/*!40000 ALTER TABLE `tblsubscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltracking`
--

DROP TABLE IF EXISTS `tbltracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltracking`
--

LOCK TABLES `tbltracking` WRITE;
/*!40000 ALTER TABLE `tbltracking` DISABLE KEYS */;
INSERT INTO `tbltracking` VALUES (13,'424108694','delivery boy take the order','Pickup','2024-02-03 18:30:00',NULL),(14,'424108694','Delivery boy is on the way','On The Way','2024-02-03 18:30:00',NULL),(15,'424108694','Your order has been delivered','Delivered','2024-02-03 18:30:00',NULL),(16,'624951460','Order Confiremd','Order Confirmed','2024-02-03 18:30:00',NULL),(17,'624951460','Order Has been pickup','Pickup','2024-02-03 18:30:00',NULL),(18,'624951460','Delivery boy is on the way','On The Way','2024-02-03 18:30:00',NULL),(19,'624951460','Order has been deliver','Delivered','2024-02-03 18:30:00',NULL),(20,'260984104','Order Cancelled','Order Cancelled','2024-02-03 18:30:00',NULL),(21,'260984104','tyty','Order Cancelled','2024-02-03 18:30:00',1),(22,'424108694','gthth','Order Cancelled','2024-02-03 18:30:00',1),(23,'284289657','cancel','Order Cancelled','2024-02-03 18:30:00',1),(24,'224122905','Order Has been Confirmed','Order Confirmed','2024-02-11 18:30:00',NULL),(25,'819293354','Order Has been corfiremed','Order Confirmed','2024-02-11 18:30:00',NULL),(26,'819293354','Order picked up','Pickup','2024-02-11 18:30:00',NULL),(27,'819293354','Delivered','Delivered','2024-02-11 18:30:00',NULL),(28,'788230030','no','Order Cancelled','2024-08-09 14:23:00',1),(29,'788230030','no reason ','Order Cancelled','2024-08-09 14:23:10',1),(30,'788230030','nkkk','Order Cancelled','2024-08-09 14:23:21',1),(31,'788230030','kk','Order Cancelled','2024-08-09 14:24:02',1),(32,'448448817','jjjj','Order Cancelled','2024-08-09 14:24:37',1),(33,'788230030','ssss','Order Cancelled','2024-08-09 14:29:14',1),(34,'788230030','sssss','Order Cancelled','2024-08-09 14:30:48',1),(35,'788230030','aaaa','Order Cancelled','2024-08-09 14:33:04',1),(36,'448448817','sss','Order Cancelled','2024-08-09 14:35:18',1),(37,'203099225','fav customer','Order Confirmed','2024-08-11 16:45:15',NULL),(38,'203099225','www','Order Cancelled','2024-08-11 16:46:44',1),(39,'682422583','sssss','Order Confirmed','2024-08-11 19:20:22',NULL),(40,'100084107','hhhhhh','Order Confirmed','2024-08-11 19:39:05',NULL),(41,'100084107','ddd','On The Way','2024-08-11 19:40:25',NULL),(42,'100084107','ddd','Delivered','2024-08-11 19:40:46',NULL),(43,'151214198','jjjj','Order Cancelled','2024-08-11 19:49:05',1),(44,'744711105','sssss','Order Cancelled','2024-08-18 15:47:35',1);
/*!40000 ALTER TABLE `tbltracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog`
--

LOCK TABLES `userlog` WRITE;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'farah Ali',NULL,'farah1@gmail.com',9009857868,'f925916e2754e5e03f75dd58a5733251','2024-01-05 19:30:50'),(2,'Abdi',NULL,'Abdi@gmail.com',8285703355,'5c428d8875d2948607f3e3fe134d71b4','2024-01-15 17:21:22'),(3,'hg',NULL,'hgfhgf@gmass.com',1121312312,'827ccb0eea8a706c4c34a16891f84e7b','2024-01-29 09:30:32'),(4,'hhkhj','jkh','g@gmail.com',9089879765,'202cb962ac59075b964b07152d234b70','2024-02-01 10:05:17'),(5,'Amina','Mohamed','Amina@gmail.com',7987979797,'202cb962ac59075b964b07152d234b70','2024-02-02 06:12:53'),(6,'Marish ','Osman','marish@gmail.com',8979898989,'202cb962ac59075b964b07152d234b70','2024-02-05 09:49:18'),(8,'Ali','Ahmed','Aliahmed@gmail.com',617892290,'202cb962ac59075b964b07152d234b70','2024-08-06 15:12:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (6,5,27,'2024-02-07 09:32:46');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jsmsdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-18 19:06:08
