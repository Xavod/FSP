-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: fsp
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `glossaire`
--

DROP TABLE IF EXISTS `glossaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `abreviation` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossaire`
--

LOCK TABLES `glossaire` WRITE;
/*!40000 ALTER TABLE `glossaire` DISABLE KEYS */;
INSERT INTO `glossaire` VALUES (1,'contient du gluten','G'),(2,'contient des produits laitiers','L'),(3,'convient aux végétariens','V'),(4,'contient des crustacés','C'),(5,'contient des arachides','A'),(6,'contient du soja','S'),(7,'contient des fruits à coques','F'),(8,'contient de la moutarde','M'),(9,'contient de l\'oeuf','O'),(10,'contient du sésame','Se'),(11,'ex. vin, etc.','Alcool'),(12,'ex. eau','Boisson'),(13,'ex. riz, pâtes, blé','Cereale'),(14,'ex. patate douce, patate','Feculent'),(15,'ex. crevettes, crabe, langouste','Fruit de mer'),(16,'ex: noisette, raisin sec, airelles','Fruit et Fruit sec'),(17,'ex: navet, carotte, laitue','Legume'),(18,'ex. huile d\'olive, pas beurre','Matiere Grasse'),(19,'ex. oeuf, jaune d\'oeuf','Oeuf'),(20,'Poisson Blanc, ex. Merlan, Loup','PB'),(21,'Poisson Gras, ex. Saumon, Truite','PG'),(22,'ex. lait, fromage, yaourts','Produit Laitier'),(23,'Sauces ex. Vinaigre, bouillon, . et condiments ex. Epices, arômates, herbes, moutarde','Sauce et condiment'),(24,'ex. Miel','Sucre'),(25,'Viande Blanche ex. Poulet, veau, lapin','VB'),(26,'Viande Rouge ex. Boeuf, agneau','VR');
/*!40000 ALTER TABLE `glossaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-16  0:09:51
