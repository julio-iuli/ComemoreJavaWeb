-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: comemore
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `idcidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bairro_cidade1_idx` (`idcidade`),
  CONSTRAINT `fk_tb_bairro_tb_cidade1` FOREIGN KEY (`idcidade`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Guamá',1),(2,'Pedreira',1),(3,'Marambaia',1),(4,'Tapanã',1),(5,'Marco',1),(6,'Jurunas',1),(7,'Montese',1),(8,'Coqueiro',1),(9,'Sacramenta',1),(10,'Telégrafo',1),(11,'Rubem Berta',11),(12,'Sarandi',11),(13,'Restinga',11),(14,'Lomba de Pinheiro',11),(15,'Partenon',11),(16,'Santa Teresa',11),(17,'Centro Histórico',11),(18,'Petrópolis',11),(19,'Vila nova',11),(20,'Jardim Itu-sabará',11),(21,'1º de Setembro',26),(22,'Aberta Morros',26),(23,'Abranches',26),(24,'Água Branca',26),(25,'Boa Vista',26),(26,'Barreirinha',26),(27,'Cerqueira Cezar',26),(28,'Jabaquara',26),(29,'Ibirapuera',26),(30,'Thomaz Coelho',26),(31,'25 de Agosto',31),(32,'300',31),(33,'Bangu',31),(34,'Belford Roxo',31),(35,'Botafogo',31),(36,'Flamengo',31),(37,'Consolação',31),(38,'Gávea',31),(39,'Recreio dos Banderantes',31),(40,'Bom Sucesso',31),(41,'Pimentas',45),(42,'Sucesso',45),(43,'Taboão',45),(44,'Presidente Dutra',45),(45,'Bananal',45),(46,'Macedo',45),(47,'Cocaia',45),(48,'Itapegica',45),(49,'Vila Barros',45),(50,'Grampola',45),(51,'Mondubim',51),(52,'Barra de Ceará',51),(53,'Vila Velha',51),(54,'Granja Lisboa',51),(55,'Passaré',51),(56,'Jangurussu',51),(57,'Quintino Cunha',51),(58,'Vicente Pinzon',51),(59,'Pici(parque Univesitário)',51),(60,'Aldeota',51),(61,'Sagrada Família',61),(62,'Buritis',61),(63,'Padre Eustáquio',61),(64,'Lindéia',61),(65,'Santa Mônica',61),(66,'Céu Azul',61),(67,'Santa Cruz',61),(68,'Santo Antônio',61),(69,'Alto Vera Cruz',61),(70,'Jardim dos Comerciários',61),(71,'Aeroporto',71),(72,'Nova Villa',71),(73,'Norte Ferroviário',71),(74,'Jardim Pompéia',71),(75,'Shamgrilá',71),(76,'Vale dos Sonhos',71),(77,'Asa Branca',71),(78,'Alice Barbosa',71),(79,'Jardim Diamantina ',71),(80,'Perím',71),(81,'Paul',88),(82,'Divino Espírito Santo',88),(83,'Riviera da Barra',88),(84,'Morada do Sol',88),(85,'Morro da Lagoa',88),(86,'Santos Dumont',88),(87,'Residencial Coqueiral',88),(88,'Ataíde',88),(89,'Praia das Gaivotas ',88),(90,'Barra do Jucu',88),(91,'Asa Sul',91),(92,'Asa Norte',91),(93,'Ceilândia Norte',91),(94,'Ceilândia Sul',91),(95,'Setor Sudoeste',91),(96,'Cruzeiro Velho',91),(97,'Cruzeiro Novo',91),(98,'Gama Leste',91),(99,'Sobradinho I',91),(100,'Lago Sul',91);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'entregador',2000.00),(2,'atendente',2000.00),(3,'gerente',3000.00);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'ficção'),(2,'princesas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(10) unsigned NOT NULL,
  `nome` varchar(60) NOT NULL,
  `iduf` char(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cidade_uf1_idx` (`iduf`),
  CONSTRAINT `fk_tb_cidade_tb_uf1` FOREIGN KEY (`iduf`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Belém','PA'),(2,'Ananindeua','PA'),(3,'Santarém','PA'),(4,'Marabá','PA'),(5,'Parauapebas','PA'),(6,'Castanhal','PA'),(7,'Abaetetuba','PA'),(8,'Cametá','PA'),(9,'Marituba','PA'),(10,'Bragança','PA'),(11,'Porto Alegre','RS'),(12,'Caxias do Sul','RS'),(13,'Pelotas','RS'),(14,'Canoas','RS'),(15,'Santa Maria','RS'),(16,'Gravataí','RS'),(17,'Viamão','RS'),(18,'Novo Hamburgo','RS'),(19,'São Leopoldo','RS'),(20,'Rio Grande','RS'),(21,'Abatiá','PR'),(22,'Atalaia','PR'),(23,'Balsa Nova','PR'),(24,'Brasilândia do Sul','PR'),(25,'Cafeara','PR'),(26,'Curitiba','PR'),(27,'Enéas Marques','PR'),(28,'Engenheiro Beltrão','PR'),(29,'Figueira','PR'),(30,'Flórida','PR'),(31,'Rio de Janeiro','RJ'),(32,'Cabo Frio','RJ'),(33,'Niterói','RJ'),(34,'Angra dos Reis','RJ'),(35,'Barbosa','RJ'),(36,'Salgueiro','RJ'),(37,'Cambuci','RJ'),(38,'Itaipava','RJ'),(39,'Laranjal','RJ'),(40,'Duque de Caxias','RJ'),(41,'São Caetano','SP'),(42,'Avaré','SP'),(43,'Riberão Preto','SP'),(44,'Sumaré','SP'),(45,'Guarulhoss','SP'),(46,'Campinas','SP'),(47,'Sorocaba','SP'),(48,'Jundiaí','SP'),(49,'Araraquara','SP'),(50,'Mogi','SP'),(51,'Fortaleza','CE'),(52,'Juazeiro do Norte','CE'),(53,'Caucaia','CE'),(54,'Maracanaú','CE'),(55,'Sobral','CE'),(56,'Crato','CE'),(57,'Itapipoca','CE'),(58,'Maranguape','CE'),(59,'Iguatu','CE'),(60,'Quixadá','CE'),(61,'Belo Horizonte','MG'),(62,'Uberlândia','MG'),(63,'Contagem','MG'),(64,'Juiz de Fora','MG'),(65,'Betim','MG'),(66,'Montes Claros','MG'),(67,'Ribeirão das Neves','MG'),(68,'Uberaba','MG'),(69,'Governador Valadares','MG'),(70,'Ipatinga','MG'),(71,'Goiânia','GO'),(72,'Caldas Novas','GO'),(73,'Anápolis','GO'),(74,'Cidade Ocidental','GO'),(75,'Cristalina','GO'),(76,'Rio Verde','GO'),(77,'Formosa','GO'),(78,'Catalão','GO'),(79,'Jaraguá','GO'),(80,'Niquelândia','GO'),(81,'Afonso Cláudio','ES'),(82,'Anchieta','ES'),(83,'Colatina','ES'),(84,'Itaguaçu','ES'),(85,'Linhares','ES'),(86,'Santa Teresa','ES'),(87,'Vila Valério','ES'),(88,'Vila Velha','ES'),(89,'Laranja da Terra','ES'),(90,'Guarapari','ES'),(91,'Brasília','DF');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `resddd` tinyint(2) unsigned DEFAULT NULL,
  `restel` int(9) unsigned DEFAULT NULL,
  `celddd` tinyint(2) unsigned DEFAULT NULL,
  `celtel` int(9) unsigned DEFAULT NULL,
  `rg` int(7) DEFAULT NULL,
  `rgemissor` char(2) DEFAULT NULL,
  `cpf` bigint(11) unsigned zerofill DEFAULT NULL,
  `cnpj` bigint(14) unsigned zerofill DEFAULT NULL,
  `pfpj` tinyint(1) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `datanasc` date DEFAULT NULL,
  `complemento` varchar(20) NOT NULL,
  `idlogradouro` int(10) unsigned NOT NULL,
  `recomendacaonome` varchar(80) DEFAULT NULL,
  `recomendacaodatanasc` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_logradouro1_idx` (`idlogradouro`),
  CONSTRAINT `fk_cliente_logradouro1` FOREIGN KEY (`idlogradouro`) REFERENCES `logradouro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (63,'Martina V. Hardy',NULL,NULL,NULL,NULL,8644471,NULL,61497614532,NULL,1,'orci.luctus.et@felis.com',NULL,'laoreet',1,NULL,NULL),(64,'Brielle I. Weiss',NULL,NULL,NULL,NULL,6379210,NULL,14500705649,NULL,1,'Sed@semper.com',NULL,'lorem',1,NULL,NULL),(65,'Azalia Q. Stanley',NULL,NULL,NULL,NULL,4956783,NULL,55181838282,NULL,1,'tincidunt.nibh@inconsectetuer.org',NULL,'rhoncus.',1,NULL,NULL),(66,'Isabella C. Cochran',NULL,NULL,NULL,NULL,1873238,NULL,95640167180,NULL,1,'est.arcu@cursusvestibulum.co.uk',NULL,'cursus',1,NULL,NULL),(67,'Derek L. Cline',NULL,NULL,NULL,NULL,7528342,NULL,39056601002,NULL,1,'turpis@velitinaliquet.net',NULL,'Donec',1,NULL,NULL),(68,'Anjolie U. Cain',NULL,NULL,NULL,NULL,6663927,NULL,50269923938,NULL,1,'feugiat.non@convallis.edu',NULL,'gravida.',1,NULL,NULL),(69,'Gavin G. Underwood',NULL,NULL,NULL,NULL,1515498,NULL,79122248498,NULL,1,'mollis.non@laciniavitaesodales.com',NULL,'ultricies',1,NULL,NULL),(70,'Kai G. Oconnor',NULL,NULL,NULL,NULL,3926566,NULL,40657575221,NULL,1,'mauris.erat@elitAliquamauctor.co.uk',NULL,'rutrum',1,NULL,NULL),(71,'Dacey E. Wade',NULL,NULL,NULL,NULL,2938051,NULL,57119470834,NULL,1,'feugiat@amet.co.uk',NULL,'justo',1,NULL,NULL),(72,'Daria P. Cleveland',NULL,NULL,NULL,NULL,5262907,NULL,12111890564,NULL,1,'aliquet@vitae.com',NULL,'Nunc',1,NULL,NULL),(73,'Karleigh U. Gonzalez',NULL,NULL,NULL,NULL,3442767,NULL,76146755740,NULL,1,'fringilla.purus@malesuadaid.net',NULL,'mauris',11,NULL,NULL),(74,'Chase B. Hess',NULL,NULL,NULL,NULL,5481915,NULL,70909224616,NULL,1,'vitae.orci@nequesed.com',NULL,'a,',11,NULL,NULL),(75,'Abel Z. Camacho',NULL,NULL,NULL,NULL,3202245,NULL,89085751523,NULL,1,'Proin@nectempusmauris.edu',NULL,'mauris,',11,NULL,NULL),(76,'Lareina Q. Mitchell',NULL,NULL,NULL,NULL,7758514,NULL,20575541506,NULL,1,'nibh.Aliquam@ullamcorpermagna.co.uk',NULL,'varius.',11,NULL,NULL),(77,'Jade X. Cunningham',NULL,NULL,NULL,NULL,6705880,NULL,60457374362,NULL,1,'felis@inconsequatenim.edu',NULL,'euismod',11,NULL,NULL),(78,'Daria H. Owens',NULL,NULL,NULL,NULL,3704666,NULL,18438091998,NULL,1,'arcu@pretiumaliquet.com',NULL,'consequat',11,NULL,NULL),(79,'Yeo E. Lopez',NULL,NULL,NULL,NULL,8739712,NULL,30774420458,NULL,1,'nisi.Mauris@velit.edu',NULL,'orci.',11,NULL,NULL),(80,'Jordan Q. Conner',NULL,NULL,NULL,NULL,7807801,NULL,46204390293,NULL,1,'pede.ac@Nuncquisarcu.co.uk',NULL,'ornare',11,NULL,NULL),(81,'Lysandra J. Fuentes',NULL,NULL,NULL,NULL,2114474,NULL,49891524140,NULL,1,'ut.aliquam.iaculis@arcuSed.com',NULL,'libero.',11,NULL,NULL),(82,'Ivor M. Mayer',NULL,NULL,NULL,NULL,2716756,NULL,30565688096,NULL,1,'ac.risus@parturient.org',NULL,'sem.',11,NULL,NULL),(83,'Karly O. Garza',NULL,NULL,NULL,NULL,9292011,NULL,11455121098,NULL,1,'risus.Donec@liberoat.com',NULL,'metus.',21,NULL,NULL),(84,'Lillith M. Moore',NULL,NULL,NULL,NULL,9380896,NULL,33954663988,NULL,1,'dis.parturient@inconsequatenim.org',NULL,'ornare',21,NULL,NULL),(85,'Inez U. Little',NULL,NULL,NULL,NULL,8672189,NULL,61118336973,NULL,1,'Sed.pharetra@Inmipede.com',NULL,'fringilla',21,NULL,NULL),(86,'Buckminster E. Lewis',NULL,NULL,NULL,NULL,1242065,NULL,40978525082,NULL,1,'purus.accumsan.interdum@tortornibhsit.org',NULL,'lacus.',21,NULL,NULL),(87,'TaShya P. Kerr',NULL,NULL,NULL,NULL,2627900,NULL,68366526522,NULL,1,'dolor@enimEtiamgravida.ca',NULL,'dictum',21,NULL,NULL),(88,'Xena S. Cardenas',NULL,NULL,NULL,NULL,8800678,NULL,49070869220,NULL,1,'conubia@semsempererat.co.uk',NULL,'felis.',21,NULL,NULL),(89,'Dean L. Shaffer',NULL,NULL,NULL,NULL,1182951,NULL,88747203805,NULL,1,'Proin.velit.Sed@nisi.edu',NULL,'magnis',21,NULL,NULL),(90,'Yuri R. Harding',NULL,NULL,NULL,NULL,2707710,NULL,63777085600,NULL,1,'at@Donecvitae.edu',NULL,'non,',21,NULL,NULL),(91,'Orli A. Eaton',NULL,NULL,NULL,NULL,3336417,NULL,39250124121,NULL,1,'quis.pede.Suspendisse@dolornonummyac.ca',NULL,'ligula',21,NULL,NULL),(92,'Jasper C. Medina',NULL,NULL,NULL,NULL,9959312,NULL,78815448987,NULL,1,'vitae.mauris@blandit.net',NULL,'risus.',21,NULL,NULL),(93,'Connor K. Tillman',NULL,NULL,NULL,NULL,2582674,NULL,26746102132,NULL,1,'nec@purusMaecenaslibero.co.uk',NULL,'ultrices',31,NULL,NULL),(94,'Winter K. Lyons',NULL,NULL,NULL,NULL,4520602,NULL,22822436193,NULL,1,'ac@eget.org',NULL,'id',31,NULL,NULL),(95,'Rowan F. Burton',NULL,NULL,NULL,NULL,6299193,NULL,76656216424,NULL,1,'amet.consectetuer@ipsum.co.uk',NULL,'bibendum',31,NULL,NULL),(96,'Joy G. Sanford',NULL,NULL,NULL,NULL,6717130,NULL,93251064543,NULL,1,'iaculis@accumsansedfacilisis.net',NULL,'rutrum',31,NULL,NULL),(97,'Georgia P. Washington',NULL,NULL,NULL,NULL,4418927,NULL,98795705785,NULL,1,'nec.ante.blandit@nisl.edu',NULL,'condimentum.',31,NULL,NULL),(98,'Yoshio G. Ochoa',NULL,NULL,NULL,NULL,4781635,NULL,39963072414,NULL,1,'tortor@sitamet.org',NULL,'dui',31,NULL,NULL),(99,'Stone N. Alexander',NULL,NULL,NULL,NULL,1729223,NULL,22789009743,NULL,1,'torquent@eteros.net',NULL,'neque',31,NULL,NULL),(100,'Fleur X. Horne',NULL,NULL,NULL,NULL,6714187,NULL,66260991286,NULL,1,'in.felis.Nulla@cursusdiam.edu',NULL,'vel',31,NULL,NULL),(101,'Lesley Y. Ratliff',NULL,NULL,NULL,NULL,9740860,NULL,77014327297,NULL,1,'Integer.in@antelectusconvallis.edu',NULL,'in,',31,NULL,NULL),(102,'Lacy Z. Mooney',NULL,NULL,NULL,NULL,7955900,NULL,27381439672,NULL,1,'quis.massa@nibhPhasellus.ca',NULL,'nunc',31,NULL,NULL),(103,'Simone Z. Yang',NULL,NULL,NULL,NULL,7851604,NULL,38616395576,NULL,1,'quis@estac.ca',NULL,'at',41,NULL,NULL),(104,'Odysseus P. Henry',NULL,NULL,NULL,NULL,5972384,NULL,31672803643,NULL,1,'Suspendisse.non.leo@mattis.edu',NULL,'suscipit,',41,NULL,NULL),(105,'Rose I. Henderson',NULL,NULL,NULL,NULL,7631572,NULL,78639434940,NULL,1,'purus.in@laoreetipsumCurabitur.ca',NULL,'erat',41,NULL,NULL),(106,'Jacqueline I. Hoover',NULL,NULL,NULL,NULL,8254658,NULL,71767788835,NULL,1,'metus.Aenean.sed@pedenec.org',NULL,'laoreet,',41,NULL,NULL),(107,'Theodore Y. Wagner',NULL,NULL,NULL,NULL,5729228,NULL,27751543869,NULL,1,'lorem@maurisSuspendisse.edu',NULL,'risus',41,NULL,NULL),(108,'Kelly N. Hays',NULL,NULL,NULL,NULL,3703673,NULL,96580842385,NULL,1,'parturient.montes.nascetur@Crasconvallisconvallis.ca',NULL,'nec',41,NULL,NULL),(109,'Jayme Y. Burt',NULL,NULL,NULL,NULL,9623035,NULL,56241702246,NULL,1,'suscipit@Suspendissecommodotincidunt.net',NULL,'arcu.',41,NULL,NULL),(110,'Imelda L. Long',NULL,NULL,NULL,NULL,8002857,NULL,14770212065,NULL,1,'in.faucibus.orci@Fuscealiquet.ca',NULL,'nisi',41,NULL,NULL),(111,'Hakeem F. Coleman',NULL,NULL,NULL,NULL,3900974,NULL,67785342244,NULL,1,'nec.enim.Nunc@sodalesatvelit.org',NULL,'Vivamus',41,NULL,NULL),(112,'Desirae G. Cross',NULL,NULL,NULL,NULL,7403171,NULL,46223724302,NULL,1,'sit@enimEtiam.ca',NULL,'magna.',41,NULL,NULL),(113,'Lydia S. Head',NULL,NULL,NULL,NULL,4341110,NULL,34068573307,NULL,1,'ac@diamPellentesque.net',NULL,'libero',51,NULL,NULL),(114,'Mari V. Carroll',NULL,NULL,NULL,NULL,3702929,NULL,96265441551,NULL,1,'accumsan@amet.co.uk',NULL,'ante',51,NULL,NULL),(115,'Indigo X. Hyde',NULL,NULL,NULL,NULL,9839730,NULL,50321479348,NULL,1,'rutrum.justo.Praesent@acorciUt.edu',NULL,'rutrum',51,NULL,NULL),(116,'Philip S. Parsons',NULL,NULL,NULL,NULL,8238316,NULL,85015993979,NULL,1,'Suspendisse.aliquet@lacinia.com',NULL,'dictum',51,NULL,NULL),(117,'Ginger F. Wilkins',NULL,NULL,NULL,NULL,3778787,NULL,73227566356,NULL,1,'erat.eget@ullamcorperDuiscursus.net',NULL,'mauris',51,NULL,NULL),(118,'Macey D. Lindsey',NULL,NULL,NULL,NULL,3596535,NULL,67016083788,NULL,1,'ligula@Phasellus.co.uk',NULL,'libero',51,NULL,NULL),(119,'Angelica F. Browning',NULL,NULL,NULL,NULL,9945750,NULL,32001706047,NULL,1,'consequat@sapienmolestieorci.org',NULL,'et',51,NULL,NULL),(120,'Aretha X. Oconnor',NULL,NULL,NULL,NULL,8720241,NULL,14998967241,NULL,1,'sollicitudin.a@velvulputate.ca',NULL,'dolor.',51,NULL,NULL),(121,'Rudyard B. Shannon',NULL,NULL,NULL,NULL,2604512,NULL,28896890290,NULL,1,'rutrum.justo@molestiearcuSed.org',NULL,'ante',51,NULL,NULL),(122,'Carter Y. Molina',NULL,NULL,NULL,NULL,9727739,NULL,76583314893,NULL,1,'eu.eros.Nam@nasceturridiculus.co.uk',NULL,'parturient',51,NULL,NULL),(123,'Nina X. Rivas',NULL,NULL,NULL,NULL,8297918,NULL,96338892272,NULL,1,'accumsan.laoreet@pharetra.org',NULL,'interdum.',61,NULL,NULL),(124,'Price H. Hooper',NULL,NULL,NULL,NULL,2872645,NULL,45703879578,NULL,1,'suscipit@egestasnunc.org',NULL,'mauris',61,NULL,NULL),(125,'Melanie K. Walker',NULL,NULL,NULL,NULL,8215687,NULL,64388468033,NULL,1,'tempor@a.org',NULL,'vulputate',61,NULL,NULL),(126,'Nash S. Mcmahon',NULL,NULL,NULL,NULL,8274230,NULL,76661843682,NULL,1,'sed@inlobortistellus.com',NULL,'a',61,NULL,NULL),(127,'Cole V. Klein',NULL,NULL,NULL,NULL,1711377,NULL,57923739941,NULL,1,'rutrum.justo@vehiculaaliquet.ca',NULL,'erat',61,NULL,NULL),(128,'Plato D. Meyers',NULL,NULL,NULL,NULL,7233948,NULL,28065752403,NULL,1,'Suspendisse.sagittis.Nullam@Donec.com',NULL,'elit.',61,NULL,NULL),(129,'Cora W. Guerra',NULL,NULL,NULL,NULL,6393759,NULL,62378818790,NULL,1,'luctus.et@vestibulummassa.ca',NULL,'ut',61,NULL,NULL),(130,'Wendy B. Munoz',NULL,NULL,NULL,NULL,6951466,NULL,63107054928,NULL,1,'sed.orci@quis.com',NULL,'laoreet',61,NULL,NULL),(131,'Tatyana F. Heath',NULL,NULL,NULL,NULL,5662179,NULL,70592843161,NULL,1,'quis@magnaCras.ca',NULL,'nisi.',61,NULL,NULL),(132,'Palmer E. Dodson',NULL,NULL,NULL,NULL,6059788,NULL,66680787089,NULL,1,'eu.dolor.egestas@hendrerit.ca',NULL,'convallis',61,NULL,NULL),(133,'Debra P. Valdez',NULL,NULL,NULL,NULL,5615325,NULL,14717510259,NULL,1,'pretium@faucibus.net',NULL,'tincidunt',71,NULL,NULL),(134,'Eagan L. Mcdonald',NULL,NULL,NULL,NULL,9979875,NULL,88347455279,NULL,1,'at@nec.org',NULL,'libero.',71,NULL,NULL),(135,'Hayley X. Pruitt',NULL,NULL,NULL,NULL,7591974,NULL,92559144066,NULL,1,'orci.lobortis@placeratorcilacus.net',NULL,'eget',71,NULL,NULL),(136,'Josephine U. Kirk',NULL,NULL,NULL,NULL,2995466,NULL,54554668689,NULL,1,'suscipit@lobortisquis.edu',NULL,'dictum.',71,NULL,NULL),(137,'Lacota S. Ware',NULL,NULL,NULL,NULL,3019968,NULL,67126580783,NULL,1,'urna@estNunc.ca',NULL,'eleifend',71,NULL,NULL),(138,'Malik H. Dawson',NULL,NULL,NULL,NULL,8822766,NULL,89886675568,NULL,1,'lectus.ante.dictum@ideratEtiam.com',NULL,'a,',71,NULL,NULL),(139,'Ashton P. Riddle',NULL,NULL,NULL,NULL,7489150,NULL,48331277858,NULL,1,'ornare.placerat@sedliberoProin.org',NULL,'fermentum',71,NULL,NULL),(140,'Bertha A. Stevenson',NULL,NULL,NULL,NULL,2611901,NULL,40675695819,NULL,1,'auctor.Mauris@eunibh.ca',NULL,'Cum',71,NULL,NULL),(141,'Chase Z. Valencia',NULL,NULL,NULL,NULL,8999215,NULL,42535232131,NULL,1,'amet.consectetuer@Vivamuseuismod.edu',NULL,'dui',71,NULL,NULL),(142,'Wanda K. Faulkner',NULL,NULL,NULL,NULL,5835588,NULL,24904455078,NULL,1,'Phasellus@eumetusIn.com',NULL,'pellentesque.',71,NULL,NULL),(143,'MacKenzie O. Holder',NULL,NULL,NULL,NULL,3837958,NULL,30334969402,NULL,1,'vel@nonbibendumsed.ca',NULL,'ornare,',81,NULL,NULL),(144,'Sybil W. Walters',NULL,NULL,NULL,NULL,9636290,NULL,89690746656,NULL,1,'ligula@tortor.com',NULL,'Quisque',81,NULL,NULL),(145,'Alyssa K. Flynn',NULL,NULL,NULL,NULL,4469366,NULL,74319843906,NULL,1,'magna.Sed@mauris.net',NULL,'sit',81,NULL,NULL),(146,'Lacota K. Maddox',NULL,NULL,NULL,NULL,1450802,NULL,44127767946,NULL,1,'consequat@loremegetmollis.com',NULL,'consequat',81,NULL,NULL),(147,'Lars O. Nunez',NULL,NULL,NULL,NULL,6663762,NULL,65376438076,NULL,1,'nec.urna.et@Suspendissecommodo.org',NULL,'nec',81,NULL,NULL),(148,'Paki W. Rodriquez',NULL,NULL,NULL,NULL,4676747,NULL,14747923571,NULL,1,'malesuada@ultrices.ca',NULL,'nec,',81,NULL,NULL),(149,'Chase F. Chase',NULL,NULL,NULL,NULL,6725074,NULL,66847794916,NULL,1,'ipsum.leo@Aeneangravida.com',NULL,'urna.',81,NULL,NULL),(150,'Fatima I. Rice',NULL,NULL,NULL,NULL,1928978,NULL,35558294546,NULL,1,'velit@non.net',NULL,'Etiam',81,NULL,NULL),(151,'Vivian P. Kirk',NULL,NULL,NULL,NULL,8501110,NULL,47849318798,NULL,1,'est.mauris@acturpis.net',NULL,'vel',81,NULL,NULL),(152,'Sharon V. Calderon',NULL,NULL,NULL,NULL,2389227,NULL,48341220120,NULL,1,'tincidunt@velmauris.com',NULL,'nec,',81,NULL,NULL),(153,'Paul I. Cantu',NULL,NULL,NULL,NULL,9806394,NULL,12833594199,NULL,1,'Etiam.ligula@arcuVivamus.ca',NULL,'Nunc',91,NULL,NULL),(154,'Piper A. Cabrera',NULL,NULL,NULL,NULL,5385050,NULL,29735597388,NULL,1,'ut@dictum.edu',NULL,'semper',91,NULL,NULL),(155,'Ariana E. Maxwell',NULL,NULL,NULL,NULL,5140484,NULL,91251436703,NULL,1,'Nullam.nisl@Proineget.edu',NULL,'mi',91,NULL,NULL),(156,'Rudyard J. Horn',NULL,NULL,NULL,NULL,9060258,NULL,72001977513,NULL,1,'leo@atsem.com',NULL,'viverra.',91,NULL,NULL),(157,'Felicia X. Watts',NULL,NULL,NULL,NULL,9324933,NULL,32809635127,NULL,1,'convallis.convallis@convallis.ca',NULL,'molestie',91,NULL,NULL),(158,'Kareem T. Bailey',NULL,NULL,NULL,NULL,5157521,NULL,81959585017,NULL,1,'tincidunt.tempus@aptenttaciti.org',NULL,'aliquet,',91,NULL,NULL),(159,'Sydnee Q. Shannon',NULL,NULL,NULL,NULL,5022552,NULL,19042437854,NULL,1,'interdum@a.ca',NULL,'hendrerit',91,NULL,NULL),(160,'Yetta T. Downs',NULL,NULL,NULL,NULL,7153715,NULL,18152572462,NULL,1,'velit.egestas@turpisAliquam.com',NULL,'Duis',91,NULL,NULL),(161,'Octavia B. Chavez',NULL,NULL,NULL,NULL,8446754,NULL,86148697427,NULL,1,'turpis.egestas@ac.co.uk',NULL,'mauris',91,NULL,NULL),(162,'Wilma X. Pope',NULL,NULL,NULL,NULL,2781384,NULL,79276019376,NULL,1,'adipiscing.lacus@Sed.edu',NULL,'eros',91,NULL,NULL),(163,'Julio',32,3232,32,3232323,3232,'DF',00000032323,00000000000000,0,'3232323','1980-01-01','1',1,'1','2000-01-01'),(164,'julio',1,11,1,1,1111,'',00011111111,00000000000000,0,'111111','1980-01-01','1',1,'','0001-01-01'),(165,'2',2,2,2,2,2,'2',00000000002,00000000000000,0,'2','0001-01-01','2',2,'2','0001-01-01'),(166,'3',33,3,3,3,3,'3',00000000003,00000000000000,0,'3','1980-01-01','3',3,'',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `enderecoview`
--

DROP TABLE IF EXISTS `enderecoview`;
/*!50001 DROP VIEW IF EXISTS `enderecoview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `enderecoview` AS SELECT 
 1 AS `uf`,
 1 AS `cidade`,
 1 AS `bairro`,
 1 AS `logradouro`,
 1 AS `cep`,
 1 AS `idbairro`,
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `resddd` tinyint(2) unsigned DEFAULT NULL,
  `restel` int(9) unsigned DEFAULT NULL,
  `celddd` tinyint(2) unsigned DEFAULT NULL,
  `celtel` int(9) unsigned DEFAULT NULL,
  `rg` int(7) unsigned zerofill DEFAULT NULL,
  `rgemissor` char(2) DEFAULT NULL,
  `cpf` bigint(11) unsigned zerofill NOT NULL,
  `pis` bigint(11) unsigned zerofill DEFAULT NULL,
  `datacontratacao` date NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `complemento` char(8) DEFAULT NULL,
  `idlogradouro` int(10) unsigned NOT NULL,
  `login` char(8) NOT NULL,
  `senha` char(8) NOT NULL,
  `tipoadm` tinyint(1) DEFAULT NULL,
  `idcargo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `pis_UNIQUE` (`pis`),
  KEY `fk_funcionario_logradouro1_idx` (`idlogradouro`),
  KEY `fk_funcionario_cargo1_idx` (`idcargo`),
  CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`id`),
  CONSTRAINT `fk_funcionario_logradouro1` FOREIGN KEY (`idlogradouro`) REFERENCES `logradouro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Julio',NULL,NULL,NULL,NULL,NULL,NULL,28784149850,NULL,'2015-02-01',NULL,NULL,92,'iuli','iuli',NULL,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `idtema` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_tema1_idx` (`idtema`),
  CONSTRAINT `fk_item_tema1` FOREIGN KEY (`idtema`) REFERENCES `tema` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logradouro`
--

DROP TABLE IF EXISTS `logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logradouro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cep` int(8) unsigned DEFAULT NULL,
  `idbairro` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cep_UNIQUE` (`cep`),
  KEY `fk_logradouro_bairro1_idx` (`idbairro`),
  CONSTRAINT `fk_tb_logradouro_tb_bairro1` FOREIGN KEY (`idbairro`) REFERENCES `bairro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logradouro`
--

LOCK TABLES `logradouro` WRITE;
/*!40000 ALTER TABLE `logradouro` DISABLE KEYS */;
INSERT INTO `logradouro` VALUES (1,'Passagem Guamá',66065335,1),(2,'Rua da Salvação',66079050,1),(3,'Avenida José Bonifácio',66065362,1),(4,'Avenida Perimetral',66075750,1),(5,'Vila Silva Castro',66075010,1),(6,'Alameda Mamoré',66075425,1),(7,'Conjunto Mauro Porto',66073390,1),(8,'Passagem da Paz',66073440,1),(9,'Travessa Guerra Passos',66073250,1),(10,'Conjunto Aron',66075865,1),(11,'Travessa Jordão',91170700,11),(12,'Rua Vinte e Cinco',91170440,11),(13,'Rua Umbertina Gonçalves',91170750,11),(14,'Rua Sagitário',91150310,11),(15,'Rua Rufino Antonio Monteiro',91150311,11),(16,'Rua S',91160520,11),(17,'Praça Tom Jobim',91150035,11),(18,'Estrada Martim Félix Berta',91270650,11),(19,'Beco da Servidão',91250270,11),(20,'Avenida Homero Guerreiro',91150030,11),(21,'Rua Americo Ribeiro',81050650,28),(22,'Avenida Marechal Dutra ',81460286,28),(23,'Praça da Cultura ',81230220,28),(24,'Rua Moacir Nogueira,145 a 190',81530300,28),(25,'Rua da Consolação ',81490050,28),(26,'Avenida Martins Pacheco',82315094,28),(27,'Estação Central',81580370,28),(28,'Avenida Ademar de Souza ',82630420,28),(29,'Rua Pinheiro de Souza',82115272,28),(30,'Avenida Aricajá',81480404,28),(31,'Praia do Flamengo de 195/196 ao fim',23850220,36),(32,'Rua Ferreira Viana',27970410,36),(33,'Praça Luís de Camões Glória',25907120,36),(34,'Rua Almirante Tamandaré',21825435,36),(35,'Rua Ferreira Viana',21864221,36),(36,'Parque Carlos Lacerda',21012255,36),(37,'Ladeira do Russel',20931675,36),(38,'Pedro Maquenzie',28920100,36),(39,'Ladeira do Abel',22793381,36),(40,'Avenida Central',22793380,36),(41,'Praça Anita',7194380,49),(42,'Rua Anita Garibaldi',7123190,49),(43,'Rua Anjicos Júnior',7252190,49),(44,'Rua Anna Muggiasco Marcondes',7272550,49),(45,'Avenida Anna Rodrigues de Carvalho',7075220,49),(46,'Rua Annunciato Thomeu',7082560,49),(47,'Avenida Annunciato Thomeu',7224280,49),(48,'Passagem Ano Bom',7020300,49),(49,'Viela Anofi',7240011,49),(50,'Viela Antas',7170031,49),(51,'Alameda Verde 01',60752180,51),(52,'Avenida 1',60752310,51),(53,'Praça São Judas Tadeu',60711490,51),(54,'Rua 10',60752400,51),(55,'Vila Risoneide',60761450,51),(56,'Vila Serrano',60711450,51),(57,'Via Coletora A',60768010,51),(58,'Travessa Vitalino',60763260,51),(59,'Rua Wagner Marinho',60766200,51),(60,'Rua Uirapuru',60711790,51),(61,'Praça Euclydes josé Correia',31030325,61),(62,'Praça Nilo Peçanha',31030270,61),(63,'Rua Abílio Machado',31030390,61),(64,'Rua Carolina Guedes',31035130,61),(65,'Rua Joaquim Felício',31030200,61),(66,'Rua Volta Grande',31003340,61),(67,'Rua São Bento',31035060,61),(68,'Rua Petrolina',31030370,61),(69,'Rua Geraldo Menezes Soares',31030440,61),(70,'Rua Diametral',31030350,61),(71,'Rua da Liberdade',74703210,74),(72,'Avenida Central',74465100,74),(73,'Avenida César Lattes',74363400,74),(74,'Avenida Minas Gerais',74510040,74),(75,'Rua José Hermano',74515030,74),(76,'Avenida Vera Cruz',74675830,74),(77,'Avenida Honestino Guimarães',74510020,74),(78,'Avenida Genésio de Lima Brito - de 4447/4448 ao fim',74593210,74),(79,'Avenida São Paulo  ',74160010,74),(80,'Avenida do Povo ',74440010,74),(81,'Rua Anita Garibaldi',29115280,81),(82,'Praça Anita Malfati',29129742,81),(83,'Rua Aniz Oliveira Santos',29109520,81),(84,'Travessa Annor da Silva',29102606,81),(85,'Rua Ano Novo',29119020,81),(86,'Vila Anselmo',60347290,81),(87,'Rua Antenor Braga',29102574,81),(88,'Praça Antenor Fassarela',29115015,81),(89,'Escadaria Antenor Gomes',29114026,81),(90,'Rua Antenor Pinto Carneiro',29125120,81),(91,'SQS 304 Bloco A',70337010,91),(92,'SQS 304 Bloco B',70337020,91),(93,'SQS 304 Bloco C',70337030,91),(94,'SQS 304 Bloco D',70337040,91),(95,'SQS 304 Bloco E',70337050,91),(96,'SQS 304 Bloco F',70337060,91),(97,'SQS 304 Bloco G',70337070,91),(98,'SQS 304 Bloco H',70337080,91),(99,'SQS 304 Bloco I',70337090,91),(100,'SQS 304 Bloco J',70337100,91);
/*!40000 ALTER TABLE `logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datapedido` date NOT NULL,
  `dataentrega` date NOT NULL,
  `obspedido` text,
  `complemento` varchar(20) NOT NULL,
  `idlogradouro` int(10) unsigned NOT NULL,
  `idcliente` int(10) unsigned NOT NULL,
  `idfuncionario` int(10) unsigned NOT NULL,
  `idtema` int(10) unsigned NOT NULL,
  `horaentrega` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_logradouro1_idx` (`idlogradouro`),
  KEY `fk_pedido_funcionario1_idx` (`idfuncionario`),
  KEY `fk_pedido_tema1_idx` (`idtema`),
  KEY `fk_pedido_cliente1_idx` (`idcliente`),
  CONSTRAINT `fk_pedido_cliente1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_pedido_funcionario1` FOREIGN KEY (`idfuncionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `fk_pedido_logradouro1` FOREIGN KEY (`idlogradouro`) REFERENCES `logradouro` (`id`),
  CONSTRAINT `fk_pedido_tema1` FOREIGN KEY (`idtema`) REFERENCES `tema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (2,'2017-03-24','2017-03-24','primeiro teste de inserção','apt 203',92,69,1,3,'13:00:00'),(3,'2017-03-24','2017-03-24','adsfadfadsfasdfadsf','fdafsdfadsf',93,81,1,1,'13:00:00'),(4,'2017-03-24','2017-03-16','nada a declarar','apt 505',96,156,1,2,'14:00:00'),(5,'2017-03-24','2017-03-20','nada a declarar','apt 505',96,156,1,2,'14:00:00');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pedidoview`
--

DROP TABLE IF EXISTS `pedidoview`;
/*!50001 DROP VIEW IF EXISTS `pedidoview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pedidoview` AS SELECT 
 1 AS `id`,
 1 AS `dataentrega`,
 1 AS `horaentrega`,
 1 AS `complemento`,
 1 AS `idlogradouro`,
 1 AS `nomelogradouro`,
 1 AS `idcliente`,
 1 AS `nomecliente`,
 1 AS `idtema`,
 1 AS `nometema`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `descricao` text,
  `genero` char(1) NOT NULL,
  `datacompra` date DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imgtema` varchar(150) DEFAULT NULL,
  `idcategoria` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tema_categoria1_idx` (`idcategoria`),
  CONSTRAINT `fk_tema_categoria1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'teste1',NULL,NULL,'M',NULL,1000.00,NULL,NULL),(2,'teste2',NULL,NULL,'F',NULL,2000.00,NULL,NULL),(3,'teste3',NULL,NULL,'U',NULL,3000.00,NULL,NULL);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uf` (
  `id` char(2) NOT NULL,
  `nome` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES ('AC','Acre'),('AL','Alagoas'),('AM','Amazônia'),('AP','Amapá'),('BA','Bahia'),('CE','Ceará'),('DF','Distrito Federal'),('ES','Espírito Santo'),('GO','Goiás'),('MA','Maranhão'),('MG','Minas Gerais'),('MS','Mato Grosso do Sul'),('MT','Mato Grosso'),('PA','Pará'),('PB','Pernambuco'),('PI','Piauí'),('PR','Paraná'),('RJ','Rio de Janeiro'),('RN','Rio Grande do Norte'),('RO','Rondônia'),('RR','Roraima'),('RS','Rio Grande do Sul'),('SC','Santa Catarina'),('SE','Sergipe'),('SP','São Paulo'),('TO','Tocantins');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `enderecoview`
--

/*!50001 DROP VIEW IF EXISTS `enderecoview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aluno`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `enderecoview` AS select `uf`.`id` AS `uf`,`cidade`.`nome` AS `cidade`,`bairro`.`nome` AS `bairro`,`logradouro`.`nome` AS `logradouro`,`logradouro`.`cep` AS `cep`,`logradouro`.`idbairro` AS `idbairro`,`logradouro`.`id` AS `id` from (((`uf` join `cidade` on((`uf`.`id` = `cidade`.`iduf`))) join `bairro` on((`cidade`.`id` = `bairro`.`idcidade`))) join `logradouro` on((`bairro`.`id` = `logradouro`.`idbairro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pedidoview`
--

/*!50001 DROP VIEW IF EXISTS `pedidoview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aluno`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pedidoview` AS select `pedido`.`id` AS `id`,`pedido`.`dataentrega` AS `dataentrega`,`pedido`.`horaentrega` AS `horaentrega`,`pedido`.`complemento` AS `complemento`,`pedido`.`idlogradouro` AS `idlogradouro`,`logradouro`.`nome` AS `nomelogradouro`,`pedido`.`idcliente` AS `idcliente`,`cliente`.`nome` AS `nomecliente`,`pedido`.`idtema` AS `idtema`,`tema`.`nome` AS `nometema` from (((`pedido` join `logradouro` on((`pedido`.`idlogradouro` = `logradouro`.`id`))) join `cliente` on((`pedido`.`idcliente` = `cliente`.`id`))) join `tema` on((`pedido`.`idtema` = `tema`.`id`))) */;
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

-- Dump completed on 2017-04-01 13:37:15
