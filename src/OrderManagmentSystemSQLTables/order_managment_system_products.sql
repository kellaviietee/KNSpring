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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `unit_price` decimal(4,2) DEFAULT NULL,
  `sku_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Wakami Seaweed',6.36,'Wak1'),(2,'Sole - Dover, Whole, Fresh',7.17,'Sol2'),(3,'Foam Tray S2',3.07,'Foa3'),(4,'Pasta - Canelloni, Single Serve',3.35,'Pas4'),(5,'Scallops 60/80 Iqf',8.96,'Sca5'),(6,'Cookie Dough - Peanut Butter',9.51,'Coo6'),(7,'Milk - 2% 250 Ml',4.80,'Mil7'),(8,'Paper Cocktail Umberlla 80 - 180',3.25,'Pap8'),(9,'Wine - Magnotta, Merlot Sr Vqa',3.16,'Win9'),(10,'Pan Grease',7.62,'Pan10'),(11,'Tea - Lemon Green Tea',4.72,'Tea11'),(12,'Wine - Muscadet Sur Lie',8.25,'Win12'),(13,'Chicken Giblets',2.81,'Chi13'),(14,'Octopus - Baby, Cleaned',7.22,'Oct14'),(15,'Bols Melon Liqueur',5.69,'Bol15'),(16,'Eggplant - Asian',3.06,'Egg16'),(17,'Chevere Logs',6.74,'Che17'),(18,'Foil Cont Round',5.28,'Foi18'),(19,'Turkey Leg With Drum And Thigh',9.93,'Tur19'),(20,'Chocolate - Pistoles, Lactee, Milk',6.21,'Cho20'),(21,'Grapefruit - White',4.27,'Gra21'),(22,'Zucchini - Mini, Green',7.37,'Zuc22'),(23,'Creamers - 10%',3.46,'Cre23'),(24,'Plums - Red',7.12,'Plu24'),(25,'Bread - Bistro White',3.72,'Bre25'),(26,'Wine - Charddonnay Errazuriz',2.54,'Win26'),(27,'Truffle - Peelings',9.44,'Tru27'),(28,'Skirt - 29 Foot',2.10,'Ski28'),(29,'Lamb - Pieces, Diced',4.25,'Lam29'),(30,'Gingerale - Diet - Schweppes',4.73,'Gin30'),(31,'Truffle - Peelings',4.11,'Tru31'),(32,'Ice Cream Bar - Drumstick',5.21,'Ice32'),(33,'Bay Leaf',9.76,'Bay33'),(34,'Veal - Sweetbread',9.56,'Vea34'),(35,'Sauce - Hollandaise',4.48,'Sau35'),(36,'Beef - Ground Medium',2.03,'Bee36'),(37,'Tandoori Curry Paste',6.82,'Tan37'),(38,'Eggplant Oriental',2.83,'Egg38'),(39,'Milk - 2%',9.80,'Mil39'),(40,'Lettuce - Boston Bib - Organic',7.66,'Let40'),(41,'Cheese - Victor Et Berthold',5.93,'Che41'),(42,'Eggs - Extra Large',5.89,'Egg42'),(43,'Parsnip',4.59,'Par43'),(44,'Ginger - Fresh',3.51,'Gin44'),(45,'Wine - White, Pelee Island',2.31,'Win45'),(46,'Bols Melon Liqueur',6.45,'Bol46'),(47,'Lotus Rootlets - Canned',8.12,'Lot47'),(48,'Rice Paper',9.73,'Ric48'),(49,'Pears - Anjou',3.22,'Pea49'),(50,'Sauce - Marinara',4.38,'Sau50'),(51,'Stock - Chicken, White',5.44,'Sto51'),(52,'Rice - 7 Grain Blend',3.17,'Ric52'),(53,'Lemon Grass',2.52,'Lem53'),(54,'The Pop Shoppe - Grape',5.68,'The54'),(55,'Sugar - Palm',4.54,'Sug55'),(56,'Pasta - Elbows, Macaroni, Dry',5.83,'Pas56'),(57,'Wild Boar - Tenderloin',4.83,'Wil57'),(58,'Wine - Cava Aria Estate Brut',6.74,'Win58'),(59,'Basil - Thai',8.71,'Bas59'),(60,'Soup - Campbells',9.87,'Sou60'),(61,'Lamb - Leg, Diced',5.21,'Lam61'),(62,'Split Peas - Yellow, Dry',6.14,'Spl62'),(63,'Juice - Ocean Spray Cranberry',8.61,'Jui63'),(64,'Garam Masala Powder',7.35,'Gar64'),(65,'Wine - Rioja Campo Viejo',5.41,'Win65'),(66,'Beef - Rouladin, Sliced',7.44,'Bee66'),(67,'Wine - Vouvray Cuvee Domaine',6.72,'Win67'),(68,'Wine - Conde De Valdemar',5.52,'Win68'),(69,'Mushroom - Porcini, Dry',7.04,'Mus69'),(70,'Wine - Magnotta - Cab Sauv',9.46,'Win70'),(71,'Isomalt',9.11,'Iso71'),(72,'Miso Paste White',2.61,'Mis72'),(73,'Wine - Shiraz South Eastern',7.01,'Win73'),(74,'Squash - Pattypan, Yellow',7.72,'Squ74'),(75,'Wine - White, Ej',9.90,'Win75'),(76,'Juice - Lime',7.25,'Jui76'),(77,'Sugar - Monocystal / Rock',9.04,'Sug77'),(78,'Pork - Backfat',3.40,'Por78'),(79,'Chervil - Fresh',6.20,'Che79'),(80,'Pastry - Apple Muffins - Mini',7.38,'Pas80'),(81,'Ecolab - Power Fusion',6.70,'Eco81'),(82,'Crab Brie In Phyllo',6.86,'Cra82'),(83,'Bread - Sour Batard',8.39,'Bre83'),(84,'Butcher Twine 4r',3.52,'But84'),(85,'Bread Crumbs - Japanese Style',5.45,'Bre85'),(86,'Longos - Lasagna Beef',6.67,'Lon86'),(87,'Loaf Pan - 2 Lb, Foil',2.49,'Loa87'),(88,'Turnip - Wax',5.01,'Tur88'),(89,'Potatoes - Instant, Mashed',3.19,'Pot89'),(90,'Beef - Ground, Extra Lean, Fresh',8.43,'Bee90'),(91,'Chocolate - Chips Compound',3.46,'Cho91'),(92,'Lemon Pepper',3.85,'Lem92'),(93,'Wine - Red, Cabernet Sauvignon',3.42,'Win93'),(94,'Wine - Piper Heidsieck Brut',3.35,'Win94'),(95,'Beef - Cooked, Corned',4.06,'Bee95'),(96,'Soup - Knorr, Chicken Gumbo',9.38,'Sou96'),(97,'Puree - Mango',6.90,'Pur97'),(98,'Stock - Chicken, White',9.11,'Sto98'),(99,'Chocolate Bar - Coffee Crisp',2.69,'Cho99'),(100,'Wine - Marlbourough Sauv Blanc',4.01,'Win100'),(102,'Wakami Põisadru',6.36,'Wak1'),(103,'Põisadru',3.30,'Põi1'),(104,'Põisadru',3.30,'Põi1'),(105,'Põisadru',3.30,'Põi1'),(108,'Wakami Seaweed',6.36,'Wak1'),(109,'Sole - Dover, Whole, Fresh',7.17,'Sol2'),(110,'Wakami Seaweed',6.36,'Wak1'),(111,'Sole - Dover, Whole, Fresh',7.17,'Sol2');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
