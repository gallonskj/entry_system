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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add b patient appointment',7,'add_bpatientappointment'),(26,'Can change b patient appointment',7,'change_bpatientappointment'),(27,'Can delete b patient appointment',7,'delete_bpatientappointment'),(28,'Can view b patient appointment',7,'view_bpatientappointment'),(29,'Can add b patient base info',8,'add_bpatientbaseinfo'),(30,'Can change b patient base info',8,'change_bpatientbaseinfo'),(31,'Can delete b patient base info',8,'delete_bpatientbaseinfo'),(32,'Can view b patient base info',8,'view_bpatientbaseinfo'),(33,'Can add d patient appointment',9,'add_dpatientappointment'),(34,'Can change d patient appointment',9,'change_dpatientappointment'),(35,'Can delete d patient appointment',9,'delete_dpatientappointment'),(36,'Can view d patient appointment',9,'view_dpatientappointment'),(37,'Can add d patient detail',10,'add_dpatientdetail'),(38,'Can change d patient detail',10,'change_dpatientdetail'),(39,'Can delete d patient detail',10,'delete_dpatientdetail'),(40,'Can view d patient detail',10,'view_dpatientdetail'),(41,'Can add d scales',11,'add_dscales'),(42,'Can change d scales',11,'change_dscales'),(43,'Can delete d scales',11,'delete_dscales'),(44,'Can view d scales',11,'view_dscales'),(45,'Can add d treatments',12,'add_dtreatments'),(46,'Can change d treatments',12,'change_dtreatments'),(47,'Can delete d treatments',12,'delete_dtreatments'),(48,'Can view d treatments',12,'view_dtreatments'),(49,'Can add r patient adolescent events',13,'add_rpatientadolescentevents'),(50,'Can change r patient adolescent events',13,'change_rpatientadolescentevents'),(51,'Can delete r patient adolescent events',13,'delete_rpatientadolescentevents'),(52,'Can view r patient adolescent events',13,'view_rpatientadolescentevents'),(53,'Can add r patient atq',14,'add_rpatientatq'),(54,'Can change r patient atq',14,'change_rpatientatq'),(55,'Can delete r patient atq',14,'delete_rpatientatq'),(56,'Can view r patient atq',14,'view_rpatientatq'),(57,'Can add r patient basic information abuse',15,'add_rpatientbasicinformationabuse'),(58,'Can change r patient basic information abuse',15,'change_rpatientbasicinformationabuse'),(59,'Can delete r patient basic information abuse',15,'delete_rpatientbasicinformationabuse'),(60,'Can view r patient basic information abuse',15,'view_rpatientbasicinformationabuse'),(61,'Can add r patient basic information family',16,'add_rpatientbasicinformationfamily'),(62,'Can change r patient basic information family',16,'change_rpatientbasicinformationfamily'),(63,'Can delete r patient basic information family',16,'delete_rpatientbasicinformationfamily'),(64,'Can view r patient basic information family',16,'view_rpatientbasicinformationfamily'),(65,'Can add r patient basic information other',17,'add_rpatientbasicinformationother'),(66,'Can change r patient basic information other',17,'change_rpatientbasicinformationother'),(67,'Can delete r patient basic information other',17,'delete_rpatientbasicinformationother'),(68,'Can view r patient basic information other',17,'view_rpatientbasicinformationother'),(69,'Can add r patient basic information study',18,'add_rpatientbasicinformationstudy'),(70,'Can change r patient basic information study',18,'change_rpatientbasicinformationstudy'),(71,'Can delete r patient basic information study',18,'delete_rpatientbasicinformationstudy'),(72,'Can view r patient basic information study',18,'view_rpatientbasicinformationstudy'),(73,'Can add r patient bprs',19,'add_rpatientbprs'),(74,'Can change r patient bprs',19,'change_rpatientbprs'),(75,'Can delete r patient bprs',19,'delete_rpatientbprs'),(76,'Can view r patient bprs',19,'view_rpatientbprs'),(77,'Can add r patient chinese handy',20,'add_rpatientchinesehandy'),(78,'Can change r patient chinese handy',20,'change_rpatientchinesehandy'),(79,'Can delete r patient chinese handy',20,'delete_rpatientchinesehandy'),(80,'Can view r patient chinese handy',20,'view_rpatientchinesehandy'),(81,'Can add r patient cognitive emotion',21,'add_rpatientcognitiveemotion'),(82,'Can change r patient cognitive emotion',21,'change_rpatientcognitiveemotion'),(83,'Can delete r patient cognitive emotion',21,'delete_rpatientcognitiveemotion'),(84,'Can view r patient cognitive emotion',21,'view_rpatientcognitiveemotion'),(85,'Can add r patient diagnostic type',22,'add_rpatientdiagnostictype'),(86,'Can change r patient diagnostic type',22,'change_rpatientdiagnostictype'),(87,'Can delete r patient diagnostic type',22,'delete_rpatientdiagnostictype'),(88,'Can view r patient diagnostic type',22,'view_rpatientdiagnostictype'),(89,'Can add r patient drugs information',23,'add_rpatientdrugsinformation'),(90,'Can change r patient drugs information',23,'change_rpatientdrugsinformation'),(91,'Can delete r patient drugs information',23,'delete_rpatientdrugsinformation'),(92,'Can view r patient drugs information',23,'view_rpatientdrugsinformation'),(93,'Can add r patient fept',24,'add_rpatientfept'),(94,'Can change r patient fept',24,'change_rpatientfept'),(95,'Can delete r patient fept',24,'delete_rpatientfept'),(96,'Can view r patient fept',24,'view_rpatientfept'),(97,'Can add r patient growth',25,'add_rpatientgrowth'),(98,'Can change r patient growth',25,'change_rpatientgrowth'),(99,'Can delete r patient growth',25,'delete_rpatientgrowth'),(100,'Can view r patient growth',25,'view_rpatientgrowth'),(101,'Can add r patient hama',26,'add_rpatienthama'),(102,'Can change r patient hama',26,'change_rpatienthama'),(103,'Can delete r patient hama',26,'delete_rpatienthama'),(104,'Can view r patient hama',26,'view_rpatienthama'),(105,'Can add r patient hamd17',27,'add_rpatienthamd17'),(106,'Can change r patient hamd17',27,'change_rpatienthamd17'),(107,'Can delete r patient hamd17',27,'delete_rpatienthamd17'),(108,'Can view r patient hamd17',27,'view_rpatienthamd17'),(109,'Can add r patient happiness',28,'add_rpatienthappiness'),(110,'Can change r patient happiness',28,'change_rpatienthappiness'),(111,'Can delete r patient happiness',28,'delete_rpatienthappiness'),(112,'Can view r patient happiness',28,'view_rpatienthappiness'),(113,'Can add r patient inclusion exclusion criteria',29,'add_rpatientinclusionexclusioncriteria'),(114,'Can change r patient inclusion exclusion criteria',29,'change_rpatientinclusionexclusioncriteria'),(115,'Can delete r patient inclusion exclusion criteria',29,'delete_rpatientinclusionexclusioncriteria'),(116,'Can view r patient inclusion exclusion criteria',29,'view_rpatientinclusionexclusioncriteria'),(117,'Can add r patient informed consent signature page',30,'add_rpatientinformedconsentsignaturepage'),(118,'Can change r patient informed consent signature page',30,'change_rpatientinformedconsentsignaturepage'),(119,'Can delete r patient informed consent signature page',30,'delete_rpatientinformedconsentsignaturepage'),(120,'Can view r patient informed consent signature page',30,'view_rpatientinformedconsentsignaturepage'),(121,'Can add r patient manicsymptom',31,'add_rpatientmanicsymptom'),(122,'Can change r patient manicsymptom',31,'change_rpatientmanicsymptom'),(123,'Can delete r patient manicsymptom',31,'delete_rpatientmanicsymptom'),(124,'Can view r patient manicsymptom',31,'view_rpatientmanicsymptom'),(125,'Can add r patient medical history',32,'add_rpatientmedicalhistory'),(126,'Can change r patient medical history',32,'change_rpatientmedicalhistory'),(127,'Can delete r patient medical history',32,'delete_rpatientmedicalhistory'),(128,'Can view r patient medical history',32,'view_rpatientmedicalhistory'),(129,'Can add r patient mri examination',33,'add_rpatientmriexamination'),(130,'Can change r patient mri examination',33,'change_rpatientmriexamination'),(131,'Can delete r patient mri examination',33,'delete_rpatientmriexamination'),(132,'Can view r patient mri examination',33,'view_rpatientmriexamination'),(133,'Can add r patient mri safety questionnaire',34,'add_rpatientmrisafetyquestionnaire'),(134,'Can change r patient mri safety questionnaire',34,'change_rpatientmrisafetyquestionnaire'),(135,'Can delete r patient mri safety questionnaire',34,'delete_rpatientmrisafetyquestionnaire'),(136,'Can view r patient mri safety questionnaire',34,'view_rpatientmrisafetyquestionnaire'),(137,'Can add r patient pleasure',35,'add_rpatientpleasure'),(138,'Can change r patient pleasure',35,'change_rpatientpleasure'),(139,'Can delete r patient pleasure',35,'delete_rpatientpleasure'),(140,'Can view r patient pleasure',35,'view_rpatientpleasure'),(141,'Can add r patient rbans',36,'add_rpatientrbans'),(142,'Can change r patient rbans',36,'change_rpatientrbans'),(143,'Can delete r patient rbans',36,'delete_rpatientrbans'),(144,'Can view r patient rbans',36,'view_rpatientrbans'),(145,'Can add r patient scales',37,'add_rpatientscales'),(146,'Can change r patient scales',37,'change_rpatientscales'),(147,'Can delete r patient scales',37,'delete_rpatientscales'),(148,'Can view r patient scales',37,'view_rpatientscales'),(149,'Can add r patient suicidal',38,'add_rpatientsuicidal'),(150,'Can change r patient suicidal',38,'change_rpatientsuicidal'),(151,'Can delete r patient suicidal',38,'delete_rpatientsuicidal'),(152,'Can view r patient suicidal',38,'view_rpatientsuicidal'),(153,'Can add r patient tms',39,'add_rpatienttms'),(154,'Can change r patient tms',39,'change_rpatienttms'),(155,'Can delete r patient tms',39,'delete_rpatienttms'),(156,'Can view r patient tms',39,'view_rpatienttms'),(157,'Can add r patient vept',40,'add_rpatientvept'),(158,'Can change r patient vept',40,'change_rpatientvept'),(159,'Can delete r patient vept',40,'delete_rpatientvept'),(160,'Can view r patient vept',40,'view_rpatientvept'),(161,'Can add r patient wcst',41,'add_rpatientwcst'),(162,'Can change r patient wcst',41,'change_rpatientwcst'),(163,'Can delete r patient wcst',41,'delete_rpatientwcst'),(164,'Can view r patient wcst',41,'view_rpatientwcst'),(165,'Can add r patient ybobsessiontable',42,'add_rpatientybobsessiontable'),(166,'Can change r patient ybobsessiontable',42,'change_rpatientybobsessiontable'),(167,'Can delete r patient ybobsessiontable',42,'delete_rpatientybobsessiontable'),(168,'Can view r patient ybobsessiontable',42,'view_rpatientybobsessiontable'),(169,'Can add r patient ymrs',43,'add_rpatientymrs'),(170,'Can change r patient ymrs',43,'change_rpatientymrs'),(171,'Can delete r patient ymrs',43,'delete_rpatientymrs'),(172,'Can view r patient ymrs',43,'view_rpatientymrs'),(173,'Can add r user record',44,'add_ruserrecord'),(174,'Can change r user record',44,'change_ruserrecord'),(175,'Can delete r user record',44,'delete_ruserrecord'),(176,'Can view r user record',44,'view_ruserrecord'),(177,'Can add s user',45,'add_suser'),(178,'Can change s user',45,'change_suser'),(179,'Can delete s user',45,'delete_suser'),(180,'Can view s user',45,'view_suser'),(181,'Can add b patient appointment',46,'add_bpatientappointment'),(182,'Can change b patient appointment',46,'change_bpatientappointment'),(183,'Can delete b patient appointment',46,'delete_bpatientappointment'),(184,'Can view b patient appointment',46,'view_bpatientappointment'),(185,'Can add b patient base info',47,'add_bpatientbaseinfo'),(186,'Can change b patient base info',47,'change_bpatientbaseinfo'),(187,'Can delete b patient base info',47,'delete_bpatientbaseinfo'),(188,'Can view b patient base info',47,'view_bpatientbaseinfo'),(189,'Can add d patient detail',48,'add_dpatientdetail'),(190,'Can change d patient detail',48,'change_dpatientdetail'),(191,'Can delete d patient detail',48,'delete_dpatientdetail'),(192,'Can view d patient detail',48,'view_dpatientdetail'),(193,'Can add d scales',49,'add_dscales'),(194,'Can change d scales',49,'change_dscales'),(195,'Can delete d scales',49,'delete_dscales'),(196,'Can view d scales',49,'view_dscales'),(197,'Can add r patient basic information abuse',50,'add_rpatientbasicinformationabuse'),(198,'Can change r patient basic information abuse',50,'change_rpatientbasicinformationabuse'),(199,'Can delete r patient basic information abuse',50,'delete_rpatientbasicinformationabuse'),(200,'Can view r patient basic information abuse',50,'view_rpatientbasicinformationabuse'),(201,'Can add r patient basic information family',51,'add_rpatientbasicinformationfamily'),(202,'Can change r patient basic information family',51,'change_rpatientbasicinformationfamily'),(203,'Can delete r patient basic information family',51,'delete_rpatientbasicinformationfamily'),(204,'Can view r patient basic information family',51,'view_rpatientbasicinformationfamily'),(205,'Can add r patient basic information health',52,'add_rpatientbasicinformationhealth'),(206,'Can change r patient basic information health',52,'change_rpatientbasicinformationhealth'),(207,'Can delete r patient basic information health',52,'delete_rpatientbasicinformationhealth'),(208,'Can view r patient basic information health',52,'view_rpatientbasicinformationhealth'),(209,'Can add r patient basic information other',53,'add_rpatientbasicinformationother'),(210,'Can change r patient basic information other',53,'change_rpatientbasicinformationother'),(211,'Can delete r patient basic information other',53,'delete_rpatientbasicinformationother'),(212,'Can view r patient basic information other',53,'view_rpatientbasicinformationother'),(213,'Can add r patient basic information study',54,'add_rpatientbasicinformationstudy'),(214,'Can change r patient basic information study',54,'change_rpatientbasicinformationstudy'),(215,'Can delete r patient basic information study',54,'delete_rpatientbasicinformationstudy'),(216,'Can view r patient basic information study',54,'view_rpatientbasicinformationstudy'),(217,'Can add s user',55,'add_suser'),(218,'Can change s user',55,'change_suser'),(219,'Can delete s user',55,'delete_suser'),(220,'Can view s user',55,'view_suser');
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
INSERT INTO `b_patient_base_info` VALUES (13,'1',0,'2020-12-01','回族',1,'2020-12-11 15:17:00','2020-12-11 15:17:00',0,''),(14,'1',0,'2020-12-01','回族',1,'2020-12-11 15:17:03','2020-12-11 15:17:03',0,''),(15,'1',0,'2020-12-01','回族',1,'2020-12-11 15:17:09','2020-12-11 15:17:09',0,''),(16,'1',0,'2020-12-01','回族',1,'2020-12-11 15:17:16','2020-12-11 15:17:16',0,''),(18,'1',0,'2020-12-03','蒙古族',1,'2020-12-11 15:19:09','2020-12-11 15:19:09',1,''),(19,'1',0,'2020-12-03','蒙古族',1,'2020-12-11 15:19:10','2020-12-11 15:19:10',1,''),(20,'1',0,'2020-12-03','蒙古族',1,'2020-12-11 15:19:10','2020-12-11 15:19:10',1,''),(21,'1',0,'2020-12-03','蒙古族',1,'2020-12-11 15:19:11','2020-12-11 15:19:11',1,''),(22,'1',0,'2020-12-03','蒙古族',1,'2020-12-11 15:19:12','2020-12-11 15:19:12',1,''),(23,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:06','2020-12-11 17:04:06',2,'q'),(24,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:09','2020-12-11 17:04:09',2,'q'),(26,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:10','2020-12-11 17:04:10',2,'q'),(27,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:10','2020-12-11 17:04:10',2,'q'),(28,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:10','2020-12-11 17:04:10',2,'q'),(29,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:10','2020-12-11 17:04:10',2,'q'),(30,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:11','2020-12-11 17:04:11',2,'q'),(31,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:11','2020-12-11 17:04:11',2,'q'),(32,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:12','2020-12-11 17:04:12',2,'q'),(33,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:13','2020-12-11 17:04:13',2,'q'),(34,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:15','2020-12-11 17:04:15',2,'q'),(35,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:04:16','2020-12-11 17:04:16',2,'q'),(36,'skj',0,'2020-12-01','回族',1,'2020-12-11 17:05:04','2020-12-11 17:05:04',2,'q'),(37,'冯浩',0,'2020-12-02','蒙古族',1,'2020-12-11 17:05:56','2020-12-11 17:05:56',9,'');
/*!40000 ALTER TABLE `b_patient_base_info` ENABLE KEYS */;
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
  `cognitive` tinyint(1) DEFAULT NULL,
  `sound` tinyint(1) DEFAULT NULL,
  `blood` tinyint(1) DEFAULT NULL,
  `hairs` tinyint(1) DEFAULT NULL,
  `manure` tinyint(1) DEFAULT NULL,
  `drugs_information` tinyint(1) DEFAULT NULL,
  `mri_examination` tinyint(1) DEFAULT NULL,
  `tms` tinyint(1) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `years` tinyint(4) DEFAULT NULL,
  `emotional_state` tinyint(4) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `waist` float DEFAULT NULL,
  `hip` float DEFAULT NULL,
  `handy` tinyint(4) DEFAULT NULL,
  `note` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `disease_state` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`,`patient_id`),
  KEY `fk_d_patient_detail_1_idx` (`patient_id`),
  CONSTRAINT `d_patient_detail_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `b_patient_base_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_patient_detail`
--

LOCK TABLES `d_patient_detail` WRITE;
/*!40000 ALTER TABLE `d_patient_detail` DISABLE KEYS */;
INSERT INTO `d_patient_detail` VALUES (175,13,1,'NN_00000013_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:17:01','2020-12-11 15:17:01',NULL),(176,14,1,'NN_00000014_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:17:06','2020-12-11 15:17:06',NULL),(177,15,1,'NN_00000015_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:17:14','2020-12-11 15:17:14',NULL),(178,16,1,'NN_00000016_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:17:21','2020-12-11 15:17:21',NULL),(180,18,1,'NN_00000018_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:19:09','2020-12-11 15:19:09',NULL),(181,19,1,'NN_00000019_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:19:10','2020-12-11 15:19:10',NULL),(182,20,1,'NN_00000020_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:19:10','2020-12-11 15:19:10',NULL),(183,21,1,'NN_00000021_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:19:11','2020-12-11 15:19:11',NULL),(184,22,1,'NN_00000022_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 15:19:12','2020-12-11 15:19:12',NULL),(185,22,2,'NN_00000022_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:01:20','2020-12-11 17:01:20',NULL),(186,23,1,'NN_00000023_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:06','2020-12-11 17:04:06',NULL),(187,24,1,'NN_00000024_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:09','2020-12-11 17:04:09',NULL),(189,26,1,'NN_00000026_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:10','2020-12-11 17:04:10',NULL),(190,27,1,'NN_00000027_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:10','2020-12-11 17:04:10',NULL),(191,28,1,'NN_00000028_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:10','2020-12-11 17:04:10',NULL),(192,29,1,'NN_00000029_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:10','2020-12-11 17:04:10',NULL),(193,30,1,'NN_00000030_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:11','2020-12-11 17:04:11',NULL),(194,31,1,'NN_00000031_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:12','2020-12-11 17:04:12',NULL),(195,32,1,'NN_00000032_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:13','2020-12-11 17:04:13',NULL),(196,33,1,'NN_00000033_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:15','2020-12-11 17:04:15',NULL),(197,34,1,'NN_00000034_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:16','2020-12-11 17:04:16',NULL),(198,35,1,'NN_00000035_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:04:17','2020-12-11 17:04:17',NULL),(199,36,1,'NN_00000036_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:05:04','2020-12-11 17:05:04',NULL),(200,37,1,'NN_00000037_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:05:56','2020-12-11 17:05:56',NULL),(201,37,2,'NN_00000037_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:06:31','2020-12-11 17:06:31',NULL),(202,13,2,'NN_00000013_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-11 17:19:01','2020-12-11 17:19:01',NULL);
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
INSERT INTO `d_scales` VALUES (1,'一般资料－家庭信息',2,0),(2,'一般资料－学习情况',2,0),(3,'一般资料－家族及疾病史',2,0),(4,'一般资料－物质依赖',2,0),(5,'一般资料－其他资料',2,0),(6,'中国利手量表',2,0),(7,'耶鲁布朗强迫症严重程度',0,2),(8,'自杀意念及行为史',0,2),(9,'33项轻躁狂症状清单',0,2),(10,'斯奈斯和汉密尔顿快乐量表',0,2),(11,'快感体验能力量表',0,2),(12,'儿童期（16岁以前）的成长经历',0,2),(13,'青少年生活事件量表',1,2),(14,'认知情绪调节问卷',0,2),(15,'简式父母养育方式问卷（S-Embu）',1,2),(16,'自动思维问卷（ATQ）',0,2),(17,'汉密尔顿抑郁量表（HAMD-17）',2,1),(18,'汉密尔顿焦虑量表（HAMA）',2,1),(19,'杨氏躁狂量表（YMRS）',2,1),(20,'BPRS（简明精神病量表',2,1),(21,'威斯康星卡片分类测验（WCST）',2,3),(22,'重复成套性神经心理状态测验系统 (RBANS)',2,3),(23,'面孔情绪感知能力测试 (FEPT)',2,3),(24,'语音情绪感知能力测试 (VEPT)',2,3),(25,'简要病史',0,4),(26,'磁共振检查情况',0,4),(27,'r-TMS治疗反馈',2,4),(28,'诊断类型',2,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(46,'patients','bpatientappointment'),(47,'patients','bpatientbaseinfo'),(48,'patients','dpatientdetail'),(49,'patients','dscales'),(50,'patients','rpatientbasicinformationabuse'),(51,'patients','rpatientbasicinformationfamily'),(52,'patients','rpatientbasicinformationhealth'),(53,'patients','rpatientbasicinformationother'),(54,'patients','rpatientbasicinformationstudy'),(7,'scales','bpatientappointment'),(8,'scales','bpatientbaseinfo'),(9,'scales','dpatientappointment'),(10,'scales','dpatientdetail'),(11,'scales','dscales'),(12,'scales','dtreatments'),(13,'scales','rpatientadolescentevents'),(14,'scales','rpatientatq'),(15,'scales','rpatientbasicinformationabuse'),(16,'scales','rpatientbasicinformationfamily'),(17,'scales','rpatientbasicinformationother'),(18,'scales','rpatientbasicinformationstudy'),(19,'scales','rpatientbprs'),(20,'scales','rpatientchinesehandy'),(21,'scales','rpatientcognitiveemotion'),(22,'scales','rpatientdiagnostictype'),(23,'scales','rpatientdrugsinformation'),(24,'scales','rpatientfept'),(25,'scales','rpatientgrowth'),(26,'scales','rpatienthama'),(27,'scales','rpatienthamd17'),(28,'scales','rpatienthappiness'),(29,'scales','rpatientinclusionexclusioncriteria'),(30,'scales','rpatientinformedconsentsignaturepage'),(31,'scales','rpatientmanicsymptom'),(32,'scales','rpatientmedicalhistory'),(33,'scales','rpatientmriexamination'),(34,'scales','rpatientmrisafetyquestionnaire'),(35,'scales','rpatientpleasure'),(36,'scales','rpatientrbans'),(37,'scales','rpatientscales'),(38,'scales','rpatientsuicidal'),(39,'scales','rpatienttms'),(40,'scales','rpatientvept'),(41,'scales','rpatientwcst'),(42,'scales','rpatientybobsessiontable'),(43,'scales','rpatientymrs'),(44,'scales','ruserrecord'),(45,'scales','suser'),(6,'sessions','session'),(55,'users','suser');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-18 22:30:58.811488'),(2,'auth','0001_initial','2020-11-18 22:31:00.612260'),(3,'admin','0001_initial','2020-11-18 22:31:06.514389'),(4,'admin','0002_logentry_remove_auto_add','2020-11-18 22:31:07.661968'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-18 22:31:07.691471'),(6,'contenttypes','0002_remove_content_type_name','2020-11-18 22:31:08.388937'),(7,'auth','0002_alter_permission_name_max_length','2020-11-18 22:31:08.859245'),(8,'auth','0003_alter_user_email_max_length','2020-11-18 22:31:09.296420'),(9,'auth','0004_alter_user_username_opts','2020-11-18 22:31:09.332562'),(10,'auth','0005_alter_user_last_login_null','2020-11-18 22:31:09.677406'),(11,'auth','0006_require_contenttypes_0002','2020-11-18 22:31:09.698975'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-18 22:31:09.733673'),(13,'auth','0008_alter_user_username_max_length','2020-11-18 22:31:10.215605'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-18 22:31:11.395406'),(15,'auth','0010_alter_group_name_max_length','2020-11-18 22:31:12.142375'),(16,'auth','0011_update_proxy_permissions','2020-11-18 22:31:12.194037'),(17,'patients','0001_initial','2020-11-18 22:31:12.257090'),(18,'patients','0002_bpatientbaseinfo_dpatientdetail_dscales_rpatientbasicinformationabuse_rpatientbasicinformationfamily','2020-11-18 22:31:12.296600'),(19,'scales','0001_initial','2020-11-18 22:31:12.470522'),(20,'scales','0002_delete_rpatientbasicinformationhealth','2020-11-18 22:31:12.489579'),(21,'sessions','0001_initial','2020-11-18 22:31:12.769146'),(22,'users','0001_initial','2020-11-18 22:31:12.961254');
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
INSERT INTO `django_session` VALUES ('0q6bvadvsjqs9ltrplc3g5r1esh6jie2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:54:37.526144'),('17z08nw0xthxk1pzsnamrdaoywssuhsk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 18:42:45.105513'),('18ywd70f7rqscd1l0qsueuxg2fvzj8e0','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 11:43:09.449747'),('2xiynyca6bq848hzqcmk8judkn97m2n1','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 11:21:25.265564'),('3mcgbbbmuwvxa3q0lgr9fgmdzeuxnkz5','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 12:20:55.828445'),('3ribkwhjpqwntjo5h8kaypcp6108vvnx','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:15:01.986713'),('3wj345ws2qanxmm1ox1b1s9cyb2os7ax','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 14:40:47.557579'),('47mo3hqtbk9lneocrsr7syt6vcnifa3f','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 03:54:20.160003'),('7l4zfq634t8q41gm0437p1rdyudvbvya','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 21:11:19.455516'),('9ievv7g6ngtcgcp8zsf0jlacs8vcp4lu','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 15:09:38.856439'),('e33x6spaf9i7qxk451lyeh867pjo7rae','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 23:06:25.684033'),('ezysxk1m0odvfeh73hyh59fd36qekjmv','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-09 01:25:39.089069'),('fhigdea4b3vwqpgap9g670bytr6xqdx2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 12:53:22.570517'),('gl9fwjpancwbo8424d34cy44h3o99kfz','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 17:34:43.507650'),('i6gmwhkp14j569tofiqsn57x9ycpn50r','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 18:48:13.558019'),('kaaxjg5c29ocjdzjnfvz7ru8kgjxcxoy','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-11 18:20:53.415902'),('ma8wxi68arfb5b1fyexiiiabvwnmm76e','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 19:36:05.062063'),('myskys04w4rndk3jakefab77wa5rjf3y','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 23:40:55.304219'),('p0a8inlwjj9e72s4ru0sizibofmin8tl','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 23:24:32.152071'),('pjscsxa5rr5dnmofm4kecv041mquaox4','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 00:30:59.030107'),('rq73k4a6mt4amsc17x3hm2p7dnvr6n7j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:56:47.718292'),('rr1rse1t0macxlfcuvo2gug6s0iev47x','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 02:20:42.110392'),('t2eq9ta5azr1pytoii6f39gfvyfjtx87','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 12:01:58.195993'),('umxybq9ezk3g1pma5l9dfvul02yrk9ox','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 20:49:36.200364'),('w7xu8p99mv1pmbf5lh1cfc7537s4m1lk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:56:37.337457'),('xx08xijofnkdhtwt12amvny6w3nvwgbm','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-10 16:45:36.341844'),('zfm7mszwndvtt9vtrpec8dlifrfitg0j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 06:57:29.076181');
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
  `suicide_history` tinyint(1) DEFAULT NULL,
  `suicide_times` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
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
  `suicide_history` tinyint(1) DEFAULT NULL,
  `suicide_times` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
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
  `patient_alcohal` tinyint(4) DEFAULT NULL,
  `patient_alcohal_age` tinyint(4) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
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
  `patient_email_qq_wechat` varchar(200) DEFAULT NULL,
  `father_education` tinyint(4) DEFAULT NULL,
  `mother_education` tinyint(4) DEFAULT NULL,
  `parent_marry` tinyint(4) DEFAULT NULL,
  `parent_parent_death` tinyint(4) DEFAULT NULL,
  `parent_parent_death_age` tinyint(4) DEFAULT NULL,
  `parent_argument` tinyint(4) DEFAULT NULL,
  `patient_adopt` tinyint(4) DEFAULT NULL,
  `patient_adopt_age` tinyint(4) DEFAULT NULL,
  `father_relationship` tinyint(4) DEFAULT NULL,
  `mother_relationship` tinyint(4) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
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
  `patient_medicine_information` varchar(200) DEFAULT NULL,
  `patient_treatment_information` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_health`
--

LOCK TABLES `r_patient_basic_information_health` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_health` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_basic_information_study`
--

LOCK TABLES `r_patient_basic_information_study` WRITE;
/*!40000 ALTER TABLE `r_patient_basic_information_study` DISABLE KEYS */;
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
  `total_score` float DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
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
  `dosage` float DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_fept`
--

LOCK TABLES `r_patient_fept` WRITE;
/*!40000 ALTER TABLE `r_patient_fept` DISABLE KEYS */;
INSERT INTO `r_patient_fept` VALUES (4,185,23,1,1,1,1,11,1,1,1,1,1,'2020-12-11 17:01:54','2020-12-11 17:01:54');
/*!40000 ALTER TABLE `r_patient_fept` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
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
  `question8` tinyint(1) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
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
  `chief_complaint` text,
  `present_illness` text,
  `formerly_medical_history` text,
  `allergic_history` text,
  `family_medical_history` text,
  `primary_diagmosis` text,
  `treatment` text,
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
  `special_enents_note` text,
  `having_abnormal_region_` tinyint(1) DEFAULT NULL,
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
  `exception_score` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
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
  `total_score` float DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_rbans`
--

LOCK TABLES `r_patient_rbans` WRITE;
/*!40000 ALTER TABLE `r_patient_rbans` DISABLE KEYS */;
INSERT INTO `r_patient_rbans` VALUES (5,185,22,1,1,1,1,1,NULL,1,1,1,1,1,1,1,1,1,1,1,1,1,'2020-12-11 17:01:48','2020-12-11 17:01:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=2182 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_scales`
--

LOCK TABLES `r_patient_scales` WRITE;
/*!40000 ALTER TABLE `r_patient_scales` DISABLE KEYS */;
INSERT INTO `r_patient_scales` VALUES (1487,175,1,0,'2020-12-11 15:17:01'),(1488,175,2,0,'2020-12-11 15:17:01'),(1489,175,3,0,'2020-12-11 15:17:01'),(1490,175,4,0,'2020-12-11 15:17:01'),(1491,175,5,0,'2020-12-11 15:17:01'),(1492,175,6,0,'2020-12-11 15:17:01'),(1493,175,7,0,'2020-12-11 15:17:01'),(1494,175,8,0,'2020-12-11 15:17:01'),(1495,175,9,0,'2020-12-11 15:17:01'),(1496,175,10,0,'2020-12-11 15:17:02'),(1497,175,11,0,'2020-12-11 15:17:02'),(1498,175,12,0,'2020-12-11 15:17:02'),(1499,175,13,0,'2020-12-11 15:17:02'),(1500,175,14,0,'2020-12-11 15:17:02'),(1501,175,15,0,'2020-12-11 15:17:02'),(1502,175,16,0,'2020-12-11 15:17:02'),(1503,175,17,0,'2020-12-11 15:17:02'),(1504,175,18,0,'2020-12-11 15:17:02'),(1505,175,19,0,'2020-12-11 15:17:02'),(1506,175,20,0,'2020-12-11 15:17:02'),(1507,175,21,0,'2020-12-11 15:17:02'),(1508,175,22,0,'2020-12-11 15:17:02'),(1509,175,23,0,'2020-12-11 15:17:02'),(1510,175,24,0,'2020-12-11 15:17:02'),(1511,175,25,0,'2020-12-11 15:17:03'),(1512,175,26,0,'2020-12-11 15:17:03'),(1513,175,27,0,'2020-12-11 15:17:03'),(1514,175,28,0,'2020-12-11 15:17:03'),(1515,176,1,0,'2020-12-11 15:17:12'),(1516,176,2,0,'2020-12-11 15:17:14'),(1517,176,3,0,'2020-12-11 15:17:16'),(1518,176,4,0,'2020-12-11 15:17:17'),(1519,176,5,0,'2020-12-11 15:17:19'),(1520,176,6,0,'2020-12-11 15:17:21'),(1521,177,1,0,'2020-12-11 15:17:21'),(1522,176,7,0,'2020-12-11 15:17:22'),(1523,177,2,0,'2020-12-11 15:17:22'),(1524,176,8,0,'2020-12-11 15:17:23'),(1525,177,3,0,'2020-12-11 15:17:23'),(1526,176,9,0,'2020-12-11 15:17:23'),(1527,177,4,0,'2020-12-11 15:17:23'),(1528,176,10,0,'2020-12-11 15:17:24'),(1529,178,1,0,'2020-12-11 15:17:24'),(1530,177,5,0,'2020-12-11 15:17:24'),(1531,176,11,0,'2020-12-11 15:17:24'),(1532,178,2,0,'2020-12-11 15:17:24'),(1533,177,6,0,'2020-12-11 15:17:24'),(1534,178,3,0,'2020-12-11 15:17:24'),(1535,176,12,0,'2020-12-11 15:17:24'),(1536,177,7,0,'2020-12-11 15:17:37'),(1537,176,13,0,'2020-12-11 15:17:38'),(1538,178,4,0,'2020-12-11 15:17:39'),(1539,177,8,0,'2020-12-11 15:17:54'),(1540,176,14,0,'2020-12-11 15:17:55'),(1541,178,5,0,'2020-12-11 15:17:55'),(1542,178,6,0,'2020-12-11 15:18:01'),(1543,176,15,0,'2020-12-11 15:18:04'),(1544,177,9,0,'2020-12-11 15:18:07'),(1545,178,7,0,'2020-12-11 15:18:16'),(1574,180,1,0,'2020-12-11 15:19:09'),(1575,180,2,0,'2020-12-11 15:19:09'),(1576,180,3,0,'2020-12-11 15:19:09'),(1577,180,4,0,'2020-12-11 15:19:09'),(1578,180,5,0,'2020-12-11 15:19:09'),(1579,180,6,0,'2020-12-11 15:19:09'),(1580,180,7,0,'2020-12-11 15:19:09'),(1581,180,8,0,'2020-12-11 15:19:09'),(1582,180,9,0,'2020-12-11 15:19:09'),(1583,180,10,0,'2020-12-11 15:19:09'),(1584,180,11,0,'2020-12-11 15:19:09'),(1585,180,12,0,'2020-12-11 15:19:09'),(1586,180,13,0,'2020-12-11 15:19:09'),(1587,180,14,0,'2020-12-11 15:19:09'),(1588,180,15,0,'2020-12-11 15:19:09'),(1589,180,16,0,'2020-12-11 15:19:09'),(1590,180,17,0,'2020-12-11 15:19:10'),(1591,180,18,0,'2020-12-11 15:19:10'),(1592,180,19,0,'2020-12-11 15:19:10'),(1593,180,20,0,'2020-12-11 15:19:10'),(1594,180,21,0,'2020-12-11 15:19:10'),(1595,181,1,0,'2020-12-11 15:19:10'),(1596,180,22,0,'2020-12-11 15:19:10'),(1597,181,2,0,'2020-12-11 15:19:10'),(1598,180,23,0,'2020-12-11 15:19:10'),(1599,181,3,0,'2020-12-11 15:19:10'),(1600,180,24,0,'2020-12-11 15:19:10'),(1601,181,4,0,'2020-12-11 15:19:10'),(1602,180,25,0,'2020-12-11 15:19:10'),(1603,181,5,0,'2020-12-11 15:19:10'),(1604,180,26,0,'2020-12-11 15:19:10'),(1605,181,6,0,'2020-12-11 15:19:10'),(1606,180,27,0,'2020-12-11 15:19:10'),(1607,181,7,0,'2020-12-11 15:19:10'),(1608,180,28,0,'2020-12-11 15:19:10'),(1609,181,8,0,'2020-12-11 15:19:10'),(1610,181,9,0,'2020-12-11 15:19:11'),(1611,181,10,0,'2020-12-11 15:19:11'),(1612,181,11,0,'2020-12-11 15:19:11'),(1613,182,1,0,'2020-12-11 15:19:11'),(1614,181,12,0,'2020-12-11 15:19:11'),(1615,181,13,0,'2020-12-11 15:19:11'),(1616,182,2,0,'2020-12-11 15:19:11'),(1617,181,14,0,'2020-12-11 15:19:11'),(1618,182,3,0,'2020-12-11 15:19:11'),(1619,182,4,0,'2020-12-11 15:19:11'),(1620,181,15,0,'2020-12-11 15:19:11'),(1621,181,16,0,'2020-12-11 15:19:12'),(1622,182,5,0,'2020-12-11 15:19:12'),(1623,181,17,0,'2020-12-11 15:19:12'),(1624,182,6,0,'2020-12-11 15:19:12'),(1625,181,18,0,'2020-12-11 15:19:12'),(1626,182,7,0,'2020-12-11 15:19:12'),(1627,183,1,0,'2020-12-11 15:19:12'),(1628,181,19,0,'2020-12-11 15:19:12'),(1629,183,2,0,'2020-12-11 15:19:12'),(1630,181,20,0,'2020-12-11 15:19:12'),(1631,182,8,0,'2020-12-11 15:19:12'),(1632,183,3,0,'2020-12-11 15:19:12'),(1633,181,21,0,'2020-12-11 15:19:12'),(1634,181,22,0,'2020-12-11 15:19:12'),(1635,182,9,0,'2020-12-11 15:19:12'),(1636,183,4,0,'2020-12-11 15:19:12'),(1637,181,23,0,'2020-12-11 15:19:12'),(1638,183,5,0,'2020-12-11 15:19:12'),(1639,182,10,0,'2020-12-11 15:19:12'),(1640,181,24,0,'2020-12-11 15:19:12'),(1641,183,6,0,'2020-12-11 15:19:12'),(1642,182,11,0,'2020-12-11 15:19:12'),(1643,181,25,0,'2020-12-11 15:19:12'),(1644,183,7,0,'2020-12-11 15:19:12'),(1645,184,1,0,'2020-12-11 15:19:12'),(1646,182,12,0,'2020-12-11 15:19:12'),(1647,181,26,0,'2020-12-11 15:19:12'),(1648,183,8,0,'2020-12-11 15:19:12'),(1649,182,13,0,'2020-12-11 15:19:12'),(1650,183,9,0,'2020-12-11 15:19:12'),(1651,181,27,0,'2020-12-11 15:19:12'),(1652,184,2,0,'2020-12-11 15:19:12'),(1653,182,14,0,'2020-12-11 15:19:12'),(1654,182,15,0,'2020-12-11 15:19:13'),(1655,181,28,0,'2020-12-11 15:19:13'),(1656,183,10,0,'2020-12-11 15:19:13'),(1657,184,3,0,'2020-12-11 15:19:13'),(1658,182,16,0,'2020-12-11 15:19:13'),(1659,183,11,0,'2020-12-11 15:19:13'),(1660,184,4,0,'2020-12-11 15:19:13'),(1661,182,17,0,'2020-12-11 15:19:13'),(1662,183,12,0,'2020-12-11 15:19:14'),(1663,182,18,0,'2020-12-11 15:19:14'),(1664,184,5,0,'2020-12-11 15:19:14'),(1665,183,13,0,'2020-12-11 15:19:14'),(1666,182,19,0,'2020-12-11 15:19:14'),(1667,184,6,0,'2020-12-11 15:19:14'),(1668,183,14,0,'2020-12-11 15:19:14'),(1669,184,7,0,'2020-12-11 15:19:14'),(1670,182,20,0,'2020-12-11 15:19:14'),(1671,183,15,0,'2020-12-11 15:19:14'),(1672,184,8,0,'2020-12-11 15:19:14'),(1673,182,21,0,'2020-12-11 15:19:14'),(1674,183,16,0,'2020-12-11 15:19:14'),(1675,184,9,0,'2020-12-11 15:19:14'),(1676,182,22,0,'2020-12-11 15:19:14'),(1677,183,17,0,'2020-12-11 15:19:14'),(1678,184,10,0,'2020-12-11 15:19:14'),(1679,183,18,0,'2020-12-11 15:19:14'),(1680,182,23,0,'2020-12-11 15:19:14'),(1681,184,11,0,'2020-12-11 15:19:14'),(1682,183,19,0,'2020-12-11 15:19:14'),(1683,184,12,0,'2020-12-11 15:19:14'),(1684,182,24,0,'2020-12-11 15:19:14'),(1685,183,20,0,'2020-12-11 15:19:14'),(1686,184,13,0,'2020-12-11 15:19:14'),(1687,182,25,0,'2020-12-11 15:19:14'),(1688,183,21,0,'2020-12-11 15:19:14'),(1689,184,14,0,'2020-12-11 15:19:14'),(1690,183,22,0,'2020-12-11 15:19:15'),(1691,182,26,0,'2020-12-11 15:19:15'),(1692,184,15,0,'2020-12-11 15:19:15'),(1693,182,27,0,'2020-12-11 15:19:15'),(1694,183,23,0,'2020-12-11 15:19:15'),(1695,184,16,0,'2020-12-11 15:19:15'),(1696,183,24,0,'2020-12-11 15:19:15'),(1697,182,28,0,'2020-12-11 15:19:15'),(1698,184,17,0,'2020-12-11 15:19:15'),(1699,183,25,0,'2020-12-11 15:19:15'),(1700,184,18,0,'2020-12-11 15:19:15'),(1701,183,26,0,'2020-12-11 15:19:15'),(1702,183,27,0,'2020-12-11 15:19:16'),(1703,184,19,0,'2020-12-11 15:19:16'),(1704,183,28,0,'2020-12-11 15:19:16'),(1705,184,20,0,'2020-12-11 15:19:16'),(1706,184,21,0,'2020-12-11 15:19:16'),(1707,184,22,0,'2020-12-11 15:19:16'),(1708,184,23,0,'2020-12-11 15:19:17'),(1709,184,24,0,'2020-12-11 15:19:17'),(1710,184,25,0,'2020-12-11 15:19:17'),(1711,184,26,0,'2020-12-11 15:19:17'),(1712,184,27,0,'2020-12-11 15:19:17'),(1713,184,28,0,'2020-12-11 15:19:17'),(1714,185,1,0,'2020-12-11 17:01:20'),(1715,185,2,0,'2020-12-11 17:01:20'),(1716,185,3,0,'2020-12-11 17:01:20'),(1717,185,4,0,'2020-12-11 17:01:20'),(1718,185,5,0,'2020-12-11 17:01:20'),(1719,185,6,0,'2020-12-11 17:01:20'),(1720,185,17,0,'2020-12-11 17:01:20'),(1721,185,18,0,'2020-12-11 17:01:20'),(1722,185,19,0,'2020-12-11 17:01:20'),(1723,185,20,0,'2020-12-11 17:01:20'),(1724,185,21,1,'2020-12-11 17:01:35'),(1725,185,22,1,'2020-12-11 17:01:48'),(1726,185,23,1,'2020-12-11 17:01:54'),(1727,185,24,1,'2020-12-11 17:02:06'),(1728,185,27,0,'2020-12-11 17:01:21'),(1729,185,28,0,'2020-12-11 17:01:21'),(1730,186,1,0,'2020-12-11 17:04:06'),(1731,186,2,0,'2020-12-11 17:04:06'),(1732,186,3,0,'2020-12-11 17:04:06'),(1733,186,4,0,'2020-12-11 17:04:06'),(1734,186,5,0,'2020-12-11 17:04:06'),(1735,186,6,0,'2020-12-11 17:04:06'),(1736,186,7,0,'2020-12-11 17:04:07'),(1737,186,8,0,'2020-12-11 17:04:07'),(1738,186,9,0,'2020-12-11 17:04:07'),(1739,186,10,0,'2020-12-11 17:04:07'),(1740,186,11,0,'2020-12-11 17:04:07'),(1741,186,12,0,'2020-12-11 17:04:07'),(1742,186,13,0,'2020-12-11 17:04:07'),(1743,186,14,0,'2020-12-11 17:04:07'),(1744,186,15,0,'2020-12-11 17:04:07'),(1745,186,16,0,'2020-12-11 17:04:07'),(1746,186,17,0,'2020-12-11 17:04:07'),(1747,186,18,0,'2020-12-11 17:04:08'),(1748,186,19,0,'2020-12-11 17:04:08'),(1749,186,20,0,'2020-12-11 17:04:08'),(1750,186,21,0,'2020-12-11 17:04:08'),(1751,186,22,0,'2020-12-11 17:04:08'),(1752,186,23,0,'2020-12-11 17:04:08'),(1753,186,24,0,'2020-12-11 17:04:08'),(1754,186,25,0,'2020-12-11 17:04:08'),(1755,186,26,0,'2020-12-11 17:04:08'),(1756,186,27,0,'2020-12-11 17:04:08'),(1757,186,28,0,'2020-12-11 17:04:08'),(1758,187,1,0,'2020-12-11 17:04:09'),(1759,187,2,0,'2020-12-11 17:04:09'),(1760,187,3,0,'2020-12-11 17:04:09'),(1761,187,4,0,'2020-12-11 17:04:09'),(1762,187,5,0,'2020-12-11 17:04:09'),(1763,187,6,0,'2020-12-11 17:04:10'),(1764,187,7,0,'2020-12-11 17:04:10'),(1766,187,8,0,'2020-12-11 17:04:10'),(1768,187,9,0,'2020-12-11 17:04:10'),(1770,187,10,0,'2020-12-11 17:04:10'),(1772,187,11,0,'2020-12-11 17:04:10'),(1773,189,1,0,'2020-12-11 17:04:10'),(1775,187,12,0,'2020-12-11 17:04:10'),(1776,189,2,0,'2020-12-11 17:04:10'),(1778,187,13,0,'2020-12-11 17:04:10'),(1779,190,1,0,'2020-12-11 17:04:10'),(1780,189,3,0,'2020-12-11 17:04:10'),(1782,190,2,0,'2020-12-11 17:04:10'),(1783,187,14,0,'2020-12-11 17:04:10'),(1784,189,4,0,'2020-12-11 17:04:10'),(1786,190,3,0,'2020-12-11 17:04:11'),(1787,189,5,0,'2020-12-11 17:04:11'),(1788,191,1,0,'2020-12-11 17:04:11'),(1789,187,15,0,'2020-12-11 17:04:11'),(1790,190,4,0,'2020-12-11 17:04:11'),(1791,187,16,0,'2020-12-11 17:04:11'),(1792,189,6,0,'2020-12-11 17:04:11'),(1793,191,2,0,'2020-12-11 17:04:11'),(1795,192,1,0,'2020-12-11 17:04:11'),(1796,190,5,0,'2020-12-11 17:04:11'),(1797,187,17,0,'2020-12-11 17:04:11'),(1798,189,7,0,'2020-12-11 17:04:11'),(1799,191,3,0,'2020-12-11 17:04:11'),(1801,187,18,0,'2020-12-11 17:04:11'),(1802,190,6,0,'2020-12-11 17:04:11'),(1803,189,8,0,'2020-12-11 17:04:11'),(1804,192,2,0,'2020-12-11 17:04:11'),(1805,191,4,0,'2020-12-11 17:04:11'),(1806,187,19,0,'2020-12-11 17:04:11'),(1807,191,5,0,'2020-12-11 17:04:11'),(1809,192,3,0,'2020-12-11 17:04:11'),(1810,193,1,0,'2020-12-11 17:04:11'),(1811,191,6,0,'2020-12-11 17:04:12'),(1812,189,9,0,'2020-12-11 17:04:12'),(1813,187,20,0,'2020-12-11 17:04:12'),(1814,190,7,0,'2020-12-11 17:04:12'),(1815,192,4,0,'2020-12-11 17:04:12'),(1817,189,10,0,'2020-12-11 17:04:12'),(1818,191,7,0,'2020-12-11 17:04:12'),(1819,192,5,0,'2020-12-11 17:04:12'),(1820,187,21,0,'2020-12-11 17:04:12'),(1821,190,8,0,'2020-12-11 17:04:12'),(1822,193,2,0,'2020-12-11 17:04:12'),(1824,189,11,0,'2020-12-11 17:04:12'),(1825,191,8,0,'2020-12-11 17:04:12'),(1826,192,6,0,'2020-12-11 17:04:12'),(1827,190,9,0,'2020-12-11 17:04:12'),(1828,187,22,0,'2020-12-11 17:04:12'),(1829,187,23,0,'2020-12-11 17:04:12'),(1831,191,9,0,'2020-12-11 17:04:12'),(1832,190,10,0,'2020-12-11 17:04:12'),(1833,193,3,0,'2020-12-11 17:04:12'),(1834,189,12,0,'2020-12-11 17:04:12'),(1835,192,7,0,'2020-12-11 17:04:12'),(1836,193,4,0,'2020-12-11 17:04:12'),(1838,189,13,0,'2020-12-11 17:04:12'),(1839,187,24,0,'2020-12-11 17:04:12'),(1840,190,11,0,'2020-12-11 17:04:12'),(1841,191,10,0,'2020-12-11 17:04:12'),(1842,193,5,0,'2020-12-11 17:04:12'),(1843,192,8,0,'2020-12-11 17:04:12'),(1844,189,14,0,'2020-12-11 17:04:13'),(1846,190,12,0,'2020-12-11 17:04:13'),(1847,190,13,0,'2020-12-11 17:04:13'),(1848,194,1,0,'2020-12-11 17:04:13'),(1849,189,15,0,'2020-12-11 17:04:13'),(1850,191,11,0,'2020-12-11 17:04:13'),(1851,187,25,0,'2020-12-11 17:04:13'),(1852,192,9,0,'2020-12-11 17:04:13'),(1854,193,6,0,'2020-12-11 17:04:13'),(1855,194,2,0,'2020-12-11 17:04:13'),(1856,190,14,0,'2020-12-11 17:04:13'),(1857,191,12,0,'2020-12-11 17:04:13'),(1858,187,26,0,'2020-12-11 17:04:13'),(1859,192,10,0,'2020-12-11 17:04:13'),(1860,189,16,0,'2020-12-11 17:04:13'),(1862,193,7,0,'2020-12-11 17:04:13'),(1863,194,3,0,'2020-12-11 17:04:13'),(1864,192,11,0,'2020-12-11 17:04:13'),(1865,189,17,0,'2020-12-11 17:04:13'),(1866,193,8,0,'2020-12-11 17:04:13'),(1867,187,27,0,'2020-12-11 17:04:13'),(1868,190,15,0,'2020-12-11 17:04:14'),(1869,191,13,0,'2020-12-11 17:04:14'),(1871,195,1,0,'2020-12-11 17:04:14'),(1872,187,28,0,'2020-12-11 17:04:14'),(1873,190,16,0,'2020-12-11 17:04:14'),(1874,191,14,0,'2020-12-11 17:04:14'),(1875,189,18,0,'2020-12-11 17:04:14'),(1876,193,9,0,'2020-12-11 17:04:14'),(1877,194,4,0,'2020-12-11 17:04:14'),(1878,192,12,0,'2020-12-11 17:04:14'),(1879,190,17,0,'2020-12-11 17:04:14'),(1880,195,2,0,'2020-12-11 17:04:14'),(1881,191,15,0,'2020-12-11 17:04:14'),(1882,189,19,0,'2020-12-11 17:04:14'),(1884,192,13,0,'2020-12-11 17:04:14'),(1885,194,5,0,'2020-12-11 17:04:14'),(1886,193,10,0,'2020-12-11 17:04:14'),(1887,191,16,0,'2020-12-11 17:04:14'),(1888,190,18,0,'2020-12-11 17:04:14'),(1889,192,14,0,'2020-12-11 17:04:15'),(1891,195,3,0,'2020-12-11 17:04:15'),(1892,194,6,0,'2020-12-11 17:04:15'),(1893,193,11,0,'2020-12-11 17:04:15'),(1894,189,20,0,'2020-12-11 17:04:15'),(1895,190,19,0,'2020-12-11 17:04:15'),(1896,191,17,0,'2020-12-11 17:04:15'),(1898,192,15,0,'2020-12-11 17:04:15'),(1899,193,12,0,'2020-12-11 17:04:15'),(1900,195,4,0,'2020-12-11 17:04:15'),(1901,194,7,0,'2020-12-11 17:04:15'),(1902,190,20,0,'2020-12-11 17:04:15'),(1903,189,21,0,'2020-12-11 17:04:15'),(1904,191,18,0,'2020-12-11 17:04:16'),(1905,196,1,0,'2020-12-11 17:04:16'),(1907,192,16,0,'2020-12-11 17:04:16'),(1908,193,13,0,'2020-12-11 17:04:16'),(1909,195,5,0,'2020-12-11 17:04:16'),(1910,190,21,0,'2020-12-11 17:04:16'),(1911,194,8,0,'2020-12-11 17:04:16'),(1912,191,19,0,'2020-12-11 17:04:16'),(1913,196,2,0,'2020-12-11 17:04:16'),(1914,192,17,0,'2020-12-11 17:04:16'),(1915,189,22,0,'2020-12-11 17:04:16'),(1917,191,20,0,'2020-12-11 17:04:16'),(1918,192,18,0,'2020-12-11 17:04:16'),(1919,194,9,0,'2020-12-11 17:04:16'),(1920,195,6,0,'2020-12-11 17:04:16'),(1921,193,14,0,'2020-12-11 17:04:16'),(1922,190,22,0,'2020-12-11 17:04:16'),(1924,189,23,0,'2020-12-11 17:04:16'),(1925,196,3,0,'2020-12-11 17:04:16'),(1926,191,21,0,'2020-12-11 17:04:17'),(1927,195,7,0,'2020-12-11 17:04:17'),(1928,192,19,0,'2020-12-11 17:04:17'),(1929,193,15,0,'2020-12-11 17:04:17'),(1930,190,23,0,'2020-12-11 17:04:17'),(1931,189,24,0,'2020-12-11 17:04:17'),(1933,191,22,0,'2020-12-11 17:04:17'),(1934,196,4,0,'2020-12-11 17:04:17'),(1935,194,10,0,'2020-12-11 17:04:17'),(1936,197,1,0,'2020-12-11 17:04:17'),(1937,192,20,0,'2020-12-11 17:04:17'),(1938,195,8,0,'2020-12-11 17:04:17'),(1939,191,23,0,'2020-12-11 17:04:17'),(1941,193,16,0,'2020-12-11 17:04:17'),(1942,189,25,0,'2020-12-11 17:04:17'),(1943,194,11,0,'2020-12-11 17:04:17'),(1944,196,5,0,'2020-12-11 17:04:17'),(1945,195,9,0,'2020-12-11 17:04:17'),(1946,197,2,0,'2020-12-11 17:04:17'),(1947,191,24,0,'2020-12-11 17:04:18'),(1948,190,24,0,'2020-12-11 17:04:18'),(1949,189,26,0,'2020-12-11 17:04:18'),(1950,193,17,0,'2020-12-11 17:04:18'),(1952,196,6,0,'2020-12-11 17:04:18'),(1953,197,3,0,'2020-12-11 17:04:18'),(1954,192,21,0,'2020-12-11 17:04:18'),(1955,190,25,0,'2020-12-11 17:04:18'),(1956,192,22,0,'2020-12-11 17:04:18'),(1957,193,18,0,'2020-12-11 17:04:18'),(1958,194,12,0,'2020-12-11 17:04:18'),(1959,191,25,0,'2020-12-11 17:04:18'),(1960,195,10,0,'2020-12-11 17:04:18'),(1961,197,4,0,'2020-12-11 17:04:18'),(1962,196,7,0,'2020-12-11 17:04:18'),(1963,189,27,0,'2020-12-11 17:04:18'),(1964,190,26,0,'2020-12-11 17:04:18'),(1965,193,19,0,'2020-12-11 17:04:18'),(1966,190,27,0,'2020-12-11 17:04:18'),(1967,192,23,0,'2020-12-11 17:04:18'),(1968,191,26,0,'2020-12-11 17:04:18'),(1969,194,13,0,'2020-12-11 17:04:18'),(1970,195,11,0,'2020-12-11 17:04:18'),(1971,196,8,0,'2020-12-11 17:04:18'),(1972,197,5,0,'2020-12-11 17:04:18'),(1973,189,28,0,'2020-12-11 17:04:19'),(1974,195,12,0,'2020-12-11 17:04:19'),(1975,198,1,0,'2020-12-11 17:04:19'),(1976,193,20,0,'2020-12-11 17:04:19'),(1977,192,24,0,'2020-12-11 17:04:19'),(1978,190,28,0,'2020-12-11 17:04:19'),(1979,191,27,0,'2020-12-11 17:04:19'),(1980,196,9,0,'2020-12-11 17:04:19'),(1981,194,14,0,'2020-12-11 17:04:19'),(1982,197,6,0,'2020-12-11 17:04:19'),(1983,198,2,0,'2020-12-11 17:04:19'),(1984,191,28,0,'2020-12-11 17:04:19'),(1985,192,25,0,'2020-12-11 17:04:19'),(1986,198,3,0,'2020-12-11 17:04:19'),(1987,193,21,0,'2020-12-11 17:04:19'),(1988,196,10,0,'2020-12-11 17:04:19'),(1989,195,13,0,'2020-12-11 17:04:19'),(1990,197,7,0,'2020-12-11 17:04:19'),(1991,195,14,0,'2020-12-11 17:04:19'),(1992,193,22,0,'2020-12-11 17:04:19'),(1993,192,26,0,'2020-12-11 17:04:19'),(1994,195,15,0,'2020-12-11 17:04:20'),(1995,194,15,0,'2020-12-11 17:04:20'),(1996,198,4,0,'2020-12-11 17:04:20'),(1997,196,11,0,'2020-12-11 17:04:20'),(1998,197,8,0,'2020-12-11 17:04:20'),(1999,192,27,0,'2020-12-11 17:04:20'),(2000,194,16,0,'2020-12-11 17:04:20'),(2001,195,16,0,'2020-12-11 17:04:20'),(2002,193,23,0,'2020-12-11 17:04:20'),(2003,194,17,0,'2020-12-11 17:04:20'),(2004,198,5,0,'2020-12-11 17:04:20'),(2005,196,12,0,'2020-12-11 17:04:20'),(2006,197,9,0,'2020-12-11 17:04:20'),(2007,192,28,0,'2020-12-11 17:04:20'),(2008,193,24,0,'2020-12-11 17:04:20'),(2009,195,17,0,'2020-12-11 17:04:20'),(2010,194,18,0,'2020-12-11 17:04:20'),(2011,196,13,0,'2020-12-11 17:04:21'),(2012,198,6,0,'2020-12-11 17:04:21'),(2013,196,14,0,'2020-12-11 17:04:21'),(2014,197,10,0,'2020-12-11 17:04:21'),(2015,195,18,0,'2020-12-11 17:04:21'),(2016,194,19,0,'2020-12-11 17:04:21'),(2017,193,25,0,'2020-12-11 17:04:21'),(2018,196,15,0,'2020-12-11 17:04:21'),(2019,198,7,0,'2020-12-11 17:04:21'),(2020,197,11,0,'2020-12-11 17:04:21'),(2021,194,20,0,'2020-12-11 17:04:21'),(2022,195,19,0,'2020-12-11 17:04:21'),(2023,193,26,0,'2020-12-11 17:04:21'),(2024,196,16,0,'2020-12-11 17:04:22'),(2025,197,12,0,'2020-12-11 17:04:22'),(2026,194,21,0,'2020-12-11 17:04:22'),(2027,198,8,0,'2020-12-11 17:04:22'),(2028,193,27,0,'2020-12-11 17:04:22'),(2029,195,20,0,'2020-12-11 17:04:22'),(2030,194,22,0,'2020-12-11 17:04:22'),(2031,197,13,0,'2020-12-11 17:04:22'),(2032,196,17,0,'2020-12-11 17:04:22'),(2033,193,28,0,'2020-12-11 17:04:22'),(2034,195,21,0,'2020-12-11 17:04:22'),(2035,198,9,0,'2020-12-11 17:04:22'),(2036,194,23,0,'2020-12-11 17:04:22'),(2037,197,14,0,'2020-12-11 17:04:22'),(2038,198,10,0,'2020-12-11 17:04:22'),(2039,196,18,0,'2020-12-11 17:04:22'),(2040,195,22,0,'2020-12-11 17:04:22'),(2041,196,19,0,'2020-12-11 17:04:23'),(2042,198,11,0,'2020-12-11 17:04:23'),(2043,197,15,0,'2020-12-11 17:04:23'),(2044,196,20,0,'2020-12-11 17:04:23'),(2045,198,12,0,'2020-12-11 17:04:23'),(2046,195,23,0,'2020-12-11 17:04:23'),(2047,197,16,0,'2020-12-11 17:04:23'),(2048,194,24,0,'2020-12-11 17:04:23'),(2049,197,17,0,'2020-12-11 17:04:23'),(2050,195,24,0,'2020-12-11 17:04:23'),(2051,198,13,0,'2020-12-11 17:04:23'),(2052,194,25,0,'2020-12-11 17:04:23'),(2053,196,21,0,'2020-12-11 17:04:23'),(2054,197,18,0,'2020-12-11 17:04:23'),(2055,198,14,0,'2020-12-11 17:04:23'),(2056,196,22,0,'2020-12-11 17:04:23'),(2057,195,25,0,'2020-12-11 17:04:23'),(2058,197,19,0,'2020-12-11 17:04:23'),(2059,194,26,0,'2020-12-11 17:04:23'),(2060,196,23,0,'2020-12-11 17:04:23'),(2061,198,15,0,'2020-12-11 17:04:23'),(2062,197,20,0,'2020-12-11 17:04:23'),(2063,196,24,0,'2020-12-11 17:04:23'),(2064,195,26,0,'2020-12-11 17:04:23'),(2065,194,27,0,'2020-12-11 17:04:23'),(2066,198,16,0,'2020-12-11 17:04:24'),(2067,197,21,0,'2020-12-11 17:04:24'),(2068,196,25,0,'2020-12-11 17:04:24'),(2069,195,27,0,'2020-12-11 17:04:24'),(2070,194,28,0,'2020-12-11 17:04:24'),(2071,198,17,0,'2020-12-11 17:04:24'),(2072,196,26,0,'2020-12-11 17:04:24'),(2073,198,18,0,'2020-12-11 17:04:24'),(2074,197,22,0,'2020-12-11 17:04:24'),(2075,195,28,0,'2020-12-11 17:04:24'),(2076,198,19,0,'2020-12-11 17:04:24'),(2077,196,27,0,'2020-12-11 17:04:24'),(2078,197,23,0,'2020-12-11 17:04:24'),(2079,198,20,0,'2020-12-11 17:04:24'),(2080,197,24,0,'2020-12-11 17:04:24'),(2081,196,28,0,'2020-12-11 17:04:24'),(2082,198,21,0,'2020-12-11 17:04:24'),(2083,197,25,0,'2020-12-11 17:04:24'),(2084,197,26,0,'2020-12-11 17:04:25'),(2085,198,22,0,'2020-12-11 17:04:25'),(2086,197,27,0,'2020-12-11 17:04:25'),(2087,198,23,0,'2020-12-11 17:04:26'),(2088,197,28,0,'2020-12-11 17:04:26'),(2089,198,24,0,'2020-12-11 17:04:26'),(2090,198,25,0,'2020-12-11 17:04:26'),(2091,198,26,0,'2020-12-11 17:04:26'),(2092,198,27,0,'2020-12-11 17:04:26'),(2093,198,28,0,'2020-12-11 17:04:27'),(2094,199,1,0,'2020-12-11 17:05:04'),(2095,199,2,0,'2020-12-11 17:05:04'),(2096,199,3,0,'2020-12-11 17:05:04'),(2097,199,4,0,'2020-12-11 17:05:04'),(2098,199,5,0,'2020-12-11 17:05:04'),(2099,199,6,0,'2020-12-11 17:05:04'),(2100,199,7,0,'2020-12-11 17:05:04'),(2101,199,8,0,'2020-12-11 17:05:04'),(2102,199,9,0,'2020-12-11 17:05:04'),(2103,199,10,0,'2020-12-11 17:05:04'),(2104,199,11,0,'2020-12-11 17:05:04'),(2105,199,12,0,'2020-12-11 17:05:04'),(2106,199,13,0,'2020-12-11 17:05:04'),(2107,199,14,0,'2020-12-11 17:05:04'),(2108,199,15,0,'2020-12-11 17:05:04'),(2109,199,16,0,'2020-12-11 17:05:04'),(2110,199,17,0,'2020-12-11 17:05:04'),(2111,199,18,0,'2020-12-11 17:05:05'),(2112,199,19,0,'2020-12-11 17:05:05'),(2113,199,20,0,'2020-12-11 17:05:05'),(2114,199,21,0,'2020-12-11 17:05:05'),(2115,199,22,0,'2020-12-11 17:05:05'),(2116,199,23,0,'2020-12-11 17:05:05'),(2117,199,24,0,'2020-12-11 17:05:05'),(2118,199,25,0,'2020-12-11 17:05:05'),(2119,199,26,0,'2020-12-11 17:05:05'),(2120,199,27,0,'2020-12-11 17:05:05'),(2121,199,28,0,'2020-12-11 17:05:05'),(2122,200,1,0,'2020-12-11 17:05:56'),(2123,200,2,0,'2020-12-11 17:05:56'),(2124,200,3,0,'2020-12-11 17:05:56'),(2125,200,4,0,'2020-12-11 17:05:56'),(2126,200,5,0,'2020-12-11 17:05:56'),(2127,200,6,0,'2020-12-11 17:05:56'),(2128,200,7,0,'2020-12-11 17:05:56'),(2129,200,8,0,'2020-12-11 17:05:57'),(2130,200,9,0,'2020-12-11 17:05:57'),(2131,200,10,0,'2020-12-11 17:05:57'),(2132,200,11,0,'2020-12-11 17:05:57'),(2133,200,12,0,'2020-12-11 17:05:57'),(2134,200,13,0,'2020-12-11 17:05:57'),(2135,200,14,0,'2020-12-11 17:05:57'),(2136,200,15,0,'2020-12-11 17:05:57'),(2137,200,16,0,'2020-12-11 17:05:57'),(2138,200,17,0,'2020-12-11 17:05:57'),(2139,200,18,0,'2020-12-11 17:05:57'),(2140,200,19,0,'2020-12-11 17:05:58'),(2141,200,20,0,'2020-12-11 17:05:58'),(2142,200,21,0,'2020-12-11 17:05:58'),(2143,200,22,0,'2020-12-11 17:05:58'),(2144,200,23,0,'2020-12-11 17:05:58'),(2145,200,24,0,'2020-12-11 17:05:58'),(2146,200,25,0,'2020-12-11 17:05:58'),(2147,200,26,0,'2020-12-11 17:05:58'),(2148,200,27,0,'2020-12-11 17:05:58'),(2149,200,28,0,'2020-12-11 17:05:58'),(2150,201,1,0,'2020-12-11 17:06:31'),(2151,201,2,0,'2020-12-11 17:06:31'),(2152,201,3,0,'2020-12-11 17:06:31'),(2153,201,4,0,'2020-12-11 17:06:31'),(2154,201,5,0,'2020-12-11 17:06:31'),(2155,201,6,0,'2020-12-11 17:06:31'),(2156,201,17,0,'2020-12-11 17:06:31'),(2157,201,18,0,'2020-12-11 17:06:31'),(2158,201,19,0,'2020-12-11 17:06:32'),(2159,201,20,0,'2020-12-11 17:06:32'),(2160,201,21,0,'2020-12-11 17:06:32'),(2161,201,22,0,'2020-12-11 17:06:32'),(2162,201,23,0,'2020-12-11 17:06:32'),(2163,201,24,0,'2020-12-11 17:06:32'),(2164,201,27,0,'2020-12-11 17:06:32'),(2165,201,28,0,'2020-12-11 17:06:32'),(2166,202,1,0,'2020-12-11 17:19:01'),(2167,202,2,0,'2020-12-11 17:19:02'),(2168,202,3,0,'2020-12-11 17:19:02'),(2169,202,4,0,'2020-12-11 17:19:02'),(2170,202,5,0,'2020-12-11 17:19:02'),(2171,202,6,0,'2020-12-11 17:19:02'),(2172,202,17,0,'2020-12-11 17:19:02'),(2173,202,18,0,'2020-12-11 17:19:02'),(2174,202,19,0,'2020-12-11 17:19:02'),(2175,202,20,0,'2020-12-11 17:19:02'),(2176,202,21,0,'2020-12-11 17:19:02'),(2177,202,22,0,'2020-12-11 17:19:02'),(2178,202,23,0,'2020-12-11 17:19:02'),(2179,202,24,0,'2020-12-11 17:19:02'),(2180,202,27,0,'2020-12-11 17:19:02'),(2181,202,28,0,'2020-12-11 17:19:02');
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
  `grade` tinyint(4) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
  `total_score_mostdpressed` float DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patient_session_id_UNIQUE` (`patient_session_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `patient_session_id` (`patient_session_id`),
  KEY `scale_id` (`scale_id`),
  CONSTRAINT `r_patient_suicidal_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_suicidal_ibfk_2` FOREIGN KEY (`patient_session_id`) REFERENCES `d_patient_detail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `r_patient_suicidal_ibfk_3` FOREIGN KEY (`scale_id`) REFERENCES `d_scales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_vept`
--

LOCK TABLES `r_patient_vept` WRITE;
/*!40000 ALTER TABLE `r_patient_vept` DISABLE KEYS */;
INSERT INTO `r_patient_vept` VALUES (4,185,24,1,1,1,1,1,11,1,1,1,1,'2020-12-11 17:02:06','2020-12-11 17:02:06');
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
  `rpep` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_wcst`
--

LOCK TABLES `r_patient_wcst` WRITE;
/*!40000 ALTER TABLE `r_patient_wcst` DISABLE KEYS */;
INSERT INTO `r_patient_wcst` VALUES (14,185,21,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'2020-12-11 17:01:34','2020-12-11 17:01:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_ymrs`
--

LOCK TABLES `r_patient_ymrs` WRITE;
/*!40000 ALTER TABLE `r_patient_ymrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_patient_ymrs` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user`
--

LOCK TABLES `s_user` WRITE;
/*!40000 ALTER TABLE `s_user` DISABLE KEYS */;
INSERT INTO `s_user` VALUES (1,'yangjinyu','yangjingyu',NULL,1,'杨景钰',0),(2,'test','test',NULL,1,'测试',0);
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

-- Dump completed on 2020-12-11 17:27:28
