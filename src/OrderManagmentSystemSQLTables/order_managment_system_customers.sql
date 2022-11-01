CREATE DATABASE  IF NOT EXISTS `order_managment_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `order_managment_system`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: order_managment_system
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `registration_code` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registration_code`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Eric Blackborne','eblackborne0@nifty.com','643-827-7826'),(2,'Kacie Mc Queen','kmc1@ycombinator.com','474-211-9076'),(3,'Rutter Drust','rdrust2@who.int','732-355-4179'),(4,'Jessee Bellfield','jbellfield3@zdnet.com','703-824-2731'),(5,'Adriane Wiltshier','awiltshier4@fotki.com','896-362-5809'),(6,'Gabey Glinde','gglinde5@ask.com','958-708-9131'),(7,'Brandice Axell','baxell6@wiley.com','936-429-1689'),(8,'Derron Flecknoe','dflecknoe7@tmall.com','867-928-5564'),(9,'Dennison Parminter','dparminter8@elegantthemes.com','620-656-9715'),(10,'Weidar Andreacci','wandreacci9@va.gov','163-188-2340'),(11,'Ragnar Dominico','rdominicoa@wp.com','587-466-2744'),(12,'Larissa Goodayle','lgoodayleb@bbb.org','460-201-9971'),(13,'Atalanta Cullabine','acullabinec@ning.com','295-960-4935'),(14,'Jone Konertz','jkonertzd@google.nl','123-547-5329'),(15,'Clarice Climo','cclimoe@amazonaws.com','899-376-8749'),(16,'Clive Bohlsen','cbohlsenf@utexas.edu','784-852-5272'),(17,'Elspeth Oslar','eoslarg@stanford.edu','157-923-2363'),(18,'Marve Gedling','mgedlingh@nydailynews.com','991-632-1420'),(19,'Edyth Bagnall','ebagnalli@va.gov','492-288-7663'),(20,'Augusta Grandison','agrandisonj@house.gov','548-962-3363'),(21,'Burty Pine','bpinek@mac.com','464-467-8321'),(22,'Bartolomeo Berthomieu','bberthomieul@prlog.org','698-437-5488'),(23,'Terrance McPake','tmcpakem@skyrock.com','991-242-7030'),(24,'Ray Haslen','rhaslenn@theatlantic.com','781-932-0500'),(25,'Rolando Hackworthy','rhackworthyo@theglobeandmail.com','759-163-5514'),(26,'Gregorius Thewles','gthewlesp@state.gov','232-872-9804'),(27,'Celia Sindall','csindallq@studiopress.com','129-597-6380'),(28,'Cleve Candwell','ccandwellr@cornell.edu','977-131-6244'),(29,'Shannon Rubenchik','srubenchiks@mashable.com','937-206-2541'),(30,'Michaeline Bollins','mbollinst@jiathis.com','350-993-2970'),(31,'Pepita Clineck','pclinecku@examiner.com','723-393-6482'),(32,'Cecilius More','cmorev@pinterest.com','343-326-9295'),(33,'Dannel Wimbush','dwimbushw@reverbnation.com','521-508-7085'),(34,'Shirl Loftie','sloftiex@unblog.fr','120-630-2756'),(35,'Sissie Tregaskis','stregaskisy@nifty.com','592-169-9518'),(36,'Doro Frise','dfrisez@chronoengine.com','110-306-0743'),(37,'Rosemarie Corness','rcorness10@slashdot.org','858-608-6224'),(38,'Thor Livsey','tlivsey11@nationalgeographic.com','737-497-9904'),(39,'Maurie Colbron','mcolbron12@nifty.com','656-593-7501'),(40,'Christoffer Sincock','csincock13@blinklist.com','599-824-5367'),(41,'Cointon Greenalf','cgreenalf14@networksolutions.com','529-252-4142'),(42,'Kirsten Salasar','ksalasar15@opera.com','973-406-4673'),(43,'Cody Gatcliff','cgatcliff16@bing.com','801-451-7969'),(44,'Calla Parlett','cparlett17@w3.org','996-949-2773'),(45,'Penn Fennessy','pfennessy18@taobao.com','344-681-1402'),(46,'Ware Lehrle','wlehrle19@army.mil','182-707-6559'),(47,'Sasha Loudyan','sloudyan1a@microsoft.com','280-220-9891'),(48,'Beatrix Dewi','bdewi1b@ibm.com','355-460-3089'),(49,'Tanner Casini','tcasini1c@reuters.com','278-153-5790'),(50,'Jarrid Mc Combe','jmc1d@yale.edu','343-600-5705'),(51,'Elysha Donativo','edonativo1e@oracle.com','669-362-3288'),(52,'Yale Hayes','yhayes1f@forbes.com','561-760-4133'),(53,'Sherye Armatage','sarmatage1g@bandcamp.com','166-769-4574'),(54,'Baron Silvers','bsilvers1h@multiply.com','697-636-5833'),(55,'Nathan Darlaston','ndarlaston1i@cbc.ca','618-899-2299'),(56,'Winifield Bracegirdle','wbracegirdle1j@home.pl','570-871-2303'),(57,'Byrom Hafford','bhafford1k@cmu.edu','686-505-5890'),(58,'Carl Pyatt','cpyatt1l@ocn.ne.jp','266-573-5125'),(59,'Brennan Shirlaw','bshirlaw1m@surveymonkey.com','460-399-1547'),(60,'Darya Desport','ddesport1n@who.int','354-849-7589'),(61,'Jemimah Ades','jades1o@imageshack.us','548-455-7824'),(62,'Law Polini','lpolini1p@guardian.co.uk','514-970-4632'),(63,'Ravid Bickerstaffe','rbickerstaffe1q@soup.io','530-946-2845'),(64,'Selby Cattroll','scattroll1r@studiopress.com','789-112-8028'),(65,'Nicolis Ricciardo','nricciardo1s@t-online.de','417-916-5375'),(66,'Chase Moston','cmoston1t@hud.gov','990-858-2665'),(67,'Mylo McDirmid','mmcdirmid1u@wikispaces.com','923-760-8068'),(68,'Arlana Dowzell','adowzell1v@yelp.com','388-817-9481'),(69,'Gibbie Parrish','gparrish1w@salon.com','864-493-7058'),(70,'Sisely Pendered','spendered1x@usda.gov','671-581-6400'),(71,'Lynette Tuffs','ltuffs1y@ox.ac.uk','876-571-8005'),(72,'Phelia Kohter','pkohter1z@photobucket.com','906-139-5301'),(73,'Ingaborg Stodd','istodd20@thetimes.co.uk','688-137-1642'),(74,'Hilly Skakunas','hskakunas21@sina.com.cn','462-344-8240'),(75,'Gertrud Kitchinghan','gkitchinghan22@cnbc.com','249-692-0677'),(76,'Obediah Heephy','oheephy23@google.cn','174-183-5273'),(77,'Sutherland Geldeford','sgeldeford24@fc2.com','878-797-1297'),(78,'Millicent Guwer','mguwer25@bbb.org','898-403-8639'),(79,'Catriona Bogey','cbogey26@ebay.com','819-804-8218'),(80,'Tresa Khrishtafovich','tkhrishtafovich27@patch.com','635-349-8433'),(81,'Monah Galero','mgalero28@vinaora.com','191-982-3495'),(82,'Robby Smooth','rsmooth29@phoca.cz','150-620-7358'),(83,'Bailie McIlwreath','bmcilwreath2a@flickr.com','253-417-5585'),(84,'Kalindi Born','kborn2b@ebay.com','847-886-6792'),(85,'Mallorie Wardale','mwardale2c@friendfeed.com','781-184-7354'),(86,'Chad Clere','cclere2d@people.com.cn','306-998-2951'),(87,'Stanford Wellbank','swellbank2e@archive.org','340-258-0305'),(88,'Parrnell Fleckno','pfleckno2f@theglobeandmail.com','961-175-7046'),(89,'Ricca Lofty','rlofty2g@yale.edu','406-880-7310'),(90,'Katharine Bellow','kbellow2h@csmonitor.com','963-329-3182'),(91,'Marietta Seeking','mseeking2i@engadget.com','163-751-6095'),(92,'Ricki Scobie','rscobie2j@joomla.org','178-782-4558'),(93,'Abby Crosby','acrosby2k@yellowbook.com','777-135-1060'),(94,'Lee Castanho','lcastanho2l@yolasite.com','930-599-1100'),(95,'Rossie Sigfrid','rsigfrid2m@prweb.com','922-226-3151'),(96,'Rodi Jowers','rjowers2n@lycos.com','364-135-7753'),(97,'Micheal Levey','mlevey2o@istockphoto.com','351-481-1013'),(98,'Sigismond Towey','stowey2p@plala.or.jp','288-553-4133'),(99,'Gardy Delhay','gdelhay2q@phoca.cz','653-660-2148'),(100,'Celinda Curdell','ccurdell2r@ebay.com','817-263-0399'),(101,'Lauri Niilo','eblackborne0@nifty.com','643-827-7826'),(102,'Kaur Riisimaa','eblackborne0@nifty.com','643-827-7826'),(103,'Taur Riisimaa','eblackborne0@nifty.com','643-827-7826'),(104,'Taur Riisimaa','eblackborne0@nifty.com','643-827-7826'),(105,'Taur Riisimaa','eblackborne0@nifty.com','643-827-7826'),(106,'Eric Blackborne','eblackborne0@nifty.com','643-827-7826'),(107,'Eric Blackborne','eblackborne0@nifty.com','643-827-7826'),(108,'Eric Blackborne','eblackborne0@nifty.com','643-827-7826'),(109,'Eric Blackborne','eblackborne0@nifty.com','643-827-7826');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 11:20:11
