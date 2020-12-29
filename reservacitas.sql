CREATE DATABASE  IF NOT EXISTS `reservacitas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reservacitas`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: reservacitas
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_12_02_043518_especialidad',1),(4,'2020_12_02_212222_create_specialties_table',1),(5,'2020_12_19_023436_create_work_days_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialties`
--

LOCK TABLES `specialties` WRITE;
/*!40000 ALTER TABLE `specialties` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialties` ENABLE KEYS */;
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
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Martin Antunez','antunezmartin@outlook.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','46632454','jr.comercio','940303627','admin',NULL,'2020-12-19 09:41:56','2020-12-19 09:41:56'),(2,'Brannon Nikolaus','gutmann.emmy@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','32261836','1021 Bayer Heights Suite 366\nDelfinaport, NH 96044','+4548038006522','doctor','ina9qQscXV','2020-12-19 09:41:56','2020-12-19 09:41:56'),(3,'Prof. Giuseppe Daugherty','lamar.stehr@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','22036667','1163 Thompson Oval Suite 569\nSouth Isomborough, OH 58888-2955','+9688931029326','patient','V3Wgb5bYLo','2020-12-19 09:41:56','2020-12-19 09:41:56'),(4,'Casey Gleason','elnora66@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','21952223','568 Beier Point Suite 533\nEast Elsieview, ME 64295-7851','+3993914210620','doctor','0KibhBhfVt','2020-12-19 09:41:56','2020-12-19 09:41:56'),(5,'Alexie Buckridge','kgraham@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','22133519','44796 Helmer Extensions\nEast Violetfort, AZ 59096','+4820856982312','patient','hxIFJ25gze','2020-12-19 09:41:56','2020-12-19 09:41:56'),(6,'Clinton Walsh','lwehner@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','63778183','240 Jody Spurs\nStrackestad, HI 64920','+1889813769092','patient','MxtK5Fz6S8','2020-12-19 09:41:56','2020-12-19 09:41:56'),(7,'Dr. Graham Dickens','carlos62@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','14931611','902 Fritsch Glen\nSouth Antonettabury, NM 69997-3487','+7792774811965','doctor','0yvrEHXkdF','2020-12-19 09:41:56','2020-12-19 09:41:56'),(8,'Kayley Emard','shemar.hessel@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','30674558','522 Carissa Parkways\nEast Conrad, NH 83875','+7198571170284','patient','3fJOVajtKa','2020-12-19 09:41:56','2020-12-19 09:41:56'),(9,'Betty Prosacco','lmcclure@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','84847618','65354 Chelsie Manor Apt. 566\nWest Cathrynmouth, OH 34813-1406','+1198064681499','doctor','jcvmkHN8Nq','2020-12-19 09:41:57','2020-12-19 09:41:57'),(10,'Chad Price','luettgen.norberto@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','29532111','76095 Clementine Lake Suite 978\nBreitenbergton, SD 64717','+2180008068596','patient','OrNJIddi7x','2020-12-19 09:41:57','2020-12-19 09:41:57'),(11,'Laisha Halvorson','jordi29@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','19185955','7569 Malika Circle\nNorth Magnusfurt, KY 44993','+8564693042880','doctor','O7OnV7lzct','2020-12-19 09:41:57','2020-12-19 09:41:57'),(12,'Candida Jones','magnus.kovacek@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','46773742','946 Fritsch Camp Suite 843\nLake Orieburgh, NM 30372','+2822571295964','patient','aJhdFOpyUc','2020-12-19 09:41:57','2020-12-19 09:41:57'),(13,'Mr. Davin West','schumm.jalon@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','63539774','9447 Jacinto Courts\nNew Aubrey, MI 02230','+8403671461368','doctor','IO2mLJ6C6Z','2020-12-19 09:41:57','2020-12-19 09:41:57'),(14,'Juana Shanahan','ward.jovany@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','17005632','51589 Wolf Valleys Apt. 096\nAshtonview, UT 91420-7283','+1129215066414','patient','VcF2cFfYes','2020-12-19 09:41:57','2020-12-19 09:41:57'),(15,'Ahmad Lockman','natasha23@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','84151410','6532 Selina Flat\nPort Robert, VT 66883-3973','+3636677148364','patient','OS2tLk77dR','2020-12-19 09:41:57','2020-12-19 09:41:57'),(16,'Donnell Mraz','orn.lawson@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','61379114','95578 Larkin Mills Suite 164\nMichealburgh, NV 82267','+8155415227350','patient','jnEbaU0n3u','2020-12-19 09:41:57','2020-12-19 09:41:57'),(17,'Bartholome Beahan','ozella.huel@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','96596462','9347 Jast Corners\nLake Lambert, NE 93107','+4647779476775','doctor','h5bst4orOY','2020-12-19 09:41:57','2020-12-19 09:41:57'),(18,'Mrs. Jazmyne Konopelski I','csauer@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','85969184','6885 Leannon Isle Apt. 516\nSouth Kim, ME 77285','+5002820569552','doctor','YknK1j6zZI','2020-12-19 09:41:57','2020-12-19 09:41:57'),(19,'Lula Prohaska','annamarie74@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','33736740','318 Erdman Terrace Apt. 020\nEast Kadin, SC 35121','+7773885265878','doctor','L2ElHDAnqV','2020-12-19 09:41:57','2020-12-19 09:41:57'),(20,'Sophie Pollich','zboncak.rupert@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','55596806','61617 Anjali Summit Apt. 705\nKarianeland, NH 94330-9379','+6634000214210','patient','lzrd11vTY2','2020-12-19 09:41:57','2020-12-19 09:41:57'),(21,'Delia Gutmann','zkeebler@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','93168180','583 Pinkie Radial\nEast Tressa, ME 19203-2559','+3953107776665','patient','99rDr2hizI','2020-12-19 09:41:57','2020-12-19 09:41:57'),(22,'Teresa Dare','gennaro.vonrueden@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','93827246','6139 Evans Ridge Suite 359\nPort Nannieshire, NJ 64619','+1990004191589','patient','c9Nnfh9hOh','2020-12-19 09:41:57','2020-12-19 09:41:57'),(23,'Landen Jaskolski','sthompson@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','59734056','9713 Sedrick Gateway Suite 911\nNew Haleyborough, WI 70798-2469','+9142651198589','patient','zlUxomeXRX','2020-12-19 09:41:57','2020-12-19 09:41:57'),(24,'Mr. Alvis Lockman II','msmith@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','15679131','9177 Maurine Island\nJaleelland, NC 22367-9814','+7402436759193','patient','gQnxmHBSLH','2020-12-19 09:41:57','2020-12-19 09:41:57'),(25,'Ms. Janet Kuvalis Jr.','pietro18@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','63311369','6863 Ratke Lock Suite 722\nLake Marcellehaven, NE 18449-6984','+2988347657903','doctor','LfwPneTGQk','2020-12-19 09:41:57','2020-12-19 09:41:57'),(26,'Wilson Nitzsche','marianna11@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','97541136','61642 Sunny Crossroad Apt. 033\nSouth Ed, CA 54410-1065','+7997715773807','patient','qi95db8qDL','2020-12-19 09:41:57','2020-12-19 09:41:57'),(27,'Prof. Ephraim Flatley','jacobson.jaycee@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','59626045','97461 Kilback Islands\nNorth Estellechester, MA 59498','+2571269841081','patient','6G291oyEmu','2020-12-19 09:41:57','2020-12-19 09:41:57'),(28,'Prof. Federico Lockman','crist.rylan@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','30570294','36543 Rozella Harbor Apt. 196\nPort Maximusburgh, NC 59678','+9397728539044','doctor','OoQXC59quO','2020-12-19 09:41:57','2020-12-19 09:41:57'),(29,'Enos Towne','schroeder.eden@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','73283592','829 Christiansen View\nEast Kaela, TN 02606','+1690829462449','patient','SzJOY9YOSN','2020-12-19 09:41:57','2020-12-19 09:41:57'),(30,'Vickie Prosacco','pmedhurst@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','54290534','921 Mitchell Run Apt. 856\nBrekkeberg, MT 58204','+4338491627033','patient','fFYgTsZwFP','2020-12-19 09:41:57','2020-12-19 09:41:57'),(31,'Verda Bradtke','cmarvin@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','50947746','409 Upton Drives\nAuerside, RI 64597-5752','+9223804656689','doctor','uCYUYwPzG8','2020-12-19 09:41:57','2020-12-19 09:41:57'),(32,'Juliet Rippin','prunolfsdottir@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','88520814','91745 Harber Lodge\nNorth Einoshire, MI 52068','+8483997019999','patient','qtA69MAS8Q','2020-12-19 09:41:57','2020-12-19 09:41:57'),(33,'Prof. Eladio Bayer','langosh.percival@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','78144212','66798 Naomie Expressway Apt. 836\nEast Karaview, NY 13782','+8610760653556','patient','opRvQFqHLa','2020-12-19 09:41:57','2020-12-19 09:41:57'),(34,'Gudrun Tremblay II','odubuque@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','66587581','2171 Jeffry Village\nEast Pedroshire, MI 86977-5317','+4723114778937','doctor','IkfnT5mDwx','2020-12-19 09:41:57','2020-12-19 09:41:57'),(35,'Miss Kiera Reichel','elouise.fritsch@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','28185999','7033 Demond Village Apt. 447\nJakubowskichester, CA 97925','+5921857609932','doctor','gom0DGpoAm','2020-12-19 09:41:57','2020-12-19 09:41:57'),(36,'Howard Bruen','chelsea43@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','91799835','49295 Lori Turnpike Apt. 975\nLake Kameronton, DC 12027-7198','+3276488998937','patient','RZU6KaKKo5','2020-12-19 09:41:57','2020-12-19 09:41:57'),(37,'Camryn Dickinson Jr.','abner94@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','36271769','1436 Luciano Street\nLake Reidview, NJ 61979-6572','+5441699065640','patient','T7uJXgYRMs','2020-12-19 09:41:57','2020-12-19 09:41:57'),(38,'Ashton Leuschke','myrl.smith@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','18792555','75937 Weissnat Tunnel Suite 277\nKarafort, MI 47310','+3228480908203','patient','QP1y35JxYh','2020-12-19 09:41:57','2020-12-19 09:41:57'),(39,'Mr. Dan Tremblay III','jkuphal@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','40644419','59197 Dach Wall Suite 646\nNorth Barrett, CO 71410','+7901024447343','patient','qWnU1zTZ8Y','2020-12-19 09:41:57','2020-12-19 09:41:57'),(40,'Abbey Huel','marley.frami@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','55207760','5901 Wisoky Forge Apt. 666\nPort Kristoffer, MD 91358-8240','+9528535492759','patient','YcbEfnKRz6','2020-12-19 09:41:57','2020-12-19 09:41:57'),(41,'Abigayle Krajcik','olakin@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','59804694','9308 Erdman Parks Apt. 983\nBinsborough, DC 60342','+5806705586531','doctor','cHSPCFy9nW','2020-12-19 09:41:57','2020-12-19 09:41:57'),(42,'Henderson Wiegand','qnicolas@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','50621396','256 Runolfsson Square\nNew Nickolas, IL 87843-3300','+2869916257254','patient','5MaVekVIU3','2020-12-19 09:41:57','2020-12-19 09:41:57'),(43,'Alfreda Schaefer','terrance84@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','54578550','99288 Labadie Plains\nHowellmouth, RI 17352-0582','+3302282938201','doctor','MsCvhnurjP','2020-12-19 09:41:57','2020-12-19 09:41:57'),(44,'Ashley Kilback','devon.weimann@example.org','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','76986288','684 Barton Burg\nCurtfort, NH 60462','+3281746142220','patient','2PKhanwp79','2020-12-19 09:41:57','2020-12-19 09:41:57'),(45,'Mrs. Pauline Kuvalis PhD','cole.leonora@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','19082718','1908 Hessel Hill\nWest Johanna, NH 92820-2419','+6419228607066','patient','CRmLohbiRL','2020-12-19 09:41:57','2020-12-19 09:41:57'),(46,'Daron Gibson','retha70@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','96246096','7411 Kulas Landing Apt. 053\nNew Zakaryville, CT 71736-7433','+3521688221812','doctor','s0y47Kd6RC','2020-12-19 09:41:57','2020-12-19 09:41:57'),(47,'Aidan Robel','carmela.mosciski@example.net','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','43929547','85934 Melany Causeway\nReichelville, OH 31894','+4866112045283','patient','78zmb72bnI','2020-12-19 09:41:57','2020-12-19 09:41:57'),(48,'Aracely Collier','colby67@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','28131088','391 Alexandro Mission Apt. 635\nShannyhaven, WI 28126-2499','+8573202717802','patient','JZKCRWB9JL','2020-12-19 09:41:57','2020-12-19 09:41:57'),(49,'Quincy Weissnat','gisselle17@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','35387978','711 Bernhard Unions\nHansshire, WA 70226-0329','+4453775594342','doctor','odwgJ2TbWU','2020-12-19 09:41:57','2020-12-19 09:41:57'),(50,'Nolan Spencer PhD','xpollich@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','86482226','9259 Simonis Bypass Apt. 251\nGutmannville, IN 01747','+7823304556061','doctor','QFAQZDjaVA','2020-12-19 09:41:57','2020-12-19 09:41:57'),(51,'Kacey Welch','gibson.louisa@example.com','2020-12-19 09:41:56','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','98624875','93783 Ward Walks Apt. 654\nWest Georgiannatown, CO 00048-1841','+6930707408081','doctor','YtOQEPe9m5','2020-12-19 09:41:57','2020-12-19 09:41:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_days`
--

DROP TABLE IF EXISTS `work_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_days` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day` smallint unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `morning_start` time NOT NULL,
  `morning_end` time NOT NULL,
  `afternoon_start` time NOT NULL,
  `afternoon_end` time NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `work_days_user_id_foreign` (`user_id`),
  CONSTRAINT `work_days_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_days`
--

LOCK TABLES `work_days` WRITE;
/*!40000 ALTER TABLE `work_days` DISABLE KEYS */;
INSERT INTO `work_days` VALUES (2,0,1,'08:00:00','09:00:00','19:00:00','22:30:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(3,1,1,'05:00:00','08:30:00','16:30:00','20:00:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(4,2,1,'05:00:00','07:30:00','15:00:00','18:30:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(5,3,0,'05:00:00','05:00:00','13:00:00','13:00:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(6,4,0,'05:00:00','05:00:00','13:00:00','13:00:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(7,5,0,'05:00:00','05:00:00','13:00:00','13:00:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(8,6,0,'05:00:00','05:00:00','13:00:00','13:00:00',7,'2020-12-19 09:43:51','2020-12-19 09:43:51'),(9,0,1,'05:00:00','06:00:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(10,1,0,'05:00:00','08:30:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(11,2,1,'05:00:00','10:30:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(12,3,0,'05:00:00','05:00:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(13,4,0,'05:00:00','05:00:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(14,5,0,'05:00:00','05:00:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44'),(15,6,0,'05:00:00','05:00:00','13:00:00','13:00:00',2,'2020-12-21 07:15:09','2020-12-21 07:15:44');
/*!40000 ALTER TABLE `work_days` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-29 17:07:01
