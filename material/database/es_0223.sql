-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: entry_system
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

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
  `inpatient_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `d_inpatient_info_ibfk_1` (`patient_id`),
  CONSTRAINT `d_inpatient_info_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `b_patient_base_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_inpatient_info`
--

LOCK TABLES `b_inpatient_info` WRITE;
/*!40000 ALTER TABLE `b_inpatient_info` DISABLE KEYS */;
INSERT INTO `b_inpatient_info` VALUES (29,1,1,'','','','','2021-02-09','2021-02-18','2021-02-20 11:44:02','2021-02-20 17:15:42','','病程记录/29/李铮.pdf','医嘱记录/29/李铮.xls',1),(30,5,1,'','','','','2021-02-02',NULL,'2021-02-20 12:42:17','2021-02-20 12:42:17','','','',1),(32,11,1,'','','','','2021-02-02',NULL,'2021-02-20 18:15:37','2021-02-20 18:17:51','','病程记录/32/李铮.pdf','医嘱记录/32/李铮.xls',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2983 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_inpatient_medical_advice`
--

LOCK TABLES `b_inpatient_medical_advice` WRITE;
/*!40000 ALTER TABLE `b_inpatient_medical_advice` DISABLE KEYS */;
INSERT INTO `b_inpatient_medical_advice` VALUES (2885,29,'2020-09-04 14:25:53','精神病护理',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2886,29,'2020-09-04 14:25:53','精神科监护',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2887,29,'2020-09-04 14:25:53','一级护理(精神科)',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2888,29,'2020-09-04 14:25:53','普食(普通饭)',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2889,29,'2020-09-04 14:25:53','工娱治疗',NULL,NULL,NULL,NULL,2,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2890,29,'2020-09-04 14:25:53','行为观察和治疗',NULL,NULL,NULL,NULL,2,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2891,29,'2020-09-04 14:25:53','脑电治疗(A620)',NULL,NULL,NULL,NULL,8,'Q5W','张婧','林潘','张婧','李佳','2020-09-04 15:52:28','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2892,29,'2020-09-04 14:25:53','松驰治疗',NULL,NULL,NULL,NULL,2,'Q5W','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2893,29,'2020-09-04 14:25:53','音乐治疗',NULL,NULL,NULL,NULL,6,'Q5W','张婧','林潘','张婧','李佳','2020-09-04 15:52:28','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2894,29,'2020-09-04 14:25:53','抗精神病药物治疗监测',NULL,NULL,NULL,NULL,3,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2895,29,'2020-09-04 14:25:53','锥体外系副作用量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2896,29,'2020-09-04 14:25:53','简明精神病评定量表(BPRS)',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2897,29,'2020-09-04 14:25:53','临床总体印象量表(CGI)',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2898,29,'2020-09-04 14:25:53','精神护理观察量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2899,29,'2020-09-04 14:25:53','宗(Zung)氏抑郁自评量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2900,29,'2020-09-04 14:25:53','宗(Zung)氏焦虑自评量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2901,29,'2020-09-04 14:25:53','心理治疗（住院，30分钟）',NULL,NULL,NULL,NULL,2,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2902,29,'2020-09-04 14:25:53','日常生活能力评定量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张婧','李佳','2020-09-04 16:16:06','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2903,29,'2020-09-04 14:25:54','躁狂状态评定量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2904,29,'2020-09-04 14:26:19','富马酸喹硫平(思瑞康)片 200mg',200,'mg',NULL,'PO',0,'QN','张婧','林潘','张婧','侯春婷','2020-09-08 14:47:52','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2905,29,'2020-09-04 14:28:19','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'BID14','张婧','林潘','张婧','侯春婷','2020-09-07 09:24:02','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2906,29,'2020-09-04 14:29:01','甘草酸二铵肠溶片 50mg',150,'mg',NULL,'PO',0,'BID','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2907,29,'2020-09-04 14:29:10','利脑心片 0.42g',NULL,NULL,NULL,'PO',0,'BID','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2908,29,'2020-09-04 14:30:13','劳拉西泮（乐拉安）片 0.5mg',2,'mg',NULL,'PO',0,'QN','张婧','林潘','张婧','李佳','2020-09-04 15:48:38','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2909,29,'2020-09-04 14:40:58','陪护',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2910,29,'2020-09-04 14:41:00','陪护床（含简易病床、躺椅等）',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2911,29,'2020-09-04 14:41:03','加普食',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2912,29,'2020-09-04 15:48:47','奥沙西泮片 15mg',30,'mg',NULL,'PO',0,'QN','张婧','李佳','张婧','郝倩钰','2020-09-05 17:53:58','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2913,29,'2020-09-04 17:07:39','芪胶升白胶囊 0.5g',NULL,NULL,NULL,'PO',0,'BID','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2914,29,'2020-09-05 17:54:08','劳拉西泮片 1mg',2,'mg',NULL,'PO',0,'QN','张婧','郝倩钰','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2915,29,'2020-09-05 17:54:21','富马酸喹硫平(思瑞康)片 200mg',200,'mg',NULL,'PO',0,'QD2','张婧','郝倩钰','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2916,29,'2020-09-06 09:16:20','0.9%氯化钠注射液（塑瓶） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2917,29,'2020-09-06 09:16:20','奥拉西坦（倍清星）注射液 1g',4000,'g','┛','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2918,29,'2020-09-06 09:17:07','5%葡萄糖注射液（直立式输液袋） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2919,29,'2020-09-06 09:17:07','谷红注射液 5ml',10,'ml','┛','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2920,29,'2020-09-07 09:24:12','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QD1','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2921,29,'2020-09-07 09:24:19','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2922,29,'2020-09-07 09:24:23','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张婧','李佳','2020-09-09 09:03:03','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2923,29,'2020-09-07 16:39:39','测血压',NULL,NULL,NULL,NULL,8,'BID14','张婧','侯春婷','朱荣鑫','侯春婷','2020-09-16 09:17:47','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2924,29,'2020-09-07 16:39:46','测脉搏',NULL,NULL,NULL,NULL,8,'BID14','张婧','侯春婷','朱荣鑫','侯春婷','2020-09-16 09:17:47','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2925,29,'2020-09-07 16:40:24','酒石酸美托洛尔(倍他乐克)片 0.025g',NULL,NULL,NULL,'PO',0,'BID','张婧','侯春婷','张婧','李佳','2020-09-09 09:02:42','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2926,29,'2020-09-08 14:48:02','富马酸喹硫平(思瑞康)片 200mg',400,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2927,29,'2020-09-08 15:35:51','左甲状腺素钠（优甲乐）片 50ug',25,'ug',NULL,'PO',0,'QM','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2928,29,'2020-09-09 09:02:51','酒石酸美托洛尔(倍他乐克)片 0.025g',NULL,NULL,NULL,'PO',0,'BID12','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2929,29,'2020-09-10 16:48:26','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'BID14','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2930,29,'2020-09-11 07:40:45','维生素B6片 10mg',10,'mg',NULL,'PO',0,'TID','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2931,29,'2020-09-15 08:50:51','劳拉西泮片 1mg',1,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2932,29,'2020-09-15 09:59:54','音乐治疗',NULL,NULL,NULL,NULL,6,'Q5W','张洪燕','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2933,29,'2020-09-15 09:59:54','电子生物反馈疗法(病区内)',NULL,NULL,NULL,NULL,6,'Q5W','张洪燕','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 17:14:54','2021-02-20 17:14:54'),(2934,32,'2020-09-04 14:25:53','精神病护理',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2935,32,'2020-09-04 14:25:53','精神科监护',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2936,32,'2020-09-04 14:25:53','一级护理(精神科)',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2937,32,'2020-09-04 14:25:53','普食(普通饭)',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2938,32,'2020-09-04 14:25:53','工娱治疗',NULL,NULL,NULL,NULL,2,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2939,32,'2020-09-04 14:25:53','行为观察和治疗',NULL,NULL,NULL,NULL,2,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2940,32,'2020-09-04 14:25:53','脑电治疗(A620)',NULL,NULL,NULL,NULL,8,'Q5W','张婧','林潘','张婧','李佳','2020-09-04 15:52:28','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2941,32,'2020-09-04 14:25:53','松驰治疗',NULL,NULL,NULL,NULL,2,'Q5W','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2942,32,'2020-09-04 14:25:53','音乐治疗',NULL,NULL,NULL,NULL,6,'Q5W','张婧','林潘','张婧','李佳','2020-09-04 15:52:28','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2943,32,'2020-09-04 14:25:53','抗精神病药物治疗监测',NULL,NULL,NULL,NULL,3,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2944,32,'2020-09-04 14:25:53','锥体外系副作用量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2945,32,'2020-09-04 14:25:53','简明精神病评定量表(BPRS)',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2946,32,'2020-09-04 14:25:53','临床总体印象量表(CGI)',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2947,32,'2020-09-04 14:25:53','精神护理观察量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2948,32,'2020-09-04 14:25:53','宗(Zung)氏抑郁自评量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2949,32,'2020-09-04 14:25:53','宗(Zung)氏焦虑自评量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2950,32,'2020-09-04 14:25:53','心理治疗（住院，30分钟）',NULL,NULL,NULL,NULL,2,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2951,32,'2020-09-04 14:25:53','日常生活能力评定量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张婧','李佳','2020-09-04 16:16:06','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2952,32,'2020-09-04 14:25:54','躁狂状态评定量表',NULL,NULL,NULL,NULL,3,'QW5','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2953,32,'2020-09-04 14:26:19','富马酸喹硫平(思瑞康)片 200mg',200,'mg',NULL,'PO',0,'QN','张婧','林潘','张婧','侯春婷','2020-09-08 14:47:52','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2954,32,'2020-09-04 14:28:19','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'BID14','张婧','林潘','张婧','侯春婷','2020-09-07 09:24:02','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2955,32,'2020-09-04 14:29:01','甘草酸二铵肠溶片 50mg',150,'mg',NULL,'PO',0,'BID','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2956,32,'2020-09-04 14:29:10','利脑心片 0.42g',NULL,NULL,NULL,'PO',0,'BID','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2957,32,'2020-09-04 14:30:13','劳拉西泮（乐拉安）片 0.5mg',2,'mg',NULL,'PO',0,'QN','张婧','林潘','张婧','李佳','2020-09-04 15:48:38','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2958,32,'2020-09-04 14:40:58','陪护',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2959,32,'2020-09-04 14:41:00','陪护床（含简易病床、躺椅等）',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2960,32,'2020-09-04 14:41:03','加普食',NULL,NULL,NULL,NULL,1,'QD','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2961,32,'2020-09-04 15:48:47','奥沙西泮片 15mg',30,'mg',NULL,'PO',0,'QN','张婧','李佳','张婧','郝倩钰','2020-09-05 17:53:58','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2962,32,'2020-09-04 17:07:39','芪胶升白胶囊 0.5g',NULL,NULL,NULL,'PO',0,'BID','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2963,32,'2020-09-05 17:54:08','劳拉西泮片 1mg',2,'mg',NULL,'PO',0,'QN','张婧','郝倩钰','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2964,32,'2020-09-05 17:54:21','富马酸喹硫平(思瑞康)片 200mg',200,'mg',NULL,'PO',0,'QD2','张婧','郝倩钰','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2965,32,'2020-09-06 09:16:20','0.9%氯化钠注射液（塑瓶） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2966,32,'2020-09-06 09:16:20','奥拉西坦（倍清星）注射液 1g',4000,'g','┛','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2967,32,'2020-09-06 09:17:07','5%葡萄糖注射液（直立式输液袋） 250ml',250,'ml','┓','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2968,32,'2020-09-06 09:17:07','谷红注射液 5ml',10,'ml','┛','IVGTT',0,'QD','朱荣鑫','侯春婷','张婧','侯春婷','2020-09-15 17:30:00','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2969,32,'2020-09-07 09:24:12','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QD1','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2970,32,'2020-09-07 09:24:19','碳酸锂缓释片 0.3g',NULL,NULL,NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2971,32,'2020-09-07 09:24:23','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张婧','李佳','2020-09-09 09:03:03','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2972,32,'2020-09-07 16:39:39','测血压',NULL,NULL,NULL,NULL,8,'BID14','张婧','侯春婷','朱荣鑫','侯春婷','2020-09-16 09:17:47','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2973,32,'2020-09-07 16:39:46','测脉搏',NULL,NULL,NULL,NULL,8,'BID14','张婧','侯春婷','朱荣鑫','侯春婷','2020-09-16 09:17:47','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2974,32,'2020-09-07 16:40:24','酒石酸美托洛尔(倍他乐克)片 0.025g',NULL,NULL,NULL,'PO',0,'BID','张婧','侯春婷','张婧','李佳','2020-09-09 09:02:42','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2975,32,'2020-09-08 14:48:02','富马酸喹硫平(思瑞康)片 200mg',400,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2976,32,'2020-09-08 15:35:51','左甲状腺素钠（优甲乐）片 50ug',25,'ug',NULL,'PO',0,'QM','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2977,32,'2020-09-09 09:02:51','酒石酸美托洛尔(倍他乐克)片 0.025g',NULL,NULL,NULL,'PO',0,'BID12','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2978,32,'2020-09-10 16:48:26','丙戊酸钠（德巴金）缓释片(Ⅰ) 500mg',500,'mg',NULL,'PO',0,'BID14','张婧','林潘','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2979,32,'2020-09-11 07:40:45','维生素B6片 10mg',10,'mg',NULL,'PO',0,'TID','张婧','李佳','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2980,32,'2020-09-15 08:50:51','劳拉西泮片 1mg',1,'mg',NULL,'PO',0,'QN','张婧','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2981,32,'2020-09-15 09:59:54','音乐治疗',NULL,NULL,NULL,NULL,6,'Q5W','张洪燕','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51'),(2982,32,'2020-09-15 09:59:54','电子生物反馈疗法(病区内)',NULL,NULL,NULL,NULL,6,'Q5W','张洪燕','侯春婷','张洪燕','李佳','2020-09-18 09:39:07','2021-02-20 18:16:51','2021-02-20 18:16:51');
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
INSERT INTO `b_patient_base_info` VALUES (1,'测试1',1,'2021-02-01','汉族',2,'2021-02-20 11:20:11','2021-02-20 17:03:45',2,'NULL',1),(2,'测试2',1,'2020-02-01','汉族',2,'2021-02-20 11:20:52','2021-02-20 11:20:52',4,'',0),(3,'测试3',1,'2017-02-07','蒙古族',2,'2021-02-20 11:21:22','2021-02-20 11:21:22',4,'',0),(4,'测试4',1,'1989-12-29','回族',2,'2021-02-20 11:22:17','2021-02-20 11:22:17',1,'',0),(5,'测试5',0,'2021-01-06','汉族',2,'2021-02-20 11:23:55','2021-02-20 12:42:17',1,'',1),(6,'测试6',1,'2021-02-02','蒙古族',2,'2021-02-20 11:24:51','2021-02-20 11:26:09',4,'',0),(7,'测试7',1,'2013-01-01','蒙古族',2,'2021-02-20 12:33:12','2021-02-20 12:35:14',NULL,NULL,0),(10,'测试10',1,'2020-09-09','蒙古族',2,'2021-02-20 16:54:12','2021-02-20 17:10:35',4,'',0),(11,'测试',1,'2021-02-04','汉族',2,'2021-02-20 18:06:03','2021-02-20 18:15:37',NULL,NULL,1),(11111,'11',1,'2021-02-09','藏族',2,'2021-02-21 17:29:14','2021-02-21 17:29:14',4,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_patient_rtms`
--

LOCK TABLES `b_patient_rtms` WRITE;
/*!40000 ALTER TABLE `b_patient_rtms` DISABLE KEYS */;
INSERT INTO `b_patient_rtms` VALUES (163,792,9,NULL,'1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:02:39','2021-01-25 14:02:39'),(164,792,8,'2021-01-13','0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:02:39','2021-01-25 14:02:39'),(168,791,1,'2021-01-21','1',1,2,22,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-01-25 14:51:02','2021-01-25 14:51:02'),(187,909,1,'2021-01-01','1',2,1,1,1,1,1,1,1,1,1,1,1,'1',2,'2021-02-20 12:40:51','2021-02-20 12:40:51'),(188,909,2,NULL,'0',0,1,1,1,1,1,1,1,1,1,1,1,'1',2,'2021-02-20 12:40:51','2021-02-20 12:40:51'),(190,918,1,NULL,'0',0,1,1,1,1,1,1,1,1,1,1,1,'1',2,'2021-02-20 18:11:34','2021-02-20 18:11:34'),(191,918,2,'2011-01-01','0',0,2,2,2,2,2,2,2,2,2,2,2,'2',2,'2021-02-20 18:11:34','2021-02-20 18:11:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_medical_advice`
--

LOCK TABLES `d_medical_advice` WRITE;
/*!40000 ALTER TABLE `d_medical_advice` DISABLE KEYS */;
INSERT INTO `d_medical_advice` VALUES (1,'精神病护理',1),(2,'精神科监护',1),(3,'一级护理(精神科)',1),(4,'普食(普通饭)',1),(5,'加普食',1),(6,'陪护',1),(7,'陪护床（含简易病床、躺椅等）',1),(8,'行为矫正治疗',2),(9,'保护性约束',2),(10,'工娱治疗',2),(11,'心理治疗（住院，30分钟）',2),(12,'行为观察和治疗',2),(13,'松驰治疗',2),(14,'穴位贴敷治疗',2),(15,'抗精神病药物治疗监测',3),(16,'汉密尔顿焦虑量表',3),(17,'汉密尔顿抑郁量表',3),(18,'锥体外系副作用量表',3),(19,'简明精神病评定量表(BPRS)',3),(20,'临床总体印象量表(CGI)',3),(21,'精神护理观察量表',3),(22,'宗(Zung)氏抑郁自评量表',3),(23,'宗(Zung)氏焦虑自评量表',3),(24,'躁狂状态评定量表',3),(25,'日常生活能力评定量表',3),(26,'阳性症状评定量表（SAPS）',3),(27,'阴性症状评定量表（SANS）',3),(28,'症状自评量表',3),(29,'精神卫生量表评估',3),(30,'多参数监护无抽搐电休克治疗',4),(31,'无插管全麻(无抽搐电休克室)',4),(32,'麻醉中监测(电休克)',4),(33,'经颅磁刺激治疗',5),(34,'电子生物反馈疗法(病区内)',6),(35,'音乐治疗',6),(36,'虚拟情景康复训练',7),(37,'催眠治疗',7),(38,'暗示治疗',7),(39,'暴露疗法和半暴露疗法',7),(47,'丙酸氟替卡松鼻喷雾剂 适量 鼻部外喷 3次/日 （自备）',8),(48,'测心率',8),(49,'测血压',8),(50,'金霉素眼药膏   外用  BID',8),(51,'正柴胡饮颗粒  3g  PO  TID',8),(52,'脑电治疗(A620)',8),(53,'测脉搏',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_patient_detail`
--

LOCK TABLES `d_patient_detail` WRITE;
/*!40000 ALTER TABLE `d_patient_detail` DISABLE KEYS */;
INSERT INTO `d_patient_detail` VALUES (902,1,1,'NN_00000001_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:20:11','2021-02-22 15:20:37',NULL,NULL,NULL,'2021-02-01',NULL),(903,2,1,'NN_00000002_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:20:52','2021-02-20 11:20:52',NULL,NULL,NULL,'2021-02-01',NULL),(904,3,1,'NN_00000003_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:21:22','2021-02-20 11:21:22',NULL,NULL,NULL,'2021-02-01',NULL),(905,4,1,'NN_00000004_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:22:17','2021-02-20 11:22:17',NULL,NULL,NULL,'2021-02-01',NULL),(906,5,1,'NN_00000005_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:23:55','2021-02-20 11:23:55',NULL,NULL,NULL,'2021-02-17',NULL),(907,6,1,'NN_00000006_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:24:51','2021-02-20 11:26:09',NULL,1,NULL,'2021-02-01',NULL),(908,1,2,'NN_00000001_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:33:25','2021-02-20 11:33:25',NULL,NULL,NULL,'2021-02-01',NULL),(909,7,1,'NN_00000007_S001',NULL,1,0,1,0,0,1,0,0,1,8,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 12:33:12','2021-02-20 12:40:51',NULL,1,NULL,'2021-02-02',NULL),(912,1,3,'NN_00000001_S003',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 13:49:38','2021-02-20 13:53:38',NULL,1,NULL,'2021-02-01',NULL),(913,1,4,'NN_00000001_S004',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 14:04:36','2021-02-20 14:04:36',NULL,1,NULL,'2021-02-01',NULL),(914,10,1,'NN_00000010_S001',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'12',NULL,0,'15262058636',NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 16:54:12','2021-02-20 17:10:35',NULL,1,NULL,'2021-02-19',NULL),(915,1,5,'NN_00000001_S005',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 16:55:27','2021-02-20 16:55:32',NULL,1,NULL,'2021-02-01',NULL),(916,10,2,'NN_00000010_S002',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,'15262058636',NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 16:59:10','2021-02-20 16:59:10',NULL,1,NULL,'2021-02-19',NULL),(917,1,6,'NN_00000001_S006',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 17:13:38','2021-02-20 17:13:38',NULL,1,NULL,'2021-02-01',NULL),(918,11,1,'NN_00000011_S001',NULL,1,0,1,0,0,1,0,1,1,-1,'护士',NULL,NULL,0,'15262058636',NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 18:06:03','2021-02-20 18:13:02',NULL,1,NULL,'2021-02-03',NULL),(919,11,2,'NN_00000011_S002',NULL,1,0,1,0,0,1,0,1,NULL,-1,'护士',NULL,NULL,0,'15262058636',NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 18:14:46','2021-02-20 18:14:46',NULL,1,NULL,'2021-02-03',NULL),(920,1,7,'NN_00000001_S007',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 18:49:57','2021-02-20 18:49:57',NULL,1,NULL,'2021-02-01',NULL),(921,1,8,'NN_00000001_S008',NULL,0,0,0,1,1,1,0,1,NULL,0,'学生','研二',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-21 15:37:59','2021-02-21 15:37:59',NULL,1,NULL,'2021-02-01',NULL),(922,11111,1,'NN_00011111_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-21 17:29:14','2021-02-21 17:29:14',NULL,NULL,NULL,'2021-02-01',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_scales`
--

LOCK TABLES `d_scales` WRITE;
/*!40000 ALTER TABLE `d_scales` DISABLE KEYS */;
INSERT INTO `d_scales` VALUES (1,'一般资料－个人及家庭信息',2,0),(2,'一般资料－学习情况',2,0),(3,'一般资料－家族及疾病史',2,0),(4,'一般资料－物质依赖',2,0),(5,'一般资料－其他资料',2,0),(6,'中国利手量表',2,0),(7,'汉密尔顿抑郁量表（HAMD-17）',2,1),(8,'汉密尔顿焦虑量表（HAMA）',2,1),(9,'杨氏躁狂量表（YMRS）',2,1),(10,'简明精神病量表(BPRS)',2,1),(11,'耶鲁布朗强迫症严重程度',0,2),(12,'自杀意念及行为史',2,2),(13,'33项轻躁狂症状清单',2,2),(14,'斯奈斯和汉密尔顿快乐量表',2,2),(15,'快感体验能力量表',2,2),(16,'儿童期（16岁以前）的成长经历',0,2),(17,'认知情绪调节问卷',1,2),(18,'青少年生活事件量表',1,2),(19,'简式父母养育方式问卷（S-Embu）',1,2),(20,'自动思维问卷（ATQ）',2,2),(21,'威斯康星卡片分类测验（WCST）',2,3),(22,'重复成套性神经心理状态测验系统 (RBANS)',2,3),(23,'面孔情绪感知能力测试 (FEPT)',2,3),(24,'语音情绪感知能力测试 (VEPT)',2,3),(25,'简要病史',2,0),(26,'磁共振检查情况',0,4),(27,'r-TMS治疗反馈',2,4),(28,'诊断类型',2,4),(29,'PHQ-9',0,2),(30,'GAD-7',0,2),(31,'失眠严重指数量表',0,2),(32,'压力知觉量表',0,2);
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
INSERT INTO `django_session` VALUES ('013knlii3xez90k059txvfndv1qpsd00','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 20:38:32.356986'),('0jtd76ovzmgeeh1on7qncowsdxuurmke','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 21:23:22.245201'),('0ne7qaaymbohoqgqi07rbyl9v3quslua','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:39:20.415117'),('0q6bvadvsjqs9ltrplc3g5r1esh6jie2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:54:37.526144'),('0xn1mzfefucfwy13s0y9ljn9rma81hlu','NmE0NDIyMDZiMDZmNDk5ZTliYzVmNGRkNzcyYzRkNjU4OGIyNjUxNTp7InVzZXJuYW1lIjoiemhhbmd6aG9uZ2d1byIsImRvY3Rvcl9pZCI6MTMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 16:27:59.013328'),('17z08nw0xthxk1pzsnamrdaoywssuhsk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 18:42:45.105513'),('18ywd70f7rqscd1l0qsueuxg2fvzj8e0','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 11:43:09.449747'),('1d1ic5l2joe7i49ybix9lyqvy7x4bsyb','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 11:35:21.360396'),('1mxt3bcjt1jnxl3ja8andfr65l8dnrjj','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 16:17:35.567929'),('1nfyx8jpmle7emy02p0f3uk2isveyhv3','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-07 17:59:50.249238'),('1ogs3fcdzx26mxf6iuyqavax1ehu0kol','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-23 12:58:09.107530'),('1w25kj2rrdrbk0u7n7wppspcx0oyh2zm','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 17:14:05.977335'),('2adyytb63zk04wtboelwvj068n1hcvqq','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:50:20.337005'),('2jbtokelk3sz819gyxjvsxhxdy2jq1q5','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-08 20:49:51.223577'),('2lam64yyukyd9g4l909rkfg7fsydetdj','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 22:12:35.551933'),('2xiynyca6bq848hzqcmk8judkn97m2n1','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 11:21:25.265564'),('32trvivpf4770jl79ucips6cywqr37kz','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-04 21:55:39.242964'),('3aj76grwmw93p2b76kuojuimpbw5q54t','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 11:28:40.847249'),('3c20g6jgdq8w00awg6vr0x5qdp59hp0b','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:02:17.837793'),('3mcgbbbmuwvxa3q0lgr9fgmdzeuxnkz5','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 12:20:55.828445'),('3os7atczmwzgyj9zu6p90d58pytbbg4n','ODJjYjBkYzFkZWZkMmQzZWExYjAyYThhMDA5NDU4MzM5OTgyMDA2Yzp7InVzZXJuYW1lIjoiTElVSlVBTiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 02:35:52.698716'),('3ribkwhjpqwntjo5h8kaypcp6108vvnx','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:15:01.986713'),('3wj345ws2qanxmm1ox1b1s9cyb2os7ax','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 14:40:47.557579'),('47mo3hqtbk9lneocrsr7syt6vcnifa3f','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 03:54:20.160003'),('4bnwmhgqmlolj6jjec8rusyr0c56dtsc','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-13 19:42:22.920946'),('4pfc0c6or0qmvdzdix110gvkprxs32eh','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-29 17:39:26.717622'),('4t3tue9bnaiu7dx5m2kyi0yd553li23w','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 17:54:04.313536'),('50hrshruv65v3a3oapjr57n8t4huw11j','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 21:37:23.893288'),('53wahpzxpxdbjfe73tidl9ty2bzgoj7w','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 21:55:54.132732'),('5i36b7mja2ixujifga42qhd7q8e08kzf','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-15 20:40:34.127441'),('5l67gea4gmlaua78erhgl2a2a4mv2t84','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 18:27:56.390497'),('68lctcszznvblwu0yw4e3p5fkbyj4cbb','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-23 20:00:41.919019'),('69o49jpe951s568gxjj8igit5e5nho9a','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-16 20:13:32.142187'),('6h0wclpyb5gswu99aa6fx6vl45v6p9nm','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:51:51.127410'),('6vynvabuupgtsv3ty9ng6bnuj2arg1bw','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-22 21:22:12.197025'),('6zf6vmvzzl38zukeqongm9mo89z2sqdu','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-22 15:18:07.214680'),('75xkwlckgv4r6orl0ihy0miie9ymt054','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 00:58:28.364788'),('7aekq8q9lgavkzf64vkqm13229vv4jts','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-06 19:05:10.232182'),('7guicvvyuygch9qdcb0zhcyv6znmmjnm','NmE0NDIyMDZiMDZmNDk5ZTliYzVmNGRkNzcyYzRkNjU4OGIyNjUxNTp7InVzZXJuYW1lIjoiemhhbmd6aG9uZ2d1byIsImRvY3Rvcl9pZCI6MTMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 15:50:42.169699'),('7l4zfq634t8q41gm0437p1rdyudvbvya','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 21:11:19.455516'),('7vkda8ibkqefy6l9h5v4amnou1tpaffr','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 15:46:51.483977'),('81665k06ev9f90vd1y5c6tjju5nd6hlu','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-24 12:32:59.038532'),('8ag6kzb10m3qd367a3t9hheigdowhgxz','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 13:44:04.620712'),('94rb2tle02ad49n7nwi5znqc38g316rx','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-19 19:33:46.076924'),('9cj2926e05ikto0vnjc6ulh9smmohsxy','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 16:53:50.303271'),('9dcwtwp6jxd6rnp0loohjfi1py4h792q','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 12:32:41.203195'),('9gsejzgq17hh2djzocjtzd24fq5ypevy','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:14:07.394886'),('9hwfi4mxdbtpq3hn7jlyzmu5jcqfybim','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 11:41:44.116351'),('9ievv7g6ngtcgcp8zsf0jlacs8vcp4lu','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 15:09:38.856439'),('9j4qg2ga6h9pivv94tthqlqamuio3gat','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 11:12:31.712787'),('9lg7wgsljw81bt5sew5uqzscfhltfgsi','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-09 13:42:36.010074'),('9mhoolb3wloqsm3qw4lze4s5xc8z5u0n','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-25 12:49:13.432452'),('9xfljae2a9meazu4qggsxjyhcnlr54j8','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 13:11:37.354102'),('a03hdmzkgd1zz8zf8el9hwpon7gwymc6','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:24.353175'),('abefdew3ekhmccf9agmjn4rgg6b0ve9p','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-25 17:31:18.553124'),('ad4xz80ntx3hi9v14gw7ehhewb2y0jny','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 02:08:28.288034'),('bj0ak91qabyj5kccs0ch8kfjbe0eufpq','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-22 16:11:26.831443'),('c9x0hs0qx48ds7vzde9bhbllvxmw3fe4','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:13:20.548855'),('cb21gi4vkp29ykundnubzokup4m5w0u7','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 19:24:13.168175'),('cgmujhhi49r5sz4amm2d6rdifz9lf4y8','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 18:15:50.228182'),('ch07epabuy5mf7zmwgh6rvln2nx556gx','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 17:43:05.214420'),('csd76s6bpo1fa9u0omaxl9zno8dueue4','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-18 23:25:04.087010'),('die49mhu0xllff0ba9ccek6g9u79gxbj','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 12:12:22.896651'),('dymx38c111oepaud9so71epfp3d56tph','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 23:13:24.591918'),('e2ohde3pxewn4ec2u36fiyv59t8odvsp','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 17:09:28.515411'),('e33x6spaf9i7qxk451lyeh867pjo7rae','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 23:06:25.684033'),('eeijkdiih4u7n0uf8q9goi4283h87pbq','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 18:50:40.947428'),('en8848jicfieb1hgia6uq7fxyxzah4b8','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 12:12:10.666716'),('esrtnugcud49ams3k4xc5uhh0q09u2gc','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-23 17:08:18.225916'),('ewt8a13wmnb4fk5adqjufrtln8bptrr5','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-17 15:50:34.251509'),('ey7f69qpizgbfaj3ispjj73jgnw2m20p','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-27 19:29:20.602398'),('ezysxk1m0odvfeh73hyh59fd36qekjmv','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-09 01:25:39.089069'),('f10219vixjcax9myk2c3mufs6ddy1wf8','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 12:04:18.617567'),('fftg945iuodrb85ka5zo0bn7a9cg0n38','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 21:38:46.030822'),('fhigdea4b3vwqpgap9g670bytr6xqdx2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 12:53:22.570517'),('fj327e0yzu3g5tiq6gz2dnwz3xoy6jbo','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-06 13:27:18.473230'),('fs6kymtnw5fkgg8he11nsofzityi20c4','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-14 10:56:08.715257'),('g287d5x43n13t1lumrh2t75laewt1pn7','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 02:23:49.609969'),('g5em7632mtdgbhjlootdl4nwur9x7bds','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-11 19:56:25.139118'),('g6l8bjda5o6nar5c2jengjg3lztq0r1p','MjdlOGQwYjJkM2U5OGIzNjcwOTFlOGJiNzhjN2Y0OGM5N2Y1ZmJjYTp7InVzZXJuYW1lIjoicmVueW9uZ3hpYSIsImRvY3Rvcl9pZCI6MTQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 18:41:01.304131'),('ghbll2ve7qpjx3ekxxg24qfn7gkgbljq','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 11:27:52.321989'),('gl9fwjpancwbo8424d34cy44h3o99kfz','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 17:34:43.507650'),('gytk57qxupjq578mxaipw0pisgk6cn2e','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 12:12:27.551391'),('h8b7pvvo3fvhar6om7mxnvx54qj1tak0','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 20:29:33.505405'),('hd24vu606rzt20pvec4w5n7swuqgqz6x','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 18:35:14.671997'),('hdtpdw6hwu9pln5jwwjw5cqzq62p8rza','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-22 21:48:28.178097'),('hdvhi8f3tsxutjaxn3ga6eirzhua79i4','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-20 18:32:17.042701'),('ht3997fm5b94ovkuf9dj6lvmr0ml4ky1','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 12:31:19.209748'),('hws40xcjl2avweb71iqujvscl9x4tpab','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 22:29:02.764855'),('i4y5kn2vn2h9e76867ahvxtkfq3m7z5p','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 19:10:11.047201'),('i6gmwhkp14j569tofiqsn57x9ycpn50r','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 18:48:13.558019'),('idrhkksd8s4gnys2khy2pc5y6z9bxxp7','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-27 13:42:51.445852'),('j1qwj2566jrevxup1q3uk4awufd9yhec','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-28 21:56:36.654236'),('j1yz918rq2skzpaz0oreayovtorhnffi','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-28 18:18:17.936089'),('j2ialcdc5kj5jpmwfl2bih8dhnwemlr1','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-13 22:52:28.877710'),('j4jaktifw19gcno7d964s8m9lxgwpjo7','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-27 13:47:38.921778'),('j7n9pje6lkyk6ismk2wxkievhnqz2su2','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-28 12:02:54.519028'),('jzf3fajld4jqdtyxcglkybts8h61t67b','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 21:24:42.970387'),('k21m8pbhcytirx5y2zr3v1krfzl71v3a','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-05 17:30:59.649167'),('k7dr43xmuzeb05wgv5d1sywc3ksofxun','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-19 18:01:48.879836'),('ksqepkfi1hefwqpxrz0jbhpfljz7sgv7','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-28 20:33:42.634422'),('l30xam2kosyi9lho1bnoh0d76wk71ei9','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-24 18:50:53.771961'),('l4au45wcypd9rxzrmcc1mxjpwglem9s6','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 02:23:39.173154'),('l6grw9651lo1zg6lev8e11p993zdj1yb','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-21 18:18:35.939052'),('l71kneobmpgoy3b4jf158qp7j7cu211p','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-21 12:37:03.352275'),('lewsqctbmg3p2xygaxty3cjbhpgrtoyi','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-29 19:36:35.316329'),('liaw0s1bw5rj3a0lwavvyerbekup6v49','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-22 12:43:33.126720'),('lnmdm2lqf4qyj2z2uax7a4jn655t2hla','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 00:02:51.276668'),('m3ni6676hg12z8klc4kr783nltdmaika','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-18 01:27:30.590916'),('ma8wxi68arfb5b1fyexiiiabvwnmm76e','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 19:36:05.062063'),('mtqi7zrc14y8mcuu93mcr9yszn46pvbb','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-11 13:09:22.527049'),('muk3c4aelfuo476bmo6d2f25pc1toddn','NWYyNjBhMjJhMWFlNzgyNTgyOGZlMjk5ODdkMTYxNTRlYTVkMmVlNDp7InVzZXJuYW1lIjoiXHU1MjE4XHU1YTFmIiwiZG9jdG9yX2lkIjo1LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-20 19:27:09.349013'),('myskys04w4rndk3jakefab77wa5rjf3y','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 23:40:55.304219'),('n5y81gb1uyyway6a17mbln2j0h8lcykm','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 11:37:47.849928'),('nasd8gnoluajxa1hqgahm3yo7fhq6jw9','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-06 13:19:35.835505'),('nc4tm7s3vxqptwgufgdmvmuu19m0jwwt','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-23 15:13:24.145930'),('ncdajzwgkybt5drimq69tktc9gn5gy5o','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-13 18:36:35.593082'),('np3supq60szs0yh6sn1b24bkem504hya','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 12:16:57.319924'),('nzegr6qbo1qoy5hs63f7btmc7otu9tt4','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:18:49.047760'),('oftdreaaruhng9b4evipu9tiia3s1kse','ZTdhMTYxYWZiNDZhNTlkODRjNzAzODBiMDgyMDljM2RkN2I4ZDUzNDp7InVzZXJuYW1lIjoid2FuZ3lhbmciLCJkb2N0b3JfaWQiOjEwLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 16:46:42.480288'),('ofusxxehrnr03szhcfobbe8okovknbmi','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 12:19:36.754920'),('on325zvwkhkoz3h8vcyzdn0p7sq1t416','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 18:22:05.429052'),('ox0cjxzl33ecgygyz653bwl7534o8mxo','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-05 12:03:25.956894'),('p0a8inlwjj9e72s4ru0sizibofmin8tl','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 23:24:32.152071'),('pjscsxa5rr5dnmofm4kecv041mquaox4','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 00:30:59.030107'),('pkfzeihyuymj9mpr70gyhr57rzd519l6','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 21:49:42.671649'),('pr2rxn43qpcf44vvibwg9mlw2lduc6ld','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-06 13:00:56.770674'),('q7dh4jwqqkadvdyrw8q3vinoc1p9f5lv','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-22 23:27:33.675948'),('q86ac5xmfh6f54j62o1u2064epxr2a84','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:26.612046'),('qtcezrx1737z5oytqka1na5mv7qwsatm','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-13 19:20:06.884401'),('qtromgaupq8f0115mffe0nj8kb5r0213','MmFjMTAxZTI4MmI1YmQyMzVhZDk0NDdmZjA0ZjE5MGRlYjZhMDI0ZDp7InVzZXJuYW1lIjoiemhhbmdyYW4iLCJkb2N0b3JfaWQiOjMsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-25 12:45:53.175088'),('qvxe8cnk1digtx4uhbukaj9yj6ujm2za','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 19:23:00.222433'),('qwnpr39114pune5cgsu0ubmclpscezjg','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-07 21:30:39.120486'),('r0mixvfygenm0cfv3gvj1qht9x5wjgbg','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-08 15:23:42.126177'),('riywmxmzcy9p84blutkugem4xkmta2vl','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 19:26:17.612861'),('rjylmffhybbr1t8ta5hws304r1oewtzo','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 16:35:12.176612'),('rq73k4a6mt4amsc17x3hm2p7dnvr6n7j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:56:47.718292'),('rr1rse1t0macxlfcuvo2gug6s0iev47x','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 02:20:42.110392'),('s4dx98ne7ha95fzs0np1lumkc7l2o95j','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-07 12:40:26.361920'),('s4lfcuijtzjn7m9sdnpv1uw2di2wlrvc','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 02:31:42.929092'),('s5x1vookuq6tvq1m5x1ooi80598ztztv','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 16:05:54.617771'),('s85k9i8q4zbjfdzqhlr7qql5k9l6itsj','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-23 15:11:43.628546'),('sdpt0ngpawbbppldld7s0h193fqu9g0d','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-11 21:47:48.822123'),('sy1loi6y5ubr3ilhzojxmxqsnpg2g9a1','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 20:18:41.898973'),('t1rqogrcjt5h9tblfuh32m6py1k6ewe3','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-29 17:16:58.809846'),('t2eq9ta5azr1pytoii6f39gfvyfjtx87','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 12:01:58.195993'),('t8dw526ejlla1sulaz4hja18in75y67s','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-21 18:46:05.029678'),('ta2czwc87ah64td8h7hfm6x1ak70kb57','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-20 15:54:17.012539'),('tihb00ncky6cn45zswx58kvlrpn679hn','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-06 21:49:26.242493'),('tkhkbhi2u3vchrvepgrf34qewywlyisa','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-05 12:06:27.854861'),('tkrh9ns077yvcxszdxj3a7klsp0wv03b','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-23 11:50:20.912590'),('tlxp4mqbuu3uq2svsrfcz32wkogpqs9d','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-13 23:25:31.941197'),('tz8wvwewk9pdf57lohg797eitvjboqpq','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 12:29:10.394385'),('u4nb6itfgzcmh7muxfuc3144lhy36ti8','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:29:44.990123'),('u7v28vb62kck0928cunfdvvl0463m9x5','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 01:04:50.541717'),('uch6do3uk8nld52gk6izf1u8dbfpz6oy','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:14:27.927164'),('umxybq9ezk3g1pma5l9dfvul02yrk9ox','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 20:49:36.200364'),('uybgh8io0v0ir4b4n0zxui0spma1zhb7','NTUyMTQ4MzMwNTlhNDY3N2FiYjk0YzY4NjRiNzA3NTIxZTgyNWI0Nzp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-16 16:41:50.922137'),('uze97bo7c8bcki78l2k8ywyqehib2n0o','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-04 18:38:35.845788'),('v1btwkb9ye8hv3nt3slsej8i5gyu7153','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 18:53:31.251098'),('v1orz7di7prp9o7tzdsb8uv9jcipu7vt','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-16 21:38:12.848957'),('v2y4f3v27x3gs8qugjd5jv5k5pta6luh','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 12:34:03.018807'),('vcpw3kt9b6gaeoch52pm5lxqw9w4r0lr','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-18 18:21:57.120237'),('vqlquf45iohsm3zckn3ut0pnmg6yb51q','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2020-12-24 17:53:34.528929'),('vxgceooifss6p3hvv1kv90bz1561bdev','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-17 23:40:36.035070'),('w7xu8p99mv1pmbf5lh1cfc7537s4m1lk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:56:37.337457'),('wqc878zb2jl20suxdpim1p2tah7ta71k','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-18 15:01:41.215235'),('wvziv6158vbkndsoqgqvdjj782t2ut15','Mjg4YjhiZDdlNDNhNDhmNjZkYTM4NmQxOGMwN2JiNzgyNjc0ZTYzNzp7InVzZXJuYW1lIjoiemhhbmdsdWhlbmciLCJkb2N0b3JfaWQiOjQsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2021-01-13 14:09:32.795626'),('wwrj6zoi20a7e7f4mlgo3tjr471nxzdj','NDNhMzY1YmUzZmJkMDcyMTBkYjA4ZWIxMjk4N2MxZTcxNTRjZDY1NTp7InVzZXJuYW1lIjoieWFuZ2ppbmd5dSIsImRvY3Rvcl9pZCI6MSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 12:24:55.180802'),('wxhmxi6yb5q7ep59uxgg9q7e2x9h6cra','NmI0NGZkNjgzZTE4MDhhY2I3OGFjOGQ1Y2FjYTQzNGJmZDEyMjQwNDp7InVzZXJuYW1lIjoiZ3VvaHVpbGluZyIsImRvY3Rvcl9pZCI6MTEsImhpc3RvcnkiOnt9LCJhY3RpdmUiOnRydWV9','2020-12-29 12:39:58.469320'),('wyftktu70ne1a7yttpn9gqosoctxo598','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-26 23:13:28.807620'),('x64tnuvok0mm7ki35j3e0pnyogf7hyok','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-12 16:16:56.946951'),('xay9bh7f1uarjiil1ssptxd5l7xs8win','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 21:27:20.869411'),('xfeoaycmsktlijm4xcruxh3yg0smczpr','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-22 19:14:17.585844'),('xopm2esy25pnt49tzhdf5ahjqx39jki6','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-21 21:47:05.071138'),('xx08xijofnkdhtwt12amvny6w3nvwgbm','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-10 16:45:36.341844'),('y1jrg0sf81932i5fqdtvnp6hsplpjdl8','ZjFhMDdjNWIyYjA5ZjU5MTg5M2MxYzBiZWVkODViNDM4NjNmZGY4Mjp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-02-20 17:33:35.101884'),('yf3rt2t9eav7gwj7bqr5vc3uvpwlhu7f','ZGRkMzU2MDhjOWViZGMzNjY5OGFmYTZlMWE1ODNkZjZlMzhhOWE2ZTp7InVzZXJuYW1lIjoibGl1anVhbiIsImRvY3Rvcl9pZCI6NSwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2020-12-19 17:23:50.109482'),('yfhag7kji0gpzwk7251httpid9hbu3vr','ZDZhNDk3MTU1MjkyZmIxYjA3OThjZjY4NGM3Y2Y3OThlNWI5YTFjNDp7InVzZXJuYW1lIjoiY2hlbnlpZmFuIiwiZG9jdG9yX2lkIjo5LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-12 19:34:24.935757'),('zfm7mszwndvtt9vtrpec8dlifrfitg0j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 06:57:29.076181'),('zgkgf5izvmcxtqt3g5fmtz1dlixy31iq','ZjE1YmJkYmFlNmMxZmMzNjg2NjFhZmQyZmQ3ZTQzNDRiYmI0YzMwMjp7InVzZXJuYW1lIjoiZ2FvamllIiwiZG9jdG9yX2lkIjo4LCJoaXN0b3J5Ijp7fSwiYWN0aXZlIjp0cnVlfQ==','2021-01-08 17:19:00.179611'),('zkap9ipjnzyrib1n5fhu4zrh3o3fm1nd','Yjc0YjQ3NmIwZDg2MjJkMWYwN2RhMGVjYjg2MmJhMWJiZmFiMzJhMjp7InVzZXJuYW1lIjoiZHVhbmppYSIsImRvY3Rvcl9pZCI6NiwiaGlzdG9yeSI6e30sImFjdGl2ZSI6dHJ1ZX0=','2021-01-05 18:52:39.028404');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_family`
--

LOCK TABLES `r_patient_basic_information_family` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_family` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_family` VALUES (2,907,1,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 11:26:09','2021-02-20 11:26:09',NULL),(3,909,1,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,'个体',NULL,NULL,NULL,0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 12:35:14','2021-02-20 12:35:14',NULL),(4,912,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,2,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 13:50:22','2021-02-20 13:50:22',NULL),(5,914,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 16:54:51','2021-02-20 17:10:35',NULL),(6,915,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 16:55:32','2021-02-20 16:55:32',NULL),(7,918,1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,1,NULL,0,NULL,NULL,0,0,2,'2021-02-20 18:06:49','2021-02-20 18:06:49',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_health`
--

LOCK TABLES `r_patient_basic_information_health` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_health` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_health` VALUES (2,907,3,0,NULL,NULL,1,NULL,NULL,0,NULL,NULL,NULL,2,'2021-02-20 11:26:25','2021-02-20 11:26:25'),(3,914,3,0,NULL,NULL,0,NULL,NULL,1,'实时',NULL,NULL,2,'2021-02-20 16:56:08','2021-02-20 16:56:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_study`
--

LOCK TABLES `r_patient_basic_information_study` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_study` DISABLE KEYS */;
INSERT INTO `r_patient_basic_information_study` VALUES (2,909,2,2,2,1,0,NULL,1,NULL,2,'2021-02-20 12:35:25','2021-02-20 12:35:25'),(3,912,2,2,2,0,0,NULL,0,NULL,2,'2021-02-20 13:50:39','2021-02-20 13:50:39'),(4,918,2,2,1,3,0,NULL,0,NULL,2,'2021-02-20 18:07:03','2021-02-20 18:07:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_bprs`
--

LOCK TABLES `r_patient_bprs` WRITE;
/*!40000 ALTER TABLE `r_patient_bprs` DISABLE KEYS */;
INSERT INTO `r_patient_bprs` VALUES (2,908,10,3,3,3,3,4,5,5,4,3,3,4,5,3,3,3,3,4,3,64,2,'2021-02-20 11:34:34','2021-02-20 11:34:34');
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
-- Table structure for table `r_patient_gad`
--

DROP TABLE IF EXISTS `r_patient_gad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_gad` (
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
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_gad_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_gad_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_gad_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_gad`
--

LOCK TABLES `r_patient_gad` WRITE;
/*!40000 ALTER TABLE `r_patient_gad` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_gad` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ghr`
--

LOCK TABLES `r_patient_ghr` WRITE;
/*!40000 ALTER TABLE `r_patient_ghr` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_hama`
--

LOCK TABLES `r_patient_hama` WRITE;
/*!40000 ALTER TABLE `r_patient_hama` DISABLE KEYS */;
INSERT INTO `r_patient_hama` VALUES (3,907,8,3,1,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:27:29','2021-02-20 11:27:29'),(5,908,8,3,3,2,2,2,3,2,3,2,2,2,2,2,2,32,2,'2021-02-20 11:37:24','2021-02-20 11:37:24'),(6,909,8,2,2,1,2,2,1,2,4,4,3,2,2,2,2,31,2,'2021-02-20 12:37:10','2021-02-20 12:37:10'),(8,914,8,2,2,2,2,3,1,2,2,1,2,1,3,2,1,26,2,'2021-02-20 16:57:16','2021-02-20 17:11:23'),(9,918,8,2,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 18:08:45','2021-02-20 18:09:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_hamd17`
--

LOCK TABLES `r_patient_hamd17` WRITE;
/*!40000 ALTER TABLE `r_patient_hamd17` DISABLE KEYS */;
INSERT INTO `r_patient_hamd17` VALUES (9,907,7,3,1,3,1,2,1,2,2,1,0,1,1,1,1,3,1,2,26,2,'2021-02-20 11:26:57','2021-02-20 11:27:09'),(10,908,7,2,2,1,1,1,1,2,2,3,2,2,1,1,1,2,1,1,26,2,'2021-02-20 11:33:43','2021-02-20 11:33:43'),(11,909,7,4,3,3,1,1,1,2,1,2,2,1,1,1,2,2,1,1,29,2,'2021-02-20 12:36:07','2021-02-20 12:36:54'),(12,912,7,2,3,3,1,1,0,2,1,2,3,2,1,1,0,1,1,1,25,2,'2021-02-20 13:51:07','2021-02-20 13:51:39'),(13,914,7,2,0,3,1,1,1,1,2,2,0,2,0,1,1,1,0,0,18,2,'2021-02-20 16:56:30','2021-02-20 16:56:51'),(14,918,7,3,1,2,1,2,1,1,2,2,0,2,1,1,0,2,1,0,22,2,'2021-02-20 18:07:47','2021-02-20 18:08:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
-- Table structure for table `r_patient_insomnia`
--

DROP TABLE IF EXISTS `r_patient_insomnia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_insomnia` (
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
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_insomnia_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_insomnia_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_insomnia_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_insomnia`
--

LOCK TABLES `r_patient_insomnia` WRITE;
/*!40000 ALTER TABLE `r_patient_insomnia` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_insomnia` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
-- Table structure for table `r_patient_phq`
--

DROP TABLE IF EXISTS `r_patient_phq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_phq` (
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
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_phq_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_phq_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_phq_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_phq`
--

LOCK TABLES `r_patient_phq` WRITE;
/*!40000 ALTER TABLE `r_patient_phq` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_phq` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_pleasure`
--

LOCK TABLES `r_patient_pleasure` WRITE;
/*!40000 ALTER TABLE `r_patient_pleasure` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_pleasure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_patient_pss`
--

DROP TABLE IF EXISTS `r_patient_pss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_patient_pss` (
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
  `total_score` int(11) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_pss_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_pss_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_pss_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_pss`
--

LOCK TABLES `r_patient_pss` WRITE;
/*!40000 ALTER TABLE `r_patient_pss` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_pss` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18777 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_scales`
--

LOCK TABLES `r_patient_scales` WRITE;
/*!40000 ALTER TABLE `r_patient_scales` DISABLE KEYS */;
INSERT INTO `r_patient_scales` VALUES (17702,878,1,0,'2021-01-21 17:15:31'),(17703,878,2,0,'2021-01-21 17:15:31'),(17704,878,3,0,'2021-01-21 17:15:31'),(17705,878,4,0,'2021-01-21 17:15:31'),(17706,878,5,0,'2021-01-21 17:15:31'),(17707,878,6,0,'2021-01-21 17:15:31'),(17708,878,7,0,'2021-01-21 17:15:31'),(17709,878,8,0,'2021-01-21 17:15:31'),(17710,878,9,0,'2021-01-21 17:15:31'),(17711,878,10,0,'2021-01-21 17:15:31'),(17712,878,11,0,'2021-01-21 17:15:31'),(17713,878,12,0,'2021-01-21 17:15:31'),(17714,878,13,0,'2021-01-21 17:15:31'),(17715,878,14,0,'2021-01-21 17:15:31'),(17716,878,15,0,'2021-01-21 17:15:31'),(17717,878,16,0,'2021-01-21 17:15:31'),(17718,878,17,0,'2021-01-21 17:15:31'),(17719,878,18,0,'2021-01-21 17:15:31'),(17720,878,19,0,'2021-01-21 17:15:31'),(17721,878,20,0,'2021-01-21 17:15:31'),(17722,878,21,0,'2021-01-21 17:15:31'),(17723,878,22,0,'2021-01-21 17:15:31'),(17724,878,23,0,'2021-01-21 17:15:31'),(17725,878,24,0,'2021-01-21 17:15:31'),(17726,878,25,0,'2021-01-21 17:15:31'),(17727,878,26,0,'2021-01-21 17:15:31'),(17728,878,27,0,'2021-01-21 17:15:31'),(17729,878,28,0,'2021-01-21 17:15:31'),(18274,902,1,0,'2021-02-20 11:20:11'),(18275,902,2,0,'2021-02-20 11:20:11'),(18276,902,3,0,'2021-02-20 11:20:11'),(18277,902,4,0,'2021-02-20 11:20:11'),(18278,902,5,0,'2021-02-20 11:20:11'),(18279,902,6,0,'2021-02-20 11:20:11'),(18280,902,7,0,'2021-02-22 10:00:28'),(18281,902,8,0,'2021-02-20 11:20:11'),(18282,902,9,0,'2021-02-20 11:20:11'),(18283,902,10,0,'2021-02-20 11:20:11'),(18284,902,11,1,'2021-02-22 15:54:51'),(18285,902,12,0,'2021-02-20 11:20:11'),(18286,902,13,0,'2021-02-20 11:20:11'),(18287,902,14,0,'2021-02-20 11:20:11'),(18288,902,15,0,'2021-02-20 11:20:11'),(18289,902,16,0,'2021-02-20 11:20:11'),(18290,902,17,0,'2021-02-20 11:20:11'),(18291,902,18,0,'2021-02-20 11:20:11'),(18292,902,19,0,'2021-02-20 11:20:11'),(18293,902,20,0,'2021-02-20 11:20:11'),(18294,902,21,0,'2021-02-20 11:20:11'),(18295,902,22,0,'2021-02-20 11:20:11'),(18296,902,23,0,'2021-02-20 11:20:11'),(18297,902,24,0,'2021-02-20 11:20:11'),(18298,902,25,0,'2021-02-20 11:20:11'),(18299,902,26,0,'2021-02-20 11:20:11'),(18300,902,27,0,'2021-02-20 11:20:11'),(18301,902,28,0,'2021-02-20 11:20:11'),(18302,903,1,0,'2021-02-20 11:20:52'),(18303,903,2,0,'2021-02-20 11:20:52'),(18304,903,3,0,'2021-02-20 11:20:52'),(18305,903,4,0,'2021-02-20 11:20:52'),(18306,903,5,0,'2021-02-20 11:20:52'),(18307,903,6,0,'2021-02-20 11:20:52'),(18308,903,7,0,'2021-02-20 11:20:52'),(18309,903,8,0,'2021-02-20 11:20:52'),(18310,903,9,0,'2021-02-20 11:20:52'),(18311,903,10,0,'2021-02-20 11:20:52'),(18312,903,11,0,'2021-02-20 11:20:52'),(18313,903,12,0,'2021-02-20 11:20:52'),(18314,903,13,0,'2021-02-20 11:20:52'),(18315,903,14,0,'2021-02-20 11:20:52'),(18316,903,15,0,'2021-02-20 11:20:52'),(18317,903,16,0,'2021-02-20 11:20:52'),(18318,903,17,0,'2021-02-20 11:20:52'),(18319,903,18,0,'2021-02-20 11:20:52'),(18320,903,19,0,'2021-02-20 11:20:52'),(18321,903,20,0,'2021-02-20 11:20:52'),(18322,903,21,0,'2021-02-20 11:20:52'),(18323,903,22,0,'2021-02-20 11:20:52'),(18324,903,23,0,'2021-02-20 11:20:52'),(18325,903,24,0,'2021-02-20 11:20:52'),(18326,903,25,0,'2021-02-20 11:20:52'),(18327,903,26,0,'2021-02-20 11:20:52'),(18328,903,27,0,'2021-02-20 11:20:52'),(18329,903,28,0,'2021-02-20 11:20:52'),(18330,904,1,0,'2021-02-20 11:21:22'),(18331,904,2,0,'2021-02-20 11:21:22'),(18332,904,3,0,'2021-02-20 11:21:22'),(18333,904,4,0,'2021-02-20 11:21:22'),(18334,904,5,0,'2021-02-20 11:21:22'),(18335,904,6,0,'2021-02-20 11:21:22'),(18336,904,7,0,'2021-02-20 11:21:22'),(18337,904,8,0,'2021-02-20 11:21:22'),(18338,904,9,0,'2021-02-20 11:21:22'),(18339,904,10,0,'2021-02-20 11:21:22'),(18340,904,11,0,'2021-02-20 11:21:22'),(18341,904,12,0,'2021-02-20 11:21:22'),(18342,904,13,0,'2021-02-20 11:21:22'),(18343,904,14,0,'2021-02-20 11:21:22'),(18344,904,15,0,'2021-02-20 11:21:22'),(18345,904,16,0,'2021-02-20 11:21:22'),(18346,904,17,0,'2021-02-20 11:21:22'),(18347,904,18,0,'2021-02-20 11:21:22'),(18348,904,19,0,'2021-02-20 11:21:22'),(18349,904,20,0,'2021-02-20 11:21:22'),(18350,904,21,0,'2021-02-20 11:21:22'),(18351,904,22,0,'2021-02-20 11:21:22'),(18352,904,23,0,'2021-02-20 11:21:22'),(18353,904,24,0,'2021-02-20 11:21:22'),(18354,904,25,0,'2021-02-20 11:21:22'),(18355,904,26,0,'2021-02-20 11:21:22'),(18356,904,27,0,'2021-02-20 11:21:22'),(18357,904,28,0,'2021-02-20 11:21:22'),(18358,905,1,0,'2021-02-20 11:22:17'),(18359,905,2,0,'2021-02-20 11:22:17'),(18360,905,3,0,'2021-02-20 11:22:17'),(18361,905,4,0,'2021-02-20 11:22:17'),(18362,905,5,0,'2021-02-20 11:22:17'),(18363,905,6,0,'2021-02-20 11:22:17'),(18364,905,7,0,'2021-02-20 11:22:17'),(18365,905,8,0,'2021-02-20 11:22:17'),(18366,905,9,0,'2021-02-20 11:22:17'),(18367,905,10,0,'2021-02-20 11:22:17'),(18368,905,11,0,'2021-02-20 11:22:17'),(18369,905,12,0,'2021-02-20 11:22:17'),(18370,905,13,0,'2021-02-20 11:22:17'),(18371,905,14,0,'2021-02-20 11:22:17'),(18372,905,15,0,'2021-02-20 11:22:17'),(18373,905,16,0,'2021-02-20 11:22:17'),(18374,905,21,0,'2021-02-20 11:22:17'),(18375,905,22,0,'2021-02-20 11:22:17'),(18376,905,23,0,'2021-02-20 11:22:17'),(18377,905,24,0,'2021-02-20 11:22:17'),(18378,905,25,0,'2021-02-20 11:22:17'),(18379,905,26,0,'2021-02-20 11:22:17'),(18380,905,27,0,'2021-02-20 11:22:17'),(18381,905,28,0,'2021-02-20 11:22:17'),(18382,906,1,0,'2021-02-20 11:23:55'),(18383,906,2,0,'2021-02-20 11:23:55'),(18384,906,3,0,'2021-02-20 11:23:55'),(18385,906,4,0,'2021-02-20 11:23:55'),(18386,906,5,0,'2021-02-20 11:23:55'),(18387,906,6,0,'2021-02-20 11:23:55'),(18388,906,7,0,'2021-02-20 11:23:55'),(18389,906,8,0,'2021-02-20 11:23:55'),(18390,906,9,0,'2021-02-20 11:23:55'),(18391,906,10,0,'2021-02-20 11:23:55'),(18392,906,11,0,'2021-02-20 11:23:55'),(18393,906,12,0,'2021-02-20 11:23:55'),(18394,906,13,0,'2021-02-20 11:23:55'),(18395,906,14,0,'2021-02-20 11:23:55'),(18396,906,15,0,'2021-02-20 11:23:55'),(18397,906,16,0,'2021-02-20 11:23:55'),(18398,906,17,0,'2021-02-20 11:23:55'),(18399,906,18,0,'2021-02-20 11:23:55'),(18400,906,19,0,'2021-02-20 11:23:55'),(18401,906,20,0,'2021-02-20 11:23:55'),(18402,906,21,0,'2021-02-20 11:23:55'),(18403,906,22,0,'2021-02-20 11:23:55'),(18404,906,23,0,'2021-02-20 11:23:55'),(18405,906,24,0,'2021-02-20 11:23:55'),(18406,906,25,0,'2021-02-20 11:23:55'),(18407,906,26,0,'2021-02-20 11:23:55'),(18408,906,27,0,'2021-02-20 11:23:55'),(18409,906,28,0,'2021-02-20 11:23:55'),(18410,907,1,1,'2021-02-20 11:26:09'),(18411,907,2,0,'2021-02-20 11:24:52'),(18412,907,3,1,'2021-02-20 11:26:25'),(18413,907,4,0,'2021-02-20 11:24:52'),(18414,907,5,0,'2021-02-20 11:24:52'),(18415,907,6,0,'2021-02-20 11:24:52'),(18416,907,7,1,'2021-02-20 11:27:09'),(18417,907,8,0,'2021-02-20 11:27:29'),(18418,907,9,0,'2021-02-20 11:24:52'),(18419,907,10,0,'2021-02-20 11:24:52'),(18420,907,11,1,'2021-02-22 15:58:53'),(18421,907,12,0,'2021-02-20 11:24:52'),(18422,907,13,0,'2021-02-20 11:24:52'),(18423,907,14,0,'2021-02-20 11:24:52'),(18424,907,15,0,'2021-02-20 11:24:52'),(18425,907,16,0,'2021-02-20 11:24:52'),(18426,907,17,0,'2021-02-20 11:24:52'),(18427,907,18,0,'2021-02-20 11:24:52'),(18428,907,19,0,'2021-02-20 11:24:52'),(18429,907,20,0,'2021-02-20 11:24:52'),(18430,907,21,0,'2021-02-20 11:24:52'),(18431,907,22,0,'2021-02-20 11:24:52'),(18432,907,23,0,'2021-02-20 11:24:52'),(18433,907,24,0,'2021-02-20 11:24:52'),(18434,907,25,0,'2021-02-20 11:24:52'),(18435,907,26,0,'2021-02-20 11:24:52'),(18436,907,27,0,'2021-02-20 11:24:52'),(18437,907,28,0,'2021-02-20 11:24:52'),(18438,908,1,0,'2021-02-20 11:33:25'),(18439,908,2,0,'2021-02-20 11:33:25'),(18440,908,3,0,'2021-02-20 11:33:25'),(18441,908,4,0,'2021-02-20 11:33:25'),(18442,908,5,0,'2021-02-20 11:33:25'),(18443,908,6,0,'2021-02-20 11:33:25'),(18444,908,7,1,'2021-02-20 11:33:43'),(18445,908,8,1,'2021-02-20 11:37:24'),(18446,908,9,0,'2021-02-20 11:34:41'),(18447,908,10,1,'2021-02-20 11:34:34'),(18448,908,13,0,'2021-02-20 11:33:25'),(18449,908,14,0,'2021-02-20 11:33:25'),(18450,908,21,0,'2021-02-20 11:33:25'),(18451,908,22,0,'2021-02-20 11:33:25'),(18452,908,23,0,'2021-02-20 11:33:25'),(18453,908,24,0,'2021-02-20 11:33:25'),(18454,908,25,0,'2021-02-20 11:33:25'),(18455,908,27,0,'2021-02-20 11:33:25'),(18456,908,28,0,'2021-02-20 11:33:25'),(18457,909,1,1,'2021-02-20 12:35:14'),(18458,909,2,1,'2021-02-20 12:35:25'),(18459,909,3,0,'2021-02-20 12:33:12'),(18460,909,4,0,'2021-02-20 12:33:12'),(18461,909,5,0,'2021-02-20 12:33:12'),(18462,909,6,0,'2021-02-20 12:33:12'),(18463,909,7,1,'2021-02-20 12:36:54'),(18464,909,8,1,'2021-02-20 12:37:10'),(18465,909,9,0,'2021-02-20 12:37:30'),(18466,909,10,0,'2021-02-20 12:33:12'),(18467,909,11,1,'2021-02-20 12:38:27'),(18468,909,12,1,'2021-02-20 12:38:57'),(18469,909,13,0,'2021-02-20 12:33:12'),(18470,909,14,0,'2021-02-20 12:33:12'),(18471,909,15,0,'2021-02-20 12:33:12'),(18472,909,16,0,'2021-02-20 12:33:12'),(18473,909,17,0,'2021-02-20 12:33:12'),(18474,909,18,0,'2021-02-20 12:33:12'),(18475,909,19,0,'2021-02-20 12:33:12'),(18476,909,20,0,'2021-02-20 12:33:12'),(18477,909,21,0,'2021-02-20 12:33:12'),(18478,909,22,0,'2021-02-20 12:33:12'),(18479,909,23,0,'2021-02-20 12:33:12'),(18480,909,24,0,'2021-02-20 12:33:12'),(18481,909,25,0,'2021-02-20 12:33:12'),(18482,909,26,0,'2021-02-20 12:33:12'),(18483,909,27,0,'2021-02-20 12:33:12'),(18484,909,28,0,'2021-02-20 12:33:12'),(18541,912,1,1,'2021-02-20 13:50:22'),(18542,912,2,1,'2021-02-20 13:50:40'),(18543,912,3,0,'2021-02-20 13:49:38'),(18544,912,4,0,'2021-02-20 13:49:38'),(18545,912,5,0,'2021-02-20 13:49:38'),(18546,912,6,0,'2021-02-20 13:49:38'),(18547,912,7,1,'2021-02-20 13:51:39'),(18548,912,8,0,'2021-02-20 13:54:12'),(18549,912,9,0,'2021-02-20 13:52:36'),(18550,912,10,0,'2021-02-20 13:49:38'),(18551,912,13,0,'2021-02-20 13:49:38'),(18552,912,14,0,'2021-02-20 13:49:38'),(18553,912,21,1,'2021-02-20 13:53:07'),(18554,912,22,0,'2021-02-20 13:49:38'),(18555,912,23,0,'2021-02-20 13:49:38'),(18556,912,24,0,'2021-02-20 13:49:38'),(18557,912,25,0,'2021-02-20 13:49:38'),(18558,912,27,0,'2021-02-20 13:49:38'),(18559,912,28,0,'2021-02-20 13:49:38'),(18560,913,1,0,'2021-02-20 14:04:36'),(18561,913,2,0,'2021-02-20 14:04:36'),(18562,913,3,0,'2021-02-20 14:04:36'),(18563,913,4,0,'2021-02-20 14:04:36'),(18564,913,5,0,'2021-02-20 14:04:36'),(18565,913,6,0,'2021-02-20 14:04:36'),(18566,913,7,0,'2021-02-20 14:04:36'),(18567,913,8,0,'2021-02-20 14:04:36'),(18568,913,9,0,'2021-02-20 14:04:36'),(18569,913,10,0,'2021-02-20 14:04:36'),(18570,913,13,0,'2021-02-20 14:04:36'),(18571,913,14,0,'2021-02-20 14:04:36'),(18572,913,21,0,'2021-02-20 14:04:36'),(18573,913,22,0,'2021-02-20 14:04:36'),(18574,913,23,0,'2021-02-20 14:04:36'),(18575,913,24,0,'2021-02-20 14:04:36'),(18576,913,25,0,'2021-02-20 14:04:36'),(18577,913,27,0,'2021-02-20 14:04:36'),(18578,913,28,0,'2021-02-20 14:04:36'),(18579,914,1,1,'2021-02-20 17:10:35'),(18580,914,2,0,'2021-02-20 16:54:12'),(18581,914,3,1,'2021-02-20 16:56:08'),(18582,914,4,0,'2021-02-20 16:54:12'),(18583,914,5,0,'2021-02-20 16:54:12'),(18584,914,6,0,'2021-02-20 16:54:12'),(18585,914,7,1,'2021-02-20 16:56:51'),(18586,914,8,1,'2021-02-20 17:11:23'),(18587,914,9,0,'2021-02-20 17:11:50'),(18588,914,10,0,'2021-02-20 16:54:12'),(18589,914,11,1,'2021-02-20 16:58:08'),(18590,914,12,1,'2021-02-20 17:12:25'),(18591,914,13,0,'2021-02-20 16:54:12'),(18592,914,14,0,'2021-02-20 16:54:12'),(18593,914,15,0,'2021-02-20 16:54:12'),(18594,914,16,0,'2021-02-20 16:54:12'),(18595,914,17,0,'2021-02-20 16:54:12'),(18596,914,18,0,'2021-02-20 16:54:12'),(18597,914,19,0,'2021-02-20 16:54:12'),(18598,914,20,0,'2021-02-20 16:54:12'),(18599,914,21,0,'2021-02-20 16:54:12'),(18600,914,22,0,'2021-02-20 16:54:12'),(18601,914,23,0,'2021-02-20 16:54:12'),(18602,914,24,0,'2021-02-20 16:54:12'),(18603,914,25,0,'2021-02-20 16:54:12'),(18604,914,26,0,'2021-02-20 16:54:12'),(18605,914,27,0,'2021-02-20 16:54:12'),(18606,914,28,0,'2021-02-20 16:54:12'),(18607,915,1,1,'2021-02-20 16:55:32'),(18608,915,2,0,'2021-02-20 16:55:27'),(18609,915,3,0,'2021-02-20 16:55:27'),(18610,915,4,0,'2021-02-20 16:55:27'),(18611,915,5,0,'2021-02-20 16:55:27'),(18612,915,6,0,'2021-02-20 16:55:27'),(18613,915,7,0,'2021-02-20 16:55:27'),(18614,915,8,0,'2021-02-20 16:55:27'),(18615,915,9,0,'2021-02-20 16:55:27'),(18616,915,10,0,'2021-02-20 16:55:27'),(18617,915,13,0,'2021-02-20 16:55:27'),(18618,915,14,0,'2021-02-20 16:55:27'),(18619,915,21,0,'2021-02-20 16:55:27'),(18620,915,22,0,'2021-02-20 16:55:27'),(18621,915,23,0,'2021-02-20 16:55:27'),(18622,915,24,0,'2021-02-20 16:55:27'),(18623,915,25,0,'2021-02-20 16:55:27'),(18624,915,27,0,'2021-02-20 16:55:27'),(18625,915,28,0,'2021-02-20 16:55:27'),(18626,916,1,0,'2021-02-20 16:59:10'),(18627,916,2,0,'2021-02-20 16:59:10'),(18628,916,3,0,'2021-02-20 16:59:10'),(18629,916,4,0,'2021-02-20 16:59:10'),(18630,916,5,0,'2021-02-20 16:59:10'),(18631,916,6,0,'2021-02-20 16:59:10'),(18632,916,7,0,'2021-02-20 16:59:10'),(18633,916,8,0,'2021-02-20 16:59:10'),(18634,916,9,0,'2021-02-20 16:59:10'),(18635,916,10,0,'2021-02-20 16:59:10'),(18636,916,13,0,'2021-02-20 16:59:10'),(18637,916,14,0,'2021-02-20 16:59:10'),(18638,916,21,0,'2021-02-20 16:59:10'),(18639,916,22,0,'2021-02-20 16:59:10'),(18640,916,23,0,'2021-02-20 16:59:10'),(18641,916,24,0,'2021-02-20 16:59:10'),(18642,916,25,0,'2021-02-20 16:59:10'),(18643,916,27,0,'2021-02-20 16:59:10'),(18644,916,28,0,'2021-02-20 16:59:10'),(18645,917,1,0,'2021-02-20 17:13:38'),(18646,917,2,0,'2021-02-20 17:13:38'),(18647,917,3,0,'2021-02-20 17:13:38'),(18648,917,4,0,'2021-02-20 17:13:38'),(18649,917,5,0,'2021-02-20 17:13:38'),(18650,917,6,0,'2021-02-20 17:13:38'),(18651,917,7,0,'2021-02-20 17:13:38'),(18652,917,8,0,'2021-02-20 17:13:38'),(18653,917,9,0,'2021-02-20 17:13:38'),(18654,917,10,0,'2021-02-20 17:13:38'),(18655,917,13,0,'2021-02-20 17:13:38'),(18656,917,14,0,'2021-02-20 17:13:38'),(18657,917,21,0,'2021-02-20 17:13:38'),(18658,917,22,0,'2021-02-20 17:13:38'),(18659,917,23,0,'2021-02-20 17:13:38'),(18660,917,24,0,'2021-02-20 17:13:38'),(18661,917,25,0,'2021-02-20 17:13:38'),(18662,917,27,0,'2021-02-20 17:13:38'),(18663,917,28,0,'2021-02-20 17:13:38'),(18664,918,1,1,'2021-02-20 18:06:49'),(18665,918,2,1,'2021-02-20 18:07:17'),(18666,918,3,0,'2021-02-20 18:06:03'),(18667,918,4,0,'2021-02-20 18:06:03'),(18668,918,5,0,'2021-02-20 18:06:03'),(18669,918,6,0,'2021-02-20 18:06:03'),(18670,918,7,1,'2021-02-20 18:08:23'),(18671,918,8,0,'2021-02-20 18:09:08'),(18672,918,9,0,'2021-02-20 18:08:54'),(18673,918,10,0,'2021-02-20 18:06:03'),(18674,918,11,1,'2021-02-20 18:09:45'),(18675,918,12,1,'2021-02-22 15:57:21'),(18676,918,13,0,'2021-02-20 18:06:03'),(18677,918,14,0,'2021-02-20 18:06:03'),(18678,918,15,0,'2021-02-20 18:06:03'),(18679,918,16,0,'2021-02-20 18:06:03'),(18680,918,17,0,'2021-02-20 18:06:03'),(18681,918,18,0,'2021-02-20 18:06:03'),(18682,918,19,0,'2021-02-20 18:06:03'),(18683,918,20,0,'2021-02-20 18:06:03'),(18684,918,21,1,'2021-02-20 18:10:33'),(18685,918,22,0,'2021-02-20 18:06:03'),(18686,918,23,0,'2021-02-20 18:06:03'),(18687,918,24,0,'2021-02-20 18:06:03'),(18688,918,25,0,'2021-02-20 18:06:03'),(18689,918,26,0,'2021-02-20 18:06:03'),(18690,918,27,0,'2021-02-20 18:06:03'),(18691,918,28,0,'2021-02-20 18:06:03'),(18692,919,1,0,'2021-02-20 18:14:46'),(18693,919,2,0,'2021-02-20 18:14:46'),(18694,919,3,0,'2021-02-20 18:14:46'),(18695,919,4,0,'2021-02-20 18:14:46'),(18696,919,5,0,'2021-02-20 18:14:46'),(18697,919,6,0,'2021-02-20 18:14:46'),(18698,919,7,0,'2021-02-20 18:14:46'),(18699,919,8,0,'2021-02-20 18:14:46'),(18700,919,9,0,'2021-02-20 18:14:46'),(18701,919,10,0,'2021-02-20 18:14:46'),(18702,919,13,0,'2021-02-20 18:14:46'),(18703,919,14,0,'2021-02-20 18:14:46'),(18704,919,21,0,'2021-02-20 18:14:46'),(18705,919,22,0,'2021-02-20 18:14:46'),(18706,919,23,0,'2021-02-20 18:14:46'),(18707,919,24,0,'2021-02-20 18:14:46'),(18708,919,25,0,'2021-02-20 18:14:46'),(18709,919,27,0,'2021-02-20 18:14:46'),(18710,919,28,0,'2021-02-20 18:14:46'),(18711,920,1,0,'2021-02-20 18:49:57'),(18712,920,2,0,'2021-02-20 18:49:57'),(18713,920,3,0,'2021-02-20 18:49:57'),(18714,920,4,0,'2021-02-20 18:49:57'),(18715,920,5,0,'2021-02-20 18:49:57'),(18716,920,6,0,'2021-02-20 18:49:57'),(18717,920,7,0,'2021-02-20 18:49:57'),(18718,920,8,0,'2021-02-20 18:49:57'),(18719,920,9,0,'2021-02-20 18:49:57'),(18720,920,10,0,'2021-02-20 18:49:57'),(18721,920,13,0,'2021-02-20 18:49:57'),(18722,920,14,0,'2021-02-20 18:49:57'),(18723,920,21,0,'2021-02-20 18:49:57'),(18724,920,22,0,'2021-02-20 18:49:57'),(18725,920,23,0,'2021-02-20 18:49:57'),(18726,920,24,0,'2021-02-20 18:49:57'),(18727,920,25,0,'2021-02-20 18:49:57'),(18728,920,27,0,'2021-02-20 18:49:57'),(18729,920,28,0,'2021-02-20 18:49:57'),(18730,921,1,0,'2021-02-21 15:37:59'),(18731,921,2,0,'2021-02-21 15:37:59'),(18732,921,3,0,'2021-02-21 15:37:59'),(18733,921,4,0,'2021-02-21 15:37:59'),(18734,921,5,0,'2021-02-21 15:37:59'),(18735,921,6,0,'2021-02-21 15:37:59'),(18736,921,7,0,'2021-02-21 15:37:59'),(18737,921,8,0,'2021-02-21 15:37:59'),(18738,921,9,0,'2021-02-21 15:37:59'),(18739,921,10,0,'2021-02-21 15:37:59'),(18740,921,13,0,'2021-02-21 15:37:59'),(18741,921,14,0,'2021-02-21 15:37:59'),(18742,921,21,0,'2021-02-21 15:37:59'),(18743,921,22,0,'2021-02-21 15:37:59'),(18744,921,23,0,'2021-02-21 15:37:59'),(18745,921,24,0,'2021-02-21 15:37:59'),(18746,921,25,0,'2021-02-21 15:37:59'),(18747,921,27,0,'2021-02-21 15:37:59'),(18748,921,28,0,'2021-02-21 15:37:59'),(18749,922,1,0,'2021-02-21 17:29:14'),(18750,922,2,0,'2021-02-21 17:29:14'),(18751,922,3,0,'2021-02-21 17:29:14'),(18752,922,4,0,'2021-02-21 17:29:14'),(18753,922,5,0,'2021-02-21 17:29:14'),(18754,922,6,0,'2021-02-21 17:29:14'),(18755,922,7,0,'2021-02-21 17:29:14'),(18756,922,8,0,'2021-02-21 17:29:14'),(18757,922,9,0,'2021-02-21 17:29:14'),(18758,922,10,0,'2021-02-21 17:29:14'),(18759,922,11,0,'2021-02-21 17:29:14'),(18760,922,12,0,'2021-02-21 17:29:14'),(18761,922,13,0,'2021-02-21 17:29:14'),(18762,922,14,0,'2021-02-21 17:29:14'),(18763,922,15,0,'2021-02-21 17:29:14'),(18764,922,16,0,'2021-02-21 17:29:14'),(18765,922,17,0,'2021-02-21 17:29:14'),(18766,922,18,0,'2021-02-21 17:29:14'),(18767,922,19,0,'2021-02-21 17:29:14'),(18768,922,20,0,'2021-02-21 17:29:14'),(18769,922,21,0,'2021-02-21 17:29:14'),(18770,922,22,0,'2021-02-21 17:29:14'),(18771,922,23,0,'2021-02-21 17:29:14'),(18772,922,24,0,'2021-02-21 17:29:14'),(18773,922,25,0,'2021-02-21 17:29:14'),(18774,922,26,0,'2021-02-21 17:29:14'),(18775,922,27,0,'2021-02-21 17:29:14'),(18776,922,28,0,'2021-02-21 17:29:14');
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
  `year_of_school` varchar(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_suicidal`
--

LOCK TABLES `r_patient_suicidal` WRITE;
/*!40000 ALTER TABLE `r_patient_suicidal` DISABLE KEYS */;
INSERT INTO `r_patient_suicidal` VALUES (2,909,12,0,NULL,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 12:38:57','2021-02-20 12:38:57',NULL),(3,914,12,0,NULL,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 17:12:25','2021-02-20 17:12:25',NULL),(4,918,12,0,NULL,1,1,1,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-22 15:56:49','2021-02-22 15:56:49',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_wcst`
--

LOCK TABLES `r_patient_wcst` WRITE;
/*!40000 ALTER TABLE `r_patient_wcst` DISABLE KEYS */;
INSERT INTO `r_patient_wcst` VALUES (2,912,21,1,3,3,3,3,3,3,3,3,33,3,3,3,2,'2021-02-20 13:53:07','2021-02-20 13:53:07'),(3,918,21,1,1,1,1,1,1,1,1,1,1,1,1,1,2,'2021-02-20 18:10:33','2021-02-20 18:10:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ybobsessiontable`
--

LOCK TABLES `r_patient_ybobsessiontable` WRITE;
/*!40000 ALTER TABLE `r_patient_ybobsessiontable` DISABLE KEYS */;
INSERT INTO `r_patient_ybobsessiontable` VALUES (3,902,11,0,3,1,1,2,1,1,0,3,1,NULL,2,'2021-02-20 11:36:07','2021-02-22 15:54:50'),(4,909,11,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,2,'2021-02-20 12:38:27','2021-02-20 12:38:27'),(5,914,11,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,2,'2021-02-20 16:58:08','2021-02-20 16:58:08'),(6,918,11,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,2,'2021-02-20 18:09:45','2021-02-20 18:09:45'),(7,907,11,0,NULL,0,NULL,NULL,NULL,0,1,1,0,NULL,2,'2021-02-22 15:58:53','2021-02-22 15:58:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ymrs`
--

LOCK TABLES `r_patient_ymrs` WRITE;
/*!40000 ALTER TABLE `r_patient_ymrs` DISABLE KEYS */;
INSERT INTO `r_patient_ymrs` VALUES (1,908,9,2,2,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 11:34:15','2021-02-20 11:34:41'),(2,909,9,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 12:37:30','2021-02-20 12:37:30'),(3,912,9,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 13:52:17','2021-02-20 13:52:36'),(4,914,9,3,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 16:57:30','2021-02-20 17:11:49'),(5,918,9,1,2,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2021-02-20 18:08:54','2021-02-20 18:08:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_self_test_duration`
--

LOCK TABLES `r_self_test_duration` WRITE;
/*!40000 ALTER TABLE `r_self_test_duration` DISABLE KEYS */;
INSERT INTO `r_self_test_duration` VALUES (19,888,13,1,4097),(20,888,13,2,7950),(21,888,13,3,2208),(22,888,13,4,2960),(23,888,13,5,2055),(24,888,13,6,1448),(25,888,13,7,1224),(26,888,13,8,1280),(27,888,13,9,1471),(28,888,13,10,369),(29,888,13,11,218),(30,888,13,12,125),(31,888,13,13,185),(32,888,13,14,177),(33,888,13,15,151),(34,888,13,16,127),(35,888,13,17,168),(36,888,13,18,154),(37,888,13,19,152),(38,888,13,20,151),(39,888,13,21,129),(40,888,13,22,168),(41,888,13,23,151),(42,888,13,24,167),(43,888,13,25,145),(44,888,13,26,145),(45,888,13,27,175),(46,888,13,28,161),(47,888,13,29,142),(48,888,13,30,169),(49,888,13,31,160),(50,888,13,32,128),(51,888,13,33,152),(52,888,13,34,135),(53,888,13,35,136),(54,888,13,36,3729),(55,888,13,37,528),(56,888,13,38,376),(57,888,13,39,352),(58,888,13,40,1161),(59,888,13,41,703),(60,888,13,42,537),(61,888,13,43,2327),(62,888,13,45,856),(63,888,13,46,664),(64,888,14,1,2001),(65,888,14,2,466),(66,888,14,3,85476),(67,888,14,4,511),(68,888,14,5,400),(69,888,14,6,321),(70,888,14,7,192),(71,888,14,8,159),(72,888,14,9,160),(73,888,14,10,138),(74,888,14,11,167),(75,888,14,12,151),(76,888,14,13,160),(77,888,14,14,153),(78,888,15,1,40015),(79,888,15,2,182),(80,888,15,3,161),(81,888,15,4,158),(82,888,15,5,136),(83,888,15,6,136),(84,888,15,7,176),(85,888,15,8,128),(86,888,15,9,192),(87,888,15,10,169),(88,888,15,11,143),(89,888,15,12,160),(90,888,15,13,143),(91,888,15,14,169),(92,888,15,15,146),(93,888,15,16,151),(94,888,15,17,151),(95,888,15,18,183),(96,888,17,1,2533),(97,888,17,2,414),(98,888,17,3,177),(99,888,17,4,144),(100,888,17,5,264),(101,888,17,6,160),(102,888,17,7,274),(103,888,17,8,181),(104,888,17,9,289),(105,888,17,10,161),(106,888,17,11,118),(107,888,17,12,145),(108,888,17,13,120),(109,888,17,14,153),(110,888,17,15,136),(111,888,17,16,312),(112,888,17,17,2590),(113,888,17,18,321),(114,888,17,19,191),(115,888,17,20,177),(116,888,17,21,208),(117,888,17,22,166),(118,888,17,23,177),(119,888,17,24,185),(120,888,17,25,784),(121,888,17,26,568),(122,888,17,27,391),(123,888,17,28,386),(124,888,17,29,3567),(125,888,17,30,185),(126,888,17,31,327),(127,888,17,32,210),(128,888,17,33,157),(129,888,17,34,169),(130,888,17,35,200),(131,888,17,36,184),(132,888,11,1,1959),(133,888,11,2,1463),(134,888,11,3,1784),(135,888,11,1,3059),(136,888,11,6,1567),(137,896,11,1,2881),(138,896,11,2,1255),(139,896,11,3,1320),(140,896,11,4,1464),(141,896,11,5,1185),(142,896,11,6,1823),(143,896,11,7,1328),(144,896,11,8,1280),(145,896,11,9,1920),(146,896,11,10,1416),(147,896,12,1,2494),(148,896,12,2,3494),(149,896,12,3,2562),(150,896,12,4,1792),(151,896,12,5,1551),(152,896,12,6,1441),(153,896,12,7,1488),(154,896,12,8,1368),(155,896,12,9,1407),(156,896,12,10,1313),(157,896,12,11,1424),(158,896,12,12,1199),(159,908,13,1,3816),(160,908,13,2,2296),(161,908,13,3,2208),(162,908,13,4,1776),(163,908,13,5,2880),(164,908,13,6,1663),(165,908,13,7,1184),(166,908,13,8,1105),(167,908,13,9,1119),(168,908,13,10,1057),(169,908,13,11,1159),(170,908,13,12,1576),(171,908,13,13,1177),(172,908,13,14,1007),(173,908,13,15,1207),(174,908,13,16,977),(175,908,13,17,1129),(176,908,13,18,1127),(177,908,13,19,1400),(178,908,13,20,1313),(179,908,13,21,1400),(180,908,13,22,3015),(181,908,13,23,1248),(182,908,13,24,2784),(183,908,13,25,1104),(184,908,13,26,1048),(185,908,13,27,993),(186,908,13,28,919),(187,908,13,29,1136),(188,902,11,1,3039),(189,902,11,6,2271),(190,902,12,1,7649),(191,907,13,1,2403),(192,907,13,2,1895),(193,907,13,3,2143),(194,907,13,4,3232),(195,907,13,5,1377),(196,907,13,6,1423),(197,907,13,7,1504),(198,907,13,8,1585),(199,907,13,9,1591),(200,907,13,10,1065),(201,907,13,11,1455),(202,907,13,12,1600),(203,907,13,13,1777),(204,907,13,14,1247),(205,907,13,15,1513),(206,907,13,16,1160),(207,907,13,17,1072),(208,907,13,18,1607),(209,907,20,1,3195),(210,907,20,2,1784),(211,907,20,3,2736),(212,907,20,4,1224),(213,907,20,5,1918),(214,907,20,6,1616),(215,909,11,1,23537),(216,909,11,6,1872),(217,909,12,1,2975),(218,909,12,3,6550),(219,909,12,4,1415),(220,909,12,5,1273),(221,909,12,6,1600),(222,909,12,7,1719),(223,909,12,8,1416),(224,909,12,9,1905),(225,909,12,10,2184),(226,909,12,11,1744),(227,909,12,12,1440),(228,914,11,1,18016),(229,914,11,6,4444),(230,914,12,1,5092),(231,914,12,3,1822),(232,914,12,4,1392),(233,914,12,5,1672),(234,914,12,6,1236),(235,914,12,7,1463),(236,914,12,8,1400),(237,914,12,9,1761),(238,914,12,10,1711),(239,914,12,11,1936),(240,914,12,12,2400),(241,918,11,1,25006),(242,918,11,6,3661),(243,902,11,1,9007),(244,902,11,2,6791),(245,902,11,3,4113),(246,902,11,4,1655),(247,902,11,5,1697),(248,902,11,6,1462),(249,902,11,7,2409),(250,902,11,8,1913),(251,902,11,9,1784),(252,902,11,10,2016),(253,902,11,1,2024),(254,902,11,6,1431),(255,902,11,1,6078),(256,902,11,6,2111),(257,902,11,1,1857),(258,902,11,6,1535),(259,918,12,1,2134),(260,918,12,3,15942),(261,918,12,4,1392),(262,918,12,5,1287),(263,918,12,6,1353),(264,918,12,7,1289),(265,918,12,8,1680),(266,918,12,9,1272),(267,918,12,10,1552),(268,918,12,11,1191),(269,918,12,12,1280),(270,907,11,1,2364),(271,907,11,6,2566),(272,907,11,7,1432),(273,907,11,8,1233),(274,907,11,9,1864),(275,907,11,10,1457);
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

-- Dump completed on 2021-02-23 10:05:38
