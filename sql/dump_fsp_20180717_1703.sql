-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fsp
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
INSERT INTO `ingredient` VALUES (1,'aubergine',NULL,'Legume',NULL),(2,'aubergines',NULL,'Legume',NULL),(3,'avocats',NULL,'Legume',NULL),(4,'basilic','cs','Sauce et condiment',NULL),(5,'blette','g','Legume',NULL),(6,'betteraves cuites','g','Legume',NULL),(7,'beurre','noix','Matiere Grasse',NULL),(8,'blanc de poulet',NULL,'VB',NULL),(9,'blancs de poulet',NULL,'VB',NULL),(10,'blettes','g','Legume',NULL),(11,'boeuf','g','VR',NULL),(12,'bouillon de boeuf','cube','VR,Sauce et condiment',NULL),(13,'bouillon de veau','cl','VB,Sauce et condiment',NULL),(14,'bouillon de volaille',NULL,'VB,Sauce et condiment',NULL),(15,'brocoli','g','Legume',NULL),(16,'brocoli chinois',NULL,'Legume',NULL),(17,'capres','g','Sauce et condiment',NULL),(18,'carotte',NULL,'Legume',NULL),(19,'carottes',NULL,'Legume',NULL),(20,'chair a saucisse','g','VB',NULL),(21,'champignon','g','Legume',NULL),(22,'champignons de Paris','g','Legume',NULL),(23,'chevre frais','g','Produit Laitier',NULL),(24,'choucroute cuite','g','Legume',NULL),(25,'citron',NULL,'Legume',NULL),(26,'citron confit',NULL,'Legume',NULL),(27,'citron jaune',NULL,'Legume',NULL),(28,'citron vert',NULL,'Legume',NULL),(29,'citrons',NULL,'Legume',NULL),(30,'collier d\'agneau','tranche','VR',NULL),(31,'concentre de tomates','boite','Legume',NULL),(32,'confits de canard',NULL,'VB',NULL),(33,'coriandre','cc','Sauce et condiment',NULL),(34,'cote de boeuf','g','VR',NULL),(35,'cotes de veau',NULL,'VB',NULL),(36,'coulis de tomates','cl','Legume',NULL),(37,'courgette',NULL,'Legume',NULL),(38,'courgettes',NULL,'Legume',NULL),(39,'creme','g','Produit Laitier',NULL),(40,'creme fraiche','cs','Produit Laitier',NULL),(41,'creme liquide','cl','Produit Laitier',NULL),(42,'creme semi epaisse','cl','Produit Laitier',NULL),(43,'crevettes decortiquees','g','Fruit de mer',NULL),(44,'cuisses de poulet',NULL,'VB',NULL),(45,'cumin','cc','Sauce et condiment',NULL),(46,'curcuma','cc','Sauce et condiment',NULL),(47,'curry','cs','Sauce et condiment',NULL),(48,'eau','cl','Boisson',NULL),(49,'echalote',NULL,'Sauce et condiment',NULL),(50,'echalotes','cs','Sauce et condiment',NULL),(51,'emmental','g','Produit Laitier',NULL),(52,'emmental rape','g','Produit Laitier',NULL),(53,'endives','g','Legume',NULL),(54,'epice a couscous','cs','Sauce et condiment',NULL),(55,'epices a colombo','cs','Sauce et condiment',NULL),(56,'epinards','g','Legume',NULL),(57,'escalopes de poulet',NULL,'VB',NULL),(58,'farine','g','Cereale',NULL),(59,'fenouil',NULL,'Legume',NULL),(60,'fenouils',NULL,'Legume',NULL),(61,'feta','g','Produit Laitier',NULL),(62,'feuilles de lasagne',NULL,'Cereale',NULL),(63,'filets de poulet',NULL,'VB',NULL),(64,'fleur de sel','cs','Sauce et condiment',NULL),(65,'fromage aux fines herbes','g','Produit Laitier',NULL),(66,'fromage de chevre','g','Produit Laitier',NULL),(67,'fromage rape','g','Produit Laitier',NULL),(68,'gambas','g','Fruit de mer',NULL),(69,'gingembre','cc','Sauce et condiment',NULL),(70,'gousse d\'ail',NULL,'Sauce et condiment',NULL),(71,'gousses d\'ail',NULL,'Sauce et condiment',NULL),(72,'grana padano','g','Produit Laitier',NULL),(73,'gros fenouil',NULL,'Legume',NULL),(74,'gruyere rape','g','Produit Laitier',NULL),(75,'harissa','cc','Sauce et condiment',NULL),(76,'huile d\'arachide','cs','Matiere grasse',NULL),(77,'huile d\'olive','cs','Matiere grasse',NULL),(78,'huile de noix','cs','Matiere grasse',NULL),(79,'jambon','tranche','VB',NULL),(80,'jaunes d\'oeuf',NULL,'Oeuf',NULL),(81,'joues de boeuf','g','VR',NULL),(82,'lait','cl','Produit Laitier',NULL),(83,'lait de coco','cl','Produit Laitier',NULL),(84,'lait ecreme','cl','Produit Laitier',NULL),(85,'lard','tranche','VB',NULL),(86,'lardons','g','VB',NULL),(87,'laurier','feuille','Sauce et condiment',NULL),(88,'loup frais','g','PB',NULL),(89,'merguez',NULL,'VR',NULL),(90,'miel','cc','Sucre',NULL),(91,'moutarde','cc','Sauce et condiment',NULL),(92,'mozzarella','boule','Produit Laitier',NULL),(93,'muscade','cc','Sauce et condiment',NULL),(94,'navets',NULL,'Legume',NULL),(95,'noisettes','cs','Fruit et Fruit sec',NULL),(96,'oeuf',NULL,'Oeuf',NULL),(97,'oeufs',NULL,'Oeuf',NULL),(98,'oignon',NULL,'Legume',NULL),(99,'oignon rouge',NULL,'Legume',NULL),(100,'oignons',NULL,'Legume',NULL),(101,'oignons nouveaux',NULL,'VB',NULL),(102,'oignons rouges',NULL,'Legume',NULL),(103,'olives','g','Fruit et fruit sec',NULL),(104,'olives noires','g','Fruit et fruit sec',NULL),(105,'olives vertes',NULL,'Fruit et fruit sec',NULL),(106,'pain','g','Cereale',NULL),(107,'paleron de boeuf','g','VR',NULL),(108,'parmesan','g','Produit Laitier',NULL),(109,'parmesan rape','g','Produit Laitier',NULL),(110,'patates douces',NULL,'Feculent',NULL),(111,'pate feuilletee',NULL,'Cereale',NULL),(112,'pates','g','Cereale',NULL),(113,'pates feuilletees',NULL,'Cereale',NULL),(114,'pates fusilli','g','Cereale',NULL),(115,'paves de cabillaud','g','PB',NULL),(116,'penne rigate','g','Cereale',NULL),(117,'persil','cs','Sauce et condiment',NULL),(118,'pesto','cs','Sauce et condiment',NULL),(119,'pilons de poulet',NULL,'VB',NULL),(120,'piment de cayenne','cs','Sauce et condiment',NULL),(121,'piment doux','pincee','Sauce et condiment',NULL),(122,'poireaux',NULL,'Legume',NULL),(123,'pois chiches','g','Feculent',NULL),(124,'pois gourmands','g','Legume',NULL),(125,'poivron jaune',NULL,'Legume',NULL),(126,'poivron rouge',NULL,'Legume',NULL),(127,'poivrons','g','Legume',NULL),(128,'pomme de terre','g','Feculent',NULL),(129,'pommes de terre','g','Feculent',NULL),(130,'porc','g','VB',NULL),(131,'potimarron','g','Legume',NULL),(132,'ricotta','cs','Produit Laitier',NULL),(133,'riz a risotto','g','Cereale',NULL),(134,'riz long','g','Cereale',NULL),(135,'safran','pincee','Sauce et condiment',NULL),(136,'salicorne','g','Legume',NULL),(137,'sauce soja','cs','Sauce et condiment',NULL),(138,'sauce teriyaki','cs','Sauce et condiment',NULL),(139,'saumon fume','tranche','PG',NULL),(140,'spaghetti','g','Cereale',NULL),(141,'tagliatelles','g','Cereale',NULL),(142,'thon','g','PG',NULL),(143,'thym','brin','Sauce et condiment',NULL),(144,'tomate',NULL,'Legume',NULL),(145,'tomates',NULL,'Legume',NULL),(146,'tomates cerises','g','Legume',NULL),(147,'tomates confites',NULL,'Legume',NULL),(148,'tomates pelees','g','Legume',NULL),(149,'truite fumee','g','PG',NULL),(150,'veau','g','VB',NULL),(151,'vin','cl','Alcool',NULL),(152,'vin rouge','cl','Alcool',NULL),(153,'vinaigre','cs','Sauce et condiment',NULL),(154,'vinaigre de cidre','cs','Sauce et condiment',NULL),(155,'vinaigrette','g','Sauce et condiment',NULL),(156,'Worcestershire sauce','cs','Sauce et condiment',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES (321,1,4,35,50,156,6.00),(322,1,4,35,50,143,2.00),(323,1,4,35,50,22,200.00),(324,1,4,35,50,58,20.00),(325,1,4,35,50,77,3.00),(326,1,4,35,50,100,3.00),(327,1,4,35,50,128,1000.00),(328,1,4,35,50,138,1.00),(329,1,4,35,50,30,4.00),(330,2,4,30,30,63,4.00),(331,2,4,30,30,38,2.00),(332,2,4,30,30,19,3.00),(333,2,4,30,30,99,1.00),(334,3,2,15,40,2,1.00),(335,3,2,15,40,100,2.00),(336,3,2,15,40,144,1.00),(337,3,2,15,40,96,1.00),(338,3,2,15,40,20,100.00),(339,3,2,15,40,74,25.00),(340,4,4,10,60,67,100.00),(341,4,4,10,60,128,4.00),(342,5,4,15,100,11,1.00),(343,5,4,15,100,19,3.00),(344,5,4,15,100,152,200.00),(345,5,4,15,100,129,500.00),(346,6,6,20,60,31,1.00),(347,6,6,20,60,19,6.00),(348,6,6,20,60,11,1500.00),(349,6,6,20,60,71,2.00),(350,6,6,20,60,100,2.00),(351,6,6,20,60,12,1.00),(352,6,6,20,60,85,1.00),(353,7,4,20,75,19,500.00),(354,7,4,20,75,81,400.00),(355,7,4,20,75,107,400.00),(356,7,4,20,75,100,2.00),(357,7,4,20,75,70,1.00),(358,7,4,20,75,31,1.00),(359,7,4,20,75,7,1.00),(360,7,4,20,75,151,30.00),(361,7,4,20,75,12,2.00),(362,8,4,45,15,67,70.00),(363,8,4,45,15,60,2.00),(364,8,4,45,15,62,6.00),(365,8,4,45,15,118,4.00),(366,8,4,45,15,132,4.00),(367,8,4,45,15,148,480.00),(368,9,2,10,20,19,4.00),(369,9,2,10,20,86,100.00),(370,9,2,10,20,40,2.00),(371,9,2,10,20,126,1.00),(372,9,2,10,20,14,1.00),(373,9,2,10,20,90,1.00),(374,10,4,20,20,15,250.00),(375,10,4,20,20,40,50.00),(376,10,4,20,20,86,100.00),(377,10,4,20,20,97,4.00),(378,10,4,20,20,146,250.00),(379,11,4,20,60,44,4.00),(380,11,4,20,60,98,1.00),(381,11,4,20,60,1,1.00),(382,11,4,20,60,37,1.00),(383,11,4,20,60,129,3.00),(384,11,4,20,60,71,6.00),(385,11,4,20,60,49,1.00),(386,11,4,20,60,143,3.00),(387,11,4,20,60,117,2.00),(388,11,4,20,60,33,1.00),(389,11,4,20,60,120,1.00),(390,11,4,20,60,55,3.00),(391,11,4,20,60,25,1.00),(392,11,4,20,60,153,1.00),(393,11,4,20,60,83,15.00),(394,12,4,10,25,64,1.00),(395,12,4,10,25,2,3.00),(396,12,4,10,25,49,1.00),(397,12,4,10,25,45,1.00),(398,12,4,10,25,77,10.00),(399,12,4,10,25,34,1.00),(400,13,6,15,25,35,6.00),(401,13,6,15,25,7,75.00),(402,13,6,15,25,25,1.00),(403,13,6,15,25,2,2.00),(404,13,6,15,25,98,1.00),(405,13,6,15,25,134,450.00),(406,14,4,20,50,38,2.00),(407,14,4,20,50,130,600.00),(408,14,4,20,50,77,50.00),(409,14,4,20,50,98,1.00),(410,14,4,20,50,36,20.00),(411,14,4,20,50,67,50.00),(412,15,6,30,35,123,400.00),(413,15,6,30,35,31,2.00),(414,15,6,30,35,19,5.00),(415,15,6,30,35,38,2.00),(416,15,6,30,35,12,2.00),(417,15,6,30,35,54,3.00),(418,15,6,30,35,75,1.00),(419,15,6,30,35,89,12.00),(420,15,6,30,35,94,10.00),(421,15,6,30,35,119,8.00),(422,15,6,30,35,145,3.00),(423,16,4,10,15,7,10.00),(424,16,4,10,15,66,200.00),(425,16,4,10,15,106,200.00),(426,17,6,40,25,38,1000.00),(427,17,6,40,25,109,100.00),(428,17,6,40,25,50,2.00),(429,17,6,40,25,4,2.00),(430,17,6,40,25,7,100.00),(431,17,6,40,25,58,100.00),(432,18,4,30,60,7,30.00),(433,18,4,30,60,39,50.00),(434,18,4,30,60,52,40.00),(435,18,4,30,60,53,1500.00),(436,18,4,30,60,58,30.00),(437,18,4,30,60,82,20.00),(438,18,4,30,60,79,8.00),(439,19,4,30,40,7,40.00),(440,19,4,30,40,10,1000.00),(441,19,4,30,40,58,40.00),(442,19,4,30,40,82,50.00),(443,19,4,30,40,108,80.00),(444,20,4,25,35,40,25.00),(445,20,4,25,35,51,20.00),(446,20,4,25,35,86,100.00),(447,20,4,25,35,96,1.00),(448,20,4,25,35,131,2000.00),(449,21,4,15,30,88,1.00),(450,21,4,15,30,73,1.00),(451,22,4,5,5,40,40.00),(452,22,4,5,5,136,100.00),(453,22,4,5,5,97,8.00),(454,23,4,25,10,3,2.00),(455,23,4,25,10,27,1.00),(456,23,4,25,10,28,1.00),(457,23,4,25,10,70,1.00),(458,23,4,25,10,115,450.00),(459,23,4,25,10,121,5.00),(460,48,4,10,25,113,2.00),(461,24,4,35,30,19,500.00),(462,24,4,35,30,129,350.00),(463,24,4,35,30,32,4.00),(464,24,4,35,30,47,1.00),(465,24,4,35,30,98,1.00),(466,24,4,35,30,71,2.00),(467,24,4,35,30,93,1.00),(468,25,4,30,30,21,100.00),(469,25,4,30,30,50,2.00),(470,25,4,30,30,70,1.00),(471,25,4,30,30,82,15.00),(472,25,4,30,30,108,50.00),(473,25,4,30,30,110,3.00),(474,25,4,30,30,115,4.00),(475,26,4,5,10,41,25.00),(476,26,4,5,10,116,350.00),(477,26,4,5,10,139,6.00),(478,27,4,15,35,23,150.00),(479,27,4,15,35,139,200.00),(480,27,4,15,35,56,250.00),(481,27,4,15,35,97,2.00),(482,27,4,15,35,111,1.00),(483,28,4,10,25,40,25.00),(484,28,4,10,25,67,50.00),(485,28,4,10,25,86,100.00),(486,28,4,10,25,96,1.00),(487,28,4,10,25,111,1.00),(488,28,4,10,25,79,4.00),(489,29,6,15,30,149,300.00),(490,29,6,15,30,38,500.00),(491,29,6,15,30,92,2.00),(492,29,6,15,30,97,2.00),(493,29,6,15,30,80,2.00),(494,29,6,15,30,40,25.00),(495,29,6,15,30,84,25.00),(496,29,6,15,30,93,1.00),(497,29,6,15,30,74,30.00),(498,29,6,15,30,111,1.00),(499,30,4,35,210,11,1500.00),(500,30,4,35,210,12,500.00),(501,30,4,35,210,19,600.00),(502,30,4,35,210,58,30.00),(503,30,4,35,210,87,3.00),(504,30,4,35,210,71,4.00),(505,30,4,35,210,100,2.00),(506,30,4,35,210,152,175.00),(507,31,4,30,30,19,4.00),(508,31,4,30,30,38,2.00),(509,31,4,30,30,48,300.00),(510,31,4,30,30,133,120.00),(511,31,4,30,30,137,4.00),(512,31,4,30,30,79,2.00),(513,32,4,10,0,6,250.00),(514,32,4,10,0,117,2.00),(515,32,4,10,0,155,5.00),(516,33,4,10,5,15,1.00),(517,33,4,10,5,78,3.00),(518,33,4,10,5,95,2.00),(519,33,4,10,5,147,8.00),(520,33,4,10,5,154,1.00),(521,34,4,10,8,3,4.00),(522,34,4,10,8,29,2.00),(523,34,4,10,8,43,300.00),(524,34,4,10,8,77,4.00),(525,34,4,10,8,114,500.00),(526,35,4,15,10,112,250.00),(527,35,4,15,10,145,200.00),(528,35,4,15,10,92,60.00),(529,35,4,15,10,112,200.00),(530,35,4,15,10,145,2.00),(531,35,4,15,10,126,1.00),(532,35,4,15,10,65,120.00),(533,35,4,15,10,91,1.00),(534,35,4,15,10,77,3.00),(535,35,4,15,10,153,2.00),(536,36,4,15,10,17,50.00),(537,36,4,15,10,77,2.00),(538,36,4,15,10,97,4.00),(539,36,4,15,10,102,2.00),(540,36,4,15,10,104,50.00),(541,36,4,15,10,142,150.00),(542,36,4,15,10,145,5.00),(543,36,4,15,10,103,50.00),(544,37,4,15,15,9,2.00),(545,37,4,15,15,61,300.00),(546,37,4,15,15,125,1.00),(547,37,4,15,15,145,3.00),(548,38,4,5,20,36,25.00),(549,38,4,5,20,23,150.00),(550,38,4,5,20,140,350.00),(551,39,4,15,25,41,40.00),(552,39,4,15,25,86,200.00),(553,39,4,15,25,100,2.00),(554,39,4,15,25,140,250.00),(555,40,4,10,10,42,20.00),(556,40,4,10,10,72,40.00),(557,40,4,10,10,86,250.00),(558,40,4,10,10,97,6.00),(559,40,4,10,10,100,2.00),(560,40,4,10,10,108,40.00),(561,40,4,10,10,140,350.00),(562,41,4,30,20,23,3.00),(563,41,4,30,20,36,25.00),(564,41,4,30,20,41,20.00),(565,41,4,30,20,68,800.00),(566,41,4,30,20,71,3.00),(567,41,4,30,20,140,350.00),(568,42,4,30,90,69,1.00),(569,42,4,30,90,98,1.00),(570,42,4,30,90,110,2.00),(571,42,4,30,90,126,0.50),(572,42,4,30,90,150,1000.00),(573,43,4,15,15,16,1.00),(574,43,4,15,15,18,1.00),(575,43,4,15,15,8,2.00),(576,43,4,15,15,71,2.00),(577,43,4,15,15,76,2.00),(578,43,4,15,15,101,2.00),(579,43,4,15,15,124,100.00),(580,43,4,15,15,137,2.00),(581,43,4,15,15,141,800.00),(582,44,4,15,30,19,500.00),(583,44,4,15,30,150,500.00),(584,44,4,15,30,26,1.00),(585,44,4,15,30,100,2.00),(586,44,4,15,30,70,1.00),(587,44,4,15,30,46,1.00),(588,44,4,15,30,69,1.00),(589,44,4,15,30,135,2.00),(590,44,4,15,30,77,4.00),(591,44,4,15,30,105,12.00),(592,44,4,15,30,13,500.00),(593,45,4,20,25,40,4.00),(594,45,4,20,25,57,2.00),(595,45,4,20,25,60,2.00),(596,45,4,20,25,97,2.00),(597,45,4,20,25,98,1.00),(598,45,4,20,25,111,1.00),(599,45,4,20,25,122,2.00),(600,46,4,30,30,142,400.00),(601,46,4,30,30,148,1.00),(602,46,4,30,30,59,3.00),(603,46,4,30,30,98,1.00),(604,47,4,20,55,129,6.00),(605,47,4,20,55,38,300.00),(606,47,4,20,55,2,300.00),(607,47,4,20,55,100,300.00),(608,47,4,20,55,127,300.00),(609,47,4,20,55,7,50.00),(610,47,4,20,55,71,2.00),(611,48,4,10,25,24,500.00),(612,48,4,10,25,40,25.00),(613,48,4,10,25,86,150.00);
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette2`
--

DROP TABLE IF EXISTS `recette2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` int(11) DEFAULT NULL,
  `R_nbr_pers` int(11) DEFAULT NULL,
  `R_tps_prepa` int(11) DEFAULT NULL,
  `R_tps_cuisson` int(11) DEFAULT NULL,
  `I_id` int(11) DEFAULT NULL,
  `R_ingr_qtt` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `P_id` (`P_id`),
  KEY `I_id` (`I_id`),
  CONSTRAINT `recette2_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `nomdeplat` (`id`),
  CONSTRAINT `recette2_ibfk_2` FOREIGN KEY (`I_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=928 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette2`
--

LOCK TABLES `recette2` WRITE;
/*!40000 ALTER TABLE `recette2` DISABLE KEYS */;
INSERT INTO `recette2` VALUES (635,1,4,35,50,156,6.00),(636,1,4,35,50,143,2.00),(637,1,4,35,50,22,200.00),(638,1,4,35,50,58,20.00),(639,1,4,35,50,77,3.00),(640,1,4,35,50,100,3.00),(641,1,4,35,50,128,1000.00),(642,1,4,35,50,138,1.00),(643,1,4,35,50,30,4.00),(644,2,4,30,30,63,4.00),(645,2,4,30,30,38,2.00),(646,2,4,30,30,19,3.00),(647,2,4,30,30,99,1.00),(648,3,2,15,40,2,1.00),(649,3,2,15,40,100,2.00),(650,3,2,15,40,144,1.00),(651,3,2,15,40,96,1.00),(652,3,2,15,40,20,100.00),(653,3,2,15,40,74,25.00),(654,4,4,10,60,67,100.00),(655,4,4,10,60,128,4.00),(656,5,4,15,100,11,1.00),(657,5,4,15,100,19,3.00),(658,5,4,15,100,152,200.00),(659,5,4,15,100,129,500.00),(660,6,6,20,60,31,1.00),(661,6,6,20,60,19,6.00),(662,6,6,20,60,11,1500.00),(663,6,6,20,60,71,2.00),(664,6,6,20,60,100,2.00),(665,6,6,20,60,12,1.00),(666,6,6,20,60,85,1.00),(667,7,4,20,75,19,500.00),(668,7,4,20,75,81,400.00),(669,7,4,20,75,107,400.00),(670,7,4,20,75,100,2.00),(671,7,4,20,75,70,1.00),(672,7,4,20,75,31,1.00),(673,7,4,20,75,7,1.00),(674,7,4,20,75,151,30.00),(675,7,4,20,75,12,2.00),(676,8,4,45,15,67,70.00),(677,8,4,45,15,60,2.00),(678,8,4,45,15,62,6.00),(679,8,4,45,15,118,4.00),(680,8,4,45,15,132,4.00),(681,8,4,45,15,148,480.00),(682,9,2,10,20,19,4.00),(683,9,2,10,20,86,100.00),(684,9,2,10,20,40,2.00),(685,9,2,10,20,126,1.00),(686,9,2,10,20,14,1.00),(687,9,2,10,20,90,1.00),(688,10,4,20,20,15,250.00),(689,10,4,20,20,40,50.00),(690,10,4,20,20,86,100.00),(691,10,4,20,20,97,4.00),(692,10,4,20,20,146,250.00),(693,11,4,20,60,44,4.00),(694,11,4,20,60,98,1.00),(695,11,4,20,60,1,1.00),(696,11,4,20,60,37,1.00),(697,11,4,20,60,129,3.00),(698,11,4,20,60,71,6.00),(699,11,4,20,60,49,1.00),(700,11,4,20,60,143,3.00),(701,11,4,20,60,117,2.00),(702,11,4,20,60,33,1.00),(703,11,4,20,60,120,1.00),(704,11,4,20,60,55,3.00),(705,11,4,20,60,25,1.00),(706,11,4,20,60,153,1.00),(707,11,4,20,60,83,15.00),(708,12,4,10,25,64,1.00),(709,12,4,10,25,2,3.00),(710,12,4,10,25,49,1.00),(711,12,4,10,25,45,1.00),(712,12,4,10,25,77,10.00),(713,12,4,10,25,34,1.00),(714,13,6,15,25,35,6.00),(715,13,6,15,25,7,75.00),(716,13,6,15,25,25,1.00),(717,13,6,15,25,2,2.00),(718,13,6,15,25,98,1.00),(719,13,6,15,25,134,450.00),(720,14,4,20,50,38,2.00),(721,14,4,20,50,130,600.00),(722,14,4,20,50,77,50.00),(723,14,4,20,50,98,1.00),(724,14,4,20,50,36,20.00),(725,14,4,20,50,67,50.00),(726,15,6,30,35,123,400.00),(727,15,6,30,35,31,2.00),(728,15,6,30,35,19,5.00),(729,15,6,30,35,38,2.00),(730,15,6,30,35,12,2.00),(731,15,6,30,35,54,3.00),(732,15,6,30,35,75,1.00),(733,15,6,30,35,89,12.00),(734,15,6,30,35,94,10.00),(735,15,6,30,35,119,8.00),(736,15,6,30,35,145,3.00),(737,16,4,10,15,7,10.00),(738,16,4,10,15,66,200.00),(739,16,4,10,15,106,200.00),(740,17,6,40,25,38,1000.00),(741,17,6,40,25,109,100.00),(742,17,6,40,25,50,2.00),(743,17,6,40,25,4,2.00),(744,17,6,40,25,7,100.00),(745,17,6,40,25,58,100.00),(746,18,4,30,60,7,30.00),(747,18,4,30,60,39,50.00),(748,18,4,30,60,52,40.00),(749,18,4,30,60,53,1500.00),(750,18,4,30,60,58,30.00),(751,18,4,30,60,82,20.00),(752,18,4,30,60,79,8.00),(753,19,4,30,40,7,40.00),(754,19,4,30,40,10,1000.00),(755,19,4,30,40,58,40.00),(756,19,4,30,40,82,50.00),(757,19,4,30,40,108,80.00),(758,20,4,25,35,40,25.00),(759,20,4,25,35,51,20.00),(760,20,4,25,35,86,100.00),(761,20,4,25,35,96,1.00),(762,20,4,25,35,131,2000.00),(763,21,4,15,30,88,1.00),(764,21,4,15,30,73,1.00),(765,22,4,5,5,40,40.00),(766,22,4,5,5,136,100.00),(767,22,4,5,5,97,8.00),(768,23,4,25,10,3,2.00),(769,23,4,25,10,27,1.00),(770,23,4,25,10,28,1.00),(771,23,4,25,10,70,1.00),(772,23,4,25,10,115,450.00),(773,23,4,25,10,121,5.00),(774,48,4,10,25,113,2.00),(775,24,4,35,30,19,500.00),(776,24,4,35,30,129,350.00),(777,24,4,35,30,32,4.00),(778,24,4,35,30,47,1.00),(779,24,4,35,30,98,1.00),(780,24,4,35,30,71,2.00),(781,24,4,35,30,93,1.00),(782,25,4,30,30,21,100.00),(783,25,4,30,30,50,2.00),(784,25,4,30,30,70,1.00),(785,25,4,30,30,82,15.00),(786,25,4,30,30,108,50.00),(787,25,4,30,30,110,3.00),(788,25,4,30,30,115,4.00),(789,26,4,5,10,41,25.00),(790,26,4,5,10,116,350.00),(791,26,4,5,10,139,6.00),(792,27,4,15,35,23,150.00),(793,27,4,15,35,139,200.00),(794,27,4,15,35,56,250.00),(795,27,4,15,35,97,2.00),(796,27,4,15,35,111,1.00),(797,28,4,10,25,40,25.00),(798,28,4,10,25,67,50.00),(799,28,4,10,25,86,100.00),(800,28,4,10,25,96,1.00),(801,28,4,10,25,111,1.00),(802,28,4,10,25,79,4.00),(803,29,6,15,30,149,300.00),(804,29,6,15,30,38,500.00),(805,29,6,15,30,92,2.00),(806,29,6,15,30,97,2.00),(807,29,6,15,30,80,2.00),(808,29,6,15,30,40,25.00),(809,29,6,15,30,84,25.00),(810,29,6,15,30,93,1.00),(811,29,6,15,30,74,30.00),(812,29,6,15,30,111,1.00),(813,30,4,35,210,11,1500.00),(814,30,4,35,210,12,500.00),(815,30,4,35,210,19,600.00),(816,30,4,35,210,58,30.00),(817,30,4,35,210,87,3.00),(818,30,4,35,210,71,4.00),(819,30,4,35,210,100,2.00),(820,30,4,35,210,152,175.00),(821,31,4,30,30,19,4.00),(822,31,4,30,30,38,2.00),(823,31,4,30,30,48,300.00),(824,31,4,30,30,133,120.00),(825,31,4,30,30,137,4.00),(826,31,4,30,30,79,2.00),(827,32,4,10,0,6,250.00),(828,32,4,10,0,117,2.00),(829,32,4,10,0,155,5.00),(830,33,4,10,5,15,1.00),(831,33,4,10,5,78,3.00),(832,33,4,10,5,95,2.00),(833,33,4,10,5,147,8.00),(834,33,4,10,5,154,1.00),(835,34,4,10,8,3,4.00),(836,34,4,10,8,29,2.00),(837,34,4,10,8,43,300.00),(838,34,4,10,8,77,4.00),(839,34,4,10,8,114,500.00),(840,35,4,15,10,112,250.00),(841,35,4,15,10,145,200.00),(842,35,4,15,10,92,60.00),(843,35,4,15,10,112,200.00),(844,35,4,15,10,145,2.00),(845,35,4,15,10,126,1.00),(846,35,4,15,10,65,120.00),(847,35,4,15,10,91,1.00),(848,35,4,15,10,77,3.00),(849,35,4,15,10,153,2.00),(850,36,4,15,10,17,50.00),(851,36,4,15,10,77,2.00),(852,36,4,15,10,97,4.00),(853,36,4,15,10,102,2.00),(854,36,4,15,10,104,50.00),(855,36,4,15,10,142,150.00),(856,36,4,15,10,145,5.00),(857,36,4,15,10,103,50.00),(858,37,4,15,15,9,2.00),(859,37,4,15,15,61,300.00),(860,37,4,15,15,125,1.00),(861,37,4,15,15,145,3.00),(862,38,4,5,20,36,25.00),(863,38,4,5,20,23,150.00),(864,38,4,5,20,140,350.00),(865,39,4,15,25,41,40.00),(866,39,4,15,25,86,200.00),(867,39,4,15,25,100,2.00),(868,39,4,15,25,140,250.00),(869,40,4,10,10,42,20.00),(870,40,4,10,10,72,40.00),(871,40,4,10,10,86,250.00),(872,40,4,10,10,97,6.00),(873,40,4,10,10,100,2.00),(874,40,4,10,10,108,40.00),(875,40,4,10,10,140,350.00),(876,41,4,30,20,23,3.00),(877,41,4,30,20,36,25.00),(878,41,4,30,20,41,20.00),(879,41,4,30,20,68,800.00),(880,41,4,30,20,71,3.00),(881,41,4,30,20,140,350.00),(882,42,4,30,90,69,1.00),(883,42,4,30,90,98,1.00),(884,42,4,30,90,110,2.00),(885,42,4,30,90,126,0.50),(886,42,4,30,90,150,1000.00),(887,43,4,15,15,16,1.00),(888,43,4,15,15,18,1.00),(889,43,4,15,15,8,2.00),(890,43,4,15,15,71,2.00),(891,43,4,15,15,76,2.00),(892,43,4,15,15,101,2.00),(893,43,4,15,15,124,100.00),(894,43,4,15,15,137,2.00),(895,43,4,15,15,141,800.00),(896,44,4,15,30,19,500.00),(897,44,4,15,30,150,500.00),(898,44,4,15,30,26,1.00),(899,44,4,15,30,100,2.00),(900,44,4,15,30,70,1.00),(901,44,4,15,30,46,1.00),(902,44,4,15,30,69,1.00),(903,44,4,15,30,135,2.00),(904,44,4,15,30,77,4.00),(905,44,4,15,30,105,12.00),(906,44,4,15,30,13,500.00),(907,45,4,20,25,40,4.00),(908,45,4,20,25,57,2.00),(909,45,4,20,25,60,2.00),(910,45,4,20,25,97,2.00),(911,45,4,20,25,98,1.00),(912,45,4,20,25,111,1.00),(913,45,4,20,25,122,2.00),(914,46,4,30,30,142,400.00),(915,46,4,30,30,148,1.00),(916,46,4,30,30,59,3.00),(917,46,4,30,30,98,1.00),(918,47,4,20,55,129,6.00),(919,47,4,20,55,38,300.00),(920,47,4,20,55,2,300.00),(921,47,4,20,55,100,300.00),(922,47,4,20,55,127,300.00),(923,47,4,20,55,7,50.00),(924,47,4,20,55,71,2.00),(925,48,4,10,25,24,500.00),(926,48,4,10,25,40,25.00),(927,48,4,10,25,86,150.00);
/*!40000 ALTER TABLE `recette2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `test`
--

DROP TABLE IF EXISTS `test`;
/*!50001 DROP VIEW IF EXISTS `test`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `test` (
  `P_id` tinyint NOT NULL,
  `Recettes` tinyint NOT NULL,
  `Regimes` tinyint NOT NULL,
  `I_id` tinyint NOT NULL,
  `Ingredients` tinyint NOT NULL,
  `Qtt` tinyint NOT NULL,
  `Unites` tinyint NOT NULL,
  `Groupes` tinyint NOT NULL,
  `Pers` tinyint NOT NULL,
  `Prepa` tinyint NOT NULL,
  `Cuisson` tinyint NOT NULL,
  `kcal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
  `P_id` tinyint NOT NULL,
  `Recettes` tinyint NOT NULL,
  `Regimes` tinyint NOT NULL,
  `I_id` tinyint NOT NULL,
  `Ingredients` tinyint NOT NULL,
  `Qtt` tinyint NOT NULL,
  `Unites` tinyint NOT NULL,
  `Groupes` tinyint NOT NULL,
  `Pers` tinyint NOT NULL,
  `Prepa` tinyint NOT NULL,
  `Cuisson` tinyint NOT NULL,
  `kcal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `test`
--

/*!50001 DROP TABLE IF EXISTS `test`*/;
/*!50001 DROP VIEW IF EXISTS `test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test` AS select `v_globale`.`P_id` AS `P_id`,`v_globale`.`Recettes` AS `Recettes`,`v_globale`.`Regimes` AS `Regimes`,`v_globale`.`I_id` AS `I_id`,`v_globale`.`Ingredients` AS `Ingredients`,`v_globale`.`Qtt` AS `Qtt`,`v_globale`.`Unites` AS `Unites`,`v_globale`.`Groupes` AS `Groupes`,`v_globale`.`Pers` AS `Pers`,`v_globale`.`Prepa` AS `Prepa`,`v_globale`.`Cuisson` AS `Cuisson`,`v_globale`.`kcal` AS `kcal` from `v_globale` where ((`v_globale`.`P_id` = 36) or (`v_globale`.`P_id` = 37)) order by `v_globale`.`P_id`,`v_globale`.`Ingredients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_globale`
--

/*!50001 DROP TABLE IF EXISTS `v_globale`*/;
/*!50001 DROP VIEW IF EXISTS `v_globale`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_globale` AS select `nomdeplat`.`id` AS `P_id`,`nomdeplat`.`nom_du_plat` AS `Recettes`,`nomdeplat`.`regime` AS `Regimes`,`ingredient`.`id` AS `I_id`,`ingredient`.`I_nom` AS `Ingredients`,`recette`.`R_ingr_qtt` AS `Qtt`,`ingredient`.`I_unite` AS `Unites`,`ingredient`.`I_groupe` AS `Groupes`,`recette`.`R_nbr_pers` AS `Pers`,`recette`.`R_tps_prepa` AS `Prepa`,`recette`.`R_tps_cuisson` AS `Cuisson`,`ingredient`.`I_kcal` AS `kcal` from ((`nomdeplat` join `ingredient`) join `recette`) where ((`ingredient`.`id` = `recette`.`I_id`) and (`nomdeplat`.`id` = `recette`.`P_id`)) */;
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

-- Dump completed on 2018-07-17 17:03:18
