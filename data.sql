-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (5,'WiziFarm','2021-01-13','2021-01-15'),(6,'SaintEx','2020-11-19','2020-11-20');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210203101703','2021-02-03 11:17:12',45),('DoctrineMigrations\\Version20210203104941','2021-02-03 11:49:55',63),('DoctrineMigrations\\Version20210203105215','2021-02-03 11:52:21',22),('DoctrineMigrations\\Version20210203105258','2021-02-03 11:53:02',21),('DoctrineMigrations\\Version20210203105323','2021-02-03 11:53:26',1675),('DoctrineMigrations\\Version20210203105545','2021-02-03 11:55:49',106),('DoctrineMigrations\\Version20210203105934','2021-02-03 11:59:36',64),('DoctrineMigrations\\Version20210203110016','2021-02-03 12:00:18',52),('DoctrineMigrations\\Version20210203113855','2021-02-03 12:39:03',136),('DoctrineMigrations\\Version20210203190552','2021-02-03 20:06:04',116),('DoctrineMigrations\\Version20210204005643','2021-02-04 01:56:52',124),('DoctrineMigrations\\Version20210204090003','2021-02-04 10:00:09',150),('DoctrineMigrations\\Version20210204091135','2021-02-04 10:13:32',58),('DoctrineMigrations\\Version20210204091542','2021-02-04 10:15:44',32);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `priority` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045F166D1F9C` (`project_id`),
  CONSTRAINT `FK_C53D045F166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (11,11,'Screenshot_2021-01-18 Accueil • WiziCost.png','2021-02-04 14:30:29',1),(12,11,'Screenshot_2021-01-18 Catégories • WiziCost.png','2021-02-04 14:30:38',2),(13,11,'Screenshot_2021-01-18 Liste des ressources • WiziCost.png','2021-02-04 14:30:46',2),(14,11,'Screenshot_2021-01-18 marque • WiziCost.png','2021-02-04 14:30:55',2),(15,11,'Screenshot_2021-01-18 model • WiziCost.png','2021-02-04 14:31:04',2),(16,11,'Screenshot_2021-01-18 Nouvelle simulation • WiziCost.png','2021-02-04 14:31:18',2),(17,11,'Screenshot_2021-01-18 option • WiziCost.png','2021-02-04 14:31:33',2),(18,11,'Screenshot_2021-01-18 Ressource • WiziCost.png','2021-02-04 14:31:40',2),(19,11,'Screenshot_2021-01-18 type de machine • WiziCost.png','2021-02-04 14:31:46',2),(20,12,'Numeripoly1.png','2021-02-04 14:44:56',1),(21,12,'Numeripoly2.png','2021-02-04 14:45:04',2),(22,12,'Numeripoly6.png','2021-02-04 14:45:39',2),(23,12,'Numeripoly3.png','2021-02-04 14:45:47',2);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2FB3D0EE19EB6921` (`client_id`),
  CONSTRAINT `FK_2FB3D0EE19EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (11,'WiziCost','WiziFarm conçoit une suite de solutions digitales au service des femmes et des hommes de terrain. Créés avec eux à partir de leurs expériences, nos outils améliorent leurs performances tout en simplifiant leurs quotidiens.\r\n\r\nUne application mobile qui simplifie et fiabilise la saisie des activités \r\ndans le cadre de l\'entraide agricole\r\n\r\nElle facilite le partage et l’organisation des ressources \r\npour une communauté d’agriculteurs','2020-01-13',5),(12,'Numeripoly','Lieu atypique de la vie culturelle rémoise, Saint-Ex, association loi 1901, est un espace d’accueil et d’échanges autour des pratiques numériques et des cultures digitales, qui a pour vocation de participer au développement culturel de la région.','2020-11-19',6);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tag`
--

DROP TABLE IF EXISTS `project_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_tag` (
  `project_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`project_id`,`tag_id`),
  KEY `IDX_91F26D60166D1F9C` (`project_id`),
  KEY `IDX_91F26D60BAD26311` (`tag_id`),
  CONSTRAINT `FK_91F26D60166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_91F26D60BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tag`
--

LOCK TABLES `project_tag` WRITE;
/*!40000 ALTER TABLE `project_tag` DISABLE KEYS */;
INSERT INTO `project_tag` VALUES (11,3),(11,5),(12,4),(12,5),(12,6),(12,7);
/*!40000 ALTER TABLE `project_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (3,'Symfony'),(4,'CSS'),(5,'Hackaton'),(6,'HTML'),(7,'PHP');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','[\"ROLE_ADMIN\"]','$argon2id$v=19$m=65536,t=4,p=1$kYVQHS+oNrsb3Q2dH84Qjg$oAxvrmU5IvsOseESc4r5NJ4Kp8kdaWrGLfpVPgaFcoA');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 15:09:38
