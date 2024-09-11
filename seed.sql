-- MySQL dump 10.13  Distrib 9.0.1, for macos14 (arm64)
--
-- Host: localhost    Database: miranda
-- ------------------------------------------------------
-- Server version	9.0.1

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
INSERT INTO `amenities` VALUES (1,'Gym'),(2,'Pool'),(3,'Jacuzzi'),(4,'Room Service'),(5,'TV'),(6,'Hot Water'),(7,'Wi-Fi');
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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'url1'),(2,'url2'),(3,'url3'),(4,'url4'),(5,'url5');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
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
-- Table structure for table `room_types_images`
--

DROP TABLE IF EXISTS `room_types_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_types_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomType` int DEFAULT NULL,
  `imageId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomType` (`roomType`,`imageId`),
  KEY `imageId` (`imageId`),
  CONSTRAINT `room_types_images_ibfk_1` FOREIGN KEY (`roomType`) REFERENCES `room_types` (`id`),
  CONSTRAINT `room_types_images_ibfk_2` FOREIGN KEY (`imageId`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types_images`
--

LOCK TABLES `room_types_images` WRITE;
/*!40000 ALTER TABLE `room_types_images` DISABLE KEYS */;
INSERT INTO `room_types_images` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,5);
/*!40000 ALTER TABLE `room_types_images` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Olive Schinner Jr.',1,40,'No',36,'Condico arbor audax curriculum candidus sopor.','Booked','Facilis tardus victus creptio.'),(2,'Jerome Hane',1,4,'No',57,'Curtus cotidie statua facere patrocinor quod.','Booked','Agnitio ipsam tantillus est.'),(3,'Candace Schamberger',2,96,'Yes',79,'Commodo volubilis repellendus teres titulus adsuesco.','Available','Absorbeo dolorem vos synagoga.'),(4,'Mr. Victor Gutmann',3,16,'No',57,'Commodo carpo speculum confero crebro despecto.','Available','Beatae bibo ver arceo.'),(5,'Carolyn Hegmann',2,30,'No',81,'Rem tener decor corrigo nisi charisma.','Available','Solutio tripudio tantillus decipio.'),(6,'Lionel Nikolaus-Kohler',3,19,'Yes',0,'Volubilis carcer uredo asperiores stips impedit.','Booked','Circumvenio depopulo caute quisquam.'),(7,'Brooke Hammes-Abbott',1,42,'Yes',13,'Cupressus adnuo corrupti conventus corona ambitus.','Available','Cura civitas tego tener.'),(8,'Hattie Pollich',1,87,'Yes',58,'Acerbitas acsi caelum ad est eligendi.','Available','Repudiandae repellat aetas aequus.'),(9,'Christy Schmitt DDS',1,87,'No',33,'Spargo maxime admiratio deduco aduro cursus.','Booked','Terreo acsi calco animus.'),(10,'Grady Schuppe',1,17,'Yes',1,'Speciosus cicuta admoneo caritas creator arbor.','Booked','Acceptus laudantium neque tenetur.'),(11,'Kristie Huel',2,72,'No',72,'Admitto conduco vitiosus dens collum ipsum.','Available','Canis cubitum cohibeo tego.'),(12,'Joy Christiansen',4,39,'Yes',72,'Spectaculum blanditiis cognatus bellicus desino curto.','Booked','Viriliter cresco avaritia deleniti.'),(13,'Frederick Trantow',1,93,'No',77,'Armarium aedificium vindico cauda chirographum sumptus.','Booked','Aspernatur vestrum casso universe.'),(14,'Bessie Little',1,96,'Yes',80,'Utpote nemo abundans torrens vel vesica.','Available','Aequus cavus deserunt vulnus.'),(15,'Luther Smitham',1,31,'Yes',16,'Addo virgo textus talus amitto assentator.','Available','Aedificium quidem sono catena.'),(16,'Hattie Jerde',2,96,'No',56,'Pecus complectus advoco capitulus laboriosam necessitatibus.','Available','Aspernatur esse thymum blanditiis.'),(17,'Melinda Hettinger',2,24,'No',11,'Solium utrum conculco viridis corroboro supplanto.','Booked','Dedecor concido vivo victoria.'),(18,'Eloise Buckridge',4,47,'No',52,'Celo commemoro benigne solium abscido cunctatio.','Available','Sulum solvo commodi canonicus.'),(19,'Mrs. Kate Fahey',2,79,'No',43,'Abeo succurro usus cubitum abbas viduo.','Available','Abbas condico chirographum inflammatio.'),(20,'Rachael Berge-Lebsack',3,65,'No',16,'Uter vero uberrime optio spectaculum angulus.','Available','Ager uter capto combibo.'),(21,'Celia Breitenberg',1,42,'Yes',67,'Tredecim trepide sustineo capio delicate umerus.','Booked','Alioqui absconditus utrum vapulus.'),(22,'Dr. Cameron Welch',4,18,'No',62,'Tutamen tergo atqui aestas iure cena.','Available','Voluptates accedo asper itaque.'),(23,'Cory Goldner',3,46,'Yes',36,'Decretum suscipio ventosus qui trans blanditiis.','Available','Blanditiis avaritia antea delinquo.'),(24,'Constance Lang',2,6,'Yes',63,'Demoror traho timidus bibo viridis vilis.','Booked','Inventore error veritatis ambitus.'),(25,'Meghan Hand',1,75,'No',33,'Denego conduco curiositas suppono cernuus solum.','Booked','Debilito caries termes tabernus.'),(26,'Kelly Cummerata',4,73,'Yes',29,'Cervus aqua admiratio sodalitas abduco abutor.','Available','Vilicus corona eligendi spargo.'),(27,'Lindsay Rice',1,58,'No',99,'Tenuis error natus textor recusandae celebrer.','Booked','Consequatur trado balbus aureus.'),(28,'Charlie Hauck',1,25,'No',41,'Texo vomica labore ager charisma depulso.','Available','Cetera confugo censura conor.'),(29,'Anthony Padberg',4,84,'No',55,'Architecto studio tribuo usque veniam quisquam.','Available','Reprehenderit maxime antea cupiditas.'),(30,'Beverly Sauer',2,75,'No',23,'Truculenter virga campana ustilo civis molestiae.','Available','Sollers amplitudo culpa clarus.'),(31,'Maggie Vandervort',1,47,'No',40,'Ventito delectus aer voluptatem bos curatio.','Booked','Repellendus tertius vivo atrox.'),(32,'Miss Kristy Beier',3,23,'Yes',3,'Cum tego beatae ater arto summa.','Available','Quo ambitus terra chirographum.'),(33,'Ellis Prohaska',2,40,'Yes',27,'Porro conturbo abscido tibi spargo iure.','Booked','Desipio teres timor colo.'),(34,'Elisa Leuschke',1,5,'Yes',43,'Tactus dolor appositus claro abundans molestiae.','Booked','Comitatus speculum carpo suasoria.'),(35,'Guy Herzog',4,15,'Yes',12,'Degenero sui comprehendo spero sponte concido.','Available','Peccatus vulgivagus suffragium apto.'),(36,'Dr. Cameron Dooley',3,76,'Yes',75,'Campana accendo cognatus cui concido tredecim.','Available','Trucido nobis esse deorsum.'),(37,'Rhonda Emmerich',3,62,'Yes',97,'Sui curvo carcer caterva depromo cupio.','Available','Argumentum comparo ventus bellicus.'),(38,'Wallace Volkman',2,46,'No',99,'Caste despecto suppellex studio abduco trepide.','Booked','Synagoga absens nulla substantia.'),(39,'Roger Beatty',3,23,'Yes',35,'Calco vir verbum vereor ulciscor deserunt.','Booked','Comedo tyrannus stillicidium tutis.'),(40,'Dr. Rick Harber-Jones',3,56,'No',69,'Vulgo appono verbera ustilo eos maiores.','Available','Subseco compello vito degenero.'),(41,'Janis Bailey',2,57,'No',17,'Vicinus testimonium somniculosus clamo copiose maxime.','Available','Arma amoveo testimonium sto.'),(42,'Mr. Ryan Rogahn',4,54,'Yes',35,'Vigor trepide sophismata texo conitor canis.','Available','Combibo acceptus fuga volup.'),(43,'C-981',2,95,'Yes',89,'Verbum astrum tum stella sit solus.','Booked','Tamquam sortitus caecus spoliatio.'),(44,'Suite C-300',3,25,'Yes',86,'Teneo censura demonstro cupressus depopulo aurum.','Booked','Comparo tactus addo tepidus.'),(45,'Double Room B-909',3,62,'Yes',57,'Taedium caelestis careo accendo spiculum demens.','Available','Administratio thymbra spiritus turbo.'),(46,'Double Superior Room B-010',3,81,'No',54,'Utrimque creo commodi decerno decet damno.','Available','Vapulus appello vicinus magnam.'),(47,'Suite C-231',1,4,'No',31,'Coniuratio crinis cura temptatio pauci valeo.','Available','Talus thorax thorax libero.'),(48,'Single Room A-777',2,90,'No',5,'Molestiae appello culpo laborum sortitus taceo.','Booked','Comptus combibo ulterius deserunt.'),(49,'Suite A-123',2,73,'Yes',20,'Ventosus thymum cenaculum vespillo viduo coma.','Booked','Caveo taceo tempus delectatio.'),(50,'Double Superior Room D-510',2,11,'No',21,'Sto arbitro vel temperantia celo asper.','Booked','Peior libero tot coniuratio.'),(57,'Single Room A-541',1,250,'10%',10,'A spacious suite with modern amenities.','Available','Free cancellation within 24 hours.'),(58,'Double Room B-321',1,250,'10%',0,NULL,'Available',NULL),(66,'Single Room C-137',1,150,'No',0,'A spacious deluxe room with a king-size bed and city view.','Available','Free cancellation within 24 hours'),(67,'Single Room B-331',1,125,'yes',5,'Small room','Available','24 hours'),(68,'Single Room B-331',1,125,'yes',5,'Small room','Available','24 hours');
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
INSERT INTO `rooms_amenities` VALUES (57,1),(57,2),(57,7),(58,1),(66,5),(66,7);
/*!40000 ALTER TABLE `rooms_amenities` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-01 15:57:53
