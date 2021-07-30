-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: car_rental
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB-1:10.5.9+maria~focal

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `ADDRESS_ID` int(11) NOT NULL,
  `DISTRICT` varchar(20) DEFAULT NULL,
  `POSTAL_CODE` varchar(6) NOT NULL,
  `CITY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `cities` (`CITY_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Hoang Mai','100000',1),(2,'Hai Ba Trung','100000',1),(3,'Tay Ho','120201',1),(4,'Quan 1','200000',2),(5,'Quan Tan Binh','210000',2),(6,'Brooklyn','300000',3),(7,'Queens','310000',3),(8,'Manhattan','320000',3),(9,'South','400000',4),(10,'North','410000',4),(11,'Ginza','500000',5),(12,'Shinjukau','510000',5),(13,'Rippongi','520000',5),(14,'Akihabara','530000',5),(15,'Harajuku','540000',5),(16,'Chaoyang','700000',7),(17,'Yanqing','711111',7),(18,'Miyun','722222',7),(19,'Fengtai','733333',7),(20,'Parramatta','900000',9),(21,'St George','912345',9),(22,'Belconnen','10101',10),(23,'Gungahlin','12357',10);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `CAR_ID` int(11) NOT NULL,
  `CAR_TYPE` varchar(10) NOT NULL,
  `RATING` decimal(2,1) DEFAULT NULL,
  `LICENSE_PLATE` varchar(10) NOT NULL,
  `REGISTRATION_NUMBER` int(10) NOT NULL,
  `MODEL_ID` int(11) NOT NULL,
  `STORE_ID` int(11) NOT NULL,
  PRIMARY KEY (`CAR_ID`),
  KEY `MODEL_ID` (`MODEL_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`MODEL_ID`) REFERENCES `models` (`MODEL_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`STORE_ID`) REFERENCES `stores` (`STORE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (100,'Hatchback',4.5,'29A-14591',14905952,1,1),(101,'SUV',5.0,'30A-88888',12451051,2,1),(102,'Sedan',4.8,'99H-14951',14110681,3,1),(103,'SUV',5.0,'29J-14910',59202852,11,2),(104,'Sports Car',3.9,'30B-15891',91054391,7,2),(105,'Sports Car',2.5,'51X-29200',468059241,8,2),(106,'Coupe',5.0,'51B-59020',26206286,6,3),(107,'Supercar',4.4,'29L-32580',10681495,5,3),(108,'SUV',4.3,'14H-44444',18606915,2,4),(109,'SUV',5.0,'29B-35892',46278295,10,4),(110,'Sedan',2.0,'31A-35015',25862910,9,4),(111,'Sedan',4.9,'51K-64729',68195691,4,5),(112,'Supercar',4.7,'51Q-42616',59105025,5,5),(113,'SUV',4.5,'51L-54926',18602051,10,5),(114,'SUV',4.6,'29G-25622',15683624,11,6),(115,'Sedan',3.9,'99A-6315',52999120,9,6),(116,'Sports Car',4.9,'29I-25691',68351691,8,6),(117,'Sports Car',4.4,'17Q-19416',51692025,7,7),(118,'SUV',4.1,'89L-15626',50152051,10,7),(119,'Sedan',4.9,'29R-22322',41552624,9,9),(120,'Sedan',4.8,'51F-41615',53069120,3,9),(121,'Sports Car',4.3,'77I-35791',18621691,7,9),(122,'Coupe',4.7,'99Q-62716',94192025,6,9),(123,'SUV',4.8,'29L-41726',90152051,11,9),(124,'Sedan',3.9,'55E-52952',45322414,3,10),(125,'Hatchback',4.6,'30F-51615',90169120,1,10),(126,'Sedan',4.7,'31U-24591',59121691,4,10),(127,'Coupe',4.2,'30P-68016',94145025,6,11),(128,'SUV',4.1,'51L-31746',30012051,2,11),(129,'Sports Car',5.0,'33M-15552',45187414,8,12),(130,'SUV',4.9,'41F-57115',10692120,10,12),(131,'Sedan',4.7,'29U-50191',10121691,3,12),(132,'Supercar',4.6,'18I-55216',10645025,5,13),(133,'Coupe',4.5,'21S-19546',11052521,6,13),(134,'Sports Car',4.9,'30N-63252',45591414,7,14),(135,'Sedan',3.8,'22J-20515',38192120,4,14),(136,'Supercar',4.3,'29L-15191',11951691,5,14),(137,'SUV',4.4,'29F-90156',18644425,2,15),(138,'Coupe',4.9,'31A-88546',40152521,6,15);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `CITY_ID` int(11) NOT NULL,
  `CITY_NAME` varchar(25) DEFAULT NULL,
  `COUNTRY_ID` char(2) NOT NULL,
  PRIMARY KEY (`CITY_ID`),
  KEY `COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countries` (`COUNTRY_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Hanoi','VN'),(2,'Ho Chi Minh City','VN'),(3,'New York','US'),(4,'Chicago','US'),(5,'Tokyo','JP'),(6,'Kyoto','JP'),(7,'Beijing','CN'),(8,'ShangHai','CN'),(9,'Sydney','AU'),(10,'Canberra','AU');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `COUNTRY_ID` char(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AU','Australia'),('CN','China'),('JP','Japan'),('US','America'),('VN','VietNam');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADDRESS_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `DRIVING_LICENSE` int(12) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `addresses` (`ADDRESS_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1000,20,'Alex','Tombias','Albias@gmail.com','1990-09-10',49753105,'0974917525'),(1001,17,'Sigal','Chen','Sichen@gmail.com','1970-10-11',23018125,'0951862501'),(1002,19,'Sin','Lee','leesintt7@outlook.com','1999-01-05',84951111,'0965718461'),(1003,1,'Thang','Ngo','quocthang99@sis.hust.com','2001-08-08',91829140,'0357195201'),(1004,2,'Hung','To','Hungcute@yahoo.com','2001-05-01',49105281,'0975819178'),(1005,3,'Quan','Nguyen','quandz@gmail.com.vn.net','2001-01-01',38196106,'0984819510'),(1006,4,'Hieu','Tran','hieuckbee@gmail.com','2001-10-12',73861456,'0987571456'),(1007,5,NULL,'Nguyen','nobody@gmail.com','1980-06-12',16481940,'0941741859'),(1008,6,'Steve','Rogers','captainUS@yahoo.com','1959-10-22',49761094,'0977105178'),(1009,7,'Peter','Parker','babyspider@gmail.com','1998-12-05',38101406,'0941951510'),(1010,8,'Taylor','Swift','troublemaker1989@gmail.com','1989-02-22',73154456,'0987211046'),(1011,9,'George','Smith','Geosm@gmail.com','1981-11-02',16195940,'0909741859'),(1012,10,NULL,'Addams','anonymous@yahoo.com','1969-07-20',12761094,'0909105178'),(1013,11,'Saitama','Osaka','onepuchd@gmail.com','1983-05-31',90101406,'0940121510'),(1014,12,'Shinoda','Uzumaki','thenexthokage@gmail.com','1977-03-26',71094456,'0987891041'),(1015,13,NULL,'Kaito','sieutromcut@gmail.com','2002-09-11',11235940,NULL),(1016,14,'Luffy','Monkey.D','vuahai123@yahoo.com','2000-12-02',11091094,NULL),(1017,15,'Nobita','Chaiko','chongchontre@gmail.com','1965-11-19',10901406,'0940121109'),(1018,16,'Bruce','Chan','dragonfist123@gmail.com','1960-10-24',10994456,'0980981041'),(1019,18,'Jackie','Lee','Karatemaster@gmail.com','1998-10-21',9735940,NULL),(1020,21,'Margot','Robbie','harleyfknqueen@yahoo.com','1989-08-01',9491094,'094718591'),(1021,22,'Leo','Jackhuge','wolfclaw123@gmail.com','1960-09-11',10910806,'0910921109'),(1022,23,'Chirs','Odin','kingofasgard@gmail.com','1980-12-06',10909356,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `MANUFACTURER_ID` int(11) NOT NULL,
  `MANUFACTURER_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MANUFACTURER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Vinfast'),(2,'Audi'),(3,'Ferrari'),(4,'Lamborghini'),(5,'Toyota'),(6,'Hyundai');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `MODEL_ID` int(11) NOT NULL,
  `MODEL_NAME` varchar(30) DEFAULT NULL,
  `MANUFACTURER_ID` int(11) NOT NULL,
  PRIMARY KEY (`MODEL_ID`),
  KEY `MANUFACTURER_ID` (`MANUFACTURER_ID`),
  CONSTRAINT `models_ibfk_1` FOREIGN KEY (`MANUFACTURER_ID`) REFERENCES `manufacturers` (`MANUFACTURER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'Fadil',1),(2,'LuxSA',1),(3,'LuxA',1),(4,'A4',2),(5,'Q3 Sportback',2),(6,'R8 Coupe',2),(7,'Enzo2020',3),(8,'Aventador',4),(9,'Vios',5),(10,'Tucson',6),(11,'SantaFe',6);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `STORE_ID` int(11) NOT NULL,
  `PAYMENT_TYPE` varchar(4) DEFAULT NULL CHECK (`PAYMENT_TYPE` = 'CASH' or `PAYMENT_TYPE` = 'VISA'),
  `PAYMENT_DATE` date NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`STORE_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`STORE_ID`) REFERENCES `stores` (`STORE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1000,10,'Cash','2021-04-01'),(1000,14,'Cash','2021-04-21'),(1001,10,'Cash','2021-04-01'),(1002,10,'VISA','2021-12-12'),(1004,1,'VISA','2021-05-25'),(1004,2,'Cash','2021-01-10'),(1005,2,'Cash','2021-02-10'),(1006,3,'Cash','2021-02-22'),(1006,4,'Cash','2020-07-01'),(1007,4,'VISA','2021-03-21'),(1007,7,'VISA','2020-09-25'),(1008,5,'VISA','2021-01-08'),(1009,5,'Cash','2021-05-03'),(1010,5,'Cash','2021-02-22'),(1011,9,'Cash','2021-02-28'),(1012,7,'VISA','2021-03-30'),(1012,9,'VISA','2021-05-02'),(1013,9,'VISA','2021-04-05'),(1014,1,'Cash','2020-08-01'),(1016,2,'Cash','2020-03-01'),(1017,9,'Cash','2021-02-01'),(1018,13,'VISA','2021-02-28'),(1019,13,'VISA','2020-05-21'),(1020,11,'Cash','2020-09-21'),(1021,7,'Cash','2021-02-21'),(1022,7,'Cash','2020-08-12');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CAR_ID` int(11) NOT NULL,
  `RENTAL_DATE` date NOT NULL,
  `RETURN_DATE` date DEFAULT NULL CHECK (`RETURN_DATE` > `RENTAL_DATE`),
  `COST_PER_HOUR` decimal(4,2) DEFAULT NULL,
  `TOTAL_COST` decimal(8,2) GENERATED ALWAYS AS (timestampdiff(HOUR,`RENTAL_DATE`,`RETURN_DATE`) * `COST_PER_HOUR`) VIRTUAL,
  PRIMARY KEY (`CUSTOMER_ID`,`CAR_ID`),
  KEY `CAR_ID` (`CAR_ID`),
  CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1000,100,'2021-03-22','2021-04-01',5.20,1248.00),(1000,136,'2020-04-19','2020-04-21',12.00,576.00),(1001,124,'2021-01-09','2021-01-21',11.50,3312.00),(1002,125,'2020-12-01','2020-12-12',9.50,2508.00),(1004,100,'2021-05-20','2021-05-25',5.20,624.00),(1004,101,'2021-04-01','2021-05-21',5.50,6600.00),(1004,103,'2020-12-25','2021-01-10',6.80,2611.20),(1005,103,'2021-01-09','2021-02-10',6.80,5222.40),(1006,106,'2020-12-01','2021-02-22',11.20,22310.40),(1006,108,'2020-06-22','2020-07-01',10.50,2268.00),(1007,108,'2021-03-02','2021-03-21',10.50,4788.00),(1007,118,'2020-09-20','2020-09-25',5.00,600.00),(1008,111,'2020-12-25','2021-01-08',6.50,2184.00),(1009,112,'2021-04-22','2021-05-03',7.00,1848.00),(1009,113,'2020-09-20','2020-09-25',9.50,1140.00),(1010,113,'2021-02-09','2021-02-22',9.50,2964.00),(1011,119,'2021-02-25','2021-02-28',10.00,720.00),(1012,117,'2021-02-13','2021-02-15',6.50,312.00),(1012,118,'2021-03-20','2021-03-30',5.00,1200.00),(1012,120,'2021-04-29','2021-05-02',12.00,864.00),(1013,122,'2020-03-20','2020-04-05',4.50,1728.00),(1014,102,'2020-07-25','2020-08-01',15.00,2520.00),(1015,104,'2021-05-05','2021-05-30',4.00,2400.00),(1015,134,'2021-04-05','2021-05-04',4.20,2923.20),(1016,105,'2020-02-15','2020-03-01',10.00,3600.00),(1017,123,'2021-01-24','2021-02-01',8.30,1593.60),(1018,132,'2021-02-09','2021-02-28',10.50,4788.00),(1019,133,'2020-05-19','2020-05-21',20.00,960.00),(1020,127,'2020-09-19','2020-09-21',12.00,576.00),(1021,117,'2021-02-06','2021-02-12',6.50,936.00),(1022,118,'2020-08-09','2020-08-12',5.00,360.00);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `STAFF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `STORE_ID` int(11) NOT NULL,
  PRIMARY KEY (`STAFF_ID`),
  KEY `STORE_ID` (`STORE_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`STORE_ID`) REFERENCES `stores` (`STORE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Charlotte','Williams','Charwill@gmail.com',50000.00,10),(2,'Noah','Jackson','Nojackson123@gmail.com',120000.00,10),(3,'Yasuke','Daniel','Yadaniel@gmail.com',85000.00,11),(4,'Olivier','Lee','Olvlee@gmail.com',200000.00,13),(5,'Lucas','Kinsley','Lukings@gmail.com',35000.00,15),(6,'Maya','Eve','Mayeve@gmail.com',105000.00,15),(7,'Carol','Madison','Carmadison@gmail.com',600.00,15),(8,'Matthew','Alex','Mattale@gmail.com',12000.00,14),(9,'Sophia','Brooke','SophieB@outlook.com',5000.00,14),(10,'Claire','Autumn','Claautum@yahoo.com',120000.00,9),(11,'Brantt','Camila','Branmila@gmail.com',42000.00,9),(12,'Naomi','Lucilia','Naomilucilia@gmail.com',230000.00,9),(13,NULL,'Carmen','Mrsnoface@gmail.com',NULL,7),(14,'Theressa','May','TheressaM@gmail.com',3000.00,12),(15,'Terell','Franklin','Terrellfrank@gmail.com',5000.00,12),(16,'Monte','Riley','Monteriley@yahoo.com',10000.00,5),(17,NULL,'Yasuaa','Yasuaganktemtt7@gmail.com',4200.00,5),(18,'Bella','Violet','Bellet@outlook.com',9000.00,6),(19,'Melida','Darlene','Mellener987@gmail.com',4000.00,6),(20,'Alice','Kennedy','Aliceken98@gmail.com',NULL,4),(21,'Linh','Hoai','whereis14ti@gmail.com',140000.00,4),(22,'Dat','Nguyen','Datkkkk9@gmail.com.vn',9000.00,4),(23,'Hoang','Le','Hoangleee@sis.hust.edu.com.vn',20000.00,1),(24,'Huan','Hoa','Huanrosieneverdie@gmail.com',6000.00,1),(25,'Hang','Nguyen Phuong','Ceonguyenphuonghang@gmail.com',500000.00,2),(26,'Ha','Ho','Hongochacasi@gmail.com',2000.00,2),(27,'Son','Le','Sonlehoang@yahoo.com',5000.00,3);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `STORE_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `CITY_ID` int(11) NOT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `cities` (`CITY_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'0957186925',1),(2,'0948194210',1),(3,'0385910941',2),(4,'0948619301',2),(5,'0957185925',3),(6,'0959176284',6),(7,'0929451757',10),(8,'913819601',10),(9,'0921471764',4),(10,NULL,7),(11,'0581495611',9),(12,'0912488857',8),(13,'0904862995',7),(14,'0914786919',8),(15,'0912458185',9);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 16:10:51
