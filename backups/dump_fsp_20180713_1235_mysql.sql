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
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredient` (
  `I_id` int(11) NOT NULL AUTO_INCREMENT,
  `I_nom` varchar(250) DEFAULT NULL,
  `I_unite` varchar(25) DEFAULT NULL,
  `I_groupe` varchar(100) DEFAULT NULL,
  `I_kcal` int(11) DEFAULT NULL,
  PRIMARY KEY (`I_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,'aubergine',NULL,NULL,NULL),(2,'aubergines',NULL,NULL,NULL),(3,'avocats',NULL,NULL,NULL),(4,'basilic','cs',NULL,NULL),(5,'blette','g',NULL,NULL),(6,'betteraves cuites','g',NULL,NULL),(7,'beurre','noix',NULL,NULL),(8,'blanc de poulet',NULL,NULL,NULL),(9,'blancs de poulet',NULL,NULL,NULL),(10,'blettes','g',NULL,NULL),(11,'boeuf','kg',NULL,NULL),(12,'bouillon de boeuf','cube',NULL,NULL),(13,'bouillon de veau','ml',NULL,NULL),(14,'bouillon de volaille',NULL,NULL,NULL),(15,'brocoli','g',NULL,NULL),(16,'brocoli chinois',NULL,NULL,NULL),(17,'capres','g',NULL,NULL),(18,'carotte',NULL,NULL,NULL),(19,'carottes',NULL,NULL,NULL),(20,'chair a saucisse','g',NULL,NULL),(21,'champignon','g',NULL,NULL),(22,'champignons de Paris','g',NULL,NULL),(23,'chevre frais','g',NULL,NULL),(24,'choucroute cuite','g',NULL,NULL),(25,'citron',NULL,NULL,NULL),(26,'citron confit',NULL,NULL,NULL),(27,'citron jaune',NULL,NULL,NULL),(28,'citron vert',NULL,NULL,NULL),(29,'citrons',NULL,NULL,NULL),(30,'collier d\'agneau','tranche',NULL,NULL),(31,'concentre de tomates','boite',NULL,NULL),(32,'confits de canard',NULL,NULL,NULL),(33,'coriandre','cc',NULL,NULL),(34,'cote de boeuf','kg',NULL,NULL),(35,'cotes de veau',NULL,NULL,NULL),(36,'coulis de tomates','cl',NULL,NULL),(37,'courgette',NULL,NULL,NULL),(38,'courgettes',NULL,NULL,NULL),(39,'creme','g',NULL,NULL),(40,'creme fraiche','cs',NULL,NULL),(41,'creme liquide','cl',NULL,NULL),(42,'creme semi epaisse','cl',NULL,NULL),(43,'crevettes decortiquees','g',NULL,NULL),(44,'cuisses de poulet',NULL,NULL,NULL),(45,'cumin','cc',NULL,NULL),(46,'curcuma','cc',NULL,NULL),(47,'curry','cs',NULL,NULL),(48,'eau','ml',NULL,NULL),(49,'echalote',NULL,NULL,NULL),(50,'echalotes','cs',NULL,NULL),(51,'emmental','g',NULL,NULL),(52,'emmental rape','g',NULL,NULL),(53,'endives','g',NULL,NULL),(54,'epice a couscous','cs',NULL,NULL),(55,'epices a colombo','cs',NULL,NULL),(56,'epinards','g',NULL,NULL),(57,'escalopes de poulet',NULL,NULL,NULL),(58,'farine','g',NULL,NULL),(59,'fenouil',NULL,NULL,NULL),(60,'fenouils',NULL,NULL,NULL),(61,'feta','g',NULL,NULL),(62,'feuilles de lasagne',NULL,NULL,NULL),(63,'filets de poulet',NULL,NULL,NULL),(64,'fleur de sel','cs',NULL,NULL),(65,'fromage aux fines herbes','g',NULL,NULL),(66,'fromage de chevre','g',NULL,NULL),(67,'fromage rape','g',NULL,NULL),(68,'gambas','g',NULL,NULL),(69,'gingembre','cc',NULL,NULL),(70,'gousse d\'ail',NULL,NULL,NULL),(71,'gousses d\'ail',NULL,NULL,NULL),(72,'grana padano','g',NULL,NULL),(73,'gros fenouil',NULL,NULL,NULL),(74,'gruyere rape','g',NULL,NULL),(75,'harissa','cc',NULL,NULL),(76,'huile d\'arachide','cs',NULL,NULL),(77,'huile d\'olive','cs',NULL,NULL),(78,'huile de noix','cs',NULL,NULL),(79,'jambon','tranche',NULL,NULL),(80,'jaunes d\'oeuf',NULL,NULL,NULL),(81,'joues de boeuf','g',NULL,NULL),(82,'lait','cl',NULL,NULL),(83,'lait de coco','cl',NULL,NULL),(84,'lait ecreme','cl',NULL,NULL),(85,'lard','tranche',NULL,NULL),(86,'lardons','g',NULL,NULL),(87,'laurier','feuilles',NULL,NULL),(88,'loup frais','kg',NULL,NULL),(89,'merguez',NULL,NULL,NULL),(90,'miel','cc',NULL,NULL),(91,'moutarde','cc',NULL,NULL),(92,'mozzarella','boules',NULL,NULL),(93,'muscade','cc',NULL,NULL),(94,'navets',NULL,NULL,NULL),(95,'noisettes','cs',NULL,NULL),(96,'oeuf',NULL,NULL,NULL),(97,'oeufs',NULL,NULL,NULL),(98,'oignon',NULL,NULL,NULL),(99,'oignon rouge',NULL,NULL,NULL),(100,'oignons',NULL,NULL,NULL),(101,'oignons nouveaux',NULL,NULL,NULL),(102,'oignons rouges',NULL,NULL,NULL),(103,'olives','g',NULL,NULL),(104,'olives noires','g',NULL,NULL),(105,'olives vertes',NULL,NULL,NULL),(106,'pain','g',NULL,NULL),(107,'paleron de boeuf','g',NULL,NULL),(108,'parmesan','g',NULL,NULL),(109,'parmesan rape','g',NULL,NULL),(110,'patates douces',NULL,NULL,NULL),(111,'pate feuilletee',NULL,NULL,NULL),(112,'pates','g',NULL,NULL),(113,'pates feuilletees',NULL,NULL,NULL),(114,'pates fusilli','g',NULL,NULL),(115,'paves de cabillaud','g',NULL,NULL),(116,'penne rigate','g',NULL,NULL),(117,'persil','cs',NULL,NULL),(118,'pesto','cs',NULL,NULL),(119,'pilons de poulet',NULL,NULL,NULL),(120,'piment de cayenne','cs',NULL,NULL),(121,'piment doux','pincees',NULL,NULL),(122,'poireaux',NULL,NULL,NULL),(123,'pois chiches','g',NULL,NULL),(124,'pois gourmands','g',NULL,NULL),(125,'poivron jaune',NULL,NULL,NULL),(126,'poivron rouge',NULL,NULL,NULL),(127,'poivrons','g',NULL,NULL),(128,'pomme de terre','g',NULL,NULL),(129,'pommes de terre','g',NULL,NULL),(130,'porc','g',NULL,NULL),(131,'potimarron','g',NULL,NULL),(132,'ricotta','cs',NULL,NULL),(133,'riz a risotto','g',NULL,NULL),(134,'riz long','g',NULL,NULL),(135,'safran','pincee',NULL,NULL),(136,'salicorne','g',NULL,NULL),(137,'sauce soja','cs',NULL,NULL),(138,'sauce teriyaki','cs',NULL,NULL),(139,'saumon fume','tranches',NULL,NULL),(140,'spaghetti','g',NULL,NULL),(141,'tagliatelles','g',NULL,NULL),(142,'thon','g',NULL,NULL),(143,'thym','brins',NULL,NULL),(144,'tomate',NULL,NULL,NULL),(145,'tomates',NULL,NULL,NULL),(146,'tomates cerises','g',NULL,NULL),(147,'tomates confites',NULL,NULL,NULL),(148,'tomates pelees','g',NULL,NULL),(149,'truites fumee','g',NULL,NULL),(150,'veau','g',NULL,NULL),(151,'vin','cl',NULL,NULL),(152,'vin rouge','ml',NULL,NULL),(153,'vinaigre','cs',NULL,NULL),(154,'vinaigre de cidre','cs',NULL,NULL),(155,'vinaigrette','g',NULL,NULL),(156,'Worcestershire sauce','cs',NULL,NULL);
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NomDePlat`
--

DROP TABLE IF EXISTS `NomDePlat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NomDePlat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_du_plat` varchar(250) DEFAULT NULL,
  `regime` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NomDePlat`
--

LOCK TABLES `NomDePlat` WRITE;
/*!40000 ALTER TABLE `NomDePlat` DISABLE KEYS */;
INSERT INTO `NomDePlat` VALUES (1,'agneau a l\'anglaise','G,S,Se,P'),(2,'aiguillettes de poulet aux legumes','O,L'),(3,'aubergines farcies aux legumes','L'),(4,'baked potatoes au four','L,V'),(5,'boeuf bourgignon',NULL),(6,'boeuf braise aux carottes',NULL),(7,'boeuf carottes',NULL),(8,'canelloni au fenouil','L,G'),(9,'carottes au curry et aux petites lardons','L'),(10,'clafouti brocoli et tomates cerises','L,O'),(11,'colombo de poulet',NULL),(12,'cotes de boeuf et aubergines grillees',NULL),(13,'cotes de veau au riz et aux aubergines','G'),(14,'courgettes farcies','L'),(15,'couscous poulet merguez',NULL),(16,'crottins chauds','G,L'),(17,'crumble aux courgettes','L,G'),(18,'Endives au jambon','L,G'),(19,'gratin de blettes a la provencale','L,G,V'),(20,'gratin de potimarron','L,O'),(21,'loup au fenouil','P'),(22,'omelette a la salicorne','O,L'),(23,'papillotte de poisson a l\'avocat','P'),(24,'parmentier de canard a la puree de carottes',NULL),(25,'parmentier de patate douce au poisson','L,P'),(26,'penne rigate au saumon','L,G,P'),(27,'quiche aux epinards chevre et saumon','G,L,P'),(28,'quiche lorraine','G,L,O'),(29,'quiche truite fumee aux courgettes et mozarella','G,L,O,P'),(30,'ragout boeuf carottes','G'),(31,'risotto aux legume et jambon','S,G'),(32,'salade de betteraves','V'),(33,'salade de brocolis aux tomates cerises','V,F'),(34,'salade de fusili crevette et avocat','G,M'),(35,'salade de pates tomates et mozzarella','V,G,L'),(36,'salade tomate thon basilique','O,P'),(37,'salade tomates feta poivrons','L'),(38,'spaghetti au chevre','G,L,V'),(39,'spaghetti aux blettes','G,L'),(40,'spaghetti carbonara','L,G,O'),(41,'spaghettis aux gambas','L,M,G'),(42,'tagine de veau a la patate douce',NULL),(43,'tagliatelles au poulet','G,A,S'),(44,'tajine de veau aux carottes',NULL),(45,'tarte au poulet fenouil et poireau','G,O,L'),(46,'thon au fenouil et aux tomates','P'),(47,'tian aux legumes','V,L'),(48,'tourte a la choucroute','L,G'),(49,'patates garnies au thon au four',NULL);
/*!40000 ALTER TABLE `NomDePlat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recette`
--

DROP TABLE IF EXISTS `Recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recette` (
  `R_id` int(11) NOT NULL AUTO_INCREMENT,
  `P_id` int(11) DEFAULT NULL,
  `R_nbr_pers` int(11) DEFAULT NULL,
  `R_tps_prepa` int(11) DEFAULT NULL,
  `R_tps_cuisson` int(11) DEFAULT NULL,
  `R_ingr` varchar(50) DEFAULT NULL,
  `R_ingr_qtt` decimal(10,2) DEFAULT NULL,
  `R_ingr_unite` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`R_id`),
  KEY `P_id` (`P_id`),
  CONSTRAINT `Recette_ibfk_1` FOREIGN KEY (`P_id`) REFERENCES `NomDePlat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recette`
--

LOCK TABLES `Recette` WRITE;
/*!40000 ALTER TABLE `Recette` DISABLE KEYS */;
INSERT INTO `Recette` VALUES (1,1,4,35,50,'Worcestershire sauce',6.00,'cs'),(2,1,4,35,50,'thym',2.00,'brins'),(3,1,4,35,50,'champignons de Paris',200.00,'g'),(4,1,4,35,50,'farine',20.00,'g'),(5,1,4,35,50,'huile d\'olive',3.00,'cs'),(6,1,4,35,50,'oignons',3.00,NULL),(7,1,4,35,50,'pomme de terre',1000.00,'g'),(8,1,4,35,50,'sauce teriyaki',1.00,'cs'),(9,1,4,35,50,'collier d\'agneau',4.00,'tranche'),(10,2,4,30,30,'filets de poulet',4.00,NULL),(11,2,4,30,30,'courgettes',2.00,NULL),(12,2,4,30,30,'carottes',3.00,NULL),(13,2,4,30,30,'oignon rouge',1.00,NULL),(14,3,2,15,40,'aubergines',1.00,NULL),(15,3,2,15,40,'oignons',2.00,NULL),(16,3,2,15,40,'tomate',1.00,NULL),(17,3,2,15,40,'oeuf',1.00,NULL),(18,3,2,15,40,'chair a saucisse',100.00,'g'),(19,3,2,15,40,'gruyere rape',25.00,'g'),(20,4,4,10,60,'fromage rape',100.00,'g'),(21,4,4,10,60,'pomme de terre',4.00,NULL),(22,5,4,15,100,'boeuf',1.00,'kg'),(23,5,4,15,100,'carottes',3.00,NULL),(24,5,4,15,100,'vin rouge',200.00,'ml'),(25,5,4,15,100,'pommes de terre',500.00,'g'),(26,6,6,20,60,'concentre de tomates',1.00,'boite'),(27,6,6,20,60,'carottes',6.00,NULL),(28,6,6,20,60,'boeuf',1500.00,'g'),(29,6,6,20,60,'gousses d\'ail',2.00,NULL),(30,6,6,20,60,'oignons',2.00,NULL),(31,6,6,20,60,'bouillon de boeuf',1.00,'cube'),(32,6,6,20,60,'lard',1.00,'tranche'),(33,7,4,20,75,'carottes',500.00,'g'),(34,7,4,20,75,'joues de boeuf',400.00,'g'),(35,7,4,20,75,'paleron de boeuf',400.00,'g'),(36,7,4,20,75,'oignons',2.00,NULL),(37,7,4,20,75,'gousse d\'ail',1.00,NULL),(38,7,4,20,75,'concentre de tomates',1.00,'cs'),(39,7,4,20,75,'beurre',1.00,'noix'),(40,7,4,20,75,'vin',30.00,'cl'),(41,7,4,20,75,'bouillon de boeuf',2.00,'cube'),(42,8,4,45,15,'fromage rape',70.00,'g'),(43,8,4,45,15,'fenouils',2.00,NULL),(44,8,4,45,15,'feuilles de lasagne',6.00,NULL),(45,8,4,45,15,'pesto',4.00,'cs'),(46,8,4,45,15,'ricotta',4.00,'cs'),(47,8,4,45,15,'tomates pelees',480.00,'g'),(48,9,2,10,20,'carottes',4.00,NULL),(49,9,2,10,20,'lardons',100.00,'g'),(50,9,2,10,20,'creme fraiche',2.00,'cs'),(51,9,2,10,20,'poivron rouge',1.00,NULL),(52,9,2,10,20,'bouillon de volaille',1.00,NULL),(53,9,2,10,20,'miel',1.00,'cc'),(54,10,4,20,20,'brocoli',250.00,'g'),(55,10,4,20,20,'creme fraiche',50.00,'cl'),(56,10,4,20,20,'lardons',100.00,'g'),(57,10,4,20,20,'oeufs',4.00,NULL),(58,10,4,20,20,'tomates cerises',250.00,'g'),(59,11,4,20,60,'cuisses de poulet',4.00,NULL),(60,11,4,20,60,'oignon',1.00,NULL),(61,11,4,20,60,'aubergine',1.00,NULL),(62,11,4,20,60,'courgette',1.00,NULL),(63,11,4,20,60,'pommes de terre',3.00,NULL),(64,11,4,20,60,'gousses d\'ail',6.00,NULL),(65,11,4,20,60,'echalote',1.00,NULL),(66,11,4,20,60,'thym',3.00,'cs'),(67,11,4,20,60,'persil',2.00,'cs'),(68,11,4,20,60,'coriandre',1.00,'cc'),(69,11,4,20,60,'piment de cayenne',1.00,'cs'),(70,11,4,20,60,'epices a colombo',3.00,'cs'),(71,11,4,20,60,'citron',1.00,NULL),(72,11,4,20,60,'vinaigre',1.00,'cs'),(73,11,4,20,60,'lait de coco',15.00,'cl'),(74,12,4,10,25,'fleur de sel',1.00,'cs'),(75,12,4,10,25,'aubergines',3.00,NULL),(76,12,4,10,25,'echalote',1.00,NULL),(77,12,4,10,25,'cumin',1.00,'cc'),(78,12,4,10,25,'huile d\'olive',10.00,'cl'),(79,12,4,10,25,'cote de boeuf',1.00,'kg'),(80,13,6,15,25,'cotes de veau',6.00,NULL),(81,13,6,15,25,'beurre',75.00,'g'),(82,13,6,15,25,'citron',1.00,NULL),(83,13,6,15,25,'aubergines',2.00,NULL),(84,13,6,15,25,'oignon',1.00,NULL),(85,13,6,15,25,'riz long',450.00,'g'),(87,14,4,20,50,'courgettes',2.00,NULL),(88,14,4,20,50,'porc',600.00,'g'),(89,14,4,20,50,'huile d\'olive',50.00,'g'),(90,14,4,20,50,'oignon',1.00,NULL),(91,14,4,20,50,'coulis de tomates',20.00,'cl'),(92,14,4,20,50,'fromage rape',50.00,'g'),(93,15,6,30,35,'pois chiches',400.00,'g'),(94,15,6,30,35,'concentre de tomates',2.00,'boite'),(95,15,6,30,35,'carottes',5.00,NULL),(96,15,6,30,35,'courgettes',2.00,NULL),(97,15,6,30,35,'bouillon de boeuf',2.00,'cube'),(98,15,6,30,35,'epice a couscous',3.00,'cs'),(99,15,6,30,35,'harissa',1.00,'cc'),(100,15,6,30,35,'merguez',12.00,NULL),(101,15,6,30,35,'navets',10.00,NULL),(102,15,6,30,35,'pilons de poulet',8.00,NULL),(103,15,6,30,35,'tomates',3.00,NULL),(104,16,4,10,15,'beurre',10.00,'g'),(105,16,4,10,15,'fromage de chevre',200.00,'g'),(106,16,4,10,15,'pain',200.00,'g'),(107,17,6,40,25,'courgettes',1000.00,'g'),(108,17,6,40,25,'parmesan rape',100.00,'g'),(109,17,6,40,25,'echalotes',2.00,'cs'),(110,17,6,40,25,'basilic',2.00,'cs'),(111,17,6,40,25,'beurre',100.00,'g'),(112,17,6,40,25,'farine',100.00,'g'),(113,18,4,30,60,'beurre',30.00,'g'),(114,18,4,30,60,'creme',50.00,'g'),(115,18,4,30,60,'emmental rape',40.00,'g'),(116,18,4,30,60,'endives',1500.00,'g'),(117,18,4,30,60,'farine',30.00,'g'),(118,18,4,30,60,'lait',20.00,'cl'),(119,18,4,30,60,'jambon',8.00,'tranche'),(120,19,4,30,40,'beurre',40.00,'g'),(121,19,4,30,40,'blettes',1000.00,'g'),(122,19,4,30,40,'farine',40.00,'g'),(123,19,4,30,40,'lait',50.00,'cl'),(124,19,4,30,40,'parmesan',80.00,'g'),(125,20,4,25,35,'creme fraiche',25.00,'cl'),(126,20,4,25,35,'emmental',20.00,'g'),(127,20,4,25,35,'lardons',100.00,'g'),(128,20,4,25,35,'oeuf',1.00,NULL),(129,20,4,25,35,'potimarron',2000.00,'g'),(130,21,4,15,30,'loup frais',1.00,'kg'),(131,21,4,15,30,'gros fenouil',1.00,NULL),(132,22,4,5,5,'creme fraiche',40.00,'cl'),(133,22,4,5,5,'salicorne',100.00,'g'),(134,22,4,5,5,'oeufs',8.00,NULL),(135,23,4,25,10,'avocats',2.00,NULL),(136,23,4,25,10,'citron jaune',1.00,NULL),(137,23,4,25,10,'citron vert',1.00,NULL),(138,23,4,25,10,'gousse d\'ail',1.00,NULL),(139,23,4,25,10,'paves de cabillaud',450.00,'g'),(140,23,4,25,10,'piment doux',5.00,'pincees'),(141,23,4,25,10,'avocats',2.00,NULL),(142,23,4,25,10,'citron jaune',1.00,NULL),(143,23,4,25,10,'citron vert',1.00,NULL),(144,23,4,25,10,'gousse d\'ail',1.00,NULL),(145,48,4,10,25,'pates feuilletees',2.00,NULL),(146,23,4,25,10,'piment doux',5.00,'pincees'),(147,24,4,35,30,'carottes',500.00,'g'),(148,24,4,35,30,'pommes de terre',350.00,'g'),(149,24,4,35,30,'confits de canard',4.00,NULL),(150,24,4,35,30,'curry',1.00,'cs'),(151,24,4,35,30,'oignon',1.00,NULL),(152,24,4,35,30,'gousses d\'ail',2.00,NULL),(153,24,4,35,30,'muscade',1.00,'cc'),(154,25,4,30,30,'champignon',100.00,'g'),(155,25,4,30,30,'echalotes',2.00,NULL),(156,25,4,30,30,'gousse d\'ail',1.00,NULL),(157,25,4,30,30,'lait',15.00,'cl'),(158,25,4,30,30,'parmesan',50.00,'g'),(159,25,4,30,30,'patates douces',3.00,NULL),(161,25,4,30,30,'paves de cabillaud',4.00,NULL),(162,26,4,5,10,'creme liquide',25.00,'cl'),(163,26,4,5,10,'penne rigate',350.00,'g'),(164,26,4,5,10,'saumon fume',6.00,'tranches'),(165,27,4,15,35,'chevre frais',150.00,'g'),(166,27,4,15,35,'saumon fume',200.00,'g'),(167,27,4,15,35,'epinards',250.00,'g'),(168,27,4,15,35,'oeufs',2.00,NULL),(169,27,4,15,35,'pate feuilletee',1.00,NULL),(170,28,4,10,25,'creme fraiche',25.00,'cl'),(171,28,4,10,25,'fromage rape',50.00,'g'),(172,28,4,10,25,'lardons',100.00,'g'),(173,28,4,10,25,'oeuf',1.00,NULL),(174,28,4,10,25,'pate feuilletee',1.00,NULL),(175,28,4,10,25,'jambon',4.00,'tranches'),(177,29,6,15,30,'truites fumee',300.00,'g'),(178,29,6,15,30,'courgettes',500.00,'g'),(179,29,6,15,30,'mozzarella',2.00,'boules'),(180,29,6,15,30,'oeufs',2.00,NULL),(181,29,6,15,30,'jaunes d\'oeuf',2.00,NULL),(182,29,6,15,30,'creme fraiche',25.00,'cl'),(183,29,6,15,30,'lait ecreme',25.00,'cl'),(184,29,6,15,30,'muscade',1.00,'pincee'),(185,29,6,15,30,'gruyere rape',30.00,'g'),(186,29,6,15,30,'pate feuilletee',1.00,NULL),(187,30,4,35,210,'boeuf',1500.00,'g'),(188,30,4,35,210,'bouillon de boeuf',500.00,'ml'),(189,30,4,35,210,'carottes',600.00,'g'),(190,30,4,35,210,'farine',30.00,'g'),(191,30,4,35,210,'laurier',3.00,'feuilles'),(192,30,4,35,210,'gousses d\'ail',4.00,NULL),(193,30,4,35,210,'oignons',2.00,NULL),(194,30,4,35,210,'vin rouge',175.00,'ml'),(195,31,4,30,30,'carottes',4.00,NULL),(196,31,4,30,30,'courgettes',2.00,NULL),(197,31,4,30,30,'eau',300.00,'ml'),(198,31,4,30,30,'riz a risotto',120.00,'g'),(199,31,4,30,30,'sauce soja',4.00,'cs'),(200,31,4,30,30,'jambon',2.00,'tranches'),(201,32,4,10,0,'betteraves cuites',250.00,'g'),(202,32,4,10,0,'persil',2.00,'g'),(203,32,4,10,0,'vinaigrette',5.00,'g'),(204,33,4,10,5,'brocoli',1.00,NULL),(205,33,4,10,5,'huile de noix',3.00,'cs'),(206,33,4,10,5,'noisettes',2.00,'cs'),(207,33,4,10,5,'tomates confites',8.00,NULL),(208,33,4,10,5,'vinaigre de cidre',1.00,'cs'),(209,33,4,10,5,'brocoli',1.00,NULL),(210,33,4,10,5,'tomates confites',8.00,NULL),(211,33,4,10,5,'noisettes',2.00,'cs'),(212,33,4,10,5,'vinaigre de cidre',1.00,'cs'),(213,33,4,10,5,'huile de noix',3.00,'cs'),(214,34,4,10,8,'avocats',4.00,NULL),(215,34,4,10,8,'citrons',2.00,NULL),(216,34,4,10,8,'crevettes decortiquees',300.00,'g'),(217,34,4,10,8,'huile d\'olive',4.00,'cs'),(218,34,4,10,8,'pates fusilli',500.00,'g'),(219,35,4,15,10,'pates',250.00,'g'),(220,35,4,15,10,'tomates',200.00,'g'),(221,35,4,15,10,'mozzarella',60.00,'g'),(222,35,4,15,10,'pates',200.00,'g'),(223,35,4,15,10,'tomates',2.00,NULL),(224,35,4,15,10,'poivron rouge',1.00,NULL),(225,35,4,15,10,'fromage aux fines herbes',120.00,'g'),(226,35,4,15,10,'moutarde',1.00,'cc'),(227,35,4,15,10,'huile d\'olive',3.00,'cs'),(228,35,4,15,10,'vinaigre',2.00,'cs'),(229,36,4,15,10,'capres',50.00,'g'),(230,36,4,15,10,'huile d\'olive',2.00,'cs'),(231,36,4,15,10,'oeufs',4.00,NULL),(232,36,4,15,10,'oignons rouges',2.00,NULL),(233,36,4,15,10,'olives noires',50.00,'g'),(234,36,4,15,10,'thon',150.00,'g'),(235,36,4,15,10,'tomates',5.00,NULL),(236,36,4,15,10,'thon',150.00,'g'),(237,36,4,15,10,'oignons rouges',2.00,NULL),(238,36,4,15,10,'capres',50.00,'g'),(239,36,4,15,10,'tomates',5.00,NULL),(240,36,4,15,10,'huile d\'olive',2.00,'cs'),(241,36,4,15,10,'oeufs',4.00,NULL),(242,36,4,15,10,'olives',50.00,'g'),(243,37,4,15,15,'blancs de poulet',2.00,NULL),(244,37,4,15,15,'feta',300.00,'g'),(245,37,4,15,15,'poivron jaune',1.00,NULL),(246,37,4,15,15,'tomates',3.00,NULL),(247,37,4,15,15,'blancs de poulet',2.00,NULL),(248,37,4,15,15,'tomates',3.00,NULL),(249,37,4,15,15,'feta',300.00,'g'),(250,37,4,15,15,'poivron jaune',1.00,NULL),(251,38,4,5,20,'coulis de tomates',25.00,'cl'),(252,38,4,5,20,'chevre frais',150.00,'g'),(253,38,4,5,20,'spaghetti',350.00,'g'),(254,39,4,15,25,'bette',100.00,'g'),(255,39,4,15,25,'creme liquide',40.00,'cl'),(256,39,4,15,25,'lardons',200.00,'g'),(257,39,4,15,25,'oignons',2.00,NULL),(258,39,4,15,25,'spaghetti',250.00,'g'),(259,40,4,10,10,'creme semi epaisse',20.00,'cl'),(260,40,4,10,10,'grana padano',40.00,'g'),(261,40,4,10,10,'lardons',250.00,'g'),(262,40,4,10,10,'oeufs',6.00,NULL),(263,40,4,10,10,'oignons',2.00,NULL),(264,40,4,10,10,'parmesan',40.00,'g'),(265,40,4,10,10,'spaghetti',350.00,'g'),(266,41,4,30,20,'chevre frais',3.00,NULL),(267,41,4,30,20,'coulis de tomates',25.00,'cl'),(268,41,4,30,20,'creme liquide',20.00,'cl'),(269,41,4,30,20,'gambas',800.00,'g'),(270,41,4,30,20,'gousses d\'ail',3.00,NULL),(271,41,4,30,20,'spaghetti',350.00,'g'),(272,42,4,30,90,'gingembre',1.00,'cc'),(273,42,4,30,90,'oignon',1.00,NULL),(274,42,4,30,90,'patates douces',2.00,NULL),(275,42,4,30,90,'poivron rouge',0.50,NULL),(276,42,4,30,90,'veau',1000.00,'g'),(277,43,4,15,15,'brocoli chinois',1.00,NULL),(278,43,4,15,15,'carotte',1.00,NULL),(279,43,4,15,15,'blanc de poulet',2.00,NULL),(280,43,4,15,15,'gousses d\'ail',2.00,NULL),(281,43,4,15,15,'huile d\'arachide',2.00,'cs'),(282,43,4,15,15,'oignons nouveaux',2.00,NULL),(283,43,4,15,15,'pois gourmands',100.00,'g'),(284,43,4,15,15,'sauce soja',2.00,'cs'),(285,43,4,15,15,'tagliatelles',800.00,'g'),(287,44,4,15,30,'carottes',500.00,'g'),(288,44,4,15,30,'veau',500.00,'g'),(289,44,4,15,30,'citron confit',1.00,NULL),(290,44,4,15,30,'oignons',2.00,NULL),(291,44,4,15,30,'gousse d\'ail',1.00,NULL),(292,44,4,15,30,'curcuma',1.00,'cc'),(293,44,4,15,30,'gingembre',1.00,'cc'),(294,44,4,15,30,'safran',2.00,'pincee'),(295,44,4,15,30,'huile d\'olive',4.00,'cs'),(296,44,4,15,30,'olives vertes',12.00,NULL),(297,44,4,15,30,'bouillon de veau',500.00,'ml'),(298,45,4,20,25,'creme fraiche',4.00,'cs'),(299,45,4,20,25,'escalopes de poulet',2.00,NULL),(300,45,4,20,25,'fenouils',2.00,NULL),(301,45,4,20,25,'oeufs',2.00,NULL),(302,45,4,20,25,'oignon',1.00,NULL),(303,45,4,20,25,'pate feuilletee',1.00,NULL),(304,45,4,20,25,'poireaux',2.00,NULL),(305,46,4,30,30,'thon',400.00,'g'),(306,46,4,30,30,'tomates pelees',1.00,'boite'),(307,46,4,30,30,'fenouil',3.00,NULL),(308,46,4,30,30,'oignon',1.00,NULL),(309,46,4,30,30,'thon',400.00,'g'),(311,47,4,20,55,'pommes de terre',6.00,NULL),(312,47,4,20,55,'courgettes',300.00,'g'),(313,47,4,20,55,'aubergines',300.00,'g'),(314,47,4,20,55,'oignons',300.00,'g'),(315,47,4,20,55,'poivrons',300.00,'g'),(316,47,4,20,55,'beurre',50.00,'g'),(317,47,4,20,55,'gousses d\'ail',2.00,NULL),(318,48,4,10,25,'choucroute cuite',500.00,'g'),(319,48,4,10,25,'creme fraiche',25.00,'cl'),(320,48,4,10,25,'lardons',150.00,'g');
/*!40000 ALTER TABLE `Recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Regime_memo`
--

DROP TABLE IF EXISTS `Regime_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Regime_memo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Regime_memo`
--

LOCK TABLES `Regime_memo` WRITE;
/*!40000 ALTER TABLE `Regime_memo` DISABLE KEYS */;
INSERT INTO `Regime_memo` VALUES (1,'contient du gluten','G'),(2,'contient des produits laitiers','L'),(3,'convient aux végétariens','V'),(4,'contient des crustacés','C'),(5,'contient des arachides','A'),(6,'contient du soja','S'),(7,'contient des fruits à coques','F'),(8,'contient de la moutarde','M'),(9,'contient de l\'oeuf','O'),(10,'contient du sésame','Se');
/*!40000 ALTER TABLE `Regime_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Utilisateur`
--

DROP TABLE IF EXISTS `Utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Utilisateur` (
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
-- Dumping data for table `Utilisateur`
--

LOCK TABLES `Utilisateur` WRITE;
/*!40000 ALTER TABLE `Utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `Utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `newIngr`
--

DROP TABLE IF EXISTS `newIngr`;
/*!50001 DROP VIEW IF EXISTS `newIngr`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `newIngr` (
  `R_ingr` tinyint NOT NULL,
  `R_ingr_unite` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `newIngr`
--

/*!50001 DROP TABLE IF EXISTS `newIngr`*/;
/*!50001 DROP VIEW IF EXISTS `newIngr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `newIngr` AS select `Recette`.`R_ingr` AS `R_ingr`,`Recette`.`R_ingr_unite` AS `R_ingr_unite` from `Recette` group by `Recette`.`R_ingr` */;
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

-- Dump completed on 2018-07-13 12:35:24
