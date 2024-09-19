-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('Surf','Windsurf','Kayak','ATV','Hot air baloon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `dateTime` datetime NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `notes` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `satisfaction` enum('0','1','2','3','4','5','6','7','8','9','10') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_foreign` (`user_id`),
  CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (7,'Kayak',1,'2024-09-04 15:30:00',0,'Extra fearful person','0','2024-09-05 10:26:08','2024-09-05 10:48:53'),(8,'Surf',2,'0000-00-00 00:00:00',0,'Afraid of sharks','0','2024-09-09 10:45:30','2024-09-09 10:45:30'),(9,'',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:35:10','2024-09-09 11:35:10'),(10,'Kayak',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:35:33','2024-09-09 11:35:33'),(11,'Kayak',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:37:39','2024-09-09 11:37:39'),(12,'ATV',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:37:40','2024-09-09 13:43:58'),(13,'Kayak',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:37:41','2024-09-09 11:37:41'),(14,'Surf',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:38:52','2024-09-09 11:38:52'),(15,'Surf',2,'0000-00-00 00:00:00',0,'Brave but uncoordinated','0','2024-09-09 11:40:26','2024-09-09 11:40:26');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amenity` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Bed'),(2,'Wifi'),(3,'Car'),(4,'Snow'),(5,'Gym'),(6,'Cigar'),(7,'Drink');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `orderDate` varchar(255) NOT NULL,
  `checkInDate` varchar(255) NOT NULL,
  `checkOutDate` varchar(255) NOT NULL,
  `specialRequest` varchar(300) DEFAULT NULL,
  `roomType` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `roomId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'Mr. Marshall Sawayn','2024-05-31','2024-06-06','2024-06-25','Impedit eligendi peccatus conqueror somniculosus cultellus.','4','Check-Out',35),(2,'Nadine Kemmer','2024-09-25','2024-09-26','2024-10-15','Aestas pecus illum cedo suggero calamitas.','3','Check-Out',36),(3,'Donald Zboncak','2024-03-23','2024-03-26','2024-03-29','Civitas cumque demonstro bonus articulus consuasor.','2','Check-Out',43),(4,'Rhonda Sporer','2024-09-18','2024-09-28','2024-10-02','Vitiosus nesciunt quaerat subito testimonium verto.','1','Check-In',15),(5,'Rickey Breitenberg','2024-01-19','2024-01-26','2024-02-13','Conculco titulus pecto ullam alter spargo.','3','Check-Out',32),(6,'Trevor Wiegand','2024-12-28','2024-12-30','2025-01-14','Tunc mollitia damnatio creber venio aegrotatio.','1','Check-Out',9),(7,'Pat Gibson','2024-02-02','2024-02-07','2024-02-11','Adeptio stips cultura desino aliqua utor.','4','Check-Out',35),(8,'Caleb VonRueden','2024-03-25','2024-04-04','2024-04-12','Capto agnitio utique acer ex uterque.','4','Check-In',18),(9,'Rogelio Schmitt-Kuphal','2024-05-23','2024-06-01','2024-06-05','Urbanus aer audio canonicus arto turbo.','1','Check-Out',13),(10,'Anne Weimann IV','2024-09-01','2024-09-03','2024-09-17','Placeat decimus vinitor vesco dedico cernuus.','2','Check-In',16),(11,'Jeremy Graham','2024-01-16','2024-01-24','2024-02-09','Comes beatae tenuis ver cohibeo adulatio.','2','Check-Out',11),(12,'Tami O\'Conner','2024-10-03','2024-10-06','2024-10-11','Vehemens accendo ante spargo canis clibanus.','2','Check-In',5),(13,'Natalie Keeling-O\'Connell','2024-05-21','2024-05-24','2024-05-28','Assentator unus audentia subiungo cupressus sollicito.','4','Check-Out',35),(14,'Blake West','2024-02-28','2024-03-07','2024-03-23','Solutio utrum vulariter tergum versus solium.','1','Check-In',27),(15,'Jonathon Daugherty','2024-06-06','2024-06-09','2024-06-11','Quaerat alias caterva administratio theca sperno.','1','Check-Out',27),(16,'Anthony Rice','2024-02-03','2024-02-08','2024-02-28','Altus corrumpo carus ipsam reiciendis beatus.','4','Check-Out',22),(17,'Donnie Carter','2024-11-06','2024-11-11','2024-11-19','Tametsi coerceo tepesco currus consuasor textilis.','1','Check-Out',31),(18,'Nina Langosh','2024-04-05','2024-04-14','2024-04-21','Labore acer viduo uterque basium cresco.','2','Check-Out',43),(19,'Gregory Bogisich-Kuphal Sr.','2024-12-15','2024-12-20','2025-01-01','Tenetur suffoco eaque creber ulciscor caste.','4','Check-Out',35),(20,'Phyllis Crist','2024-08-17','2024-08-24','2024-09-06','Esse sodalitas ut casus alter creptio.','4','Check-Out',29),(21,'Jean Boehm','2024-07-21','2024-07-24','2024-08-13','Abundans stultus alias patria degero deserunt.','2','Check-In',41),(22,'Janice Abbott','2024-06-20','2024-06-23','2024-06-26','Eius barba bestia civitas barba soleo.','3','Check-In',44),(23,'Thelma Reilly','2024-02-15','2024-02-17','2024-02-27','Crastinus iusto fugit sperno vaco totidem.','4','Check-Out',42),(24,'Ms. Julia Gutkowski','2024-03-24','2024-03-25','2024-03-30','Strenuus deleniti administratio tracto ipsum natus.','1','Check-Out',28),(25,'Eduardo Bernhard','2024-07-07','2024-07-13','2024-07-31','Vinitor concido adiuvo defessus aveho argumentum.','1','Check-In',8),(26,'Dianna McCullough-Jacobs DDS','2024-01-31','2024-02-06','2024-02-18','Basium aedificium abstergo tametsi contigo praesentium.','3','Check-Out',45),(27,'Jonathan Heidenreich','2024-09-08','2024-09-18','2024-09-25','Aspernatur urbs umerus urbanus denuncio teres.','3','Check-Out',45),(28,'Viola Larkin DDS','2024-06-02','2024-06-06','2024-06-16','Stultus vulticulus placeat conforto peccatus victoria.','1','Check-In',9),(29,'Meredith Koch','2024-09-22','2024-10-02','2024-10-14','Spectaculum combibo charisma sopor ars conduco.','1','Check-Out',14),(30,'Brandy Stamm','2024-04-17','2024-04-18','2024-05-05','Patruus cunctatio desipio adipiscor arma antiquus.','3','Check-Out',20),(31,'Dominick Wilderman','2024-01-20','2024-01-27','2024-02-05','Curso convoco terreo cohibeo talio eligendi.','1','Check-In',47),(32,'Brenda Ziemann','2024-03-03','2024-03-08','2024-03-21','Celer venustas argentum confido quasi deripio.','2','Check-In',48),(33,'Mrs. Willie Hamill','2024-07-17','2024-07-25','2024-08-01','Damnatio admoneo comburo argumentum crebro creator.','1','Check-In',21),(34,'Ricky Greenfelder','2024-08-01','2024-08-10','2024-08-14','Deficio vulgo pauci auxilium theologus succurro.','2','Check-In',24),(35,'Mitchell Gislason','2024-02-04','2024-02-10','2024-02-15','Vis tepesco clam totidem comparo cursus.','1','Check-In',10),(36,'Hector Maggio','2024-11-15','2024-11-19','2024-11-22','Sui vox trucido tenuis solvo vester.','3','Check-In',45),(37,'Angie Hermiston','2024-04-16','2024-04-24','2024-05-11','Deprecator cura quam canonicus aliquam somniculosus.','1','Check-In',9),(38,'Tommie Pacocha','2024-12-25','2025-01-03','2025-01-18','Somniculosus ante angelus avaritia angustus venia.','1','Check-In',27),(39,'Rene Spencer','2024-01-20','2024-01-28','2024-02-07','Vilis cubicularis adopto eligendi deinde rem.','1','Check-Out',15),(40,'Ethel Mayer','2024-11-29','2024-12-01','2024-12-06','Cupiditate minima delinquo aperte credo adaugeo.','1','Check-In',8),(41,'Emilio Stokes','2024-12-28','2024-12-31','2025-01-15','Stips adhaero cumque colligo aequitas aliquam.','2','Check-In',5),(42,'Ron Senger','2024-11-10','2024-11-17','2024-11-20','Ceno audio advenio terga nemo utor.','3','Check-Out',46),(43,'Jake Koepp','2024-04-06','2024-04-07','2024-04-21','Agnosco censura accusator sopor accedo aggredior.','2','Check-Out',50),(44,'Yvonne Zboncak','2024-02-19','2024-02-21','2024-03-07','Doloribus cibus assentator aestus cura veritatis.','4','Check-Out',35),(45,'Dr. Elisa Pouros','2024-08-21','2024-08-28','2024-09-15','Tenuis tendo conduco usitas nesciunt veritas.','1','Check-Out',34),(46,'Guadalupe Crona IV','2024-11-05','2024-11-09','2024-11-16','Pauci ea ulciscor stella calcar sustineo.','2','Check-In',19),(47,'Maurice Beahan','2024-02-20','2024-03-01','2024-03-08','Cresco iusto charisma damnatio audax dolore.','1','Check-Out',13),(48,'Darla Mitchell','2024-04-08','2024-04-16','2024-05-04','Cotidie viriliter usitas ver odit una.','1','Check-In',7),(49,'Delores Kautzer','2024-07-24','2024-08-03','2024-08-15','Consuasor degero cui suus mollitia nesciunt.','1','Check-In',34),(50,'Leticia Price','2024-08-13','2024-08-21','2024-08-23','Sapiente neque doloremque audax catena culpa.','1','Check-In',9),(51,'Leland Reichel IV','2024-07-05','2024-07-11','2024-07-28','Deludo thesaurus timidus abscido culpo spes.','1','Check-Out',10),(52,'Daisy Hettinger','2024-04-25','2024-05-05','2024-05-21','Umbra cetera utroque trucido talio turpis.','3','Check-In',46),(53,'Garry Borer','2024-06-17','2024-06-27','2024-07-01','Laudantium defendo careo arbitro viduo summa.','4','Check-In',12),(54,'Angela Streich','2024-01-22','2024-02-01','2024-02-12','Deputo vester audeo canis capto ascit.','2','Check-In',19),(55,'Lawrence Brekke','2024-02-03','2024-02-12','2024-02-24','Amo subseco vorago demoror toties thymbra.','1','Check-In',25),(56,'Kelley Schneider','2024-10-21','2024-10-22','2024-10-24','Voluptate autem voluptas vergo absum bellum.','4','Check-In',35),(57,'Martin O\'Connell','2024-06-26','2024-06-29','2024-07-05','Thesis versus molestiae talis arbor ascit.','2','Check-Out',49),(58,'Alex Glover','2024-11-29','2024-12-05','2024-12-17','Vox adiuvo varietas sortitus acerbitas confero.','1','Check-Out',14),(59,'Sophie Graham','2024-11-22','2024-12-02','2024-12-14','Cubo caries harum delibero patrocinor curto.','4','Check-In',35),(60,'Francis Romaguera','2024-11-01','2024-11-02','2024-11-06','Copia ver harum voco averto eaque.','3','Check-In',4),(61,'Esther Wehner','2024-01-16','2024-01-18','2024-02-04','Auxilium comprehendo talus derideo absorbeo cruentus.','1','Check-In',10),(62,'Mrs. Frances Miller','2024-04-25','2024-05-01','2024-05-21','Voluptate abduco tandem vigor amicitia deputo.','1','Check-Out',13),(63,'Jake Zieme','2024-06-22','2024-06-29','2024-07-10','Porro solus usque enim civitas uberrime.','2','Check-In',19),(64,'Jacob Grant','2024-10-12','2024-10-20','2024-10-30','Delinquo vaco synagoga culpo acerbitas surgo.','3','Check-Out',46),(65,'Connie King','2024-04-14','2024-04-23','2024-05-13','Urbs terga cariosus rerum vomito acidus.','1','Check-In',10),(66,'Mr. Jerry Wiegand','2024-09-22','2024-09-27','2024-09-30','Necessitatibus curia sufficio saepe volubilis ipsam.','2','Check-In',41),(67,'Rogelio McDermott','2024-11-07','2024-11-11','2024-11-26','Culpa compono culpo coerceo cubicularis ocer.','1','Check-Out',1),(68,'Louis Leannon','2024-11-11','2024-11-12','2024-11-14','Ullam corpus coaegresco deputo tener esse.','1','Check-Out',1),(69,'Guadalupe Brakus','2024-03-18','2024-03-22','2024-03-30','Defleo adflicto concedo absorbeo video harum.','3','Check-Out',46),(70,'Jaime Jenkins','2024-07-09','2024-07-13','2024-07-17','Bestia non cernuus peccatus et coepi.','1','Check-Out',1),(71,'Karl Stiedemann III','2024-12-24','2024-12-31','2025-01-07','Damnatio ocer nisi suffragium amo admoneo.','1','Check-In',25),(72,'Ignacio Grady','2024-11-26','2024-12-02','2024-12-12','Defluo absum tepidus aptus quia aqua.','2','Check-In',38),(73,'Noah Reinger','2024-07-14','2024-07-24','2024-08-04','Auctor vox cultellus contego amaritudo convoco.','3','Check-In',45),(74,'Daisy Jast','2024-06-30','2024-07-03','2024-07-08','Denuncio defessus tricesimus consequuntur vesper atrox.','1','Check-In',1),(75,'Johnnie Treutel','2024-05-13','2024-05-22','2024-06-07','Stella comminor combibo peior adduco temporibus.','1','Check-Out',25),(76,'Jeff Schiller','2024-04-26','2024-05-04','2024-05-19','Civitas laborum verumtamen velut defluo arma.','2','Check-In',49),(77,'Monica Haley IV','2024-02-23','2024-02-24','2024-03-03','Verbera altus cohibeo earum testimonium textus.','2','Check-In',33),(78,'Dr. Leslie Rowe','2024-02-08','2024-02-09','2024-02-17','Volubilis aegrotatio antiquus trans demoror utilis.','4','Check-In',35),(79,'Kent Kirlin','2024-12-14','2024-12-22','2025-01-09','Arcus careo viriliter thalassinus dedico coruscus.','1','Check-In',21),(80,'Faye Ondricka Jr.','2024-01-14','2024-01-24','2024-02-04','Amor deputo eaque caritas summisse cito.','4','Check-Out',22),(81,'Lloyd Muller-Schaefer II','2024-06-19','2024-06-23','2024-07-13','Ventus articulus spectaculum decipio aliquid centum.','2','Check-In',17),(82,'Sue Treutel','2024-07-05','2024-07-06','2024-07-25','Ad conservo supellex ustilo corpus delibero.','2','Check-Out',30),(83,'Deanna Zboncak','2024-10-06','2024-10-15','2024-10-19','Vito vado denique adflicto summopere theatrum.','3','Check-In',39),(84,'Essie Gusikowski','2024-08-30','2024-09-08','2024-09-22','Dolor ars uterque cur amor deputo.','2','Check-In',49),(85,'Harold Pouros','2024-10-11','2024-10-16','2024-10-31','Tabgo conforto aspernatur delinquo bestia statua.','2','Check-In',5),(86,'Howard Powlowski','2024-01-01','2024-01-10','2024-01-18','Vulticulus vulnero demulceo eveniet tam eius.','2','Check-Out',24),(87,'Miriam Sanford','2024-07-11','2024-07-19','2024-07-30','Ancilla ipsa aedificium modi decens vero.','1','Check-Out',34),(88,'Roger Okuneva','2024-10-30','2024-11-09','2024-11-15','Custodia doloribus tepidus absum tolero voluptas.','3','Check-In',23),(89,'Dr. Bobby Yost','2024-08-20','2024-08-24','2024-09-09','Vulgivagus aegrus eius tactus omnis numquam.','2','Check-In',33),(90,'Shari McCullough','2024-01-17','2024-01-18','2024-01-26','Testimonium debitis verbum voco natus nam.','3','Check-Out',20),(91,'Dixie Volkman','2024-10-02','2024-10-07','2024-10-23','Statua arto canonicus absque argentum abutor.','1','Check-Out',10),(92,'Rufus Feeney','2024-07-12','2024-07-17','2024-08-01','Cicuta ceno vociferor aliqua vaco tertius.','2','Check-In',17),(93,'Herbert Ortiz','2024-05-28','2024-05-30','2024-06-12','Cohors tener civitas tabella consectetur arguo.','1','Check-Out',15),(94,'Tiffany Feeney','2024-11-02','2024-11-10','2024-11-12','Aspicio taedium ulciscor voveo pariatur colo.','1','Check-In',47),(95,'Wilfred Torphy','2024-03-29','2024-04-05','2024-04-24','Aestivus vereor tutis suffoco canis umerus.','2','Check-Out',43),(96,'Ervin Langosh','2024-02-24','2024-02-26','2024-03-07','Veritatis audeo uberrime quidem cena id.','1','Check-In',14),(97,'Jacob Strosin','2024-08-10','2024-08-18','2024-08-26','Vinum tempore angulus est blanditiis ulciscor.','4','Check-Out',29),(98,'Dr. Rick Bode','2024-12-30','2025-01-02','2025-01-05','Colo absconditus trepide claustrum velut compello.','3','Check-Out',36),(99,'Veronica Daugherty','2024-12-23','2024-12-27','2025-01-13','Victus laboriosam cicuta tubineus vergo clamo.','2','Check-In',38),(100,'Jermaine Leuschke','2024-04-29','2024-05-09','2024-05-11','Tego cognatus cribro thorax arto aufero.','1','Check-Out',1),(101,'Brett Runte','2024-12-27','2025-01-04','2025-01-14','Turpis tero laudantium depono ancilla verto.','1','Check-Out',27),(102,'Dan Feest MD','2024-08-10','2024-08-16','2024-08-25','Ipsam laboriosam cupiditate vigor agnosco texo.','3','Check-Out',32),(103,'Virginia Hudson','2024-09-25','2024-09-27','2024-10-10','Vereor adopto tum cursim facilis vado.','1','Check-Out',25),(104,'Theodore Huel','2024-07-26','2024-08-05','2024-08-07','Maiores theca usque cultura aetas crustulum.','4','Check-Out',22),(105,'Lynette Halvorson V','2024-09-25','2024-10-01','2024-10-21','Eos conventus casus creber avarus cunctatio.','3','Check-Out',23),(106,'Mr. Van Fisher','2024-09-22','2024-10-02','2024-10-12','Voluptas terra creptio colligo video tempus.','4','Check-Out',26),(107,'Russell Hauck','2024-08-26','2024-08-29','2024-09-10','Cado basium nam vitae vel tempus.','3','Check-Out',46),(108,'Lillian Abernathy','2024-03-23','2024-03-29','2024-04-04','Tutamen antiquus cruentus tempora bibo tumultus.','2','Check-In',3),(109,'Faith Boyle','2024-02-06','2024-02-14','2024-02-19','Incidunt strenuus vestrum videlicet summopere adamo.','1','Check-Out',1),(110,'Pauline Will','2024-12-03','2024-12-10','2024-12-28','Crepusculum consuasor attero antepono conculco corona.','1','Check-Out',21),(111,'Irma Breitenberg V','2024-01-02','2024-01-05','2024-01-11','Ars tunc speciosus quibusdam admitto bonus.','3','Check-Out',20),(112,'Camille Balistreri','2024-11-03','2024-11-06','2024-11-13','Accusamus conitor absum denique confero summopere.','1','Check-Out',13),(113,'Leticia Russel','2024-02-19','2024-02-27','2024-03-08','Quis terreo amissio terebro auctus vulgus.','1','Check-In',8),(114,'Charlene McDermott-Stark','2024-09-17','2024-09-23','2024-10-03','Deprecator surgo depopulo vita conforto compello.','2','Check-In',41),(115,'Lora Wunsch','2024-02-28','2024-03-05','2024-03-08','Benevolentia sono super cauda derideo atrox.','3','Check-Out',39),(116,'Linda Kemmer','2024-05-31','2024-06-08','2024-06-19','Culpo assentator sursum vinitor corrumpo stultus.','1','Check-Out',13),(117,'Ms. Kelley Durgan','2024-07-07','2024-07-14','2024-08-03','Surgo addo audio ab admiratio cubo.','2','Check-Out',33),(118,'Bill Bradtke','2024-10-07','2024-10-15','2024-10-25','Hic cruciamentum thymum iusto vulgo testimonium.','3','Check-In',20),(119,'Jordan Tremblay Sr.','2024-07-20','2024-07-29','2024-08-07','Aufero vitae tollo unus aveho subseco.','2','Check-Out',30),(120,'Rita Streich','2024-06-20','2024-06-21','2024-07-11','Denique tum hic denego ventito spectaculum.','1','Check-Out',1),(121,'Arturo Osinski PhD','2024-10-14','2024-10-17','2024-10-27','Suus ustilo suscipio optio audentia cito.','3','Check-In',39),(122,'Melody Stamm','2024-02-05','2024-02-14','2024-02-19','Capio demulceo vorago depulso amplexus aegre.','3','Check-Out',23),(123,'Boyd Feeney','2024-03-29','2024-04-03','2024-04-07','Consectetur colligo comminor solitudo aestus video.','1','Check-Out',8),(124,'Lee Hoppe','2024-03-29','2024-03-31','2024-04-02','Virgo casso ustulo delicate desolo accommodo.','2','Check-Out',5),(125,'Lori Howell','2024-03-27','2024-03-28','2024-04-01','Usitas repudiandae pax conservo molestias vestigium.','3','Check-In',6),(126,'Lee Ondricka IV','2024-08-12','2024-08-22','2024-09-06','Aliquid confugo adfero comminor adipiscor consectetur.','2','Check-In',19),(127,'Pam Hilll','2024-02-25','2024-03-01','2024-03-10','Voluptatibus consectetur audio conor victoria thorax.','3','Check-Out',4),(128,'Guy Kutch','2024-03-08','2024-03-12','2024-03-15','Bis clementia illum cotidie admitto nobis.','3','Check-In',20),(129,'Roland Fisher','2024-01-13','2024-01-22','2024-01-29','Thalassinus cinis verto cogito varietas supra.','1','Check-Out',21),(130,'Mrs. Isabel Kautzer','2024-04-27','2024-04-29','2024-05-12','Cubo cum sollers atqui annus candidus.','4','Check-In',18),(131,'Eugene Barrows','2024-08-20','2024-08-25','2024-09-01','Thalassinus una crudelis vaco speculum possimus.','1','Check-Out',7),(132,'Tami Ledner V','2024-07-18','2024-07-20','2024-07-27','Sono fuga valetudo tepesco sub velut.','2','Check-In',19),(133,'Julian Bergstrom','2024-07-04','2024-07-07','2024-07-23','Quam degenero contigo facilis contabesco videlicet.','3','Check-In',20),(134,'Samantha Ruecker','2024-11-17','2024-11-18','2024-11-27','Ab cariosus acidus atrox alienus celer.','2','Check-In',19),(135,'Byron Runolfsdottir','2024-04-19','2024-04-27','2024-05-12','Accusamus defungo deserunt repellat natus cunae.','2','Check-Out',3),(136,'Ivan Braun','2024-11-13','2024-11-18','2024-11-29','Solitudo autem nostrum tumultus pauci benigne.','1','Check-Out',25),(137,'Jesse Wiza','2024-02-02','2024-02-11','2024-02-25','Teneo laboriosam corrumpo adfero tepidus tolero.','3','Check-Out',40),(138,'Phyllis Satterfield','2024-01-21','2024-01-26','2024-02-03','Statua tempus tabernus ea adflicto stabilis.','2','Check-In',19),(139,'Rene Kemmer','2024-12-27','2025-01-06','2025-01-14','Facere sophismata compono succurro cohaero summopere.','1','Check-Out',21),(140,'Jessica Boyer','2024-05-05','2024-05-09','2024-05-28','Addo paulatim commodi delego curia summa.','1','Check-In',10),(141,'Ellen Prohaska','2024-01-06','2024-01-07','2024-01-16','Dolores damnatio ancilla decipio bibo callide.','3','Check-Out',36),(142,'Krystal Gerlach','2024-04-23','2024-04-29','2024-05-05','Tactus vobis volaticus assumenda triduana viriliter.','2','Check-Out',38),(143,'Jack Price-Howe','2024-10-05','2024-10-12','2024-10-20','Anser compono vacuus voluntarius curso velum.','3','Check-Out',45),(144,'Sheri Lemke','2024-02-10','2024-02-18','2024-03-05','Caute thorax ratione abbas crastinus cerno.','2','Check-In',33),(145,'Rodney Kshlerin','2024-09-17','2024-09-20','2024-10-09','Audeo spectaculum subiungo aut doloribus denuo.','3','Check-In',32),(146,'Ronald Witting','2024-10-28','2024-10-30','2024-11-11','Audax tempora adhaero via condico nemo.','1','Check-In',21),(147,'Rodolfo Miller II','2024-08-09','2024-08-17','2024-09-02','Volubilis eaque verto architecto atque terror.','2','Check-In',30),(148,'Patsy Predovic','2024-01-25','2024-02-03','2024-02-07','Tamquam abutor ceno vito conforto ex.','3','Check-Out',36),(149,'Candace Schoen','2024-03-09','2024-03-10','2024-03-23','Auctus timidus admoneo conturbo admoneo bis.','4','Check-Out',42),(150,'Mike Beahan-Simonis','2024-09-13','2024-09-18','2024-10-04','Aut consequuntur assentator brevis stultus vulariter.','1','Check-Out',27),(151,'Levi DuBuque','2024-04-20','2024-04-30','2024-05-05','Coadunatio sunt enim cervus tandem talis.','2','Check-Out',5),(152,'Ed Erdman','2024-06-05','2024-06-07','2024-06-12','Conicio verbum crustulum patria astrum tubineus.','3','Check-In',46),(153,'Marion Batz','2024-08-21','2024-08-30','2024-09-12','Tendo suggero colo vulpes ullus canto.','3','Check-Out',46),(154,'Mario Carroll','2024-04-24','2024-04-30','2024-05-09','Cuius teres tui depulso incidunt tribuo.','4','Check-Out',35),(155,'Ms. Eula Welch DDS','2024-12-19','2024-12-25','2025-01-03','Coniuratio contigo sequi ara surculus contigo.','2','Check-In',41),(156,'George Stanton','2024-02-01','2024-02-03','2024-02-18','Tot amplexus certe abstergo est vapulus.','1','Check-In',21),(157,'Silvia VonRueden','2024-05-08','2024-05-16','2024-05-21','Alii vulgivagus coruscus debitis via sordeo.','1','Check-Out',28),(158,'Mr. William Lockman','2024-10-07','2024-10-11','2024-10-27','Curo despecto amo appello amet carcer.','1','Check-In',2),(159,'Gladys Mosciski','2024-01-28','2024-01-30','2024-02-16','Cuius patior decipio conitor voluptates adulatio.','2','Check-In',49),(160,'Leroy Emmerich','2024-11-20','2024-11-25','2024-12-09','Vulticulus avarus vere caterva amplitudo cinis.','4','Check-In',35),(161,'Dewey Bernier','2024-09-02','2024-09-12','2024-09-15','Sortitus stipes absque ultra summisse tutis.','1','Check-Out',34),(162,'Bernadette Hudson','2024-10-13','2024-10-23','2024-11-08','Ullus appello amaritudo thermae exercitationem caput.','1','Check-Out',9),(163,'Tamara Wehner','2024-09-25','2024-10-04','2024-10-16','Suggero nemo solio voluntarius cruciamentum blandior.','1','Check-In',10),(164,'Annette Kertzmann','2024-04-07','2024-04-14','2024-05-01','Consuasor umquam compono delinquo sonitus tabesco.','2','Check-In',50),(165,'Alexis Armstrong','2024-05-23','2024-05-24','2024-06-01','Bardus arbor aequus ustulo truculenter asper.','3','Check-Out',39),(166,'Micheal Herman','2024-08-13','2024-08-21','2024-08-27','Versus amoveo acidus sortitus itaque ultio.','1','Check-Out',13),(167,'Tasha Kling','2024-01-17','2024-01-24','2024-02-10','Debitis decipio ventosus vinitor auditor curtus.','2','Check-In',17),(168,'Alejandro Gerlach','2024-09-27','2024-10-02','2024-10-20','Conor excepturi candidus circumvenio arbor conicio.','1','Check-In',28),(169,'Don Ankunding','2024-11-09','2024-11-10','2024-11-24','Adfero spiculum ratione tutamen maxime voluptas.','3','Check-In',20),(170,'Wilbur Batz','2024-03-27','2024-04-02','2024-04-20','Auxilium sodalitas minima capio stipes tunc.','4','Check-In',29),(171,'Kari White','2024-05-10','2024-05-14','2024-05-22','Sollicito consectetur aureus dedico maxime sui.','3','Check-Out',46),(172,'Chelsea Aufderhar','2024-08-14','2024-08-19','2024-08-25','Apto utroque terebro tracto sordeo tredecim.','2','Check-Out',49),(173,'Robert Buckridge','2024-08-07','2024-08-13','2024-08-21','Terror ullus valeo deleniti compono textilis.','1','Check-Out',8),(174,'Ken Sauer','2024-01-02','2024-01-04','2024-01-09','Sublime cerno delego viduo viridis cattus.','1','Check-In',7),(175,'Jared Pouros','2024-05-31','2024-06-03','2024-06-06','Cupiditas velum timidus curtus enim uberrime.','2','Check-In',43),(176,'Aaron Wolff','2024-12-08','2024-12-09','2024-12-26','Repellendus suus dicta deduco vesper aliqua.','1','Check-Out',13),(177,'Gustavo King','2024-12-22','2024-12-26','2025-01-08','Clamo caelestis commemoro valeo numquam calamitas.','3','Check-In',4),(178,'Randal Krajcik','2024-11-24','2024-12-03','2024-12-20','Aggredior tener modi culpo sapiente totidem.','2','Check-In',50),(179,'Lorena Connelly-Von','2024-02-25','2024-03-05','2024-03-15','Demergo condico vociferor cetera depromo confido.','3','Check-In',32),(180,'Gloria Kreiger','2024-12-21','2024-12-22','2025-01-06','Cibo valeo tondeo terreo enim thalassinus.','2','Check-Out',5),(181,'Yvette Auer III','2024-01-21','2024-01-28','2024-02-01','Adstringo casso ustulo tot clementia paens.','4','Check-Out',29),(182,'Dr. Hattie Adams','2024-11-21','2024-12-01','2024-12-04','Anser causa viduo subnecto adinventitias coerceo.','4','Check-In',18),(183,'Brandon Stroman','2024-04-05','2024-04-06','2024-04-16','Auxilium tandem tres tricesimus creptio thema.','4','Check-Out',35),(184,'Mark Kuhn','2024-05-08','2024-05-18','2024-06-01','Vestigium degusto altus conturbo confero crux.','1','Check-In',2),(185,'Bryant Will','2024-01-17','2024-01-19','2024-02-03','Truculenter apud vorago vulgus vilis quam.','2','Check-Out',3),(186,'Paul Schamberger','2024-05-18','2024-05-27','2024-05-30','Careo cervus corrumpo illo illum consectetur.','4','Check-In',29),(187,'Miss Laura Bahringer','2024-04-15','2024-04-20','2024-04-29','Decretum in comitatus argentum utrum caries.','3','Check-In',39),(188,'Juan Romaguera','2024-02-10','2024-02-14','2024-03-02','Termes cariosus ubi confero despecto conor.','4','Check-Out',18),(189,'Mr. Derrick Halvorson','2024-10-23','2024-10-26','2024-10-28','Appello aestas thesis utrum suppono abutor.','1','Check-Out',2),(190,'Mr. Ed Glover','2024-12-20','2024-12-21','2025-01-04','Vitae demitto minima absens ratione decet.','2','Check-Out',41),(191,'Dr. Stacy Flatley','2024-12-26','2024-12-28','2025-01-08','Verus ambitus caecus cohibeo patria ab.','3','Check-In',37),(192,'Guadalupe Gutmann','2024-08-30','2024-09-04','2024-09-08','Comptus acerbitas colligo nemo vestrum antiquus.','3','Check-In',46),(193,'Angela Bashirian-Herman','2024-03-17','2024-03-18','2024-04-01','Campana adduco vulnero angustus averto censura.','4','Check-Out',35),(194,'Mrs. Jenna Mosciski','2024-01-26','2024-01-30','2024-02-09','Amissio suggero annus compello amitto cubicularis.','3','Check-Out',44),(195,'Mae Bins','2024-11-03','2024-11-08','2024-11-10','Tempora paulatim abutor aequitas vallum suasoria.','4','Check-Out',26),(196,'Ruben Moen Sr.','2024-02-23','2024-02-29','2024-03-09','Cado deserunt sui ratione conturbo comburo.','3','Check-Out',46),(197,'Harriet Hyatt','2024-06-21','2024-06-29','2024-07-11','Demoror temeritas dolore curto utique velum.','1','Check-In',1),(198,'Raquel Ziemann','2024-02-25','2024-02-27','2024-03-17','Deduco sponte ulterius velut cras commemoro.','2','Check-Out',43),(199,'Wilbert Gleichner','2024-03-11','2024-03-16','2024-03-28','Torqueo copiose cunabula decretum vetus curo.','1','Check-Out',27),(200,'Evelyn Gerhold','2024-07-20','2024-07-26','2024-08-04','Pectus solium coniuratio adsidue venustas capitulus.','2','Check-In',17),(201,'John Doe','2024-08-20','2024-08-25','2024-08-30','Late check-in','2','Confirmed',2),(202,'Jennifer Doe','2024-08-20','2024-08-25','2024-08-30','Late check-in','3','Check-In',3);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'George Washington','+1 000 919191','gwash@government.dc','Want room','Hey dear friends, I intend to want a room.',0,'2024-09-17 10:11:58','2024-09-17 10:11:58'),(2,'Muhammad Ali','+1 000 919191','fighter@boxing.com','Punch bag needed','Hey, I want a room, but only if it has a punching bag in it. If not, nothing!',0,'2024-09-17 10:42:21','2024-09-17 10:42:21'),(3,'Malcom X','+1 000 919191','malcom@x.com','No segregation, please','If anyone dares treat me differently because I\'m an African-American, they\'ll be in trouble. Please put extra Sprite on the mini-bar.',0,'2024-09-17 10:54:01','2024-09-17 10:54:01'),(4,'Alejandro','+1 000 919191','alejandro@alex.com','Big room','Me want big room',0,'2024-09-17 10:55:49','2024-09-17 10:55:49'),(5,'Arturo Soria','+34623182390','wachuwe@gmail.com','Big room','Big room please',0,'2024-09-17 10:56:14','2024-09-17 10:56:14'),(6,'Michael Jackson','+1 000 919191','jackson@pop.com','I\'ll dance on the pool','Auuugh!',0,'2024-09-17 10:59:17','2024-09-17 10:59:17'),(7,'Michael Jordan','+1 000 919191','jordan@air.com','Have cigars or die','If there aren\'t cigars on my room, I\'ll make 80 points to ridicule you all.',0,'2024-09-17 11:00:12','2024-09-17 11:00:12'),(8,'Lionel Messi','+1 000 919191','lio@gol.com','Mate','Che poné mate en la despensa porfa',0,'2024-09-17 11:03:02','2024-09-17 11:03:02'),(9,'Michelle Obama','+1 000 919191','michelle@obama.gov','Lots of water please','I get thirsty when on the pool. You know what to do.',0,'2024-09-17 11:04:32','2024-09-17 11:04:32'),(10,'Simone Biles','+1 000 919191','biles@gymnastics.us','Want to jump','Is the pool trampoline working?',0,'2024-09-17 11:06:57','2024-09-17 11:06:57'),(11,'Angelina Jolie','+1 000 919191','angelina@movies.com','Do not disturb','If I see any paparazzies, I\'ll kill them all',0,'2024-09-17 11:08:23','2024-09-17 11:08:23');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'/assets/images/HotelRoom.jpeg'),(2,'/assets/images/HotelRoom2.jpeg'),(3,'/assets/images/HotelRoom3.jpeg'),(4,'/assets/images/HotelRoom4.jpeg'),(5,'/assets/images/HotelRoom5.jpeg'),(6,'/assets/images/HotelRoom6.jpeg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_09_02_132148_create_personal_access_tokens_table',2),(5,'2024_09_02_133257_create_activities_table',3),(6,'2024_09_17_081103_create_contact_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type_images`
--

DROP TABLE IF EXISTS `room_type_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomType` int DEFAULT NULL,
  `imageId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imageId` (`imageId`),
  KEY `fk_roomType` (`roomType`),
  CONSTRAINT `fk_roomType` FOREIGN KEY (`roomType`) REFERENCES `room_types` (`id`),
  CONSTRAINT `room_type_images_ibfk_2` FOREIGN KEY (`imageId`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type_images`
--

LOCK TABLES `room_type_images` WRITE;
/*!40000 ALTER TABLE `room_type_images` DISABLE KEYS */;
INSERT INTO `room_type_images` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,5);
/*!40000 ALTER TABLE `room_type_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types` (
  `id` int NOT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'Single Bed'),(2,'Double Bed'),(3,'Double Superior'),(4,'Suite');
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `roomType` int DEFAULT NULL,
  `rate` int NOT NULL,
  `offer` varchar(10) NOT NULL,
  `discount` tinyint DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `cancellationPolicies` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roomType` (`roomType`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`roomType`) REFERENCES `room_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'C-387',3,475,'No',0,'Placeat dicta consequatur blanditiis possimus est facilis nihil debitis velit officiis aliquam in laborum consectetur suscipit.','Available','Voluptates exercitationem ullam delectus omnis dolores.'),(2,'C-979',1,348,'Yes',22,'Amet molestiae reiciendis corrupti voluptas saepe possimus voluptatem voluptatum soluta sunt enim consequatur rerum esse et autem unde.','Booked','Qui dolore qui delectus aliquam totam.'),(3,'D-243',3,421,'No',0,'Laudantium autem ut voluptatem odit explicabo et rem sunt deserunt tempora.','Available','Dolor quasi quisquam repellat numquam nulla officiis ipsam tempora.'),(4,'C-416',2,309,'No',0,'Repellat incidunt consequatur rerum cum corporis et asperiores esse reprehenderit.','Available','Consequuntur occaecati atque est et alias animi voluptatum culpa.'),(5,'A-770',1,423,'No',0,'Voluptas illo nam harum ab nulla labore inventore nesciunt voluptas dolorem maxime neque maiores.','Available','Iure tempora facere esse aut tempora asperiores atque.'),(6,'D-742',1,266,'Yes',8,'Sequi molestiae dolorem quo aliquam asperiores nemo fugiat minima nulla iste.','Available','Harum quae excepturi aut alias praesentium illo nostrum.'),(7,'B-117',4,150,'No',0,'Quia minus ut commodi id vero consectetur non fuga delectus.','Booked','Et tempore nihil est soluta labore eos sit aliquam.'),(8,'B-263',3,246,'No',0,'Asperiores alias qui repellendus fugiat laborum rem incidunt nobis eveniet tempore eum placeat aut.','Booked','Veniam architecto dicta et ut veritatis debitis exercitationem quidem.'),(9,'B-924',3,407,'No',0,'Dolore odit vitae quam est ut ea nam quia assumenda ab repellendus.','Booked','Quia voluptatem veniam illo et optio laudantium consequatur cupiditate eum.'),(10,'D-757',2,470,'No',0,'Voluptatem quam aperiam rerum commodi occaecati magni aliquid eum aut a autem error nostrum voluptatibus iusto consequatur voluptatem tenetur ipsum tenetur.','Available','Est ipsum repellendus maxime repellendus autem iste.'),(11,'B-160',4,283,'Yes',7,'Labore aut saepe et voluptatem nisi deleniti non sed aut fugit possimus enim.','Booked','Dolorum deserunt omnis consequatur non debitis minus quidem dolorem quia omnis.'),(12,'B-731',3,278,'Yes',48,'Dolorum vel consequatur sed temporibus et ut voluptatem deleniti quam est ipsam consequatur.','Available','Cupiditate maxime laboriosam rerum amet voluptate rerum excepturi.'),(13,'B-688',2,312,'No',0,'Et cumque placeat ab tenetur accusamus eos quibusdam perspiciatis quia eos.','Booked','Ab sunt velit et sapiente quaerat autem amet iusto est necessitatibus impedit.'),(14,'B-527',4,397,'No',0,'Tempora non recusandae dolorem numquam omnis in explicabo soluta consequatur laudantium dolor consequatur quis qui non explicabo deleniti.','Booked','Fugit alias quia voluptas distinctio qui eveniet.'),(15,'D-696',4,491,'Yes',36,'Non placeat sequi iure amet voluptatem et perspiciatis sit quo beatae non qui dolorem tempora et.','Booked','Atque iure facilis sed distinctio iusto tenetur odio unde possimus.'),(16,'D-309',2,483,'Yes',14,'Voluptatibus sed rerum dolorem deserunt error ut at quidem eligendi aut.','Available','Est repellendus maiores quaerat sit non et delectus aut sit reprehenderit eum.'),(17,'A-915',2,395,'Yes',17,'Aliquam ea necessitatibus voluptatum harum ab quis ut porro libero quis vero culpa.','Available','Sed eum tempore dolorum perspiciatis sapiente ut sunt fugit ipsum sit illum.'),(18,'A-386',2,391,'No',0,'Veniam reiciendis sequi consectetur dicta unde nihil aut ut placeat excepturi eos est eos eligendi et in.','Booked','Quia sit et aut ex molestiae deleniti laborum omnis impedit.'),(19,'D-136',1,212,'Yes',29,'Beatae sequi rerum voluptas quia quos ipsam ut voluptas laborum consequuntur itaque animi dolores dolore reprehenderit distinctio quis occaecati natus occaecati.','Available','Dignissimos nemo vero non molestiae similique earum facere corporis.'),(20,'D-707',1,447,'No',0,'Culpa est voluptas cumque dolor rerum odio est consequuntur consequatur reiciendis beatae labore eius in voluptatem.','Available','Natus iure fugit distinctio omnis quod a.'),(21,'D-706',4,225,'Yes',26,'Et ea provident doloremque non dolore nam debitis ipsum officiis dolores ut est enim molestias magnam pariatur accusantium beatae amet.','Available','Rerum tenetur natus totam incidunt autem.'),(22,'C-205',2,314,'Yes',35,'Voluptas deserunt dolores a praesentium cumque nobis natus voluptas sit veritatis et quia error ea.','Available','Aperiam ab iusto qui distinctio ut.'),(23,'C-279',3,245,'Yes',30,'Ad alias libero atque expedita sint est ut sint libero nulla dolor hic consequatur laboriosam.','Available','Tempore commodi aut nemo earum consequatur.'),(24,'B-216',3,194,'Yes',26,'Totam unde quod et rerum temporibus perferendis ad nostrum perferendis itaque magnam rerum aspernatur id.','Booked','Quod consequatur voluptatem voluptates officiis quae tenetur eum voluptatem at quia.'),(25,'D-642',4,309,'Yes',32,'Ut culpa et iure aut accusantium consequuntur qui qui voluptatibus corporis numquam qui aspernatur hic eveniet quos.','Available','Minima vel dolores quia esse dolorum.'),(26,'B-893',2,338,'No',0,'Et repudiandae nihil aut fugiat aut perferendis facere reiciendis iusto quas non quia blanditiis nihil.','Booked','Et earum officia ut nesciunt consequatur adipisci dolores sint.'),(27,'B-865',3,159,'No',0,'Non possimus consequatur minima laudantium suscipit sint quia exercitationem ratione tempore occaecati accusamus voluptas cum molestias cum rerum aut fuga.','Available','Mollitia provident sunt molestiae dignissimos enim eum.'),(28,'D-930',3,184,'No',0,'Animi magnam quia veritatis molestiae quos quia corrupti voluptates et cupiditate animi impedit laboriosam ea consequuntur nemo quam ut fuga perspiciatis.','Available','Numquam nihil ut eligendi consectetur enim.'),(29,'A-214',1,261,'Yes',26,'Ullam repellendus et ad repellat quam veniam ut qui ut ab in ipsam repellendus.','Booked','Ducimus ea nisi aut nisi.'),(30,'D-930',1,425,'Yes',48,'Possimus necessitatibus eveniet molestiae tenetur deleniti voluptates eveniet dolores soluta iusto vel perferendis quis aut eos numquam voluptatem.','Available','Quam omnis voluptatem dignissimos ut quod veritatis mollitia unde temporibus libero.'),(31,'A-272',2,174,'No',0,'Iure doloribus eius sed nihil dolorem rerum temporibus aut nesciunt officiis quia vitae nesciunt aut sapiente velit ratione voluptatem ut.','Available','Et iure accusantium officia sequi ut ea et suscipit blanditiis aut aliquam.'),(32,'A-374',4,271,'Yes',21,'Totam veniam maiores et ut aspernatur delectus voluptate odio esse aperiam error quis aut facilis velit non adipisci expedita.','Booked','Praesentium ea eos aspernatur nobis adipisci incidunt harum.'),(33,'A-220',2,500,'No',0,'Ducimus culpa neque praesentium quisquam praesentium ducimus placeat tempore fugiat velit beatae incidunt nam aut nulla quidem.','Booked','Autem iure occaecati quia quisquam in aut cum aut neque consequatur.'),(34,'A-885',2,226,'Yes',14,'Soluta eaque ut iure pariatur dolorum tempore ut tempora ut enim incidunt.','Booked','Et magni quia laborum neque dignissimos.'),(35,'D-519',4,181,'Yes',11,'Et repellendus minus consequatur soluta consequatur ex dolorum quasi excepturi qui quis.','Available','Quo hic velit velit ut quia qui quibusdam.'),(36,'B-459',3,259,'No',0,'Molestias ea facere nesciunt sunt molestiae vitae dignissimos dolor est dignissimos voluptatem ex aut eos deleniti non.','Available','Rerum nesciunt temporibus unde illum nobis rerum nisi esse expedita.'),(37,'D-569',1,206,'No',0,'Est quibusdam tenetur quia rem possimus eum nobis error id aspernatur aut molestias.','Booked','Quia id dolor rerum perspiciatis animi qui non laborum nesciunt temporibus.'),(38,'D-996',3,345,'Yes',35,'Recusandae dolor id illo non exercitationem esse dolorem ipsa dolorem ad.','Booked','Sit accusantium aliquid est deleniti consequatur aut et eligendi.'),(39,'B-235',4,176,'No',0,'Voluptate mollitia debitis consequuntur laboriosam voluptates illum porro aut possimus et repudiandae iste et.','Available','Enim vitae tenetur est nobis in molestias autem quod eveniet.'),(40,'D-993',1,220,'No',0,'Aut voluptas deleniti quam et eligendi tempora non at voluptatem et laboriosam nostrum dolor est accusamus nostrum facere.','Booked','Quis unde repudiandae eos quia laudantium quis.'),(41,'C-744',3,407,'No',0,'Ipsam autem placeat similique dolores sed ipsam dolor facilis molestias quae voluptatum ut repellat recusandae omnis reprehenderit magni.','Booked','Quas neque suscipit veritatis et recusandae voluptatem error autem assumenda.'),(42,'A-660',1,469,'Yes',32,'Tenetur ut fugiat culpa autem neque dolores corrupti error qui excepturi.','Booked','Tempore eius nesciunt ut soluta officiis et veniam cum et.'),(43,'B-894',2,490,'Yes',46,'Voluptatem quisquam ut adipisci odio repudiandae veritatis autem et quas laudantium ea eos quia molestiae.','Booked','Dolorem adipisci rerum reiciendis hic corporis dolore sint velit.'),(44,'A-927',2,295,'No',0,'Tempora odit quia id eum ea consectetur facilis eveniet voluptate voluptatem est aut.','Booked','Voluptatem numquam deserunt qui fugiat neque aut rerum enim aliquid iusto.'),(45,'C-179',1,284,'No',0,'Unde aut placeat placeat aspernatur sapiente dolores quis tenetur dicta id placeat ut ea expedita molestias.','Available','Cumque aut doloribus officia non harum quos quas animi tenetur.'),(46,'C-336',2,237,'Yes',15,'Voluptas quia voluptate consequatur quo non eaque sit quo aut ullam hic sint autem.','Available','Omnis qui est autem aspernatur incidunt facere.'),(47,'D-971',3,309,'Yes',22,'Voluptatem quia et facilis quisquam nobis ut voluptas est nemo maxime corporis vero cum dolorem aspernatur.','Booked','Doloremque earum fugit eligendi rerum asperiores qui deserunt quia porro.'),(48,'C-465',1,463,'Yes',10,'Quidem libero debitis recusandae impedit iure sunt architecto enim porro est quia.','Booked','Maiores illum non est et at dolor impedit accusamus aut.'),(49,'C-544',3,184,'No',0,'Voluptate reprehenderit voluptatem est voluptatibus quia autem provident id velit accusantium maxime tempore consequatur sed blanditiis.','Booked','Rem et eum mollitia a dicta.'),(50,'C-742',1,223,'Yes',38,'Cum ab esse natus mollitia quo facilis animi autem at voluptas iure suscipit laudantium ullam cupiditate asperiores aliquid vel sit.','Available','Cupiditate optio praesentium quo rerum praesentium.');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_amenities`
--

DROP TABLE IF EXISTS `rooms_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_amenities` (
  `roomId` int DEFAULT NULL,
  `amenityId` int DEFAULT NULL,
  UNIQUE KEY `roomId` (`roomId`,`amenityId`),
  KEY `amenityId` (`amenityId`),
  CONSTRAINT `fk_roomId` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `rooms_amenities_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`),
  CONSTRAINT `rooms_amenities_ibfk_2` FOREIGN KEY (`amenityId`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_amenities`
--

LOCK TABLES `rooms_amenities` WRITE;
/*!40000 ALTER TABLE `rooms_amenities` DISABLE KEYS */;
INSERT INTO `rooms_amenities` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,7),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(3,1),(3,2),(3,7),(4,1),(4,5),(4,6),(4,7),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(6,3),(6,4),(6,7),(7,1),(7,3),(7,4),(7,6),(8,1),(8,2),(8,3),(8,5),(8,6),(9,1),(9,4),(9,5),(9,7),(10,2),(10,3),(10,4),(10,5),(10,7),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(12,3),(12,4),(12,6),(12,7),(13,2),(13,3),(13,5),(14,1),(14,5),(14,6),(14,7),(15,2),(15,3),(15,5),(15,6),(15,7),(16,3),(16,6),(16,7),(17,1),(17,2),(17,5),(18,3),(18,6),(18,7),(19,1),(19,2),(19,5),(19,6),(20,2),(20,3),(20,4),(20,5),(20,7),(21,1),(21,2),(21,3),(21,6),(22,1),(22,2),(22,3),(22,4),(22,5),(23,1),(23,2),(23,3),(23,5),(23,7),(24,1),(24,2),(24,4),(24,6),(24,7),(25,1),(25,5),(25,7),(26,1),(26,3),(26,4),(26,5),(27,2),(27,3),(27,4),(27,5),(27,6),(28,3),(28,5),(28,6),(29,5),(29,6),(29,7),(30,2),(30,3),(30,4),(30,5),(30,6),(30,7),(31,1),(31,2),(31,3),(31,4),(31,5),(31,6),(31,7),(32,1),(32,2),(32,3),(32,4),(32,5),(32,6),(32,7),(33,1),(33,3),(33,4),(33,5),(33,7),(34,1),(34,2),(34,3),(34,4),(34,5),(35,2),(35,3),(35,4),(35,5),(35,6),(36,1),(36,4),(36,5),(36,7),(37,3),(37,6),(37,7),(38,3),(38,4),(38,6),(38,7),(39,1),(39,3),(39,4),(39,5),(39,6),(39,7),(40,1),(40,2),(40,3),(40,4),(40,7),(41,1),(41,5),(41,6),(41,7),(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(43,2),(43,4),(43,6),(43,7),(44,1),(44,3),(44,4),(44,5),(44,6),(44,7),(45,2),(45,4),(45,6),(45,7),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(46,7),(47,1),(47,2),(47,3),(47,4),(48,2),(48,3),(48,5),(48,6),(48,7),(49,1),(49,2),(49,3),(49,4),(49,7),(50,1),(50,2),(50,6);
/*!40000 ALTER TABLE `rooms_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('m1SksG2PnCB4yUKWmVujhsOt1qXS4WcyqUPJMKzq',NULL,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVd1VnJscGVwRGUzSzQ3NVB4blZ0S2g1blVVTVBDSzkzc2puNUh5RCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9sb2NhbGhvc3Qvb2ZmZXJzIjt9fQ==',1726675324);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `incorporatedOn` varchar(10) NOT NULL,
  `jobDesk` varchar(255) NOT NULL,
  `schedule` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Jan Kris','Harry72','https://picsum.photos/seed/OGMoVzWGTb/640/480','01-01-24','Cedo cunctatio sublime aptus.','Monday - Friday','763-613-7209 x1983','Available','Global Paradigm Assistant','Adelle.Romaguera@yahoo.com','$2a$10$3y/tgFurIGWWY0LR9Y5QMeQoqnmhn/dj.l57J4.XFk5WqFVc69pJq'),(2,'Daniel Huels','Kian_Frami23','https://picsum.photos/seed/rqGjCBf/640/480','01-01-24','Paulatim utique aetas stipes.','Monday - Friday','292-470-7088 x9759','Available','Corporate Accounts Associate','Haven_Schuster78@gmail.com','$2a$10$eTyflu6SGS7vGJAbHWjU1eWwIPUsXF1IHRYQoCwk1pHOqMOwlttP.'),(3,'Lynette Braun II','Precious_Streich80','https://picsum.photos/seed/tTtTBAn/640/480','01-01-24','Cedo spero suscipio cupressus.','Monday - Friday','1-214-666-3130 x404','Available','Direct Paradigm Designer','Chance_Hauck54@yahoo.com','$2a$10$h99E/yuZiGftv9FHEkl5Mehwj/kLEV9ZIg4DKuXIrki4aoOOLWAra'),(4,'Russell Rodriguez','Tyrel51','https://picsum.photos/seed/fV7qF/640/480','01-01-24','Ver vacuus adaugeo textus.','Monday - Friday','(301) 928-9919','Available','Human Integration Developer','Wilhelm_Runolfsson@yahoo.com','$2a$10$EZFnc.DAF44Bam8FwUHq8eOu.ta97ZqGgxl5EvXnviAgpNfF6yEGy'),(5,'Regina Hermann','Isaac93','https://picsum.photos/seed/wh4sJFR/640/480','01-01-24','Blanditiis terror adhaero amplexus.','Monday - Friday','597.673.0438','Available','Future Creative Supervisor','Faye_Blick25@yahoo.com','$2a$10$pyM1Icd9lxx8cazAOI7EieeZmnQmsL7r49RdJiroq9yyu9sLpbVGa'),(6,'Rufus Schultz','Dax.Feeney','https://picsum.photos/seed/KKooyoLr/640/480','01-01-24','Vulpes subiungo adulescens textor.','Monday - Friday','1-706-235-0311','Available','National Communications Agent','Jules.Bogisich74@yahoo.com','$2a$10$EnRemU3sRFfi.a5Yx8GcTuWCMq/C78oEMQMtYR9nk.B/uvA15utRG'),(7,'Willie Schamberger','Yasmin4','https://picsum.photos/seed/qxAYO/640/480','01-01-24','Eum valetudo stillicidium nemo.','Monday - Friday','708-498-3829','Available','Lead Functionality Producer','Brad_McCullough@yahoo.com','$2a$10$maRS2mKJ9J4rY/p6Tv/oFOn6B9wZKO6CvOuLrk8Bb5OhY4qUwnEOa'),(8,'Kay Larkin','Araceli.Schinner62','https://picsum.photos/seed/tsgnDt0/640/480','01-01-24','Quod angustus atqui sufficio.','Monday - Friday','1-570-939-6878 x38576','Available','Human Interactions Engineer','Emery.Cronin99@yahoo.com','$2a$10$.86wC0BdwPhUZ.0egXm8O.Z.26oFehcd2WCRiqDnoS623pJUZseaC'),(9,'Sonia Paucek MD','Carissa31','https://picsum.photos/seed/aljyZFjx8l/640/480','01-01-24','Deputo cunctatio cedo soleo.','Monday - Friday','(508) 212-9976','Available','Lead Accountability Designer','Jo_Harber@yahoo.com','$2a$10$J9GVyOTsdJErDZYSlb3Q4.P1djUQXdzxy4nFJT0o9zwNRMqrEWdAi'),(10,'Mack Blanda-Grimes','Jaylin51','https://picsum.photos/seed/9YfnsFTrZ/640/480','01-01-24','Crustulum alter deludo creber.','Monday - Friday','1-413-418-5828 x1430','Available','Dynamic Optimization Producer','Janessa_Donnelly@yahoo.com','$2a$10$IfXfS5umIzq58/DgvQd7m.qDIRKVXlcSWK4aTx6dV2YKsmqTQ6UGu'),(11,'Gertrude Thiel','Einar_Daugherty','https://picsum.photos/seed/NIAINS/640/480','01-01-24','Terga id curatio comitatus.','Monday - Friday','1-529-506-0172 x0813','Available','Product Functionality Strategist','Douglas_Gerhold-Prosacco@gmail.com','$2a$10$GSnR0ylRii248kv/iRNw/u7SGP3BDAfH9FuewBp0F2qiUbBbxKLXy'),(12,'Elena Aufderhar','Ebony.Wolff92','https://picsum.photos/seed/pTB7oy/640/480','01-01-24','Universe patria viduo sono.','Monday - Friday','(822) 525-1828 x4972','Available','Legacy Configuration Supervisor','Jaiden.Lehner97@yahoo.com','$2a$10$rnBN.7UERYHTefw6p0rBWe2MTAOc59YRvX2Bkodq0SHYPMnFRmd8C'),(13,'Domingo Koepp','Angelita.Nikolaus','https://picsum.photos/seed/8MmZcKyHE9/640/480','01-01-24','Villa termes quidem solum.','Monday - Friday','511-779-5466 x6200','Available','Forward Intranet Representative','Elfrieda.McLaughlin45@hotmail.com','$2a$10$ilj05FaMhAbF3Kk1rlCdLuKvEeZFjbn5e3ylseRR7dF70RoNqZ3lq'),(14,'Dr. Milton Moore','Maiya.Stroman70','https://picsum.photos/seed/wRuDu8tp/640/480','01-01-24','Vergo torqueo abscido termes.','Monday - Friday','(339) 203-3651','Available','Regional Data Specialist','Paige86@hotmail.com','$2a$10$G6kTpoBgqP8t5wg7jGnL2.liCH/H9N6wxTDOtEL3ReB8wT1vBP9QK'),(15,'Sonia O\'Reilly DDS','Raoul85','https://picsum.photos/seed/lN24BWL/640/480','01-01-24','Civitas approbo causa aro.','Monday - Friday','869.269.1392 x9841','Available','Central Applications Engineer','Theodora.Hodkiewicz@yahoo.com','$2a$10$qVPKI0Rvv.tCROA4Iy9YauNRJKRXoEcGv3HSGcb4jaLGvaapeUya2'),(16,'Ms. Joyce Zemlak','Edwin.Conn0','https://picsum.photos/seed/PPK0AkPx/640/480','01-01-24','Id stultus autem vito.','Monday - Friday','1-516-681-3817 x68774','Available','Investor Accountability Director','Mossie.Marvin@gmail.com','$2a$10$ZwwbOnsLl2uPf7J7ckLSteDagkRrvv6pQmXRB/PnLvVYzFU3shrKu'),(17,'Joann Dickinson','Liana27','https://picsum.photos/seed/RYrlcmFcJ/640/480','01-01-24','Nisi cresco soleo alias.','Monday - Friday','621-306-7356 x6046','Available','Future Solutions Agent','Adelia63@gmail.com','$2a$10$cZOZ7WQg5xxYmSzL6sAna.nCO1L/y9QkCPZTzcoVvadcFCQjULJcG'),(18,'Melissa Nicolas','Myrtis56','https://picsum.photos/seed/MAn9T/640/480','01-01-24','Dedecor tepidus comparo ulterius.','Monday - Friday','370-595-6019 x8624','Available','Regional Research Executive','Aditya76@yahoo.com','$2a$10$mLbpxVOt4urLDZgYHhBM1ObaInYab2BjGc5wazLHSLQOaW788KVl.'),(19,'Darrell Sanford','Harley_Rice26','https://picsum.photos/seed/AcN1De/640/480','01-01-24','Damno crapula deleniti altus.','Monday - Friday','(528) 974-7932','Available','National Intranet Facilitator','Camren80@gmail.com','$2a$10$FZ8HAVIuZCZdWJyT4xXtzee9n0I/ummJkK2nfeD5Z7uu8ENGUFbBG'),(20,'Rolando Marks','Art98','https://picsum.photos/seed/KqXG1/640/480','01-01-24','Dolores verumtamen cernuus rem.','Monday - Friday','662-830-1746 x7201','Available','Dynamic Creative Executive','Georgianna.OHara87@gmail.com','$2a$10$TrcL9mgXSM.kg9anCe4d9OOnAJp0fXu4QnkSQaBNKtJlYngQcoZMu'),(21,'John Doe','username','image.jpg','2023-08-21','Software Engineer','9 AM - 5 PM','123-456-7890','active','admin','username@example.com','$2a$10$CeLtd57NAeZFAt7jSt5aK.7Y01BmEeeU.e413IDSDZmaFSCaerKje');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John Doe','john.doe@example.com',NULL,'$2y$10$...',NULL,'2024-09-05 10:17:27','2024-09-05 10:17:27'),(2,'Alejandro','alejandroluisacosta95@gmail.com',NULL,'$2y$12$/NYVJepN9yD/4llF5rhLxuaRHmuQcKyl9vJJBGs/j89dkIssY.AcW',NULL,'2024-09-09 10:22:25','2024-09-09 10:22:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-19 10:37:58
