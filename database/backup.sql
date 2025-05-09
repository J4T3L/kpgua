-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: newkp
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (2,'Graha Indah','Graha Indah adalah pilihan terbaik untuk hunian kos dan villa yang nyaman, aman, dan strategis. Kami menyediakan berbagai fasilitas lengkap dan pelayanan ramah untuk memenuhi kebutuhan Anda, baik untuk jangka pendek maupun jangka panjang. Dengan lokasi yang premium, Graha Indah menjadi tempat ideal bagi mahasiswa, pekerja, hingga wisatawan yang mencari kenyamanan dan ketenangan.','img/about/XfNZW9uSe4fYct8X6gBbDt2d88frCLC1X4NfxnSi.png','2025-04-28 00:22:05','2025-04-28 09:35:58');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('room','public') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `views` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facilities_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (9,'40daf743e4a122c42b795d346692aa3fc9a50006','parkir luas ','public','img/facilities/aJCI3W12xKGsrd8QiiYHBhtWWJwEhlpMRu61OI5Z.png','motor only','<p>qq</p>','0','0','2025-05-04 05:57:11','2025-05-04 05:57:11'),(10,'a1acfe20-f39e-49eb-af34-c04d8594f4b9','Murphy','room','img/facilities/tD9npRaOIRqmJNM7ak7GJOA9l87SA2bROI7u8XgX.png','tes typr','<p>jjj</p>','0','0','2025-05-04 05:59:47','2025-05-05 18:46:55');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_reviews`
--

DROP TABLE IF EXISTS `facility_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `facility_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facility_reviews_user_id_foreign` (`user_id`),
  KEY `facility_reviews_facility_code_foreign` (`facility_code`),
  CONSTRAINT `facility_reviews_facility_code_foreign` FOREIGN KEY (`facility_code`) REFERENCES `facilities` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `facility_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_reviews`
--

LOCK TABLES `facility_reviews` WRITE;
/*!40000 ALTER TABLE `facility_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility_reviews` ENABLE KEYS */;
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
-- Table structure for table `galeries`
--

DROP TABLE IF EXISTS `galeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galeries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeries`
--

LOCK TABLES `galeries` WRITE;
/*!40000 ALTER TABLE `galeries` DISABLE KEYS */;
INSERT INTO `galeries` VALUES (2,'6bc27a1b1f3c88fae50d7395182c5620b69ae2fb','img/galeries/g-2.jpg','Café 1','2025-04-27 21:34:58','2025-04-27 21:34:58');
/*!40000 ALTER TABLE `galeries` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (33,'2014_10_12_000000_create_users_table',1),(34,'2014_10_12_100000_create_password_resets_table',1),(35,'2019_08_19_000000_create_failed_jobs_table',1),(36,'2019_12_14_000001_create_personal_access_tokens_table',1),(37,'2022_02_18_031320_create_permission_tables',1),(38,'2022_02_18_031827_create_rooms_table',1),(40,'2022_02_18_031926_create_facilities_table',2),(41,'2022_02_18_032011_create_room_has_facilities_table',3),(42,'2022_02_18_032108_create_reservations_table',3),(43,'2022_02_18_033115_create_room_reviews_table',3),(44,'2022_02_18_033227_create_facility_reviews_table',3),(45,'2022_02_18_033313_create_galeries_table',3),(46,'2022_02_21_035815_create_abouts_table',3),(47,'2025_05_03_220306_add_rate_to_rooms_table',3),(48,'2025_05_03_220706_alter_type_column_on_rooms_table',3),(49,'2025_05_03_222421_add_columns_to_rooms_table',4),(50,'2025_05_03_223506_create_room_has_facilities_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App\\Models\\User',1),(2,'App\\Models\\User',2),(2,'App\\Models\\User',3),(2,'App\\Models\\User',4),(2,'App\\Models\\User',5),(2,'App\\Models\\User',6),(2,'App\\Models\\User',7),(2,'App\\Models\\User',8),(2,'App\\Models\\User',9),(2,'App\\Models\\User',10),(2,'App\\Models\\User',11),(2,'App\\Models\\User',12),(2,'App\\Models\\User',13),(2,'App\\Models\\User',14),(2,'App\\Models\\User',15),(2,'App\\Models\\User',16),(2,'App\\Models\\User',17),(2,'App\\Models\\User',18),(2,'App\\Models\\User',19),(2,'App\\Models\\User',20),(2,'App\\Models\\User',21),(2,'App\\Models\\User',22),(2,'App\\Models\\User',23),(2,'App\\Models\\User',24),(2,'App\\Models\\User',25),(2,'App\\Models\\User',26),(2,'App\\Models\\User',27),(2,'App\\Models\\User',28),(2,'App\\Models\\User',29),(2,'App\\Models\\User',30),(2,'App\\Models\\User',31),(2,'App\\Models\\User',32),(2,'App\\Models\\User',33),(2,'App\\Models\\User',34),(2,'App\\Models\\User',35),(2,'App\\Models\\User',36),(2,'App\\Models\\User',37),(2,'App\\Models\\User',38),(2,'App\\Models\\User',39),(2,'App\\Models\\User',40),(2,'App\\Models\\User',41),(2,'App\\Models\\User',42),(2,'App\\Models\\User',43),(2,'App\\Models\\User',44),(2,'App\\Models\\User',45),(2,'App\\Models\\User',46),(2,'App\\Models\\User',47),(2,'App\\Models\\User',48),(2,'App\\Models\\User',49),(2,'App\\Models\\User',50),(2,'App\\Models\\User',51),(2,'App\\Models\\User',52),(2,'App\\Models\\User',53),(2,'App\\Models\\User',54),(2,'App\\Models\\User',55),(2,'App\\Models\\User',56),(2,'App\\Models\\User',57),(2,'App\\Models\\User',58),(2,'App\\Models\\User',59),(2,'App\\Models\\User',60),(2,'App\\Models\\User',61),(2,'App\\Models\\User',62),(2,'App\\Models\\User',63),(2,'App\\Models\\User',64),(2,'App\\Models\\User',65),(2,'App\\Models\\User',66),(2,'App\\Models\\User',67),(2,'App\\Models\\User',68),(2,'App\\Models\\User',69),(2,'App\\Models\\User',70),(2,'App\\Models\\User',71),(2,'App\\Models\\User',72),(2,'App\\Models\\User',73),(2,'App\\Models\\User',74),(2,'App\\Models\\User',75),(2,'App\\Models\\User',76),(2,'App\\Models\\User',77),(2,'App\\Models\\User',78),(2,'App\\Models\\User',79),(2,'App\\Models\\User',80),(2,'App\\Models\\User',81),(2,'App\\Models\\User',82),(2,'App\\Models\\User',83),(2,'App\\Models\\User',84),(2,'App\\Models\\User',85),(2,'App\\Models\\User',86),(2,'App\\Models\\User',87),(2,'App\\Models\\User',88),(2,'App\\Models\\User',89),(2,'App\\Models\\User',90),(2,'App\\Models\\User',91),(2,'App\\Models\\User',92),(2,'App\\Models\\User',93),(2,'App\\Models\\User',94),(2,'App\\Models\\User',95),(2,'App\\Models\\User',96),(2,'App\\Models\\User',97),(2,'App\\Models\\User',98),(2,'App\\Models\\User',99),(2,'App\\Models\\User',100),(2,'App\\Models\\User',101),(2,'App\\Models\\User',102),(2,'App\\Models\\User',103),(2,'App\\Models\\User',104),(2,'App\\Models\\User',105),(2,'App\\Models\\User',106),(2,'App\\Models\\User',107),(2,'App\\Models\\User',108),(2,'App\\Models\\User',109),(2,'App\\Models\\User',110),(2,'App\\Models\\User',111),(2,'App\\Models\\User',112),(2,'App\\Models\\User',113),(2,'App\\Models\\User',114),(2,'App\\Models\\User',115),(2,'App\\Models\\User',116),(2,'App\\Models\\User',117),(2,'App\\Models\\User',118),(2,'App\\Models\\User',119),(2,'App\\Models\\User',120),(2,'App\\Models\\User',121),(2,'App\\Models\\User',122),(2,'App\\Models\\User',123),(2,'App\\Models\\User',124),(2,'App\\Models\\User',125),(2,'App\\Models\\User',126),(2,'App\\Models\\User',127),(2,'App\\Models\\User',128),(2,'App\\Models\\User',129),(2,'App\\Models\\User',130),(2,'App\\Models\\User',131),(2,'App\\Models\\User',132),(2,'App\\Models\\User',133),(2,'App\\Models\\User',134),(2,'App\\Models\\User',135),(2,'App\\Models\\User',136),(2,'App\\Models\\User',137),(2,'App\\Models\\User',138),(2,'App\\Models\\User',139),(2,'App\\Models\\User',140),(2,'App\\Models\\User',141),(2,'App\\Models\\User',142),(2,'App\\Models\\User',143),(2,'App\\Models\\User',144),(2,'App\\Models\\User',145),(2,'App\\Models\\User',146),(2,'App\\Models\\User',147),(2,'App\\Models\\User',148),(2,'App\\Models\\User',149),(2,'App\\Models\\User',150),(2,'App\\Models\\User',151),(2,'App\\Models\\User',152),(2,'App\\Models\\User',153),(2,'App\\Models\\User',154),(2,'App\\Models\\User',155),(2,'App\\Models\\User',156),(2,'App\\Models\\User',157),(2,'App\\Models\\User',158),(2,'App\\Models\\User',159),(2,'App\\Models\\User',160),(2,'App\\Models\\User',161),(2,'App\\Models\\User',162),(2,'App\\Models\\User',163),(2,'App\\Models\\User',164),(2,'App\\Models\\User',165),(2,'App\\Models\\User',166),(2,'App\\Models\\User',167),(2,'App\\Models\\User',168),(2,'App\\Models\\User',169),(2,'App\\Models\\User',170),(2,'App\\Models\\User',171),(2,'App\\Models\\User',172),(2,'App\\Models\\User',173),(2,'App\\Models\\User',174),(2,'App\\Models\\User',175),(2,'App\\Models\\User',176),(2,'App\\Models\\User',177),(2,'App\\Models\\User',178),(2,'App\\Models\\User',179),(2,'App\\Models\\User',180),(2,'App\\Models\\User',181),(2,'App\\Models\\User',182),(2,'App\\Models\\User',183),(2,'App\\Models\\User',184),(2,'App\\Models\\User',185),(2,'App\\Models\\User',186),(2,'App\\Models\\User',187),(2,'App\\Models\\User',188),(2,'App\\Models\\User',189),(2,'App\\Models\\User',190),(2,'App\\Models\\User',191),(2,'App\\Models\\User',192),(2,'App\\Models\\User',193),(2,'App\\Models\\User',194),(2,'App\\Models\\User',195),(2,'App\\Models\\User',196),(2,'App\\Models\\User',197),(2,'App\\Models\\User',198),(2,'App\\Models\\User',199),(2,'App\\Models\\User',200),(1,'App\\Models\\User',201),(1,'App\\Models\\User',202),(1,'App\\Models\\User',203),(1,'App\\Models\\User',204),(1,'App\\Models\\User',205),(1,'App\\Models\\User',206),(1,'App\\Models\\User',207),(1,'App\\Models\\User',208),(1,'App\\Models\\User',209),(1,'App\\Models\\User',210),(3,'App\\Models\\User',211),(3,'App\\Models\\User',212),(3,'App\\Models\\User',213),(3,'App\\Models\\User',214),(3,'App\\Models\\User',215),(3,'App\\Models\\User',216),(3,'App\\Models\\User',217),(3,'App\\Models\\User',218),(3,'App\\Models\\User',219),(3,'App\\Models\\User',220),(3,'App\\Models\\User',221),(3,'App\\Models\\User',222),(3,'App\\Models\\User',223),(3,'App\\Models\\User',224),(3,'App\\Models\\User',225),(3,'App\\Models\\User',226),(3,'App\\Models\\User',227),(3,'App\\Models\\User',228),(3,'App\\Models\\User',229),(3,'App\\Models\\User',230),(3,'App\\Models\\User',231),(3,'App\\Models\\User',232),(3,'App\\Models\\User',233),(3,'App\\Models\\User',234),(3,'App\\Models\\User',235),(3,'App\\Models\\User',236),(3,'App\\Models\\User',237),(3,'App\\Models\\User',238),(3,'App\\Models\\User',239),(3,'App\\Models\\User',240),(3,'App\\Models\\User',241),(3,'App\\Models\\User',242),(3,'App\\Models\\User',243),(3,'App\\Models\\User',244),(3,'App\\Models\\User',245),(3,'App\\Models\\User',246),(3,'App\\Models\\User',247),(3,'App\\Models\\User',248),(3,'App\\Models\\User',249),(3,'App\\Models\\User',250),(3,'App\\Models\\User',251),(3,'App\\Models\\User',252),(3,'App\\Models\\User',253),(3,'App\\Models\\User',254),(3,'App\\Models\\User',255),(3,'App\\Models\\User',256),(3,'App\\Models\\User',257),(3,'App\\Models\\User',258),(3,'App\\Models\\User',259),(3,'App\\Models\\User',260),(2,'App\\Models\\User',261),(3,'App\\Models\\User',262);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `room_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rooms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservations_user_id_foreign` (`user_id`),
  KEY `reservations_room_id_foreign` (`room_id`),
  CONSTRAINT `reservations_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','web','2025-04-27 21:34:58','2025-04-27 21:34:58'),(2,'user','web','2025-04-27 21:34:58','2025-04-27 21:34:58'),(3,'receptionist','web','2025-04-27 21:34:58','2025-04-27 21:34:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_has_facilities`
--

DROP TABLE IF EXISTS `room_has_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_has_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned NOT NULL,
  `facility_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_has_facilities_room_id_foreign` (`room_id`),
  KEY `room_has_facilities_facility_id_foreign` (`facility_id`),
  CONSTRAINT `room_has_facilities_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `room_has_facilities_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_has_facilities`
--

LOCK TABLES `room_has_facilities` WRITE;
/*!40000 ALTER TABLE `room_has_facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_has_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_reviews`
--

DROP TABLE IF EXISTS `room_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `room_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room_reviews_user_id_foreign` (`user_id`),
  KEY `room_reviews_room_code_foreign` (`room_code`),
  CONSTRAINT `room_reviews_room_code_foreign` FOREIGN KEY (`room_code`) REFERENCES `rooms` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_reviews`
--

LOCK TABLES `room_reviews` WRITE;
/*!40000 ALTER TABLE `room_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('villa','kos','rumah') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rooms` int NOT NULL,
  `available` int NOT NULL,
  `price` bigint unsigned NOT NULL,
  `rate` decimal(3,2) DEFAULT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rooms_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (12,'d0694a03e5dd6aac9814f28bb14a90effea15b01','Murphy','villa','You can easily turn your bedroom into a living room',200,113,420,NULL,'<p>Natoque mus pede vitae molestie letius tortor fermentum parturient...</p>','img/rooms/T6lN8dMpv9cy9jbFJXKnWc01bS5s5GRJ3jn1ybvX.png','2025-04-27 21:34:58','2025-05-04 05:53:48',6);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (26,'54644b0620df5e5141790d890ac57416fe565594','Buck Denesik','utremblay@example.net','2025-04-27 21:34:59','+17165693026','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','img/avatar/G.png','XUPNdH8nqY','2025-04-27 21:34:59','2025-04-27 21:34:59'),(201,'c6894a09c7403506614ad5d7a72bd3d9a4bd0599','Admin','admin@gmail.com','2025-04-27 21:35:01','08174835153','$2y$10$rp5OmcIayRokfjuLJ061c.zQTL6XeSJDqzvFWgze1Y6RHNs6JuE8K','img/avatar/a.png','BvfVJP94ZP3fZNwrxG0rA9vUzfEFsdh2vZ0tjcy7RM7ExH7Jqd0orSHYrSUs','2025-04-27 21:35:01','2025-04-27 21:35:01'),(261,'a35983c3aa68c9abdcb4a0f027440c0f4388367f','User Ijat','user@ijat.com','2025-04-28 00:12:00','081111111111','$2y$10$P0.TsbwOqJIB3bHBZGgZl.w.MvPEoAQtt0sAVf8HJUTB.ntwViNv2','img/avatar/u.png','4MvQEgFTVB','2025-04-28 00:12:00','2025-04-28 00:12:00'),(262,'75f47d841927efdc9e38552860fed9aed7ed8581','Receptionist Ijat','resep@ijat.com','2025-04-28 00:12:01','082222222222','$2y$10$gykLMKm8oKsgMx3/ytkbJeUTkhysFlOMIsatPMcZZSNCleT7hvNyO','img/avatar/r.png','mo0mDUf2a2','2025-04-28 00:12:01','2025-04-28 00:12:01');
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

-- Dump completed on 2025-05-08  9:33:05
