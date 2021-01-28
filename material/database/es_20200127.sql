-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: entry_system
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add b patient appointment',7,'add_bpatientappointment'),(26,'Can change b patient appointment',7,'change_bpatientappointment'),(27,'Can delete b patient appointment',7,'delete_bpatientappointment'),(28,'Can view b patient appointment',7,'view_bpatientappointment'),(29,'Can add b patient base info',8,'add_bpatientbaseinfo'),(30,'Can change b patient base info',8,'change_bpatientbaseinfo'),(31,'Can delete b patient base info',8,'delete_bpatientbaseinfo'),(32,'Can view b patient base info',8,'view_bpatientbaseinfo'),(33,'Can add d patient appointment',9,'add_dpatientappointment'),(34,'Can change d patient appointment',9,'change_dpatientappointment'),(35,'Can delete d patient appointment',9,'delete_dpatientappointment'),(36,'Can view d patient appointment',9,'view_dpatientappointment'),(37,'Can add d patient detail',10,'add_dpatientdetail'),(38,'Can change d patient detail',10,'change_dpatientdetail'),(39,'Can delete d patient detail',10,'delete_dpatientdetail'),(40,'Can view d patient detail',10,'view_dpatientdetail'),(41,'Can add d scales',11,'add_dscales'),(42,'Can change d scales',11,'change_dscales'),(43,'Can delete d scales',11,'delete_dscales'),(44,'Can view d scales',11,'view_dscales'),(45,'Can add d treatments',12,'add_dtreatments'),(46,'Can change d treatments',12,'change_dtreatments'),(47,'Can delete d treatments',12,'delete_dtreatments'),(48,'Can view d treatments',12,'view_dtreatments'),(49,'Can add r patient adolescent events',13,'add_rpatientadolescentevents'),(50,'Can change r patient adolescent events',13,'change_rpatientadolescentevents'),(51,'Can delete r patient adolescent events',13,'delete_rpatientadolescentevents'),(52,'Can view r patient adolescent events',13,'view_rpatientadolescentevents'),(53,'Can add r patient atq',14,'add_rpatientatq'),(54,'Can change r patient atq',14,'change_rpatientatq'),(55,'Can delete r patient atq',14,'delete_rpatientatq'),(56,'Can view r patient atq',14,'view_rpatientatq'),(57,'Can add r patient basic information abuse',15,'add_rpatientbasicinformationabuse'),(58,'Can change r patient basic information abuse',15,'change_rpatientbasicinformationabuse'),(59,'Can delete r patient basic information abuse',15,'delete_rpatientbasicinformationabuse'),(60,'Can view r patient basic information abuse',15,'view_rpatientbasicinformationabuse'),(61,'Can add r patient basic information family',16,'add_rpatientbasicinformationfamily'),(62,'Can change r patient basic information family',16,'change_rpatientbasicinformationfamily'),(63,'Can delete r patient basic information family',16,'delete_rpatientbasicinformationfamily'),(64,'Can view r patient basic information family',16,'view_rpatientbasicinformationfamily'),(65,'Can add r patient basic information other',17,'add_rpatientbasicinformationother'),(66,'Can change r patient basic information other',17,'change_rpatientbasicinformationother'),(67,'Can delete r patient basic information other',17,'delete_rpatientbasicinformationother'),(68,'Can view r patient basic information other',17,'view_rpatientbasicinformationother'),(69,'Can add r patient basic information study',18,'add_rpatientbasicinformationstudy'),(70,'Can change r patient basic information study',18,'change_rpatientbasicinformationstudy'),(71,'Can delete r patient basic information study',18,'delete_rpatientbasicinformationstudy'),(72,'Can view r patient basic information study',18,'view_rpatientbasicinformationstudy'),(73,'Can add r patient bprs',19,'add_rpatientbprs'),(74,'Can change r patient bprs',19,'change_rpatientbprs'),(75,'Can delete r patient bprs',19,'delete_rpatientbprs'),(76,'Can view r patient bprs',19,'view_rpatientbprs'),(77,'Can add r patient chinese handy',20,'add_rpatientchinesehandy'),(78,'Can change r patient chinese handy',20,'change_rpatientchinesehandy'),(79,'Can delete r patient chinese handy',20,'delete_rpatientchinesehandy'),(80,'Can view r patient chinese handy',20,'view_rpatientchinesehandy'),(81,'Can add r patient cognitive emotion',21,'add_rpatientcognitiveemotion'),(82,'Can change r patient cognitive emotion',21,'change_rpatientcognitiveemotion'),(83,'Can delete r patient cognitive emotion',21,'delete_rpatientcognitiveemotion'),(84,'Can view r patient cognitive emotion',21,'view_rpatientcognitiveemotion'),(85,'Can add r patient diagnostic type',22,'add_rpatientdiagnostictype'),(86,'Can change r patient diagnostic type',22,'change_rpatientdiagnostictype'),(87,'Can delete r patient diagnostic type',22,'delete_rpatientdiagnostictype'),(88,'Can view r patient diagnostic type',22,'view_rpatientdiagnostictype'),(89,'Can add r patient drugs information',23,'add_rpatientdrugsinformation'),(90,'Can change r patient drugs information',23,'change_rpatientdrugsinformation'),(91,'Can delete r patient drugs information',23,'delete_rpatientdrugsinformation'),(92,'Can view r patient drugs information',23,'view_rpatientdrugsinformation'),(93,'Can add r patient fept',24,'add_rpatientfept'),(94,'Can change r patient fept',24,'change_rpatientfept'),(95,'Can delete r patient fept',24,'delete_rpatientfept'),(96,'Can view r patient fept',24,'view_rpatientfept'),(97,'Can add r patient growth',25,'add_rpatientgrowth'),(98,'Can change r patient growth',25,'change_rpatientgrowth'),(99,'Can delete r patient growth',25,'delete_rpatientgrowth'),(100,'Can view r patient growth',25,'view_rpatientgrowth'),(101,'Can add r patient hama',26,'add_rpatienthama'),(102,'Can change r patient hama',26,'change_rpatienthama'),(103,'Can delete r patient hama',26,'delete_rpatienthama'),(104,'Can view r patient hama',26,'view_rpatienthama'),(105,'Can add r patient hamd17',27,'add_rpatienthamd17'),(106,'Can change r patient hamd17',27,'change_rpatienthamd17'),(107,'Can delete r patient hamd17',27,'delete_rpatienthamd17'),(108,'Can view r patient hamd17',27,'view_rpatienthamd17'),(109,'Can add r patient happiness',28,'add_rpatienthappiness'),(110,'Can change r patient happiness',28,'change_rpatienthappiness'),(111,'Can delete r patient happiness',28,'delete_rpatienthappiness'),(112,'Can view r patient happiness',28,'view_rpatienthappiness'),(113,'Can add r patient inclusion exclusion criteria',29,'add_rpatientinclusionexclusioncriteria'),(114,'Can change r patient inclusion exclusion criteria',29,'change_rpatientinclusionexclusioncriteria'),(115,'Can delete r patient inclusion exclusion criteria',29,'delete_rpatientinclusionexclusioncriteria'),(116,'Can view r patient inclusion exclusion criteria',29,'view_rpatientinclusionexclusioncriteria'),(117,'Can add r patient informed consent signature page',30,'add_rpatientinformedconsentsignaturepage'),(118,'Can change r patient informed consent signature page',30,'change_rpatientinformedconsentsignaturepage'),(119,'Can delete r patient informed consent signature page',30,'delete_rpatientinformedconsentsignaturepage'),(120,'Can view r patient informed consent signature page',30,'view_rpatientinformedconsentsignaturepage'),(121,'Can add r patient manicsymptom',31,'add_rpatientmanicsymptom'),(122,'Can change r patient manicsymptom',31,'change_rpatientmanicsymptom'),(123,'Can delete r patient manicsymptom',31,'delete_rpatientmanicsymptom'),(124,'Can view r patient manicsymptom',31,'view_rpatientmanicsymptom'),(125,'Can add r patient medical history',32,'add_rpatientmedicalhistory'),(126,'Can change r patient medical history',32,'change_rpatientmedicalhistory'),(127,'Can delete r patient medical history',32,'delete_rpatientmedicalhistory'),(128,'Can view r patient medical history',32,'view_rpatientmedicalhistory'),(129,'Can add r patient mri examination',33,'add_rpatientmriexamination'),(130,'Can change r patient mri examination',33,'change_rpatientmriexamination'),(131,'Can delete r patient mri examination',33,'delete_rpatientmriexamination'),(132,'Can view r patient mri examination',33,'view_rpatientmriexamination'),(133,'Can add r patient mri safety questionnaire',34,'add_rpatientmrisafetyquestionnaire'),(134,'Can change r patient mri safety questionnaire',34,'change_rpatientmrisafetyquestionnaire'),(135,'Can delete r patient mri safety questionnaire',34,'delete_rpatientmrisafetyquestionnaire'),(136,'Can view r patient mri safety questionnaire',34,'view_rpatientmrisafetyquestionnaire'),(137,'Can add r patient pleasure',35,'add_rpatientpleasure'),(138,'Can change r patient pleasure',35,'change_rpatientpleasure'),(139,'Can delete r patient pleasure',35,'delete_rpatientpleasure'),(140,'Can view r patient pleasure',35,'view_rpatientpleasure'),(141,'Can add r patient rbans',36,'add_rpatientrbans'),(142,'Can change r patient rbans',36,'change_rpatientrbans'),(143,'Can delete r patient rbans',36,'delete_rpatientrbans'),(144,'Can view r patient rbans',36,'view_rpatientrbans'),(145,'Can add r patient scales',37,'add_rpatientscales'),(146,'Can change r patient scales',37,'change_rpatientscales'),(147,'Can delete r patient scales',37,'delete_rpatientscales'),(148,'Can view r patient scales',37,'view_rpatientscales'),(149,'Can add r patient suicidal',38,'add_rpatientsuicidal'),(150,'Can change r patient suicidal',38,'change_rpatientsuicidal'),(151,'Can delete r patient suicidal',38,'delete_rpatientsuicidal'),(152,'Can view r patient suicidal',38,'view_rpatientsuicidal'),(153,'Can add r patient tms',39,'add_rpatienttms'),(154,'Can change r patient tms',39,'change_rpatienttms'),(155,'Can delete r patient tms',39,'delete_rpatienttms'),(156,'Can view r patient tms',39,'view_rpatienttms'),(157,'Can add r patient vept',40,'add_rpatientvept'),(158,'Can change r patient vept',40,'change_rpatientvept'),(159,'Can delete r patient vept',40,'delete_rpatientvept'),(160,'Can view r patient vept',40,'view_rpatientvept'),(161,'Can add r patient wcst',41,'add_rpatientwcst'),(162,'Can change r patient wcst',41,'change_rpatientwcst'),(163,'Can delete r patient wcst',41,'delete_rpatientwcst'),(164,'Can view r patient wcst',41,'view_rpatientwcst'),(165,'Can add r patient ybobsessiontable',42,'add_rpatientybobsessiontable'),(166,'Can change r patient ybobsessiontable',42,'change_rpatientybobsessiontable'),(167,'Can delete r patient ybobsessiontable',42,'delete_rpatientybobsessiontable'),(168,'Can view r patient ybobsessiontable',42,'view_rpatientybobsessiontable'),(169,'Can add r patient ymrs',43,'add_rpatientymrs'),(170,'Can change r patient ymrs',43,'change_rpatientymrs'),(171,'Can delete r patient ymrs',43,'delete_rpatientymrs'),(172,'Can view r patient ymrs',43,'view_rpatientymrs'),(173,'Can add r user record',44,'add_ruserrecord'),(174,'Can change r user record',44,'change_ruserrecord'),(175,'Can delete r user record',44,'delete_ruserrecord'),(176,'Can view r user record',44,'view_ruserrecord'),(177,'Can add s user',45,'add_suser'),(178,'Can change s user',45,'change_suser'),(179,'Can delete s user',45,'delete_suser'),(180,'Can view s user',45,'view_suser'),(181,'Can add b patient appointment',46,'add_bpatientappointment'),(182,'Can change b patient appointment',46,'change_bpatientappointment'),(183,'Can delete b patient appointment',46,'delete_bpatientappointment'),(184,'Can view b patient appointment',46,'view_bpatientappointment'),(185,'Can add b patient base info',47,'add_bpatientbaseinfo'),(186,'Can change b patient base info',47,'change_bpatientbaseinfo'),(187,'Can delete b patient base info',47,'delete_bpatientbaseinfo'),(188,'Can view b patient base info',47,'view_bpatientbaseinfo'),(189,'Can add d patient detail',48,'add_dpatientdetail'),(190,'Can change d patient detail',48,'change_dpatientdetail'),(191,'Can delete d patient detail',48,'delete_dpatientdetail'),(192,'Can view d patient detail',48,'view_dpatientdetail'),(193,'Can add d scales',49,'add_dscales'),(194,'Can change d scales',49,'change_dscales'),(195,'Can delete d scales',49,'delete_dscales'),(196,'Can view d scales',49,'view_dscales'),(197,'Can add r patient basic information abuse',50,'add_rpatientbasicinformationabuse'),(198,'Can change r patient basic information abuse',50,'change_rpatientbasicinformationabuse'),(199,'Can delete r patient basic information abuse',50,'delete_rpatientbasicinformationabuse'),(200,'Can view r patient basic information abuse',50,'view_rpatientbasicinformationabuse'),(201,'Can add r patient basic information family',51,'add_rpatientbasicinformationfamily'),(202,'Can change r patient basic information family',51,'change_rpatientbasicinformationfamily'),(203,'Can delete r patient basic information family',51,'delete_rpatientbasicinformationfamily'),(204,'Can view r patient basic information family',51,'view_rpatientbasicinformationfamily'),(205,'Can add r patient basic information health',52,'add_rpatientbasicinformationhealth'),(206,'Can change r patient basic information health',52,'change_rpatientbasicinformationhealth'),(207,'Can delete r patient basic information health',52,'delete_rpatientbasicinformationhealth'),(208,'Can view r patient basic information health',52,'view_rpatientbasicinformationhealth'),(209,'Can add r patient basic information other',53,'add_rpatientbasicinformationother'),(210,'Can change r patient basic information other',53,'change_rpatientbasicinformationother'),(211,'Can delete r patient basic information other',53,'delete_rpatientbasicinformationother'),(212,'Can view r patient basic information other',53,'view_rpatientbasicinformationother'),(213,'Can add r patient basic information study',54,'add_rpatientbasicinformationstudy'),(214,'Can change r patient basic information study',54,'change_rpatientbasicinformationstudy'),(215,'Can delete r patient basic information study',54,'delete_rpatientbasicinformationstudy'),(216,'Can view r patient basic information study',54,'view_rpatientbasicinformationstudy'),(217,'Can add s user',55,'add_suser'),(218,'Can change s user',55,'change_suser'),(219,'Can delete s user',55,'delete_suser'),(220,'Can view s user',55,'view_suser'),(221,'Can add r patient basic information health',56,'add_rpatientbasicinformationhealth'),(222,'Can change r patient basic information health',56,'change_rpatientbasicinformationhealth'),(223,'Can delete r patient basic information health',56,'delete_rpatientbasicinformationhealth'),(224,'Can view r patient basic information health',56,'view_rpatientbasicinformationhealth'),(225,'Can add r patient sembu',57,'add_rpatientsembu'),(226,'Can change r patient sembu',57,'change_rpatientsembu'),(227,'Can delete r patient sembu',57,'delete_rpatientsembu'),(228,'Can view r patient sembu',57,'view_rpatientsembu'),(229,'Can add d ethnicity',58,'add_dethnicity'),(230,'Can change d ethnicity',58,'change_dethnicity'),(231,'Can delete d ethnicity',58,'delete_dethnicity'),(232,'Can view d ethnicity',58,'view_dethnicity'),(233,'Can add d patient appointment',59,'add_dpatientappointment'),(234,'Can change d patient appointment',59,'change_dpatientappointment'),(235,'Can delete d patient appointment',59,'delete_dpatientappointment'),(236,'Can view d patient appointment',59,'view_dpatientappointment'),(237,'Can add r user record',60,'add_ruserrecord'),(238,'Can change r user record',60,'change_ruserrecord'),(239,'Can delete r user record',60,'delete_ruserrecord'),(240,'Can view r user record',60,'view_ruserrecord');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_inpatient_info`
--

DROP TABLE IF EXISTS `b_inpatient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_inpatient_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `in_time` int(11) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `inpatient_area` varchar(20) DEFAULT NULL,
  `bed_number` varchar(20) DEFAULT NULL,
  `inpatient_number` varchar(20) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `out_record` varchar(50) DEFAULT NULL,
  `progress_note` varchar(50) DEFAULT NULL,
  `medical_advice_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `d_inpatient_info_ibfk_1` (`patient_id`),
  CONSTRAINT `d_inpatient_info_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `b_patient_base_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_inpatient_info`
--

LOCK TABLES `b_inpatient_info` WRITE;
/*!40000 ALTER TABLE `b_inpatient_info` DISABLE KEYS */;
INSERT INTO `b_inpatient_info` VALUES (5,999,1,'test',NULL,NULL,NULL,NULL,'2020-10-27','2021-01-26 21:13:01','2021-01-27 11:42:39','','','医嘱记录/5/邵思琦.xls'),(6,999,2,'test',NULL,NULL,NULL,NULL,NULL,'2021-01-26 21:16:59','2021-01-26 21:16:59','','',NULL),(7,999,3,'test',NULL,NULL,NULL,NULL,NULL,'2021-01-26 21:17:18','2021-01-26 21:17:18','','',NULL),(8,111,1,'test',NULL,NULL,NULL,NULL,NULL,'2021-01-26 21:17:41','2021-01-26 21:17:41','','',NULL);
/*!40000 ALTER TABLE `b_inpatient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_inpatient_medical_advice`
--

DROP TABLE IF EXISTS `b_inpatient_medical_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_inpatient_medical_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inpatient_id` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `medical_name` varchar(40) DEFAULT NULL,
  `dose_num` float DEFAULT NULL,
  `dose_unit` varchar(10) DEFAULT NULL,
  `group` varchar(10) DEFAULT NULL,
  `drug_type` varchar(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `usage_way` varchar(20) DEFAULT NULL,
  `start_doctor` varchar(20) DEFAULT NULL,
  `start_nurse` varchar(20) DEFAULT NULL,
  `end_doctor` varchar(20) DEFAULT NULL,
  `end_nurse` varchar(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `b_inpatient_medical_advice_ibfk_1` (`inpatient_id`),
  CONSTRAINT `b_inpatient_medical_advice_ibfk_1` FOREIGN KEY (`inpatient_id`) REFERENCES `b_inpatient_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_inpatient_medical_advice`
--

LOCK TABLES `b_inpatient_medical_advice` WRITE;
/*!40000 ALTER TABLE `b_inpatient_medical_advice` DISABLE KEYS */;
INSERT INTO `b_inpatient_medical_advice` VALUES (1098,5,'2020-10-06 11:37:18','精神病护理',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1099,5,'2020-10-06 11:37:18','精神科监护',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1100,5,'2020-10-06 11:37:18','一级护理(精神科)',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1101,5,'2020-10-06 11:37:18','普食(普通饭)',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1102,5,'2020-10-06 11:37:18','工娱治疗',NULL,NULL,NULL,NULL,2,'QD','柳绪珍','侯春婷','朱荣鑫','侯春婷','2020-11-03 14:06:57','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1103,5,'2020-10-06 11:37:18','行为观察和治疗',NULL,NULL,NULL,NULL,2,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1104,5,'2020-10-06 11:37:18','松驰治疗',NULL,NULL,NULL,NULL,2,'Q5W','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1105,5,'2020-10-06 11:37:18','抗精神病药物治疗监测',NULL,NULL,NULL,NULL,3,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1106,5,'2020-10-06 11:37:18','汉密尔顿抑郁量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1107,5,'2020-10-06 11:37:18','精神护理观察量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1108,5,'2020-10-06 11:37:18','简明精神病评定量表(BPRS)',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1109,5,'2020-10-06 11:37:18','临床总体印象量表(CGI)',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1110,5,'2020-10-06 11:37:18','锥体外系副作用量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1111,5,'2020-10-06 11:37:18','汉密尔顿焦虑量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1112,5,'2020-10-06 11:37:18','心理治疗（住院，30分钟）',NULL,NULL,NULL,NULL,2,'QW2','柳绪珍','侯春婷','张婧','侯春婷','2020-10-15 15:59:55','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1113,5,'2020-10-06 11:37:18','宗(Zung)氏焦虑自评量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1114,5,'2020-10-06 11:37:18','宗(Zung)氏抑郁自评量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1115,5,'2020-10-06 11:37:18','阳性症状评定量表（SAPS）',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张婧','李佳','2020-11-02 15:58:38','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1116,5,'2020-10-06 11:37:18','阴性症状评定量表（SANS）',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张婧','李佳','2020-11-02 15:58:39','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1117,5,'2020-10-06 11:37:18','日常生活能力评定量表',NULL,NULL,NULL,NULL,3,'QW2','柳绪珍','侯春婷','张洪燕','侯春婷','2020-11-05 10:08:07','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1118,5,'2020-10-06 11:37:20','陪护',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1119,5,'2020-10-06 11:37:20','陪护床（含简易病床、躺椅等）',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1120,5,'2020-10-06 11:37:20','加普食',NULL,NULL,NULL,NULL,1,'QD','柳绪珍','侯春婷','张婧','孙香玉','2020-10-12 11:48:58','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1121,5,'2020-10-06 11:37:30','盐酸文拉法辛(怡诺思）缓释胶囊 75mg',75,'mg',NULL,'PO',0,'QD1','柳绪珍','侯春婷','张婧','侯春婷','2020-10-07 09:43:05','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1122,5,'2020-10-06 11:38:11','富马酸喹硫平(思瑞康)片 25mg',25,'mg',NULL,'PO',0,'QN','柳绪珍','侯春婷','张婧','侯春婷','2020-10-07 09:43:05','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1123,5,'2020-10-07 09:43:11','富马酸喹硫平缓释片 200mg',200,'mg',NULL,'PO',0,'QN','张婧','侯春婷','朱荣鑫','徐新欣','2020-10-09 09:17:04','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1124,5,'2020-10-07 09:43:59','劳拉西泮（乐拉安）片 0.5mg',NULL,NULL,NULL,'PO',0,'QD1','张婧','侯春婷','朱荣鑫','徐新欣','2020-10-09 09:17:04','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1125,5,'2020-10-07 09:44:03','劳拉西泮（乐拉安）片 0.5mg',1,'mg',NULL,'PO',0,'QN','张婧','侯春婷','朱荣鑫','徐新欣','2020-10-09 09:17:04','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1126,5,'2020-10-07 09:44:11','甘草酸二铵肠溶片 50mg',150,'mg',NULL,'PO',0,'BID','张婧','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1127,5,'2020-10-07 09:44:19','心脑宁胶囊 0.45g',NULL,NULL,NULL,'PO',0,'BID','张婧','侯春婷','张洪燕','郝倩钰','2020-10-16 16:29:19','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1128,5,'2020-10-08 20:03:54','保护性约束',NULL,NULL,NULL,NULL,2,'QD','张洪燕','赵威威','成为荣','周敏','2020-10-09 07:38:38','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1129,5,'2020-10-09 09:17:16','富马酸喹硫平缓释片 200mg',200,'mg',NULL,'PO',0,'BID','朱荣鑫','徐新欣','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1130,5,'2020-10-09 09:17:24','氯硝西泮片 0.5mg',1,'mg',NULL,'PO',0,'QN','朱荣鑫','徐新欣','张洪燕','徐新欣','2020-10-27 17:23:28','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1131,5,'2020-10-09 09:17:44','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'BID14','朱荣鑫','徐新欣','朱荣鑫','侯春婷','2020-10-14 10:22:32','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1132,5,'2020-10-09 09:57:27','5%葡萄糖注射液（直立式输液袋） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','徐新欣','张洪燕','侯春婷','2020-10-15 17:30:00','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1133,5,'2020-10-09 09:57:27','奥拉西坦（倍清星）注射液 1g',4000,'g','┛','IVGTT',0,'QD','朱荣鑫','徐新欣','张洪燕','侯春婷','2020-10-15 17:30:00','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1134,5,'2020-10-09 09:57:49','5%葡萄糖注射液（直立式输液袋） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','徐新欣','张洪燕','侯春婷','2020-10-15 17:30:00','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1135,5,'2020-10-09 09:57:49','谷红注射液 5ml',10,'ml','┛','IVGTT',0,'QD','朱荣鑫','徐新欣','张洪燕','侯春婷','2020-10-15 17:30:00','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1136,5,'2020-10-11 14:56:14','丙酸氟替卡松鼻喷雾剂 适量 鼻部外喷 3次/日 （自备）',NULL,NULL,NULL,NULL,8,NULL,'徐西嘉','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1137,5,'2020-10-13 09:23:04','盐酸二甲双胍(都乐宁）缓释片(Ⅱ) 0.5g',NULL,NULL,NULL,'PO',0,'QN','张洪燕','李佳','朱荣鑫','侯春婷','2020-10-21 09:22:21','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1138,5,'2020-10-14 10:22:41','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QD1','朱荣鑫','侯春婷','张洪燕','侯春婷','2020-10-20 09:55:33','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1139,5,'2020-10-14 10:22:47','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QN','朱荣鑫','侯春婷','朱荣鑫','侯春婷','2020-10-15 09:55:37','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1140,5,'2020-10-15 09:55:47','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QN','朱荣鑫','侯春婷','张洪燕','侯春婷','2020-10-20 09:55:33','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1141,5,'2020-10-15 16:00:05','心理治疗（住院，30分钟）',NULL,NULL,NULL,NULL,2,'BIW25','张婧','侯春婷','张洪燕','徐新欣','2020-10-30 18:19:16','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1142,5,'2020-10-16 08:00:01','经颅磁刺激治疗',NULL,NULL,NULL,NULL,5,'BID','张洪燕','郝倩钰','张洪燕','侯春婷','2020-10-22 09:44:48','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1143,5,'2020-10-16 16:34:24','0.9%氯化钠注射液（直立式输液袋） 500ml',500,'ml','┓','IVGTT',0,'QD','张洪燕','郝倩钰','朱荣鑫','孙香玉','2020-10-19 09:45:48','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1144,5,'2020-10-16 16:34:24','门冬氨酸钾注射液  3.424g',NULL,NULL,'┛','IVGTT',0,'QD','张洪燕','郝倩钰','朱荣鑫','孙香玉','2020-10-19 09:45:48','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1145,5,'2020-10-16 16:36:12','0.9%氯化钠注射液（塑瓶） 250ml',250,'ml','┓','IVGTT',0,'QD','张洪燕','郝倩钰','朱荣鑫','孙香玉','2020-10-19 09:45:48','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1146,5,'2020-10-16 16:36:12','注射用还原型谷胱甘肽(阿拓莫兰) 0.6g',NULL,NULL,'┛','IVGTT',0,'QD','张洪燕','郝倩钰','朱荣鑫','孙香玉','2020-10-19 09:45:48','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1147,5,'2020-10-16 18:24:50','阿普唑仑(佳乐定)片 0.4mg',NULL,NULL,NULL,'PO',0,'BID12','张洪燕','赵威威','朱荣鑫','赵越','2020-10-23 09:37:58','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1148,5,'2020-10-19 09:46:30','水飞蓟宾葡甲胺片 100mg',200,'mg',NULL,'PO',0,'TID124','朱荣鑫','孙香玉','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1149,5,'2020-10-19 20:22:12','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'QN','朱荣鑫','郝倩钰','朱荣鑫','赵越','2020-10-23 09:37:30','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1150,5,'2020-10-20 09:59:58','灭菌注射用水 5ml',2,'ml','┓','IM',0,'BID','张洪燕','侯春婷','朱荣鑫','侯春婷','2020-10-21 09:22:21','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1151,5,'2020-10-20 09:59:58','注射用甲磺酸齐拉西酮（思贝格 ） 20mg',20,'mg','┛','IM',0,'BID','张洪燕','侯春婷','朱荣鑫','侯春婷','2020-10-21 09:22:21','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1152,5,'2020-10-21 09:22:47','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'BID14','朱荣鑫','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1153,5,'2020-10-21 09:23:14','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',250,'mg',NULL,'PO',0,'QD1','朱荣鑫','侯春婷','朱荣鑫','赵越','2020-10-23 09:37:30','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1154,5,'2020-10-21 09:23:38','酒石酸美托洛尔(倍他乐克)片 0.025g',NULL,NULL,NULL,'PO',0,'BID14','朱荣鑫','侯春婷','张洪燕','徐新欣','2020-10-30 18:29:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1155,5,'2020-10-21 14:37:18','测心率',NULL,NULL,NULL,NULL,8,'TID','张洪燕','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1156,5,'2020-10-21 15:43:01','音乐治疗',NULL,NULL,NULL,NULL,6,'Q5W','张婧','侯春婷','张洪燕','李佳','2020-11-02 16:19:28','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1157,5,'2020-10-21 15:43:01','电子生物反馈疗法(病区内)',NULL,NULL,NULL,NULL,6,'Q5W','张婧','侯春婷','张洪燕','李佳','2020-11-02 16:19:28','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1158,5,'2020-10-22 09:44:55','经颅磁刺激治疗',NULL,NULL,NULL,NULL,5,'QD','张洪燕','侯春婷','张洪燕','李佳','2020-11-02 09:29:01','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1159,5,'2020-10-23 09:26:43','保护性约束',NULL,NULL,NULL,NULL,2,'QD','朱荣鑫','赵越','徐西嘉','孙香玉','2020-10-23 20:21:43','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1160,5,'2020-10-23 09:37:38','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'BID14','朱荣鑫','赵越','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1161,5,'2020-10-23 09:38:09','阿普唑仑(佳乐定)片 0.4mg',NULL,NULL,NULL,'PO',0,'BID12','朱荣鑫','赵越','张洪燕','李佳','2020-11-02 10:02:36','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1162,5,'2020-10-24 11:49:41','盐酸苯海索(安坦)片 2mg',2,'mg',NULL,'PO',0,'BID','张洪燕','郝倩钰','张洪燕','郝倩钰','2020-10-27 18:19:18','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1163,5,'2020-10-27 17:23:37','阿普唑仑(佳乐定)片 0.4mg',NULL,NULL,NULL,'PO',0,'QN','张洪燕','徐新欣','张洪燕','李佳','2020-11-02 10:02:36','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1164,5,'2020-10-30 18:30:35','琥珀酸美托洛尔(倍他乐克)缓释片 47.5mg',4,'7',NULL,'PO',0,'QD1','张洪燕','徐新欣','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1165,5,'2020-10-30 18:30:45','琥珀酸美托洛尔(倍他乐克)缓释片 47.5mg',2,'3',NULL,'PO',0,'QN','张洪燕','徐新欣','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1166,5,'2020-10-30 18:32:52','测血压',NULL,NULL,NULL,NULL,8,'BID','张洪燕','徐新欣','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1167,5,'2020-11-02 16:19:36','虚拟情景康复训练',NULL,NULL,NULL,NULL,7,'Q5W','张洪燕','李佳','朱荣鑫','侯春婷','2020-11-09 11:19:02','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1168,5,'2020-11-02 16:19:37','暴露疗法和半暴露疗法',NULL,NULL,NULL,NULL,7,'Q5W','张洪燕','李佳','朱荣鑫','侯春婷','2020-11-09 11:19:02','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1169,5,'2020-11-04 14:32:43','金霉素眼药膏   外用  BID',NULL,NULL,NULL,NULL,8,NULL,'朱荣鑫','侯春婷','杨震','侯春婷','2020-11-09 07:43:22','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1170,5,'2020-11-09 11:19:12','虚拟情景康复训练',NULL,NULL,NULL,NULL,7,'Q5W','朱荣鑫','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1171,5,'2020-11-09 11:19:13','催眠治疗',NULL,NULL,NULL,NULL,7,'Q5W','朱荣鑫','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39'),(1172,5,'2020-11-10 16:40:06','左甲状腺素钠（优甲乐）片 50ug',25,'ug',NULL,'PO',0,'QD1','张洪燕','侯春婷','张婧','侯春婷','2020-11-12 14:24:53','2021-01-27 11:42:39','2021-01-27 11:42:39');
/*!40000 ALTER TABLE `b_inpatient_medical_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_patient_base_info`
--

DROP TABLE IF EXISTS `b_patient_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_patient_base_info` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `birth_date` date NOT NULL,
  `nation` varchar(20) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `diagnosis` tinyint(4) DEFAULT NULL,
  `other_diagnosis` varchar(45) DEFAULT NULL,
  `inpatient_state` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `b_patient_base_info_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_patient_base_info`
--

LOCK TABLES `b_patient_base_info` WRITE;
/*!40000 ALTER TABLE `b_patient_base_info` DISABLE KEYS */;
INSERT INTO `b_patient_base_info` VALUES (33,'33',1,'2021-01-13','朝鲜族',2,'2021-01-27 11:12:05','2021-01-27 11:12:05',1,'',0),(111,'skj',0,'2021-01-02','汉族',2,'2021-01-26 21:15:07','2021-01-27 11:08:20',NULL,NULL,1),(123,'22',1,'2021-01-05','蒙古族',2,'2021-01-27 11:08:45','2021-01-27 11:09:17',2,'NULL',0),(999,'test\\',0,'2021-01-01','瑶族',2,'2021-01-25 15:50:07','2021-01-26 21:36:02',9,'NULL',2),(1111,'冯浩',1,'2021-01-13','壮族',2,'2021-01-27 11:11:23','2021-01-27 11:11:23',4,'',0);
/*!40000 ALTER TABLE `b_patient_base_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_patient_rtms`
--

DROP TABLE IF EXISTS `b_patient_rtms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_patient_rtms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) DEFAULT NULL,
  `treatment_num` int(11) DEFAULT NULL,
  `treatment_date` date DEFAULT NULL,
  `therapeutic_target` text,
  `times_per_day` tinyint(4) DEFAULT NULL,
  `total_num` int(11) DEFAULT NULL,
  `resting_motor_threshold` int(11) DEFAULT NULL,
  `intensity` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `pulses` int(11) DEFAULT NULL,
  `stimulation_time` int(11) DEFAULT NULL,
  `inter_train_intervals` int(11) DEFAULT NULL,
  `pulse_trains` int(11) DEFAULT NULL,
  `total_pulses` int(11) DEFAULT NULL,
  `total_time_minute` int(11) DEFAULT NULL,
  `total_time_second` int(11) DEFAULT NULL,
  `note` text,
  `doctor_id` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  CONSTRAINT `b_patient_rtms_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_patient_rtms`
--

LOCK TABLES `b_patient_rtms` WRITE;
/*!40000 ALTER TABLE `b_patient_rtms` DISABLE KEYS */;
INSERT INTO `b_patient_rtms` VALUES (163,792,9,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:02:39','2021-01-25 14:02:39'),(164,792,8,'2021-01-13',0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:02:39','2021-01-25 14:02:39'),(168,791,1,'2021-01-21',1,1,2,22,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:51:02','2021-01-25 14:51:02'),(184,880,22,'1111-12-05',1,2,12,22,2,2,2,2,2,2,2,2,2,NULL,2,'2021-01-25 21:24:28','2021-01-25 21:24:28'),(185,880,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 21:24:28','2021-01-25 21:24:28'),(186,880,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 21:24:28','2021-01-25 21:24:28');
/*!40000 ALTER TABLE `b_patient_rtms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_ethnicity`
--

DROP TABLE IF EXISTS `d_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_ethnicity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ethnicity_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_ethnicity`
--

LOCK TABLES `d_ethnicity` WRITE;
/*!40000 ALTER TABLE `d_ethnicity` DISABLE KEYS */;
INSERT INTO `d_ethnicity` VALUES (1,'汉族'),(2,'蒙古族'),(3,'回族'),(4,'藏族'),(5,'维吾尔族'),(6,'苗族'),(7,'彝族'),(8,'壮族'),(9,'布依族'),(10,'朝鲜族'),(11,'满族'),(12,'侗族'),(13,'瑶族'),(14,'白族'),(15,'土家族'),(16,'哈尼族'),(17,'哈萨克族'),(18,'傣族'),(19,'黎族'),(20,'傈僳族'),(21,'佤族'),(22,'畲族'),(23,'高山族'),(24,'拉祜族'),(25,'水族'),(26,'东乡族'),(27,'纳西族'),(28,'景颇族'),(29,'柯尔克孜族'),(30,'土族'),(31,'达斡尔族'),(32,'仫佬族'),(33,'羌族'),(34,'布朗族'),(35,'撒拉族'),(36,'毛难族'),(37,'仡佬族'),(38,'锡伯族'),(39,'阿昌族'),(40,'普米族'),(41,'塔吉克族'),(42,'怒族'),(43,'乌孜别克族'),(44,'俄罗斯族'),(45,'鄂温克族'),(46,'崩龙族'),(47,'保安族'),(48,'裕固族'),(49,'京族'),(50,'塔塔尔族'),(51,'独龙族'),(52,'鄂伦春族'),(53,'赫哲族'),(54,'门巴族'),(55,'珞巴族'),(56,'基诺族');
/*!40000 ALTER TABLE `d_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_medical_advice`
--

DROP TABLE IF EXISTS `d_medical_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_medical_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medical_name` varchar(40) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_medical_advice`
--

LOCK TABLES `d_medical_advice` WRITE;
/*!40000 ALTER TABLE `d_medical_advice` DISABLE KEYS */;
INSERT INTO `d_medical_advice` VALUES (1,'精神病护理',1),(2,'精神科监护',1),(3,'一级护理(精神科)',1),(4,'普食(普通饭)',1),(5,'加普食',1),(6,'陪护',1),(7,'陪护床（含简易病床、躺椅等）',1),(8,'行为矫正治疗',2),(9,'保护性约束',2),(10,'工娱治疗',2),(11,'心理治疗（住院，30分钟）',2),(12,'行为观察和治疗',2),(13,'松驰治疗',2),(14,'穴位贴敷治疗',2),(15,'抗精神病药物治疗监测',3),(16,'汉密尔顿焦虑量表',3),(17,'汉密尔顿抑郁量表',3),(18,'锥体外系副作用量表',3),(19,'简明精神病评定量表(BPRS)',3),(20,'临床总体印象量表(CGI)',3),(21,'精神护理观察量表',3),(22,'宗(Zung)氏抑郁自评量表',3),(23,'宗(Zung)氏焦虑自评量表',3),(24,'躁狂状态评定量表',3),(25,'日常生活能力评定量表',3),(26,'阳性症状评定量表（SAPS）',3),(27,'阴性症状评定量表（SANS）',3),(28,'症状自评量表',3),(29,'精神卫生量表评估',3),(30,'多参数监护无抽搐电休克治疗',4),(31,'无插管全麻(无抽搐电休克室)',4),(32,'麻醉中监测(电休克)',4),(33,'经颅磁刺激治疗',5),(34,'电子生物反馈疗法(病区内)',6),(35,'音乐治疗',6),(36,'虚拟情景康复训练',7),(37,'催眠治疗',7),(38,'暗示治疗',7),(39,'暴露疗法和半暴露疗法',7),(47,'丙酸氟替卡松鼻喷雾剂 适量 鼻部外喷 3次/日 （自备）',8),(48,'测心率',8),(49,'测血压',8),(50,'金霉素眼药膏   外用  BID',8);
/*!40000 ALTER TABLE `d_medical_advice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_patient_appointment`
--

DROP TABLE IF EXISTS `d_patient_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_patient_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `birth_date` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `note` text,
  `pre_diagnosis` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_patient_appointment`
--

LOCK TABLES `d_patient_appointment` WRITE;
/*!40000 ALTER TABLE `d_patient_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_patient_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_patient_detail`
--

DROP TABLE IF EXISTS `d_patient_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_patient_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `standard_id` varchar(20) NOT NULL,
  `height` float DEFAULT NULL,
  `cognitive` tinyint(1) DEFAULT NULL,
  `sound` tinyint(1) DEFAULT NULL,
  `blood` tinyint(1) DEFAULT NULL,
  `hairs` tinyint(1) DEFAULT NULL,
  `manure` tinyint(1) DEFAULT NULL,
  `drugs_information` tinyint(1) DEFAULT NULL,
  `mri_examination` tinyint(1) DEFAULT NULL,
  `first` tinyint(1) DEFAULT NULL,
  `tms` tinyint(1) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `years` tinyint(4) DEFAULT NULL,
  `emotional_state` tinyint(4) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `waist` float DEFAULT NULL,
  `hip` float DEFAULT NULL,
  `handy` tinyint(4) DEFAULT NULL,
  `note` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `disease_state` varchar(40) DEFAULT NULL,
  `contact_way` tinyint(4) DEFAULT NULL,
  `contact_info` varchar(45) DEFAULT NULL,
  `scan_date` date DEFAULT NULL,
  `head_motion_parameters` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`,`patient_id`),
  KEY `fk_d_patient_detail_1_idx` (`patient_id`),
  CONSTRAINT `d_patient_detail_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `b_patient_base_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_patient_detail`
--

LOCK TABLES `d_patient_detail` WRITE;
/*!40000 ALTER TABLE `d_patient_detail` DISABLE KEYS */;
INSERT INTO `d_patient_detail` VALUES (880,999,1,'NN_00000999_S001',88,0,0,1,1,0,0,0,0,1,0,'888','88',NULL,1,'888',NULL,888,888,88,NULL,'通天塔',2,'2021-01-25 15:50:07','2021-01-25 21:24:28',NULL,1,NULL,'2021-01-05',NULL),(881,999,2,'NN_00000999_S002',NULL,0,0,1,1,0,0,0,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'通天塔',2,'2021-01-25 15:55:24','2021-01-25 15:59:31',NULL,NULL,NULL,'2021-01-05',NULL),(882,999,3,'NN_00000999_S003',NULL,0,0,1,1,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'通天塔',2,'2021-01-25 21:20:22','2021-01-25 21:20:22',NULL,NULL,NULL,'2021-01-05',NULL),(883,999,4,'NN_00000999_S004',NULL,0,0,1,1,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'通天塔',2,'2021-01-25 21:20:52','2021-01-25 21:20:52',NULL,NULL,NULL,'2021-01-05',NULL),(884,111,1,'NN_00000111_S001',NULL,0,0,0,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-26 21:15:07','2021-01-27 11:08:20',NULL,NULL,NULL,'2021-01-14',222),(885,123,1,'NN_00000123_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-27 11:08:45','2021-01-27 11:08:45',NULL,NULL,NULL,'2021-01-06',NULL),(887,1111,1,'NN_00001111_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-27 11:11:23','2021-01-27 11:11:23',NULL,NULL,NULL,'2021-01-13',NULL),(888,33,1,'NN_00000033_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-27 11:12:05','2021-01-27 11:12:05',NULL,NULL,NULL,'2020-12-28',NULL);
/*!40000 ALTER TABLE `d_patient_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_scales`
--

DROP TABLE IF EXISTS `d_scales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_scales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scale_name` varchar(40) NOT NULL,
  `scale_type` tinyint(4) NOT NULL,
  `do_scale_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_scales`
--

LOCK TABLES `d_scales` WRITE;
/*!40000 ALTER TABLE `d_scales` DISABLE KEYS */;
INSERT INTO `d_scales` VALUES (1,'一般资料－个人及家庭信息',2,0),(2,'一般资料－学习情况',2,0),(3,'一般资料－家族及疾病史',2,0),(4,'一般资料－物质依赖',2,0),(5,'一般资料－其他资料',2,0),(6,'中国利手量表',2,0),(7,'汉密尔顿抑郁量表（HAMD-17）',2,1),(8,'汉密尔顿焦虑量表（HAMA）',2,1),(9,'杨氏躁狂量表（YMRS）',2,1),(10,'简明精神病量表(BPRS)',2,1),(11,'耶鲁布朗强迫症严重程度',0,2),(12,'自杀意念及行为史',0,2),(13,'33项轻躁狂症状清单',2,2),(14,'斯奈斯和汉密尔顿快乐量表',2,2),(15,'快感体验能力量表',0,2),(16,'儿童期（16岁以前）的成长经历',0,2),(17,'认知情绪调节问卷',1,2),(18,'青少年生活事件量表',1,2),(19,'简式父母养育方式问卷（S-Embu）',1,2),(20,'自动思维问卷（ATQ）',1,2),(21,'威斯康星卡片分类测验（WCST）',2,3),(22,'重复成套性神经心理状态测验系统 (RBANS)',2,3),(23,'面孔情绪感知能力测试 (FEPT)',2,3),(24,'语音情绪感知能力测试 (VEPT)',2,3),(25,'简要病史',2,0),(26,'磁共振检查情况',0,4),(27,'r-TMS治疗反馈',2,4),(28,'诊断类型',2,4);
/*!40000 ALTER TABLE `d_scales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_treatments`
--

DROP TABLE IF EXISTS `d_treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_treatments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_treatments`
--

LOCK TABLES `d_treatments` WRITE;
/*!40000 ALTER TABLE `d_treatments` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(46,'patients','bpatientappointment'),(47,'patients','bpatientbaseinfo'),(58,'patients','dethnicity'),(59,'patients','dpatientappointment'),(48,'patients','dpatientdetail'),(49,'patients','dscales'),(50,'patients','rpatientbasicinformationabuse'),(51,'patients','rpatientbasicinformationfamily'),(52,'patients','rpatientbasicinformationhealth'),(53,'patients','rpatientbasicinformationother'),(54,'patients','rpatientbasicinformationstudy'),(7,'scales','bpatientappointment'),(8,'scales','bpatientbaseinfo'),(9,'scales','dpatientappointment'),(10,'scales','dpatientdetail'),(11,'scales','dscales'),(12,'scales','dtreatments'),(13,'scales','rpatientadolescentevents'),(14,'scales','rpatientatq'),(15,'scales','rpatientbasicinformationabuse'),(16,'scales','rpatientbasicinformationfamily'),(56,'scales','rpatientbasicinformationhealth'),(17,'scales','rpatientbasicinformationother'),(18,'scales','rpatientbasicinformationstudy'),(19,'scales','rpatientbprs'),(20,'scales','rpatientchinesehandy'),(21,'scales','rpatientcognitiveemotion'),(22,'scales','rpatientdiagnostictype'),(23,'scales','rpatientdrugsinformation'),(24,'scales','rpatientfept'),(25,'scales','rpatientgrowth'),(26,'scales','rpatienthama'),(27,'scales','rpatienthamd17'),(28,'scales','rpatienthappiness'),(29,'scales','rpatientinclusionexclusioncriteria'),(30,'scales','rpatientinformedconsentsignaturepage'),(31,'scales','rpatientmanicsymptom'),(32,'scales','rpatientmedicalhistory'),(33,'scales','rpatientmriexamination'),(34,'scales','rpatientmrisafetyquestionnaire'),(35,'scales','rpatientpleasure'),(36,'scales','rpatientrbans'),(37,'scales','rpatientscales'),(57,'scales','rpatientsembu'),(38,'scales','rpatientsuicidal'),(39,'scales','rpatienttms'),(40,'scales','rpatientvept'),(41,'scales','rpatientwcst'),(42,'scales','rpatientybobsessiontable'),(43,'scales','rpatientymrs'),(44,'scales','ruserrecord'),(45,'scales','suser'),(6,'sessions','session'),(60,'users','ruserrecord'),(55,'users','suser');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-18 22:30:58.811488'),(2,'auth','0001_initial','2020-11-18 22:31:00.612260'),(3,'admin','0001_initial','2020-11-18 22:31:06.514389'),(4,'admin','0002_logentry_remove_auto_add','2020-11-18 22:31:07.661968'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-18 22:31:07.691471'),(6,'contenttypes','0002_remove_content_type_name','2020-11-18 22:31:08.388937'),(7,'auth','0002_alter_permission_name_max_length','2020-11-18 22:31:08.859245'),(8,'auth','0003_alter_user_email_max_length','2020-11-18 22:31:09.296420'),(9,'auth','0004_alter_user_username_opts','2020-11-18 22:31:09.332562'),(10,'auth','0005_alter_user_last_login_null','2020-11-18 22:31:09.677406'),(11,'auth','0006_require_contenttypes_0002','2020-11-18 22:31:09.698975'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-18 22:31:09.733673'),(13,'auth','0008_alter_user_username_max_length','2020-11-18 22:31:10.215605'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-18 22:31:11.395406'),(15,'auth','0010_alter_group_name_max_length','2020-11-18 22:31:12.142375'),(16,'auth','0011_update_proxy_permissions','2020-11-18 22:31:12.194037'),(17,'patients','0001_initial','2020-11-18 22:31:12.257090'),(18,'patients','0002_bpatientbaseinfo_dpatientdetail_dscales_rpatientbasicinformationabuse_rpatientbasicinformationfamily','2020-11-18 22:31:12.296600'),(19,'scales','0001_initial','2020-11-18 22:31:12.470522'),(20,'scales','0002_delete_rpatientbasicinformationhealth','2020-11-18 22:31:12.489579'),(21,'sessions','0001_initial','2020-11-18 22:31:12.769146'),(22,'users','0001_initial','2020-11-18 22:31:12.961254'),(23,'patients','0003_auto_20201214_2055','2020-12-17 21:53:01.176771'),(24,'scales','0003_auto_20201214_2055','2020-12-17 21:53:01.199311'),(25,'users','0002_ruserrecord','2020-12-17 21:53:01.205077'),(26,'patients','0003_auto_20201217_1847','2020-12-21 11:16:25.919989'),(27,'scales','0003_auto_20201217_1847','2020-12-21 11:16:25.942411');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('013knlii3xez90k059txvfndv1qpsd00','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 20:38:32.356986'),('0jtd76ovzmgeeh1on7qncowsdxuurmke','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 21:23:22.245201'),('0ne7qaaymbohoqgqi07rbyl9v3quslua','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:39:20.415117'),('0q6bvadvsjqs9ltrplc3g5r1esh6jie2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:54:37.526144'),('0xn1mzfefucfwy13s0y9ljn9rma81hlu','NmE0NDIyMDZiMDZmNDk5ZTliYzVmNGRkNzcyYzRkNjU4OGIyNjUxNTp7InVzZXJuYW1lIjoiemhhbmd6aG9uZ2d1byIsImRvY3Rvcl9pZCI6MTMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 16:27:59.013328'),('17z08nw0xthxk1pzsnamrdaoywssuhsk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 18:42:45.105513'),('18ywd70f7rqscd1l0qsueuxg2fvzj8e0','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 11:43:09.449747'),('1d1ic5l2joe7i49ybix9lyqvy7x4bsyb','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 11:35:21.360396'),('1nfyx8jpmle7emy02p0f3uk2isveyhv3','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-07 17:59:50.249238'),('1ogs3fcdzx26mxf6iuyqavax1ehu0kol','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-23 12:58:09.107530'),('1w25kj2rrdrbk0u7n7wppspcx0oyh2zm','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 17:14:05.977335'),('2adyytb63zk04wtboelwvj068n1hcvqq','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:50:20.337005'),('2jbtokelk3sz819gyxjvsxhxdy2jq1q5','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-08 20:49:51.223577'),('2lam64yyukyd9g4l909rkfg7fsydetdj','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 22:12:35.551933'),('2xiynyca6bq848hzqcmk8judkn97m2n1','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 11:21:25.265564'),('32trvivpf4770jl79ucips6cywqr37kz','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-04 21:55:39.242964'),('3aj76grwmw93p2b76kuojuimpbw5q54t','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 11:28:40.847249'),('3c20g6jgdq8w00awg6vr0x5qdp59hp0b','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:02:17.837793'),('3mcgbbbmuwvxa3q0lgr9fgmdzeuxnkz5','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 12:20:55.828445'),('3os7atczmwzgyj9zu6p90d58pytbbg4n','ODJjYjBkYzFkZWZkMmQzZWExYjAyYThhMDA5NDU4MzM5OTgyMDA2Yzp7InVzZXJuYW1lIjoiTElVSlVBTiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 02:35:52.698716'),('3ribkwhjpqwntjo5h8kaypcp6108vvnx','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:15:01.986713'),('3wj345ws2qanxmm1ox1b1s9cyb2os7ax','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 14:40:47.557579'),('47mo3hqtbk9lneocrsr7syt6vcnifa3f','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 03:54:20.160003'),('4bnwmhgqmlolj6jjec8rusyr0c56dtsc','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-13 19:42:22.920946'),('4pfc0c6or0qmvdzdix110gvkprxs32eh','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-29 17:39:26.717622'),('4t3tue9bnaiu7dx5m2kyi0yd553li23w','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 17:54:04.313536'),('50hrshruv65v3a3oapjr57n8t4huw11j','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 21:37:23.893288'),('53wahpzxpxdbjfe73tidl9ty2bzgoj7w','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 21:55:54.132732'),('5i36b7mja2ixujifga42qhd7q8e08kzf','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-15 20:40:34.127441'),('5l67gea4gmlaua78erhgl2a2a4mv2t84','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 18:27:56.390497'),('68lctcszznvblwu0yw4e3p5fkbyj4cbb','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-23 20:00:41.919019'),('69o49jpe951s568gxjj8igit5e5nho9a','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-16 20:13:32.142187'),('6h0wclpyb5gswu99aa6fx6vl45v6p9nm','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:51:51.127410'),('6vynvabuupgtsv3ty9ng6bnuj2arg1bw','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-22 21:22:12.197025'),('6zf6vmvzzl38zukeqongm9mo89z2sqdu','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-22 15:18:07.214680'),('75xkwlckgv4r6orl0ihy0miie9ymt054','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 00:58:28.364788'),('7aekq8q9lgavkzf64vkqm13229vv4jts','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-06 19:05:10.232182'),('7guicvvyuygch9qdcb0zhcyv6znmmjnm','NmE0NDIyMDZiMDZmNDk5ZTliYzVmNGRkNzcyYzRkNjU4OGIyNjUxNTp7InVzZXJuYW1lIjoiemhhbmd6aG9uZ2d1byIsImRvY3Rvcl9pZCI6MTMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 15:50:42.169699'),('7l4zfq634t8q41gm0437p1rdyudvbvya','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 21:11:19.455516'),('7vkda8ibkqefy6l9h5v4amnou1tpaffr','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 15:46:51.483977'),('81665k06ev9f90vd1y5c6tjju5nd6hlu','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-24 12:32:59.038532'),('8ag6kzb10m3qd367a3t9hheigdowhgxz','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 13:44:04.620712'),('94rb2tle02ad49n7nwi5znqc38g316rx','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-19 19:33:46.076924'),('9cj2926e05ikto0vnjc6ulh9smmohsxy','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 16:53:50.303271'),('9dcwtwp6jxd6rnp0loohjfi1py4h792q','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 12:32:41.203195'),('9gsejzgq17hh2djzocjtzd24fq5ypevy','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:14:07.394886'),('9hwfi4mxdbtpq3hn7jlyzmu5jcqfybim','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 11:41:44.116351'),('9ievv7g6ngtcgcp8zsf0jlacs8vcp4lu','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 15:09:38.856439'),('9j4qg2ga6h9pivv94tthqlqamuio3gat','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 11:12:31.712787'),('9lg7wgsljw81bt5sew5uqzscfhltfgsi','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-09 13:42:36.010074'),('9mhoolb3wloqsm3qw4lze4s5xc8z5u0n','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-25 12:49:13.432452'),('9xfljae2a9meazu4qggsxjyhcnlr54j8','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 13:11:37.354102'),('a03hdmzkgd1zz8zf8el9hwpon7gwymc6','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:24.353175'),('abefdew3ekhmccf9agmjn4rgg6b0ve9p','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-25 17:31:18.553124'),('ad4xz80ntx3hi9v14gw7ehhewb2y0jny','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 02:08:28.288034'),('c9x0hs0qx48ds7vzde9bhbllvxmw3fe4','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:13:20.548855'),('cb21gi4vkp29ykundnubzokup4m5w0u7','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 19:24:13.168175'),('ch07epabuy5mf7zmwgh6rvln2nx556gx','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 17:43:05.214420'),('csd76s6bpo1fa9u0omaxl9zno8dueue4','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-18 23:25:04.087010'),('die49mhu0xllff0ba9ccek6g9u79gxbj','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 12:12:22.896651'),('dymx38c111oepaud9so71epfp3d56tph','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 23:13:24.591918'),('e2ohde3pxewn4ec2u36fiyv59t8odvsp','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 17:09:28.515411'),('e33x6spaf9i7qxk451lyeh867pjo7rae','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 23:06:25.684033'),('eeijkdiih4u7n0uf8q9goi4283h87pbq','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 18:50:40.947428'),('en8848jicfieb1hgia6uq7fxyxzah4b8','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 12:12:10.666716'),('esrtnugcud49ams3k4xc5uhh0q09u2gc','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-23 17:08:18.225916'),('ewt8a13wmnb4fk5adqjufrtln8bptrr5','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-17 15:50:34.251509'),('ey7f69qpizgbfaj3ispjj73jgnw2m20p','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-27 19:29:20.602398'),('ezysxk1m0odvfeh73hyh59fd36qekjmv','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-09 01:25:39.089069'),('f10219vixjcax9myk2c3mufs6ddy1wf8','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 12:04:18.617567'),('fftg945iuodrb85ka5zo0bn7a9cg0n38','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 21:38:46.030822'),('fhigdea4b3vwqpgap9g670bytr6xqdx2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 12:53:22.570517'),('fj327e0yzu3g5tiq6gz2dnwz3xoy6jbo','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-06 13:27:18.473230'),('fs6kymtnw5fkgg8he11nsofzityi20c4','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-14 10:56:08.715257'),('g287d5x43n13t1lumrh2t75laewt1pn7','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 02:23:49.609969'),('g5em7632mtdgbhjlootdl4nwur9x7bds','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 19:56:25.139118'),('g6l8bjda5o6nar5c2jengjg3lztq0r1p','MjdlOGQwYjJkM2U5OGIzNjcwOTFlOGJiNzhjN2Y0OGM5N2Y1ZmJjYTp7InVzZXJuYW1lIjoicmVueW9uZ3hpYSIsImRvY3Rvcl9pZCI6MTQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 18:41:01.304131'),('ghbll2ve7qpjx3ekxxg24qfn7gkgbljq','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 11:27:52.321989'),('gl9fwjpancwbo8424d34cy44h3o99kfz','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 17:34:43.507650'),('gytk57qxupjq578mxaipw0pisgk6cn2e','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 12:12:27.551391'),('hd24vu606rzt20pvec4w5n7swuqgqz6x','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 18:35:14.671997'),('hdtpdw6hwu9pln5jwwjw5cqzq62p8rza','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-22 21:48:28.178097'),('hdvhi8f3tsxutjaxn3ga6eirzhua79i4','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-20 18:32:17.042701'),('ht3997fm5b94ovkuf9dj6lvmr0ml4ky1','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 12:31:19.209748'),('hws40xcjl2avweb71iqujvscl9x4tpab','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 22:29:02.764855'),('i24vzrj2y5cu0g7p5p0ykvdhkl0zypsi','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-27 12:42:39.373996'),('i4y5kn2vn2h9e76867ahvxtkfq3m7z5p','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 19:10:11.047201'),('i6gmwhkp14j569tofiqsn57x9ycpn50r','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 18:48:13.558019'),('idrhkksd8s4gnys2khy2pc5y6z9bxxp7','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-27 13:42:51.445852'),('j1qwj2566jrevxup1q3uk4awufd9yhec','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-28 21:56:36.654236'),('j1yz918rq2skzpaz0oreayovtorhnffi','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 18:18:17.936089'),('j2ialcdc5kj5jpmwfl2bih8dhnwemlr1','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-13 22:52:28.877710'),('j4jaktifw19gcno7d964s8m9lxgwpjo7','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-27 13:47:38.921778'),('j7n9pje6lkyk6ismk2wxkievhnqz2su2','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-28 12:02:54.519028'),('jzf3fajld4jqdtyxcglkybts8h61t67b','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 21:24:42.970387'),('ksqepkfi1hefwqpxrz0jbhpfljz7sgv7','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-28 20:33:42.634422'),('l30xam2kosyi9lho1bnoh0d76wk71ei9','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 18:50:53.771961'),('l4au45wcypd9rxzrmcc1mxjpwglem9s6','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 02:23:39.173154'),('l6grw9651lo1zg6lev8e11p993zdj1yb','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-21 18:18:35.939052'),('l71kneobmpgoy3b4jf158qp7j7cu211p','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 12:37:03.352275'),('lewsqctbmg3p2xygaxty3cjbhpgrtoyi','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-29 19:36:35.316329'),('lnmdm2lqf4qyj2z2uax7a4jn655t2hla','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 00:02:51.276668'),('m3ni6676hg12z8klc4kr783nltdmaika','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 01:27:30.590916'),('ma8wxi68arfb5b1fyexiiiabvwnmm76e','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 19:36:05.062063'),('mtqi7zrc14y8mcuu93mcr9yszn46pvbb','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-11 13:09:22.527049'),('muk3c4aelfuo476bmo6d2f25pc1toddn','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-20 19:27:09.349013'),('myskys04w4rndk3jakefab77wa5rjf3y','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 23:40:55.304219'),('n5y81gb1uyyway6a17mbln2j0h8lcykm','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 11:37:47.849928'),('nc4tm7s3vxqptwgufgdmvmuu19m0jwwt','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-23 15:13:24.145930'),('ncdajzwgkybt5drimq69tktc9gn5gy5o','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-13 18:36:35.593082'),('np3supq60szs0yh6sn1b24bkem504hya','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 12:16:57.319924'),('nzegr6qbo1qoy5hs63f7btmc7otu9tt4','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:18:49.047760'),('oftdreaaruhng9b4evipu9tiia3s1kse','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 16:46:42.480288'),('ofusxxehrnr03szhcfobbe8okovknbmi','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 12:19:36.754920'),('on325zvwkhkoz3h8vcyzdn0p7sq1t416','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 18:22:05.429052'),('ox0cjxzl33ecgygyz653bwl7534o8mxo','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-05 12:03:25.956894'),('p0a8inlwjj9e72s4ru0sizibofmin8tl','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 23:24:32.152071'),('pjscsxa5rr5dnmofm4kecv041mquaox4','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 00:30:59.030107'),('pkfzeihyuymj9mpr70gyhr57rzd519l6','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 21:49:42.671649'),('pr2rxn43qpcf44vvibwg9mlw2lduc6ld','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-06 13:00:56.770674'),('q7dh4jwqqkadvdyrw8q3vinoc1p9f5lv','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-22 23:27:33.675948'),('q86ac5xmfh6f54j62o1u2064epxr2a84','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:26.612046'),('qtcezrx1737z5oytqka1na5mv7qwsatm','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-13 19:20:06.884401'),('qtromgaupq8f0115mffe0nj8kb5r0213','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 12:45:53.175088'),('qwnpr39114pune5cgsu0ubmclpscezjg','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 21:30:39.120486'),('r0mixvfygenm0cfv3gvj1qht9x5wjgbg','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 15:23:42.126177'),('riywmxmzcy9p84blutkugem4xkmta2vl','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 19:26:17.612861'),('rjylmffhybbr1t8ta5hws304r1oewtzo','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 16:35:12.176612'),('rq73k4a6mt4amsc17x3hm2p7dnvr6n7j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:56:47.718292'),('rr1rse1t0macxlfcuvo2gug6s0iev47x','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 02:20:42.110392'),('s4dx98ne7ha95fzs0np1lumkc7l2o95j','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-07 12:40:26.361920'),('s4lfcuijtzjn7m9sdnpv1uw2di2wlrvc','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 02:31:42.929092'),('s5x1vookuq6tvq1m5x1ooi80598ztztv','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 16:05:54.617771'),('s85k9i8q4zbjfdzqhlr7qql5k9l6itsj','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-23 15:11:43.628546'),('sdpt0ngpawbbppldld7s0h193fqu9g0d','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-11 21:47:48.822123'),('sy1loi6y5ubr3ilhzojxmxqsnpg2g9a1','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 20:18:41.898973'),('t1rqogrcjt5h9tblfuh32m6py1k6ewe3','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-29 17:16:58.809846'),('t2eq9ta5azr1pytoii6f39gfvyfjtx87','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 12:01:58.195993'),('t8dw526ejlla1sulaz4hja18in75y67s','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 18:46:05.029678'),('ta2czwc87ah64td8h7hfm6x1ak70kb57','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-20 15:54:17.012539'),('tihb00ncky6cn45zswx58kvlrpn679hn','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 21:49:26.242493'),('tkrh9ns077yvcxszdxj3a7klsp0wv03b','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-23 11:50:20.912590'),('tlxp4mqbuu3uq2svsrfcz32wkogpqs9d','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-13 23:25:31.941197'),('tz8wvwewk9pdf57lohg797eitvjboqpq','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 12:29:10.394385'),('u4nb6itfgzcmh7muxfuc3144lhy36ti8','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:29:44.990123'),('uch6do3uk8nld52gk6izf1u8dbfpz6oy','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:27.927164'),('umxybq9ezk3g1pma5l9dfvul02yrk9ox','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 20:49:36.200364'),('uybgh8io0v0ir4b4n0zxui0spma1zhb7','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 16:41:50.922137'),('v1btwkb9ye8hv3nt3slsej8i5gyu7153','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:53:31.251098'),('v1orz7di7prp9o7tzdsb8uv9jcipu7vt','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-16 21:38:12.848957'),('v2y4f3v27x3gs8qugjd5jv5k5pta6luh','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 12:34:03.018807'),('vcpw3kt9b6gaeoch52pm5lxqw9w4r0lr','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 18:21:57.120237'),('vqlquf45iohsm3zckn3ut0pnmg6yb51q','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 17:53:34.528929'),('vxgceooifss6p3hvv1kv90bz1561bdev','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:40:36.035070'),('w7xu8p99mv1pmbf5lh1cfc7537s4m1lk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:56:37.337457'),('wqc878zb2jl20suxdpim1p2tah7ta71k','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-18 15:01:41.215235'),('wvziv6158vbkndsoqgqvdjj782t2ut15','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 14:09:32.795626'),('wwrj6zoi20a7e7f4mlgo3tjr471nxzdj','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 12:24:55.180802'),('wxhmxi6yb5q7ep59uxgg9q7e2x9h6cra','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 12:39:58.469320'),('wyftktu70ne1a7yttpn9gqosoctxo598','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 23:13:28.807620'),('x64tnuvok0mm7ki35j3e0pnyogf7hyok','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 16:16:56.946951'),('xay9bh7f1uarjiil1ssptxd5l7xs8win','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 21:27:20.869411'),('xopm2esy25pnt49tzhdf5ahjqx39jki6','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 21:47:05.071138'),('xx08xijofnkdhtwt12amvny6w3nvwgbm','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-10 16:45:36.341844'),('yf3rt2t9eav7gwj7bqr5vc3uvpwlhu7f','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:23:50.109482'),('yfhag7kji0gpzwk7251httpid9hbu3vr','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 19:34:24.935757'),('zfm7mszwndvtt9vtrpec8dlifrfitg0j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 06:57:29.076181'),('zgkgf5izvmcxtqt3g5fmtz1dlixy31iq','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-08 17:19:00.179611'),('zkap9ipjnzyrib1n5fhu4zrh3o3fm1nd','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 18:52:39.028404');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_adolescent_events`
--

DROP TABLE IF EXISTS `r_patient_adolescent_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_adolescent_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `question15_answer` tinyint(4) DEFAULT NULL,
  `question16_answer` tinyint(4) DEFAULT NULL,
  `question17_answer` tinyint(4) DEFAULT NULL,
  `question18_answer` tinyint(4) DEFAULT NULL,
  `question19_answer` tinyint(4) DEFAULT NULL,
  `question20_answer` tinyint(4) DEFAULT NULL,
  `question21_answer` tinyint(4) DEFAULT NULL,
  `question22_answer` tinyint(4) DEFAULT NULL,
  `question23_answer` tinyint(4) DEFAULT NULL,
  `question24_answer` tinyint(4) DEFAULT NULL,
  `question25_answer` tinyint(4) DEFAULT NULL,
  `question26_answer` tinyint(4) DEFAULT NULL,
  `question27_answer` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_adolescent_events_ibfk_1` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_adolescent_events_ibfk_2` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_adolescent_events`
--

LOCK TABLES `r_patient_adolescent_events` WRITE;
/*!40000 ALTER TABLE `r_patient_adolescent_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_adolescent_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_atq`
--

DROP TABLE IF EXISTS `r_patient_atq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_atq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `question15_answer` tinyint(4) DEFAULT NULL,
  `question16_answer` tinyint(4) DEFAULT NULL,
  `question17_answer` tinyint(4) DEFAULT NULL,
  `question18_answer` tinyint(4) DEFAULT NULL,
  `question19_answer` tinyint(4) DEFAULT NULL,
  `question20_answer` tinyint(4) DEFAULT NULL,
  `question21_answer` tinyint(4) DEFAULT NULL,
  `question22_answer` tinyint(4) DEFAULT NULL,
  `question23_answer` tinyint(4) DEFAULT NULL,
  `question24_answer` tinyint(4) DEFAULT NULL,
  `question25_answer` tinyint(4) DEFAULT NULL,
  `question26_answer` tinyint(4) DEFAULT NULL,
  `question27_answer` tinyint(4) DEFAULT NULL,
  `question28_answer` tinyint(4) DEFAULT NULL,
  `question29_answer` tinyint(4) DEFAULT NULL,
  `question30_answer` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_atq_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_atq_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_atq_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_atq`
--

LOCK TABLES `r_patient_atq` WRITE;
/*!40000 ALTER TABLE `r_patient_atq` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_atq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_basic_information_abuse`
--

DROP TABLE IF EXISTS `r_patient_basic_information_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_basic_information_abuse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `patient_smoke` tinyint(4) DEFAULT NULL,
  `patient_smoke_age` tinyint(4) DEFAULT NULL,
  `patient_daily_smoke_num` tinyint(4) DEFAULT NULL,
  `patient_stop_smoke_age` tinyint(4) DEFAULT NULL,
  `patient_alcohol` tinyint(4) DEFAULT NULL,
  `patient_alcohol_age` tinyint(4) DEFAULT NULL,
  `patient_other_abuse` tinyint(1) DEFAULT NULL,
  `patient_other_abuse_age` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_basic_information_abuse_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_abuse_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_abuse_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_abuse`
--

LOCK TABLES `r_patient_basic_information_abuse` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_abuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_basic_information_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_basic_information_family`
--

DROP TABLE IF EXISTS `r_patient_basic_information_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_basic_information_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `patient_urban_rural` tinyint(4) DEFAULT NULL,
  `patient_address` varchar(300) DEFAULT NULL,
  `patient_live_type` tinyint(4) DEFAULT NULL,
  `patient_live_type_other` varchar(50) DEFAULT NULL,
  `patient_only_child` tinyint(4) DEFAULT NULL,
  `patient_older_brother_num` tinyint(4) DEFAULT NULL,
  `patient_older_sister_num` tinyint(4) DEFAULT NULL,
  `patient_younger_brother_num` tinyint(4) DEFAULT NULL,
  `pathent_younger_sister_num` tinyint(4) DEFAULT NULL,
  `parents_favour` tinyint(4) DEFAULT NULL,
  `father_occupation` varchar(30) DEFAULT NULL,
  `mother_occupation` varchar(30) DEFAULT NULL,
  `father_tele` varchar(20) DEFAULT NULL,
  `mother_tele` varchar(20) DEFAULT NULL,
  `father_education` tinyint(4) DEFAULT NULL,
  `mother_education` tinyint(4) DEFAULT NULL,
  `parent_marry` tinyint(4) DEFAULT NULL,
  `patient_parent_death` tinyint(4) DEFAULT NULL,
  `patient_parent_death_age` tinyint(4) DEFAULT NULL,
  `parent_argument` tinyint(4) DEFAULT NULL,
  `patient_adopt` tinyint(4) DEFAULT NULL,
  `patient_adopt_age` tinyint(4) DEFAULT NULL,
  `father_relationship` tinyint(4) DEFAULT NULL,
  `mother_relationship` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `step_parent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_basic_information_family_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_family_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_family_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_family`
--

LOCK TABLES `r_patient_basic_information_family` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_family` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_family` VALUES (1,880,1,0,'888',1,NULL,NULL,NULL,NULL,NULL,NULL,0,'8','8','8','8',0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-01-25 16:02:27','2021-01-25 16:02:27',NULL);
/*!40000 ALTER TABLE `r_patient_basic_information_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_basic_information_health`
--

DROP TABLE IF EXISTS `r_patient_basic_information_health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_basic_information_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `patient_somatic_diseases` tinyint(1) DEFAULT NULL,
  `patient_somatic_diseases_name` varchar(100) DEFAULT NULL,
  `patient_somatic_diseases_year` varchar(20) DEFAULT NULL,
  `patient_mental_diseases` tinyint(1) DEFAULT NULL,
  `patient_mental_diseases_name` varchar(100) DEFAULT NULL,
  `patient_mental_diseases_year` varchar(20) DEFAULT NULL,
  `patient_family_diseases_history` tinyint(1) DEFAULT NULL,
  `patient_family_diseases_name` varchar(100) DEFAULT NULL,
  `patient_medicine_information` text,
  `patient_treatment_information` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_basic_information_health_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_health_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_health_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_health`
--

LOCK TABLES `r_patient_basic_information_health` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_health` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_health` VALUES (1,880,3,1,'5','11',0,NULL,NULL,0,NULL,'11','11',2,'2021-01-25 16:03:21','2021-01-25 16:03:21');
/*!40000 ALTER TABLE `r_patient_basic_information_health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_basic_information_other`
--

DROP TABLE IF EXISTS `r_patient_basic_information_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_basic_information_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `patient_friend_num` tinyint(4) DEFAULT NULL,
  `patient_big_event` tinyint(1) DEFAULT NULL,
  `patient_big_event_describtion` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_basic_information_other_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_other_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_other_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_other`
--

LOCK TABLES `r_patient_basic_information_other` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_other` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_basic_information_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_basic_information_study`
--

DROP TABLE IF EXISTS `r_patient_basic_information_study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_basic_information_study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `patient_current_achievement` tinyint(4) DEFAULT NULL,
  `patient_last_semester_achievement_difference` tinyint(4) DEFAULT NULL,
  `patient_mood_symptom_achievement_difference` tinyint(4) DEFAULT NULL,
  `patient_leader` tinyint(1) DEFAULT NULL,
  `patient_leader_occupation` varchar(30) DEFAULT NULL,
  `patient_live_school` tinyint(1) DEFAULT NULL,
  `patient_home_frequency` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_basic_information_study_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_study_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_basic_information_study_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_study`
--

LOCK TABLES `r_patient_basic_information_study` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_study` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_study` VALUES (1,880,2,1,1,2,0,NULL,1,54,2,'2021-01-25 16:02:52','2021-01-25 16:02:52');
/*!40000 ALTER TABLE `r_patient_basic_information_study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_bprs`
--

DROP TABLE IF EXISTS `r_patient_bprs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_bprs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) DEFAULT NULL,
  `health_care` tinyint(4) DEFAULT NULL,
  `anxious` tinyint(4) DEFAULT NULL,
  `emocommunicat_barrier` tinyint(4) DEFAULT NULL,
  `conceptual_disorder` tinyint(4) DEFAULT NULL,
  `guilt_concept` tinyint(4) DEFAULT NULL,
  `nervous` tinyint(4) DEFAULT NULL,
  `look_act` tinyint(4) DEFAULT NULL,
  `exaggerate` tinyint(4) DEFAULT NULL,
  `mood_depression` tinyint(4) DEFAULT NULL,
  `hostility` tinyint(4) DEFAULT NULL,
  `suspicion` tinyint(4) DEFAULT NULL,
  `hallucination` tinyint(4) DEFAULT NULL,
  `slow_movement` tinyint(4) DEFAULT NULL,
  `no_cooperation` tinyint(4) DEFAULT NULL,
  `unusual_thinking` tinyint(4) DEFAULT NULL,
  `feeling_flat` tinyint(4) DEFAULT NULL,
  `excitement` tinyint(4) DEFAULT NULL,
  `directional_disorder` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `r_patient_bprs_ibfk_1` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_bprs_ibfk_2` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_bprs_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_bprs`
--

LOCK TABLES `r_patient_bprs` WRITE;
/*!40000 ALTER TABLE `r_patient_bprs` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_bprs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_chinese_handy`
--

DROP TABLE IF EXISTS `r_patient_chinese_handy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_chinese_handy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `hold_pen` tinyint(4) DEFAULT NULL,
  `hold_chopsticks` tinyint(4) DEFAULT NULL,
  `throw_things` tinyint(4) DEFAULT NULL,
  `brush_tooth` tinyint(4) DEFAULT NULL,
  `use_scissors` tinyint(4) DEFAULT NULL,
  `use_match` tinyint(4) DEFAULT NULL,
  `use_needle` tinyint(4) DEFAULT NULL,
  `hold_hammer` tinyint(4) DEFAULT NULL,
  `hold_racket` tinyint(4) DEFAULT NULL,
  `wash_face` tinyint(4) DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_chinese_handy_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_chinese_handy_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_chinese_handy_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_chinese_handy`
--

LOCK TABLES `r_patient_chinese_handy` WRITE;
/*!40000 ALTER TABLE `r_patient_chinese_handy` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_chinese_handy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_cognitive_emotion`
--

DROP TABLE IF EXISTS `r_patient_cognitive_emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_cognitive_emotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `question15_answer` tinyint(4) DEFAULT NULL,
  `question16_answer` tinyint(4) DEFAULT NULL,
  `question17_answer` tinyint(4) DEFAULT NULL,
  `question18_answer` tinyint(4) DEFAULT NULL,
  `question19_answer` tinyint(4) DEFAULT NULL,
  `question20_answer` tinyint(4) DEFAULT NULL,
  `question21_answer` tinyint(4) DEFAULT NULL,
  `question22_answer` tinyint(4) DEFAULT NULL,
  `question23_answer` tinyint(4) DEFAULT NULL,
  `question24_answer` tinyint(4) DEFAULT NULL,
  `question25_answer` tinyint(4) DEFAULT NULL,
  `question26_answer` tinyint(4) DEFAULT NULL,
  `question27_answer` tinyint(4) DEFAULT NULL,
  `question28_answer` tinyint(4) DEFAULT NULL,
  `question29_answer` tinyint(4) DEFAULT NULL,
  `question30_answer` tinyint(4) DEFAULT NULL,
  `question31_answer` tinyint(4) DEFAULT NULL,
  `question32_answer` tinyint(4) DEFAULT NULL,
  `question33_answer` tinyint(4) DEFAULT NULL,
  `question34_answer` tinyint(4) DEFAULT NULL,
  `question35_answer` tinyint(4) DEFAULT NULL,
  `question36_answer` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `blame_self` int(11) DEFAULT NULL,
  `blame_others` int(11) DEFAULT NULL,
  `meditation` int(11) DEFAULT NULL,
  `catastrophization` int(11) DEFAULT NULL,
  `accepted` int(11) DEFAULT NULL,
  `positive_refocus` int(11) DEFAULT NULL,
  `program_refocus` int(11) DEFAULT NULL,
  `positive_evaluation` int(11) DEFAULT NULL,
  `rational_analysis` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_cognitive_emotion_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_cognitive_emotion_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_cognitive_emotion_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_cognitive_emotion`
--

LOCK TABLES `r_patient_cognitive_emotion` WRITE;
/*!40000 ALTER TABLE `r_patient_cognitive_emotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_cognitive_emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_diagnostic_type`
--

DROP TABLE IF EXISTS `r_patient_diagnostic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_diagnostic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) DEFAULT NULL,
  `diagnostic_type` tinyint(4) DEFAULT NULL,
  `diagnostic_type_other` varchar(20) DEFAULT NULL,
  `diagnostic_doctor1_signature` mediumblob,
  `diagnostic_doctor1_date` date DEFAULT NULL,
  `diagnostic_doctor2_signature` mediumblob,
  `diagnostic_doctor2_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_diagnostic_type`
--

LOCK TABLES `r_patient_diagnostic_type` WRITE;
/*!40000 ALTER TABLE `r_patient_diagnostic_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_diagnostic_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_drugs_information`
--

DROP TABLE IF EXISTS `r_patient_drugs_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_drugs_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `drug_name` varchar(40) DEFAULT NULL,
  `drug_general_name` varchar(40) DEFAULT NULL,
  `drug_type` varchar(40) DEFAULT NULL,
  `dosage` varchar(50) DEFAULT NULL,
  `begin_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `note` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_drugs_information_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_drugs_information_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_drugs_information_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_drugs_information`
--

LOCK TABLES `r_patient_drugs_information` WRITE;
/*!40000 ALTER TABLE `r_patient_drugs_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_drugs_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_fept`
--

DROP TABLE IF EXISTS `r_patient_fept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_fept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `calm` int(11) DEFAULT NULL,
  `angry` int(11) DEFAULT NULL,
  `disgusting` int(11) DEFAULT NULL,
  `fear` int(11) DEFAULT NULL,
  `happy` int(11) DEFAULT NULL,
  `sad` int(11) DEFAULT NULL,
  `wonder` int(11) DEFAULT NULL,
  `quality_control` float DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_fept_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_fept_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_fept_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_fept`
--

LOCK TABLES `r_patient_fept` WRITE;
/*!40000 ALTER TABLE `r_patient_fept` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_fept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_ghr`
--

DROP TABLE IF EXISTS `r_patient_ghr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_ghr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ghr_id` int(11) NOT NULL,
  `patient_session_id` int(11) DEFAULT NULL,
  `diagnosis` tinyint(4) DEFAULT NULL,
  `kinship` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ghr`
--

LOCK TABLES `r_patient_ghr` WRITE;
/*!40000 ALTER TABLE `r_patient_ghr` DISABLE KEYS */;
INSERT INTO `r_patient_ghr` VALUES (210,999,1,2,0,2,'2021-01-25 15:50:07','2021-01-25 15:50:07'),(211,111,0,5,0,2,'2021-01-26 21:15:07','2021-01-27 11:07:33'),(212,111,0,2,0,2,'2021-01-27 11:06:51','2021-01-27 11:06:51'),(214,1111,0,2,0,2,'2021-01-27 11:11:23','2021-01-27 11:11:23');
/*!40000 ALTER TABLE `r_patient_ghr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_growth`
--

DROP TABLE IF EXISTS `r_patient_growth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_growth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `question15_answer` tinyint(4) DEFAULT NULL,
  `question16_answer` tinyint(4) DEFAULT NULL,
  `question17_answer` tinyint(4) DEFAULT NULL,
  `question18_answer` tinyint(4) DEFAULT NULL,
  `question19_answer` tinyint(4) DEFAULT NULL,
  `question20_answer` tinyint(4) DEFAULT NULL,
  `question21_answer` tinyint(4) DEFAULT NULL,
  `question22_answer` tinyint(4) DEFAULT NULL,
  `question23_answer` tinyint(4) DEFAULT NULL,
  `question24_answer` tinyint(4) DEFAULT NULL,
  `question25_answer` tinyint(4) DEFAULT NULL,
  `question26_answer` tinyint(4) DEFAULT NULL,
  `question27_answer` tinyint(4) DEFAULT NULL,
  `question28_answer` tinyint(4) DEFAULT NULL,
  `first_sex_age` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `emotion_abuse_score` int(11) DEFAULT NULL,
  `body_abuse_score` int(11) DEFAULT NULL,
  `sex_abuse_score` int(11) DEFAULT NULL,
  `emotion_ignore_score` int(11) DEFAULT NULL,
  `body_ignore_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_growth_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_growth_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_growth_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_growth`
--

LOCK TABLES `r_patient_growth` WRITE;
/*!40000 ALTER TABLE `r_patient_growth` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_growth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_hama`
--

DROP TABLE IF EXISTS `r_patient_hama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_hama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `anxiety` tinyint(4) DEFAULT NULL,
  `nervous` tinyint(4) DEFAULT NULL,
  `fear` tinyint(4) DEFAULT NULL,
  `insomnia` tinyint(4) DEFAULT NULL,
  `cognitive_function` tinyint(4) DEFAULT NULL,
  `depression` tinyint(4) DEFAULT NULL,
  `somaticanxiety_muscle` tinyint(4) DEFAULT NULL,
  `somaticanxiety_sensory` tinyint(4) DEFAULT NULL,
  `cardiovascular_symptoms` tinyint(4) DEFAULT NULL,
  `respiratory_symptoms` tinyint(4) DEFAULT NULL,
  `gastrointestinal_symptoms` tinyint(4) DEFAULT NULL,
  `genitourinary_symptoms` tinyint(4) DEFAULT NULL,
  `plantnervous_symptoms` tinyint(4) DEFAULT NULL,
  `interview_behavior` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_hama_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_hama_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_hama_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_hama`
--

LOCK TABLES `r_patient_hama` WRITE;
/*!40000 ALTER TABLE `r_patient_hama` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_hama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_hamd17`
--

DROP TABLE IF EXISTS `r_patient_hamd17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_hamd17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `depression` tinyint(4) DEFAULT NULL,
  `guilt` tinyint(4) DEFAULT NULL,
  `suicide` tinyint(4) DEFAULT NULL,
  `difficulty_sleeping` tinyint(4) DEFAULT NULL,
  `sleep_deep` tinyint(4) DEFAULT NULL,
  `wake_early` tinyint(4) DEFAULT NULL,
  `work_interest` tinyint(4) DEFAULT NULL,
  `slow` tinyint(4) DEFAULT NULL,
  `intense` tinyint(4) DEFAULT NULL,
  `psycho_anxiety` tinyint(4) DEFAULT NULL,
  `somatic_anxiety` tinyint(4) DEFAULT NULL,
  `gastrointestinal_symptoms` tinyint(4) DEFAULT NULL,
  `systemic_symptoms` tinyint(4) DEFAULT NULL,
  `sexual_symptoms` tinyint(4) DEFAULT NULL,
  `hypochondria` tinyint(4) DEFAULT NULL,
  `lose_weight` tinyint(4) DEFAULT NULL,
  `self_awareness` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_hamd17_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_hamd17_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_hamd17_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_hamd17`
--

LOCK TABLES `r_patient_hamd17` WRITE;
/*!40000 ALTER TABLE `r_patient_hamd17` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_hamd17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_happiness`
--

DROP TABLE IF EXISTS `r_patient_happiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_happiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_happiness_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_happiness_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_happiness_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_happiness`
--

LOCK TABLES `r_patient_happiness` WRITE;
/*!40000 ALTER TABLE `r_patient_happiness` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_happiness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_inclusion_exclusion_criteria`
--

DROP TABLE IF EXISTS `r_patient_inclusion_exclusion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_inclusion_exclusion_criteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `informaed_consent_signature` tinyint(1) DEFAULT NULL,
  `informaed_consent_date` date DEFAULT NULL,
  `answer_1` tinyint(1) DEFAULT NULL,
  `answer_2` tinyint(1) DEFAULT NULL,
  `answer_3` tinyint(1) DEFAULT NULL,
  `answer_4` tinyint(1) DEFAULT NULL,
  `answer_5` tinyint(1) DEFAULT NULL,
  `answer_6` tinyint(1) DEFAULT NULL,
  `answer_7` tinyint(1) DEFAULT NULL,
  `answer_8` tinyint(1) DEFAULT NULL,
  `answer_9` tinyint(1) DEFAULT NULL,
  `answer_10` tinyint(1) DEFAULT NULL,
  `answer_11` tinyint(1) DEFAULT NULL,
  `answer_12` tinyint(1) DEFAULT NULL,
  `answer_13` tinyint(1) DEFAULT NULL,
  `answer_14` tinyint(1) DEFAULT NULL,
  `answer_15` tinyint(1) DEFAULT NULL,
  `answer_16` tinyint(1) DEFAULT NULL,
  `answer_17` tinyint(1) DEFAULT NULL,
  `qualified` tinyint(1) DEFAULT NULL,
  `blood_sample` tinyint(1) DEFAULT NULL,
  `hair_sample` tinyint(1) DEFAULT NULL,
  `saliva_sample` tinyint(1) DEFAULT NULL,
  `faeces_sample` tinyint(1) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_inclusion_exclusion_criteria_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_inclusion_exclusion_criteria_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_inclusion_exclusion_criteria_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_inclusion_exclusion_criteria`
--

LOCK TABLES `r_patient_inclusion_exclusion_criteria` WRITE;
/*!40000 ALTER TABLE `r_patient_inclusion_exclusion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_inclusion_exclusion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_informed_consent_signature_page`
--

DROP TABLE IF EXISTS `r_patient_informed_consent_signature_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_informed_consent_signature_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `subject_name` varchar(20) DEFAULT NULL,
  `guardian_name` mediumblob,
  `researcher_name` mediumblob,
  `chief_researcher_name` mediumblob,
  `subject_signature_date` date DEFAULT NULL,
  `guardian_signature_date` date DEFAULT NULL,
  `researcher_signature_date` date DEFAULT NULL,
  `chief_researcher_signature_date` date DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_informed_consent_signature_page_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_informed_consent_signature_page_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_informed_consent_signature_page_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_informed_consent_signature_page`
--

LOCK TABLES `r_patient_informed_consent_signature_page` WRITE;
/*!40000 ALTER TABLE `r_patient_informed_consent_signature_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_informed_consent_signature_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_manicsymptom`
--

DROP TABLE IF EXISTS `r_patient_manicsymptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_manicsymptom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1` tinyint(1) DEFAULT NULL,
  `question2` tinyint(1) DEFAULT NULL,
  `question3_1` tinyint(1) DEFAULT NULL,
  `question3_2` tinyint(1) DEFAULT NULL,
  `question3_3` tinyint(1) DEFAULT NULL,
  `question3_4` tinyint(1) DEFAULT NULL,
  `question3_5` tinyint(1) DEFAULT NULL,
  `question3_6` tinyint(1) DEFAULT NULL,
  `question3_7` tinyint(1) DEFAULT NULL,
  `question3_8` tinyint(1) DEFAULT NULL,
  `question3_9` tinyint(1) DEFAULT NULL,
  `question3_10` tinyint(1) DEFAULT NULL,
  `question3_11` tinyint(1) DEFAULT NULL,
  `question3_12` tinyint(1) DEFAULT NULL,
  `question3_13` tinyint(1) DEFAULT NULL,
  `question3_14` tinyint(1) DEFAULT NULL,
  `question3_15` tinyint(1) DEFAULT NULL,
  `question3_16` tinyint(1) DEFAULT NULL,
  `question3_17` tinyint(1) DEFAULT NULL,
  `question3_18` tinyint(1) DEFAULT NULL,
  `question3_19` tinyint(1) DEFAULT NULL,
  `question3_20` tinyint(1) DEFAULT NULL,
  `question3_21` tinyint(1) DEFAULT NULL,
  `question3_22` tinyint(1) DEFAULT NULL,
  `question3_23` tinyint(1) DEFAULT NULL,
  `question3_24` tinyint(1) DEFAULT NULL,
  `question3_25` tinyint(1) DEFAULT NULL,
  `question3_26` tinyint(1) DEFAULT NULL,
  `question3_27` tinyint(1) DEFAULT NULL,
  `question3_28` tinyint(1) DEFAULT NULL,
  `question3_29` tinyint(1) DEFAULT NULL,
  `question3_30` tinyint(1) DEFAULT NULL,
  `question3_31` tinyint(1) DEFAULT NULL,
  `question3_32` tinyint(1) DEFAULT NULL,
  `question3_33` tinyint(1) DEFAULT NULL,
  `question4_1` tinyint(1) DEFAULT NULL,
  `question4_2` tinyint(1) DEFAULT NULL,
  `question4_3` tinyint(1) DEFAULT NULL,
  `question4_4` tinyint(1) DEFAULT NULL,
  `question5` tinyint(1) DEFAULT NULL,
  `question6_1` tinyint(1) DEFAULT NULL,
  `question6_2` tinyint(1) DEFAULT NULL,
  `question7` tinyint(1) DEFAULT NULL,
  `question8` varchar(20) DEFAULT NULL,
  `question9` tinyint(1) DEFAULT NULL,
  `question10` tinyint(1) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_manicsymptom_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_manicsymptom_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_manicsymptom_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_manicsymptom`
--

LOCK TABLES `r_patient_manicsymptom` WRITE;
/*!40000 ALTER TABLE `r_patient_manicsymptom` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_manicsymptom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_medical_history`
--

DROP TABLE IF EXISTS `r_patient_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_medical_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `disease_history` text,
  `prophase_begin` date DEFAULT NULL,
  `prophase_end` date DEFAULT NULL,
  `first_time_begin` date DEFAULT NULL,
  `first_time_end` date DEFAULT NULL,
  `first_episode_diagnosis` varchar(20) DEFAULT NULL,
  `number_of_episode` int(11) DEFAULT NULL,
  `current_episode_date` date DEFAULT NULL,
  `current_episode_diagnosis` varchar(20) DEFAULT NULL,
  `historical_drugs` int(11) DEFAULT NULL,
  `historical_drugs_month` int(11) DEFAULT NULL,
  `scanning_state` int(11) DEFAULT NULL,
  `scanning_using_drugs` int(11) DEFAULT NULL,
  `scanning_drugs_month` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_medical_history_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_medical_history_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_medical_history_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_medical_history`
--

LOCK TABLES `r_patient_medical_history` WRITE;
/*!40000 ALTER TABLE `r_patient_medical_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_medical_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_mri_examination`
--

DROP TABLE IF EXISTS `r_patient_mri_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_mri_examination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `finishing_3D` tinyint(1) DEFAULT NULL,
  `finishing_DTI` tinyint(1) DEFAULT NULL,
  `finishing_fMRI` tinyint(1) DEFAULT NULL,
  `finishing_time` date DEFAULT NULL,
  `having_special_events` tinyint(1) DEFAULT NULL,
  `special_events_note` text,
  `having_abnormal_region` tinyint(1) DEFAULT NULL,
  `abnormal_region_note` text,
  `researcher_sign` mediumblob,
  `sign_date` date DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_mri_examination_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_mri_examination_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_mri_examination_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_mri_examination`
--

LOCK TABLES `r_patient_mri_examination` WRITE;
/*!40000 ALTER TABLE `r_patient_mri_examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_mri_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_mri_safety_questionnaire`
--

DROP TABLE IF EXISTS `r_patient_mri_safety_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_mri_safety_questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `patient_weight` float DEFAULT NULL,
  `patient_height` float DEFAULT NULL,
  `answer_1` tinyint(1) DEFAULT NULL,
  `answer_2` tinyint(1) DEFAULT NULL,
  `answer_3` tinyint(1) DEFAULT NULL,
  `answer_4` tinyint(1) DEFAULT NULL,
  `answer_5` tinyint(1) DEFAULT NULL,
  `answer_6` tinyint(1) DEFAULT NULL,
  `answer_7` tinyint(1) DEFAULT NULL,
  `answer_8` tinyint(1) DEFAULT NULL,
  `answer_9` tinyint(1) DEFAULT NULL,
  `answer_10` tinyint(1) DEFAULT NULL,
  `answer_11` tinyint(1) DEFAULT NULL,
  `answer_11_1` tinyint(1) DEFAULT NULL,
  `answer_12` tinyint(1) DEFAULT NULL,
  `answer_13` tinyint(1) DEFAULT NULL,
  `answer_14` tinyint(1) DEFAULT NULL,
  `answer_15` tinyint(1) DEFAULT NULL,
  `answer_16` tinyint(1) DEFAULT NULL,
  `answer_17` tinyint(1) DEFAULT NULL,
  `answer_18` tinyint(1) DEFAULT NULL,
  `answer_19` tinyint(1) DEFAULT NULL,
  `answer_20` tinyint(1) DEFAULT NULL,
  `answer_21` tinyint(1) DEFAULT NULL,
  `answer_22` tinyint(1) DEFAULT NULL,
  `answer_23` tinyint(1) DEFAULT NULL,
  `answer_24` tinyint(1) DEFAULT NULL,
  `answer_25` tinyint(1) DEFAULT NULL,
  `answer_26` tinyint(1) DEFAULT NULL,
  `answer_27` tinyint(1) DEFAULT NULL,
  `answer_28` tinyint(1) DEFAULT NULL,
  `answer_29` tinyint(1) DEFAULT NULL,
  `answer_29_1` tinyint(1) DEFAULT NULL,
  `answer_30` tinyint(1) DEFAULT NULL,
  `answer_30_1` tinyint(1) DEFAULT NULL,
  `answer_30_2` tinyint(1) DEFAULT NULL,
  `answer_31` tinyint(1) DEFAULT NULL,
  `answer_31_1` tinyint(1) DEFAULT NULL,
  `answer_32` tinyint(1) DEFAULT NULL,
  `answer_33` tinyint(1) DEFAULT NULL,
  `answer_33_1` tinyint(1) DEFAULT NULL,
  `answer_34` tinyint(1) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_mri_safety_questionnaire_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_mri_safety_questionnaire_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_mri_safety_questionnaire_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_mri_safety_questionnaire`
--

LOCK TABLES `r_patient_mri_safety_questionnaire` WRITE;
/*!40000 ALTER TABLE `r_patient_mri_safety_questionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_mri_safety_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_pleasure`
--

DROP TABLE IF EXISTS `r_patient_pleasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_pleasure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `question1_answer` tinyint(4) DEFAULT NULL,
  `question2_answer` tinyint(4) DEFAULT NULL,
  `question3_answer` tinyint(4) DEFAULT NULL,
  `question4_answer` tinyint(4) DEFAULT NULL,
  `question5_answer` tinyint(4) DEFAULT NULL,
  `question6_answer` tinyint(4) DEFAULT NULL,
  `question7_answer` tinyint(4) DEFAULT NULL,
  `question8_answer` tinyint(4) DEFAULT NULL,
  `question9_answer` tinyint(4) DEFAULT NULL,
  `question10_answer` tinyint(4) DEFAULT NULL,
  `question11_answer` tinyint(4) DEFAULT NULL,
  `question12_answer` tinyint(4) DEFAULT NULL,
  `question13_answer` tinyint(4) DEFAULT NULL,
  `question14_answer` tinyint(4) DEFAULT NULL,
  `question15_answer` tinyint(4) DEFAULT NULL,
  `question16_answer` tinyint(4) DEFAULT NULL,
  `question17_answer` tinyint(4) DEFAULT NULL,
  `question18_answer` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `expectation_score` int(11) DEFAULT NULL,
  `consume_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_pleasure_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_pleasure_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_pleasure_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_pleasure`
--

LOCK TABLES `r_patient_pleasure` WRITE;
/*!40000 ALTER TABLE `r_patient_pleasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_pleasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_rbans`
--

DROP TABLE IF EXISTS `r_patient_rbans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_rbans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `instant_memory_word` int(11) DEFAULT NULL,
  `instant_memory_story` int(11) DEFAULT NULL,
  `vision_graph` int(11) DEFAULT NULL,
  `vision_line` int(11) DEFAULT NULL,
  `speech_graph` int(11) DEFAULT NULL,
  `speech_fluency` int(11) DEFAULT NULL,
  `attention_number` int(11) DEFAULT NULL,
  `attention_code` int(11) DEFAULT NULL,
  `delayed_retention_word` int(11) DEFAULT NULL,
  `delayed_retention_word2` int(11) DEFAULT NULL,
  `delayed_retention_story` int(11) DEFAULT NULL,
  `delayed_retention_graph` int(11) DEFAULT NULL,
  `instant_memory_total` int(11) DEFAULT NULL,
  `vision_total` int(11) DEFAULT NULL,
  `speech_total` int(11) DEFAULT NULL,
  `attention_total` int(11) DEFAULT NULL,
  `delayed_retention_total` int(11) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_rbans_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_rbans_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_rbans_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_rbans`
--

LOCK TABLES `r_patient_rbans` WRITE;
/*!40000 ALTER TABLE `r_patient_rbans` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_rbans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_scales`
--

DROP TABLE IF EXISTS `r_patient_scales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_scales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `end_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_scales_ibfk_1` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_scales_ibfk_2` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17946 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_scales`
--

LOCK TABLES `r_patient_scales` WRITE;
/*!40000 ALTER TABLE `r_patient_scales` DISABLE KEYS */;
INSERT INTO `r_patient_scales` VALUES (17702,878,1,0,'2021-01-21 17:15:31'),(17703,878,2,0,'2021-01-21 17:15:31'),(17704,878,3,0,'2021-01-21 17:15:31'),(17705,878,4,0,'2021-01-21 17:15:31'),(17706,878,5,0,'2021-01-21 17:15:31'),(17707,878,6,0,'2021-01-21 17:15:31'),(17708,878,7,0,'2021-01-21 17:15:31'),(17709,878,8,0,'2021-01-21 17:15:31'),(17710,878,9,0,'2021-01-21 17:15:31'),(17711,878,10,0,'2021-01-21 17:15:31'),(17712,878,11,0,'2021-01-21 17:15:31'),(17713,878,12,0,'2021-01-21 17:15:31'),(17714,878,13,0,'2021-01-21 17:15:31'),(17715,878,14,0,'2021-01-21 17:15:31'),(17716,878,15,0,'2021-01-21 17:15:31'),(17717,878,16,0,'2021-01-21 17:15:31'),(17718,878,17,0,'2021-01-21 17:15:31'),(17719,878,18,0,'2021-01-21 17:15:31'),(17720,878,19,0,'2021-01-21 17:15:31'),(17721,878,20,0,'2021-01-21 17:15:31'),(17722,878,21,0,'2021-01-21 17:15:31'),(17723,878,22,0,'2021-01-21 17:15:31'),(17724,878,23,0,'2021-01-21 17:15:31'),(17725,878,24,0,'2021-01-21 17:15:31'),(17726,878,25,0,'2021-01-21 17:15:31'),(17727,878,26,0,'2021-01-21 17:15:31'),(17728,878,27,0,'2021-01-21 17:15:31'),(17729,878,28,0,'2021-01-21 17:15:31'),(17730,880,1,1,'2021-01-25 16:02:27'),(17731,880,2,1,'2021-01-25 16:02:52'),(17732,880,3,1,'2021-01-25 16:03:21'),(17733,880,4,0,'2021-01-25 15:50:07'),(17734,880,5,0,'2021-01-25 15:50:07'),(17735,880,6,0,'2021-01-25 15:50:07'),(17736,880,7,0,'2021-01-25 15:50:07'),(17737,880,8,0,'2021-01-25 15:50:07'),(17738,880,9,0,'2021-01-25 15:50:07'),(17739,880,10,0,'2021-01-25 15:50:07'),(17740,880,11,0,'2021-01-25 15:50:07'),(17741,880,12,0,'2021-01-25 15:50:07'),(17742,880,13,0,'2021-01-25 15:50:07'),(17743,880,14,0,'2021-01-25 15:50:07'),(17744,880,15,0,'2021-01-25 15:50:07'),(17745,880,16,0,'2021-01-25 15:50:07'),(17746,880,17,0,'2021-01-25 15:50:07'),(17747,880,18,0,'2021-01-25 15:50:07'),(17748,880,19,0,'2021-01-25 15:50:07'),(17749,880,20,0,'2021-01-25 15:50:07'),(17750,880,21,0,'2021-01-25 15:50:07'),(17751,880,22,0,'2021-01-25 15:50:07'),(17752,880,23,0,'2021-01-25 15:50:07'),(17753,880,24,0,'2021-01-25 15:50:07'),(17754,880,25,0,'2021-01-25 15:50:07'),(17755,880,26,0,'2021-01-25 15:50:07'),(17756,880,27,0,'2021-01-25 15:50:07'),(17757,880,28,0,'2021-01-25 15:50:07'),(17758,881,1,0,'2021-01-25 15:55:24'),(17759,881,2,0,'2021-01-25 15:55:24'),(17760,881,3,0,'2021-01-25 15:55:24'),(17761,881,4,0,'2021-01-25 15:55:24'),(17762,881,5,0,'2021-01-25 15:55:24'),(17763,881,6,0,'2021-01-25 15:55:24'),(17764,881,7,0,'2021-01-25 15:55:24'),(17765,881,8,0,'2021-01-25 15:55:24'),(17766,881,9,0,'2021-01-25 15:55:24'),(17767,881,10,0,'2021-01-25 15:55:24'),(17768,881,13,0,'2021-01-25 15:55:24'),(17769,881,14,0,'2021-01-25 15:55:24'),(17770,881,21,0,'2021-01-25 15:55:24'),(17771,881,22,0,'2021-01-25 15:55:24'),(17772,881,23,0,'2021-01-25 15:55:24'),(17773,881,24,0,'2021-01-25 15:55:24'),(17774,881,25,0,'2021-01-25 15:55:24'),(17775,881,27,0,'2021-01-25 15:55:24'),(17776,881,28,0,'2021-01-25 15:55:24'),(17777,882,1,0,'2021-01-25 21:20:22'),(17778,882,2,0,'2021-01-25 21:20:22'),(17779,882,3,0,'2021-01-25 21:20:22'),(17780,882,4,0,'2021-01-25 21:20:22'),(17781,882,5,0,'2021-01-25 21:20:22'),(17782,882,6,0,'2021-01-25 21:20:22'),(17783,882,7,0,'2021-01-25 21:20:22'),(17784,882,8,0,'2021-01-25 21:20:22'),(17785,882,9,0,'2021-01-25 21:20:22'),(17786,882,10,0,'2021-01-25 21:20:22'),(17787,882,13,0,'2021-01-25 21:20:22'),(17788,882,14,0,'2021-01-25 21:20:22'),(17789,882,21,0,'2021-01-25 21:20:22'),(17790,882,22,0,'2021-01-25 21:20:22'),(17791,882,23,0,'2021-01-25 21:20:22'),(17792,882,24,0,'2021-01-25 21:20:22'),(17793,882,25,0,'2021-01-25 21:20:22'),(17794,882,27,0,'2021-01-25 21:20:22'),(17795,882,28,0,'2021-01-25 21:20:22'),(17796,883,1,0,'2021-01-25 21:20:52'),(17797,883,2,0,'2021-01-25 21:20:52'),(17798,883,3,0,'2021-01-25 21:20:52'),(17799,883,4,0,'2021-01-25 21:20:52'),(17800,883,5,0,'2021-01-25 21:20:52'),(17801,883,6,0,'2021-01-25 21:20:52'),(17802,883,7,0,'2021-01-25 21:20:52'),(17803,883,8,0,'2021-01-25 21:20:52'),(17804,883,9,0,'2021-01-25 21:20:52'),(17805,883,10,0,'2021-01-25 21:20:52'),(17806,883,13,0,'2021-01-25 21:20:52'),(17807,883,14,0,'2021-01-25 21:20:52'),(17808,883,21,0,'2021-01-25 21:20:52'),(17809,883,22,0,'2021-01-25 21:20:52'),(17810,883,23,0,'2021-01-25 21:20:52'),(17811,883,24,0,'2021-01-25 21:20:52'),(17812,883,25,0,'2021-01-25 21:20:52'),(17813,883,27,0,'2021-01-25 21:20:52'),(17814,883,28,0,'2021-01-25 21:20:52'),(17815,884,1,0,'2021-01-26 21:15:07'),(17816,884,2,0,'2021-01-26 21:15:07'),(17817,884,3,0,'2021-01-26 21:15:07'),(17818,884,4,0,'2021-01-26 21:15:07'),(17819,884,5,0,'2021-01-26 21:15:07'),(17820,884,6,0,'2021-01-26 21:15:07'),(17821,884,7,0,'2021-01-26 21:15:07'),(17822,884,8,0,'2021-01-26 21:15:07'),(17823,884,9,0,'2021-01-26 21:15:07'),(17824,884,10,0,'2021-01-26 21:15:07'),(17825,884,11,0,'2021-01-26 21:15:07'),(17826,884,12,0,'2021-01-26 21:15:07'),(17827,884,13,0,'2021-01-26 21:15:07'),(17828,884,14,0,'2021-01-26 21:15:07'),(17829,884,15,0,'2021-01-26 21:15:07'),(17830,884,16,0,'2021-01-26 21:15:07'),(17831,884,17,0,'2021-01-26 21:15:07'),(17832,884,18,0,'2021-01-26 21:15:07'),(17833,884,19,0,'2021-01-26 21:15:07'),(17834,884,20,0,'2021-01-26 21:15:07'),(17835,884,21,0,'2021-01-26 21:15:07'),(17836,884,22,0,'2021-01-26 21:15:07'),(17837,884,23,0,'2021-01-26 21:15:07'),(17838,884,24,0,'2021-01-26 21:15:07'),(17839,884,25,0,'2021-01-26 21:15:07'),(17840,884,26,0,'2021-01-26 21:15:07'),(17841,884,27,0,'2021-01-26 21:15:07'),(17842,884,28,0,'2021-01-26 21:15:07'),(17843,885,1,0,'2021-01-27 11:08:45'),(17844,885,2,0,'2021-01-27 11:08:45'),(17845,885,3,0,'2021-01-27 11:08:45'),(17846,885,4,0,'2021-01-27 11:08:45'),(17847,885,5,0,'2021-01-27 11:08:45'),(17848,885,6,0,'2021-01-27 11:08:45'),(17849,885,7,0,'2021-01-27 11:08:45'),(17850,885,8,0,'2021-01-27 11:08:45'),(17851,885,9,0,'2021-01-27 11:08:45'),(17852,885,10,0,'2021-01-27 11:08:45'),(17853,885,11,0,'2021-01-27 11:08:45'),(17854,885,12,0,'2021-01-27 11:08:45'),(17855,885,13,0,'2021-01-27 11:08:45'),(17856,885,14,0,'2021-01-27 11:08:45'),(17857,885,15,0,'2021-01-27 11:08:45'),(17858,885,16,0,'2021-01-27 11:08:45'),(17859,885,17,0,'2021-01-27 11:08:45'),(17860,885,18,0,'2021-01-27 11:08:45'),(17861,885,19,0,'2021-01-27 11:08:45'),(17862,885,20,0,'2021-01-27 11:08:45'),(17863,885,21,0,'2021-01-27 11:08:45'),(17864,885,22,0,'2021-01-27 11:08:45'),(17865,885,23,0,'2021-01-27 11:08:45'),(17866,885,24,0,'2021-01-27 11:08:45'),(17867,885,25,0,'2021-01-27 11:08:45'),(17868,885,26,0,'2021-01-27 11:08:45'),(17869,885,27,0,'2021-01-27 11:08:45'),(17870,885,28,0,'2021-01-27 11:08:45'),(17890,887,1,0,'2021-01-27 11:11:23'),(17891,887,2,0,'2021-01-27 11:11:23'),(17892,887,3,0,'2021-01-27 11:11:23'),(17893,887,4,0,'2021-01-27 11:11:23'),(17894,887,5,0,'2021-01-27 11:11:23'),(17895,887,6,0,'2021-01-27 11:11:23'),(17896,887,7,0,'2021-01-27 11:11:23'),(17897,887,8,0,'2021-01-27 11:11:23'),(17898,887,9,0,'2021-01-27 11:11:23'),(17899,887,10,0,'2021-01-27 11:11:23'),(17900,887,11,0,'2021-01-27 11:11:23'),(17901,887,12,0,'2021-01-27 11:11:23'),(17902,887,13,0,'2021-01-27 11:11:23'),(17903,887,14,0,'2021-01-27 11:11:23'),(17904,887,15,0,'2021-01-27 11:11:23'),(17905,887,16,0,'2021-01-27 11:11:23'),(17906,887,17,0,'2021-01-27 11:11:23'),(17907,887,18,0,'2021-01-27 11:11:23'),(17908,887,19,0,'2021-01-27 11:11:23'),(17909,887,20,0,'2021-01-27 11:11:23'),(17910,887,21,0,'2021-01-27 11:11:23'),(17911,887,22,0,'2021-01-27 11:11:23'),(17912,887,23,0,'2021-01-27 11:11:23'),(17913,887,24,0,'2021-01-27 11:11:23'),(17914,887,25,0,'2021-01-27 11:11:23'),(17915,887,26,0,'2021-01-27 11:11:23'),(17916,887,27,0,'2021-01-27 11:11:23'),(17917,887,28,0,'2021-01-27 11:11:23'),(17918,888,1,0,'2021-01-27 11:12:05'),(17919,888,2,0,'2021-01-27 11:12:05'),(17920,888,3,0,'2021-01-27 11:12:05'),(17921,888,4,0,'2021-01-27 11:12:05'),(17922,888,5,0,'2021-01-27 11:12:05'),(17923,888,6,0,'2021-01-27 11:12:05'),(17924,888,7,0,'2021-01-27 11:12:05'),(17925,888,8,0,'2021-01-27 11:12:05'),(17926,888,9,0,'2021-01-27 11:12:05'),(17927,888,10,0,'2021-01-27 11:12:05'),(17928,888,11,0,'2021-01-27 11:12:05'),(17929,888,12,0,'2021-01-27 11:12:05'),(17930,888,13,0,'2021-01-27 11:12:05'),(17931,888,14,0,'2021-01-27 11:12:05'),(17932,888,15,0,'2021-01-27 11:12:05'),(17933,888,16,0,'2021-01-27 11:12:05'),(17934,888,17,0,'2021-01-27 11:12:05'),(17935,888,18,0,'2021-01-27 11:12:05'),(17936,888,19,0,'2021-01-27 11:12:05'),(17937,888,20,0,'2021-01-27 11:12:05'),(17938,888,21,0,'2021-01-27 11:12:05'),(17939,888,22,0,'2021-01-27 11:12:05'),(17940,888,23,0,'2021-01-27 11:12:05'),(17941,888,24,0,'2021-01-27 11:12:05'),(17942,888,25,0,'2021-01-27 11:12:05'),(17943,888,26,0,'2021-01-27 11:12:05'),(17944,888,27,0,'2021-01-27 11:12:05'),(17945,888,28,0,'2021-01-27 11:12:05');
/*!40000 ALTER TABLE `r_patient_scales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_sembu`
--

DROP TABLE IF EXISTS `r_patient_sembu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_sembu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `year_of_school` date DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `region` tinyint(4) DEFAULT NULL,
  `mark_level` tinyint(4) DEFAULT NULL,
  `parents_status` tinyint(4) DEFAULT NULL,
  `question1_father` tinyint(4) DEFAULT NULL,
  `question1_mother` tinyint(4) DEFAULT NULL,
  `question2_father` tinyint(4) DEFAULT NULL,
  `question2_mother` tinyint(4) DEFAULT NULL,
  `question3_father` tinyint(4) DEFAULT NULL,
  `question3_mother` tinyint(4) DEFAULT NULL,
  `question4_father` tinyint(4) DEFAULT NULL,
  `question4_mother` tinyint(4) DEFAULT NULL,
  `question5_father` tinyint(4) DEFAULT NULL,
  `question5_mother` tinyint(4) DEFAULT NULL,
  `question6_father` tinyint(4) DEFAULT NULL,
  `question6_mother` tinyint(4) DEFAULT NULL,
  `question7_father` tinyint(4) DEFAULT NULL,
  `question7_mother` tinyint(4) DEFAULT NULL,
  `question8_father` tinyint(4) DEFAULT NULL,
  `question8_mother` tinyint(4) DEFAULT NULL,
  `question9_father` tinyint(4) DEFAULT NULL,
  `question9_mother` tinyint(4) DEFAULT NULL,
  `question10_father` tinyint(4) DEFAULT NULL,
  `question10_mother` tinyint(4) DEFAULT NULL,
  `question11_father` tinyint(4) DEFAULT NULL,
  `question11_mother` tinyint(4) DEFAULT NULL,
  `question12_father` tinyint(4) DEFAULT NULL,
  `question12_mother` tinyint(4) DEFAULT NULL,
  `question13_father` tinyint(4) DEFAULT NULL,
  `question13_mother` tinyint(4) DEFAULT NULL,
  `question14_father` tinyint(4) DEFAULT NULL,
  `question14_mother` tinyint(4) DEFAULT NULL,
  `question15_father` tinyint(4) DEFAULT NULL,
  `question15_mother` tinyint(4) DEFAULT NULL,
  `question16_father` tinyint(4) DEFAULT NULL,
  `question16_mother` tinyint(4) DEFAULT NULL,
  `question17_father` tinyint(4) DEFAULT NULL,
  `question17_mother` tinyint(4) DEFAULT NULL,
  `question18_father` tinyint(4) DEFAULT NULL,
  `question18_mother` tinyint(4) DEFAULT NULL,
  `question19_father` tinyint(4) DEFAULT NULL,
  `question19_mother` tinyint(4) DEFAULT NULL,
  `question20_father` tinyint(4) DEFAULT NULL,
  `question20_mother` tinyint(4) DEFAULT NULL,
  `question21_father` tinyint(4) DEFAULT NULL,
  `question21_mother` tinyint(4) DEFAULT NULL,
  `refusal_mother` float DEFAULT NULL,
  `refusal_father` float DEFAULT NULL,
  `emotional_warmth_mother` float DEFAULT NULL,
  `emotional_warmth_father` float DEFAULT NULL,
  `overprotection_mother` float DEFAULT NULL,
  `overprotection_father` float DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_sembu_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_sembu_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_sembu_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_sembu`
--

LOCK TABLES `r_patient_sembu` WRITE;
/*!40000 ALTER TABLE `r_patient_sembu` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_sembu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_suicidal`
--

DROP TABLE IF EXISTS `r_patient_suicidal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_suicidal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `suicide_history` tinyint(1) DEFAULT NULL,
  `suicide_times` int(11) DEFAULT NULL,
  `question1_lastweek` tinyint(4) DEFAULT NULL,
  `question1_mostdepressed` tinyint(4) DEFAULT NULL,
  `question2_lastweek` tinyint(4) DEFAULT NULL,
  `question2_mostdepressed` tinyint(4) DEFAULT NULL,
  `question3_lastweek` tinyint(4) DEFAULT NULL,
  `question3_mostdepressed` tinyint(4) DEFAULT NULL,
  `question4_lastweek` tinyint(4) DEFAULT NULL,
  `question4_mostdepressed` tinyint(4) DEFAULT NULL,
  `question5_lastweek` tinyint(4) DEFAULT NULL,
  `question5_mostdepressed` tinyint(4) DEFAULT NULL,
  `question6_lastweek` tinyint(4) DEFAULT NULL,
  `question6_mostdepressed` tinyint(4) DEFAULT NULL,
  `question7_lastweek` tinyint(4) DEFAULT NULL,
  `question7_mostdepressed` tinyint(4) DEFAULT NULL,
  `question8_lastweek` tinyint(4) DEFAULT NULL,
  `question8_mostdepressed` tinyint(4) DEFAULT NULL,
  `question9_lastweek` tinyint(4) DEFAULT NULL,
  `question9_mostdepressed` tinyint(4) DEFAULT NULL,
  `question10_lastweek` tinyint(4) DEFAULT NULL,
  `question10_mostdepressed` tinyint(4) DEFAULT NULL,
  `question11_lastweek` tinyint(4) DEFAULT NULL,
  `question11_mostdepressed` tinyint(4) DEFAULT NULL,
  `question12_lastweek` tinyint(4) DEFAULT NULL,
  `question12_mostdepressed` tinyint(4) DEFAULT NULL,
  `question13_lastweek` tinyint(4) DEFAULT NULL,
  `question13_mostdepressed` tinyint(4) DEFAULT NULL,
  `question14_lastweek` tinyint(4) DEFAULT NULL,
  `question14_mostdepressed` tinyint(4) DEFAULT NULL,
  `question15_lastweek` tinyint(4) DEFAULT NULL,
  `question15_mostdepressed` tinyint(4) DEFAULT NULL,
  `question16_lastweek` tinyint(4) DEFAULT NULL,
  `question16_mostdepressed` tinyint(4) DEFAULT NULL,
  `question17_lastweek` tinyint(4) DEFAULT NULL,
  `question17_mostdepressed` tinyint(4) DEFAULT NULL,
  `question18_lastweek` tinyint(4) DEFAULT NULL,
  `question18_mostdepressed` tinyint(4) DEFAULT NULL,
  `question19_lastweek` tinyint(4) DEFAULT NULL,
  `question19_mostdepressed` tinyint(4) DEFAULT NULL,
  `total_score_lastweek` float DEFAULT NULL,
  `total_score_mostdepressed` float DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `self_mutilation_remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_suicidal_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_suicidal_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_suicidal_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_suicidal`
--

LOCK TABLES `r_patient_suicidal` WRITE;
/*!40000 ALTER TABLE `r_patient_suicidal` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_suicidal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_tms`
--

DROP TABLE IF EXISTS `r_patient_tms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_tms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `treatment_id` int(11) NOT NULL,
  `treatment_type` varchar(2) DEFAULT NULL,
  `treatment_site` varchar(40) DEFAULT NULL,
  `motion_threshold` int(11) DEFAULT NULL,
  `energy_intensity` float DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `pulses_number` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `interval_time` int(11) DEFAULT NULL,
  `researcher_sign` int(11) DEFAULT NULL,
  `stimulate_num` int(11) DEFAULT NULL,
  `treatment_duration` int(11) DEFAULT NULL,
  `treatment_number` int(11) DEFAULT NULL,
  `feelings` text,
  `note` text,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `treatment_id` (`treatment_id`),
  CONSTRAINT `r_patient_tms_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_tms_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_tms_ibfk_3` FOREIGN KEY (`treatment_id`) REFERENCES `d_treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_tms`
--

LOCK TABLES `r_patient_tms` WRITE;
/*!40000 ALTER TABLE `r_patient_tms` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_tms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_vept`
--

DROP TABLE IF EXISTS `r_patient_vept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_vept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `calm` int(11) DEFAULT NULL,
  `angry` int(11) DEFAULT NULL,
  `disgusting` int(11) DEFAULT NULL,
  `fear` int(11) DEFAULT NULL,
  `satire` int(11) DEFAULT NULL,
  `sad` int(11) DEFAULT NULL,
  `wonder` int(11) DEFAULT NULL,
  `quality_control` float DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_vept_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_vept_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_vept_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_vept`
--

LOCK TABLES `r_patient_vept` WRITE;
/*!40000 ALTER TABLE `r_patient_vept` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_vept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_wcst`
--

DROP TABLE IF EXISTS `r_patient_wcst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_wcst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `ra` int(11) DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `rc` int(11) DEFAULT NULL,
  `rcp` float DEFAULT NULL,
  `re` int(11) DEFAULT NULL,
  `rf` int(11) DEFAULT NULL,
  `rfp` float DEFAULT NULL,
  `rp` int(11) DEFAULT NULL,
  `rpe` int(11) DEFAULT NULL,
  `rpep` float DEFAULT NULL,
  `nrpe` int(11) DEFAULT NULL,
  `fm` int(11) DEFAULT NULL,
  `l_l` float DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_wcst_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_wcst_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_wcst_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_wcst`
--

LOCK TABLES `r_patient_wcst` WRITE;
/*!40000 ALTER TABLE `r_patient_wcst` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_wcst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_ybobsessiontable`
--

DROP TABLE IF EXISTS `r_patient_ybobsessiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_ybobsessiontable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `forced_frequency` tinyint(4) DEFAULT NULL,
  `impediment_degree1` tinyint(4) DEFAULT NULL,
  `impediment_degree2` tinyint(4) DEFAULT NULL,
  `distress` tinyint(4) DEFAULT NULL,
  `fightforced_degree` tinyint(4) DEFAULT NULL,
  `control_ability1` tinyint(4) DEFAULT NULL,
  `control_ability2` tinyint(4) DEFAULT NULL,
  `compulsion_frequency` tinyint(4) DEFAULT NULL,
  `stopcompulsion_anxiety` tinyint(4) DEFAULT NULL,
  `stopforced_frequency` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_ybobsessiontable_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_ybobsessiontable_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_ybobsessiontable_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ybobsessiontable`
--

LOCK TABLES `r_patient_ybobsessiontable` WRITE;
/*!40000 ALTER TABLE `r_patient_ybobsessiontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_ybobsessiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_ymrs`
--

DROP TABLE IF EXISTS `r_patient_ymrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_ymrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL,
  `emotional_upsurge` tinyint(4) DEFAULT NULL,
  `vigorous_energy` tinyint(4) DEFAULT NULL,
  `sexual_desire` tinyint(4) DEFAULT NULL,
  `sleep` tinyint(4) DEFAULT NULL,
  `irritability` tinyint(4) DEFAULT NULL,
  `speech` tinyint(4) DEFAULT NULL,
  `language` tinyint(4) DEFAULT NULL,
  `thinking_content` tinyint(4) DEFAULT NULL,
  `aggressive_behavior` tinyint(4) DEFAULT NULL,
  `appearance` tinyint(4) DEFAULT NULL,
  `self_awareness` tinyint(4) DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_ymrs_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_ymrs_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_ymrs_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ymrs`
--

LOCK TABLES `r_patient_ymrs` WRITE;
/*!40000 ALTER TABLE `r_patient_ymrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_ymrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_self_test_duration`
--

DROP TABLE IF EXISTS `r_self_test_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_self_test_duration` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_session_id` int(11) NOT NULL DEFAULT '0',
  `scale_id` int(11) NOT NULL DEFAULT '0',
  `question_index` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `patient_session_id` (`patient_session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_self_test_duration`
--

LOCK TABLES `r_self_test_duration` WRITE;
/*!40000 ALTER TABLE `r_self_test_duration` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_self_test_duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_user_record`
--

DROP TABLE IF EXISTS `r_user_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_user_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `operate_type` tinyint(4) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_user_record`
--

LOCK TABLES `r_user_record` WRITE;
/*!40000 ALTER TABLE `r_user_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_user_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user`
--

DROP TABLE IF EXISTS `s_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `description` text,
  `active` tinyint(1) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user`
--

LOCK TABLES `s_user` WRITE;
/*!40000 ALTER TABLE `s_user` DISABLE KEYS */;
INSERT INTO `s_user` VALUES (1,'yangjingyu','yangjingyu',NULL,1,'杨景钰',0),(2,'test','test',NULL,1,'测试',0),(3,'zhangran','zhangran',NULL,1,'张然',0),(4,'zhangluheng','zhangluheng',NULL,1,'张陆衡',0),(5,'liujuan','liujuan',NULL,1,'刘娟',0),(6,'duanjia','duanjia',NULL,1,'段佳',0),(7,'wangning','wangning',NULL,1,'王宁',0),(8,'gaojie','gaojie',NULL,1,'高杰',0),(9,'chenyifan','chenyifan',NULL,1,'陈逸凡',0),(10,'wangyang','wangyang',NULL,1,'王洋',0),(11,'guohuiling','guohuiling',NULL,1,'郭慧玲',0),(12,'linshengjuan','linshengjuan',NULL,1,'林生娟',0),(13,'zhangzhongguo','zhangzhongguo',NULL,1,'张中国',0),(14,'renyongxia','renyongxia',NULL,1,'任永霞',0);
/*!40000 ALTER TABLE `s_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-27 11:50:42
