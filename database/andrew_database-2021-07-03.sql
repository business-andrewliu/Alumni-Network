-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: andrew_database
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(6) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `industry_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_name` (`company_name`),
  KEY `industry_id` (`industry_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (100001,'Airspace Corp','Austin','TX',1),(100002,'Pharma Corp','Boston','MA',2),(100003,'Securities Inc.','New York','NY',3),(100004,'Yottabyte Inc.','San Francisco','CA',5),(100005,'Orange LLC','Palo Alto','CA',5),(100006,'Medicine Inc','San Diego','CA',4),(100007,'Investments LLC','New York','NY',3),(100008,'Healthy LLC','Austin','TX',4),(100009,'Universe Inc.','Houston','TX',1),(100010,'DNA Inc','San Diego','CA',2);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earners_info_details`
--

DROP TABLE IF EXISTS `earners_info_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `earners_info_details` (
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `salary` int(12) DEFAULT NULL,
  `earning_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earners_info_details`
--

LOCK TABLES `earners_info_details` WRITE;
/*!40000 ALTER TABLE `earners_info_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `earners_info_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `date_of_hire` date DEFAULT NULL,
  `manager_id` int(10) DEFAULT NULL,
  `company_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`),
  KEY `company_id` (`company_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Andrew','Liu','andrew.liu@medicineinc.com','SCM Manager',150000,'2020-06-12',NULL,100006),(2,'John','Kim','john.kim@pharmacorp.com','Researcher',125000,'2018-04-20',NULL,100002),(3,'Ben','Edwards','ben.edwards@securitiesinc.com','Investment Manager',200000,'2016-03-06',NULL,100003),(4,'Melinda','Wang','melinda.wang@healthyllc.com','Health Manager',175000,'2014-12-04',NULL,100008),(5,'Kevin','Nguyen','kevin.nguyen@dnainc.com','Researcher',75000,'2018-07-14',NULL,100010),(6,'Tim','Lee','tim.lee@orangellc.com','Engineering Manager',500000,'2011-08-13',NULL,100005),(7,'James','Lee','james.lee@pharmacorp.com','Junior Researcher',90000,'2020-07-18',NULL,100002),(8,'Tim','Johnson','tim.johnson@investmentsllc.com','Securities Manager',200000,'2009-03-24',NULL,100007),(9,'David','Wang','david.wang@satellitescorp.com','CEO',236500,'2012-05-30',NULL,100009),(10,'Tim','Wang','tim.wang@airspacecorp.com','Senior Engineer',145000,'2013-04-17',NULL,100001),(11,'John','Liu','john,liu@yottabyeinc.com','Associate Programmer',110000,'2018-09-12',NULL,100004),(12,'Sarah','Kim','sarah.kim@securitiesinc.com','Junior Investor',90000,'2020-12-15',NULL,100003),(13,'Edward','Liang','edward.liang@medicineinc.com','Clinical Researcher',200000,'2006-06-14',NULL,100006),(14,'Tom','Edwards','tom.edwards@healthyllc.com','Research Associate',110000,'2008-05-14',NULL,100008),(15,'Jane','Lee','jane.lee@pharmacorp.com','Junior Researcher',120000,'2013-03-12',NULL,100002),(16,'Richard','Jung','richard.jung@dnainc.com','Lab Associate',85000,'2019-10-15',NULL,100010),(17,'George','Leung','george.leung@yottabyeinc.com','Products Researcher',145000,'2014-07-23',NULL,100004),(18,'Zack','Cheng','zack.cheng@satellitescorp.com','Associate Analyst',77000,'2017-11-29',NULL,100009),(19,'Henry','Johnson','henry.johnson@orange.com','Engineering Associate',150000,'2015-02-17',NULL,100005),(20,'Robert','Kim','robert.kim@medicineinc.com','Junior Researcher',60000,'2021-07-03',NULL,100006),(21,'Wendy','Leung','wendy.leung@satellitescorp.com','Engineering Associate',79200,'2020-07-18',NULL,100009),(22,'George','Yang','george.yang@airspacecorp.com','Engineering Manager',145000,'2011-08-26',NULL,100001),(23,'Timothy','Yang','timothy.yang@healthyllc.com','Nutrition Associate',89000,'2014-06-01',NULL,100008),(24,'Phillip','Lee','phillip.lee@yottabyteinc.com','Senior Programmer',137500,'2005-09-14',NULL,100004),(25,'Brenda','Nguyen','brenda.nguyen@securitiesinc.com','Junior Analyst',53000,'2021-03-15',NULL,100003);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_project_link`
--

DROP TABLE IF EXISTS `employee_project_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_project_link` (
  `employee_id` int(12) NOT NULL,
  `project_id` int(12) NOT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`employee_id`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `employee_project_link_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `employee_project_link_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_project_link`
--

LOCK TABLES `employee_project_link` WRITE;
/*!40000 ALTER TABLE `employee_project_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_project_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `industry_id` int(12) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`industry_id`),
  UNIQUE KEY `industry_name` (`industry_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Aerospace'),(2,'Biotech'),(3,'Finance'),(4,'Health Care'),(5,'IT');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `project_id` int(12) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) NOT NULL,
  `budget` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_status` varchar(25) DEFAULT 'active',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-04 17:23:29
