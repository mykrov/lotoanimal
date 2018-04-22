CREATE DATABASE  IF NOT EXISTS `loto2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `loto2`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loto2
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add agencia',7,'add_agencia'),(20,'Can change agencia',7,'change_agencia'),(21,'Can delete agencia',7,'delete_agencia'),(22,'Can add animales',8,'add_animales'),(23,'Can change animales',8,'change_animales'),(24,'Can delete animales',8,'delete_animales'),(25,'Can add loteria',9,'add_loteria'),(26,'Can change loteria',9,'change_loteria'),(27,'Can delete loteria',9,'delete_loteria'),(28,'Can add ticke_item',10,'add_ticke_item'),(29,'Can change ticke_item',10,'change_ticke_item'),(30,'Can delete ticke_item',10,'delete_ticke_item'),(31,'Can add ticket',11,'add_ticket'),(32,'Can change ticket',11,'change_ticket'),(33,'Can delete ticket',11,'delete_ticket'),(34,'Can add usuario',12,'add_usuario'),(35,'Can change usuario',12,'change_usuario'),(36,'Can delete usuario',12,'delete_usuario'),(37,'Can add agenciauser',13,'add_agenciauser'),(38,'Can change agenciauser',13,'change_agenciauser'),(39,'Can delete agenciauser',13,'delete_agenciauser'),(40,'Can add sorteo',14,'add_sorteo'),(41,'Can change sorteo',14,'change_sorteo'),(42,'Can delete sorteo',14,'delete_sorteo'),(43,'Can add perfil',15,'add_perfil'),(44,'Can change perfil',15,'change_perfil'),(45,'Can delete perfil',15,'delete_perfil'),(46,'Can add horas',16,'add_horas'),(47,'Can change horas',16,'change_horas'),(48,'Can delete horas',16,'delete_horas'),(49,'Can add animal ganador',17,'add_animalganador'),(50,'Can change animal ganador',17,'change_animalganador'),(51,'Can delete animal ganador',17,'delete_animalganador');
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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$9ded4AAh27wn$Bq4pglxSGErHm1I4qqopRYKzCfqrs+ymJLzVvzIiN4g=','2017-10-30 18:59:01.421687',1,'manuel','','','salvatorex89@gmail.com',1,1,'2017-10-02 15:28:06.523282'),(6,'pbkdf2_sha256$36000$pIWOd4yn99RD$BNzFJEJe1bPMVZjByNJNs42kVxP+RctiF/4lVSlvG3E=','2018-02-05 22:50:43.760167',1,'toshiba','','','',1,1,'2017-10-17 16:01:00.000000'),(7,'pbkdf2_sha256$36000$KnSb9vzwsQxu$5kJViWC9GEFUmdd06eND8Vz1sXDdzq2sjDccTdficwk=','2017-10-25 20:49:52.621027',0,'android','','','',0,1,'2017-10-25 19:43:00.000000');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-02 15:59:12.710366','4','caracas 4',1,'[{\"added\": {}}]',9,1),(2,'2017-10-02 16:01:15.559153','2','/00.jpg 0',1,'[{\"added\": {}}]',8,1),(3,'2017-10-02 16:02:11.005340','5','zulia 5',1,'[{\"added\": {}}]',9,1),(4,'2017-10-02 16:07:13.893372','6','tachira 6',1,'[{\"added\": {}}]',9,1),(5,'2017-10-02 16:07:30.690063','7','tripleleon 7',1,'[{\"added\": {}}]',9,1),(6,'2017-10-02 16:54:29.976853','3','/00.jpg 0',1,'[{\"added\": {}}]',8,1),(7,'2017-10-02 17:00:42.153984','4','/1.jpg 1',1,'[{\"added\": {}}]',8,1),(8,'2017-10-02 17:01:36.474124','5','/2.jpg 2',1,'[{\"added\": {}}]',8,1),(9,'2017-10-02 18:36:20.336335','6','/8.jpg 8 tachira 6',1,'[{\"added\": {}}]',8,1),(10,'2017-10-03 12:08:26.331342','8','prueba1 8',1,'[{\"added\": {}}]',9,1),(11,'2017-10-03 12:08:33.378967','9','prueba2 9',1,'[{\"added\": {}}]',9,1),(12,'2017-10-03 12:32:53.963284','1','caracas 1',1,'[{\"added\": {}}]',9,1),(13,'2017-10-03 12:33:00.250533','2','zulia 2',1,'[{\"added\": {}}]',9,1),(14,'2017-10-03 12:33:07.917089','3','tachira 3',1,'[{\"added\": {}}]',9,1),(15,'2017-10-03 12:33:19.321014','4','tripleleon 4',1,'[{\"added\": {}}]',9,1),(16,'2017-10-03 12:40:18.109830','5','prueba1 5',1,'[{\"added\": {}}]',9,1),(17,'2017-10-03 12:40:27.938528','6','prueba2 6',1,'[{\"added\": {}}]',9,1),(18,'2017-10-04 18:12:32.853920','2','365conect 2 100',1,'[{\"added\": {}}]',7,1),(19,'2017-10-04 18:42:58.590179','7','Manzana 7',1,'[{\"added\": {}}]',9,1),(20,'2017-10-04 18:44:20.848065','7','Delfin /0.jpg 0 Manzana 7',1,'[{\"added\": {}}]',8,1),(21,'2017-10-04 18:44:32.743467','7','Delfin /0.jpg 0 Manzana 7',2,'[]',8,1),(22,'2017-10-04 18:44:46.774179','7','Delfin /00.jpg 0 Manzana 7',2,'[{\"changed\": {\"fields\": [\"imagen\"]}}]',8,1),(23,'2017-10-04 18:45:26.488790','8','carnero /1.jpg 1 Manzana 7',1,'[{\"added\": {}}]',8,1),(24,'2017-10-04 18:46:18.675100','9','Toro /2.jpg 2 Manzana 7',1,'[{\"added\": {}}]',8,1),(25,'2017-10-04 18:48:13.877468','10','ciempies /3.jpg 3 Manzana 7',1,'[{\"added\": {}}]',8,1),(26,'2017-10-06 14:30:45.847783','1','caracas 1',1,'[{\"added\": {}}]',9,1),(27,'2017-10-06 14:31:34.305526','2','zulia 2',1,'[{\"added\": {}}]',9,1),(28,'2017-10-06 14:32:13.227829','3','casa1 3',1,'[{\"added\": {}}]',9,1),(29,'2017-10-06 14:33:09.142113','4','tachira 4',1,'[{\"added\": {}}]',9,1),(30,'2017-10-06 14:41:12.779805','2','agencia1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"agenciauser\", \"object\": \"Agenciauser object\"}}]',4,1),(31,'2017-10-06 14:44:29.574900','2','agencia1',3,'',4,1),(32,'2017-10-06 14:44:55.286987','4','agencia1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"agenciauser\", \"object\": \"Agenciauser object\"}}]',4,1),(33,'2017-10-11 15:24:33.531864','2','09:00:00',1,'[{\"added\": {}}]',14,1),(34,'2017-10-11 15:25:05.174893','3','10:00:00',1,'[{\"added\": {}}]',14,1),(35,'2017-10-11 15:25:15.775539','4','11:00:00',1,'[{\"added\": {}}]',14,1),(36,'2017-10-11 15:25:31.067314','5','12:00:00',1,'[{\"added\": {}}]',14,1),(37,'2017-10-11 15:25:40.153966','6','01:00:00',1,'[{\"added\": {}}]',14,1),(38,'2017-10-11 15:25:56.120303','7','02:00:00',1,'[{\"added\": {}}]',14,1),(39,'2017-10-11 15:26:04.588202','8','03:00:00',1,'[{\"added\": {}}]',14,1),(40,'2017-10-11 15:26:20.433503','6','13:00:00',2,'[{\"changed\": {\"fields\": [\"hora\"]}}]',14,1),(41,'2017-10-11 15:26:29.520455','7','14:00:00',2,'[{\"changed\": {\"fields\": [\"hora\"]}}]',14,1),(42,'2017-10-11 15:27:03.521560','8','15:00:00',2,'[{\"changed\": {\"fields\": [\"hora\"]}}]',14,1),(43,'2017-10-11 15:27:43.300242','9','16:00:00',1,'[{\"added\": {}}]',14,1),(44,'2017-10-11 15:27:51.167568','10','17:00:00',1,'[{\"added\": {}}]',14,1),(45,'2017-10-11 15:28:05.584211','11','18:00:00',1,'[{\"added\": {}}]',14,1),(46,'2017-10-11 15:28:14.135244','12','19:00:00',1,'[{\"added\": {}}]',14,1),(47,'2017-10-11 15:28:23.935016','13','20:00:00',1,'[{\"added\": {}}]',14,1),(48,'2017-10-11 15:47:19.725173','14','21:00:00',1,'[{\"added\": {}}]',14,1),(49,'2017-10-11 15:47:36.192746','14','21:00:00',3,'',14,1),(50,'2017-10-13 17:44:55.816745','11','ciempies /3.jpg 3 tachira 4',1,'[{\"added\": {}}]',8,1),(51,'2017-10-17 14:28:58.736355','5','usuariotest',1,'[{\"added\": {}}]',4,1),(52,'2017-10-17 14:29:40.546558','5','usuariotest',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(53,'2017-10-17 14:30:55.372918','3','AgenciaTest 3 50',1,'[{\"added\": {}}]',7,1),(54,'2017-10-17 16:01:46.805542','6','toshiba',1,'[{\"added\": {}}]',4,1),(55,'2017-10-17 16:03:10.641013','4','toshibagencia 4 40',1,'[{\"added\": {}}]',7,1),(56,'2017-10-17 18:30:19.288157','5','manuelagencia 5 780',1,'[{\"added\": {}}]',7,1),(57,'2017-10-17 18:50:50.293488','5','ToshibaLoteria 5',1,'[{\"added\": {}}]',9,1),(58,'2017-10-17 18:51:24.075456','12','Delfin sdfsf 0 ToshibaLoteria 5',1,'[{\"added\": {}}]',8,1),(59,'2017-10-17 18:52:26.249204','3','delfin /00.jpg 0 ToshibaLoteria 5',3,'',8,1),(60,'2017-10-18 18:38:33.185920','4','agencia1',3,'',4,1),(61,'2017-10-18 18:38:33.279670','5','usuariotest',3,'',4,1),(62,'2017-10-18 18:50:40.215439','3','casa1 3',3,'',9,1),(63,'2017-10-18 19:03:12.373047','2','zulia 2',3,'',9,1),(64,'2017-10-18 19:37:29.924877','4','Animales 4',2,'[{\"changed\": {\"fields\": [\"nombre_lot\", \"agencia\"]}}]',9,1),(65,'2017-10-18 19:38:59.886509','13','alacran 4.jpg 4 Animales 4',1,'[{\"added\": {}}]',8,1),(66,'2017-10-18 19:39:17.329874','14','leon 5.jpg 5 Animales 4',1,'[{\"added\": {}}]',8,1),(67,'2017-10-18 19:46:50.343152','15','rana 6.jpg 6 Animales 4',1,'[{\"added\": {}}]',8,1),(68,'2017-10-18 19:47:22.106727','16','perico 7.jpg 7 Animales 4',1,'[{\"added\": {}}]',8,1),(69,'2017-10-18 19:48:13.720035','17','raton 8.jpg 8 Animales 4',1,'[{\"added\": {}}]',8,1),(70,'2017-10-18 19:48:50.674766','18','aguila 9.jpg 9 Animales 4',1,'[{\"added\": {}}]',8,1),(71,'2017-10-18 19:49:39.625649','19','tigre 10.jpg 10 Animales 4',1,'[{\"added\": {}}]',8,1),(72,'2017-10-18 19:50:52.316462','20','gato 11.jpg 11 Animales 4',1,'[{\"added\": {}}]',8,1),(73,'2017-10-18 19:52:04.541709','21','caballo 12.jpg 12 Animales 4',1,'[{\"added\": {}}]',8,1),(74,'2017-10-18 19:53:06.876688','22','mono 13.jpg 13 Animales 4',1,'[{\"added\": {}}]',8,1),(75,'2017-10-18 20:05:51.508216','23','paloma 14.jpg 14 Animales 4',1,'[{\"added\": {}}]',8,1),(76,'2017-10-18 20:07:15.161085','24','zorro 15.jpg 15 Animales 4',1,'[{\"added\": {}}]',8,1),(77,'2017-10-18 20:08:27.822631','25','oso 16.jpg 16 Animales 4',1,'[{\"added\": {}}]',8,1),(78,'2017-10-18 20:09:50.925552','26','pavo 17.jpg 17 Animales 4',1,'[{\"added\": {}}]',8,1),(79,'2017-10-18 20:11:34.438801','15','rana 6.jpg 6 Animales 4',3,'',8,1),(80,'2017-10-18 20:24:27.518330','27','burro 18.jpg 18 Animales 4',1,'[{\"added\": {}}]',8,1),(81,'2017-10-18 20:25:01.685826','28','rana 6.jpg 6 Animales 4',1,'[{\"added\": {}}]',8,1),(82,'2017-10-19 12:36:39.360675','28','chivo 19.jpg 19 Animales 4',1,'[{\"added\": {}}]',8,1),(83,'2017-10-19 12:36:58.828518','29','cochino 20.jpg 20 Animales 4',1,'[{\"added\": {}}]',8,1),(84,'2017-10-19 14:15:43.721611','30','gallo 21.jpg 21 Animales 4',1,'[{\"added\": {}}]',8,1),(85,'2017-10-19 14:57:04.133084','31','camello 22.jpg 22 Animales 4',1,'[{\"added\": {}}]',8,1),(86,'2017-10-19 14:59:38.070386','32','cebra 33.jpg 33 Animales 4',1,'[{\"added\": {}}]',8,1),(87,'2017-10-19 15:00:27.976427','32','cebra 23.jpg 23 Animales 4',2,'[{\"changed\": {\"fields\": [\"imagen\", \"numero\"]}}]',8,1),(88,'2017-10-19 15:08:46.196612','33','gallina 24.jpg 24 Animales 4',1,'[{\"added\": {}}]',8,1),(89,'2017-10-19 15:09:16.656630','33','iguana 24.jpg 24 Animales 4',2,'[{\"changed\": {\"fields\": [\"nombre\"]}}]',8,1),(90,'2017-10-19 15:11:19.377879','34','gallina 25.jpg 25 Animales 4',1,'[{\"added\": {}}]',8,1),(91,'2017-10-19 15:15:35.417616','35','vaca 26.jpg 26 Animales 4',1,'[{\"added\": {}}]',8,1),(92,'2017-10-19 15:16:41.263481','36','perro 27.jpg 27 Animales 4',1,'[{\"added\": {}}]',8,1),(93,'2017-10-19 15:39:58.077179','37','zamuro 28.jpg 28 Animales 4',1,'[{\"added\": {}}]',8,1),(94,'2017-10-19 15:40:27.321449','38','elefante 29.jpg 29 Animales 4',1,'[{\"added\": {}}]',8,1),(95,'2017-10-19 15:43:03.636479','39','caiman 30.pg 30 Animales 4',1,'[{\"added\": {}}]',8,1),(96,'2017-10-19 15:43:24.283865','40','lapa 31.jpg 31 Animales 4',1,'[{\"added\": {}}]',8,1),(97,'2017-10-19 15:44:18.960740','41','ardilla 32.pg 32 Animales 4',1,'[{\"added\": {}}]',8,1),(98,'2017-10-19 15:44:46.482940','42','pescado 33.jpg 33 Animales 4',1,'[{\"added\": {}}]',8,1),(99,'2017-10-19 15:45:05.797020','43','venado 34.jpg 34 Animales 4',1,'[{\"added\": {}}]',8,1),(100,'2017-10-19 15:45:25.903090','44','jirafa 35.jpg 35 Animales 4',1,'[{\"added\": {}}]',8,1),(101,'2017-10-19 15:45:40.384819','45','culebra 36.jpg 36 caracas 1',1,'[{\"added\": {}}]',8,1),(102,'2017-10-19 15:46:10.720706','46','culebra 36.jpg 36 Animales 4',1,'[{\"added\": {}}]',8,1),(103,'2017-10-19 15:49:23.547742','47','ballena 00.jpg 0 Animales 4',1,'[{\"added\": {}}]',8,1),(104,'2017-10-19 15:51:08.577375','47','ballena 00.jpg 100 Animales 4',2,'[{\"changed\": {\"fields\": [\"numero\"]}}]',8,1),(105,'2017-10-25 19:43:08.995597','7','android',1,'[{\"added\": {}}]',4,1),(106,'2017-10-25 19:43:19.279187','7','android',2,'[]',4,1),(107,'2017-10-25 19:44:05.187071','5','AndroidAgencia 5',1,'[{\"added\": {}}]',7,1),(108,'2017-10-25 20:35:32.304574','6','AndroidAnimales 6',1,'[{\"added\": {}}]',9,1),(109,'2017-10-26 19:28:59.597914','1','14:00:00',1,'[{\"added\": {}}]',17,1),(110,'2017-10-30 18:59:15.777371','6','toshiba',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\", \"last_login\"]}}]',4,1),(111,'2017-10-30 19:00:50.784364','2','11:00:00',1,'[{\"added\": {}}]',17,6),(112,'2017-10-30 19:50:55.101249','2','11:00:00',3,'',17,6),(113,'2017-10-30 19:50:55.175357','1','14:00:00',3,'',17,6),(114,'2017-10-30 19:51:09.838977','3','11:00:00',1,'[{\"added\": {}}]',17,6),(115,'2017-11-01 15:46:51.941956','14','14:00:00',1,'[{\"added\": {}}]',14,6),(116,'2017-11-01 15:47:35.968434','14','14:00:00',3,'',14,6),(117,'2017-11-02 13:43:08.817526','4','12:00:00',1,'[{\"added\": {}}]',17,6),(118,'2017-11-02 14:19:00.484829','5','20:00:00',1,'[{\"added\": {}}]',17,6),(119,'2017-11-03 14:19:25.004097','6','09:00:00',1,'[{\"added\": {}}]',17,6),(120,'2017-11-03 19:02:58.037386','7','19:00:00',1,'[{\"added\": {}}]',17,6),(121,'2017-11-03 19:05:49.212395','8','16:00:00',1,'[{\"added\": {}}]',17,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'pagina','agencia'),(13,'pagina','agenciauser'),(8,'pagina','animales'),(17,'pagina','animalganador'),(16,'pagina','horas'),(9,'pagina','loteria'),(15,'pagina','perfil'),(14,'pagina','sorteo'),(11,'pagina','ticket'),(10,'pagina','ticke_item'),(12,'pagina','usuario'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-02 15:22:58.596545'),(2,'auth','0001_initial','2017-10-02 15:23:06.997075'),(3,'admin','0001_initial','2017-10-02 15:23:09.239753'),(4,'admin','0002_logentry_remove_auto_add','2017-10-02 15:23:09.323394'),(5,'contenttypes','0002_remove_content_type_name','2017-10-02 15:23:10.697492'),(6,'auth','0002_alter_permission_name_max_length','2017-10-02 15:23:12.217995'),(7,'auth','0003_alter_user_email_max_length','2017-10-02 15:23:13.695953'),(8,'auth','0004_alter_user_username_opts','2017-10-02 15:23:13.941908'),(9,'auth','0005_alter_user_last_login_null','2017-10-02 15:23:14.977322'),(10,'auth','0006_require_contenttypes_0002','2017-10-02 15:23:15.019038'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-02 15:23:15.087575'),(12,'auth','0008_alter_user_username_max_length','2017-10-02 15:23:16.284803'),(13,'pagina','0001_initial','2017-10-02 15:23:25.152189'),(14,'sessions','0001_initial','2017-10-02 15:23:25.854378'),(15,'pagina','0002_auto_20171002_1156','2017-10-02 15:56:33.196060'),(16,'pagina','0003_remove_loteria_animalgroup','2017-10-02 15:58:03.270298'),(17,'pagina','0004_animales_nombre','2017-10-03 15:20:47.433173'),(18,'pagina','0005_loteria_idagencia','2017-10-06 14:25:59.207905'),(19,'pagina','0006_agenciauser','2017-10-06 14:25:59.985210'),(20,'pagina','0007_auto_20171006_0926','2017-10-06 14:26:00.536413'),(21,'pagina','0008_auto_20171006_0958','2017-10-06 14:26:00.789800'),(22,'pagina','0009_auto_20171006_1001','2017-10-06 14:26:01.397382'),(23,'pagina','0010_auto_20171006_1006','2017-10-06 14:26:01.943823'),(24,'pagina','0011_remove_loteria_agencia','2017-10-06 14:26:02.345632'),(25,'pagina','0012_auto_20171006_1028','2017-10-06 14:28:53.160129'),(26,'pagina','0013_auto_20171006_1043','2017-10-06 14:43:49.469317'),(27,'pagina','0014_agenciauser_tipo','2017-10-06 18:58:31.425164'),(28,'pagina','0015_auto_20171006_1503','2017-10-06 19:03:11.819343'),(29,'pagina','0016_sorteo','2017-10-11 15:21:48.209555'),(30,'pagina','0017_agencia_usuario','2017-10-17 14:22:39.956565'),(31,'pagina','0018_perfil','2017-10-17 15:59:45.939158'),(32,'pagina','0019_auto_20171017_1620','2017-10-17 19:21:01.319977'),(33,'pagina','0020_auto_20171018_0909','2017-10-18 13:09:45.737120'),(34,'pagina','0021_horas_ticket','2017-10-18 13:26:01.089424'),(35,'pagina','0022_auto_20171018_1046','2017-10-18 14:46:29.190483'),(36,'pagina','0023_auto_20171023_0840','2017-10-23 12:40:55.535733'),(37,'pagina','0024_auto_20171024_1546','2017-10-24 19:46:48.828952'),(38,'pagina','0025_animalganador','2017-10-26 19:03:01.169078'),(39,'pagina','0002_auto_20171030_1451','2017-10-30 20:23:30.403003'),(40,'pagina','0003_auto_20171030_1454','2017-10-30 20:23:31.278614'),(41,'pagina','0002_auto_20171114_1518','2017-11-14 19:22:10.954248');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9hwfu5dkvuuy2ygsz9mu1jd55dsybtlu','NmNjNDhhMDU0ZmI3YTU3NGY4MzU2MDA1NGY5ZGUwZjExYjQxZDVhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODQ1ZTAwNTY1MjkyNGQxZWVjODRmOWY3YmU4MzgwNjExZjYwMzVlIn0=','2017-11-01 18:34:57.844908'),('dwijfen4pqr3tyaev1qzstutznmk6lip','MzM2MmMyNmRhZDU1MDI1MjlmZDExZmU1ZTIzYTQwZDgzNTJlYzg5MDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWIxYTUyNGNiNmM3MTk3ZGI1ZjE2ZGZkNjE3MTkyM2M3MzA1ODUyIn0=','2018-02-19 22:50:44.329000'),('mx7g6nhu7djy0m6h8rf6xts6v2pizmsr','MzM2MmMyNmRhZDU1MDI1MjlmZDExZmU1ZTIzYTQwZDgzNTJlYzg5MDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMWIxYTUyNGNiNmM3MTk3ZGI1ZjE2ZGZkNjE3MTkyM2M3MzA1ODUyIn0=','2017-11-17 13:28:39.939032'),('n178ld80e1lcpdreszmegm3knfum2evt','NmNjNDhhMDU0ZmI3YTU3NGY4MzU2MDA1NGY5ZGUwZjExYjQxZDVhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODQ1ZTAwNTY1MjkyNGQxZWVjODRmOWY3YmU4MzgwNjExZjYwMzVlIn0=','2017-11-08 20:34:47.979899');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_agencia`
--

DROP TABLE IF EXISTS `pagina_agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_agencia` (
  `ida` int(11) NOT NULL AUTO_INCREMENT,
  `nombrea` varchar(52) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `apuesta_min` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ida`),
  KEY `pagina_agencia_usuario_id_ee7fa40c_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `pagina_agencia_usuario_id_ee7fa40c_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_agencia`
--

LOCK TABLES `pagina_agencia` WRITE;
/*!40000 ALTER TABLE `pagina_agencia` DISABLE KEYS */;
INSERT INTO `pagina_agencia` VALUES (2,'365conect','Floresta',100,5789635,NULL),(4,'toshibagencia','asdasdas',40,4444,6),(5,'AndroidAgencia','Andoid direccion',500,1231313,7);
/*!40000 ALTER TABLE `pagina_agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_animales`
--

DROP TABLE IF EXISTS `pagina_animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_animales` (
  `id_animal` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(60) NOT NULL,
  `numero` varchar(2) NOT NULL,
  `idl_id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `pagina_animales_idl_id_cc076782_fk_pagina_loteria_idl` (`idl_id`),
  CONSTRAINT `pagina_animales_idl_id_cc076782_fk_pagina_loteria_idl` FOREIGN KEY (`idl_id`) REFERENCES `pagina_loteria` (`idl`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_animales`
--

LOCK TABLES `pagina_animales` WRITE;
/*!40000 ALTER TABLE `pagina_animales` DISABLE KEYS */;
INSERT INTO `pagina_animales` VALUES (2,'/00.jpg','0',4,'delfin'),(4,'/1.jpg','1',4,'carnero'),(5,'/2.jpg','2',4,'toro'),(6,'/8.jpg','8',6,'raton'),(7,'/00.jpg','0',7,'Delfin'),(8,'/1.jpg','1',7,'carnero'),(9,'/2.jpg','2',7,'Toro'),(10,'/3.jpg','3',7,'ciempies'),(11,'/3.jpg','3',4,'ciempies'),(12,'sdfsf','0',5,'Delfin'),(13,'4.jpg','4',4,'alacran'),(14,'5.jpg','5',4,'leon'),(15,'6.jpg','6',4,'rana'),(16,'7.jpg','7',4,'perico'),(17,'8.jpg','8',4,'raton'),(18,'9.jpg','9',4,'aguila'),(19,'10.jpg','10',4,'tigre'),(20,'11.jpg','11',4,'gato'),(21,'12.jpg','12',4,'caballo'),(22,'13.jpg','13',4,'mono'),(23,'14.jpg','14',4,'paloma'),(24,'15.jpg','15',4,'zorro'),(25,'16.jpg','16',4,'oso'),(26,'17.jpg','17',4,'pavo'),(27,'18.jpg','18',4,'burro'),(28,'19.jpg','19',4,'chivo'),(29,'20.jpg','20',4,'cochino'),(30,'21.jpg','21',4,'gallo'),(31,'22.jpg','22',4,'camello'),(32,'23.jpg','23',4,'cebra'),(33,'24.jpg','24',4,'iguana'),(34,'25.jpg','25',4,'gallina'),(35,'26.jpg','26',4,'vaca'),(36,'27.jpg','27',4,'perro'),(37,'28.jpg','28',4,'zamuro'),(38,'29.jpg','29',4,'elefante'),(39,'30.pg','30',4,'caiman'),(40,'31.jpg','31',4,'lapa'),(41,'32.pg','32',4,'ardilla'),(42,'33.jpg','33',4,'pescado'),(43,'34.jpg','34',4,'venado'),(44,'35.jpg','35',4,'jirafa'),(45,'36.jpg','36',1,'culebra'),(46,'36.jpg','36',4,'culebra'),(47,'00.jpg','00',4,'ballena');
/*!40000 ALTER TABLE `pagina_animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_animalganador`
--

DROP TABLE IF EXISTS `pagina_animalganador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_animalganador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `animal_id` int(11) NOT NULL,
  `hora_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pagina_animalganador_animal_id_06c7b97a_fk_pagina_an` (`animal_id`),
  KEY `pagina_animalganador_hora_id_f0be9055_fk_pagina_sorteo_id` (`hora_id`),
  CONSTRAINT `pagina_animalganador_animal_id_06c7b97a_fk_pagina_an` FOREIGN KEY (`animal_id`) REFERENCES `pagina_animales` (`id_animal`),
  CONSTRAINT `pagina_animalganador_hora_id_f0be9055_fk_pagina_sorteo_id` FOREIGN KEY (`hora_id`) REFERENCES `pagina_sorteo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_animalganador`
--

LOCK TABLES `pagina_animalganador` WRITE;
/*!40000 ALTER TABLE `pagina_animalganador` DISABLE KEYS */;
INSERT INTO `pagina_animalganador` VALUES (3,'2017-10-30',5,4),(4,'2017-11-02',31,5),(5,'2017-11-02',39,13),(6,'2017-11-03',4,2),(7,'2017-11-03',36,12),(8,'2017-11-03',35,9);
/*!40000 ALTER TABLE `pagina_animalganador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_horas`
--

DROP TABLE IF EXISTS `pagina_horas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_horas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horas_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_horas`
--

LOCK TABLES `pagina_horas` WRITE;
/*!40000 ALTER TABLE `pagina_horas` DISABLE KEYS */;
INSERT INTO `pagina_horas` VALUES (1,4,316),(2,5,316),(3,5,320),(5,4,328),(6,10,328),(7,11,328),(8,3,329),(9,5,329),(10,7,329),(11,3,330),(12,5,330),(13,7,330),(14,5,331),(15,6,331),(16,7,331),(17,8,331),(18,6,332),(19,7,332),(20,8,332),(21,9,332),(22,2,333),(23,2,333),(24,7,334),(25,8,334),(26,5,335),(27,5,336),(28,6,336),(29,7,336),(30,5,337),(31,6,337),(32,7,337),(33,8,337),(34,9,337),(35,10,337),(36,4,338),(37,5,338),(38,9,338),(39,7,339),(40,8,339),(41,13,339),(42,5,340),(43,7,340),(44,8,340),(45,13,340),(46,2,341),(47,3,341),(48,12,342),(49,13,342),(50,9,343),(51,9,344),(52,12,344),(53,7,345),(54,8,345),(55,10,345),(56,10,346),(57,10,347),(58,4,348),(59,5,348),(60,6,348),(61,4,349),(62,5,349),(63,6,349),(64,8,349),(65,9,349),(66,4,350),(67,5,350),(68,6,350),(69,8,350),(70,9,350),(71,10,350),(72,11,350),(73,10,351),(74,11,351),(75,6,352),(76,7,352),(77,4,353),(78,5,353),(79,4,354),(80,13,354),(81,7,355),(82,8,355),(83,10,356),(84,11,356),(85,4,357),(86,13,357),(87,5,358),(88,6,358),(89,4,359),(90,5,359),(91,4,360),(92,5,360),(93,3,361),(94,4,361),(95,4,362),(96,5,362),(97,4,363),(98,5,363),(99,2,364),(100,3,364),(101,4,365),(102,5,365),(103,4,366),(104,5,366),(105,5,367),(106,6,367),(107,7,367),(108,5,368),(109,6,368),(110,7,368),(111,6,369),(112,7,369),(113,8,370),(114,9,370),(115,10,371),(116,8,372),(117,5,373),(118,6,373),(119,4,374),(120,5,374),(121,4,375),(122,5,375),(123,6,376),(124,7,376),(125,3,377),(126,4,377),(127,5,378),(128,6,378),(129,5,379),(130,6,379),(131,8,379),(132,4,380),(133,5,380),(134,4,381),(135,5,381),(136,2,382),(137,3,382),(138,12,382),(139,13,382),(140,10,383),(141,11,383),(142,3,384),(143,13,384),(144,4,385),(145,5,385),(146,9,386),(147,10,386),(148,5,387),(149,6,387),(150,5,388),(151,6,388),(152,5,389),(153,6,389),(154,3,390),(155,4,390),(156,8,391),(157,9,391),(158,10,392),(159,11,392),(160,10,393),(161,11,393),(162,10,394),(163,9,395),(164,5,396),(165,6,396),(166,5,397),(167,6,397),(168,3,398),(169,13,398),(170,5,399),(171,6,399),(172,3,400),(173,4,400),(174,5,401),(175,6,401),(176,7,401),(177,5,402),(178,6,402),(179,7,402),(180,7,403),(181,5,404),(182,6,404),(183,5,405),(184,6,405),(185,6,406),(186,6,407),(187,5,408),(188,7,408),(189,5,409),(190,7,409),(191,8,409),(192,5,410),(193,3,411),(194,4,411),(195,8,412),(196,9,412),(197,8,413),(198,9,413),(199,3,414),(200,4,414),(201,3,415),(202,4,415),(203,3,416),(204,4,416),(205,7,417),(206,8,417),(207,7,418),(208,8,418),(209,9,419),(210,10,419),(211,2,420),(212,3,420),(213,4,420),(214,2,421),(215,3,421),(216,4,421),(217,7,421),(218,8,421),(219,10,422),(220,11,422),(221,5,423),(222,6,423),(223,5,424),(224,6,424),(225,6,425),(226,7,425),(227,5,426),(228,5,427),(229,6,427),(230,5,428),(231,6,428),(232,4,429),(233,5,429),(234,6,429),(235,6,430),(236,7,430),(237,4,431),(238,5,431),(239,6,432),(240,7,432),(241,6,433),(242,7,433),(243,6,434),(244,7,434),(245,4,435),(246,5,435),(247,6,435),(248,7,435),(249,8,435),(250,9,435),(251,10,435),(252,11,435),(253,2,436),(254,3,436),(255,4,436),(256,5,436),(257,6,436),(258,7,436),(259,8,436),(260,9,436),(261,10,436),(262,11,436),(263,12,436),(264,13,436),(265,2,437),(266,3,437),(267,4,437),(268,5,437),(269,6,437),(270,7,437),(271,8,437),(272,9,437),(273,10,437),(274,11,437),(275,12,437),(276,13,437),(277,8,438),(278,6,439),(279,7,439),(280,5,440),(281,6,440),(282,7,440),(283,5,441),(284,6,441),(285,7,441),(286,8,441),(287,7,442),(288,8,442),(289,5,443),(290,6,443),(291,7,443),(292,8,443),(293,5,444),(294,6,444),(295,7,444),(296,8,444),(297,6,445),(298,7,445),(299,3,446),(300,9,447),(301,6,448),(302,7,448);
/*!40000 ALTER TABLE `pagina_horas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_loteria`
--

DROP TABLE IF EXISTS `pagina_loteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_loteria` (
  `idl` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_lot` varchar(52) NOT NULL,
  `agencia_id` int(11) NOT NULL,
  `bankporcentaje` int(11) NOT NULL,
  PRIMARY KEY (`idl`),
  KEY `pagina_loteria_agencia_id_c1bf21a4_fk_pagina_agencia_ida` (`agencia_id`),
  CONSTRAINT `pagina_loteria_agencia_id_c1bf21a4_fk_pagina_agencia_ida` FOREIGN KEY (`agencia_id`) REFERENCES `pagina_agencia` (`ida`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_loteria`
--

LOCK TABLES `pagina_loteria` WRITE;
/*!40000 ALTER TABLE `pagina_loteria` DISABLE KEYS */;
INSERT INTO `pagina_loteria` VALUES (1,'caracas',2,10),(4,'Animales',4,10),(5,'ToshibaLoteria',4,10),(6,'AndroidAnimales',5,10);
/*!40000 ALTER TABLE `pagina_loteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_sorteo`
--

DROP TABLE IF EXISTS `pagina_sorteo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_sorteo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hora` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_sorteo`
--

LOCK TABLES `pagina_sorteo` WRITE;
/*!40000 ALTER TABLE `pagina_sorteo` DISABLE KEYS */;
INSERT INTO `pagina_sorteo` VALUES (2,'09:00:00.000000'),(3,'10:00:00.000000'),(4,'11:00:00.000000'),(5,'12:00:00.000000'),(6,'13:00:00.000000'),(7,'14:00:00.000000'),(8,'15:00:00.000000'),(9,'16:00:00.000000'),(10,'17:00:00.000000'),(11,'18:00:00.000000'),(12,'19:00:00.000000'),(13,'20:00:00.000000');
/*!40000 ALTER TABLE `pagina_sorteo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_ticke_item`
--

DROP TABLE IF EXISTS `pagina_ticke_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_ticke_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto_apu` int(11) NOT NULL,
  `id_animal_id` int(11) NOT NULL,
  `id_ticket_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pagina_ticke_item_id_animal_id_b4853f9d_fk_pagina_an` (`id_animal_id`),
  KEY `pagina_ticke_item_id_ticket_id_0f5a7085_fk_pagina_ti` (`id_ticket_id`),
  CONSTRAINT `pagina_ticke_item_id_animal_id_b4853f9d_fk_pagina_an` FOREIGN KEY (`id_animal_id`) REFERENCES `pagina_animales` (`id_animal`),
  CONSTRAINT `pagina_ticke_item_id_ticket_id_0f5a7085_fk_pagina_ti` FOREIGN KEY (`id_ticket_id`) REFERENCES `pagina_ticket` (`id_ticket`)
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_ticke_item`
--

LOCK TABLES `pagina_ticke_item` WRITE;
/*!40000 ALTER TABLE `pagina_ticke_item` DISABLE KEYS */;
INSERT INTO `pagina_ticke_item` VALUES (1,100,2,15),(2,100,4,15),(3,100,2,16),(4,100,4,16),(5,100,5,16),(6,40,12,17),(7,120,12,18),(8,120,12,19),(9,40,12,20),(10,40,12,21),(11,40,12,22),(12,120,12,23),(13,40,12,24),(14,40,12,25),(15,40,12,26),(16,200,12,27),(17,240,12,28),(18,160,12,29),(19,40,12,30),(20,40,12,31),(21,120,12,32),(22,120,12,33),(23,120,12,34),(24,320,12,35),(25,160,12,36),(26,300,2,37),(27,400,4,37),(28,300,4,38),(29,100,5,38),(30,320,14,39),(31,320,14,40),(32,80,5,41),(33,40,20,41),(34,120,14,42),(35,120,14,43),(36,120,14,44),(37,120,14,45),(38,40,17,45),(39,120,14,46),(40,160,17,46),(41,40,18,47),(42,40,24,47),(43,40,20,48),(44,40,14,49),(45,40,14,50),(46,40,5,52),(47,40,5,53),(48,40,13,54),(49,40,4,55),(50,40,14,56),(51,40,20,57),(52,40,14,58),(53,40,4,59),(54,40,14,60),(55,40,32,61),(56,40,16,62),(57,40,15,63),(58,40,15,64),(59,40,20,65),(60,40,20,66),(61,120,39,67),(62,160,14,68),(63,40,26,69),(64,40,11,70),(65,120,13,71),(66,120,13,72),(67,120,13,73),(68,120,13,74),(69,40,14,75),(70,80,20,76),(71,40,14,77),(72,80,14,78),(73,80,14,79),(74,40,20,79),(75,40,14,80),(76,40,13,81),(77,40,11,81),(78,160,4,82),(79,600,4,83),(80,40,20,84),(81,40,14,85),(82,200,13,85),(83,120,40,86),(84,120,13,87),(85,120,14,88),(86,120,14,89),(87,160,31,90),(88,40,47,91),(89,40,14,91),(90,40,13,92),(91,40,11,92),(92,80,14,93),(93,120,14,94),(94,40,14,95),(95,40,14,96),(96,120,11,97),(97,40,33,98),(98,40,13,99),(99,40,14,100),(100,200,14,101),(101,40,14,102),(102,40,13,102),(103,40,11,102),(104,40,11,103),(105,40,14,104),(106,40,13,104),(107,80,13,105),(108,40,11,105),(109,40,13,106),(110,40,11,106),(111,40,20,107),(112,40,19,107),(113,40,14,108),(114,40,13,108),(115,40,14,109),(116,40,13,109),(117,40,14,110),(118,40,13,110),(119,40,5,111),(120,40,11,111),(121,160,13,111),(122,40,20,112),(123,40,19,112),(124,40,5,113),(125,40,4,113),(126,40,14,114),(127,80,13,114),(128,80,14,115),(129,40,13,115),(130,80,11,115),(131,120,5,115),(132,80,4,115),(133,120,2,115),(134,80,15,115),(135,120,16,115),(136,160,17,115),(137,80,18,115),(138,40,5,116),(139,40,4,116),(140,40,2,116),(141,40,11,116),(142,40,13,117),(143,40,11,117),(144,40,5,117),(145,40,14,118),(146,40,13,118),(147,40,11,118),(148,40,5,118),(149,40,14,119),(150,40,11,119),(151,40,13,119),(152,40,5,120),(153,40,2,120),(154,40,4,120),(155,40,5,121),(156,40,2,121),(157,40,4,121),(158,40,35,121),(159,40,36,121),(160,40,14,121),(161,40,5,122),(162,40,2,122),(163,40,4,122),(164,40,35,122),(165,40,36,122),(166,40,14,122),(167,160,13,123),(168,80,5,123),(169,120,11,123),(170,160,13,124),(171,80,5,124),(172,120,11,124),(173,160,13,125),(174,80,5,125),(175,120,11,125),(176,160,13,126),(177,80,5,126),(178,120,11,126),(179,120,14,127),(180,40,13,127),(181,160,11,127),(182,40,5,127),(183,40,11,128),(184,40,13,128),(185,40,14,129),(186,40,13,129),(187,40,14,130),(188,80,13,130),(189,40,14,131),(190,80,13,131),(191,40,5,132),(192,40,4,132),(193,120,2,133),(194,40,4,133),(195,120,13,136),(196,40,14,136),(197,120,13,137),(198,40,14,137),(199,40,5,138),(200,40,14,138),(201,40,5,139),(202,40,14,139),(203,40,14,140),(204,80,13,140),(205,40,11,142),(206,40,14,143),(207,80,13,143),(208,40,14,145),(209,40,13,145),(210,40,11,147),(211,40,13,147),(212,40,13,151),(213,120,14,151),(214,40,14,153),(215,40,13,153),(216,40,13,156),(217,40,14,156),(218,80,4,158),(219,40,5,158),(220,80,4,162),(221,40,5,162),(222,40,13,163),(223,40,11,163),(224,40,14,165),(225,160,13,165),(226,80,13,166),(227,160,14,166),(228,40,14,169),(229,40,13,169),(230,40,14,170),(231,40,13,170),(232,40,11,170),(233,40,5,170),(234,40,4,170),(235,40,5,171),(236,40,4,171),(237,200,11,171),(238,40,13,171),(239,40,11,172),(240,40,5,172),(241,160,4,172),(242,560,13,173),(243,40,14,173),(244,40,11,174),(245,40,13,174),(246,40,14,174),(247,40,13,175),(248,40,14,178),(249,40,14,179),(250,40,13,180),(251,40,13,181),(252,40,13,182),(253,40,14,184),(254,40,13,188),(255,40,11,188),(256,160,20,189),(257,40,13,191),(258,40,20,191),(259,40,19,191),(260,40,14,192),(261,40,13,192),(262,120,13,193),(263,40,14,193),(264,40,14,194),(265,160,13,194),(266,40,11,196),(267,40,5,197),(268,40,14,199),(269,120,13,199),(270,40,11,201),(271,120,13,201),(272,40,11,202),(273,120,13,202),(274,40,11,203),(275,40,13,205),(276,40,14,205),(277,40,14,206),(278,40,14,207),(279,40,13,207),(280,120,11,208),(281,40,5,208),(282,120,11,209),(283,40,5,209),(284,120,11,210),(285,40,5,210),(286,40,14,211),(287,40,5,211),(288,40,4,211),(289,40,14,212),(290,40,5,212),(291,40,4,212),(292,40,4,213),(293,40,5,213),(294,40,4,214),(295,40,5,214),(296,40,14,214),(297,40,13,214),(298,40,5,215),(299,40,14,216),(300,40,14,217),(301,40,13,217),(302,40,14,218),(303,40,13,218),(304,40,14,219),(305,40,13,219),(306,40,2,220),(307,40,4,220),(308,40,14,221),(309,40,13,221),(310,40,14,222),(311,40,13,222),(312,40,14,223),(313,40,13,223),(314,40,14,224),(315,40,13,224),(316,40,14,225),(317,40,13,225),(318,40,5,226),(319,40,4,226),(320,40,14,227),(321,40,13,227),(322,40,14,228),(323,40,13,228),(324,40,13,229),(325,40,5,230),(326,40,5,231),(327,40,13,232),(328,40,14,233),(329,40,13,234),(330,40,11,235),(331,40,13,235),(332,40,11,236),(333,40,13,236),(334,40,11,237),(335,40,13,237),(336,40,4,238),(337,40,4,239),(338,40,4,240),(339,40,20,241),(340,40,20,242),(341,40,20,243),(342,40,14,244),(343,40,5,245),(344,40,11,245),(345,40,5,246),(346,40,11,246),(347,40,14,247),(348,40,4,248),(349,40,5,248),(350,200,4,249),(351,40,5,249),(352,200,4,250),(353,200,5,250),(354,40,14,251),(355,200,24,252),(356,200,47,252),(357,200,24,253),(358,200,47,253),(359,40,47,254),(360,240,47,255),(361,160,11,255),(362,240,13,255),(363,120,14,255),(364,40,14,256),(365,80,13,256),(366,360,11,256),(367,40,14,257),(368,240,11,257),(369,40,14,258),(370,40,14,259),(371,40,14,260),(372,40,14,261),(373,40,4,262),(374,40,5,262),(375,40,14,263),(376,40,13,263),(377,40,11,263),(378,40,5,263),(379,40,4,263),(380,40,2,263),(381,40,14,264),(382,40,13,264),(383,40,13,265),(384,120,11,265),(385,80,5,265),(386,40,14,266),(387,40,13,266),(388,40,14,267),(389,40,13,267),(390,40,11,267),(391,40,5,267),(392,40,4,267),(393,40,2,267),(394,40,15,267),(395,40,17,267),(396,40,18,267),(397,40,19,267),(398,40,20,267),(399,40,16,267),(400,40,14,268),(401,40,13,268),(402,40,11,268),(403,40,5,268),(404,40,4,268),(405,40,2,268),(406,40,15,268),(407,40,17,268),(408,40,18,268),(409,40,19,268),(410,40,20,268),(411,40,16,268),(412,280,14,269),(413,120,13,269),(414,120,11,269),(415,280,14,270),(416,120,13,270),(417,120,11,270),(418,40,14,271),(419,40,13,271),(420,40,11,271),(421,160,11,272),(422,40,13,272),(423,40,14,273),(424,40,13,273),(425,40,14,274),(426,120,13,274),(427,80,14,275),(428,80,13,275),(429,80,11,275),(430,40,5,275),(431,40,14,276),(432,120,13,276),(433,40,11,276),(434,40,5,276),(435,40,14,277),(436,120,13,277),(437,40,11,277),(438,40,5,277),(439,40,20,277),(440,40,14,278),(441,120,13,278),(442,40,11,278),(443,40,5,278),(444,40,20,278),(445,40,17,278),(446,40,18,278),(447,40,13,279),(448,40,14,279),(449,40,14,280),(450,500,6,281),(451,120,14,282),(452,40,13,282),(453,40,14,283),(454,120,13,283),(455,120,11,283),(456,320,29,284),(457,40,30,284),(458,160,31,284),(459,40,18,284),(460,120,2,285),(461,160,4,285),(462,40,5,285),(463,160,2,286),(464,160,4,286),(465,40,5,286),(466,120,11,286),(467,40,13,286),(468,360,14,287),(469,120,13,287),(470,240,27,288),(471,40,4,289),(472,40,5,289),(473,40,5,290),(474,40,13,290),(475,40,5,291),(476,40,4,291),(477,40,5,292),(478,40,4,292),(479,40,11,292),(480,40,11,293),(481,40,13,293),(482,40,11,294),(483,40,13,294),(484,40,5,294),(485,40,13,295),(486,40,11,295),(487,40,13,296),(488,40,11,296),(489,40,4,297),(490,40,4,298),(491,40,2,298),(492,40,4,299),(493,40,2,299),(494,40,2,300),(495,40,2,301),(496,40,2,302),(497,40,4,303),(498,40,2,303),(499,40,4,304),(500,40,2,304),(501,40,4,305),(502,40,2,305),(503,40,5,306),(504,40,5,307),(505,40,5,308),(506,40,24,309),(507,40,20,309),(508,40,19,309),(509,40,18,309),(510,160,13,310),(511,40,14,310),(512,160,13,311),(513,40,14,311),(514,160,13,312),(515,40,14,312),(516,40,13,313),(517,40,11,313),(518,40,13,314),(519,40,14,314),(520,40,14,315),(521,40,13,315),(522,40,5,316),(523,40,11,316),(524,40,5,317),(525,40,11,317),(526,40,31,317),(527,120,31,318),(528,40,5,319),(529,120,4,320),(530,40,5,320),(531,40,13,321),(532,40,11,321),(533,40,5,322),(534,40,11,322),(535,120,13,322),(536,40,5,323),(537,40,11,323),(538,120,13,323),(539,40,14,324),(540,80,13,324),(541,40,11,324),(542,40,5,325),(543,40,5,326),(544,40,14,327),(545,40,13,327),(546,40,14,328),(547,40,13,328),(548,40,5,329),(549,40,4,329),(550,40,5,330),(551,40,4,330),(552,40,11,331),(553,40,13,331),(554,80,13,332),(555,80,11,332),(556,40,5,333),(557,80,13,334),(558,200,11,334),(559,40,31,335),(560,120,31,336),(561,160,31,337),(562,80,26,337),(563,80,25,337),(564,80,24,337),(565,120,26,338),(566,120,24,338),(567,120,23,338),(568,80,17,338),(569,80,16,338),(570,40,31,338),(571,120,26,339),(572,120,24,339),(573,120,23,339),(574,80,17,339),(575,80,16,339),(576,40,31,339),(577,40,39,339),(578,120,26,340),(579,120,24,340),(580,120,23,340),(581,80,17,340),(582,80,16,340),(583,40,31,340),(584,40,39,340),(585,40,2,341),(586,40,4,341),(587,40,37,342),(588,40,36,342),(589,40,38,342),(590,40,37,343),(591,40,36,343),(592,40,38,343),(593,200,35,343),(594,440,36,344),(595,360,35,344),(596,440,36,345),(597,360,35,345),(598,40,13,345),(599,40,11,345),(600,40,14,346),(601,120,13,346),(602,40,14,347),(603,120,13,347),(604,40,19,348),(605,40,20,348),(606,40,17,348),(607,40,11,348),(608,40,13,348),(609,40,14,348),(610,40,20,349),(611,40,11,349),(612,40,13,349),(613,40,37,350),(614,40,36,350),(615,40,35,350),(616,40,34,350),(617,120,33,350),(618,120,39,350),(619,80,40,350),(620,160,41,350),(621,40,42,350),(622,40,43,350),(623,40,44,350),(624,40,14,351),(625,40,13,351),(626,40,13,352),(627,40,11,352),(628,40,5,353),(629,40,4,353),(630,40,4,354),(631,40,5,354),(632,40,20,355),(633,40,19,355),(634,40,14,356),(635,40,13,356),(636,40,5,357),(637,40,4,357),(638,40,11,358),(639,40,5,358),(640,40,11,359),(641,40,5,359),(642,40,11,360),(643,40,5,360),(644,40,4,361),(645,40,5,361),(646,40,5,362),(647,40,11,362),(648,40,5,363),(649,40,11,363),(650,40,4,364),(651,40,2,364),(652,40,5,364),(653,40,4,365),(654,40,5,365),(655,40,4,366),(656,40,5,366),(657,120,13,367),(658,160,14,367),(659,120,13,368),(660,160,14,368),(661,40,11,368),(662,40,13,369),(663,40,14,369),(664,80,14,370),(665,80,13,370),(666,40,13,371),(667,40,11,371),(668,40,13,372),(669,40,14,372),(670,40,11,373),(671,40,5,373),(672,120,5,374),(673,80,4,374),(674,40,5,375),(675,40,11,375),(676,40,5,376),(677,40,4,376),(678,40,11,377),(679,40,5,377),(680,40,4,377),(681,40,5,378),(682,40,4,378),(683,40,14,379),(684,40,13,379),(685,40,5,380),(686,40,11,380),(687,40,5,381),(688,40,11,382),(689,40,13,382),(690,40,14,382),(691,40,11,383),(692,40,13,383),(693,40,20,383),(694,40,4,384),(695,40,5,384),(696,40,11,385),(697,40,13,385),(698,40,14,386),(699,40,13,386),(700,40,5,387),(701,40,11,387),(702,40,11,388),(703,40,13,388),(704,120,11,389),(705,160,5,389),(706,40,11,390),(707,40,5,390),(708,40,14,390),(709,40,14,391),(710,40,13,391),(711,40,20,392),(712,40,19,392),(713,40,13,392),(714,40,14,392),(715,40,20,393),(716,40,19,393),(717,40,14,393),(718,40,13,393),(719,40,14,394),(720,40,13,394),(721,40,20,394),(722,40,19,394),(723,40,11,395),(724,40,13,395),(725,40,11,396),(726,40,13,396),(727,40,14,396),(728,40,5,397),(729,40,11,397),(730,40,13,397),(731,40,14,397),(732,40,4,398),(733,40,5,398),(734,40,11,398),(735,40,13,398),(736,40,5,399),(737,40,11,399),(738,40,13,399),(739,40,4,400),(740,40,5,400),(741,40,13,401),(742,40,11,401),(743,40,14,401),(744,40,13,402),(745,40,11,402),(746,40,13,403),(747,40,11,404),(748,40,13,404),(749,40,19,404),(750,40,11,405),(751,40,13,405),(752,40,11,406),(753,40,44,407),(754,40,13,408),(755,40,11,408),(756,40,14,409),(757,40,13,409),(758,40,11,409),(759,40,14,410),(760,40,13,410),(761,40,5,411),(762,40,11,411),(763,40,14,412),(764,40,11,413),(765,40,4,414),(766,40,5,414),(767,40,5,415),(768,40,11,415),(769,40,5,416),(770,40,11,416),(771,40,14,417),(772,40,13,417),(773,40,11,418),(774,40,13,418),(775,40,20,418),(776,40,19,418),(777,40,26,419),(778,40,25,419),(779,40,5,420),(780,40,14,420),(781,40,13,421),(782,40,11,421),(783,40,14,422),(784,40,13,422),(785,40,11,423),(786,40,13,423),(787,40,11,424),(788,40,5,424),(789,40,11,425),(790,40,13,425),(791,40,11,426),(792,40,13,426),(793,40,11,427),(794,40,13,427),(795,40,5,427),(796,40,11,428),(797,40,13,428),(798,40,5,428),(799,40,14,428),(800,40,20,428),(801,40,19,428),(802,40,18,428),(803,40,5,429),(804,40,11,429),(805,40,13,429),(806,40,14,429),(807,40,13,430),(808,40,11,430),(809,40,11,431),(810,40,13,431),(811,40,11,432),(812,40,13,432),(813,40,11,433),(814,40,13,433),(815,40,14,433),(816,40,20,433),(817,40,19,433),(818,40,26,433),(819,40,25,433),(820,40,11,434),(821,40,13,434),(822,40,14,434),(823,40,20,434),(824,40,19,434),(825,40,26,434),(826,40,25,434),(827,40,24,434),(828,40,18,434),(829,40,17,434),(830,40,5,434),(831,40,4,434),(832,40,2,434),(833,40,15,434),(834,40,16,434),(835,40,22,434),(836,40,21,434),(837,40,23,434),(838,40,30,434),(839,40,29,434),(840,40,28,434),(841,40,27,434),(842,40,11,435),(843,40,13,435),(844,40,14,435),(845,40,20,435),(846,40,19,435),(847,40,26,435),(848,40,25,435),(849,40,24,435),(850,40,18,435),(851,40,17,435),(852,40,5,435),(853,40,4,435),(854,40,2,435),(855,40,15,435),(856,40,16,435),(857,40,22,435),(858,40,21,435),(859,40,23,435),(860,40,30,435),(861,40,29,435),(862,40,28,435),(863,40,27,435),(864,40,11,436),(865,40,13,436),(866,40,14,436),(867,40,20,436),(868,40,19,436),(869,40,26,436),(870,40,25,436),(871,40,24,436),(872,40,18,436),(873,40,17,436),(874,40,5,436),(875,40,4,436),(876,40,2,436),(877,40,15,436),(878,40,16,436),(879,40,22,436),(880,40,21,436),(881,40,23,436),(882,40,30,436),(883,40,29,436),(884,40,28,436),(885,40,27,436),(886,40,11,437),(887,40,13,437),(888,40,14,437),(889,40,20,437),(890,40,19,437),(891,40,26,437),(892,40,25,437),(893,40,24,437),(894,40,18,437),(895,40,17,437),(896,40,5,437),(897,40,4,437),(898,40,2,437),(899,40,15,437),(900,40,16,437),(901,40,22,437),(902,40,21,437),(903,40,23,437),(904,40,30,437),(905,40,29,437),(906,40,28,437),(907,40,27,437),(908,40,39,437),(909,40,40,437),(910,40,46,437),(911,40,47,437),(912,40,41,437),(913,40,42,437),(914,40,43,437),(915,40,44,437),(916,40,38,437),(917,40,37,437),(918,40,36,437),(919,40,35,437),(920,40,34,437),(921,40,33,437),(922,40,31,437),(923,40,32,437),(924,40,14,438),(925,40,11,439),(926,40,14,439),(927,40,13,439),(928,40,13,440),(929,40,11,440),(930,40,14,440),(931,40,13,441),(932,120,11,441),(933,80,14,441),(934,160,2,441),(935,40,4,441),(936,40,5,441),(937,80,17,441),(938,80,16,441),(939,40,18,441),(940,40,19,441),(941,120,20,441),(942,120,26,441),(943,120,25,441),(944,120,23,441),(945,120,22,441),(946,40,21,441),(947,80,15,441),(948,440,13,442),(949,160,11,442),(950,200,14,442),(951,40,20,442),(952,80,19,442),(953,320,18,442),(954,440,13,443),(955,160,11,443),(956,240,14,443),(957,40,20,443),(958,120,19,443),(959,320,18,443),(960,40,26,443),(961,80,25,443),(962,40,31,443),(963,40,32,443),(964,160,38,443),(965,40,37,443),(966,80,44,443),(967,80,43,443),(968,240,14,444),(969,120,19,444),(970,40,26,444),(971,80,25,444),(972,40,37,444),(973,80,43,444),(974,40,5,445),(975,40,11,445),(976,40,13,445),(977,160,4,446),(978,40,5,446),(979,200,11,446),(980,40,5,447),(981,40,11,447),(982,40,13,447),(983,200,13,448),(984,120,11,448);
/*!40000 ALTER TABLE `pagina_ticke_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_ticket`
--

DROP TABLE IF EXISTS `pagina_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagina_ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `nota` varchar(20) NOT NULL,
  `ida_id` int(11) NOT NULL,
  `idl_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `pagina_ticket_ida_id_f78bfc93_fk_pagina_agencia_ida` (`ida_id`),
  KEY `pagina_ticket_idl_id_b184734f_fk_pagina_loteria_idl` (`idl_id`),
  CONSTRAINT `pagina_ticket_ida_id_f78bfc93_fk_pagina_agencia_ida` FOREIGN KEY (`ida_id`) REFERENCES `pagina_agencia` (`ida`),
  CONSTRAINT `pagina_ticket_idl_id_b184734f_fk_pagina_loteria_idl` FOREIGN KEY (`idl_id`) REFERENCES `pagina_loteria` (`idl`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_ticket`
--

LOCK TABLES `pagina_ticket` WRITE;
/*!40000 ALTER TABLE `pagina_ticket` DISABLE KEYS */;
INSERT INTO `pagina_ticket` VALUES (1,80,1478963,NULL,'',4,5,'2017-10-18'),(2,40,1478963,NULL,'',4,5,'2017-10-18'),(3,40,1478963,NULL,'',4,5,'2017-10-18'),(4,160,1478963,NULL,'',4,5,'2017-10-18'),(5,40,1478963,NULL,'',4,5,'2017-10-18'),(6,40,1478963,NULL,'',4,5,'2017-10-18'),(7,300,1478963,NULL,'',4,4,'2017-10-18'),(8,200,1478963,NULL,'',4,4,'2017-10-18'),(9,200,1478963,NULL,'',4,4,'2017-10-18'),(10,200,1478963,NULL,'',4,4,'2017-10-18'),(11,200,1478963,NULL,'',4,4,'2017-10-18'),(12,200,1478963,NULL,'',4,4,'2017-10-18'),(13,200,1478963,NULL,'',4,4,'2017-10-18'),(14,200,1478963,NULL,'',4,4,'2017-10-18'),(15,200,1478963,NULL,'',4,4,'2017-10-18'),(16,300,1478963,NULL,'',4,4,'2017-10-18'),(17,40,1478963,NULL,'',4,5,'2017-10-18'),(18,120,1478963,NULL,'',4,5,'2017-10-18'),(19,120,1478963,NULL,'',4,5,'2017-10-18'),(20,40,1478963,NULL,'',4,5,'2017-10-18'),(21,40,1478963,NULL,'',4,5,'2017-10-18'),(22,40,1478963,NULL,'',4,5,'2017-10-18'),(23,120,1478963,NULL,'',4,5,'2017-10-18'),(24,40,1478963,NULL,'',4,5,'2017-10-18'),(25,40,1478963,NULL,'',4,5,'2017-10-18'),(26,40,1478963,'5d2b8e28cdac3ac01a98ffb96fd844b4','',4,5,'2017-10-18'),(27,200,19025455,'189661ad8b10c726ca6b96223dce0138','',4,5,'2017-10-18'),(28,240,9628534,'5f46a39c84f9290702540db23e7cee24','',4,5,'2017-10-18'),(29,160,888,'a270fde05a986f58fe167e4701087d63','',4,5,'2017-10-18'),(30,40,23423,'98bc9de82d1a72035c2bebf715ea2f37','',4,5,'2017-10-18'),(31,40,123123,'44816dc61dfa4319784083b9f3852fb0','',4,5,'2017-10-18'),(32,120,5555,'02513d0edb0a9f9eeaa7b6470e835aff','',4,5,'2017-10-18'),(33,120,542,'cfdeed5bd0bcc064d14503d45ac290f6','',4,5,'2017-10-18'),(34,120,7575,'42c9d4cb9c17e77d28454939b1fe2b1c','',4,5,'2017-10-18'),(35,320,86868,'eb32eb566bef4bf0d9c11818891ccc93','',4,5,'2017-10-18'),(36,160,99898988,'7800ffb123682034cac0ef5d1f85a055','',4,5,'2017-10-18'),(37,700,18799632,'efb80f20449aaa495c7bd747756cc9e6','',4,4,'2017-10-18'),(38,400,234234234,'baca4dd5c65cad71761f4847402787b6','',4,4,'2017-10-18'),(39,320,2147483647,'5faa09f46b0e9b376291d2b45af9c137','',4,4,'2017-10-19'),(40,320,2147483647,'99610e876610b67d5f7c26cd0fa5cb61','',4,4,'2017-10-19'),(41,120,45,'6432244f5cf32bd5eb51a6deed646b57','',4,4,'2017-10-19'),(42,120,66,'f6d83f26842762b3be12ef99c89d453b','',4,4,'2017-10-19'),(43,120,66,'5fad0c445741aa5fbe69aa96403f8982','',4,4,'2017-10-19'),(44,120,66,'18cb71be3bd3624833a4f7946b560070','',4,4,'2017-10-19'),(45,160,66,'4d11e3006dbdb01a4aaa6265f8cb4faa','',4,4,'2017-10-19'),(46,280,66,'232bdb336a303119d1448c42cafc819b','',4,4,'2017-10-19'),(47,80,56868,'173b4f874d51b269e64e3616b83b2c35','',4,4,'2017-10-19'),(48,40,5722752,'4ddb299ed5f9615c5e16267072035e7d','',4,4,'2017-10-19'),(49,40,8080808,'1c203a9bcee07da91ca6e0921fec1dac','',4,4,'2017-10-19'),(50,40,6757,'e24781f6476ad7caa67737d0217fa4e4','',4,4,'2017-10-19'),(51,0,13123,'d81103ba4455b3f252059bc90eea4b12','',4,4,'2017-10-19'),(52,40,13123,'ad4661acf37921c7966ce26b508c9e7a','',4,4,'2017-10-19'),(53,40,13123,'f27c019485d87128bfe398ab48ceca2a','',4,4,'2017-10-19'),(54,40,55555,'9619ffeca1b4aae9a020d949eb1f3e95','',4,4,'2017-10-19'),(55,40,0,'d1c05d19fec6b1489d45973655fa9f65','',4,4,'2017-10-19'),(56,40,8888,'e9ca02aa855b19b44f1209917b28d482','',4,4,'2017-10-19'),(57,40,7777,'b3e0203fe377db3f26be6abc74734b95','',4,4,'2017-10-19'),(58,40,0,'80b7d4b5ffe70dbb54aa4ea20d8e0156','',4,4,'2017-10-19'),(59,40,898,'40cfc27ac7067b871ed5254948770868','',4,4,'2017-10-19'),(60,40,131313,'725c5c38b78b9c8b5a3a03a51a01caae','',4,4,'2017-10-19'),(61,40,98798,'3f650e300c7ec99b4d3d3148a18e2575','',4,4,'2017-10-19'),(62,40,31312,'6a9a413d6aefc692b842c8f3c50d1977','',4,4,'2017-10-19'),(63,40,1,'768e770a9f5cb447f7da34692e8fd287','',4,4,'2017-10-19'),(64,40,1,'65c0d9c160b90a3b08f77ad8a3583a9d','',4,4,'2017-10-19'),(65,40,3123,'af8bf817dc99e782b3de2307aeda6680','',4,4,'2017-10-19'),(66,40,34234242,'6ffd70303d37d21c345584d7ef4cb00a','',4,4,'2017-10-19'),(67,120,24234234,'a66bd80330d6b566cdf3a9e7fc23b6d5','',4,4,'2017-10-19'),(68,160,131313,'cbf9444ed3b8aced6d71ff443982a092','',4,4,'2017-10-19'),(69,40,55,'baa1a19ebd82aace88461e971ccb64af','',4,4,'2017-10-19'),(70,40,7979,'27fc7affed9b648db6bb48fce501866b','',4,4,'2017-10-19'),(71,120,987989,'620d9c46897d7930fbc16054b94f0afc','',4,4,'2017-10-19'),(72,120,412313,'b26293e4a0fedea58452414133c968c8','',4,4,'2017-10-19'),(73,120,412313,'73816f36b92767a3b1c07685f2595f8f','',4,4,'2017-10-19'),(74,120,412313,'c6c3212068d3579411e300ad1000be3c','',4,4,'2017-10-19'),(75,40,2123,'b81550f444c5971b01a7b10d7ea71a98','',4,4,'2017-10-19'),(76,80,23123,'58664f0b9c966b136a75d02f175643ad','',4,4,'2017-10-19'),(77,40,558786,'8bdbe1a925916f54e84ada4e097f5e65','',4,4,'2017-10-19'),(78,80,131313,'8642e9490c956bc3cb675cc9a51214fa','',4,4,'2017-10-19'),(79,120,131313,'a6ea4c53b010363abbb33e5ff95976ec','',4,4,'2017-10-19'),(80,40,9879,'72381e708ab342ed6b1d3e2ebaccb5a8','',4,4,'2017-10-19'),(81,80,312313,'0562009f22f9496db50053154da3a0a6','',4,4,'2017-10-19'),(82,160,989898,'e9572f0867140c08c7a12502a16633c6','',4,4,'2017-10-19'),(83,600,55555,'e21cb9c997e50b12120a4e3724f22d3e','',4,4,'2017-10-19'),(84,40,1312312313,'528e1fe046aed03daf0a7bd9339dbff1','',4,4,'2017-10-19'),(85,240,9999,'ccd06e24bb2f74c0977cfbde0df7d0cf','',4,4,'2017-10-19'),(86,120,44242,'1a9bebcbb0c9c62213e5610856a7d95d','',4,4,'2017-10-19'),(87,120,5556,'c6c14639309c59f30efac82a0f20d4cb','',4,4,'2017-10-19'),(88,120,23123,'f67e9d05558fb663613f8d71b5dafaac','',4,4,'2017-10-19'),(89,120,23123,'7509820f6e323bb3ac40228db5d6bc6e','',4,4,'2017-10-19'),(90,160,78979789,'dd8080f59104b5755052acb8de328f7d','',4,4,'2017-10-19'),(91,80,333,'5a9e01b94f418440a9872dc569cbf61e','',4,4,'2017-10-19'),(92,80,55156,'4a21b430702eb1cdfd078235ee8d355f','',4,4,'2017-10-19'),(93,80,49494,'efbc4eb331fe9029602646650f8e5931','',4,4,'2017-10-19'),(94,120,13123123,'e48c5dc7a3d6243ed49538aab84f9cba','',4,4,'2017-10-19'),(95,40,5555,'b796314a240028b446f8f42bdcafde5c','',4,4,'2017-10-19'),(96,40,5555,'864ace3af1e20eccd769b51669eab222','',4,4,'2017-10-19'),(97,120,1231313,'c40a1e8d87bd61dfdc8e5b0feeaa283f','',4,4,'2017-10-19'),(98,40,131313,'319e5845144a3c1880f70aa24c5b00a2','',4,4,'2017-10-19'),(99,40,989889,'5b292aefc5abc26ca55fa41f0431b322','',4,4,'2017-10-19'),(100,40,12312313,'ee30b65a038eb50fbccf8963e1373f8d','',4,4,'2017-10-19'),(101,200,8979,'0ff245ddac4524ffe809f1411ae54ba6','',4,4,'2017-10-19'),(102,120,9879789,'d8905b86845ef4aa7d8bb4debd3f3b33','',4,4,'2017-10-20'),(103,40,99887,'9541a8adcf33079398d8c4771b216369','',4,4,'2017-10-20'),(104,80,9879789,'fe21137e31e304e3222362af01c6a739','',4,4,'2017-10-20'),(105,120,12312313,'01ab96beca4183ce8a9a00dcd8f25af5','',4,4,'2017-10-20'),(106,80,1313,'d60e4726739f05744361cbe1721617a7','',4,4,'2017-10-20'),(107,80,4444,'077ea7c3117ea18422d2b381c7cb2696','',4,4,'2017-10-20'),(108,80,13123,'93345c7f0c3cf314ad097073071e9f72','',4,4,'2017-10-20'),(109,80,686868,'7c3717c10dbb8bd884e8d310e824cccc','',4,4,'2017-10-20'),(110,80,747474,'d1d48a0d82a62a93f784c82409f96be0','',4,4,'2017-10-20'),(111,240,47474,'6cfc99ee877cbe16607abff81697f5e1','',4,4,'2017-10-20'),(112,80,46456,'ca32aec4ced00a1ca65269169e03bade','',4,4,'2017-10-20'),(113,80,1313,'8c8f39e3320b6a3bb3cd65581c92e9d8','',4,4,'2017-10-20'),(114,120,222,'c3fcaba47e36ddfdf1fa8cf7ad80ac28','',4,4,'2017-10-20'),(115,960,2147483647,'59826592baad4cac66072c2475183d07','',4,4,'2017-10-20'),(116,160,13123123,'9aef46caa5fbc8cc96d4854185d2a9f2','',4,4,'2017-10-20'),(117,120,12312313,'61ee3278e41db491efb6016fc6f4ff50','',4,4,'2017-10-20'),(118,160,423424,'9a7ef18be5e6bd414ff110d9e45e3974','',4,4,'2017-10-20'),(119,120,252,'8961ac60d55cee5258efeb5455007b31','',4,4,'2017-10-20'),(120,120,565675,'de0dce0be654db954b92bb7da2a3adfc','',4,4,'2017-10-20'),(121,240,565675,'92ab12da708c1b26cf6edb07552d5218','',4,4,'2017-10-20'),(122,240,565675,'2a8755527d35077898752ace19514bd6','',4,4,'2017-10-20'),(123,360,2324234,'1960fcac444f4213aefa214e0b47ccae','',4,4,'2017-10-20'),(124,360,2324234,'9bfabf5d78d6bb7e406eaff749fee6c6','',4,4,'2017-10-20'),(125,360,2324234,'0e6cf5583850edf573739f889e1d78b5','',4,4,'2017-10-20'),(126,360,2324234,'0cab511d15a907e96080ba7d7f4aba32','',4,4,'2017-10-20'),(127,360,879789798,'a2e8a9424e7ad014ab6c4a47338690b9','',4,4,'2017-10-20'),(128,80,899989889,'2f36ecafe52efc8e0ea8dbeec978771e','',4,4,'2017-10-20'),(129,80,13123,'5a4917708a9a2dfc667084f2c77ddc17','',4,4,'2017-10-20'),(130,120,767676,'0b337612a807752ebb47d062cb3f2b26','',4,4,'2017-10-20'),(131,120,767676,'d90134dbfa5e5a1d3a52afe21fdc4d39','',4,4,'2017-10-20'),(132,80,6556,'5093c1c96a06c01dab0076fc141a8d5e','',4,4,'2017-10-20'),(133,160,78878,'9ce0d650a5c28d34ce958c026eff38be','',4,4,'2017-10-20'),(134,0,78878,'7cdcf153ab584ac0883e38979648f9a3','',4,4,'2017-10-20'),(135,0,78878,'73397821a02a71da4749596041602592','',4,4,'2017-10-20'),(136,160,6867868,'0c6fa53a1cf9eb89784ff806cc705a11','',4,4,'2017-10-20'),(137,160,6867868,'0e48143135c6625bc34128d61ed8aede','',4,4,'2017-10-20'),(138,80,6666,'471635737aae655e67531901eeb85158','',4,4,'2017-10-20'),(139,80,6666,'e29cb9e04056ea5cc260d0dd762ee585','',4,4,'2017-10-20'),(140,120,8797,'5c72a23f9722def24636f52d72d61432','',4,4,'2017-10-20'),(141,0,8797,'3dd31a109b7cc6e9179afd9db393af64','',4,4,'2017-10-20'),(142,40,8797,'0e9330a02460cd90ef1069a41e7076fc','',4,4,'2017-10-20'),(143,120,788,'699bfe13a62465694ae5f37af158a267','',4,4,'2017-10-20'),(144,0,788,'0567acac0427c4b63e0f125eb303021a','',4,4,'2017-10-20'),(145,80,5566556,'10ee7293806ca3ea484f86224260de64','',4,4,'2017-10-20'),(146,0,5566556,'03dd7350b9f0a506323468ccde645cf1','',4,4,'2017-10-20'),(147,80,5455,'cca8251869f2e89c46479e37744597b4','',4,4,'2017-10-20'),(148,0,5455,'2023bb25a3ce1ee96cb218d7348da7b8','',4,4,'2017-10-20'),(149,0,5455,'25e5fa209a4129c7567203de92a6cb43','',4,4,'2017-10-20'),(150,0,5455,'cc718183851844dda60bbb6ca66cbdd0','',4,4,'2017-10-20'),(151,160,434534535,'182bcdca3216c773b394674eadbd3561','',4,4,'2017-10-20'),(152,0,434534535,'916a0264c62b546f2fbb4a9b45a32426','',4,4,'2017-10-20'),(153,80,131231,'af476f0275d88e24be770ce14f682396','',4,4,'2017-10-20'),(154,0,131231,'ba288ae28e99be15b4d7c313d5e7c3f0','',4,4,'2017-10-20'),(155,0,131231,'f4295dc1e39d8e1079730b07f03ab3ed','',4,4,'2017-10-20'),(156,80,89898,'5e3a351b8cbcb7db195b88cfcbbc39b2','',4,4,'2017-10-20'),(157,0,89898,'8281a7e0d5624a8910d53f0c6d248ec0','',4,4,'2017-10-20'),(158,120,13123,'0f48d63d320a83062b151151d2afa8e9','',4,4,'2017-10-20'),(159,0,13123,'8454ba86922b6dd698869eea3cc0a6e5','',4,4,'2017-10-20'),(160,0,13123,'c4ac1eb045044d2b2c79951118f09608','',4,4,'2017-10-20'),(161,0,13123,'03327331447f0e4ae7334ae01072a287','',4,4,'2017-10-20'),(162,120,131313,'d147b27bbae46104117a84c49a7f8013','',4,4,'2017-10-20'),(163,80,8887,'fcc3ffeb25de7aa32a4ff00aa9b596af','',4,4,'2017-10-20'),(164,0,8887,'297021f153c8c6e89f05e78cf33cf6d4','',4,4,'2017-10-20'),(165,200,798798,'317f8c415badd2b9c848361582dbbfff','',4,4,'2017-10-20'),(166,240,8899,'6f3c40b2c31969cd29df0b8bea21e942','',4,4,'2017-10-20'),(167,0,8899,'2eb9c3e8710fc5eda7d79105cf0dff2f','',4,4,'2017-10-20'),(168,0,8899,'84534b65155085ddd2be924d55957837','',4,4,'2017-10-20'),(169,80,223,'fa8a755b1dbab59d2f3fa4b07b0c9907','',4,4,'2017-10-20'),(170,200,3453463,'1ed290d8e6997e13c6547245c27535ca','',4,4,'2017-10-20'),(171,320,2147483647,'4d867bd5101c7339ac8049733872d762','',4,4,'2017-10-20'),(172,240,5494,'6c4d33eca991c50d1fe29a14717ce20d','',4,4,'2017-10-20'),(173,600,8887998,'ce2834fecc40fc7a9ba1e123ffc97172','',4,4,'2017-10-20'),(174,120,2312313,'8f781bc86b98e63fb9719e251c07ff0b','',4,4,'2017-10-20'),(175,40,67867,'e03b5dd2c115a12a72da58fa13d085d8','',4,4,'2017-10-20'),(176,0,67867,'4620849cf2305184ce5d4e3910ea3c3b','',4,4,'2017-10-20'),(177,0,67867,'bb9d80e22edea49b93c93642b6aafd16','',4,4,'2017-10-20'),(178,40,5465,'4a030fc280c647c1a69e8b0055320155','',4,4,'2017-10-20'),(179,40,8988,'15742768190ff0046cc2b853b9980f86','',4,4,'2017-10-20'),(180,40,676,'293c8d7dbd8d99dcd6dde825dd3c3833','',4,4,'2017-10-20'),(181,40,676,'8ff13ed53fbe96a31b4fa2e7dc8d069f','',4,4,'2017-10-20'),(182,40,676,'08b2a4234061485697b5e044760f0524','',4,4,'2017-10-20'),(183,0,6456,'8fa51e35705f21d3452a497a2b490a05','',4,4,'2017-10-20'),(184,40,6456,'0330836056eb90e4bd1cac01b3b39aa5','',4,4,'2017-10-20'),(185,0,6456,'f829b73ce021bfddb97affbc42fba7b4','',4,4,'2017-10-20'),(186,0,6456,'ed7dcfec6096b23a29ccbee89f34d6de','',4,4,'2017-10-20'),(187,0,6456,'c0bf64240bd46c38e49ed77488f0408f','',4,4,'2017-10-20'),(188,80,808908909,'3468b51f0f6e0d30d130dee06c39e836','',4,4,'2017-10-20'),(189,160,808908909,'652d93de7001cdd1b845f97ed924284d','',4,4,'2017-10-20'),(190,0,808908909,'3df8548fc80b72dcf9684881bcfe487a','',4,4,'2017-10-20'),(191,120,879789,'356398d90111cf300b9a8a630a5e92a4','',4,4,'2017-10-20'),(192,80,2323,'8aafe8964e4e323686e202ffc6665fd6','',4,4,'2017-10-20'),(193,160,8798,'a89585ef68d7a435b00e3d51edab102b','',4,4,'2017-10-20'),(194,200,7889,'e91f1111a664d990952db8b2c2d82d74','',4,4,'2017-10-20'),(195,0,7889,'3c0cf956862beffef05d7cb92fb556ca','',4,4,'2017-10-20'),(196,40,7889,'126712312de6ce7c78995c11996e66be','',4,4,'2017-10-20'),(197,40,7889999,'6dbc342a1434dc29f4da91dd6d94cae4','',4,4,'2017-10-20'),(198,0,12312313,'caac00879e1ff31143c1e2408dba32ca','',4,4,'2017-10-20'),(199,160,656415,'b8bd34c0edc61e42a7468f747bc784e2','',4,4,'2017-10-20'),(200,0,656415,'c748c20b4466df1d54d91bf8ccaad46e','',4,4,'2017-10-20'),(201,160,465456464,'8682d322bbd8c744744207539d9bc9ec','',4,4,'2017-10-20'),(202,160,465456464,'dcc439ba6e2301c2545e4699c3abb5bd','',4,4,'2017-10-20'),(203,40,465456464,'63a65df18e8bac984571a4c548542a88','',4,4,'2017-10-20'),(204,0,465456464,'869b9c67c24f9ed2387e2b143e4cc3e7','',4,4,'2017-10-20'),(205,80,465456464,'1dcaa8dd25d844418848311e4b28dbda','',4,4,'2017-10-20'),(206,40,465456464,'46ca610079395fe396e936baadeb3af9','',4,4,'2017-10-20'),(207,80,465456464,'66c4e87befdca6d1fbf142c908645c94','',4,4,'2017-10-20'),(208,160,465456464,'c8bb77e5ed83a502cefc8cca374d445d','',4,4,'2017-10-20'),(209,160,465456464,'8fae2860bbd5f0ba6ad89b8388c5367d','',4,4,'2017-10-20'),(210,160,465456464,'3123131bc514ad9c2d5770f92582ceaa','',4,4,'2017-10-20'),(211,120,7798,'3aa9aaccce7675217967a46fa5467168','',4,4,'2017-10-20'),(212,120,7798,'fa22d88faaae34e38ccf6a9a7984dfe7','',4,4,'2017-10-20'),(213,80,2147483647,'b77c8aaf31ffc471bb4f61f73bb0e493','',4,4,'2017-10-20'),(214,160,2147483647,'9e49cac8d4e8ed679d604e0e46184694','',4,4,'2017-10-20'),(215,40,2147483647,'2ce416d95405023d867dbbf8772f3266','',4,4,'2017-10-20'),(216,40,797989,'4377d97cb93ff0b0db72800c85b6b899','',4,4,'2017-10-20'),(217,80,131313,'9af0fe4544bdfe05bac866ffd9d24cba','',4,4,'2017-10-20'),(218,80,3456456,'35f245d9ced3ccd8dd399afd25b3c0b2','',4,4,'2017-10-20'),(219,80,123123,'c741b897bc5db7863af5c9fda9139e8e','',4,4,'2017-10-20'),(220,80,312313,'2d523b4b92de957bdd598a6970ed1813','',4,4,'2017-10-20'),(221,80,24234,'be7b55e8a7be91d74634212b97f8f574','',4,4,'2017-10-20'),(222,80,24234,'97b5f16ae93f5686c2bedc83337853c0','',4,4,'2017-10-20'),(223,80,97889,'2c2c44a43df4d6ea0723471e39c2d4d5','',4,4,'2017-10-20'),(224,80,1312313,'5d7505382b1ec57b8cb1c22eb1b4f130','',4,4,'2017-10-20'),(225,80,123123,'4558697cbec60ce054c1fd0b657e32cc','',4,4,'2017-10-20'),(226,80,123123,'0e40ddaf2b4f8c87018009a8ea33015f','',4,4,'2017-10-20'),(227,80,1312313,'22d7bf99f8e7008e596fc6fe768f8a1e','',4,4,'2017-10-20'),(228,80,1231313,'1d517d31e3361efb13e8d4e0a515088e','',4,4,'2017-10-20'),(229,40,79789,'cbd5f4700a3fbd8e739880fad83057b7','',4,4,'2017-10-20'),(230,40,2,'70be6b38afbf0dada10fd982b4aa134d','',4,4,'2017-10-20'),(231,40,1,'073f6e1bf27ed2f05434c14484f766aa','',4,4,'2017-10-20'),(232,40,311,'ee23fadcd83d6f976b6d0e58577a8c2a','',4,4,'2017-10-20'),(233,40,1313,'7ea2b4f894267c8447572c5e048838a9','',4,4,'2017-10-20'),(234,40,1313,'e5e31a30ddf6196b3b747604ae161828','',4,4,'2017-10-20'),(235,80,1123,'720a68683cc8f9be769157aac2f8f267','',4,4,'2017-10-20'),(236,80,98798789,'a6fd7b39c1a0c22011a5714745849011','',4,4,'2017-10-20'),(237,80,98798789,'ea6ff1cebf89eea7622935098fd555cc','',4,4,'2017-10-20'),(238,40,1313,'e0ed9c2eca8d6ce0d90231f7127d4c14','',4,4,'2017-10-20'),(239,40,131313,'2787a6510e1d11554102da81e5893128','',4,4,'2017-10-20'),(240,40,131313,'5b6b418494e13a843d8e138f8a23bfec','',4,4,'2017-10-20'),(241,40,1,'65bc97459d21b42af7399f1132dd4bd1','',4,4,'2017-10-20'),(242,40,1,'052ce0934547101bad9a7a409a597d09','',4,4,'2017-10-20'),(243,40,1,'de429eb57357f83ee749d0f876676836','',4,4,'2017-10-20'),(244,40,13123,'9e06dc5cb431827d33cfaea616d00f5a','',4,4,'2017-10-20'),(245,80,212,'0c70d614abe6e2af67ff5695fa4d5384','',4,4,'2017-10-20'),(246,80,212,'75b2f7fc9d3993700ad306b536148ec0','',4,4,'2017-10-20'),(247,40,2,'7afac98c94b52b2b786cfddf882d454d','',4,4,'2017-10-20'),(248,80,313,'8c7ee03db450f3316bb725e04f69efa4','',4,4,'2017-10-20'),(249,240,313,'8db945a554d95d9d94ea9183cede5d04','',4,4,'2017-10-20'),(250,400,313,'dce457b6456906401d0e8f226c57d689','',4,4,'2017-10-20'),(251,40,13123,'23017e19c71582efc89216a485f69ca9','',4,4,'2017-10-20'),(252,400,656,'e7e40bc2e5fe5d69f195822cd34929a4','',4,4,'2017-10-23'),(253,400,656,'dc102c99349cc3263c74eb018e94ca92','',4,4,'2017-10-23'),(254,40,131312,'c7d65945c802666f226d441a87b2b695','',4,4,'2017-10-23'),(255,760,131312,'b6e3b3666007d3cb361a7308d2e569ef','',4,4,'2017-10-23'),(256,480,12121313,'def75900c04b1f9b3be5f767f425b18d','',4,4,'2017-10-23'),(257,280,12121313,'2f67aab253dab55391fab9502356a9f0','',4,4,'2017-10-23'),(258,40,NULL,'90cd1b5f959fb47a1bca90c5d00f384c','',4,4,'2017-10-23'),(259,40,NULL,'7dd068cc784ccbf0c4b012b735b0062a','',4,4,'2017-10-23'),(260,40,NULL,'f98289335988a1f464bf5c89a4b84291','',4,4,'2017-10-23'),(261,40,NULL,'3c4fec38ae9284f0f724d8ea62d901c4','',4,4,'2017-10-24'),(262,80,NULL,'34b59b8ee220f77188de164e4ecff133','',4,4,'2017-10-24'),(263,240,NULL,'b157e35b43eb61a787348c9e76c63d4c','',4,4,'2017-10-24'),(264,80,NULL,'696d0d9c60ac10b6b1ae0c4c4ce422d5','',4,4,'2017-10-24'),(265,240,NULL,'b0242ce51ee4efaa61cfb432d8dfcf60','',4,4,'2017-10-24'),(266,80,NULL,'436fc6d2163773ff8377e6396c3bf2ec','',4,4,'2017-10-24'),(267,480,NULL,'62170a7fa5d797dc80b3343a1b51680f','',4,4,'2017-10-24'),(268,480,NULL,'87fad79370778b1d43827d7fa7bae095','',4,4,'2017-10-24'),(269,520,NULL,'e50997c7629ab8be1f93be7ce2626c56','',4,4,'2017-10-25'),(270,520,NULL,'7f1443f415571a868e2347de54df5d73','',4,4,'2017-10-25'),(271,120,NULL,'5ff1d95d8a37de7b58e4ce2528465857','',4,4,'2017-10-25'),(272,200,NULL,'22fde2235172860546392de29eec369d','',4,4,'2017-10-25'),(273,80,NULL,'a02a07d9b00f38b4a89a3f998ec19c65','',4,4,'2017-10-25'),(274,160,NULL,'ca0b029ec4db2d31ae4e62e063b011b9','',4,4,'2017-10-25'),(275,280,NULL,'37e0370eba82eecdcec273413f39ff9e','',4,4,'2017-10-25'),(276,240,NULL,'73644d6f422a1c84481ea391ce4954ac','',4,4,'2017-10-25'),(277,280,NULL,'7c3d43e456b0f14edee8b8bd0ddd5469','',4,4,'2017-10-25'),(278,360,NULL,'8b6d5fe6f081e81fa31691c6ce592149','',4,4,'2017-10-25'),(279,80,NULL,'64fa97c78ee950f8cde40493f385299f','',5,4,'2017-10-25'),(280,40,NULL,'c313149074076fe40bf1e57dfec4f462','',5,4,'2017-10-25'),(281,500,NULL,'5e1e2367c60dc7c580ed1ae231cc6e77','',5,6,'2017-10-25'),(282,160,NULL,'c990947d5ed586bd83234f19c49af9e8','',4,4,'2017-10-25'),(283,280,NULL,'f2eea0807b92f11f8ca525b17a2eab81','',4,4,'2017-10-26'),(284,560,NULL,'0014d7ce28fba49370ff68bf4aa432a4','',4,4,'2017-10-26'),(285,320,NULL,'28b0e1e86bd3facfbf726521e7f69f70','',4,4,'2017-10-26'),(286,520,NULL,'491813c7ca18195b0d50287e7ba830c3','',4,4,'2017-10-26'),(287,480,NULL,'ebbf938e6df5987e5eb217e722e2509b','',4,4,'2017-10-26'),(288,240,NULL,'e3bc6be3ec91e6baecbcd520c8e186e4','',4,4,'2017-10-26'),(289,80,NULL,'9928da4afd24f541feb698a72917bcf2','',4,4,'2017-10-30'),(290,80,NULL,'c95589a21c935aaa6b92d0c6b6de49cc','',4,4,'2017-10-30'),(291,80,NULL,'8a5bed0c5009483c32bd0d1ead81888d','',4,4,'2017-10-30'),(292,120,NULL,'199d0f4c9fd74102addd1b605797fea9','',4,4,'2017-10-30'),(293,80,NULL,'2541d1d43f6911c9e06ebb57828ae8f3','',4,4,'2017-10-30'),(294,120,NULL,'a6a076cef05832c395f533a1b79d7d6b','',4,4,'2017-10-30'),(295,80,NULL,'d198b02de8da7c7a91d672be6ea5e7b2','',4,4,'2017-10-30'),(296,80,NULL,'20d048743ea7805f41ff5bfaf7d96813','',4,4,'2017-10-30'),(297,40,NULL,'2672013f624930d1ae45e83fb6580235','',4,4,'2017-10-30'),(298,80,NULL,'1e202d05387ad1fe67c6d4f7a947b801','',4,4,'2017-10-30'),(299,80,NULL,'5d7cd63b4b894ae0091f9ad588c8f9c8','',4,4,'2017-10-30'),(300,40,NULL,'ca4f0c2f33b9c13a569fb866edca123b','',4,4,'2017-10-30'),(301,40,NULL,'69ec04f8c71964c744bf05ef647591bb','',4,4,'2017-10-30'),(302,40,NULL,'cbf58a0235d6a12458031989f72514e1','',4,4,'2017-10-30'),(303,80,NULL,'78b27decd4c915df4072dc2741979465','',4,4,'2017-10-30'),(304,80,NULL,'3cba752eeca62fd8461656b3501cab14','',4,4,'2017-10-30'),(305,80,NULL,'965fb9374ea17d656086238f99dc9d15','',4,4,'2017-10-30'),(306,40,NULL,'8fe247c7985dcd1750791c3ce77cddc9','',4,4,'2017-11-01'),(307,40,NULL,'1beb2df4f025776e833a0b07fc1ecec5','',4,4,'2017-11-01'),(308,40,NULL,'d51131899e016fc3d2dfaeaf826e2fa0','',4,4,'2017-11-01'),(309,160,NULL,'2c4cb4540c110c3f87de0828c63ea417','',4,4,'2017-11-01'),(310,200,NULL,'1b092d3621bdc27312d0c832d8de9e88','',4,4,'2017-11-01'),(311,200,NULL,'123c1dd1abda9ae0f3dadcd6aed98889','',4,4,'2017-11-01'),(312,200,NULL,'f1eceb40f950ac32f6b9c7c5c7829283','',4,4,'2017-11-01'),(313,80,NULL,'ba28fe9a6f5a5c38d7e8e59d6d1268a3','',4,4,'2017-11-01'),(314,80,NULL,'c020ff53b847da580d72b46fd0194ef4','',4,4,'2017-11-01'),(315,80,NULL,'3606a82f2566ded38999ccba344e2c16','',4,4,'2017-11-01'),(316,80,NULL,'2d348444f506499ff85591ccbd6e8c02','',4,4,'2017-11-01'),(317,120,NULL,'be00f414cb95e92a40ffb8aef0784daa','',4,4,'2017-11-01'),(318,120,NULL,'89fd7ae194a6709778af43d5465360f4','',4,4,'2017-11-01'),(319,40,NULL,'d9b8b8c56655186469dcbdd3447271a6','',4,4,'2017-11-01'),(320,160,NULL,'255f5cbfac878a25e31a60ce2c98a585','',4,4,'2017-11-01'),(321,80,NULL,'67edb01378aed5d4d2bf3f169125d0a3','',4,4,'2017-11-01'),(322,200,NULL,'0796866c32b0bca61a0545708dc9d241','',4,4,'2017-11-01'),(323,200,NULL,'6a7d22ec02ccd9ba5928848b3ce6c63e','',4,4,'2017-11-01'),(324,160,NULL,'df285a8dcf0ebf37c83197de43a50d6c','',4,4,'2017-11-01'),(325,40,NULL,'41b65bcc4e2a160d331fde781d3c42e8','',4,4,'2017-11-01'),(326,40,NULL,'553643e09fe76ee255cfbdddaa6cc99c','',4,4,'2017-11-01'),(327,80,NULL,'de9bd05bb58cd7c4e752e579412fc8bc','',4,4,'2017-11-01'),(328,80,NULL,'ac61fd3e100fb11c9c9e0347ec4ba282','',4,4,'2017-11-01'),(329,80,NULL,'95fe73cdc4848299a7f0bbdb5adf4f8e','',4,4,'2017-11-01'),(330,80,NULL,'648e5342176da25d5cd652294cfbc85c','',4,4,'2017-11-01'),(331,80,NULL,'37491d4effd1cd13922915d4e1904b7a','',4,4,'2017-11-01'),(332,160,NULL,'5bca519d6da8d001d2c1f7686e6f9caa','',4,4,'2017-11-02'),(333,40,NULL,'175e8021e9567bbc1eff33695fe30a19','',4,4,'2017-11-02'),(334,280,NULL,'acd4737ea0a92aa08cd9fef70cdd4235','',4,4,'2017-11-02'),(335,40,NULL,'de049c274fc190bb7486025cdd6d80a6','',4,4,'2017-11-02'),(336,120,NULL,'489c7d12a868ec8f8672336ca1e7f594','',4,4,'2017-11-02'),(337,400,NULL,'6870ec433114b4bb1b15490f0139d512','',4,4,'2017-11-02'),(338,560,NULL,'b4fa66cf8de3f4609f6eb115bf845424','',4,4,'2017-11-02'),(339,600,NULL,'824d46c626f8df88177d1c755532eaae','',4,4,'2017-11-02'),(340,600,NULL,'64808e17090b32c1e2a7910971d30ca0','',4,4,'2017-11-02'),(341,80,NULL,'89f404b420698f5fd7d424eedf887e5b','',4,4,'2017-11-03'),(342,120,NULL,'935e30b380c49da65fa2098f3cbe9d9d','',4,4,'2017-11-03'),(343,320,NULL,'5417b8fcb78e7e6b5984893e75f1f399','',4,4,'2017-11-03'),(344,800,NULL,'1d817997aa8daa63015ef2dab651c721','',4,4,'2017-11-03'),(345,880,NULL,'636027ae39561e0924993535cffe231e','',4,4,'2017-11-03'),(346,160,NULL,'8fbbe4dd70bf9009e7f0266717e1db06','',4,4,'2017-11-03'),(347,160,NULL,'dd51ddb70e399b150a9b5c7a5bbb8cff','',4,4,'2017-11-03'),(348,240,NULL,'7a9c5e7751914e310c8975f8f1b8cd77','',4,4,'2017-11-06'),(349,120,NULL,'aa04bd3615372b7ef3cee2b0ccbdde01','',4,4,'2017-11-06'),(350,760,NULL,'af9a9e05e77546a3c0e5d1b5cfb0cf41','',4,4,'2017-11-06'),(351,80,NULL,'cb0f68482a646c3d74688a6cda0a3e46','',4,4,'2017-11-09'),(352,80,NULL,'7575d03666ba59ee1188a63e1e664bfb','',4,4,'2017-11-09'),(353,80,NULL,'5d2defdf5c04d37d55b6c126e2668393','',4,4,'2017-11-09'),(354,80,NULL,'9000cf3b3aeeb6d9ca184e460239d748','',4,4,'2017-11-09'),(355,80,NULL,'173f45e70822904c3c3a68203b20c27f','',4,4,'2017-11-09'),(356,80,NULL,'66a612dac12c1d038cb6551f7e69598a','',4,4,'2017-11-09'),(357,80,NULL,'e87bc070552a9773c22de59849844e23','',4,4,'2017-11-09'),(358,80,NULL,'617640031a79579578b4307972507295','',4,4,'2017-11-09'),(359,80,NULL,'17029c1e8baeab630ab1ba43c5a59f35','',4,4,'2017-11-09'),(360,80,NULL,'01ffab7200213126118cb790ac8ad7cb','',4,4,'2017-11-09'),(361,80,NULL,'34e46c331ac0cfe0003e6b1cc11f81f7','',4,4,'2017-11-09'),(362,80,NULL,'f368815586dde14526223cd107306de1','',4,4,'2017-11-09'),(363,80,NULL,'fb94e2d78fc6d773c346fc69c2413fcc','',4,4,'2017-11-09'),(364,120,NULL,'a6d5f94cd76aea30c5f9b0c12616c1df','',4,4,'2017-11-09'),(365,80,NULL,'a913bfb8f2e4ff41e5691550cf88a2d9','',4,4,'2017-11-13'),(366,80,NULL,'8465daf4826eafc94940da0f30dc13b0','',4,4,'2017-11-13'),(367,280,NULL,'0f312f4aa2a7c7fe7c0d8052d0b6e6f2','',4,4,'2017-11-13'),(368,320,NULL,'1a57b406c9923837db3067e9730d3ae7','',4,4,'2017-11-13'),(369,80,NULL,'ccb09dd67b166b7f00a2bc405875bb1d','',4,4,'2017-11-13'),(370,160,NULL,'ac0224ebc274e94ba20d13aea5d0fe13','',4,4,'2017-11-13'),(371,80,NULL,'2dfbec9926ed9e1a21c36aa9dac0d944','',4,4,'2017-11-13'),(372,80,NULL,'c5ba62d5b997bba94a9767304d801dfa','',4,4,'2017-11-13'),(373,80,NULL,'33f7e9f3979c1366b0118b002e74aebc','',4,4,'2017-11-13'),(374,200,NULL,'cef542aac49f6bb92d2f83fff8e90232','',4,4,'2017-11-13'),(375,80,NULL,'3605a41c50dd88eefff2d5aafdd0a45e','',4,4,'2017-11-13'),(376,80,NULL,'c85cf46936c42b52e670a09ec6c1cdae','',4,4,'2017-11-13'),(377,120,NULL,'cf58fddb3a287c5e8d19dc6ccfc00146','',4,4,'2017-11-13'),(378,80,NULL,'2f98d3574ce9a527b8b07ac2653cbcdc','',4,4,'2017-11-13'),(379,80,NULL,'80d589ecee74ff3bb451049183bc6894','',4,4,'2017-11-13'),(380,80,NULL,'133c8867b7be0970d317bbbbdc288098','',4,4,'2017-11-13'),(381,40,NULL,'39e8a55afb737a67a88653ec400e1d72','',4,4,'2017-11-13'),(382,120,NULL,'cee1033a932176f00b351a11eaf21b8b','',4,4,'2017-11-13'),(383,120,NULL,'91625663bd7fcb46890ff63b8f9aad49','',4,4,'2017-11-13'),(384,80,NULL,'13884f295f385a636789289050b39910','',4,4,'2017-11-13'),(385,80,NULL,'b692ac49da383a68c676022dd504d149','',4,4,'2017-11-13'),(386,80,NULL,'36d125b63af69b52cde6c23798b8fe5a','',4,4,'2017-11-13'),(387,80,NULL,'993b05b771329c22d0656b77e65f3fc7','',4,4,'2017-11-13'),(388,80,NULL,'067f3d261bafba323fbbb87a3072e9c1','',4,4,'2017-11-13'),(389,280,NULL,'60bf016cec7b672bbcd79d8cd44613a5','',4,4,'2017-11-13'),(390,120,NULL,'73b21ba3c77662383e198b4e67615e5a','',4,4,'2017-11-13'),(391,80,NULL,'d14772b1a379f67513837bd260b7089b','',4,4,'2017-11-13'),(392,160,NULL,'1d336cbcc6ad8e6b881513cd4513601b','',4,4,'2017-11-13'),(393,160,NULL,'edaa67370a51e2458816dea7a0ec8c1e','',4,4,'2017-11-13'),(394,160,NULL,'c545dd7131b4d70ab14c850bae4b5d95','',4,4,'2017-11-13'),(395,80,NULL,'0ae538d5bdf419daf67624c986b66ea8','',4,4,'2017-11-13'),(396,120,NULL,'b84bee09a78045e22893bd5f770704e0','',4,4,'2017-11-13'),(397,160,NULL,'69c49d3c25dd33275dad9084311d413f','',4,4,'2017-11-13'),(398,160,NULL,'571e18f1ea0ee21837c512cbd9804578','',4,4,'2017-11-13'),(399,120,NULL,'682fd4550f850a32c9fa074753ab9477','',4,4,'2017-11-13'),(400,80,NULL,'7aed4625fd4f33492f46c49528579976','',4,4,'2017-11-13'),(401,120,NULL,'102741f54c9044df6500012990cc7542','',4,4,'2017-11-13'),(402,80,NULL,'156022ce0544ce97102efbf74acbbf3a','',4,4,'2017-11-13'),(403,40,NULL,'bc952d022a2d90ae7d6080bb5f6a9185','',4,4,'2017-11-13'),(404,120,NULL,'4bf91f910ee0dcc6d72ba9e27ea79b91','',4,4,'2017-11-13'),(405,80,NULL,'c20b1d2a441624d2c2484231ab0fc47e','',4,4,'2017-11-13'),(406,40,NULL,'27ad177cfc9d89a4256cbcaaac5817e2','',4,4,'2017-11-13'),(407,40,NULL,'bcb8e52fae2fa735f48634b00da9dfd1','',4,4,'2017-11-13'),(408,80,NULL,'f91b9b911bf1a9ceb09893e17be98d92','',4,4,'2017-11-13'),(409,120,NULL,'354a8d974a35446b30c85caf8fd63eda','',4,4,'2017-11-13'),(410,80,NULL,'6e5c6f64eb23f03318705c3a21d4e9b0','',4,4,'2017-11-13'),(411,80,NULL,'c25f5608d2e1eb95ec488e108cd49d16','',4,4,'2017-11-13'),(412,40,NULL,'c3156a1af7fad467553c6bdbc26e0de7','',4,4,'2017-11-13'),(413,40,NULL,'04000bbcda32214118cfea2fdb33582d','',4,4,'2017-11-13'),(414,80,NULL,'2298be52c9339d9249a9c80110e813d4','',4,4,'2017-11-13'),(415,80,NULL,'e17975e9aaaab5d42ca368d065010edd','',4,4,'2017-11-13'),(416,80,NULL,'187dcb1cf5f5045d7c1a847899fa0cb8','',4,4,'2017-11-14'),(417,80,NULL,'6c75d75019d265688cdb7372aa1fd096','',4,4,'2017-11-14'),(418,160,NULL,'0696548da9db85c03cfacfc4e73a6974','',4,4,'2017-11-14'),(419,80,NULL,'c26abe698b54209c0482e75716a2acda','',4,4,'2017-11-14'),(420,80,NULL,'8fb897ad50240cd75be471ab8d27a1fb','',4,4,'2017-11-14'),(421,80,NULL,'b105d4a3ea147e456343eebabe5f1254','',4,4,'2017-11-14'),(422,80,NULL,'060a5be8a6b6641a4ee8f1e84f7ea0e9','',4,4,'2017-11-14'),(423,80,NULL,'d1bd8655ad43a7f131fdd04096e929bc','',4,4,'2017-11-14'),(424,80,NULL,'b37992ca7396f7d4c4834f5444005cf6','',4,4,'2017-11-14'),(425,80,NULL,'2f3a602eafd0c3c959ce1ae99dc29d7b','',4,4,'2017-11-14'),(426,80,NULL,'63f2db18587b1c1f2830f120e86c3e31','',4,4,'2017-11-14'),(427,120,NULL,'34933424d67a202e54e2d481ca67ed4a','',4,4,'2017-11-14'),(428,280,NULL,'8b48c8e7d1c44b9b88376d3366d60100','',4,4,'2017-11-14'),(429,160,NULL,'5e191c646b97a4f3eb5f3ec910cffa48','',4,4,'2017-11-14'),(430,80,NULL,'70e730c70e50701a5d799622e64ab559','',4,4,'2017-11-14'),(431,80,NULL,'15417241e57697c877f5ae5040f143bb','',4,4,'2017-11-14'),(432,80,NULL,'a3d885de536f352ebb4b6bb739408ffa','',4,4,'2017-11-14'),(433,280,NULL,'ff8057d36c85b5ac09abc7f016ed5479','',4,4,'2017-11-14'),(434,880,NULL,'7e1a747a443a1c5cecd98194555a79a9','',4,4,'2017-11-14'),(435,880,NULL,'828e496753d31acbe00290e939acb3a4','',4,4,'2017-11-14'),(436,880,NULL,'20d11f0b3be6c495b17e31abe4b9b0c6','',4,4,'2017-11-14'),(437,1520,NULL,'d0b9300d37f2762f3985053c70d2a704','',4,4,'2017-11-14'),(438,40,NULL,'0947cd4cea401539ea2c6943f50ab291','',4,4,'2017-11-14'),(439,120,NULL,'5ec01a3f44202ff401dc341ce33d03ae','',4,4,'2017-11-14'),(440,120,NULL,'ab5ada2a8d19e8b26eca5fb3ce5271fd','',4,4,'2017-11-14'),(441,1440,NULL,'f793add7adbf3c02380a746690851c85','',4,4,'2017-11-14'),(442,1240,NULL,'2c2ac725dae71af812cd58fe48fcd392','',4,4,'2017-11-14'),(443,1880,NULL,'a237c2cc35751ca8691c299067242895','',4,4,'2017-11-14'),(444,600,NULL,'6790e8c658270c7ef01b3e99b66bde5a','',4,4,'2017-11-14'),(445,120,NULL,'1a5da787c2de02c6b506a1f803db56b0','',4,4,'2017-11-14'),(446,400,NULL,'ec0f25721a6268e47a944962f36f8a7c','',4,4,'2018-02-05'),(447,120,NULL,'fc744e41c377a1001b5f203bbd6a9d2f','',4,4,'2018-02-05'),(448,320,NULL,'cfad68e2c65b61ab1959d36754cb7aab','',4,4,'2018-02-05');
/*!40000 ALTER TABLE `pagina_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'loto2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05 22:21:18
