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
INSERT INTO `b_patient_base_info` VALUES (1,'skj',0,'2020-12-01','汉族',1,'2020-12-04 05:56:12','2020-12-04 05:56:12'),(7,'skj',0,'2020-12-01','满族',1,'2020-12-08 23:02:52','2020-12-08 23:02:52'),(8,'冯浩',0,'2020-12-01','汉族',1,'2020-12-08 23:06:13','2020-12-08 23:06:13'),(9,'潘春雨',1,'1984-02-07','蒙古族',1,'2020-12-09 20:41:14','2020-12-09 20:41:14'),(10,'skj',0,'2020-12-01','汉族',1,'2020-12-10 11:22:53','2020-12-10 11:22:53'),(11,'pcy',1,'2020-12-08','藏族',1,'2020-12-10 11:53:45','2020-12-10 11:53:45');
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
  `diagnosis` tinyint(4) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `waist` float DEFAULT NULL,
  `hip` float DEFAULT NULL,
  `handy` tinyint(4) DEFAULT NULL,
  `note` text,
  `other_diagnosis` text,
  `doctor_id` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_id` (`doctor_id`,`patient_id`),
  KEY `fk_d_patient_detail_1_idx` (`patient_id`),
  CONSTRAINT `d_patient_detail_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `b_patient_base_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_patient_detail`
--

LOCK TABLES `d_patient_detail` WRITE;
/*!40000 ALTER TABLE `d_patient_detail` DISABLE KEYS */;
INSERT INTO `d_patient_detail` VALUES (24,1,1,'NN_00000001_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-04 05:56:12','2020-12-04 05:56:12'),(25,1,2,'NN_00000001_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-04 05:57:22','2020-12-04 05:57:22'),(27,1,3,'NN_00000001_S003',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-04 09:36:51','2020-12-04 09:36:51'),(33,1,4,'NN_00000001_S004',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-04 10:35:38','2020-12-04 10:35:38'),(35,1,5,'NN_00000001_S005',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-04 17:41:35','2020-12-04 17:41:35'),(36,1,6,'NN_00000001_S006',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-04 20:02:36','2020-12-04 20:02:36'),(38,1,7,'NN_00000001_S007',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-04 20:05:25','2020-12-04 20:05:25'),(41,1,8,'NN_00000001_S008',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-04 22:22:06','2020-12-04 22:22:06'),(42,1,9,'NN_00000001_S009',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 13:40:22','2020-12-05 13:40:22'),(43,1,10,'NN_00000001_S010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 13:40:48','2020-12-05 13:40:48'),(45,1,11,'NN_00000001_S011',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 15:13:28','2020-12-05 15:13:28'),(46,1,12,'NN_00000001_S012',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 15:26:05','2020-12-05 15:26:05'),(47,1,13,'NN_00000001_S013',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 15:59:14','2020-12-05 15:59:14'),(48,1,14,'NN_00000001_S014',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 16:35:01','2020-12-05 16:35:01'),(49,1,15,'NN_00000001_S015',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 16:40:39','2020-12-05 16:40:39'),(52,1,16,'NN_00000001_S016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 17:31:43','2020-12-05 17:31:43'),(54,1,17,'NN_00000001_S017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 18:00:30','2020-12-05 18:00:30'),(56,1,18,'NN_00000001_S018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 19:49:27','2020-12-05 19:49:27'),(57,1,19,'NN_00000001_S019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 19:54:36','2020-12-05 19:54:36'),(58,1,20,'NN_00000001_S020',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 19:56:37','2020-12-05 19:56:37'),(60,1,21,'NN_00000001_S021',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 20:37:03','2020-12-05 20:37:03'),(63,1,22,'NN_00000001_S022',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 21:07:25','2020-12-05 21:07:25'),(64,1,23,'NN_00000001_S023',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 21:09:50','2020-12-05 21:09:50'),(66,1,24,'NN_00000001_S024',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 21:40:30','2020-12-05 21:40:30'),(67,1,25,'NN_00000001_S025',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 21:53:31','2020-12-05 21:53:31'),(68,1,26,'NN_00000001_S026',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 22:53:12','2020-12-05 22:53:12'),(71,1,27,'NN_00000001_S027',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 23:00:23','2020-12-05 23:00:23'),(72,1,28,'NN_00000001_S028',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-05 23:01:57','2020-12-05 23:01:57'),(75,1,29,'NN_00000001_S029',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,123,'123','123',NULL,NULL,NULL,0,NULL,2323,23,23,23,NULL,NULL,NULL,2,'2020-12-06 15:17:41','2020-12-06 15:19:28'),(81,1,30,'NN_00000001_S030',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:49:03','2020-12-06 15:49:03'),(82,1,31,'NN_00000001_S031',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:49:35','2020-12-06 15:49:35'),(83,1,32,'NN_00000001_S032',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:49:46','2020-12-06 15:49:46'),(84,1,33,'NN_00000001_S033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:49:52','2020-12-06 15:49:52'),(85,1,34,'NN_00000001_S034',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:49:56','2020-12-06 15:49:56'),(86,1,35,'NN_00000001_S035',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2020-12-06 15:52:45','2020-12-06 15:52:45'),(91,1,36,'NN_00000001_S036',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-07 15:18:52','2020-12-07 15:18:52'),(92,1,37,'NN_00000001_S037',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 10:40:08','2020-12-08 10:40:08'),(93,1,38,'NN_00000001_S038',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 10:45:18','2020-12-08 10:45:18'),(94,1,39,'NN_00000001_S039',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 11:09:41','2020-12-08 11:09:41'),(95,1,40,'NN_00000001_S040',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 18:44:02','2020-12-08 18:44:02'),(96,1,41,'NN_00000001_S041',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 18:44:06','2020-12-08 18:44:06'),(97,1,42,'NN_00000001_S042',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 19:18:33','2020-12-08 19:18:33'),(99,1,43,'NN_00000001_S043',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 19:50:18','2020-12-08 19:50:18'),(100,1,44,'NN_00000001_S044',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 19:57:54','2020-12-08 19:57:54'),(101,1,45,'NN_00000001_S045',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 19:59:19','2020-12-08 19:59:19'),(102,1,46,'NN_00000001_S046',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 20:03:06','2020-12-08 20:03:06'),(103,1,47,'NN_00000001_S047',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 20:30:49','2020-12-08 20:30:49'),(104,1,48,'NN_00000001_S048',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 20:32:13','2020-12-08 20:32:13'),(105,1,49,'NN_00000001_S049',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 20:33:41','2020-12-08 20:33:41'),(106,1,50,'NN_00000001_S050',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 20:34:13','2020-12-08 20:34:13'),(107,1,51,'NN_00000001_S051',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 21:32:51','2020-12-08 21:32:51'),(108,1,52,'NN_00000001_S052',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 22:42:12','2020-12-08 22:42:12'),(109,7,1,'NN_00000007_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 23:02:52','2020-12-08 23:02:52'),(110,8,1,'NN_00000008_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 23:06:13','2020-12-08 23:06:13'),(114,1,53,'NN_00000001_S053',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:44:42','2020-12-09 10:44:42'),(115,1,54,'NN_00000001_S054',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:58:23','2020-12-09 10:58:23'),(116,1,55,'NN_00000001_S055',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:59:16','2020-12-09 10:59:16'),(117,1,56,'NN_00000001_S056',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 11:08:39','2020-12-09 11:08:39'),(118,1,57,'NN_00000001_S057',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 11:08:40','2020-12-09 11:08:40'),(119,1,58,'NN_00000001_S058',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 11:09:47','2020-12-09 11:09:47'),(120,1,59,'NN_00000001_S059',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 11:10:07','2020-12-09 11:10:07'),(122,1,60,'NN_00000001_S060',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23,'ww','s',NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 11:49:05','2020-12-09 12:29:27'),(123,1,61,'NN_00000001_S061',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:29:54','2020-12-09 12:29:54'),(124,1,62,'NN_00000001_S062',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:37:05','2020-12-09 12:37:05'),(125,1,63,'NN_00000001_S063',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:39:14','2020-12-09 12:39:14'),(130,1,64,'NN_00000001_S064',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:56:37','2020-12-09 12:56:37'),(131,1,65,'NN_00000001_S065',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:59:47','2020-12-09 12:59:47'),(134,1,66,'NN_00000001_S066',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:02:05','2020-12-09 15:02:05'),(138,1,67,'NN_00000001_S067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:12:06','2020-12-09 15:12:06'),(143,1,68,'NN_00000001_S068',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:45:49','2020-12-09 15:45:49'),(146,1,69,'NN_00000001_S069',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:54:02','2020-12-09 15:54:02'),(147,1,70,'NN_00000001_S070',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'1','1',NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:54:04','2020-12-09 15:54:42'),(153,1,71,'NN_00000001_S071',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 18:13:16','2020-12-09 18:13:16'),(157,1,72,'NN_00000001_S072',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:11:42','2020-12-09 20:11:42'),(158,1,73,'NN_00000001_S073',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:13:19','2020-12-09 20:13:19'),(160,1,74,'NN_00000001_S074',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:28:11','2020-12-09 20:28:11'),(161,1,75,'NN_00000001_S075',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:28:48','2020-12-09 20:28:48'),(163,9,1,'NN_00000009_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:41:14','2020-12-09 20:41:14'),(164,7,2,'NN_00000007_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:44:14','2020-12-09 20:44:14'),(165,10,1,'NN_00000010_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:22:53','2020-12-10 11:22:53'),(167,1,76,'NN_00000001_S076',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:53:19','2020-12-10 11:53:19'),(168,1,77,'NN_00000001_S077',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:53:24','2020-12-10 11:53:24'),(169,11,1,'NN_00000011_S001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:53:45','2020-12-10 11:53:45'),(170,1,78,'NN_00000001_S078',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 13:55:43','2020-12-10 13:55:43'),(171,8,2,'NN_00000008_S002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 16:19:00','2020-12-10 16:19:00');
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
INSERT INTO `django_session` VALUES ('0q6bvadvsjqs9ltrplc3g5r1esh6jie2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:54:37.526144'),('17z08nw0xthxk1pzsnamrdaoywssuhsk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 18:42:45.105513'),('18ywd70f7rqscd1l0qsueuxg2fvzj8e0','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 11:43:09.449747'),('2xiynyca6bq848hzqcmk8judkn97m2n1','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 11:21:25.265564'),('3mcgbbbmuwvxa3q0lgr9fgmdzeuxnkz5','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 12:20:55.828445'),('3ribkwhjpqwntjo5h8kaypcp6108vvnx','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:15:01.986713'),('3wj345ws2qanxmm1ox1b1s9cyb2os7ax','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 14:40:47.557579'),('47mo3hqtbk9lneocrsr7syt6vcnifa3f','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 03:54:20.160003'),('7l4zfq634t8q41gm0437p1rdyudvbvya','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 21:11:19.455516'),('9ievv7g6ngtcgcp8zsf0jlacs8vcp4lu','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 15:09:38.856439'),('e33x6spaf9i7qxk451lyeh867pjo7rae','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 23:06:25.684033'),('ezysxk1m0odvfeh73hyh59fd36qekjmv','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-09 01:25:39.089069'),('fhigdea4b3vwqpgap9g670bytr6xqdx2','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 12:53:22.570517'),('gl9fwjpancwbo8424d34cy44h3o99kfz','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 17:34:43.507650'),('i6gmwhkp14j569tofiqsn57x9ycpn50r','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 18:48:13.558019'),('ma8wxi68arfb5b1fyexiiiabvwnmm76e','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 19:36:05.062063'),('myskys04w4rndk3jakefab77wa5rjf3y','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 23:40:55.304219'),('okomwad0lnfnb3vypje857zelf5fsawf','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-10 17:19:09.756478'),('p0a8inlwjj9e72s4ru0sizibofmin8tl','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-04 23:24:32.152071'),('pjscsxa5rr5dnmofm4kecv041mquaox4','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-06 00:30:59.030107'),('rq73k4a6mt4amsc17x3hm2p7dnvr6n7j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 11:56:47.718292'),('rr1rse1t0macxlfcuvo2gug6s0iev47x','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-03 02:20:42.110392'),('t2eq9ta5azr1pytoii6f39gfvyfjtx87','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-01 12:01:58.195993'),('umxybq9ezk3g1pma5l9dfvul02yrk9ox','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-02 20:49:36.200364'),('w7xu8p99mv1pmbf5lh1cfc7537s4m1lk','NjhlMTEyYTc0Y2JhODRlNjJiN2YwZmQzZmViNjE5MjZkZmVhZTVhNTp7InVzZXJuYW1lIjoidGVzdCIsImRvY3Rvcl9pZCI6MiwiYWN0aXZlIjp0cnVlfQ==','2020-12-05 20:56:37.337457'),('xx08xijofnkdhtwt12amvny6w3nvwgbm','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-10 16:45:36.341844'),('zfm7mszwndvtt9vtrpec8dlifrfitg0j','Zjc3NzBjOWQxZjJlZmZmNDJlMjk3NmI3ZTk5NTViNjJmZGNhOGE3NTp7InVzZXJuYW1lIjoieWFuZ2ppbnl1IiwiZG9jdG9yX2lkIjoxLCJhY3RpdmUiOnRydWV9','2020-12-04 06:57:29.076181');
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
INSERT INTO `r_patient_atq` VALUES (3,163,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:48','2020-12-09 20:43:48');
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
INSERT INTO `r_patient_basic_information_family` VALUES (2,122,1,0,'shenyang',1,'1',1,NULL,NULL,NULL,NULL,1,'1','1','1','1',NULL,1,1,1,NULL,NULL,1,1,1,1,1,1,'2020-12-09 12:05:37','2020-12-09 12:05:37'),(6,147,1,1,'1',1,NULL,0,1,NULL,NULL,NULL,1,'1','1','1','1',NULL,1,1,1,NULL,NULL,1,0,NULL,1,1,1,'2020-12-09 15:54:42','2020-12-09 15:54:42');
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
INSERT INTO `r_patient_basic_information_study` VALUES (2,147,2,1,1,1,0,NULL,0,NULL,1,'2020-12-09 15:57:48','2020-12-09 15:57:48');
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
INSERT INTO `r_patient_bprs` VALUES (1,114,20,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:35:14','2020-12-09 12:35:14'),(2,124,20,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:37:38','2020-12-09 12:37:38'),(3,125,20,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:40:09','2020-12-09 12:40:09'),(9,143,20,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:46:24','2020-12-09 15:46:24'),(11,163,20,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:42:55','2020-12-09 20:42:55');
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
INSERT INTO `r_patient_cognitive_emotion` VALUES (7,163,14,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:43','2020-12-09 20:43:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_fept`
--

LOCK TABLES `r_patient_fept` WRITE;
/*!40000 ALTER TABLE `r_patient_fept` DISABLE KEYS */;
INSERT INTO `r_patient_fept` VALUES (2,143,23,1,1,1,1,1,1,1,1,1,1,'2020-12-09 15:47:33','2020-12-09 15:47:33');
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
INSERT INTO `r_patient_growth` VALUES (5,163,12,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,33,1,'2020-12-09 20:43:35','2020-12-09 20:43:35',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `r_patient_hama` VALUES (1,114,18,0,NULL,1,NULL,1,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:48:25','2020-12-09 10:48:25'),(2,115,18,1,1,1,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:58:50','2020-12-09 10:58:50'),(3,123,18,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:30:14','2020-12-09 12:30:14'),(4,124,18,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:37:31','2020-12-09 12:37:31'),(5,125,18,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:40:00','2020-12-09 12:40:00'),(11,143,18,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:46:13','2020-12-09 15:46:13'),(13,163,18,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:42:42','2020-12-09 20:42:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_hamd17`
--

LOCK TABLES `r_patient_hamd17` WRITE;
/*!40000 ALTER TABLE `r_patient_hamd17` DISABLE KEYS */;
INSERT INTO `r_patient_hamd17` VALUES (4,107,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-08 21:34:41','2020-12-08 21:34:41'),(9,114,17,1,3,2,0,1,2,3,2,3,3,3,0,1,2,2,2,1,31,1,'2020-12-09 10:45:52','2020-12-09 10:45:52'),(10,115,17,1,NULL,1,NULL,NULL,1,4,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 10:58:41','2020-12-09 10:58:41'),(11,123,17,1,3,3,1,2,1,4,1,1,2,1,2,2,1,2,0,1,28,1,'2020-12-09 12:30:11','2020-12-09 12:30:11'),(12,124,17,3,2,2,1,2,1,3,3,3,3,3,1,1,2,1,0,1,32,1,'2020-12-09 12:37:28','2020-12-09 12:37:28'),(13,125,17,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:39:56','2020-12-09 12:39:56'),(19,143,17,3,1,2,2,2,2,3,3,2,1,3,0,1,1,2,1,1,30,1,'2020-12-09 15:46:07','2020-12-09 15:46:07'),(21,163,17,2,2,1,1,2,1,2,2,2,2,2,0,1,1,1,1,2,25,1,'2020-12-09 20:42:36','2020-12-09 20:42:36');
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
INSERT INTO `r_patient_happiness` VALUES (7,163,10,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:24','2020-12-09 20:43:24'),(8,169,10,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 12:09:08','2020-12-10 12:09:08');
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
INSERT INTO `r_patient_manicsymptom` VALUES (9,163,9,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,1,'2020-12-09 20:43:20','2020-12-09 20:43:20'),(10,169,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,77,NULL,NULL,NULL,1,'2020-12-10 11:54:16','2020-12-10 11:54:16');
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
INSERT INTO `r_patient_pleasure` VALUES (8,163,11,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:30','2020-12-09 20:43:30'),(9,169,11,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 12:13:01','2020-12-10 12:13:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_rbans`
--

LOCK TABLES `r_patient_rbans` WRITE;
/*!40000 ALTER TABLE `r_patient_rbans` DISABLE KEYS */;
INSERT INTO `r_patient_rbans` VALUES (3,143,22,1,1,1,1,1,NULL,1,1,1,1,1,1,1,1,1,1,1,1,1,'2020-12-09 15:47:15','2020-12-09 15:47:15');
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
) ENGINE=InnoDB AUTO_INCREMENT=1427 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_scales`
--

LOCK TABLES `r_patient_scales` WRITE;
/*!40000 ALTER TABLE `r_patient_scales` DISABLE KEYS */;
INSERT INTO `r_patient_scales` VALUES (1,95,1,0,'2020-12-08 18:44:02'),(2,95,2,0,'2020-12-08 18:44:02'),(3,95,3,0,'2020-12-08 18:44:02'),(4,95,4,0,'2020-12-08 18:44:02'),(5,95,5,0,'2020-12-08 18:44:02'),(6,95,17,0,'2020-12-08 18:44:02'),(7,95,18,0,'2020-12-08 18:44:02'),(8,95,19,0,'2020-12-08 18:44:02'),(9,95,20,0,'2020-12-08 18:44:02'),(10,95,21,0,'2020-12-08 18:44:03'),(11,95,22,0,'2020-12-08 18:44:03'),(12,95,23,0,'2020-12-08 18:44:03'),(13,95,24,0,'2020-12-08 18:44:03'),(14,95,27,0,'2020-12-08 18:44:03'),(15,95,28,0,'2020-12-08 18:44:03'),(16,96,1,0,'2020-12-08 18:44:06'),(17,96,2,0,'2020-12-08 18:44:06'),(18,96,3,0,'2020-12-08 18:44:06'),(19,96,4,0,'2020-12-08 18:44:06'),(20,96,5,0,'2020-12-08 18:44:06'),(21,96,17,0,'2020-12-08 18:44:06'),(22,96,18,0,'2020-12-08 18:44:06'),(23,96,19,0,'2020-12-08 18:44:07'),(24,96,20,0,'2020-12-08 18:44:07'),(25,96,21,0,'2020-12-08 18:44:07'),(26,96,22,0,'2020-12-08 18:44:07'),(27,96,23,0,'2020-12-08 18:44:07'),(28,96,24,0,'2020-12-08 18:44:07'),(29,96,27,0,'2020-12-08 18:44:07'),(30,96,28,0,'2020-12-08 18:44:07'),(31,97,1,0,'2020-12-08 19:18:33'),(32,97,2,0,'2020-12-08 19:18:33'),(33,97,3,0,'2020-12-08 19:18:33'),(34,97,4,0,'2020-12-08 19:18:33'),(35,97,5,0,'2020-12-08 19:18:33'),(36,97,17,0,'2020-12-08 19:18:33'),(37,97,18,0,'2020-12-08 19:18:33'),(38,97,19,0,'2020-12-08 19:18:33'),(39,97,20,0,'2020-12-08 19:18:33'),(40,97,21,0,'2020-12-08 19:18:33'),(41,97,22,0,'2020-12-08 19:18:34'),(42,97,23,0,'2020-12-08 19:18:34'),(43,97,24,0,'2020-12-08 19:18:34'),(44,97,27,0,'2020-12-08 19:18:34'),(45,97,28,0,'2020-12-08 19:18:34'),(61,99,1,0,'2020-12-08 19:50:18'),(62,99,2,0,'2020-12-08 19:50:18'),(63,99,3,0,'2020-12-08 19:50:19'),(64,99,4,0,'2020-12-08 19:50:19'),(65,99,5,0,'2020-12-08 19:50:19'),(66,99,17,0,'2020-12-08 19:50:19'),(67,99,18,0,'2020-12-08 19:50:19'),(68,99,19,0,'2020-12-08 19:50:19'),(69,99,20,0,'2020-12-08 19:50:19'),(70,99,21,0,'2020-12-08 19:50:19'),(71,99,22,0,'2020-12-08 19:50:19'),(72,99,23,0,'2020-12-08 19:50:19'),(73,99,24,0,'2020-12-08 19:50:19'),(74,99,27,0,'2020-12-08 19:50:19'),(75,99,28,0,'2020-12-08 19:50:19'),(76,100,1,0,'2020-12-08 19:57:54'),(77,100,2,0,'2020-12-08 19:57:54'),(78,100,3,0,'2020-12-08 19:57:54'),(79,100,4,0,'2020-12-08 19:57:54'),(80,100,5,0,'2020-12-08 19:57:54'),(81,100,17,0,'2020-12-08 19:57:54'),(82,100,18,0,'2020-12-08 19:57:54'),(83,100,19,0,'2020-12-08 19:57:54'),(84,100,20,0,'2020-12-08 19:57:54'),(85,100,21,0,'2020-12-08 19:57:54'),(86,100,22,0,'2020-12-08 19:57:54'),(87,100,23,0,'2020-12-08 19:57:54'),(88,100,24,0,'2020-12-08 19:57:55'),(89,100,27,0,'2020-12-08 19:57:55'),(90,100,28,0,'2020-12-08 19:57:55'),(91,101,1,0,'2020-12-08 19:59:19'),(92,101,2,0,'2020-12-08 19:59:19'),(93,101,3,0,'2020-12-08 19:59:19'),(94,101,4,0,'2020-12-08 19:59:19'),(95,101,5,0,'2020-12-08 19:59:19'),(96,101,17,0,'2020-12-08 19:59:19'),(97,101,18,0,'2020-12-08 19:59:19'),(98,101,19,0,'2020-12-08 19:59:19'),(99,101,20,0,'2020-12-08 19:59:19'),(100,101,21,0,'2020-12-08 19:59:19'),(101,101,22,0,'2020-12-08 19:59:19'),(102,101,23,0,'2020-12-08 19:59:19'),(103,101,24,0,'2020-12-08 19:59:19'),(104,101,27,0,'2020-12-08 19:59:19'),(105,101,28,0,'2020-12-08 19:59:19'),(106,102,1,0,'2020-12-08 20:03:06'),(107,102,2,0,'2020-12-08 20:03:06'),(108,102,3,0,'2020-12-08 20:03:06'),(109,102,4,0,'2020-12-08 20:03:06'),(110,102,5,0,'2020-12-08 20:03:06'),(111,102,17,0,'2020-12-08 20:03:06'),(112,102,18,0,'2020-12-08 20:03:07'),(113,102,19,0,'2020-12-08 20:03:07'),(114,102,20,0,'2020-12-08 20:03:07'),(115,102,21,0,'2020-12-08 20:03:07'),(116,102,22,0,'2020-12-08 20:03:07'),(117,102,23,0,'2020-12-08 20:03:07'),(118,102,24,0,'2020-12-08 20:03:07'),(119,102,27,0,'2020-12-08 20:03:07'),(120,102,28,0,'2020-12-08 20:03:07'),(121,103,1,0,'2020-12-08 20:30:49'),(122,103,2,0,'2020-12-08 20:30:49'),(123,103,3,0,'2020-12-08 20:30:49'),(124,103,4,0,'2020-12-08 20:30:49'),(125,103,5,0,'2020-12-08 20:30:49'),(126,103,17,0,'2020-12-08 20:30:49'),(127,103,18,0,'2020-12-08 20:30:49'),(128,103,19,0,'2020-12-08 20:30:49'),(129,103,20,0,'2020-12-08 20:30:49'),(130,103,21,0,'2020-12-08 20:30:49'),(131,103,22,0,'2020-12-08 20:30:50'),(132,103,23,0,'2020-12-08 20:30:50'),(133,103,24,0,'2020-12-08 20:30:50'),(134,103,27,0,'2020-12-08 20:30:50'),(135,103,28,0,'2020-12-08 20:30:50'),(136,104,1,0,'2020-12-08 20:32:13'),(137,104,2,0,'2020-12-08 20:32:13'),(138,104,3,0,'2020-12-08 20:32:13'),(139,104,4,0,'2020-12-08 20:32:13'),(140,104,5,0,'2020-12-08 20:32:14'),(141,104,17,0,'2020-12-08 20:32:14'),(142,104,18,0,'2020-12-08 20:32:14'),(143,104,19,0,'2020-12-08 20:32:14'),(144,104,20,0,'2020-12-08 20:32:14'),(145,104,21,0,'2020-12-08 20:32:14'),(146,104,22,0,'2020-12-08 20:32:14'),(147,104,23,0,'2020-12-08 20:32:14'),(148,104,24,0,'2020-12-08 20:32:14'),(149,104,27,0,'2020-12-08 20:32:14'),(150,104,28,0,'2020-12-08 20:32:14'),(151,105,1,0,'2020-12-08 20:33:42'),(152,105,2,0,'2020-12-08 20:33:42'),(153,105,3,0,'2020-12-08 20:33:42'),(154,105,4,0,'2020-12-08 20:33:42'),(155,105,5,0,'2020-12-08 20:33:42'),(156,105,17,0,'2020-12-08 20:33:42'),(157,105,18,0,'2020-12-08 20:33:42'),(158,105,19,0,'2020-12-08 20:33:42'),(159,105,20,0,'2020-12-08 20:33:42'),(160,105,21,0,'2020-12-08 20:33:42'),(161,105,22,0,'2020-12-08 20:33:42'),(162,105,23,0,'2020-12-08 20:33:42'),(163,105,24,0,'2020-12-08 20:33:42'),(164,105,27,0,'2020-12-08 20:33:42'),(165,105,28,0,'2020-12-08 20:33:42'),(166,106,1,0,'2020-12-08 20:34:13'),(167,106,2,0,'2020-12-08 20:34:13'),(168,106,3,0,'2020-12-08 20:34:13'),(169,106,4,0,'2020-12-08 20:34:13'),(170,106,5,0,'2020-12-08 20:34:13'),(171,106,17,0,'2020-12-08 20:34:13'),(172,106,18,0,'2020-12-08 20:34:13'),(173,106,19,0,'2020-12-08 20:34:13'),(174,106,20,0,'2020-12-08 20:34:13'),(175,106,21,0,'2020-12-08 20:34:13'),(176,106,22,0,'2020-12-08 20:34:13'),(177,106,23,0,'2020-12-08 20:34:14'),(178,106,24,0,'2020-12-08 20:34:14'),(179,106,27,0,'2020-12-08 20:34:14'),(180,106,28,0,'2020-12-08 20:34:14'),(181,107,1,0,'2020-12-08 21:32:51'),(182,107,2,0,'2020-12-08 21:32:51'),(183,107,3,0,'2020-12-08 21:32:51'),(184,107,4,0,'2020-12-08 21:32:51'),(185,107,5,0,'2020-12-08 21:32:51'),(186,107,17,0,'2020-12-08 21:32:51'),(187,107,18,0,'2020-12-08 21:32:51'),(188,107,19,0,'2020-12-08 21:32:51'),(189,107,20,0,'2020-12-08 21:32:51'),(190,107,21,0,'2020-12-08 21:32:51'),(191,107,22,0,'2020-12-08 21:32:51'),(192,107,23,0,'2020-12-08 21:32:51'),(193,107,24,0,'2020-12-08 21:32:52'),(194,107,27,0,'2020-12-08 21:32:52'),(195,107,28,0,'2020-12-08 21:32:52'),(196,108,1,0,'2020-12-08 22:42:12'),(197,108,2,0,'2020-12-08 22:42:12'),(198,108,3,0,'2020-12-08 22:42:12'),(199,108,4,0,'2020-12-08 22:42:12'),(200,108,5,0,'2020-12-08 22:42:13'),(201,108,17,0,'2020-12-08 22:42:13'),(202,108,18,0,'2020-12-08 22:42:13'),(203,108,19,0,'2020-12-08 22:42:13'),(204,108,20,0,'2020-12-08 22:42:13'),(205,108,21,0,'2020-12-08 22:42:13'),(206,108,22,0,'2020-12-08 22:42:13'),(207,108,23,0,'2020-12-08 22:42:13'),(208,108,24,0,'2020-12-08 22:42:13'),(209,108,27,0,'2020-12-08 22:42:13'),(210,108,28,0,'2020-12-08 22:42:13'),(211,109,1,0,'2020-12-08 23:02:52'),(212,109,2,0,'2020-12-08 23:02:52'),(213,109,3,0,'2020-12-08 23:02:52'),(214,109,4,0,'2020-12-08 23:02:52'),(215,109,5,0,'2020-12-08 23:02:52'),(216,109,6,0,'2020-12-08 23:02:52'),(217,109,7,0,'2020-12-08 23:02:52'),(218,109,8,0,'2020-12-08 23:02:52'),(219,109,9,0,'2020-12-08 23:02:52'),(220,109,10,0,'2020-12-08 23:02:52'),(221,109,11,0,'2020-12-08 23:02:52'),(222,109,12,0,'2020-12-08 23:02:52'),(223,109,13,0,'2020-12-08 23:02:52'),(224,109,14,0,'2020-12-08 23:02:52'),(225,109,15,0,'2020-12-08 23:02:52'),(226,109,16,0,'2020-12-08 23:02:52'),(227,109,17,0,'2020-12-08 23:02:52'),(228,109,18,0,'2020-12-08 23:02:52'),(229,109,19,0,'2020-12-08 23:02:52'),(230,109,20,0,'2020-12-08 23:02:52'),(231,109,21,0,'2020-12-08 23:02:52'),(232,109,22,0,'2020-12-08 23:02:52'),(233,109,23,0,'2020-12-08 23:02:52'),(234,109,24,0,'2020-12-08 23:02:52'),(235,109,25,0,'2020-12-08 23:02:53'),(236,109,26,0,'2020-12-08 23:02:53'),(237,109,27,0,'2020-12-08 23:02:53'),(238,109,28,0,'2020-12-08 23:02:53'),(239,110,1,0,'2020-12-08 23:06:13'),(240,110,2,0,'2020-12-08 23:06:13'),(241,110,3,0,'2020-12-08 23:06:14'),(242,110,4,0,'2020-12-08 23:06:14'),(243,110,5,0,'2020-12-08 23:06:14'),(244,110,6,0,'2020-12-08 23:06:14'),(245,110,7,0,'2020-12-08 23:06:14'),(246,110,8,0,'2020-12-08 23:06:14'),(247,110,9,0,'2020-12-08 23:06:14'),(248,110,10,0,'2020-12-08 23:06:14'),(249,110,11,0,'2020-12-08 23:06:14'),(250,110,12,0,'2020-12-08 23:06:14'),(251,110,13,0,'2020-12-08 23:06:14'),(252,110,14,0,'2020-12-08 23:06:14'),(253,110,15,0,'2020-12-08 23:06:14'),(254,110,16,0,'2020-12-08 23:06:14'),(255,110,17,0,'2020-12-08 23:06:14'),(256,110,18,0,'2020-12-08 23:06:14'),(257,110,19,0,'2020-12-08 23:06:14'),(258,110,20,0,'2020-12-08 23:06:14'),(259,110,21,0,'2020-12-08 23:06:14'),(260,110,22,0,'2020-12-08 23:06:14'),(261,110,23,0,'2020-12-08 23:06:14'),(262,110,24,0,'2020-12-08 23:06:14'),(263,110,25,0,'2020-12-08 23:06:14'),(264,110,26,0,'2020-12-08 23:06:14'),(265,110,27,0,'2020-12-08 23:06:14'),(266,110,28,0,'2020-12-08 23:06:14'),(347,114,1,0,'2020-12-09 10:44:42'),(348,114,2,0,'2020-12-09 10:44:42'),(349,114,3,0,'2020-12-09 10:44:42'),(350,114,4,0,'2020-12-09 10:44:42'),(351,114,5,0,'2020-12-09 10:44:42'),(352,114,17,1,'2020-12-09 10:45:52'),(353,114,18,1,'2020-12-09 10:48:25'),(354,114,19,1,'2020-12-09 12:34:58'),(355,114,20,1,'2020-12-09 12:35:15'),(356,114,21,0,'2020-12-09 10:44:42'),(357,114,22,0,'2020-12-09 10:44:42'),(358,114,23,0,'2020-12-09 10:44:42'),(359,114,24,0,'2020-12-09 10:44:42'),(360,114,27,0,'2020-12-09 10:44:42'),(361,114,28,0,'2020-12-09 10:44:42'),(362,115,1,0,'2020-12-09 10:58:23'),(363,115,2,0,'2020-12-09 10:58:23'),(364,115,3,0,'2020-12-09 10:58:23'),(365,115,4,0,'2020-12-09 10:58:23'),(366,115,5,0,'2020-12-09 10:58:23'),(367,115,17,1,'2020-12-09 10:58:41'),(368,115,18,1,'2020-12-09 10:58:50'),(369,115,19,0,'2020-12-09 10:58:23'),(370,115,20,0,'2020-12-09 10:58:23'),(371,115,21,0,'2020-12-09 10:58:23'),(372,115,22,0,'2020-12-09 10:58:23'),(373,115,23,0,'2020-12-09 10:58:23'),(374,115,24,0,'2020-12-09 10:58:23'),(375,115,27,0,'2020-12-09 10:58:23'),(376,115,28,0,'2020-12-09 10:58:23'),(377,116,1,0,'2020-12-09 10:59:16'),(378,116,2,0,'2020-12-09 10:59:16'),(379,116,3,0,'2020-12-09 10:59:16'),(380,116,4,0,'2020-12-09 10:59:16'),(381,116,5,0,'2020-12-09 10:59:16'),(382,116,17,0,'2020-12-09 10:59:16'),(383,116,18,0,'2020-12-09 10:59:16'),(384,116,19,0,'2020-12-09 10:59:16'),(385,116,20,0,'2020-12-09 10:59:16'),(386,116,21,0,'2020-12-09 10:59:16'),(387,116,22,0,'2020-12-09 10:59:16'),(388,116,23,0,'2020-12-09 10:59:16'),(389,116,24,0,'2020-12-09 10:59:16'),(390,116,27,0,'2020-12-09 10:59:16'),(391,116,28,0,'2020-12-09 10:59:16'),(392,117,1,0,'2020-12-09 11:08:39'),(393,117,2,0,'2020-12-09 11:08:39'),(394,117,3,0,'2020-12-09 11:08:39'),(395,117,4,0,'2020-12-09 11:08:39'),(396,117,5,0,'2020-12-09 11:08:39'),(397,117,17,0,'2020-12-09 11:08:39'),(398,117,18,0,'2020-12-09 11:08:39'),(399,117,19,0,'2020-12-09 11:08:40'),(400,117,20,0,'2020-12-09 11:08:40'),(401,117,21,0,'2020-12-09 11:08:40'),(402,117,22,0,'2020-12-09 11:08:40'),(403,117,23,0,'2020-12-09 11:08:40'),(404,117,24,0,'2020-12-09 11:08:40'),(405,117,27,0,'2020-12-09 11:08:40'),(406,117,28,0,'2020-12-09 11:08:40'),(407,118,1,0,'2020-12-09 11:08:40'),(408,118,2,0,'2020-12-09 11:08:40'),(409,118,3,0,'2020-12-09 11:08:40'),(410,118,4,0,'2020-12-09 11:08:40'),(411,118,5,0,'2020-12-09 11:08:40'),(412,118,17,0,'2020-12-09 11:08:40'),(413,118,18,0,'2020-12-09 11:08:40'),(414,118,19,0,'2020-12-09 11:08:40'),(415,118,20,0,'2020-12-09 11:08:40'),(416,118,21,0,'2020-12-09 11:08:40'),(417,118,22,0,'2020-12-09 11:08:40'),(418,118,23,0,'2020-12-09 11:08:41'),(419,118,24,0,'2020-12-09 11:08:41'),(420,118,27,0,'2020-12-09 11:08:41'),(421,118,28,0,'2020-12-09 11:08:41'),(422,119,1,0,'2020-12-09 11:09:47'),(423,119,2,0,'2020-12-09 11:09:47'),(424,119,3,0,'2020-12-09 11:09:47'),(425,119,4,0,'2020-12-09 11:09:47'),(426,119,5,0,'2020-12-09 11:09:47'),(427,119,17,0,'2020-12-09 11:09:47'),(428,119,18,0,'2020-12-09 11:09:47'),(429,119,19,0,'2020-12-09 11:09:47'),(430,119,20,0,'2020-12-09 11:09:47'),(431,119,21,0,'2020-12-09 11:09:47'),(432,119,22,0,'2020-12-09 11:09:48'),(433,119,23,0,'2020-12-09 11:09:48'),(434,119,24,0,'2020-12-09 11:09:48'),(435,119,27,0,'2020-12-09 11:09:48'),(436,119,28,0,'2020-12-09 11:09:48'),(437,120,1,0,'2020-12-09 11:10:07'),(438,120,2,0,'2020-12-09 11:10:07'),(439,120,3,0,'2020-12-09 11:10:07'),(440,120,4,0,'2020-12-09 11:10:07'),(441,120,5,0,'2020-12-09 11:10:07'),(442,120,17,0,'2020-12-09 11:10:07'),(443,120,18,0,'2020-12-09 11:10:07'),(444,120,19,0,'2020-12-09 11:10:07'),(445,120,20,0,'2020-12-09 11:10:07'),(446,120,21,0,'2020-12-09 11:10:07'),(447,120,22,0,'2020-12-09 11:10:08'),(448,120,23,0,'2020-12-09 11:10:08'),(449,120,24,0,'2020-12-09 11:10:08'),(450,120,27,0,'2020-12-09 11:10:08'),(451,120,28,0,'2020-12-09 11:10:08'),(467,122,1,1,'2020-12-09 12:29:27'),(468,122,2,0,'2020-12-09 11:49:05'),(469,122,3,0,'2020-12-09 11:49:05'),(470,122,4,0,'2020-12-09 11:49:05'),(471,122,5,0,'2020-12-09 11:49:05'),(472,122,17,0,'2020-12-09 11:49:05'),(473,122,18,0,'2020-12-09 11:49:06'),(474,122,19,0,'2020-12-09 11:49:06'),(475,122,20,0,'2020-12-09 11:49:06'),(476,122,21,0,'2020-12-09 11:49:06'),(477,122,22,0,'2020-12-09 11:49:06'),(478,122,23,0,'2020-12-09 11:49:06'),(479,122,24,0,'2020-12-09 11:49:06'),(480,122,27,0,'2020-12-09 11:49:06'),(481,122,28,0,'2020-12-09 11:49:06'),(482,123,1,0,'2020-12-09 12:29:54'),(483,123,2,0,'2020-12-09 12:29:54'),(484,123,3,0,'2020-12-09 12:29:54'),(485,123,4,0,'2020-12-09 12:29:54'),(486,123,5,0,'2020-12-09 12:29:54'),(487,123,17,1,'2020-12-09 12:30:11'),(488,123,18,1,'2020-12-09 12:30:14'),(489,123,19,0,'2020-12-09 12:29:54'),(490,123,20,0,'2020-12-09 12:29:54'),(491,123,21,0,'2020-12-09 12:29:54'),(492,123,22,0,'2020-12-09 12:29:54'),(493,123,23,0,'2020-12-09 12:29:54'),(494,123,24,0,'2020-12-09 12:29:55'),(495,123,27,0,'2020-12-09 12:29:55'),(496,123,28,0,'2020-12-09 12:29:55'),(497,124,1,0,'2020-12-09 12:37:05'),(498,124,2,0,'2020-12-09 12:37:05'),(499,124,3,0,'2020-12-09 12:37:05'),(500,124,4,0,'2020-12-09 12:37:05'),(501,124,5,0,'2020-12-09 12:37:05'),(502,124,17,1,'2020-12-09 12:37:28'),(503,124,18,1,'2020-12-09 12:37:31'),(504,124,19,1,'2020-12-09 12:37:35'),(505,124,20,1,'2020-12-09 12:37:38'),(506,124,21,0,'2020-12-09 12:37:05'),(507,124,22,0,'2020-12-09 12:37:05'),(508,124,23,0,'2020-12-09 12:37:05'),(509,124,24,0,'2020-12-09 12:37:05'),(510,124,27,0,'2020-12-09 12:37:05'),(511,124,28,0,'2020-12-09 12:37:05'),(512,125,1,0,'2020-12-09 12:39:14'),(513,125,2,0,'2020-12-09 12:39:14'),(514,125,3,0,'2020-12-09 12:39:14'),(515,125,4,0,'2020-12-09 12:39:14'),(516,125,5,0,'2020-12-09 12:39:14'),(517,125,17,1,'2020-12-09 12:39:57'),(518,125,18,1,'2020-12-09 12:40:00'),(519,125,19,1,'2020-12-09 12:40:02'),(520,125,20,1,'2020-12-09 12:40:09'),(521,125,21,0,'2020-12-09 12:39:14'),(522,125,22,0,'2020-12-09 12:39:14'),(523,125,23,0,'2020-12-09 12:39:14'),(524,125,24,0,'2020-12-09 12:39:15'),(525,125,27,0,'2020-12-09 12:39:15'),(526,125,28,0,'2020-12-09 12:39:15'),(587,130,1,0,'2020-12-09 12:56:38'),(588,130,2,0,'2020-12-09 12:56:38'),(589,130,3,0,'2020-12-09 12:56:38'),(590,130,4,0,'2020-12-09 12:56:38'),(591,130,5,0,'2020-12-09 12:56:38'),(592,130,17,0,'2020-12-09 12:56:38'),(593,130,18,0,'2020-12-09 12:56:38'),(594,130,19,0,'2020-12-09 12:56:38'),(595,130,20,0,'2020-12-09 12:56:38'),(596,130,21,0,'2020-12-09 12:56:38'),(597,130,22,0,'2020-12-09 12:56:38'),(598,130,23,0,'2020-12-09 12:56:38'),(599,130,24,0,'2020-12-09 12:56:38'),(600,130,27,0,'2020-12-09 12:56:38'),(601,130,28,0,'2020-12-09 12:56:38'),(602,131,1,0,'2020-12-09 12:59:47'),(603,131,2,0,'2020-12-09 12:59:47'),(604,131,3,0,'2020-12-09 12:59:47'),(605,131,4,0,'2020-12-09 12:59:47'),(606,131,5,0,'2020-12-09 12:59:47'),(607,131,17,0,'2020-12-09 12:59:47'),(608,131,18,0,'2020-12-09 12:59:47'),(609,131,19,0,'2020-12-09 12:59:47'),(610,131,20,0,'2020-12-09 12:59:47'),(611,131,21,0,'2020-12-09 12:59:47'),(612,131,22,0,'2020-12-09 12:59:47'),(613,131,23,0,'2020-12-09 12:59:47'),(614,131,24,0,'2020-12-09 12:59:47'),(615,131,27,0,'2020-12-09 12:59:47'),(616,131,28,0,'2020-12-09 12:59:47'),(673,134,1,0,'2020-12-09 15:02:05'),(674,134,2,0,'2020-12-09 15:02:05'),(675,134,3,0,'2020-12-09 15:02:05'),(676,134,4,0,'2020-12-09 15:02:05'),(677,134,5,0,'2020-12-09 15:02:05'),(678,134,17,0,'2020-12-09 15:02:05'),(679,134,18,0,'2020-12-09 15:02:05'),(680,134,19,0,'2020-12-09 15:02:05'),(681,134,20,0,'2020-12-09 15:02:05'),(682,134,21,0,'2020-12-09 15:02:05'),(683,134,22,0,'2020-12-09 15:02:05'),(684,134,23,0,'2020-12-09 15:02:05'),(685,134,24,0,'2020-12-09 15:02:05'),(686,134,27,0,'2020-12-09 15:02:05'),(687,134,28,0,'2020-12-09 15:02:05'),(733,138,1,0,'2020-12-09 15:12:06'),(734,138,2,0,'2020-12-09 15:12:06'),(735,138,3,0,'2020-12-09 15:12:06'),(736,138,4,0,'2020-12-09 15:12:06'),(737,138,5,0,'2020-12-09 15:12:06'),(738,138,17,0,'2020-12-09 15:12:06'),(739,138,18,0,'2020-12-09 15:12:06'),(740,138,19,0,'2020-12-09 15:12:06'),(741,138,20,0,'2020-12-09 15:12:06'),(742,138,21,0,'2020-12-09 15:12:06'),(743,138,22,0,'2020-12-09 15:12:06'),(744,138,23,0,'2020-12-09 15:12:06'),(745,138,24,0,'2020-12-09 15:12:07'),(746,138,27,0,'2020-12-09 15:12:07'),(747,138,28,0,'2020-12-09 15:12:07'),(860,143,1,0,'2020-12-09 15:45:49'),(861,143,2,0,'2020-12-09 15:45:49'),(862,143,3,0,'2020-12-09 15:45:49'),(863,143,4,0,'2020-12-09 15:45:49'),(864,143,5,0,'2020-12-09 15:45:49'),(865,143,17,1,'2020-12-09 15:46:07'),(866,143,18,1,'2020-12-09 15:46:13'),(867,143,19,1,'2020-12-09 15:46:20'),(868,143,20,1,'2020-12-09 15:46:24'),(869,143,21,1,'2020-12-09 15:47:02'),(870,143,22,1,'2020-12-09 15:47:15'),(871,143,23,1,'2020-12-09 15:47:33'),(872,143,24,1,'2020-12-09 15:47:45'),(873,143,27,0,'2020-12-09 15:45:49'),(874,143,28,0,'2020-12-09 15:45:49'),(918,146,1,0,'2020-12-09 15:54:02'),(919,146,2,0,'2020-12-09 15:54:02'),(920,146,3,0,'2020-12-09 15:54:02'),(921,146,4,0,'2020-12-09 15:54:02'),(922,146,5,0,'2020-12-09 15:54:02'),(923,146,17,0,'2020-12-09 15:54:02'),(924,146,18,0,'2020-12-09 15:54:02'),(925,146,19,0,'2020-12-09 15:54:03'),(926,146,20,0,'2020-12-09 15:54:03'),(927,146,21,0,'2020-12-09 15:54:03'),(928,146,22,0,'2020-12-09 15:54:03'),(929,146,23,0,'2020-12-09 15:54:03'),(930,146,24,0,'2020-12-09 15:54:03'),(931,146,27,0,'2020-12-09 15:54:03'),(932,146,28,0,'2020-12-09 15:54:03'),(933,147,1,1,'2020-12-09 15:54:42'),(934,147,2,1,'2020-12-09 15:57:49'),(935,147,3,0,'2020-12-09 15:54:04'),(936,147,4,0,'2020-12-09 15:54:04'),(937,147,5,0,'2020-12-09 15:54:04'),(938,147,17,0,'2020-12-09 15:54:04'),(939,147,18,0,'2020-12-09 15:54:04'),(940,147,19,0,'2020-12-09 15:54:04'),(941,147,20,0,'2020-12-09 15:54:04'),(942,147,21,0,'2020-12-09 15:54:04'),(943,147,22,0,'2020-12-09 15:54:04'),(944,147,23,0,'2020-12-09 15:54:04'),(945,147,24,0,'2020-12-09 15:54:04'),(946,147,27,0,'2020-12-09 15:54:04'),(947,147,28,0,'2020-12-09 15:54:04'),(1053,153,1,0,'2020-12-09 18:13:16'),(1054,153,2,0,'2020-12-09 18:13:16'),(1055,153,3,0,'2020-12-09 18:13:16'),(1056,153,4,0,'2020-12-09 18:13:16'),(1057,153,5,0,'2020-12-09 18:13:16'),(1058,153,6,0,'2020-12-09 18:13:16'),(1059,153,17,0,'2020-12-09 18:13:16'),(1060,153,18,0,'2020-12-09 18:13:16'),(1061,153,19,0,'2020-12-09 18:13:16'),(1062,153,20,0,'2020-12-09 18:13:16'),(1063,153,21,0,'2020-12-09 18:13:16'),(1064,153,22,0,'2020-12-09 18:13:16'),(1065,153,23,0,'2020-12-09 18:13:16'),(1066,153,24,0,'2020-12-09 18:13:16'),(1067,153,27,0,'2020-12-09 18:13:16'),(1068,153,28,0,'2020-12-09 18:13:16'),(1129,157,1,0,'2020-12-09 20:11:42'),(1130,157,2,0,'2020-12-09 20:11:42'),(1131,157,3,0,'2020-12-09 20:11:42'),(1132,157,4,0,'2020-12-09 20:11:43'),(1133,157,5,0,'2020-12-09 20:11:43'),(1134,157,6,0,'2020-12-09 20:11:43'),(1135,157,17,0,'2020-12-09 20:11:43'),(1136,157,18,0,'2020-12-09 20:11:43'),(1137,157,19,0,'2020-12-09 20:11:43'),(1138,157,20,0,'2020-12-09 20:11:43'),(1139,157,21,0,'2020-12-09 20:11:43'),(1140,157,22,0,'2020-12-09 20:11:43'),(1141,157,23,0,'2020-12-09 20:11:43'),(1142,157,24,0,'2020-12-09 20:11:43'),(1143,157,27,0,'2020-12-09 20:11:43'),(1144,157,28,0,'2020-12-09 20:11:43'),(1145,158,1,0,'2020-12-09 20:13:19'),(1146,158,2,0,'2020-12-09 20:13:19'),(1147,158,3,0,'2020-12-09 20:13:19'),(1148,158,4,0,'2020-12-09 20:13:19'),(1149,158,5,0,'2020-12-09 20:13:19'),(1150,158,6,0,'2020-12-09 20:13:19'),(1151,158,17,0,'2020-12-09 20:13:19'),(1152,158,18,0,'2020-12-09 20:13:19'),(1153,158,19,0,'2020-12-09 20:13:19'),(1154,158,20,0,'2020-12-09 20:13:19'),(1155,158,21,0,'2020-12-09 20:13:19'),(1156,158,22,0,'2020-12-09 20:13:19'),(1157,158,23,0,'2020-12-09 20:13:19'),(1158,158,24,0,'2020-12-09 20:13:19'),(1159,158,27,0,'2020-12-09 20:13:19'),(1160,158,28,0,'2020-12-09 20:13:19'),(1177,160,1,0,'2020-12-09 20:28:11'),(1178,160,2,0,'2020-12-09 20:28:11'),(1179,160,3,0,'2020-12-09 20:28:11'),(1180,160,4,0,'2020-12-09 20:28:11'),(1181,160,5,0,'2020-12-09 20:28:11'),(1182,160,6,0,'2020-12-09 20:28:11'),(1183,160,17,0,'2020-12-09 20:28:11'),(1184,160,18,0,'2020-12-09 20:28:11'),(1185,160,19,0,'2020-12-09 20:28:11'),(1186,160,20,0,'2020-12-09 20:28:11'),(1187,160,21,0,'2020-12-09 20:28:12'),(1188,160,22,0,'2020-12-09 20:28:12'),(1189,160,23,0,'2020-12-09 20:28:12'),(1190,160,24,0,'2020-12-09 20:28:12'),(1191,160,27,0,'2020-12-09 20:28:12'),(1192,160,28,0,'2020-12-09 20:28:12'),(1193,161,1,0,'2020-12-09 20:28:48'),(1194,161,2,0,'2020-12-09 20:28:48'),(1195,161,3,0,'2020-12-09 20:28:48'),(1196,161,4,0,'2020-12-09 20:28:48'),(1197,161,5,0,'2020-12-09 20:28:48'),(1198,161,6,0,'2020-12-09 20:28:48'),(1199,161,17,0,'2020-12-09 20:28:48'),(1200,161,18,0,'2020-12-09 20:28:48'),(1201,161,19,0,'2020-12-09 20:28:48'),(1202,161,20,0,'2020-12-09 20:28:48'),(1203,161,21,0,'2020-12-09 20:28:48'),(1204,161,22,0,'2020-12-09 20:28:48'),(1205,161,23,0,'2020-12-09 20:28:48'),(1206,161,24,0,'2020-12-09 20:28:48'),(1207,161,27,0,'2020-12-09 20:28:48'),(1208,161,28,0,'2020-12-09 20:28:48'),(1237,163,1,0,'2020-12-09 20:41:14'),(1238,163,2,0,'2020-12-09 20:41:14'),(1239,163,3,0,'2020-12-09 20:41:14'),(1240,163,4,0,'2020-12-09 20:41:15'),(1241,163,5,0,'2020-12-09 20:41:15'),(1242,163,6,0,'2020-12-09 20:41:15'),(1243,163,7,1,'2020-12-09 20:43:05'),(1244,163,8,1,'2020-12-09 20:43:12'),(1245,163,9,1,'2020-12-09 20:43:20'),(1246,163,10,1,'2020-12-09 20:43:24'),(1247,163,11,1,'2020-12-09 20:43:30'),(1248,163,12,1,'2020-12-09 20:43:36'),(1249,163,14,1,'2020-12-09 20:43:43'),(1250,163,16,1,'2020-12-09 20:43:48'),(1251,163,17,1,'2020-12-09 20:42:37'),(1252,163,18,1,'2020-12-09 20:42:42'),(1253,163,19,1,'2020-12-09 20:42:50'),(1254,163,20,1,'2020-12-09 20:42:55'),(1255,163,21,0,'2020-12-09 20:41:16'),(1256,163,22,0,'2020-12-09 20:41:16'),(1257,163,23,0,'2020-12-09 20:41:16'),(1258,163,24,0,'2020-12-09 20:41:16'),(1259,163,25,0,'2020-12-09 20:41:16'),(1260,163,26,0,'2020-12-09 20:41:16'),(1261,163,27,0,'2020-12-09 20:41:16'),(1262,163,28,0,'2020-12-09 20:41:16'),(1263,164,1,0,'2020-12-09 20:44:15'),(1264,164,2,0,'2020-12-09 20:44:15'),(1265,164,3,0,'2020-12-09 20:44:15'),(1266,164,4,0,'2020-12-09 20:44:15'),(1267,164,5,0,'2020-12-09 20:44:15'),(1268,164,6,0,'2020-12-09 20:44:15'),(1269,164,17,0,'2020-12-09 20:44:15'),(1270,164,18,0,'2020-12-09 20:44:15'),(1271,164,19,0,'2020-12-09 20:44:15'),(1272,164,20,0,'2020-12-09 20:44:15'),(1273,164,21,0,'2020-12-09 20:44:15'),(1274,164,22,0,'2020-12-09 20:44:15'),(1275,164,23,0,'2020-12-09 20:44:15'),(1276,164,24,0,'2020-12-09 20:44:16'),(1277,164,27,0,'2020-12-09 20:44:16'),(1278,164,28,0,'2020-12-09 20:44:16'),(1279,165,1,0,'2020-12-10 11:22:53'),(1280,165,2,0,'2020-12-10 11:22:53'),(1281,165,3,0,'2020-12-10 11:22:53'),(1282,165,4,0,'2020-12-10 11:22:53'),(1283,165,5,0,'2020-12-10 11:22:53'),(1284,165,6,0,'2020-12-10 11:22:53'),(1285,165,7,0,'2020-12-10 11:22:53'),(1286,165,8,0,'2020-12-10 11:22:53'),(1287,165,9,0,'2020-12-10 11:22:53'),(1288,165,10,0,'2020-12-10 11:22:53'),(1289,165,11,0,'2020-12-10 11:22:53'),(1290,165,12,0,'2020-12-10 11:22:53'),(1291,165,13,0,'2020-12-10 11:22:53'),(1292,165,14,0,'2020-12-10 11:22:53'),(1293,165,15,0,'2020-12-10 11:22:53'),(1294,165,16,0,'2020-12-10 11:22:53'),(1295,165,17,0,'2020-12-10 11:22:53'),(1296,165,18,0,'2020-12-10 11:22:53'),(1297,165,19,0,'2020-12-10 11:22:53'),(1298,165,20,0,'2020-12-10 11:22:53'),(1299,165,21,0,'2020-12-10 11:22:53'),(1300,165,22,0,'2020-12-10 11:22:53'),(1301,165,23,0,'2020-12-10 11:22:53'),(1302,165,24,0,'2020-12-10 11:22:53'),(1303,165,25,0,'2020-12-10 11:22:53'),(1304,165,26,0,'2020-12-10 11:22:53'),(1305,165,27,0,'2020-12-10 11:22:54'),(1306,165,28,0,'2020-12-10 11:22:54'),(1335,167,1,0,'2020-12-10 11:53:19'),(1336,167,2,0,'2020-12-10 11:53:20'),(1337,167,3,0,'2020-12-10 11:53:20'),(1338,167,4,0,'2020-12-10 11:53:20'),(1339,167,5,0,'2020-12-10 11:53:20'),(1340,167,6,0,'2020-12-10 11:53:20'),(1341,167,17,0,'2020-12-10 11:53:20'),(1342,167,18,0,'2020-12-10 11:53:20'),(1343,167,19,0,'2020-12-10 11:53:20'),(1344,167,20,0,'2020-12-10 11:53:20'),(1345,167,21,0,'2020-12-10 11:53:20'),(1346,167,22,0,'2020-12-10 11:53:20'),(1347,167,23,0,'2020-12-10 11:53:20'),(1348,167,24,0,'2020-12-10 11:53:20'),(1349,167,27,0,'2020-12-10 11:53:20'),(1350,167,28,0,'2020-12-10 11:53:20'),(1351,168,1,0,'2020-12-10 11:53:24'),(1352,168,2,0,'2020-12-10 11:53:24'),(1353,168,3,0,'2020-12-10 11:53:24'),(1354,168,4,0,'2020-12-10 11:53:24'),(1355,168,5,0,'2020-12-10 11:53:24'),(1356,168,6,0,'2020-12-10 11:53:24'),(1357,168,17,0,'2020-12-10 11:53:24'),(1358,168,18,0,'2020-12-10 11:53:24'),(1359,168,19,0,'2020-12-10 11:53:24'),(1360,168,20,0,'2020-12-10 11:53:24'),(1361,168,21,0,'2020-12-10 11:53:24'),(1362,168,22,0,'2020-12-10 11:53:24'),(1363,168,23,0,'2020-12-10 11:53:24'),(1364,168,24,0,'2020-12-10 11:53:24'),(1365,168,27,0,'2020-12-10 11:53:24'),(1366,168,28,0,'2020-12-10 11:53:24'),(1367,169,1,0,'2020-12-10 11:53:45'),(1368,169,2,0,'2020-12-10 11:53:45'),(1369,169,3,0,'2020-12-10 11:53:45'),(1370,169,4,0,'2020-12-10 11:53:45'),(1371,169,5,0,'2020-12-10 11:53:45'),(1372,169,6,0,'2020-12-10 11:53:45'),(1373,169,7,1,'2020-12-10 11:53:55'),(1374,169,8,1,'2020-12-10 11:54:01'),(1375,169,9,1,'2020-12-10 12:06:16'),(1376,169,10,1,'2020-12-10 12:09:08'),(1377,169,11,1,'2020-12-10 12:13:01'),(1378,169,12,0,'2020-12-10 11:53:45'),(1379,169,13,0,'2020-12-10 11:53:45'),(1380,169,14,0,'2020-12-10 11:53:46'),(1381,169,15,0,'2020-12-10 11:53:46'),(1382,169,16,0,'2020-12-10 11:53:46'),(1383,169,17,0,'2020-12-10 11:53:46'),(1384,169,18,0,'2020-12-10 11:53:46'),(1385,169,19,0,'2020-12-10 11:53:46'),(1386,169,20,0,'2020-12-10 11:53:46'),(1387,169,21,0,'2020-12-10 11:53:46'),(1388,169,22,0,'2020-12-10 11:53:46'),(1389,169,23,0,'2020-12-10 11:53:46'),(1390,169,24,0,'2020-12-10 11:53:46'),(1391,169,25,0,'2020-12-10 11:53:46'),(1392,169,26,0,'2020-12-10 11:53:46'),(1393,169,27,0,'2020-12-10 11:53:46'),(1394,169,28,0,'2020-12-10 11:53:46'),(1395,170,1,0,'2020-12-10 13:55:43'),(1396,170,2,0,'2020-12-10 13:55:43'),(1397,170,3,0,'2020-12-10 13:55:43'),(1398,170,4,0,'2020-12-10 13:55:43'),(1399,170,5,0,'2020-12-10 13:55:43'),(1400,170,6,0,'2020-12-10 13:55:43'),(1401,170,17,0,'2020-12-10 13:55:43'),(1402,170,18,0,'2020-12-10 13:55:43'),(1403,170,19,0,'2020-12-10 13:55:43'),(1404,170,20,0,'2020-12-10 13:55:43'),(1405,170,21,0,'2020-12-10 13:55:43'),(1406,170,22,0,'2020-12-10 13:55:43'),(1407,170,23,0,'2020-12-10 13:55:43'),(1408,170,24,0,'2020-12-10 13:55:43'),(1409,170,27,0,'2020-12-10 13:55:43'),(1410,170,28,0,'2020-12-10 13:55:43'),(1411,171,1,0,'2020-12-10 16:19:00'),(1412,171,2,0,'2020-12-10 16:19:01'),(1413,171,3,0,'2020-12-10 16:19:01'),(1414,171,4,0,'2020-12-10 16:19:01'),(1415,171,5,0,'2020-12-10 16:19:01'),(1416,171,6,0,'2020-12-10 16:19:01'),(1417,171,17,0,'2020-12-10 16:19:01'),(1418,171,18,0,'2020-12-10 16:19:01'),(1419,171,19,0,'2020-12-10 16:19:01'),(1420,171,20,0,'2020-12-10 16:19:01'),(1421,171,21,0,'2020-12-10 16:19:01'),(1422,171,22,0,'2020-12-10 16:19:01'),(1423,171,23,0,'2020-12-10 16:19:01'),(1424,171,24,0,'2020-12-10 16:19:01'),(1425,171,27,0,'2020-12-10 16:19:01'),(1426,171,28,0,'2020-12-10 16:19:02');
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
INSERT INTO `r_patient_suicidal` VALUES (12,163,8,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:12','2020-12-09 20:43:12'),(13,169,8,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:54:01','2020-12-10 11:54:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_vept`
--

LOCK TABLES `r_patient_vept` WRITE;
/*!40000 ALTER TABLE `r_patient_vept` DISABLE KEYS */;
INSERT INTO `r_patient_vept` VALUES (2,143,24,1,1,1,1,1,1,1,1,1,1,'2020-12-09 15:47:45','2020-12-09 15:47:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_patient_wcst`
--

LOCK TABLES `r_patient_wcst` WRITE;
/*!40000 ALTER TABLE `r_patient_wcst` DISABLE KEYS */;
INSERT INTO `r_patient_wcst` VALUES (11,143,21,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'2020-12-09 15:46:43','2020-12-09 15:46:43');
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
INSERT INTO `r_patient_ybobsessiontable` VALUES (10,163,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 20:43:05','2020-12-09 20:43:05'),(11,169,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-10 11:53:55','2020-12-10 11:53:55');
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
INSERT INTO `r_patient_ymrs` VALUES (1,114,19,2,2,2,2,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:34:58','2020-12-09 12:34:58'),(2,124,19,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:37:35','2020-12-09 12:37:35'),(3,125,19,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 12:40:02','2020-12-09 12:40:02'),(9,143,19,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2020-12-09 15:46:20','2020-12-09 15:46:20'),(11,163,19,0,0,0,1,1,1,1,1,1,1,1,8,1,'2020-12-09 20:42:50','2020-12-09 20:42:50');
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

-- Dump completed on 2020-12-10 16:46:21
