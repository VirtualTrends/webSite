CREATE DATABASE  IF NOT EXISTS `dbvirtualtrends` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbvirtualtrends`;
-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: dbvirtualtrends
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Carrito de compras',7,'add_carrito'),(26,'Can change Carrito de compras',7,'change_carrito'),(27,'Can delete Carrito de compras',7,'delete_carrito'),(28,'Can view Carrito de compras',7,'view_carrito'),(29,'Can add Categorias de los productos',8,'add_categoria'),(30,'Can change Categorias de los productos',8,'change_categoria'),(31,'Can delete Categorias de los productos',8,'delete_categoria'),(32,'Can view Categorias de los productos',8,'view_categoria'),(33,'Can add Colores disponibles',9,'add_colores'),(34,'Can change Colores disponibles',9,'change_colores'),(35,'Can delete Colores disponibles',9,'delete_colores'),(36,'Can view Colores disponibles',9,'view_colores'),(37,'Can add Mensajes de los usuarios para contactar',10,'add_contacto'),(38,'Can change Mensajes de los usuarios para contactar',10,'change_contacto'),(39,'Can delete Mensajes de los usuarios para contactar',10,'delete_contacto'),(40,'Can view Mensajes de los usuarios para contactar',10,'view_contacto'),(41,'Can add Diferentes formas de envios',11,'add_envio'),(42,'Can change Diferentes formas de envios',11,'change_envio'),(43,'Can delete Diferentes formas de envios',11,'delete_envio'),(44,'Can view Diferentes formas de envios',11,'view_envio'),(45,'Can add Lista de emails para distribución  de Nesletter Virtual Trends',12,'add_newsletter'),(46,'Can change Lista de emails para distribución  de Nesletter Virtual Trends',12,'change_newsletter'),(47,'Can delete Lista de emails para distribución  de Nesletter Virtual Trends',12,'delete_newsletter'),(48,'Can view Lista de emails para distribución  de Nesletter Virtual Trends',12,'view_newsletter'),(49,'Can add Nivel de usuario',13,'add_niveluser'),(50,'Can change Nivel de usuario',13,'change_niveluser'),(51,'Can delete Nivel de usuario',13,'delete_niveluser'),(52,'Can view Nivel de usuario',13,'view_niveluser'),(53,'Can add Metodos de pago',14,'add_pago'),(54,'Can change Metodos de pago',14,'change_pago'),(55,'Can delete Metodos de pago',14,'delete_pago'),(56,'Can view Metodos de pago',14,'view_pago'),(57,'Can add Tallas de los productos',15,'add_talla'),(58,'Can change Tallas de los productos',15,'change_talla'),(59,'Can delete Tallas de los productos',15,'delete_talla'),(60,'Can view Tallas de los productos',15,'view_talla'),(61,'Can add Compras concretadas',16,'add_compras'),(62,'Can change Compras concretadas',16,'change_compras'),(63,'Can delete Compras concretadas',16,'delete_compras'),(64,'Can view Compras concretadas',16,'view_compras'),(65,'Can add En de las compras concretadas',17,'add_enviodecompras'),(66,'Can change En de las compras concretadas',17,'change_enviodecompras'),(67,'Can delete En de las compras concretadas',17,'delete_enviodecompras'),(68,'Can view En de las compras concretadas',17,'view_enviodecompras'),(69,'Can add Producto',18,'add_productos'),(70,'Can change Producto',18,'change_productos'),(71,'Can delete Producto',18,'delete_productos'),(72,'Can view Producto',18,'view_productos'),(73,'Can add Imagenes de los Productos',19,'add_imagenesproducto'),(74,'Can change Imagenes de los Productos',19,'change_imagenesproducto'),(75,'Can delete Imagenes de los Productos',19,'delete_imagenesproducto'),(76,'Can view Imagenes de los Productos',19,'view_imagenesproducto'),(77,'Can add Colores de los Productos',20,'add_coloresproductos'),(78,'Can change Colores de los Productos',20,'change_coloresproductos'),(79,'Can delete Colores de los Productos',20,'delete_coloresproductos'),(80,'Can view Colores de los Productos',20,'view_coloresproductos'),(81,'Can add Lista de los productos en los carritos',21,'add_productosencarrito'),(82,'Can change Lista de los productos en los carritos',21,'change_productosencarrito'),(83,'Can delete Lista de los productos en los carritos',21,'delete_productosencarrito'),(84,'Can view Lista de los productos en los carritos',21,'view_productosencarrito'),(85,'Can add Tallas de cada Producto',22,'add_talladelproducto'),(86,'Can change Tallas de cada Producto',22,'change_talladelproducto'),(87,'Can delete Tallas de cada Producto',22,'delete_talladelproducto'),(88,'Can view Tallas de cada Producto',22,'view_talladelproducto'),(89,'Can add Usuarios del sistema',23,'add_usuario'),(90,'Can change Usuarios del sistema',23,'change_usuario'),(91,'Can delete Usuarios del sistema',23,'delete_usuario'),(92,'Can view Usuarios del sistema',23,'view_usuario'),(93,'Can add Talles Perzonalizados del Usuario',24,'add_tallespersonalizados'),(94,'Can change Talles Perzonalizados del Usuario',24,'change_tallespersonalizados'),(95,'Can delete Talles Perzonalizados del Usuario',24,'delete_tallespersonalizados'),(96,'Can view Talles Perzonalizados del Usuario',24,'view_tallespersonalizados'),(97,'Can add Usuario y contraseña para el login',25,'add_login'),(98,'Can change Usuario y contraseña para el login',25,'change_login'),(99,'Can delete Usuario y contraseña para el login',25,'delete_login'),(100,'Can view Usuario y contraseña para el login',25,'view_login'),(101,'Can add Productos favoritos de cada usuario',26,'add_favoritos'),(102,'Can change Productos favoritos de cada usuario',26,'change_favoritos'),(103,'Can delete Productos favoritos de cada usuario',26,'delete_favoritos'),(104,'Can view Productos favoritos de cada usuario',26,'view_favoritos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$gMKNQcgseN9kwdH8hkmu50$K9xr+hBKHSqPSHMmkTULN3kLMpr8wP5khBxL89kbnlA=','2024-05-19 14:08:13.273976',1,'adminDjango','','','adminDjango@hotmail.com',1,1,'2024-05-14 10:40:50.000000'),(2,'pbkdf2_sha256$720000$rOWrqYHbAage4yrmmoQc67$dijVc8m0K9jg+89rLzJVRXetpNCnyxq6SvmbOvSIfEE=',NULL,1,'adminfront','','','',1,1,'2024-05-14 10:46:45.000000'),(3,'pbkdf2_sha256$720000$XFuSYj42FLRVykMaQfYf8a$YiKlMJRkmShnrj9y822av83V8oY/vwsuchXAvunT9FY=',NULL,0,'useruser','','','',1,1,'2024-05-15 03:04:48.000000'),(4,'pbkdf2_sha256$720000$hH8JIgUQmW2uiI0JuccbjR$ra7yVZQb7Z6bxtlSVSHxIidA8pgNfXw/dCFTUuMMMwg=',NULL,0,'useruser2','','','',0,1,'2024-05-15 03:22:37.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75),(76,1,76),(77,1,77),(78,1,78),(79,1,79),(80,1,80),(81,1,81),(82,1,82),(83,1,83),(84,1,84),(85,1,85),(86,1,86),(87,1,87),(88,1,88),(89,1,89),(90,1,90),(91,1,91),(92,1,92),(93,1,93),(94,1,94),(95,1,95),(96,1,96),(97,1,97),(98,1,98),(99,1,99),(100,1,100),(101,1,101),(102,1,102),(103,1,103),(104,1,104),(105,2,1),(106,2,2),(107,2,3),(108,2,4),(109,2,5),(110,2,6),(111,2,7),(112,2,8),(113,2,9),(114,2,10),(115,2,11),(116,2,12),(117,2,13),(118,2,14),(119,2,15),(120,2,16),(121,2,17),(122,2,18),(123,2,19),(124,2,20),(125,2,21),(126,2,22),(127,2,23),(128,2,24),(129,2,25),(130,2,26),(131,2,27),(132,2,28),(133,2,29),(134,2,30),(135,2,31),(136,2,32),(137,2,33),(138,2,34),(139,2,35),(140,2,36),(141,2,37),(142,2,38),(143,2,39),(144,2,40),(145,2,41),(146,2,42),(147,2,43),(148,2,44),(149,2,45),(150,2,46),(151,2,47),(152,2,48),(153,2,49),(154,2,50),(155,2,51),(156,2,52),(157,2,53),(158,2,54),(159,2,55),(160,2,56),(161,2,57),(162,2,58),(163,2,59),(164,2,60),(165,2,61),(166,2,62),(167,2,63),(168,2,64),(169,2,65),(170,2,66),(171,2,67),(172,2,68),(173,2,69),(174,2,70),(175,2,71),(176,2,72),(177,2,73),(178,2,74),(179,2,75),(180,2,76),(181,2,77),(182,2,78),(183,2,79),(184,2,80),(185,2,81),(186,2,82),(187,2,83),(188,2,84),(189,2,85),(190,2,86),(191,2,87),(192,2,88),(193,2,89),(194,2,90),(195,2,91),(196,2,92),(197,2,93),(198,2,94),(199,2,95),(200,2,96),(201,2,97),(202,2,98),(203,2,99),(204,2,100),(205,2,101),(206,2,102),(207,2,103),(208,2,104),(209,3,13),(210,3,14),(211,3,15),(212,3,16),(213,3,25),(214,3,26),(215,3,27),(216,3,28),(217,3,29),(218,3,30),(219,3,31),(220,3,32),(221,3,33),(222,3,34),(223,3,35),(224,3,36),(225,3,37),(226,3,38),(227,3,39),(228,3,40),(229,3,41),(230,3,42),(231,3,43),(232,3,44),(233,3,45),(234,3,46),(235,3,47),(236,3,48),(237,3,49),(238,3,50),(239,3,51),(240,3,52),(241,3,53),(242,3,54),(243,3,55),(244,3,56),(245,3,57),(246,3,58),(247,3,59),(248,3,60),(249,3,61),(250,3,62),(251,3,63),(252,3,64),(253,3,65),(254,3,66),(255,3,67),(256,3,68),(257,3,69),(258,3,70),(259,3,71),(260,3,72),(261,3,73),(262,3,74),(263,3,75),(264,3,76),(265,3,77),(266,3,78),(267,3,79),(268,3,80),(269,3,81),(270,3,82),(271,3,83),(272,3,84),(273,3,85),(274,3,86),(275,3,87),(276,3,88),(277,3,89),(278,3,90),(279,3,91),(280,3,92),(281,3,93),(282,3,94),(283,3,95),(284,3,96),(285,3,97),(286,3,98),(287,3,99),(288,3,100),(289,3,101),(290,3,102),(291,3,103),(292,3,104),(293,4,1),(294,4,2),(295,4,3),(296,4,4),(297,4,5),(298,4,6),(299,4,7),(300,4,8),(301,4,9),(302,4,10),(303,4,11),(304,4,12),(305,4,13),(306,4,14),(307,4,15),(308,4,16),(309,4,17),(310,4,18),(311,4,19),(312,4,20),(313,4,21),(314,4,22),(315,4,23),(316,4,24),(317,4,25),(318,4,26),(319,4,27),(320,4,28),(321,4,29),(322,4,30),(323,4,31),(324,4,32),(325,4,33),(326,4,34),(327,4,35),(328,4,36),(329,4,37),(330,4,38),(331,4,39),(332,4,40),(333,4,41),(334,4,42),(335,4,43),(336,4,44),(337,4,45),(338,4,46),(339,4,47),(340,4,48),(341,4,49),(342,4,50),(343,4,51),(344,4,52),(345,4,53),(346,4,54),(347,4,55),(348,4,56),(349,4,57),(350,4,58),(351,4,59),(352,4,60),(353,4,61),(354,4,62),(355,4,63),(356,4,64),(357,4,65),(358,4,66),(359,4,67),(360,4,68),(361,4,69),(362,4,70),(363,4,71),(364,4,72),(365,4,73),(366,4,74),(367,4,75),(368,4,76),(369,4,77),(370,4,78),(371,4,79),(372,4,80),(373,4,81),(374,4,82),(375,4,83),(376,4,84),(377,4,85),(378,4,86),(379,4,87),(380,4,88),(381,4,89),(382,4,90),(383,4,91),(384,4,92),(385,4,93),(386,4,94),(387,4,95),(388,4,96),(389,4,97),(390,4,98),(391,4,99),(392,4,100),(393,4,101),(394,4,102),(395,4,103),(396,4,104);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `concretado` tinyint(1) NOT NULL,
  `dni_id` int NOT NULL,
  PRIMARY KEY (`id_car`),
  KEY `carrito_dni_id_c0c4cb08_fk_usuario_dni` (`dni_id`),
  CONSTRAINT `carrito_dni_id_c0c4cb08_fk_usuario_dni` FOREIGN KEY (`dni_id`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (1,1,12436789),(2,0,1234567),(3,0,2);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_cat` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'ÉL'),(2,'Ella'),(3,'Accesorios'),(4,'Bolsos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `exa` varchar(6) NOT NULL,
  PRIMARY KEY (`id_color`),
  UNIQUE KEY `color_exa_f60f5766_uniq` (`exa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Purple-gray','a7a6b'),(2,'Dark-green','00640'),(3,'Dark-red','8b000'),(4,'Cyan','E0FFF'),(5,'Coral','ff7f50'),(6,'BlackDeep','00000'),(7,'AcquaBlue','fd5d1'),(8,'RoseOld','E9BAB'),(9,'Azulino','34567');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(15) NOT NULL,
  `hora` time(6) NOT NULL,
  `fecha` date NOT NULL,
  `id_car_id` int NOT NULL,
  `id_pago_id` int NOT NULL,
  PRIMARY KEY (`id_comp`),
  KEY `compra_id_car_id_aa0640a5_fk_carrito_id_car` (`id_car_id`),
  KEY `compra_id_pago_id_be428d60_fk_pago_id_pago` (`id_pago_id`),
  CONSTRAINT `compra_id_car_id_aa0640a5_fk_carrito_id_car` FOREIGN KEY (`id_car_id`) REFERENCES `carrito` (`id_car`),
  CONSTRAINT `compra_id_pago_id_be428d60_fk_pago_id_pago` FOREIGN KEY (`id_pago_id`) REFERENCES `pago` (`id_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id_con` int NOT NULL AUTO_INCREMENT,
  `msj` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` int NOT NULL,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_con`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-14 10:41:17.648767','1','usuario',1,'[{\"added\": {}}]',13,1),(2,'2024-05-14 10:41:26.576673','2','admin',1,'[{\"added\": {}}]',13,1),(3,'2024-05-14 10:42:01.009626','12436789','Carla Antonini',1,'[{\"added\": {}}]',23,1),(4,'2024-05-14 10:43:06.302775','1234567','Gisele Anton',1,'[{\"added\": {}}]',23,1),(5,'2024-05-14 10:43:22.604343','1','adminDjango',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(6,'2024-05-14 10:46:46.200994','2','adminfront@gmail.com',1,'[{\"added\": {}}]',4,1),(7,'2024-05-14 10:47:03.821912','2','adminfront@gmail.com',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(8,'2024-05-14 10:47:40.526153','2','adminfront',2,'[{\"changed\": {\"fields\": [\"Username\", \"Staff status\", \"Superuser status\"]}}]',4,1),(9,'2024-05-14 10:50:35.991154','carla.antonini@hotmail.com','carla.antonini@hotmail.com',1,'[{\"added\": {}}]',25,1),(10,'2024-05-14 10:54:36.014226','carla.antonini@hotmail.com','carla.antonini@hotmail.com',2,'[{\"changed\": {\"fields\": [\"Psw\"]}}]',25,1),(11,'2024-05-14 10:54:49.362932','carla.antonini@hotmail.com','carla.antonini@hotmail.com',2,'[{\"changed\": {\"fields\": [\"Psw\"]}}]',25,1),(12,'2024-05-14 10:55:09.928552','1','Efectivo',1,'[{\"added\": {}}]',14,1),(13,'2024-05-14 10:57:20.363942','1','ÉL',1,'[{\"added\": {}}]',8,1),(14,'2024-05-14 10:57:28.968077','2','Ella',1,'[{\"added\": {}}]',8,1),(15,'2024-05-14 10:57:35.285626','3','Accesorios',1,'[{\"added\": {}}]',8,1),(16,'2024-05-14 10:57:40.212021','4','Bolsos',1,'[{\"added\": {}}]',8,1),(17,'2024-05-14 10:57:51.465704','1','Remera',1,'[{\"added\": {}}]',18,1),(18,'2024-05-14 10:58:36.711627','2','Pantalon',1,'[{\"added\": {}}]',18,1),(19,'2024-05-14 10:59:12.670606','3','Bolso',1,'[{\"added\": {}}]',18,1),(20,'2024-05-14 10:59:44.334864','4','Guantes',1,'[{\"added\": {}}]',18,1),(21,'2024-05-14 11:00:13.918362','1','1',1,'[{\"added\": {}}]',7,1),(22,'2024-05-14 11:00:19.462545','1','1',2,'[]',7,1),(23,'2024-05-14 11:00:22.252849','1','1',2,'[{\"changed\": {\"fields\": [\"Concretado\"]}}]',7,1),(24,'2024-05-14 11:00:32.899841','2','2',1,'[{\"added\": {}}]',7,1),(25,'2024-05-14 11:02:25.111854','1','Purple-gray',1,'[{\"added\": {}}]',9,1),(26,'2024-05-14 11:02:27.598453','1','Color Purple-gray en Pantalon',1,'[{\"added\": {}}]',20,1),(27,'2024-05-14 11:03:13.638831','2','Dark-green',1,'[{\"added\": {}}]',9,1),(28,'2024-05-14 11:03:28.836692','2','Color Dark-green en Guantes',1,'[{\"added\": {}}]',20,1),(29,'2024-05-14 11:04:10.455512','3','Dark-red',1,'[{\"added\": {}}]',9,1),(30,'2024-05-14 11:04:24.029723','3','Color Dark-red en Pantalon',1,'[{\"added\": {}}]',20,1),(31,'2024-05-14 11:05:12.160174','4','Cyan',1,'[{\"added\": {}}]',9,1),(32,'2024-05-14 11:05:50.476056','5','Blusa',1,'[{\"added\": {}}]',18,1),(33,'2024-05-14 11:05:53.416273','4','Color Cyan en Blusa',1,'[{\"added\": {}}]',20,1),(34,'2024-05-14 11:06:31.159383','5','Coral',1,'[{\"added\": {}}]',9,1),(35,'2024-05-14 11:06:38.332865','5','Color Coral en Remera',1,'[{\"added\": {}}]',20,1),(36,'2024-05-14 11:07:09.732481','6','Color Cyan en Remera',1,'[{\"added\": {}}]',20,1),(37,'2024-05-14 11:09:10.803934','1','Remera',1,'[{\"added\": {}}]',19,1),(38,'2024-05-14 11:09:34.393456','2','Remera',1,'[{\"added\": {}}]',19,1),(39,'2024-05-14 11:09:48.845820','3','Remera',1,'[{\"added\": {}}]',19,1),(40,'2024-05-14 11:10:02.659614','4','Remera',1,'[{\"added\": {}}]',19,1),(41,'2024-05-14 11:10:21.626688','5','Bolso',1,'[{\"added\": {}}]',19,1),(42,'2024-05-14 11:10:34.586552','6','Bolso',1,'[{\"added\": {}}]',19,1),(43,'2024-05-14 11:10:51.123743','7','Bolso',1,'[{\"added\": {}}]',19,1),(44,'2024-05-14 11:11:09.702392','8','Guantes',1,'[{\"added\": {}}]',19,1),(45,'2024-05-14 11:11:20.653811','9','Guantes',1,'[{\"added\": {}}]',19,1),(46,'2024-05-14 11:11:33.716687','10','Guantes',1,'[{\"added\": {}}]',19,1),(47,'2024-05-14 11:11:48.173656','11','Guantes',1,'[{\"added\": {}}]',19,1),(48,'2024-05-14 11:12:25.855514','11','Guantes',3,'',19,1),(49,'2024-05-14 11:13:50.526882','12','Blusa',1,'[{\"added\": {}}]',19,1),(50,'2024-05-14 11:14:19.959517','13','Blusa',1,'[{\"added\": {}}]',19,1),(51,'2024-05-14 11:14:33.846637','14','Blusa',1,'[{\"added\": {}}]',19,1),(52,'2024-05-14 11:18:47.453529','6','Multipocket bomber',1,'[{\"added\": {}}]',18,1),(53,'2024-05-14 11:18:48.986326','15','Multipocket bomber',1,'[{\"added\": {}}]',19,1),(54,'2024-05-14 11:19:05.922602','16','Multipocket bomber',1,'[{\"added\": {}}]',19,1),(55,'2024-05-14 11:19:13.827339','17','Multipocket bomber',1,'[{\"added\": {}}]',19,1),(56,'2024-05-14 11:21:24.593610','7','OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',18,1),(57,'2024-05-14 11:21:57.348531','18','OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',19,1),(58,'2024-05-14 11:22:12.741954','19','OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',19,1),(59,'2024-05-14 11:22:24.360084','20','OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',19,1),(60,'2024-05-14 23:12:48.950350','carla.antonini@hotmail.com','carla.antonini@hotmail.com',2,'[]',25,1),(61,'2024-05-14 23:13:20.872318','carla@hotmail.com','carla@hotmail.com',1,'[{\"added\": {}}]',25,1),(62,'2024-05-14 23:15:11.406450','carla@hotmail.com','carla@hotmail.com',2,'[{\"changed\": {\"fields\": [\"Dni\"]}}]',25,1),(63,'2024-05-14 23:17:12.116961','carla@hotmail.com','carla@hotmail.com',2,'[]',25,1),(64,'2024-05-14 23:17:32.406450','1234567','Gisele Anton',2,'[]',23,1),(65,'2024-05-14 23:17:36.854566','12436789','Carla Antonini',2,'[]',23,1),(66,'2024-05-14 23:19:21.824231','carla.antonini@hotmail.com','carla.antonini@hotmail.com',2,'[]',25,1),(67,'2024-05-14 23:20:05.876864','1234','Carla Antonini',1,'[{\"added\": {}}]',23,1),(68,'2024-05-14 23:20:19.014983','12436789','Carlita Antonini',2,'[{\"changed\": {\"fields\": [\"Nombre\"]}}]',23,1),(69,'2024-05-14 23:20:35.076869','hola@hotmail.com','hola@hotmail.com',1,'[{\"added\": {}}]',25,1),(70,'2024-05-15 02:54:08.820781','1','Efectivo',2,'[]',14,1),(71,'2024-05-15 02:54:16.990664','2','Tarjeta',1,'[{\"added\": {}}]',14,1),(72,'2024-05-15 02:56:04.783586','1','Talla object (1)',1,'[{\"added\": {}}]',15,1),(73,'2024-05-15 02:56:10.020572','1','Talla object (1)',2,'[]',15,1),(74,'2024-05-15 02:56:24.151863','2','Talla object (2)',1,'[{\"added\": {}}]',15,1),(75,'2024-05-15 02:56:29.384973','1','Talla object (1)',2,'[]',15,1),(76,'2024-05-15 02:56:42.578236','3','Talla object (3)',1,'[{\"added\": {}}]',15,1),(77,'2024-05-15 02:57:09.569342','4','Talla object (4)',1,'[{\"added\": {}}]',15,1),(78,'2024-05-15 02:57:51.547548','1','ID de talle Talla object (1) e ID de producto Remera',1,'[{\"added\": {}}]',22,1),(79,'2024-05-15 02:57:59.428359','1','ID de talle Talla object (1) e ID de producto Remera',2,'[]',22,1),(80,'2024-05-15 02:58:10.508991','2','ID de talle Talla object (1) e ID de producto Blusa',1,'[{\"added\": {}}]',22,1),(81,'2024-05-15 02:58:17.024710','2','ID de talle Talla object (2) e ID de producto Pantalon',2,'[{\"changed\": {\"fields\": [\"Id prod\", \"Id talle\"]}}]',22,1),(82,'2024-05-15 02:58:22.572858','2','ID de talle Talla object (2) e ID de producto Pantalon',2,'[]',22,1),(83,'2024-05-15 02:58:29.109427','3','ID de talle Talla object (4) e ID de producto Guantes',1,'[{\"added\": {}}]',22,1),(84,'2024-05-15 02:58:45.427497','1','ID de talle Talla object (1) e ID de producto Blusa',2,'[{\"changed\": {\"fields\": [\"Id prod\"]}}]',22,1),(85,'2024-05-15 02:58:54.553503','1','ID de talle Talla object (1) e ID de producto Blusa',2,'[]',22,1),(86,'2024-05-15 02:58:59.263669','4','ID de talle Talla object (1) e ID de producto Remera',1,'[{\"added\": {}}]',22,1),(87,'2024-05-15 02:59:05.449335','4','ID de talle Talla object (2) e ID de producto Remera',2,'[{\"changed\": {\"fields\": [\"Id talle\"]}}]',22,1),(88,'2024-05-15 03:04:48.945511','3','useruser',1,'[{\"added\": {}}]',4,1),(89,'2024-05-15 03:05:37.918368','3','useruser',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(90,'2024-05-15 03:05:47.053521','3','useruser',2,'[]',4,1),(91,'2024-05-15 03:06:58.058353','123','UserU Ser',1,'[{\"added\": {}}]',23,1),(92,'2024-05-15 03:07:04.570533','useruser@hotmail.com','useruser@hotmail.com',1,'[{\"added\": {}}]',25,1),(93,'2024-05-15 03:18:09.812940','4','Talla object (4)',2,'[]',15,1),(94,'2024-05-15 03:18:17.604514','5','Talla object (5)',1,'[{\"added\": {}}]',15,1),(95,'2024-05-15 03:18:24.175258','5','Talla object (5)',2,'[]',15,1),(96,'2024-05-15 03:18:30.325950','6','Talla object (6)',1,'[{\"added\": {}}]',15,1),(97,'2024-05-15 03:20:09.966814','2','UserU Ser Completo',1,'[{\"added\": {}}]',23,1),(98,'2024-05-15 03:20:20.264466','2','UserU Ser Completo',2,'[]',23,1),(99,'2024-05-15 03:21:29.233618','useruser2@hotmail.com','useruser2@hotmail.com',1,'[{\"added\": {}}]',25,1),(100,'2024-05-15 03:22:37.844629','4','useruser2',1,'[{\"added\": {}}]',4,1),(101,'2024-05-15 03:22:54.748407','4','useruser2',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(102,'2024-05-15 05:49:33.429444','3','Bolso',2,'[]',18,1),(103,'2024-05-15 05:58:25.254148','4','Bolsos',2,'[]',8,1),(104,'2024-05-15 06:05:30.022215','7','OVERSIZE CARDIGAN',2,'[{\"changed\": {\"fields\": [\"Talle personalizado\"]}}]',18,1),(105,'2024-05-15 06:05:56.804291','1','Remera',2,'[{\"changed\": {\"fields\": [\"Talle personalizado\"]}}]',18,1),(106,'2024-05-15 06:10:40.100741','25','Remera',1,'[{\"added\": {}}]',19,1),(107,'2024-05-15 06:10:57.923201','26','Remera',1,'[{\"added\": {}}]',19,1),(108,'2024-05-15 06:11:14.510241','27','Remera',1,'[{\"added\": {}}]',19,1),(109,'2024-05-15 06:12:06.537218','28','Guantes',1,'[{\"added\": {}}]',19,1),(110,'2024-05-15 06:12:24.507918','29','Guantes',1,'[{\"added\": {}}]',19,1),(111,'2024-05-15 06:13:00.585361','2','Guantes',2,'[{\"changed\": {\"fields\": [\"Nombre\", \"Desc\", \"Id cat\"]}}]',18,1),(112,'2024-05-15 06:14:18.751984','4','Guantes',2,'[{\"changed\": {\"fields\": [\"Eliminar\"]}}]',18,1),(113,'2024-05-15 06:15:11.764415','2','Guantes',2,'[{\"changed\": {\"fields\": [\"Eliminar\"]}}]',18,1),(114,'2024-05-15 06:30:04.302837','1','UserU Ser Completo',1,'[{\"added\": {}}]',24,1),(115,'2024-05-15 07:23:12.455536','3','Dark-red',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1),(116,'2024-05-15 07:24:09.324060','3','Dark-red',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1),(117,'2024-05-15 07:25:11.395703','8','Color Purple-gray en Guantes',2,'[{\"changed\": {\"fields\": [\"Id color\"]}}]',20,1),(118,'2024-05-15 07:25:21.916165','9','Color Dark-red en Remera',1,'[{\"added\": {}}]',20,1),(119,'2024-05-15 07:25:32.283984','7','Color Purple-gray en Remera',2,'[{\"changed\": {\"fields\": [\"Id color\"]}}]',20,1),(120,'2024-05-15 07:26:00.467420','10','Color Cyan en Remera',1,'[{\"added\": {}}]',20,1),(121,'2024-05-15 07:26:23.732309','11','Color Coral en Remera',1,'[{\"added\": {}}]',20,1),(122,'2024-05-15 07:26:33.099935','12','Color Dark-green en Remera',1,'[{\"added\": {}}]',20,1),(123,'2024-05-15 07:27:58.857274','6','BlackDeep',1,'[{\"added\": {}}]',9,1),(124,'2024-05-15 07:28:03.312160','13','Color BlackDeep en Guantes',1,'[{\"added\": {}}]',20,1),(125,'2024-05-15 07:28:16.928379','14','Color BlackDeep en Bolso',1,'[{\"added\": {}}]',20,1),(126,'2024-05-15 07:28:30.520709','15','Color BlackDeep en Blusa',1,'[{\"added\": {}}]',20,1),(127,'2024-05-15 07:29:16.651754','7','AcquaBlue',1,'[{\"added\": {}}]',9,1),(128,'2024-05-15 07:29:19.968891','16','Color AcquaBlue en Blusa',1,'[{\"added\": {}}]',20,1),(129,'2024-05-15 07:30:27.267831','17','Color BlackDeep en Multipocket bomber',1,'[{\"added\": {}}]',20,1),(130,'2024-05-15 07:30:34.229203','18','Color Purple-gray en Multipocket bomber',1,'[{\"added\": {}}]',20,1),(131,'2024-05-15 07:31:06.759205','8','RoseOld',1,'[{\"added\": {}}]',9,1),(132,'2024-05-15 07:31:16.307551','19','Color RoseOld en OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',20,1),(133,'2024-05-15 07:31:24.181959','20','Color Dark-red en OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',20,1),(134,'2024-05-15 07:31:31.445149','21','Color Dark-red en OVERSIZE CARDIGAN',1,'[{\"added\": {}}]',20,1),(135,'2024-05-15 07:31:41.986574','14','Color BlackDeep en Bolso',2,'[]',20,1),(136,'2024-05-15 07:31:59.438444','22','Color Dark-red en Guantes',1,'[{\"added\": {}}]',20,1),(137,'2024-05-15 08:25:38.100986','9','Azulino',1,'[{\"added\": {}}]',9,1),(138,'2024-05-15 08:25:41.270589','23','Color Azulino en Remera',1,'[{\"added\": {}}]',20,1),(139,'2024-05-15 08:25:55.936133','23','Color Azulino en Remera',2,'[]',20,1),(140,'2024-05-15 08:26:03.883406','23','Color Azulino en Remera',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',20,1),(141,'2024-05-19 14:08:54.362608','9','Azulino',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1),(142,'2024-05-19 14:10:20.556808','9','Azulino',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1),(143,'2024-05-19 15:06:02.002833','9','Azulino',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1),(144,'2024-05-19 15:25:11.497976','5','Coral',2,'[{\"changed\": {\"fields\": [\"Exa\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'virtualtrends','carrito'),(8,'virtualtrends','categoria'),(9,'virtualtrends','colores'),(20,'virtualtrends','coloresproductos'),(16,'virtualtrends','compras'),(10,'virtualtrends','contacto'),(11,'virtualtrends','envio'),(17,'virtualtrends','enviodecompras'),(26,'virtualtrends','favoritos'),(19,'virtualtrends','imagenesproducto'),(25,'virtualtrends','login'),(12,'virtualtrends','newsletter'),(13,'virtualtrends','niveluser'),(14,'virtualtrends','pago'),(18,'virtualtrends','productos'),(21,'virtualtrends','productosencarrito'),(15,'virtualtrends','talla'),(22,'virtualtrends','talladelproducto'),(24,'virtualtrends','tallespersonalizados'),(23,'virtualtrends','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-14 10:38:01.393521'),(2,'auth','0001_initial','2024-05-14 10:38:01.615346'),(3,'admin','0001_initial','2024-05-14 10:38:01.670715'),(4,'admin','0002_logentry_remove_auto_add','2024-05-14 10:38:01.678707'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-14 10:38:01.686698'),(6,'contenttypes','0002_remove_content_type_name','2024-05-14 10:38:01.738652'),(7,'auth','0002_alter_permission_name_max_length','2024-05-14 10:38:01.768387'),(8,'auth','0003_alter_user_email_max_length','2024-05-14 10:38:01.789614'),(9,'auth','0004_alter_user_username_opts','2024-05-14 10:38:01.798955'),(10,'auth','0005_alter_user_last_login_null','2024-05-14 10:38:01.825562'),(11,'auth','0006_require_contenttypes_0002','2024-05-14 10:38:01.826708'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-14 10:38:01.834065'),(13,'auth','0008_alter_user_username_max_length','2024-05-14 10:38:01.867455'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-14 10:38:01.902397'),(15,'auth','0010_alter_group_name_max_length','2024-05-14 10:38:01.918709'),(16,'auth','0011_update_proxy_permissions','2024-05-14 10:38:01.927134'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-14 10:38:01.962297'),(18,'sessions','0001_initial','2024-05-14 10:38:01.976916'),(20,'virtualtrends','0002_alter_niveluser_nivel','2024-05-15 04:56:35.639686'),(21,'virtualtrends','0003_auto_20240515_0521','2024-05-15 05:21:43.281584'),(22,'virtualtrends','0004_auto_20240515_0552','2024-05-15 05:52:29.939160'),(23,'virtualtrends','0005_auto_20240515_0659','2024-05-15 06:59:29.680843'),(24,'virtualtrends','0006_auto_20240515_0720','2024-05-15 07:20:36.945013'),(25,'virtualtrends','0007_auto_20240515_0814','2024-05-15 08:14:28.600214'),(26,'virtualtrends','0008_auto_20240515_0815','2024-05-15 08:20:43.147333'),(31,'virtualtrends','0001_initial','2024-05-19 14:40:59.127626'),(32,'virtualtrends','0002_initial','2024-05-19 14:41:19.180597'),(33,'virtualtrends','0003_auto_20240519_1510','2024-05-19 15:10:20.597712'),(34,'virtualtrends','0004_auto_20240519_2248','2024-05-19 22:49:06.810653');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('49dar3x94eildhyzq4xd8ajotg7fkxd4','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s74ls:LpKkKLPadKOFZTjsU1g6iWJlf3tuMu27ZLc17nMVUlQ','2024-05-29 02:53:36.674015'),('as0k9pk0lof1j0wdbg3nomg0adl65w59','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s6pag:IUb0bOqtX5mJUPGh1Rf8VyNfz7y0jH8vy40UUf09jpw','2024-05-28 10:41:02.806861'),('b4deiu2lrr0vl5kd3ceszlftviljjwy1','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s8hCv:nuIRPBePgEu5GG15XlwIU8J1e9C9QemQkfN0aLDRsZc','2024-06-02 14:08:13.276264'),('kgfokkvz1bi7ixihj5juepziab9oqfz7','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s75F5:Pui6xznBmxzgjywVdnxwIvzNibbVqFT6r2mBPmRczm8','2024-05-29 03:23:47.890241'),('v2ex0ovdz0g9uch9h88q9exxhlqiifwj','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s8gj5:UIKhRLztTSy5AcRT63jG7-992oTEQ7wwl7Sb0uR784s','2024-06-02 13:37:23.392399'),('wf28evsja3as1l8ijrlbcvvjrgvkbz1u','.eJxVjEEOwiAQRe_C2hDGQWhduu8ZmmEGpGogKe3KeHfbpAvdvvf-f6uR1iWPa4vzOIm6KlCnXxaIn7HsQh5U7lVzLcs8Bb0n-rBND1Xi63a0fweZWt7WCAYBPZILqRPxloA8AV8iUkCXInkrqXecOKRzYjCC_cadM9hZsurzBfAbOFM:1s8hCu:M7-GIHQ1nFBUvw_T5RtF2jOC0z_U7IGP4SANt07eYRo','2024-06-02 14:08:12.812120');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `id_env` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `desc` longtext NOT NULL,
  PRIMARY KEY (`id_env`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio_compra`
--

DROP TABLE IF EXISTS `envio_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio_compra` (
  `cod_env` int NOT NULL AUTO_INCREMENT,
  `destino_calle` varchar(30) NOT NULL,
  `destino_numero` int NOT NULL,
  `id_comp_id` int NOT NULL,
  `id_env_id` int NOT NULL,
  PRIMARY KEY (`cod_env`),
  KEY `envio_compra_id_comp_id_fa495312_fk_compra_id_comp` (`id_comp_id`),
  KEY `envio_compra_id_env_id_e63f3a73_fk_envio_id_env` (`id_env_id`),
  CONSTRAINT `envio_compra_id_comp_id_fa495312_fk_compra_id_comp` FOREIGN KEY (`id_comp_id`) REFERENCES `compra` (`id_comp`),
  CONSTRAINT `envio_compra_id_env_id_e63f3a73_fk_envio_id_env` FOREIGN KEY (`id_env_id`) REFERENCES `envio` (`id_env`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio_compra`
--

LOCK TABLES `envio_compra` WRITE;
/*!40000 ALTER TABLE `envio_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorito`
--

DROP TABLE IF EXISTS `favorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorito` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_prod_id` int NOT NULL,
  `dni_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `favorito_id_prod_id_88081c1c_fk_producto_id_prod` (`id_prod_id`),
  KEY `favorito_dni_id_30afef59_fk_usuario_dni` (`dni_id`),
  CONSTRAINT `favorito_dni_id_30afef59_fk_usuario_dni` FOREIGN KEY (`dni_id`) REFERENCES `usuario` (`dni`),
  CONSTRAINT `favorito_id_prod_id_88081c1c_fk_producto_id_prod` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorito`
--

LOCK TABLES `favorito` WRITE;
/*!40000 ALTER TABLE `favorito` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `psw` varchar(30) NOT NULL,
  `dni_id` int NOT NULL,
  PRIMARY KEY (`email`),
  KEY `login_dni_id_8029e176_fk_usuario_dni` (`dni_id`),
  CONSTRAINT `login_dni_id_8029e176_fk_usuario_dni` FOREIGN KEY (`dni_id`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('carla.antonini@hotmail.com','carla1234',12436789),('carla@hotmail.com','logueo',1234567),('hola@hotmail.com','logueo2',12436789),('useruser@hotmail.com','user1234',123),('useruser2@hotmail.com','user5678',2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_u`
--

DROP TABLE IF EXISTS `nivel_u`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel_u` (
  `id_lvl` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`id_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_u`
--

LOCK TABLES `nivel_u` WRITE;
/*!40000 ALTER TABLE `nivel_u` DISABLE KEYS */;
INSERT INTO `nivel_u` VALUES (1,'usuario'),(2,'admin');
/*!40000 ALTER TABLE `nivel_u` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `desc` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'Efectivo','efectivo'),(2,'Tarjeta','tarjeta');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_carrito`
--

DROP TABLE IF EXISTS `prod_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_carrito` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `talla` varchar(2) NOT NULL,
  `color` varchar(30) NOT NULL,
  `espersonalizado` tinyint(1) NOT NULL,
  `id_car_id` int NOT NULL,
  `id_prod_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_carrito_id_car_id_388276ec_fk_carrito_id_car` (`id_car_id`),
  KEY `prod_carrito_id_prod_id_fa27962f_fk_producto_id_prod` (`id_prod_id`),
  CONSTRAINT `prod_carrito_id_car_id_388276ec_fk_carrito_id_car` FOREIGN KEY (`id_car_id`) REFERENCES `carrito` (`id_car`),
  CONSTRAINT `prod_carrito_id_prod_id_fa27962f_fk_producto_id_prod` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_carrito`
--

LOCK TABLES `prod_carrito` WRITE;
/*!40000 ALTER TABLE `prod_carrito` DISABLE KEYS */;
INSERT INTO `prod_carrito` VALUES (1,1,'XS','Dark-red',0,3,1),(2,1,'XS','Dark-red',0,3,1),(3,1,'XS','Azul',0,3,1),(4,1,'M','Azul',0,3,1),(5,1,'XS','Azul',0,3,1);
/*!40000 ALTER TABLE `prod_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_talla`
--

DROP TABLE IF EXISTS `prod_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_talla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_prod_id` int NOT NULL,
  `id_talle_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prod_talla_id_prod_id_51787cc1_fk_producto_id_prod` (`id_prod_id`),
  KEY `prod_talla_id_talle_id_f5845fc0_fk_talla_id_talle` (`id_talle_id`),
  CONSTRAINT `prod_talla_id_prod_id_51787cc1_fk_producto_id_prod` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id_prod`),
  CONSTRAINT `prod_talla_id_talle_id_f5845fc0_fk_talla_id_talle` FOREIGN KEY (`id_talle_id`) REFERENCES `talla` (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_talla`
--

LOCK TABLES `prod_talla` WRITE;
/*!40000 ALTER TABLE `prod_talla` DISABLE KEYS */;
INSERT INTO `prod_talla` VALUES (1,5,1),(3,4,4),(5,1,2),(6,1,4),(7,2,2);
/*!40000 ALTER TABLE `prod_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produc_color`
--

DROP TABLE IF EXISTS `produc_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produc_color` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_color_id` varchar(6) NOT NULL,
  `id_prod_id` int NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produc_color_id_color_id_494077cd_fk_color_id_color` (`id_color_id`),
  KEY `produc_color_id_prod_id_787ca899_fk_producto_id_prod` (`id_prod_id`),
  CONSTRAINT `produc_color_id_prod_id_787ca899_fk_producto_id_prod` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produc_color`
--

LOCK TABLES `produc_color` WRITE;
/*!40000 ALTER TABLE `produc_color` DISABLE KEYS */;
INSERT INTO `produc_color` VALUES (2,'2',4,'ND'),(7,'1',1,'ND'),(8,'1',2,'ND'),(9,'3',1,'ND'),(10,'4',1,'ND'),(11,'5',1,'ND'),(12,'2',1,'ND'),(13,'6',2,'ND'),(14,'6',3,'ND'),(17,'6',6,'ND'),(18,'1',6,'ND'),(19,'8',7,'ND'),(20,'3',7,'ND'),(21,'3',7,'ND'),(22,'3',2,'ND'),(23,'#34567',1,'#34567');
/*!40000 ALTER TABLE `produc_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produc_img`
--

DROP TABLE IF EXISTS `produc_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produc_img` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `id_prod_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produc_img_id_prod_id_3a52b519_fk_producto_id_prod` (`id_prod_id`),
  CONSTRAINT `produc_img_id_prod_id_3a52b519_fk_producto_id_prod` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produc_img`
--

LOCK TABLES `produc_img` WRITE;
/*!40000 ALTER TABLE `produc_img` DISABLE KEYS */;
INSERT INTO `produc_img` VALUES (5,'productos/03_TOTEBAG_Custom_View_2.webp',3),(6,'productos/03_TOTEBAG_Custom_View_4.webp',3),(7,'productos/03_TOTEBAG_Custom_View_3.webp',3),(8,'productos/GLOVES_Custom_View_1.webp',4),(9,'productos/GLOVES_Custom_View_3.webp',4),(10,'productos/GLOVES_Custom_View_5.webp',4),(15,'productos/21_MULTIPOCKET_BOMBER_Custom_View_1.webp',6),(16,'productos/21_MULTIPOCKET_BOMBER_Custom_View_2.webp',6),(17,'productos/21_MULTIPOCKET_BOMBER_Custom_View_3.webp',6),(18,'productos/11_OVERSIZECARDIGAN_Custom_View_2_1.webp',7),(19,'productos/11_OVERSIZECARDIGAN_Custom_View_3_1.webp',7),(20,'productos/11_OVERSIZECARDIGAN_Custom_View_4_1.webp',7),(24,'undefined',2),(25,'productos/01_ASSYMETRICTEE_Custom_View_2_CtXqAxW.webp',1),(26,'productos/01_ASSYMETRICTEE_Custom_View_3_MI38LB3.webp',1),(27,'productos/01_ASSYMETRICTEE_Custom_View_4_g8vvYQl.webp',1),(28,'productos/GLOVES_Custom_View_1_R17mlKP.webp',4),(29,'productos/GLOVES_Custom_View_3_iygWYdE.webp',4),(30,'03_TOTEBAG_Custom_View_2.webp',8),(31,'03_TOTEBAG_Custom_View_3.webp',8),(32,'03_TOTEBAG_Custom_View_4.webp',8),(45,'http://127.0.0.1:8000/media/productos/29_SUMMERTOP_Custom_View_5.webp',5),(46,'http://127.0.0.1:8000/media/productos/29_SUMMERTOP_Custom_View_7.webp',5),(47,'http://127.0.0.1:8000/media/productos/29_SUMMERTOP_Custom_View_8.webp',5);
/*!40000 ALTER TABLE `produc_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_prod` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `desc` longtext NOT NULL,
  `stock` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `talle_personalizado` tinyint(1) NOT NULL,
  `eliminar` tinyint(1) NOT NULL,
  `id_cat_id` int NOT NULL,
  PRIMARY KEY (`id_prod`),
  KEY `producto_id_cat_id_911dcd79_fk_categoria_id_cat` (`id_cat_id`),
  CONSTRAINT `producto_id_cat_id_911dcd79_fk_categoria_id_cat` FOREIGN KEY (`id_cat_id`) REFERENCES `categoria` (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Remera','Remera coralita',100,200.00,1,0,2),(2,'Guantes','Guantes',100,500.00,1,1,3),(3,'Bolso','Bolso',100,150.00,1,0,4),(4,'Guantes','guantes',100,35.00,1,0,3),(5,'Blusa','blusa',100,175.00,1,0,2),(6,'Multipocket bomber','Multipocket bomber',100,650.00,0,0,1),(7,'OVERSIZE CARDIGAN','oversize cardigan',100,650.00,1,0,2),(8,'TOTEBAG','Bolso de mano',100,259.00,1,0,4);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talla`
--

DROP TABLE IF EXISTS `talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talla` (
  `id_talle` int NOT NULL AUTO_INCREMENT,
  `inicial_talle` varchar(10) NOT NULL,
  `medida` decimal(10,2) NOT NULL,
  `m_h` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talla`
--

LOCK TABLES `talla` WRITE;
/*!40000 ALTER TABLE `talla` DISABLE KEYS */;
INSERT INTO `talla` VALUES (1,'Sin Talle',0.00,1),(2,'XS',-0.01,1),(3,'S',1.00,1),(4,'M',2.00,1),(5,'L',3.00,1),(6,'XL',5.00,1);
/*!40000 ALTER TABLE `talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talle_per`
--

DROP TABLE IF EXISTS `talle_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talle_per` (
  `id_per` int NOT NULL AUTO_INCREMENT,
  `cuello` decimal(10,2) NOT NULL,
  `busto` decimal(10,2) NOT NULL,
  `con_rodilla` decimal(10,2) NOT NULL,
  `larg_talle` decimal(10,2) NOT NULL,
  `con_cintura` decimal(10,2) NOT NULL,
  `con_cadera` decimal(10,2) NOT NULL,
  `larg_manga` decimal(10,2) NOT NULL,
  `con_muneca` decimal(10,2) NOT NULL,
  `larg_pierna` decimal(10,2) NOT NULL,
  `altura_rodilla` decimal(10,2) NOT NULL,
  `dni_id` int NOT NULL,
  PRIMARY KEY (`id_per`),
  KEY `talle_per_dni_id_b95ce8d3_fk_usuario_dni` (`dni_id`),
  CONSTRAINT `talle_per_dni_id_b95ce8d3_fk_usuario_dni` FOREIGN KEY (`dni_id`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talle_per`
--

LOCK TABLES `talle_per` WRITE;
/*!40000 ALTER TABLE `talle_per` DISABLE KEYS */;
INSERT INTO `talle_per` VALUES (1,12.00,107.00,12.00,65.00,70.00,90.00,45.00,10.00,80.00,18.00,2);
/*!40000 ALTER TABLE `talle_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `dni` int NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `tel_cel` int NOT NULL,
  `dir_calle` varchar(40) NOT NULL,
  `dir_numero` int NOT NULL,
  `cp` int NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `ph` varchar(30) NOT NULL,
  `id_lvl_id` int NOT NULL,
  PRIMARY KEY (`dni`),
  KEY `usuario_id_lvl_id_5d1e4060_fk_nivel_u_id_lvl` (`id_lvl_id`),
  CONSTRAINT `usuario_id_lvl_id_5d1e4060_fk_nivel_u_id_lvl` FOREIGN KEY (`id_lvl_id`) REFERENCES `nivel_u` (`id_lvl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'UserU','Ser Completo',2,'2',2,2,'2','2','2',1),(123,'UserU','Ser',0,'1',1,1,'Asti','CABA','1',1),(1234,'Carla','Antonini',1234,'dfg',2,14100,'Asti','Asti','3',1),(1234567,'Gisele','Anton',23456,'67 234',567,1234,'Torino','Torino','7',1),(12436789,'Carlita','Antonini',1234567,'DAl 3847',9,14100,'Asti','Asti','5',2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19 20:51:31
