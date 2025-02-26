CREATE DATABASE  IF NOT EXISTS `lionelronaldo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lionelronaldo`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: lionelronaldo
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Quần áo'),(2,'Mũ'),(3,'Giày'),(4,'Bóng đá'),(5,'Balo'),(6,'Găng tay'),(7,'Kính'),(8,'Tất');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_response`
--

DROP TABLE IF EXISTS `customer_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_response` (
  `order_id` int NOT NULL,
  `comment` text,
  `rating` int DEFAULT NULL,
  `response_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `fk_customer_respone_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_response`
--

LOCK TABLES `customer_response` WRITE;
/*!40000 ALTER TABLE `customer_response` DISABLE KEYS */;
INSERT INTO `customer_response` VALUES (1,'Chua hai long',2,'2023-05-29 17:23:48'),(2,'Chua hai long',2,'2023-05-29 17:23:48'),(3,'Tam on',3,'2023-05-29 17:23:48'),(4,'Rat te',1,'2023-05-29 17:23:48'),(5,'Rat te',1,'2023-05-29 17:23:48'),(6,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(7,'Tam on',3,'2023-05-29 17:23:48'),(8,'Tam on',3,'2023-05-29 17:23:48'),(9,'Chua hai long',2,'2023-05-29 17:23:48'),(10,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(11,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(12,'Rat te',1,'2023-05-29 17:23:48'),(13,'Chua hai long',2,'2023-05-29 17:23:48'),(14,'Tam on',3,'2023-05-29 17:23:48'),(15,'Chua hai long',2,'2023-05-29 17:23:48'),(16,'Kha on',4,'2023-05-29 17:23:48'),(17,'Rat te',1,'2023-05-29 17:23:48'),(18,'Tam on',3,'2023-05-29 17:23:48'),(19,'Tam on',3,'2023-05-29 17:23:48'),(20,'Rat te',1,'2023-05-29 17:23:48'),(21,'Rat te',1,'2023-05-29 17:23:48'),(22,'Tam on',3,'2023-05-29 17:23:48'),(23,'Kha on',4,'2023-05-29 17:23:48'),(24,'Chua hai long',2,'2023-05-29 17:23:48'),(25,'Tam on',3,'2023-05-29 17:23:48'),(26,'Tam on',3,'2023-05-29 17:23:48'),(27,'Rat te',1,'2023-05-29 17:23:48'),(28,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(29,'Kha on',4,'2023-05-29 17:23:48'),(30,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(31,'Rat te',1,'2023-05-29 17:23:48'),(32,'Chua hai long',2,'2023-05-29 17:23:48'),(33,'Chua hai long',2,'2023-05-29 17:23:48'),(34,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(35,'Rat te',1,'2023-05-29 17:23:48'),(36,'Kha on',4,'2023-05-29 17:23:48'),(37,'Kha on',4,'2023-05-29 17:23:48'),(38,'Rat te',1,'2023-05-29 17:23:48'),(39,'Kha on',4,'2023-05-29 17:23:48'),(40,'Kha on',4,'2023-05-29 17:23:48'),(41,'Kha on',4,'2023-05-29 17:23:48'),(42,'Tam on',3,'2023-05-29 17:23:48'),(43,'Kha on',4,'2023-05-29 17:23:48'),(44,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(45,'Kha on',4,'2023-05-29 17:23:48'),(46,'Chua hai long',2,'2023-05-29 17:23:48'),(47,'Rat te',1,'2023-05-29 17:23:48'),(48,'Kha on',4,'2023-05-29 17:23:48'),(49,'Rat te',1,'2023-05-29 17:23:48'),(50,'Chua hai long',2,'2023-05-29 17:23:48'),(51,'Rat te',1,'2023-05-29 17:23:48'),(52,'Chua hai long',2,'2023-05-29 17:23:48'),(53,'Chua hai long',2,'2023-05-29 17:23:48'),(54,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(55,'Tam on',3,'2023-05-29 17:23:48'),(56,'Chua hai long',2,'2023-05-29 17:23:48'),(57,'Tam on',3,'2023-05-29 17:23:48'),(58,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(59,'Tam on',3,'2023-05-29 17:23:48'),(60,'Chua hai long',2,'2023-05-29 17:23:48'),(61,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(62,'Rat te',1,'2023-05-29 17:23:48'),(63,'Kha on',4,'2023-05-29 17:23:48'),(64,'Rat tuyet voi!',5,'2023-05-29 17:23:48'),(65,'Tam on',3,'2023-05-29 17:23:48'),(66,'Rat te',1,'2023-05-29 17:23:48'),(67,'Chua hai long',2,'2023-05-29 17:23:48'),(73,'OK',4,'2023-06-09 03:15:34'),(75,'giày quá ok cho 2 sao',2,'2023-06-09 04:26:55'),(76,'Quá tuyệt luôn. Sẽ ủng hộ shop thêm',5,'2023-05-29 23:34:00'),(102,'long bào',5,'2023-06-09 05:54:57'),(103,'tạm',5,'2023-06-09 05:58:23'),(105,'ok',5,'2023-06-09 06:31:53');
/*!40000 ALTER TABLE `customer_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jersey`
--

DROP TABLE IF EXISTS `jersey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jersey` (
  `club_or_country` varchar(20) NOT NULL,
  `season` varchar(20) NOT NULL,
  PRIMARY KEY (`club_or_country`,`season`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jersey`
--

LOCK TABLES `jersey` WRITE;
/*!40000 ALTER TABLE `jersey` DISABLE KEYS */;
/*!40000 ALTER TABLE `jersey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `keyword_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`),
  KEY `fk_keyword_product1_idx` (`product_id`),
  CONSTRAINT `fk_keyword_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (1,1,'áo'),(2,1,'sân nhà'),(3,1,'mu'),(4,2,'áo'),(5,2,'sân khách'),(6,2,'mu'),(7,3,'áo'),(8,3,'sân nhà'),(9,3,'barca'),(10,4,'áo'),(11,4,'sân khách'),(12,4,'barca'),(13,7,'áo'),(14,7,'sân nhà'),(15,7,'real'),(16,8,'áo'),(17,8,'sân khách'),(18,8,'real'),(19,9,'giày'),(20,9,'nike'),(21,10,'giày'),(22,10,'nike'),(23,11,'bóng'),(24,11,'bóng đá'),(25,11,'ngoại hạng anh'),(26,1,'adidas'),(27,2,'adidas'),(28,3,'nike'),(29,4,'nike'),(30,7,'adidas'),(31,8,'adidas'),(32,11,'puma'),(56,72,'Găng tay'),(57,72,'gang tay'),(58,72,'tay'),(59,72,'gang'),(60,72,'adidas');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `keyword_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`keyword_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `keywords_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (1,1,'áo'),(2,1,'sân nhà'),(3,1,'mu'),(4,2,'áo'),(5,2,'sân khách'),(6,2,'mu'),(7,3,'áo'),(8,3,'sân nhà'),(9,3,'barca'),(10,4,'áo'),(11,4,'sân khách'),(12,4,'barca'),(13,7,'áo'),(14,7,'sân nhà'),(15,7,'real'),(16,8,'áo'),(17,8,'sân khách'),(18,8,'real'),(19,9,'giày'),(20,9,'nike'),(21,10,'giày'),(22,10,'nike'),(23,11,'bóng'),(24,11,'bóng đá'),(25,11,'ngoại hạng anh'),(26,1,'adidas'),(27,2,'adidas'),(28,3,'nike'),(29,4,'nike'),(30,7,'adidas'),(31,8,'adidas'),(32,11,'puma');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `from_` text,
  `to_` text,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('Pham Van Toi','everyone','Chao anh em'),('Pham Toi','everyone','Chao moi nguoi'),('John Cena','everyone','hello'),('Pham Toi','everyone','mai da bong khong'),('Pham Van Toi','everyone','Hi'),('Pham Van Toi','everyone','Hello anh em'),('John Cena','everyone','Chao Toi'),('Pham Van Toi','everyone','Who is your idol?'),('John','everyone',' alo'),('Pham Van Toi','ronaldo','Hello anh em'),('John','ronaldo','Uh '),('John Cena','everyone','Hello anh em'),('admin','everyone','He thong se bao tri trong 30s nua'),('admin','ronaldo','Alo'),('Pham Van Toi','everyone','Chao moi nguoi'),('John Cena','everyone','Chao Toi'),('ToiP','everyone','Chao '),('ToiP','ronaldo','Chao m.ng'),('admin','everyone','Bảo trì nha mấy đứa'),('Pham Van Toi','everyone','Chào các cháu'),('Toi Dep Trai','everyone','abc'),('Pham Van Toi','everyone','alo'),('Pham Van Toi','everyone','alo'),('admin','everyone','nghe'),('Pham Van Toi','everyone','alo'),('Brock Lesnar','everyone','hehe'),('Brock Lesnar','everyone','WWE'),('Pham Van Toi','everyone','...'),('Pham Van Toi','everyone','Akak'),('Pham Van Toi','everyone','Hello'),('Brock Lesnar','everyone','Hello'),('Pham Van Toi','everyone','kaka'),('admin','everyone','akaskska'),('Pham Van Toi','everyone','alo'),('admin','everyone','Bao tri nha');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_user_profile1_idx` (`user_id`),
  KEY `fk_order_warehouse1_idx` (`warehouse_id`),
  CONSTRAINT `fk_order_user_profile1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `fk_order_warehouse1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (15,1,6,'0988777656','Hà Lội','40','Đang vận chuyển','Thanh toán trực tuyến',230000,35,'2023-06-01 23:00:51'),(16,1,8,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,36,'2023-06-01 23:00:51'),(17,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,37,'2023-06-01 23:00:51'),(18,1,9,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,38,'2023-06-01 23:00:51'),(19,1,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,39,'2023-06-01 23:00:51'),(20,1,10,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,40,'2023-06-01 23:00:51'),(21,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,41,'2023-06-01 23:00:51'),(22,1,9,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,42,'2023-06-01 23:00:51'),(23,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,43,'2023-06-01 23:00:51'),(24,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,44,'2023-06-01 23:00:51'),(25,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,45,'2023-06-01 23:00:51'),(26,1,6,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,46,'2023-06-01 23:00:51'),(27,1,10,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,47,'2023-06-01 23:00:51'),(28,1,5,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,48,'2023-06-01 23:00:51'),(29,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,49,'2023-06-01 23:00:51'),(30,1,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,50,'2023-06-01 23:00:51'),(31,1,8,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,51,'2023-06-01 23:00:51'),(32,1,10,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,52,'2023-06-01 23:00:51'),(33,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,53,'2023-06-01 23:00:51'),(34,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,54,'2023-06-01 23:00:51'),(35,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,55,'2023-06-01 23:00:51'),(36,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,56,'2023-06-01 23:00:51'),(37,1,3,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,57,'2023-06-01 23:00:51'),(38,1,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,58,'2023-06-01 23:00:51'),(39,1,6,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,59,'2023-06-01 23:00:51'),(40,1,9,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,60,'2023-06-01 23:00:51'),(41,1,3,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,61,'2023-06-01 23:00:51'),(42,1,9,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,62,'2023-06-01 23:00:51'),(43,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,63,'2023-06-01 23:00:51'),(44,1,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,64,'2023-06-01 23:00:51'),(45,1,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,65,'2023-06-01 23:00:51'),(46,1,8,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,66,'2023-06-01 23:00:51'),(47,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,67,'2023-06-01 23:00:51'),(48,1,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,68,'2023-06-01 23:00:51'),(49,1,6,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,69,'2023-06-01 23:00:51'),(50,1,7,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,70,'2023-06-01 23:00:51'),(51,1,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,71,'2023-06-01 23:00:51'),(52,1,9,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,72,'2023-06-01 23:00:51'),(53,1,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,73,'2023-06-01 23:00:51'),(54,1,5,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,74,'2023-06-01 23:00:51'),(55,1,7,'0123456789','123 Nguyen Van Troi',NULL,'Chờ xác nhận','Thanh toán trực tuyến',230000,75,'2023-06-01 23:00:51'),(56,2,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,21,'2023-06-01 23:00:51'),(57,2,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,22,'2023-06-01 23:00:51'),(58,2,5,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,32,'2023-06-01 23:00:51'),(59,2,10,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,37,'2023-06-01 23:00:51'),(60,2,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,46,'2023-06-01 23:00:51'),(61,2,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,50,'2023-06-01 23:00:51'),(62,2,5,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,52,'2023-06-01 23:00:51'),(63,2,1,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,53,'2023-06-01 23:00:51'),(64,2,4,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,58,'2023-06-01 23:00:51'),(65,2,3,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,68,'2023-06-01 23:00:51'),(66,2,5,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,72,'2023-06-01 23:00:51'),(67,2,10,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,73,'2023-06-01 23:00:51'),(69,3,4,'0946902235','Phố Nguyễn Văn Trỗi','40','Chờ xác nhận','thanh toán trực tuyến',760000,22,'2023-06-09 04:09:00'),(70,3,10,'0946902235','Phố Nguyễn Văn Trỗi','40','Chờ xác nhận','thanh toán trực tuyến',950000,37,'2023-06-09 04:09:00'),(71,3,2,'0988777656','Hà Lội','40','Giỏ hàng','Thanh toán trực tuyến',230000,46,'2023-06-01 23:00:51'),(72,3,5,'0946902235','Phố Nguyễn Văn Trỗi','40','Chờ xác nhận','thanh toán trực tuyến',475000,52,'2023-06-09 04:09:00'),(73,3,1,'0988777656','Hà Lội','40','Giao hàng thành công','Thanh toán trực tuyến',230000,53,'2023-06-01 23:00:51'),(74,3,4,'0988777656','Hà Lội','40','Giao hàng thành công','Thanh toán trực tuyến',230000,58,'2023-06-01 23:00:51'),(75,3,3,'0988777656','Hà Lội','40','Giao hàng thành công','Thanh toán trực tuyến',230000,68,'2023-06-01 23:00:51'),(76,4,2,'0988777656','Hà Lội','40','Chờ xác nhận','Thanh toán trực tuyến',230000,23,'2023-06-01 23:00:51'),(77,1,5,'012345','123 Nguyen Van Troi','S','Chờ xác nhận','Thanh toán trực tuyến',1800000,21,'2023-05-30 18:28:10'),(79,1,3,'0946902235','Phố Nguyễn Văn Trỗi','41','Chờ xác nhận','Thanh toán trực tuyến',1040000,68,'2023-05-30 18:49:49'),(80,1,5,'0946902235','Phố Nguyễn Văn Trỗi','41','Chờ xác nhận','Thanh toán trực tuyến',1720000,68,'2023-05-30 18:55:05'),(81,1,10,'0946902235','Phố Nguyễn Văn Trỗi','43','Chờ xác nhận','Thanh toán trực tuyến',3480000,70,'2023-05-30 19:18:15'),(82,1,3,'0946902235','Phố Nguyễn Văn Trỗi','41','Đã hủy','Thanh toán trực tuyến',1040000,68,'2023-05-30 19:19:34'),(83,1,2,'0946902235','Phố Nguyễn Văn Trỗi','XL','Chờ xác nhận','Thanh toán trực tuyến',196000,59,'2023-05-30 20:31:02'),(84,1,4,'0946902235','Phố Nguyễn Văn Trỗi','42','Chờ xác nhận','Thanh toán trực tuyến',1440000,69,'2023-05-31 16:42:23'),(85,1,4,'0946902235','Phố Nguyễn Văn Trỗi','40','Đang vận chuyển','Thanh toán trực tuyến',460000,72,'2023-05-31 18:00:28'),(88,3,2,'0946902235','Phố Nguyễn Văn Trỗi','M','Chờ xác nhận','Thanh toán trực tuyến',400000,22,'2023-06-01 22:37:32'),(89,3,2,'0123','Phố Ao Sen','M','Chờ lấy hàng','Thanh toán trực tuyến',200000,27,'2023-06-01 22:43:14'),(90,3,2,'0123','Phố Ao Sen','M','Đã hủy','Thanh toán trực tuyến',200000,27,'2023-06-01 22:46:31'),(94,5,1,'0356368539','hn','M','Đang vận chuyển','thanh toán trực tuyến',108000,57,'2023-06-08 07:08:31'),(95,1,2,'0946902235','Phố Nguyễn Văn Trỗi','M','Chờ xác nhận','thanh toán khi nhận hàng',196000,57,'2023-06-09 03:57:15'),(96,1,2,'0946902235','Phố Nguyễn Văn Trỗi','40','cho xac nhan','thanh toán trực tuyến',240000,72,'2023-06-09 04:12:38'),(97,1,2,'0946902235','Phố Nguyễn Văn Trỗi','40','Chờ xác nhận','thanh toán trực tuyến',210000,72,'2023-06-09 04:13:49'),(98,1,3,'0123','Phố Ao Sen','40','Chờ lấy hàng','thanh toán trực tuyến',365000,72,'2023-06-09 04:17:11'),(99,3,4,'0123','Phố Ao Sen','40','Đã hủy','thanh toán trực tuyến',460000,72,'2023-06-09 04:18:08'),(100,2,1,'0988777656','Hà Lội','M','Đã hủy','thanh toán trực tuyến',210000,22,'2023-06-09 05:45:37'),(101,2,2,'0988777656','Hà Nội','M','Giao hàng thành công','thanh toán trực tuyến',270000,52,'2023-06-09 05:46:58'),(102,2,1,'0988777656','Hà Nội','L','Giao hàng thành công','thanh toán trực tuyến',115000,33,'2023-06-09 05:54:24'),(103,2,4,'0988777656','Hà Nội','L','Giao hàng thành công','thanh toán trực tuyến',400000,33,'2023-06-09 05:57:39'),(104,3,2,'0123','Phố Ao Sen','L','Đang vận chuyển','Thanh toán trực tuyến',190000,38,'2023-06-09 06:28:47'),(105,3,5,'0123','Phố Ao Sen','XL','Giao hàng thành công','Thanh toán trực tuyến',475000,39,'2023-06-09 06:28:47'),(111,3,2,'NONE','NONE','M','Giỏ hàng','NONE',0,52,'2023-06-12 17:35:01'),(116,2,1,'NONE','NONE','40','Giỏ hàng','NONE',0,72,'2023-06-13 01:02:26'),(118,2,1,'NONE','NONE','M','Chờ xác nhận','thanh toán trực tuyến',108000,57,'2023-06-13 01:04:25'),(119,2,1,'NONE','NONE','M','Đã hủy','thanh toán trực tuyến',134000,62,'2023-06-13 01:06:07'),(126,11,1,'NONE','NONE','L','Đang vận chuyển','thanh toán trực tuyến',210000,23,'2023-06-13 01:23:41'),(133,12,1,'NONE','NONE','M','Giỏ hàng','NONE',0,32,'2023-06-13 23:10:03'),(134,12,1,'NONE','NONE','M','Giỏ hàng','NONE',0,32,'2023-06-13 23:10:15'),(141,2,1,'NONE','NONE','M','Giỏ hàng','NONE',0,32,'2023-06-14 22:21:42');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `description` text,
  `gender` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `origin_price` int DEFAULT NULL,
  `sale` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bộ sân nhà MU',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Adidas',200000,5),(2,'Bộ sân khách MU',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Adidas',100000,10),(3,'Bộ sân nhà Barca',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Nike',100000,5),(4,'Bộ sân khách Barca',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Nike',100000,5),(7,'Bộ sân nhà Real',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Adidas',100000,5),(8,'Bộ sân khách Real',1,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','1','Adidas',100000,12),(9,'Giày Nike 1',2,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','4','Nike',120000,5),(10,'Giày Nike 2',2,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','3','Nike',400000,15),(11,'Bóng Ngoại Hạng Anh',4,'Show your support for the Los Blancos with this men\'s Real Madrid 2022/23 Home Shirt. Coming in the classic White colourway, this standard-fit shirt is made from a lightweight poly fabric with a smooth feel for all-day wear. It features a button placket with a spread collar and short sleeves for a classic look. With the 3-Stripes to the shoulders, this shirt is finished with the Badge of Sport and Real Madrid crest to the chest. Machine washable.|HF0291\n<br><br>\n<b>Care & Material</b><br>\n100% Recycled Polyester<br><br>\n<b>Colour:</b><br>\nWhite<br><br>\n<b>Product Code:</b><br> \n16492314/533562','3','Puma',100000,5),(72,'Găng tay Adidas Thượng Hạng',1,'ấm vào mùa hè','4','Adidas',3000000,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (12,2,'https://i8.amplience.net/i/jpl/jd_533340_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(13,2,'https://i8.amplience.net/i/jpl/jd_533340_c?qlt=92&w=750&h=957&v=1&fmt=auto'),(14,2,'https://i8.amplience.net/i/jpl/jd_533340_e?qlt=92&w=750&h=957&v=1&fmt=auto'),(15,3,'https://i8.amplience.net/i/jpl/jd_555428_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(16,3,'https://i8.amplience.net/i/jpl/jd_555428_b?qlt=92&w=750&h=957&v=1&fmt=auto'),(17,3,'https://i8.amplience.net/i/jpl/jd_555428_d?qlt=92&w=750&h=957&v=1&fmt=auto'),(18,4,'https://i8.amplience.net/i/jpl/jd_529499_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(19,4,'https://i8.amplience.net/i/jpl/jd_529499_c?qlt=92&w=750&h=957&v=1&fmt=auto'),(20,4,'https://i8.amplience.net/i/jpl/jd_529499_d?qlt=92&w=750&h=957&v=1&fmt=auto'),(21,7,'https://i8.amplience.net/i/jpl/jd_533562_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(22,7,'https://i8.amplience.net/i/jpl/jd_533562_b?qlt=92&w=750&h=957&v=1&fmt=auto'),(23,7,'https://i8.amplience.net/i/jpl/jd_533562_d?qlt=92&w=750&h=957&v=1&fmt=auto'),(24,9,'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_645540_b&qlt=92&exclusive=0&w=363&h=463&v=1&fmt=auto&bg=rgb(238,238,238)'),(25,9,'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_645363_plc&qlt=92&exclusive=0&wid=363&hei=463&v=1&fmt=auto'),(26,10,'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_647114_plc&qlt=92&exclusive=0&wid=363&hei=463&v=1&fmt=auto'),(27,10,'https://i8.amplience.net/t/jpl/jd_product_list?plu=jd_647114_b&qlt=92&exclusive=0&w=363&h=463&v=1&fmt=auto&bg=rgb(238,238,238)'),(28,11,'https://i8.amplience.net/i/jpl/jd_656927_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(29,11,'https://i8.amplience.net/i/jpl/jd_656927_b?qlt=92&w=750&h=957&v=1&fmt=auto'),(30,8,'https://i8.amplience.net/i/jpl/jd_533535_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(31,8,'https://i8.amplience.net/i/jpl/jd_533535_b?qlt=92&w=750&h=957&v=1&fmt=auto'),(32,8,'https://i8.amplience.net/i/jpl/jd_533535_e?qlt=92&w=750&h=957&v=1&fmt=auto'),(114,72,'./assets/img/product_image/gang_tay_1_1.webp'),(115,72,'./assets/img/product_image/gang_tay_1_2.webp'),(116,1,'https://i8.amplience.net/i/jpl/jd_533345_a?qlt=92&w=750&h=957&v=1&fmt=auto'),(117,1,'https://i8.amplience.net/i/jpl/jd_533345_b?qlt=92&w=750&h=957&v=1&fmt=auto');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_idol`
--

DROP TABLE IF EXISTS `user_idol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_idol` (
  `user_name` varchar(50) NOT NULL,
  `idol` text,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_idol`
--

LOCK TABLES `user_idol` WRITE;
/*!40000 ALTER TABLE `user_idol` DISABLE KEYS */;
INSERT INTO `user_idol` VALUES ('1','Messi'),('2','Modric'),('3','Neymar'),('4','Muller'),('5','Benzema'),('6','Mbappe'),('7','Bale'),('8','Lewandowski'),('9','Ronaldo'),('admin@lionelronaldo.com','Maguire'),('dai@gmail.com','Lewandowski'),('lesnar@gmail.com','Ronaldo'),('toi@gmail.com','Maguire'),('toip@gmail.com','Maguire'),('toipham@gmail.com','Maguire'),('tp@gmail.com','Ronaldo');
/*!40000 ALTER TABLE `user_idol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_order` (
  `email` varchar(50) DEFAULT NULL,
  `shirt_type` varchar(50) DEFAULT NULL,
  `season` varchar(50) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `club_or_nation` varchar(50) DEFAULT NULL,
  `player` varchar(50) DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES ('toipham@gmail.com','away-shirt.jpg','2008/09','2023-05-18 03:36:48','0356368888','Van Quan, Ha Dong','L',1,'LionelRonaldoPay','Manchester United','Ronaldo','Wait for the confirmation');
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'Pham Toi','toi2002@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(2,'admin','admin@lionelronaldo.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','admin'),(3,'Pham Van Toi','toi@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(4,'John Cena','cena@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(5,'Phạm Văn Tới','toipham@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(6,'Bui Vinh','vinh@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(7,'Nguyễn ĐAnh','anh@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(8,'Nguyen Thanh Truc','truc@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(9,'NguyenTienThanh','thanh@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(10,'ducanh','a@gmail.com','0e99abdc8a16b9780fc44689adb9f0f06e0fb26050ec2287d3ea59ed0bf9617a','user'),(11,'Bui Hoang Vinh','vinh2@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv'),(12,'Toi Dep Trai','tp@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(13,'Brock Lesnar','lesnar@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(14,'Bui Hoang Vinh','vinh3@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(15,'Bui Hoang Vinh','vinh4@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(16,'Bui Vinh','vinh5@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(17,'Roman Reigns','reigns@gmai.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','user'),(18,'Pham Toi','pt@gmail.com','058813b4800b87e4f0180687673268f1bcdeaeda983a57fa27af2f1234cb277f','ctv');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `product_id` int DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`warehouse_id`),
  KEY `fk_warehouse_product1_idx` (`product_id`),
  CONSTRAINT `fk_warehouse_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'S',51,21),(1,'M',50,22),(1,'L',49,23),(1,'XL',50,24),(1,'XXL',50,25),(2,'S',50,26),(2,'M',50,27),(2,'L',50,28),(2,'XL',50,29),(2,'XXL',50,30),(3,'S',50,31),(3,'M',50,32),(3,'L',48,33),(3,'XL',50,34),(3,'XXL',48,35),(4,'S',50,36),(4,'M',50,37),(4,'L',49,38),(4,'XL',49,39),(4,'XXL',50,40),(5,'S',50,41),(5,'M',50,42),(5,'L',50,43),(5,'XL',50,44),(5,'XXL',50,45),(6,'S',50,46),(6,'M',50,47),(6,'L',50,48),(6,'XL',50,49),(6,'XXL',50,50),(7,'S',50,51),(7,'M',49,52),(7,'L',50,53),(7,'XL',50,54),(7,'XXL',50,55),(8,'S',50,56),(8,'M',49,57),(8,'L',50,58),(8,'XL',50,59),(8,'XXL',50,60),(9,'S',50,61),(9,'M',50,62),(9,'L',50,63),(9,'XL',50,64),(9,'XXL',50,65),(10,'39',50,66),(10,'40',50,67),(10,'41',40,68),(10,'42',50,69),(10,'43',40,70),(11,'39',50,71),(11,'40',50,72),(11,'41',50,73),(11,'42',50,74),(11,'43',50,75);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-04 15:21:20
