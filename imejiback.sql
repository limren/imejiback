-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour imejiback
CREATE DATABASE IF NOT EXISTS `imejiback` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `imejiback`;

-- Listage de la structure de la table imejiback. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table imejiback. images
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `translatedText` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.images : ~9 rows (environ)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `userId`, `path`, `title`, `description`, `translatedText`) VALUES
	(18, '2023-12-02 12:27:47', '2023-12-17 08:16:23', '1', '/storage/images/cPmwZxbY22znG3yHK1wioBzQtfap6o1Eul8TfzmN.png', 'supertitreqsdmonsupertitre', 'superdescriptionqsdqsdqsdqsd', 'import axios from "axios"\nexport const postOCR = async (image: File)\nconst headerssdsd\n"Content -Type" : "multipart/form-data" ,\napikey: process . env. REACT_APP_API_KEY,\nconsole . log( " api\nkey .\nnew FormData();\nconst formData =\nformData . append ( " language" ,\n"fre" ) ;\nformData . append (qsdqsdqs\n"file" ,qsdqsd\nimage) ;dsfqsdqsd\nformData . append( " isOver1ayRequired", "false" ) ;\nawait axios.post(\nconst response =\n"https : // api. ocr . space/parse/ image" ,qsd\nformData ,\nheadersqsdqsdqsdqsdsdqsd\nconsole. log( "response from ocr .\nresponse) ;qsdqsd'),
	(23, '2023-12-05 19:51:54', '2023-12-17 08:16:44', '1', '/storage/images/FukoEaFgbsvVy4FRHEwyPbEfcP3TimKGOdsdwtpP.png', 'sqdqsd', 'qsdqdqsdqsd', 'En fait, il fallait aussi lire par bloc à ce point,\nplus compliqué\nint BLOCKSIZE / sizeof(int) ] ;qsdqsd\n/ * dans une boucle * /\nread (fd, bloc_int, BLOCKSIZE);\nfor (int\ni<r/sizeof(int)\nif ! = -1)\nsomme +=\ndonc c\'est un peu'),
	(28, '2023-12-14 13:11:27', '2023-12-16 11:44:55', '1', '/storage/images/MQf028Tm7ay3gCKEFJIEL3MtP0TkNMRw3bnDhmcB.png', 'qsdq', 'sdqsdqsd', 'import axios from "axios"\nexport const postOCR = async (image: File)\nconst headers\n"Content -Type" : "multipart/form-data" ,\napikey: process . env. REACT_APP_API_KEY,\nconsole . log( " api\nkey .\nnew FormData();\nconst formData =\nformData . append ( " language" ,\n"fre" ) ;\nformData . append (\n"file" ,\nimage) ;\nformData . append( " isOver1ayRequired", "false" ) ;\nawait axios.post(\nconst response =\n"https : // api. ocr . space/parse/ image" ,\nformData ,\nheaders\nconsole. log( "response from ocr .\nresponse);\n\nune nouvelle ligne ici'),
	(30, '2023-12-17 07:09:25', '2023-12-17 07:15:55', '1', '/storage/images/ffuD7kFxGPOmIZFKPTIrTHqaiFW7RXd3gzMnbLXn.png', 'Ma superbe image', 'Ma description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablablaMa description de mon image blablabla', 'Les formules sont dans la section 8.7 du cours.'),
	(31, '2023-12-17 08:39:21', '2023-12-17 08:39:21', '1', '/storage/images/jcDNuAl4U2ySp767Mr0Dm56YFG5KSJd1GTNxgo68.png', 'qsdqsdq', 'qsdqsd', 'Bonjour,\r\nOn 28/11/2023 07:32, BOYER Axel (ETU MAI) wrote:\r\nJ\'ai vérifié, mais du coup les formules de la section 8.6 et 8.7 sont fausses.\r\nPour la section 8.6, on a :\r\nOr c\'est faux, c\'est :\r\nSi, la formule est correcte\r\nVu que P_e\'->e représente les vecteurs de e\' en fonction de e.\r\npour être précis les colonnes de cette matrice contiennent les coordonnées dans e\' des vecteurs de e.\r\nCe qui implique que la matrice transforme les "coordonnées dans e\' " en "coordonnées dans e \'\r\nRegarde l\'exemple 8.8 page 47 ça fonctionne.'),
	(32, '2023-12-17 08:47:01', '2023-12-17 08:47:01', '1', '/storage/images/GNTQV1IwaXljs9RwpoTa0fAj0GPV3t0ibih3JAIc.png', 'qsdqsdq', 'qsdqsd', 'Bonjour,\r\nOn 28/11/2023 07:32, BOYER Axel (ETU MAI) wrote:\r\nJ\'ai vérifié, mais du coup les formules de la section 8.6 et 8.7 sont fausses.\r\nPour la section 8.6, on a :\r\nOr c\'est faux, c\'est :\r\nSi, la formule est correcte\r\nVu que P_e\'->e représente les vecteurs de e\' en fonction de e.\r\npour être précis les colonnes de cette matrice contiennent les coordonnées dans e\' des vecteurs de e.\r\nCe qui implique que la matrice transforme les "coordonnées dans e\' " en "coordonnées dans e \'\r\nRegarde l\'exemple 8.8 page 47 ça fonctionne.'),
	(33, '2023-12-17 08:51:11', '2023-12-17 08:51:11', '1', '/storage/images/X1UCFMXKlOfWWKh7tqZmH0LfDYNoWMZ5WOtSzIzM.png', 'test', 'test', 'Je bloque à la question 2, pour B. Et surtout par les questions qui défil\r\nPour B, on doit calculer la matrice qui représente I de la base V dans\r\nDonc mon idée, c\'est de faire par composition, du type\r\n= xAxP E->V, non ?\r\noui, sauf que les matrices de passage sont inversées il me semble'),
	(34, '2023-12-17 13:35:35', '2023-12-17 13:35:35', '1', '/storage/images/wVSppHC5tJI5xWRUye2clk5zmHtJlSRqtJBaY74E.png', 'tesdtazeaze', 'tzezerazez', '8.7 Changement de base dans les application linéaires\r\nOn peut maintenant exprimer une même application linéaire dans différentes bases. Soit I : E —Y\r\nF, avec les bases e, e\', f et f\'. On peut exprimer I de e\' dans f\' par'),
	(35, '2023-12-17 14:40:37', '2023-12-17 15:02:45', '1', '/storage/images/nR5hlMM5fjS6hdCb7Wf6kj2M7zjh4vdgMjVtBoGY.png', 'aazeazeqsd', 'qsdqsdqsdqsdqsd', 'Exercice F.54 Numéro étudiant et changement de bases (durée 45 minutes).\nNous allons créer une application linéaire propre à chaque étudiant, basée sur votre numéro\nd\'étudiant (ce numéro est noté sur votre carte pass campus).\nPour cela, nous supposons que votre numéro étudiant est composé d\'un chiffre noté A1, d\'un vecteur\nde R3 noté Tl, d\'un autre chiffre noté A2 et à nouveau d\'un vecteur de R3 noté v2. Par exemple, si\nmon numéro d\'étudiant est le 12345678, alors il se décompose de la manière suivante :\n12345678.\nDans ce cas, j\'ai donc = 1, v1\nNous considérons également =\ncommuns à tous les étudiants.\n2\n4\nO et =\n1\n1\n6\n7\n8\n. Il s\'agira d\'un chiffre et d\'un vecteur de R3\n1. Écrire sur votre copie votre numéro d\'étudiant ainsi que vos A1, v1, A2 et v2 correspondants.\n2. On se donne deux bases de R3 : 8 la base canonique et V = {v1, v2, v3}. Nous rappelons\nque et v2 ont été déterminés à la question précédente et que v3 =\n1 est commun à tous\n1\nles étudiants.\nSoit I : R3 —+ IR3 1\'application linéaire représentée par une matrice, notée A, de la base 8 dans\nla base 8. On suppose que A a pour éléments propres associé à Tl, A2 associé à et\nÀ3 associé à T3. Nous rappelons que et A2 ont été déterminés à la quqsdqsd\nCalculer la matrice B qui représente I de la base V dans la base V.\n3. Calculer la matrice C qui représente I de la base V dans la base 8.\n1\n4. Soit w = I(u) avec u le vecteur de coordonnées dans la base V, u(V) =\nO . Calculer de\no\ndeux manières différentes w(E) qui correspond aux coordonnées de w dans la base 8.\n5. En notant P la matrice de passage de la base V à la base 8, quel est le lien entre A, B et P ?\nQuel est le lien entre A, C et P ? (On ne demande pas de faire les calculs, ni d\'expliciter la\nmatrice A).'),
	(36, '2023-12-17 15:13:12', '2023-12-17 15:13:12', '1', '/storage/images/XUHagIcSzDpoBNRkhhdF8gbNTAnw8Ilsa86ABoXk.png', 'sdfsdf', 'sdfsdfsdfsdf', 'Exercice F.30 Changement de base (durée 20 minutes).\r\nOn se donne deux bases de R2 : e la base canonique, et e\' =\r\nSoit I : R2 R2 1\'application linéaire représentée de la base e\' dans la base e\' par la matrice\r\nCalculez la matrice qui représente I de la base e dans la base e (détailler les calculs).'),
	(37, '2023-12-17 15:13:37', '2023-12-17 15:13:37', '1', '/storage/images/A2D3NVekzInffJOYDGR9WBVxzWjU9AwqwRPiWZv6.png', 'sdfsdf', 'sdfsdfsdfsdf', 'Exercice F.30 Changement de base (durée 20 minutes).\r\nOn se donne deux bases de R2 : e la base canonique, et e\' =\r\nSoit I : R2 R2 1\'application linéaire représentée de la base e\' dans la base e\' par la matrice\r\nCalculez la matrice qui représente I de la base e dans la base e (détailler les calculs).'),
	(38, '2023-12-17 15:13:40', '2023-12-17 15:13:40', '1', '/storage/images/n9QDedqLRh1P6ESEGf2olvhGGLKVtvCIucaZV2cA.png', 'sdfsdf', 'sdfsdfsdfsdf', 'Exercice F.30 Changement de base (durée 20 minutes).\r\nOn se donne deux bases de R2 : e la base canonique, et e\' =\r\nSoit I : R2 R2 1\'application linéaire représentée de la base e\' dans la base e\' par la matrice\r\nCalculez la matrice qui représente I de la base e dans la base e (détailler les calculs).'),
	(39, '2023-12-17 15:16:35', '2023-12-17 15:16:35', '1', '/storage/images/dfbM3oZcETL8PmyPD6UyxQ0Eh4j5sBClomtEfclm.png', 'qsdqsd', 'qsdqsd', 'Je bloque à la question 2, pour B. Et surtout par les questions qui défil\r\nPour B, on doit calculer la matrice qui représente I de la base V dans\r\nDonc mon idée, c\'est de faire par composition, du type\r\n= xAxP E->V, non ?\r\noui, sauf que les matrices de passage sont inversées il me semble'),
	(40, '2023-12-17 15:25:00', '2023-12-17 15:25:00', '1', '/storage/images/m0R0yrU6C4f3LV835NC2LR3h2EJZcsYSn6rj0UEG.png', 'long titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssst', 'long titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssstlong titre tesssssssssssssssssssst', 'Bonjour,\r\nOn 28/11/2023 07:32, BOYER Axel (ETU MAI) wrote:\r\nJ\'ai vérifié, mais du coup les formules de la section 8.6 et 8.7 sont fausses.\r\nPour la section 8.6, on a :\r\nOr c\'est faux, c\'est :\r\nSi, la formule est correcte\r\nVu que P_e\'->e représente les vecteurs de e\' en fonction de e.\r\npour être précis les colonnes de cette matrice contiennent les coordonnées dans e\' des vecteurs de e.\r\nCe qui implique que la matrice transforme les "coordonnées dans e\' " en "coordonnées dans e \'\r\nRegarde l\'exemple 8.8 page 47 ça fonctionne.');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Listage de la structure de la table imejiback. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.migrations : ~6 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_10_20_115730_create_images_table', 1),
	(6, '2023_10_28_151005_create_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table imejiback. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table imejiback. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.personal_access_tokens : ~1 rows (environ)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
	(79, 'App\\Models\\User', 1, 'auth_token', '922b0ed9f86daf2512f3c59c0d5eb792750f2829ea28d091cdcffa638fa0f006', '["*"]', '2023-12-17 15:46:31', '2023-12-17 15:17:21', '2023-12-17 15:46:31');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Listage de la structure de la table imejiback. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table imejiback.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `pseudo`, `surname`, `firstname`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'monemail@gmail.com', 'azoenazioe', 'mikoazneoazujine', 'monazeaze', NULL, '$2y$10$4JB6tXS1VlPufFi4RGW/ROcdWQOJ0YOCkPjxHTMK4Zh0eOVQxQz9W', NULL, '2023-10-30 08:19:17', '2023-10-30 08:19:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
