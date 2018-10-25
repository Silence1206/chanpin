-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: hbxy_zzx
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(32) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_class` int(2) DEFAULT NULL,
  `product_type` int(32) DEFAULT NULL,
  `product_manufacturer` varchar(255) DEFAULT NULL,
  `product_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `product_price` double(50,2) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `created_by_user_login` int(32) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by_user_login` int(32) DEFAULT NULL,
  `last_updated_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1000000,'手机卡',1,2000004,'海滨学院','2018-06-12 10:52:58',80.04,'80充100',15111131,'2018-06-12 10:56:52',15111131,'2018-06-12 10:57:22'),(1000001,'复印纸70克',0,2000001,'华领科技有限公司','2018-06-12 10:49:17',24.00,'复印纸70克',15111131,'2018-06-12 10:50:09',15111131,'2018-06-12 10:50:09'),(1000002,'柯达Kodak230g高光面照片纸',0,2000001,'华领科技有限公司','2018-06-12 10:50:02',138.00,'柯达Kodak230g高光面照片纸',15111131,'2018-06-12 10:50:33',15111131,'2018-06-12 10:50:33'),(1000003,'旋转世界地球仪',0,2000002,'国一商务公司','2018-06-12 10:50:24',35.00,'旋转世界地球仪',15111131,'2018-06-12 10:50:59',15111131,'2018-06-12 10:50:59'),(1000004,'可调式削笔机',0,2000002,'国一商务公司','2018-06-12 10:50:48',49.00,'可调式削笔机',15111131,'2018-06-12 10:51:23',15111131,'2018-06-12 10:51:23'),(1000005,'电脑套打记账凭证',0,2000003,'天陆科技公司','2018-06-12 10:51:11',265.00,'电脑套打记账凭证',15111131,'2018-06-12 10:51:45',15111131,'2018-06-12 10:51:45');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `product_type_id` int(32) NOT NULL,
  `product_type_name` varchar(50) DEFAULT NULL,
  `product_type_desc` varchar(255) DEFAULT NULL,
  `created_by_user_login` int(32) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_updated_by_user_login` int(32) DEFAULT NULL,
  `last_updated_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (2000001,'纸类耗材','复印纸、打印纸等耗材',15111131,'2018-06-12 10:48:17',15111131,'2018-06-12 10:48:17'),(2000002,'学生文具','笔墨、本子等各种文具',15111131,'2018-06-12 10:48:23',15111131,'2018-06-12 10:48:53'),(2000003,'财会文具','账本、复写纸、单据、凭证等',15111131,'2018-06-12 10:49:04',15111131,'2018-06-12 10:49:04'),(2000004,'充值卡','电话卡、游戏卡等',15111131,'2018-06-12 10:49:14',15111131,'2018-06-12 10:49:14'),(3000005,'生鲜','水果、蔬菜、肉类等',15111131,'2018-06-12 10:49:26',15111131,'2018-06-12 10:49:26');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-12 19:09:28
