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

DROP DATABASE IF EXISTS fsp;
CREATE DATABASE IF NOT EXISTS fsp;

--
-- Table structure for table `glossaire`
--

DROP TABLE IF EXISTS `glossaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abreviation` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glossaire`
--

LOCK TABLES `glossaire` WRITE;
/*!40000 ALTER TABLE `glossaire` DISABLE KEYS */;
INSERT INTO `glossaire` VALUES (1,'G','contient du gluten'),(2,'L','contient des produits laitiers'),(3,'V','convient aux végétariens'),(4,'C','contient des crustacés'),(5,'A','contient des arachides'),(6,'S','contient du soja'),(7,'F','contient des fruits à coques'),(8,'M','contient de la moutarde'),(9,'O','contient de l\'oeuf'),(10,'Se','contient du sésame'),(11,'Alcool','Alcools -- ex. vin, etc.'),(12,'Boisson','Boissons -- ex. eau'),(13,'Cereale','Cereales -- ex. riz, pâtes, blé'),(14,'Feculent','Feculents -- ex. patate douce, patate'),(15,'Fruit de mer','Fruits de mer -- ex. crevettes, crabe, langouste'),(16,'Fruit et Fruit sec','Fruits et fruits secs -- ex: noisette, raisin sec, airelles'),(17,'Legume','Legumes -- ex: navet, carotte, laitue'),(18,'Matiere Grasse','Matieres grasses -- ex. huile d\'olive, pas beurre'),(19,'Oeuf','Oeuf -- ex. oeuf, jaune d\'oeuf'),(20,'PB','Poisson Blanc -- ex. Merlan, Loup'),(21,'PG','Poisson Gras -- ex. Saumon, Truite'),(22,'Produit Laitier','Produits laitiers -- ex. lait, fromage, yaourts'),(23,'Sauce et condiment','Sauces et condiments -- ex. Vinaigre, bouillon ... epices, arômates, herbes, moutarde'),(24,'Sucre','Sucres -- ex. Miel'),(25,'VB','Viande Blanche -- ex. Poulet, veau, lapin'),(26,'VR','Viande Rouge -- ex. Boeuf, agneau');
/*!40000 ALTER TABLE `glossaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `I_nom` varchar(250) DEFAULT NULL,
  `I_unite` varchar(25) DEFAULT NULL,
  `I_groupe` varchar(100) DEFAULT NULL,
  `I_kcal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'aubergine',NULL,'Legume',NULL),(2,'aubergines',NULL,'Legume',NULL),(3,'avocats',NULL,'Legume',NULL),(4,'basilic','cs','Sauce et condiment',NULL),(5,'blette','g','Legume',NULL),(6,'betteraves cuites','g','Legume',NULL),(7,'beurre','noix','Matiere Grasse',NULL),(8,'blanc de poulet',NULL,'VB',NULL),(9,'blancs de poulet',NULL,'VB',NULL),(10,'blettes','g','Legume',NULL),(11,'boeuf','kg','VR',NULL),(12,'bouillon de boeuf','cube','VR,Sauce et condiment',NULL),(13,'bouillon de veau','ml','VB,Sauce et condiment',NULL),(14,'bouillon de volaille',NULL,'VB,Sauce et condiment',NULL),(15,'brocoli','g','Legume',NULL),(16,'brocoli chinois',NULL,'Legume',NULL),(17,'capres','g','Sauce et condiment',NULL),(18,'carotte',NULL,'Legume',NULL),(19,'carottes',NULL,'Legume',NULL),(20,'chair a saucisse','g','VB',NULL),(21,'champignon','g','Legume',NULL),(22,'champignons de Paris','g','Legume',NULL),(23,'chevre frais','g','Produit Laitier',NULL),(24,'choucroute cuite','g','Legume',NULL),(25,'citron',NULL,'Legume',NULL),(26,'citron confit',NULL,'Legume',NULL),(27,'citron jaune',NULL,'Legume',NULL),(28,'citron vert',NULL,'Legume',NULL),(29,'citrons',NULL,'Legume',NULL),(30,'collier d\'agneau','tranche','VR',NULL),(31,'concentre de tomates','boite','Legume',NULL),(32,'confits de canard',NULL,'VB',NULL),(33,'coriandre','cc','Sauce et condiment',NULL),(34,'cote de boeuf','kg','VR',NULL),(35,'cotes de veau',NULL,'VB',NULL),(36,'coulis de tomates','cl','Legume',NULL),(37,'courgette',NULL,'Legume',NULL),(38,'courgettes',NULL,'Legume',NULL),(39,'creme','g','Produit Laitier',NULL),(40,'creme fraiche','cs','Produit Laitier',NULL),(41,'creme liquide','cl','Produit Laitier',NULL),(42,'creme semi epaisse','cl','Produit Laitier',NULL),(43,'crevettes decortiquees','g','Fruit de mer',NULL),(44,'cuisses de poulet',NULL,'VB',NULL),(45,'cumin','cc','Sauce et condiment',NULL),(46,'curcuma','cc','Sauce et condiment',NULL),(47,'curry','cs','Sauce et condiment',NULL),(48,'eau','ml','Boisson',NULL),(49,'echalote',NULL,'Sauce et condiment',NULL),(50,'echalotes','cs','Sauce et condiment',NULL),(51,'emmental','g','Produit Laitier',NULL),(52,'emmental rape','g','Produit Laitier',NULL),(53,'endives','g','Legume',NULL),(54,'epice a couscous','cs','Sauce et condiment',NULL),(55,'epices a colombo','cs','Sauce et condiment',NULL),(56,'epinards','g','Legume',NULL),(57,'escalopes de poulet',NULL,'VB',NULL),(58,'farine','g','Cereale',NULL),(59,'fenouil',NULL,'Legume',NULL),(60,'fenouils',NULL,'Legume',NULL),(61,'feta','g','Produit Laitier',NULL),(62,'feuilles de lasagne',NULL,'Cereale',NULL),(63,'filets de poulet',NULL,'VB',NULL),(64,'fleur de sel','cs','Sauce et condiment',NULL),(65,'fromage aux fines herbes','g','Produit Laitier',NULL),(66,'fromage de chevre','g','Produit Laitier',NULL),(67,'fromage rape','g','Produit Laitier',NULL),(68,'gambas','g','Fruit de mer',NULL),(69,'gingembre','cc','Sauce et condiment',NULL),(70,'gousse d\'ail',NULL,'Sauce et condiment',NULL),(71,'gousses d\'ail',NULL,'Sauce et condiment',NULL),(72,'grana padano','g','Produit Laitier',NULL),(73,'gros fenouil',NULL,'Legume',NULL),(74,'gruyere rape','g','Produit Laitier',NULL),(75,'harissa','cc','Sauce et condiment',NULL),(76,'huile d\'arachide','cs','Matiere Grasse',NULL),(77,'huile d\'olive','cs','Legume',NULL),(78,'huile de noix','cs','Matiere Grasse',NULL),(79,'jambon','tranche','VB',NULL),(80,'jaunes d\'oeuf',NULL,'Oeuf',NULL),(81,'joues de boeuf','g','VR',NULL),(82,'lait','cl','Produit Laitier',NULL),(83,'lait de coco','cl','Produit Laitier',NULL),(84,'lait ecreme','cl','Produit Laitier',NULL),(85,'lard','tranche','VB',NULL),(86,'lardons','g','VB',NULL),(87,'laurier','feuilles','Sauce et condiment',NULL),(88,'loup frais','kg','PB',NULL),(89,'merguez',NULL,'VR',NULL),(90,'miel','cc','Sucre',NULL),(91,'moutarde','cc','Sauce et condiment',NULL),(92,'mozzarella','boules','Produit Laitier',NULL),(93,'muscade','cc','Sauce et condiment',NULL),(94,'navets',NULL,'Legume',NULL),(95,'noisettes','cs','Fruit et Fruit sec',NULL),(96,'oeuf',NULL,'Oeuf',NULL),(97,'oeufs',NULL,'Oeuf',NULL),(98,'oignon',NULL,'Legume',NULL),(99,'oignon rouge',NULL,'Legume',NULL),(100,'oignons',NULL,'Legume',NULL),(101,'oignons nouveaux',NULL,'VB',NULL),(102,'oignons rouges',NULL,'Legume',NULL),(103,'olives','g','Legume',NULL),(104,'olives noires','g','Legume',NULL),(105,'olives vertes',NULL,'Legume',NULL),(106,'pain','g','Cereale',NULL),(107,'paleron de boeuf','g','VR',NULL),(108,'parmesan','g','Produit Laitier',NULL),(109,'parmesan rape','g','Produit Laitier',NULL),(110,'patates douces',NULL,'Feculent',NULL),(111,'pate feuilletee',NULL,'Cereale',NULL),(112,'pates','g','Cereale',NULL),(113,'pates feuilletees',NULL,'Cereale',NULL),(114,'pates fusilli','g','Cereale',NULL),(115,'paves de cabillaud','g','PB',NULL),(116,'penne rigate','g','Cereale',NULL),(117,'persil','cs','Sauce et condiment',NULL),(118,'pesto','cs','Sauce et condiment',NULL),(119,'pilons de poulet',NULL,'VB',NULL),(120,'piment de cayenne','cs','Sauce et condiment',NULL),(121,'piment doux','pincees','Sauce et condiment',NULL),(122,'poireaux',NULL,'Legume',NULL),(123,'pois chiches','g','Feculent',NULL),(124,'pois gourmands','g','Legume',NULL),(125,'poivron jaune',NULL,'Legume',NULL),(126,'poivron rouge',NULL,'Legume',NULL),(127,'poivrons','g','Legume',NULL),(128,'pomme de terre','g','Feculent',NULL),(129,'pommes de terre','g','Feculent',NULL),(130,'porc','g','VB',NULL),(131,'potimarron','g','Legume',NULL),(132,'ricotta','cs','Produit Laitier',NULL),(133,'riz a risotto','g','Cereale',NULL),(134,'riz long','g','Cereale',NULL),(135,'safran','pincee','Sauce et condiment',NULL),(136,'salicorne','g','Legume',NULL),(137,'sauce soja','cs','Sauce et condiment',NULL),(138,'sauce teriyaki','cs','Sauce et condiment',NULL),(139,'saumon fume','tranches','PG',NULL),(140,'spaghetti','g','Cereale',NULL),(141,'tagliatelles','g','Cereale',NULL),(142,'thon','g','PG',NULL),(143,'thym','brins','Sauce et condiment',NULL),(144,'tomate',NULL,'Legume',NULL),(145,'tomates',NULL,'Legume',NULL),(146,'tomates cerises','g','Legume',NULL),(147,'tomates confites',NULL,'Legume',NULL),(148,'tomates pelees','g','Legume',NULL),(149,'truite fumee','g','PG',NULL),(150,'veau','g','VB',NULL),(151,'vin','cl','Alcool',NULL),(152,'vin rouge','ml','Alcool',NULL),(153,'vinaigre','cs','Sauce et condiment',NULL),(154,'vinaigre de cidre','cs','Sauce et condiment',NULL),(155,'vinaigrette','g','Sauce et condiment',NULL),(156,'Worcestershire sauce','cs','Sauce et condiment',NULL);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomdeplat`
--

DROP TABLE IF EXISTS `nomdeplat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomdeplat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_du_plat` varchar(250) DEFAULT NULL,
  `regime` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomdeplat`
--

LOCK TABLES `nomdeplat` WRITE;
/*!40000 ALTER TABLE `nomdeplat` DISABLE KEYS */;
INSERT INTO `nomdeplat` VALUES (1,'agneau a l\'anglaise','G,S,Se,P'),(2,'aiguillettes de poulet aux legumes','O,L'),(3,'aubergines farcies aux legumes','L'),(4,'baked potatoes au four','L,V'),(5,'boeuf bourgignon',NULL),(6,'boeuf braise aux carottes',NULL),(7,'boeuf carottes',NULL),(8,'canelloni au fenouil','L,G'),(9,'carottes au curry et aux petites lardons','L'),(10,'clafouti brocoli et tomates cerises','L,O'),(11,'colombo de poulet',NULL),(12,'cotes de boeuf et aubergines grillees',NULL),(13,'cotes de veau au riz et aux aubergines','G'),(14,'courgettes farcies','L'),(15,'couscous poulet merguez',NULL),(16,'crottins chauds','G,L'),(17,'crumble aux courgettes','L,G'),(18,'Endives au jambon','L,G'),(19,'gratin de blettes a la provencale','L,G,V'),(20,'gratin de potimarron','L,O'),(21,'loup au fenouil','P'),(22,'omelette a la salicorne','O,L'),(23,'papillotte de poisson a l\'avocat','P'),(24,'parmentier de canard a la puree de carottes',NULL),(25,'parmentier de patate douce au poisson','L,P'),(26,'penne rigate au saumon','L,G,P'),(27,'quiche aux epinards chevre et saumon','G,L,P'),(28,'quiche lorraine','G,L,O'),(29,'quiche truite fumee aux courgettes et mozarella','G,L,O,P'),(30,'ragout boeuf carottes','G'),(31,'risotto aux legume et jambon','S,G'),(32,'salade de betteraves','V'),(33,'salade de brocolis aux tomates cerises','V,F'),(34,'salade de fusili crevette et avocat','G,M'),(35,'salade de pates tomates et mozzarella','V,G,L'),(36,'salade tomate thon basilique','O,P'),(37,'salade tomates feta poivrons','L'),(38,'spaghetti au chevre','G,L,V'),(39,'spaghetti aux blettes','G,L'),(40,'spaghetti carbonara','L,G,O'),(41,'spaghettis aux gambas','L,M,G'),(42,'tagine de veau a la patate douce',NULL),(43,'tagliatelles au poulet','G,A,S'),(44,'tajine de veau aux carottes',NULL),(45,'tarte au poulet fenouil et poireau','G,O,L'),(46,'thon au fenouil et aux tomates','P'),(47,'tian aux legumes','V,L'),(48,'tourte a la choucroute','L,G'),(49,'patates garnies au thon au four',NULL);
/*!40000 ALTER TABLE `nomdeplat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette` (
  `R_id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` int(11) DEFAULT NULL,
  `R_nbr_pers` int(11) DEFAULT NULL,
  `R_tps_prepa` int(11) DEFAULT NULL,
  `R_tps_cuisson` int(11) DEFAULT NULL,
  `I_id` int(11) DEFAULT NULL,
  `R_ingr_qtt` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`R_id`),
  KEY `P_id` (`P_id`),
  KEY `I_id` (`I_id`),
  CONSTRAINT `Recette_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `nomdeplat` (`id`),
  CONSTRAINT `Recette_ibfk_2` FOREIGN KEY (`I_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES (1,1,4,35,50,156,6.00),(2,1,4,35,50,143,2.00),(3,1,4,35,50,22,200.00),(4,1,4,35,50,58,20.00),(5,1,4,35,50,77,3.00),(6,1,4,35,50,100,3.00),(7,1,4,35,50,128,1000.00),(8,1,4,35,50,138,1.00),(9,1,4,35,50,30,4.00),(10,2,4,30,30,63,4.00),(11,2,4,30,30,38,2.00),(12,2,4,30,30,19,3.00),(13,2,4,30,30,99,1.00),(14,3,2,15,40,2,1.00),(15,3,2,15,40,100,2.00),(16,3,2,15,40,144,1.00),(17,3,2,15,40,96,1.00),(18,3,2,15,40,20,100.00),(19,3,2,15,40,74,25.00),(20,4,4,10,60,67,100.00),(21,4,4,10,60,128,4.00),(22,5,4,15,100,11,1.00),(23,5,4,15,100,19,3.00),(24,5,4,15,100,152,200.00),(25,5,4,15,100,129,500.00),(26,6,6,20,60,31,1.00),(27,6,6,20,60,19,6.00),(28,6,6,20,60,11,1500.00),(29,6,6,20,60,71,2.00),(30,6,6,20,60,100,2.00),(31,6,6,20,60,12,1.00),(32,6,6,20,60,85,1.00),(33,7,4,20,75,19,500.00),(34,7,4,20,75,81,400.00),(35,7,4,20,75,107,400.00),(36,7,4,20,75,100,2.00),(37,7,4,20,75,70,1.00),(38,7,4,20,75,31,1.00),(39,7,4,20,75,7,1.00),(40,7,4,20,75,151,30.00),(41,7,4,20,75,12,2.00),(42,8,4,45,15,67,70.00),(43,8,4,45,15,60,2.00),(44,8,4,45,15,62,6.00),(45,8,4,45,15,118,4.00),(46,8,4,45,15,132,4.00),(47,8,4,45,15,148,480.00),(48,9,2,10,20,19,4.00),(49,9,2,10,20,86,100.00),(50,9,2,10,20,40,2.00),(51,9,2,10,20,126,1.00),(52,9,2,10,20,14,1.00),(53,9,2,10,20,90,1.00),(54,10,4,20,20,15,250.00),(55,10,4,20,20,40,50.00),(56,10,4,20,20,86,100.00),(57,10,4,20,20,97,4.00),(58,10,4,20,20,146,250.00),(59,11,4,20,60,44,4.00),(60,11,4,20,60,98,1.00),(61,11,4,20,60,1,1.00),(62,11,4,20,60,37,1.00),(63,11,4,20,60,129,3.00),(64,11,4,20,60,71,6.00),(65,11,4,20,60,49,1.00),(66,11,4,20,60,143,3.00),(67,11,4,20,60,117,2.00),(68,11,4,20,60,33,1.00),(69,11,4,20,60,120,1.00),(70,11,4,20,60,55,3.00),(71,11,4,20,60,25,1.00),(72,11,4,20,60,153,1.00),(73,11,4,20,60,83,15.00),(74,12,4,10,25,64,1.00),(75,12,4,10,25,2,3.00),(76,12,4,10,25,49,1.00),(77,12,4,10,25,45,1.00),(78,12,4,10,25,77,10.00),(79,12,4,10,25,34,1.00),(80,13,6,15,25,35,6.00),(81,13,6,15,25,7,75.00),(82,13,6,15,25,25,1.00),(83,13,6,15,25,2,2.00),(84,13,6,15,25,98,1.00),(85,13,6,15,25,134,450.00),(87,14,4,20,50,38,2.00),(88,14,4,20,50,130,600.00),(89,14,4,20,50,77,50.00),(90,14,4,20,50,98,1.00),(91,14,4,20,50,36,20.00),(92,14,4,20,50,67,50.00),(93,15,6,30,35,123,400.00),(94,15,6,30,35,31,2.00),(95,15,6,30,35,19,5.00),(96,15,6,30,35,38,2.00),(97,15,6,30,35,12,2.00),(98,15,6,30,35,54,3.00),(99,15,6,30,35,75,1.00),(100,15,6,30,35,89,12.00),(101,15,6,30,35,94,10.00),(102,15,6,30,35,119,8.00),(103,15,6,30,35,145,3.00),(104,16,4,10,15,7,10.00),(105,16,4,10,15,66,200.00),(106,16,4,10,15,106,200.00),(107,17,6,40,25,38,1000.00),(108,17,6,40,25,109,100.00),(109,17,6,40,25,50,2.00),(110,17,6,40,25,4,2.00),(111,17,6,40,25,7,100.00),(112,17,6,40,25,58,100.00),(113,18,4,30,60,7,30.00),(114,18,4,30,60,39,50.00),(115,18,4,30,60,52,40.00),(116,18,4,30,60,53,1500.00),(117,18,4,30,60,58,30.00),(118,18,4,30,60,82,20.00),(119,18,4,30,60,79,8.00),(120,19,4,30,40,7,40.00),(121,19,4,30,40,10,1000.00),(122,19,4,30,40,58,40.00),(123,19,4,30,40,82,50.00),(124,19,4,30,40,108,80.00),(125,20,4,25,35,40,25.00),(126,20,4,25,35,51,20.00),(127,20,4,25,35,86,100.00),(128,20,4,25,35,96,1.00),(129,20,4,25,35,131,2000.00),(130,21,4,15,30,88,1.00),(131,21,4,15,30,73,1.00),(132,22,4,5,5,40,40.00),(133,22,4,5,5,136,100.00),(134,22,4,5,5,97,8.00),(135,23,4,25,10,3,2.00),(136,23,4,25,10,27,1.00),(137,23,4,25,10,28,1.00),(138,23,4,25,10,70,1.00),(139,23,4,25,10,115,450.00),(140,23,4,25,10,121,5.00),(141,23,4,25,10,3,2.00),(142,23,4,25,10,27,1.00),(143,23,4,25,10,28,1.00),(144,23,4,25,10,70,1.00),(145,48,4,10,25,113,2.00),(146,23,4,25,10,121,5.00),(147,24,4,35,30,19,500.00),(148,24,4,35,30,129,350.00),(149,24,4,35,30,32,4.00),(150,24,4,35,30,47,1.00),(151,24,4,35,30,98,1.00),(152,24,4,35,30,71,2.00),(153,24,4,35,30,93,1.00),(154,25,4,30,30,21,100.00),(155,25,4,30,30,50,2.00),(156,25,4,30,30,70,1.00),(157,25,4,30,30,82,15.00),(158,25,4,30,30,108,50.00),(159,25,4,30,30,110,3.00),(161,25,4,30,30,115,4.00),(162,26,4,5,10,41,25.00),(163,26,4,5,10,116,350.00),(164,26,4,5,10,139,6.00),(165,27,4,15,35,23,150.00),(166,27,4,15,35,139,200.00),(167,27,4,15,35,56,250.00),(168,27,4,15,35,97,2.00),(169,27,4,15,35,111,1.00),(170,28,4,10,25,40,25.00),(171,28,4,10,25,67,50.00),(172,28,4,10,25,86,100.00),(173,28,4,10,25,96,1.00),(174,28,4,10,25,111,1.00),(175,28,4,10,25,79,4.00),(177,29,6,15,30,149,300.00),(178,29,6,15,30,38,500.00),(179,29,6,15,30,92,2.00),(180,29,6,15,30,97,2.00),(181,29,6,15,30,80,2.00),(182,29,6,15,30,40,25.00),(183,29,6,15,30,84,25.00),(184,29,6,15,30,93,1.00),(185,29,6,15,30,74,30.00),(186,29,6,15,30,111,1.00),(187,30,4,35,210,11,1500.00),(188,30,4,35,210,12,500.00),(189,30,4,35,210,19,600.00),(190,30,4,35,210,58,30.00),(191,30,4,35,210,87,3.00),(192,30,4,35,210,71,4.00),(193,30,4,35,210,100,2.00),(194,30,4,35,210,152,175.00),(195,31,4,30,30,19,4.00),(196,31,4,30,30,38,2.00),(197,31,4,30,30,48,300.00),(198,31,4,30,30,133,120.00),(199,31,4,30,30,137,4.00),(200,31,4,30,30,79,2.00),(201,32,4,10,0,6,250.00),(202,32,4,10,0,117,2.00),(203,32,4,10,0,155,5.00),(204,33,4,10,5,15,1.00),(205,33,4,10,5,78,3.00),(206,33,4,10,5,95,2.00),(207,33,4,10,5,147,8.00),(208,33,4,10,5,154,1.00),(209,33,4,10,5,15,1.00),(210,33,4,10,5,147,8.00),(211,33,4,10,5,95,2.00),(212,33,4,10,5,154,1.00),(213,33,4,10,5,78,3.00),(214,34,4,10,8,3,4.00),(215,34,4,10,8,29,2.00),(216,34,4,10,8,43,300.00),(217,34,4,10,8,77,4.00),(218,34,4,10,8,114,500.00),(219,35,4,15,10,112,250.00),(220,35,4,15,10,145,200.00),(221,35,4,15,10,92,60.00),(222,35,4,15,10,112,200.00),(223,35,4,15,10,145,2.00),(224,35,4,15,10,126,1.00),(225,35,4,15,10,65,120.00),(226,35,4,15,10,91,1.00),(227,35,4,15,10,77,3.00),(228,35,4,15,10,153,2.00),(229,36,4,15,10,17,50.00),(230,36,4,15,10,77,2.00),(231,36,4,15,10,97,4.00),(232,36,4,15,10,102,2.00),(233,36,4,15,10,104,50.00),(234,36,4,15,10,142,150.00),(235,36,4,15,10,145,5.00),(236,36,4,15,10,142,150.00),(237,36,4,15,10,102,2.00),(238,36,4,15,10,17,50.00),(239,36,4,15,10,145,5.00),(240,36,4,15,10,77,2.00),(241,36,4,15,10,97,4.00),(242,36,4,15,10,103,50.00),(243,37,4,15,15,9,2.00),(244,37,4,15,15,61,300.00),(245,37,4,15,15,125,1.00),(246,37,4,15,15,145,3.00),(247,37,4,15,15,9,2.00),(248,37,4,15,15,145,3.00),(249,37,4,15,15,61,300.00),(250,37,4,15,15,125,1.00),(251,38,4,5,20,36,25.00),(252,38,4,5,20,23,150.00),(253,38,4,5,20,140,350.00),(255,39,4,15,25,41,40.00),(256,39,4,15,25,86,200.00),(257,39,4,15,25,100,2.00),(258,39,4,15,25,140,250.00),(259,40,4,10,10,42,20.00),(260,40,4,10,10,72,40.00),(261,40,4,10,10,86,250.00),(262,40,4,10,10,97,6.00),(263,40,4,10,10,100,2.00),(264,40,4,10,10,108,40.00),(265,40,4,10,10,140,350.00),(266,41,4,30,20,23,3.00),(267,41,4,30,20,36,25.00),(268,41,4,30,20,41,20.00),(269,41,4,30,20,68,800.00),(270,41,4,30,20,71,3.00),(271,41,4,30,20,140,350.00),(272,42,4,30,90,69,1.00),(273,42,4,30,90,98,1.00),(274,42,4,30,90,110,2.00),(275,42,4,30,90,126,0.50),(276,42,4,30,90,150,1000.00),(277,43,4,15,15,16,1.00),(278,43,4,15,15,18,1.00),(279,43,4,15,15,8,2.00),(280,43,4,15,15,71,2.00),(281,43,4,15,15,76,2.00),(282,43,4,15,15,101,2.00),(283,43,4,15,15,124,100.00),(284,43,4,15,15,137,2.00),(285,43,4,15,15,141,800.00),(287,44,4,15,30,19,500.00),(288,44,4,15,30,150,500.00),(289,44,4,15,30,26,1.00),(290,44,4,15,30,100,2.00),(291,44,4,15,30,70,1.00),(292,44,4,15,30,46,1.00),(293,44,4,15,30,69,1.00),(294,44,4,15,30,135,2.00),(295,44,4,15,30,77,4.00),(296,44,4,15,30,105,12.00),(297,44,4,15,30,13,500.00),(298,45,4,20,25,40,4.00),(299,45,4,20,25,57,2.00),(300,45,4,20,25,60,2.00),(301,45,4,20,25,97,2.00),(302,45,4,20,25,98,1.00),(303,45,4,20,25,111,1.00),(304,45,4,20,25,122,2.00),(305,46,4,30,30,142,400.00),(306,46,4,30,30,148,1.00),(307,46,4,30,30,59,3.00),(308,46,4,30,30,98,1.00),(309,46,4,30,30,142,400.00),(311,47,4,20,55,129,6.00),(312,47,4,20,55,38,300.00),(313,47,4,20,55,2,300.00),(314,47,4,20,55,100,300.00),(315,47,4,20,55,127,300.00),(316,47,4,20,55,7,50.00),(317,47,4,20,55,71,2.00),(318,48,4,10,25,24,500.00),(319,48,4,10,25,40,25.00),(320,48,4,10,25,86,150.00);
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `U_id` int(11) NOT NULL AUTO_INCREMENT,
  `U_pseudo` varchar(50) DEFAULT NULL,
  `U_mdp` varchar(255) DEFAULT NULL,
  `U_fav01` int(11) DEFAULT NULL,
  `U_fav02` int(11) DEFAULT NULL,
  `U_fav03` int(11) DEFAULT NULL,
  `U_fav04` int(11) DEFAULT NULL,
  `U_fav05` int(11) DEFAULT NULL,
  `U_fav06` int(11) DEFAULT NULL,
  `U_fav07` int(11) DEFAULT NULL,
  `U_fav08` int(11) DEFAULT NULL,
  `U_fav09` int(11) DEFAULT NULL,
  `U_fav10` int(11) DEFAULT NULL,
  `U_fav11` int(11) DEFAULT NULL,
  `U_fav12` int(11) DEFAULT NULL,
  `U_fav13` int(11) DEFAULT NULL,
  `U_fav14` int(11) DEFAULT NULL,
  `U_fav15` int(11) DEFAULT NULL,
  `U_fav16` int(11) DEFAULT NULL,
  `U_fav17` int(11) DEFAULT NULL,
  `U_fav18` int(11) DEFAULT NULL,
  `U_fav19` int(11) DEFAULT NULL,
  `U_fav20` int(11) DEFAULT NULL,
  PRIMARY KEY (`U_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_globale`
--

DROP TABLE IF EXISTS `v_globale`;
/*!50001 DROP VIEW IF EXISTS `v_globale`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_globale` (
  `R_id` tinyint NOT NULL,
  `Recettes` tinyint NOT NULL,
  `Regimes_speciaux` tinyint NOT NULL,
  `I_id` tinyint NOT NULL,
  `Ingredients` tinyint NOT NULL,
  `Unites` tinyint NOT NULL,
  `Groupes` tinyint NOT NULL,
  `kcal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_globale`
--

/*!50001 DROP TABLE IF EXISTS `v_globale`*/;
/*!50001 DROP VIEW IF EXISTS `v_globale`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_globale` AS select `nomdeplat`.`id` AS `R_id`,`nomdeplat`.`nom_du_plat` AS `Recettes`,`nomdeplat`.`regime` AS `Regimes_speciaux`,`ingredient`.`id` AS `I_id`,`ingredient`.`I_nom` AS `Ingredients`,`ingredient`.`I_unite` AS `Unites`,`ingredient`.`I_groupe` AS `Groupes`,`ingredient`.`I_kcal` AS `kcal` from (`nomdeplat` join `ingredient`) where `ingredient`.`id` in (select `recette`.`I_id` from `recette` where (`recette`.`P_id` = `nomdeplat`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-16  2:02:54
