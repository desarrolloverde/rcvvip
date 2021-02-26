-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: segurovip
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

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
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_estado` bigint unsigned NOT NULL,
  `ciudad` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_capital` smallint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ciudades_id_estado_foreign` (`id_estado`),
  CONSTRAINT `ciudades_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,1,'Maroa',0,NULL,NULL),(2,1,'Puerto Ayacucho',1,NULL,NULL),(3,1,'San Fernando de Atabapo',0,NULL,NULL),(4,2,'Anaco',0,NULL,NULL),(5,2,'Aragua de Barcelona',0,NULL,NULL),(6,2,'Barcelona',1,NULL,NULL),(7,2,'Boca de Uchire',0,NULL,NULL),(8,2,'Cantaura',0,NULL,NULL),(9,2,'Clarines',0,NULL,NULL),(10,2,'El Chaparro',0,NULL,NULL),(11,2,'El Pao Anzoátegui',0,NULL,NULL),(12,2,'El Tigre',0,NULL,NULL),(13,2,'El Tigrito',0,NULL,NULL),(14,2,'Guanape',0,NULL,NULL),(15,2,'Guanta',0,NULL,NULL),(16,2,'Lechería',0,NULL,NULL),(17,2,'Onoto',0,NULL,NULL),(18,2,'Pariaguán',0,NULL,NULL),(19,2,'Píritu',0,NULL,NULL),(20,2,'Puerto La Cruz',0,NULL,NULL),(21,2,'Puerto Píritu',0,NULL,NULL),(22,2,'Sabana de Uchire',0,NULL,NULL),(23,2,'San Mateo Anzoátegui',0,NULL,NULL),(24,2,'San Pablo Anzoátegui',0,NULL,NULL),(25,2,'San Tomé',0,NULL,NULL),(26,2,'Santa Ana de Anzoátegui',0,NULL,NULL),(27,2,'Santa Fe Anzoátegui',0,NULL,NULL),(28,2,'Santa Rosa',0,NULL,NULL),(29,2,'Soledad',0,NULL,NULL),(30,2,'Urica',0,NULL,NULL),(31,2,'Valle de Guanape',0,NULL,NULL),(43,3,'Achaguas',0,NULL,NULL),(44,3,'Biruaca',0,NULL,NULL),(45,3,'Bruzual',0,NULL,NULL),(46,3,'El Amparo',0,NULL,NULL),(47,3,'El Nula',0,NULL,NULL),(48,3,'Elorza',0,NULL,NULL),(49,3,'Guasdualito',0,NULL,NULL),(50,3,'Mantecal',0,NULL,NULL),(51,3,'Puerto Páez',0,NULL,NULL),(52,3,'San Fernando de Apure',1,NULL,NULL),(53,3,'San Juan de Payara',0,NULL,NULL),(54,4,'Barbacoas',0,NULL,NULL),(55,4,'Cagua',0,NULL,NULL),(56,4,'Camatagua',0,NULL,NULL),(58,4,'Choroní',0,NULL,NULL),(59,4,'Colonia Tovar',0,NULL,NULL),(60,4,'El Consejo',0,NULL,NULL),(61,4,'La Victoria',0,NULL,NULL),(62,4,'Las Tejerías',0,NULL,NULL),(63,4,'Magdaleno',0,NULL,NULL),(64,4,'Maracay',1,NULL,NULL),(65,4,'Ocumare de La Costa',0,NULL,NULL),(66,4,'Palo Negro',0,NULL,NULL),(67,4,'San Casimiro',0,NULL,NULL),(68,4,'San Mateo',0,NULL,NULL),(69,4,'San Sebastián',0,NULL,NULL),(70,4,'Santa Cruz de Aragua',0,NULL,NULL),(71,4,'Tocorón',0,NULL,NULL),(72,4,'Turmero',0,NULL,NULL),(73,4,'Villa de Cura',0,NULL,NULL),(74,4,'Zuata',0,NULL,NULL),(75,5,'Barinas',1,NULL,NULL),(76,5,'Barinitas',0,NULL,NULL),(77,5,'Barrancas',0,NULL,NULL),(78,5,'Calderas',0,NULL,NULL),(79,5,'Capitanejo',0,NULL,NULL),(80,5,'Ciudad Bolivia',0,NULL,NULL),(81,5,'El Cantón',0,NULL,NULL),(82,5,'Las Veguitas',0,NULL,NULL),(83,5,'Libertad de Barinas',0,NULL,NULL),(84,5,'Sabaneta',0,NULL,NULL),(85,5,'Santa Bárbara de Barinas',0,NULL,NULL),(86,5,'Socopó',0,NULL,NULL),(87,6,'Caicara del Orinoco',0,NULL,NULL),(88,6,'Canaima',0,NULL,NULL),(89,6,'Ciudad Bolívar',1,NULL,NULL),(90,6,'Ciudad Piar',0,NULL,NULL),(91,6,'El Callao',0,NULL,NULL),(92,6,'El Dorado',0,NULL,NULL),(93,6,'El Manteco',0,NULL,NULL),(94,6,'El Palmar',0,NULL,NULL),(95,6,'El Pao',0,NULL,NULL),(96,6,'Guasipati',0,NULL,NULL),(97,6,'Guri',0,NULL,NULL),(98,6,'La Paragua',0,NULL,NULL),(99,6,'Matanzas',0,NULL,NULL),(100,6,'Puerto Ordaz',0,NULL,NULL),(101,6,'San Félix',0,NULL,NULL),(102,6,'Santa Elena de Uairén',0,NULL,NULL),(103,6,'Tumeremo',0,NULL,NULL),(104,6,'Unare',0,NULL,NULL),(105,6,'Upata',0,NULL,NULL),(106,7,'Bejuma',0,NULL,NULL),(107,7,'Belén',0,NULL,NULL),(108,7,'Campo de Carabobo',0,NULL,NULL),(109,7,'Canoabo',0,NULL,NULL),(110,7,'Central Tacarigua',0,NULL,NULL),(111,7,'Chirgua',0,NULL,NULL),(112,7,'Ciudad Alianza',0,NULL,NULL),(113,7,'El Palito',0,NULL,NULL),(114,7,'Guacara',0,NULL,NULL),(115,7,'Guigue',0,NULL,NULL),(116,7,'Las Trincheras',0,NULL,NULL),(117,7,'Los Guayos',0,NULL,NULL),(118,7,'Mariara',0,NULL,NULL),(119,7,'Miranda',0,NULL,NULL),(120,7,'Montalbán',0,NULL,NULL),(121,7,'Morón',0,NULL,NULL),(122,7,'Naguanagua',0,NULL,NULL),(123,7,'Puerto Cabello',0,NULL,NULL),(124,7,'San Joaquín',0,NULL,NULL),(125,7,'Tocuyito',0,NULL,NULL),(126,7,'Urama',0,NULL,NULL),(127,7,'Valencia',1,NULL,NULL),(128,7,'Vigirimita',0,NULL,NULL),(129,8,'Aguirre',0,NULL,NULL),(130,8,'Apartaderos Cojedes',0,NULL,NULL),(131,8,'Arismendi',0,NULL,NULL),(132,8,'Camuriquito',0,NULL,NULL),(133,8,'El Baúl',0,NULL,NULL),(134,8,'El Limón',0,NULL,NULL),(135,8,'El Pao Cojedes',0,NULL,NULL),(136,8,'El Socorro',0,NULL,NULL),(137,8,'La Aguadita',0,NULL,NULL),(138,8,'Las Vegas',0,NULL,NULL),(139,8,'Libertad de Cojedes',0,NULL,NULL),(140,8,'Mapuey',0,NULL,NULL),(141,8,'Piñedo',0,NULL,NULL),(142,8,'Samancito',0,NULL,NULL),(143,8,'San Carlos',1,NULL,NULL),(144,8,'Sucre',0,NULL,NULL),(145,8,'Tinaco',0,NULL,NULL),(146,8,'Tinaquillo',0,NULL,NULL),(147,8,'Vallecito',0,NULL,NULL),(148,9,'Tucupita',1,NULL,NULL),(149,24,'Caracas',1,NULL,NULL),(150,24,'El Junquito',0,NULL,NULL),(151,10,'Adícora',0,NULL,NULL),(152,10,'Boca de Aroa',0,NULL,NULL),(153,10,'Cabure',0,NULL,NULL),(154,10,'Capadare',0,NULL,NULL),(155,10,'Capatárida',0,NULL,NULL),(156,10,'Chichiriviche',0,NULL,NULL),(157,10,'Churuguara',0,NULL,NULL),(158,10,'Coro',1,NULL,NULL),(159,10,'Cumarebo',0,NULL,NULL),(160,10,'Dabajuro',0,NULL,NULL),(161,10,'Judibana',0,NULL,NULL),(162,10,'La Cruz de Taratara',0,NULL,NULL),(163,10,'La Vela de Coro',0,NULL,NULL),(164,10,'Los Taques',0,NULL,NULL),(165,10,'Maparari',0,NULL,NULL),(166,10,'Mene de Mauroa',0,NULL,NULL),(167,10,'Mirimire',0,NULL,NULL),(168,10,'Pedregal',0,NULL,NULL),(169,10,'Píritu Falcón',0,NULL,NULL),(170,10,'Pueblo Nuevo Falcón',0,NULL,NULL),(171,10,'Puerto Cumarebo',0,NULL,NULL),(172,10,'Punta Cardón',0,NULL,NULL),(173,10,'Punto Fijo',0,NULL,NULL),(174,10,'San Juan de Los Cayos',0,NULL,NULL),(175,10,'San Luis',0,NULL,NULL),(176,10,'Santa Ana Falcón',0,NULL,NULL),(177,10,'Santa Cruz De Bucaral',0,NULL,NULL),(178,10,'Tocopero',0,NULL,NULL),(179,10,'Tocuyo de La Costa',0,NULL,NULL),(180,10,'Tucacas',0,NULL,NULL),(181,10,'Yaracal',0,NULL,NULL),(182,11,'Altagracia de Orituco',0,NULL,NULL),(183,11,'Cabruta',0,NULL,NULL),(184,11,'Calabozo',0,NULL,NULL),(185,11,'Camaguán',0,NULL,NULL),(196,11,'Chaguaramas Guárico',0,NULL,NULL),(197,11,'El Socorro',0,NULL,NULL),(198,11,'El Sombrero',0,NULL,NULL),(199,11,'Las Mercedes de Los Llanos',0,NULL,NULL),(200,11,'Lezama',0,NULL,NULL),(201,11,'Onoto',0,NULL,NULL),(202,11,'Ortíz',0,NULL,NULL),(203,11,'San José de Guaribe',0,NULL,NULL),(204,11,'San Juan de Los Morros',1,NULL,NULL),(205,11,'San Rafael de Laya',0,NULL,NULL),(206,11,'Santa María de Ipire',0,NULL,NULL),(207,11,'Tucupido',0,NULL,NULL),(208,11,'Valle de La Pascua',0,NULL,NULL),(209,11,'Zaraza',0,NULL,NULL),(210,12,'Aguada Grande',0,NULL,NULL),(211,12,'Atarigua',0,NULL,NULL),(212,12,'Barquisimeto',1,NULL,NULL),(213,12,'Bobare',0,NULL,NULL),(214,12,'Cabudare',0,NULL,NULL),(215,12,'Carora',0,NULL,NULL),(216,12,'Cubiro',0,NULL,NULL),(217,12,'Cují',0,NULL,NULL),(218,12,'Duaca',0,NULL,NULL),(219,12,'El Manzano',0,NULL,NULL),(220,12,'El Tocuyo',0,NULL,NULL),(221,12,'Guaríco',0,NULL,NULL),(222,12,'Humocaro Alto',0,NULL,NULL),(223,12,'Humocaro Bajo',0,NULL,NULL),(224,12,'La Miel',0,NULL,NULL),(225,12,'Moroturo',0,NULL,NULL),(226,12,'Quíbor',0,NULL,NULL),(227,12,'Río Claro',0,NULL,NULL),(228,12,'Sanare',0,NULL,NULL),(229,12,'Santa Inés',0,NULL,NULL),(230,12,'Sarare',0,NULL,NULL),(231,12,'Siquisique',0,NULL,NULL),(232,12,'Tintorero',0,NULL,NULL),(233,13,'Apartaderos Mérida',0,NULL,NULL),(234,13,'Arapuey',0,NULL,NULL),(235,13,'Bailadores',0,NULL,NULL),(236,13,'Caja Seca',0,NULL,NULL),(237,13,'Canaguá',0,NULL,NULL),(238,13,'Chachopo',0,NULL,NULL),(239,13,'Chiguara',0,NULL,NULL),(240,13,'Ejido',0,NULL,NULL),(241,13,'El Vigía',0,NULL,NULL),(242,13,'La Azulita',0,NULL,NULL),(243,13,'La Playa',0,NULL,NULL),(244,13,'Lagunillas Mérida',0,NULL,NULL),(245,13,'Mérida',1,NULL,NULL),(246,13,'Mesa de Bolívar',0,NULL,NULL),(247,13,'Mucuchíes',0,NULL,NULL),(248,13,'Mucujepe',0,NULL,NULL),(249,13,'Mucuruba',0,NULL,NULL),(250,13,'Nueva Bolivia',0,NULL,NULL),(251,13,'Palmarito',0,NULL,NULL),(252,13,'Pueblo Llano',0,NULL,NULL),(253,13,'Santa Cruz de Mora',0,NULL,NULL),(254,13,'Santa Elena de Arenales',0,NULL,NULL),(255,13,'Santo Domingo',0,NULL,NULL),(256,13,'Tabáy',0,NULL,NULL),(257,13,'Timotes',0,NULL,NULL),(258,13,'Torondoy',0,NULL,NULL),(259,13,'Tovar',0,NULL,NULL),(260,13,'Tucani',0,NULL,NULL),(261,13,'Zea',0,NULL,NULL),(262,14,'Araguita',0,NULL,NULL),(263,14,'Carrizal',0,NULL,NULL),(264,14,'Caucagua',0,NULL,NULL),(265,14,'Chaguaramas Miranda',0,NULL,NULL),(266,14,'Charallave',0,NULL,NULL),(267,14,'Chirimena',0,NULL,NULL),(268,14,'Chuspa',0,NULL,NULL),(269,14,'Cúa',0,NULL,NULL),(270,14,'Cupira',0,NULL,NULL),(271,14,'Curiepe',0,NULL,NULL),(272,14,'El Guapo',0,NULL,NULL),(273,14,'El Jarillo',0,NULL,NULL),(274,14,'Filas de Mariche',0,NULL,NULL),(275,14,'Guarenas',0,NULL,NULL),(276,14,'Guatire',0,NULL,NULL),(277,14,'Higuerote',0,NULL,NULL),(278,14,'Los Anaucos',0,NULL,NULL),(279,14,'Los Teques',1,NULL,NULL),(280,14,'Ocumare del Tuy',0,NULL,NULL),(281,14,'Panaquire',0,NULL,NULL),(282,14,'Paracotos',0,NULL,NULL),(283,14,'Río Chico',0,NULL,NULL),(284,14,'San Antonio de Los Altos',0,NULL,NULL),(285,14,'San Diego de Los Altos',0,NULL,NULL),(286,14,'San Fernando del Guapo',0,NULL,NULL),(287,14,'San Francisco de Yare',0,NULL,NULL),(288,14,'San José de Los Altos',0,NULL,NULL),(289,14,'San José de Río Chico',0,NULL,NULL),(290,14,'San Pedro de Los Altos',0,NULL,NULL),(291,14,'Santa Lucía',0,NULL,NULL),(292,14,'Santa Teresa',0,NULL,NULL),(293,14,'Tacarigua de La Laguna',0,NULL,NULL),(294,14,'Tacarigua de Mamporal',0,NULL,NULL),(295,14,'Tácata',0,NULL,NULL),(296,14,'Turumo',0,NULL,NULL),(297,15,'Aguasay',0,NULL,NULL),(298,15,'Aragua de Maturín',0,NULL,NULL),(299,15,'Barrancas del Orinoco',0,NULL,NULL),(300,15,'Caicara de Maturín',0,NULL,NULL),(301,15,'Caripe',0,NULL,NULL),(302,15,'Caripito',0,NULL,NULL),(303,15,'Chaguaramal',0,NULL,NULL),(305,15,'Chaguaramas Monagas',0,NULL,NULL),(307,15,'El Furrial',0,NULL,NULL),(308,15,'El Tejero',0,NULL,NULL),(309,15,'Jusepín',0,NULL,NULL),(310,15,'La Toscana',0,NULL,NULL),(311,15,'Maturín',1,NULL,NULL),(312,15,'Miraflores',0,NULL,NULL),(313,15,'Punta de Mata',0,NULL,NULL),(314,15,'Quiriquire',0,NULL,NULL),(315,15,'San Antonio de Maturín',0,NULL,NULL),(316,15,'San Vicente Monagas',0,NULL,NULL),(317,15,'Santa Bárbara',0,NULL,NULL),(318,15,'Temblador',0,NULL,NULL),(319,15,'Teresen',0,NULL,NULL),(320,15,'Uracoa',0,NULL,NULL),(321,16,'Altagracia',0,NULL,NULL),(322,16,'Boca de Pozo',0,NULL,NULL),(323,16,'Boca de Río',0,NULL,NULL),(324,16,'El Espinal',0,NULL,NULL),(325,16,'El Valle del Espíritu Santo',0,NULL,NULL),(326,16,'El Yaque',0,NULL,NULL),(327,16,'Juangriego',0,NULL,NULL),(328,16,'La Asunción',1,NULL,NULL),(329,16,'La Guardia',0,NULL,NULL),(330,16,'Pampatar',0,NULL,NULL),(331,16,'Porlamar',0,NULL,NULL),(332,16,'Puerto Fermín',0,NULL,NULL),(333,16,'Punta de Piedras',0,NULL,NULL),(334,16,'San Francisco de Macanao',0,NULL,NULL),(335,16,'San Juan Bautista',0,NULL,NULL),(336,16,'San Pedro de Coche',0,NULL,NULL),(337,16,'Santa Ana de Nueva Esparta',0,NULL,NULL),(338,16,'Villa Rosa',0,NULL,NULL),(339,17,'Acarigua',0,NULL,NULL),(340,17,'Agua Blanca',0,NULL,NULL),(341,17,'Araure',0,NULL,NULL),(342,17,'Biscucuy',0,NULL,NULL),(343,17,'Boconoito',0,NULL,NULL),(344,17,'Campo Elías',0,NULL,NULL),(345,17,'Chabasquén',0,NULL,NULL),(346,17,'Guanare',1,NULL,NULL),(347,17,'Guanarito',0,NULL,NULL),(348,17,'La Aparición',0,NULL,NULL),(349,17,'La Misión',0,NULL,NULL),(350,17,'Mesa de Cavacas',0,NULL,NULL),(351,17,'Ospino',0,NULL,NULL),(352,17,'Papelón',0,NULL,NULL),(353,17,'Payara',0,NULL,NULL),(354,17,'Pimpinela',0,NULL,NULL),(355,17,'Píritu de Portuguesa',0,NULL,NULL),(356,17,'San Rafael de Onoto',0,NULL,NULL),(357,17,'Santa Rosalía',0,NULL,NULL),(358,17,'Turén',0,NULL,NULL),(359,18,'Altos de Sucre',0,NULL,NULL),(360,18,'Araya',0,NULL,NULL),(361,18,'Cariaco',0,NULL,NULL),(362,18,'Carúpano',0,NULL,NULL),(363,18,'Casanay',0,NULL,NULL),(364,18,'Cumaná',1,NULL,NULL),(365,18,'Cumanacoa',0,NULL,NULL),(366,18,'El Morro Puerto Santo',0,NULL,NULL),(367,18,'El Pilar',0,NULL,NULL),(368,18,'El Poblado',0,NULL,NULL),(369,18,'Guaca',0,NULL,NULL),(370,18,'Guiria',0,NULL,NULL),(371,18,'Irapa',0,NULL,NULL),(372,18,'Manicuare',0,NULL,NULL),(373,18,'Mariguitar',0,NULL,NULL),(374,18,'Río Caribe',0,NULL,NULL),(375,18,'San Antonio del Golfo',0,NULL,NULL),(376,18,'San José de Aerocuar',0,NULL,NULL),(377,18,'San Vicente de Sucre',0,NULL,NULL),(378,18,'Santa Fe de Sucre',0,NULL,NULL),(379,18,'Tunapuy',0,NULL,NULL),(380,18,'Yaguaraparo',0,NULL,NULL),(381,18,'Yoco',0,NULL,NULL),(382,19,'Abejales',0,NULL,NULL),(383,19,'Borota',0,NULL,NULL),(384,19,'Bramon',0,NULL,NULL),(385,19,'Capacho',0,NULL,NULL),(386,19,'Colón',0,NULL,NULL),(387,19,'Coloncito',0,NULL,NULL),(388,19,'Cordero',0,NULL,NULL),(389,19,'El Cobre',0,NULL,NULL),(390,19,'El Pinal',0,NULL,NULL),(391,19,'Independencia',0,NULL,NULL),(392,19,'La Fría',0,NULL,NULL),(393,19,'La Grita',0,NULL,NULL),(394,19,'La Pedrera',0,NULL,NULL),(395,19,'La Tendida',0,NULL,NULL),(396,19,'Las Delicias',0,NULL,NULL),(397,19,'Las Hernández',0,NULL,NULL),(398,19,'Lobatera',0,NULL,NULL),(399,19,'Michelena',0,NULL,NULL),(400,19,'Palmira',0,NULL,NULL),(401,19,'Pregonero',0,NULL,NULL),(402,19,'Queniquea',0,NULL,NULL),(403,19,'Rubio',0,NULL,NULL),(404,19,'San Antonio del Tachira',0,NULL,NULL),(405,19,'San Cristobal',1,NULL,NULL),(406,19,'San José de Bolívar',0,NULL,NULL),(407,19,'San Josecito',0,NULL,NULL),(408,19,'San Pedro del Río',0,NULL,NULL),(409,19,'Santa Ana Táchira',0,NULL,NULL),(410,19,'Seboruco',0,NULL,NULL),(411,19,'Táriba',0,NULL,NULL),(412,19,'Umuquena',0,NULL,NULL),(413,19,'Ureña',0,NULL,NULL),(414,20,'Batatal',0,NULL,NULL),(415,20,'Betijoque',0,NULL,NULL),(416,20,'Boconó',0,NULL,NULL),(417,20,'Carache',0,NULL,NULL),(418,20,'Chejende',0,NULL,NULL),(419,20,'Cuicas',0,NULL,NULL),(420,20,'El Dividive',0,NULL,NULL),(421,20,'El Jaguito',0,NULL,NULL),(422,20,'Escuque',0,NULL,NULL),(423,20,'Isnotú',0,NULL,NULL),(424,20,'Jajó',0,NULL,NULL),(425,20,'La Ceiba',0,NULL,NULL),(426,20,'La Concepción de Trujllo',0,NULL,NULL),(427,20,'La Mesa de Esnujaque',0,NULL,NULL),(428,20,'La Puerta',0,NULL,NULL),(429,20,'La Quebrada',0,NULL,NULL),(430,20,'Mendoza Fría',0,NULL,NULL),(431,20,'Meseta de Chimpire',0,NULL,NULL),(432,20,'Monay',0,NULL,NULL),(433,20,'Motatán',0,NULL,NULL),(434,20,'Pampán',0,NULL,NULL),(435,20,'Pampanito',0,NULL,NULL),(436,20,'Sabana de Mendoza',0,NULL,NULL),(437,20,'San Lázaro',0,NULL,NULL),(438,20,'Santa Ana de Trujillo',0,NULL,NULL),(439,20,'Tostós',0,NULL,NULL),(440,20,'Trujillo',1,NULL,NULL),(441,20,'Valera',0,NULL,NULL),(442,21,'Carayaca',0,NULL,NULL),(443,21,'Litoral',0,NULL,NULL),(444,25,'Archipiélago Los Roques',0,NULL,NULL),(445,22,'Aroa',0,NULL,NULL),(446,22,'Boraure',0,NULL,NULL),(447,22,'Campo Elías de Yaracuy',0,NULL,NULL),(448,22,'Chivacoa',0,NULL,NULL),(449,22,'Cocorote',0,NULL,NULL),(450,22,'Farriar',0,NULL,NULL),(451,22,'Guama',0,NULL,NULL),(452,22,'Marín',0,NULL,NULL),(453,22,'Nirgua',0,NULL,NULL),(454,22,'Sabana de Parra',0,NULL,NULL),(455,22,'Salom',0,NULL,NULL),(456,22,'San Felipe',1,NULL,NULL),(457,22,'San Pablo de Yaracuy',0,NULL,NULL),(458,22,'Urachiche',0,NULL,NULL),(459,22,'Yaritagua',0,NULL,NULL),(460,22,'Yumare',0,NULL,NULL),(461,23,'Bachaquero',0,NULL,NULL),(462,23,'Bobures',0,NULL,NULL),(463,23,'Cabimas',0,NULL,NULL),(464,23,'Campo Concepción',0,NULL,NULL),(465,23,'Campo Mara',0,NULL,NULL),(466,23,'Campo Rojo',0,NULL,NULL),(467,23,'Carrasquero',0,NULL,NULL),(468,23,'Casigua',0,NULL,NULL),(469,23,'Chiquinquirá',0,NULL,NULL),(470,23,'Ciudad Ojeda',0,NULL,NULL),(471,23,'El Batey',0,NULL,NULL),(472,23,'El Carmelo',0,NULL,NULL),(473,23,'El Chivo',0,NULL,NULL),(474,23,'El Guayabo',0,NULL,NULL),(475,23,'El Mene',0,NULL,NULL),(476,23,'El Venado',0,NULL,NULL),(477,23,'Encontrados',0,NULL,NULL),(478,23,'Gibraltar',0,NULL,NULL),(479,23,'Isla de Toas',0,NULL,NULL),(480,23,'La Concepción del Zulia',0,NULL,NULL),(481,23,'La Paz',0,NULL,NULL),(482,23,'La Sierrita',0,NULL,NULL),(483,23,'Lagunillas del Zulia',0,NULL,NULL),(484,23,'Las Piedras de Perijá',0,NULL,NULL),(485,23,'Los Cortijos',0,NULL,NULL),(486,23,'Machiques',0,NULL,NULL),(487,23,'Maracaibo',1,NULL,NULL),(488,23,'Mene Grande',0,NULL,NULL),(489,23,'Palmarejo',0,NULL,NULL),(490,23,'Paraguaipoa',0,NULL,NULL),(491,23,'Potrerito',0,NULL,NULL),(492,23,'Pueblo Nuevo del Zulia',0,NULL,NULL),(493,23,'Puertos de Altagracia',0,NULL,NULL),(494,23,'Punta Gorda',0,NULL,NULL),(495,23,'Sabaneta de Palma',0,NULL,NULL),(496,23,'San Francisco',0,NULL,NULL),(497,23,'San José de Perijá',0,NULL,NULL),(498,23,'San Rafael del Moján',0,NULL,NULL),(499,23,'San Timoteo',0,NULL,NULL),(500,23,'Santa Bárbara Del Zulia',0,NULL,NULL),(501,23,'Santa Cruz de Mara',0,NULL,NULL),(502,23,'Santa Cruz del Zulia',0,NULL,NULL),(503,23,'Santa Rita',0,NULL,NULL),(504,23,'Sinamaica',0,NULL,NULL),(505,23,'Tamare',0,NULL,NULL),(506,23,'Tía Juana',0,NULL,NULL),(507,23,'Villa del Rosario',0,NULL,NULL),(508,21,'La Guaira',1,NULL,NULL),(509,21,'Catia La Mar',0,NULL,NULL),(510,21,'Macuto',0,NULL,NULL),(511,21,'Naiguatá',0,NULL,NULL),(512,25,'Archipiélago Los Monjes',0,NULL,NULL),(513,25,'Isla La Tortuga y Cayos adyacentes',0,NULL,NULL),(514,25,'Isla La Sola',0,NULL,NULL),(515,25,'Islas Los Testigos',0,NULL,NULL),(516,25,'Islas Los Frailes',0,NULL,NULL),(517,25,'Isla La Orchila',0,NULL,NULL),(518,25,'Archipiélago Las Aves',0,NULL,NULL),(519,25,'Isla de Aves',0,NULL,NULL),(520,25,'Isla La Blanquilla',0,NULL,NULL),(521,25,'Isla de Patos',0,NULL,NULL),(522,25,'Islas Los Hermanos',0,NULL,NULL);
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clase` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoclase` enum('Terrestre','Acuatico','Aereo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Particular','Terrestre',NULL,NULL),(2,'Camioneta','Terrestre',NULL,NULL),(3,'Taxi','Terrestre',NULL,NULL),(4,'Rustico','Terrestre',NULL,NULL),(5,'Moto','Terrestre',NULL,NULL),(6,'Minibús','Terrestre',NULL,NULL),(7,'Autobús','Terrestre',NULL,NULL),(8,'Grúa','Terrestre',NULL,NULL),(9,'Camion Plataforma 350','Terrestre',NULL,NULL),(10,'Camion Plataforma 600','Terrestre',NULL,NULL),(11,'Camion Plataforma 750','Terrestre',NULL,NULL),(12,'Carga, Batea, Chuto o Tara','Terrestre',NULL,NULL),(13,'Lancha o Bote','Acuatico',NULL,NULL),(14,'Yate','Acuatico',NULL,NULL),(15,'Barco','Acuatico',NULL,NULL);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embarcacions`
--

DROP TABLE IF EXISTS `embarcacions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `embarcacions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `embarcacion` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buque` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manga` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `casco` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eslora` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntal` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_transporte` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `embarcacions_id_transporte_foreign` (`id_transporte`),
  CONSTRAINT `embarcacions_id_transporte_foreign` FOREIGN KEY (`id_transporte`) REFERENCES `transportes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embarcacions`
--

LOCK TABLES `embarcacions` WRITE;
/*!40000 ALTER TABLE `embarcacions` DISABLE KEYS */;
/*!40000 ALTER TABLE `embarcacions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_3166-2` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Amazonas','VE-X'),(2,'Anzoátegui','VE-B'),(3,'Apure','VE-C'),(4,'Aragua','VE-D'),(5,'Barinas','VE-E'),(6,'Bolívar','VE-F'),(7,'Carabobo','VE-G'),(8,'Cojedes','VE-H'),(9,'Delta Amacuro','VE-Y'),(10,'Falcón','VE-I'),(11,'Guárico','VE-J'),(12,'Lara','VE-K'),(13,'Mérida','VE-L'),(14,'Miranda','VE-M'),(15,'Monagas','VE-N'),(16,'Nueva Esparta','VE-O'),(17,'Portuguesa','VE-P'),(18,'Sucre','VE-R'),(19,'Táchira','VE-S'),(20,'Trujillo','VE-T'),(21,'La Guaira','VE-W'),(22,'Yaracuy','VE-U'),(23,'Zulia','VE-V'),(24,'Distrito Capital','VE-A'),(25,'Dependencias Federales','VE-Z');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
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
-- Table structure for table `laborsocials`
--

DROP TABLE IF EXISTS `laborsocials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laborsocials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `foto_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborsocials`
--

LOCK TABLES `laborsocials` WRITE;
/*!40000 ALTER TABLE `laborsocials` DISABLE KEYS */;
/*!40000 ALTER TABLE `laborsocials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Abarth'),(2,'Alfa Romeo'),(3,'Aro'),(4,'Asia'),(5,'Asia Motors'),(6,'Aston Martin'),(7,'Audi'),(8,'Austin'),(9,'Auverland'),(10,'Bentley'),(11,'Bertone'),(12,'Bmw'),(13,'Cadillac'),(14,'Chevrolet'),(15,'Chrysler'),(16,'Citroen'),(17,'Corvette'),(18,'Dacia'),(19,'Daewoo'),(20,'Daf'),(21,'Daihatsu'),(22,'Daimler'),(23,'Dodge'),(24,'Ferrari'),(25,'Fiat'),(26,'Ford'),(27,'Galloper'),(28,'Gmc'),(29,'Honda'),(30,'Hummer'),(31,'Hyundai'),(32,'Infiniti'),(33,'Innocenti'),(34,'Isuzu'),(35,'Iveco'),(36,'Iveco-pegaso'),(37,'Jaguar'),(38,'Jeep'),(39,'Kia'),(40,'Lada'),(41,'Lamborghini'),(42,'Lancia'),(43,'Land-rover'),(44,'Ldv'),(45,'Lexus'),(46,'Lotus'),(47,'Mahindra'),(48,'Maserati'),(49,'Maybach'),(50,'Mazda'),(51,'Mercedes-benz'),(52,'Mg'),(53,'Mini'),(54,'Mitsubishi'),(55,'Morgan'),(56,'Nissan'),(57,'Opel'),(58,'Peugeot'),(59,'Pontiac'),(60,'Porsche'),(61,'Renault'),(62,'Rolls-royce'),(63,'Rover'),(64,'Saab'),(65,'Santana'),(66,'Seat'),(67,'Skoda'),(68,'Smart'),(69,'Ssangyong'),(70,'Subaru'),(71,'Suzuki'),(72,'Talbot'),(73,'Tata'),(74,'Toyota'),(75,'Umm'),(76,'Vaz'),(77,'Volkswagen'),(78,'Volvo'),(79,'Wartburg');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_02_05_203041_create_roles_table',1),(5,'2021_02_05_203134_create_roles_user_table',1),(6,'2021_02_10_231703_create_laborsocials_table',1),(7,'2021_02_11_064455_add_estatus_users',1),(8,'2021_02_16_163714_add_telefono_users',1),(9,'2021_02_17_221301_create_statustramite_table',1),(10,'2021_02_18_191707_create_estados_table',1),(11,'2021_02_18_191708_create_ciudades_table',1),(12,'2021_02_18_192534_create_municipios_table',1),(13,'2021_02_18_192535_create_parroquias_table',1),(14,'2021_02_18_192536_create_uso_table',1),(15,'2021_02_18_221300_create_transportes_table',1),(16,'2021_02_18_221301_create_plans_table',1),(17,'2021_02_18_221302_create_polizas_table',1),(18,'2021_02_18_234700_create_embarcacions_table',1),(19,'2021_02_18_234701_create_propietarios_table',1),(20,'2021_02_19_005719_create_tramites_table',1),(21,'2021_02_19_014615_create_pagos_table',1),(22,'2021_02_22_155349_add_idpropietario_transporte',1),(23,'2021_02_22_202235_add_timestamps_clases',1),(24,'2021_02_23_044810_add_placa_transportes',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_marca` bigint unsigned NOT NULL,
  `modelo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modelos_id_marca_foreign` (`id_marca`),
  CONSTRAINT `modelos_id_marca_foreign` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,1,'500'),(2,1,'Grande Punto'),(3,1,'Punto Evo'),(4,1,'500c'),(5,1,'695'),(6,1,'Punto'),(7,2,'155'),(8,2,'156'),(9,2,'159'),(10,2,'164'),(11,2,'145'),(12,2,'147'),(13,2,'146'),(14,2,'Gtv'),(15,2,'Spider'),(16,2,'166'),(17,2,'Gt'),(18,2,'Crosswagon'),(19,2,'Brera'),(20,2,'90'),(21,2,'75'),(22,2,'33'),(23,2,'Giulietta'),(24,2,'Sprint'),(25,2,'Mito'),(26,3,'Expander'),(27,3,'10'),(28,3,'24'),(29,3,'Dacia'),(30,4,'Rocsta'),(31,5,'Rocsta'),(32,6,'Db7'),(33,6,'V8'),(34,6,'Db9'),(35,6,'Vanquish'),(36,6,'V8 Vantage'),(37,6,'Vantage'),(38,6,'Dbs'),(39,6,'Volante'),(40,6,'Virage'),(41,6,'Vantage V8'),(42,6,'Vantage V12'),(43,6,'Rapide'),(44,6,'Cygnet'),(45,7,'80'),(46,7,'A4'),(47,7,'A6'),(48,7,'S6'),(49,7,'Coupe'),(50,7,'S2'),(51,7,'Rs2'),(52,7,'A8'),(53,7,'Cabriolet'),(54,7,'S8'),(55,7,'A3'),(56,7,'S4'),(57,7,'Tt'),(58,7,'S3'),(59,7,'Allroad Quattro'),(60,7,'Rs4'),(61,7,'A2'),(62,7,'Rs6'),(63,7,'Q7'),(64,7,'R8'),(65,7,'A5'),(66,7,'S5'),(67,7,'V8'),(68,7,'200'),(69,7,'100'),(70,7,'90'),(71,7,'Tts'),(72,7,'Q5'),(73,7,'A4 Allroad Quattro'),(74,7,'Tt Rs'),(75,7,'Rs5'),(76,7,'A1'),(77,7,'A7'),(78,7,'Rs3'),(79,7,'Q3'),(80,7,'A6 Allroad Quattro'),(81,7,'S7'),(82,7,'Sq5'),(83,8,'Mini'),(84,8,'Montego'),(85,8,'Maestro'),(86,8,'Metro'),(87,8,'Mini Moke'),(88,9,'Diesel'),(89,10,'Brooklands'),(90,10,'Turbo'),(91,10,'Continental'),(92,10,'Azure'),(93,10,'Arnage'),(94,10,'Continental Gt'),(95,10,'Continental Flying Spur'),(96,10,'Turbo R'),(97,10,'Mulsanne'),(98,10,'Eight'),(99,10,'Continental Gtc'),(100,10,'Continental Supersports'),(101,11,'Freeclimber Diesel'),(102,12,'Serie 3'),(103,12,'Serie 5'),(104,12,'Compact'),(105,12,'Serie 7'),(106,12,'Serie 8'),(107,12,'Z3'),(108,12,'Z4'),(109,12,'Z8'),(110,12,'X5'),(111,12,'Serie 6'),(112,12,'X3'),(113,12,'Serie 1'),(114,12,'Z1'),(115,12,'X6'),(116,12,'X1'),(117,13,'Seville'),(118,13,'Sts'),(119,13,'El Dorado'),(120,13,'Cts'),(121,13,'Xlr'),(122,13,'Srx'),(123,13,'Escalade'),(124,13,'Bls'),(125,14,'Corvette'),(126,14,'Blazer'),(127,14,'Astro'),(128,14,'Nubira'),(129,14,'Evanda'),(130,14,'Trans Sport'),(131,14,'Camaro'),(132,14,'Matiz'),(133,14,'Alero'),(134,14,'Tahoe'),(135,14,'Tacuma'),(136,14,'Trailblazer'),(137,14,'Kalos'),(138,14,'Aveo'),(139,14,'Lacetti'),(140,14,'Epica'),(141,14,'Captiva'),(142,14,'Hhr'),(143,14,'Cruze'),(144,14,'Spark'),(145,14,'Orlando'),(146,14,'Volt'),(147,14,'Malibu'),(148,15,'Vision'),(149,15,'300m'),(150,15,'Grand Voyager'),(151,15,'Viper'),(152,15,'Neon'),(153,15,'Voyager'),(154,15,'Stratus'),(155,15,'Sebring'),(156,15,'Sebring 200c'),(157,15,'New Yorker'),(158,15,'Pt Cruiser'),(159,15,'Crossfire'),(160,15,'300c'),(161,15,'Le Baron'),(162,15,'Saratoga'),(163,16,'Xantia'),(164,16,'Xm'),(165,16,'Ax'),(166,16,'Zx'),(167,16,'Evasion'),(168,16,'C8'),(169,16,'Saxo'),(170,16,'C2'),(171,16,'Xsara'),(172,16,'C4'),(173,16,'Xsara Picasso'),(174,16,'C5'),(175,16,'C3'),(176,16,'C3 Pluriel'),(177,16,'C1'),(178,16,'C6'),(179,16,'Grand C4 Picasso'),(180,16,'C4 Picasso'),(181,16,'Ccrosser'),(182,16,'C15'),(183,16,'Jumper'),(184,16,'Jumpy'),(185,16,'Berlingo'),(186,16,'Bx'),(187,16,'C25'),(188,16,'Cx'),(189,16,'Gsa'),(190,16,'Visa'),(191,16,'Lna'),(192,16,'2cv'),(193,16,'Nemo'),(194,16,'C4 Sedan'),(195,16,'Berlingo First'),(196,16,'C3 Picasso'),(197,16,'Ds3'),(198,16,'Czero'),(199,16,'Ds4'),(200,16,'Ds5'),(201,16,'C4 Aircross'),(202,16,'Celysee'),(203,17,'Corvette'),(204,18,'Contac'),(205,18,'Logan'),(206,18,'Sandero'),(207,18,'Duster'),(208,18,'Lodgy'),(209,19,'Nexia'),(210,19,'Aranos'),(211,19,'Lanos'),(212,19,'Nubira'),(213,19,'Compact'),(214,19,'Nubira Compact'),(215,19,'Leganza'),(216,19,'Evanda'),(217,19,'Matiz'),(218,19,'Tacuma'),(219,19,'Kalos'),(220,19,'Lacetti'),(221,21,'Applause'),(222,21,'Charade'),(223,21,'Rocky'),(224,21,'Feroza'),(225,21,'Terios'),(226,21,'Sirion'),(227,22,'Serie Xj'),(228,22,'Xj'),(229,22,'Double Six'),(230,22,'Six'),(231,22,'Series Iii'),(232,23,'Viper'),(233,23,'Caliber'),(234,23,'Nitro'),(235,23,'Avenger'),(236,23,'Journey'),(237,24,'F355'),(238,24,'360'),(239,24,'F430'),(240,24,'F512 M'),(241,24,'550 Maranello'),(242,24,'575m Maranello'),(243,24,'599'),(244,24,'456'),(245,24,'456m'),(246,24,'612'),(247,24,'F50'),(248,24,'Enzo'),(249,24,'Superamerica'),(250,24,'430'),(251,24,'348'),(252,24,'Testarossa'),(253,24,'512'),(254,24,'355'),(255,24,'F40'),(256,24,'412'),(257,24,'Mondial'),(258,24,'328'),(259,24,'California'),(260,24,'458'),(261,24,'Ff'),(262,25,'Croma'),(263,25,'Cinquecento'),(264,25,'Seicento'),(265,25,'Punto'),(266,25,'Grande Punto'),(267,25,'Panda'),(268,25,'Tipo'),(269,25,'Coupe'),(270,25,'Uno'),(271,25,'Ulysse'),(272,25,'Tempra'),(273,25,'Marea'),(274,25,'Barchetta'),(275,25,'Bravo'),(276,25,'Stilo'),(277,25,'Brava'),(278,25,'Palio Weekend'),(279,25,'600'),(280,25,'Multipla'),(281,25,'Idea'),(282,25,'Sedici'),(283,25,'Linea'),(284,25,'500'),(285,25,'Fiorino'),(286,25,'Ducato'),(287,25,'Doblo Cargo'),(288,25,'Doblo'),(289,25,'Strada'),(290,25,'Regata'),(291,25,'Talento'),(292,25,'Argenta'),(293,25,'Ritmo'),(294,25,'Punto Classic'),(295,25,'Qubo'),(296,25,'Punto Evo'),(297,25,'500c'),(298,25,'Freemont'),(299,25,'Panda Classic'),(300,25,'500l'),(301,26,'Maverick'),(302,26,'Escort'),(303,26,'Focus'),(304,26,'Mondeo'),(305,26,'Scorpio'),(306,26,'Fiesta'),(307,26,'Probe'),(308,26,'Explorer'),(309,26,'Galaxy'),(310,26,'Ka'),(311,26,'Puma'),(312,26,'Cougar'),(313,26,'Focus Cmax'),(314,26,'Fusion'),(315,26,'Streetka'),(316,26,'Cmax'),(317,26,'Smax'),(318,26,'Transit'),(319,26,'Courier'),(320,26,'Ranger'),(321,26,'Sierra'),(322,26,'Orion'),(323,26,'Pick Up'),(324,26,'Capri'),(325,26,'Granada'),(326,26,'Kuga'),(327,26,'Grand Cmax'),(328,26,'Bmax'),(329,26,'Tourneo Custom'),(330,27,'Exceed'),(331,27,'Santamo'),(332,27,'Super Exceed'),(333,29,'Accord'),(334,29,'Civic'),(335,29,'Crx'),(336,29,'Prelude'),(337,29,'Nsx'),(338,29,'Legend'),(339,29,'Crv'),(340,29,'Hrv'),(341,29,'Logo'),(342,29,'S2000'),(343,29,'Stream'),(344,29,'Jazz'),(345,29,'Frv'),(346,29,'Concerto'),(347,29,'Insight'),(348,29,'Crz'),(349,30,'H2'),(350,30,'H3'),(351,30,'H3t'),(352,31,'Lantra'),(353,31,'Sonata'),(354,31,'Elantra'),(355,31,'Accent'),(356,31,'Scoupe'),(357,31,'Coupe'),(358,31,'Atos'),(359,31,'H1'),(360,31,'Atos Prime'),(361,31,'Xg'),(362,31,'Trajet'),(363,31,'Santa Fe'),(364,31,'Terracan'),(365,31,'Matrix'),(366,31,'Getz'),(367,31,'Tucson'),(368,31,'I30'),(369,31,'Pony'),(370,31,'Grandeur'),(371,31,'I10'),(372,31,'I800'),(373,31,'Sonata Fl'),(374,31,'Ix55'),(375,31,'I20'),(376,31,'Ix35'),(377,31,'Ix20'),(378,31,'Genesis'),(379,31,'I40'),(380,31,'Veloster'),(381,32,'G'),(382,32,'Ex'),(383,32,'Fx'),(384,32,'M'),(385,33,'Elba'),(386,33,'Minitre'),(387,34,'Trooper'),(388,34,'Pick Up'),(389,34,'D Max'),(390,34,'Rodeo'),(391,34,'Dmax'),(392,34,'Trroper'),(393,35,'Daily'),(394,35,'Massif'),(395,36,'Daily'),(396,36,'Duty'),(397,37,'Serie Xj'),(398,37,'Serie Xk'),(399,37,'Xj'),(400,37,'Stype'),(401,37,'Xf'),(402,37,'Xtype'),(403,38,'Wrangler'),(404,38,'Cherokee'),(405,38,'Grand Cherokee'),(406,38,'Commander'),(407,38,'Compass'),(408,38,'Wrangler Unlimited'),(409,38,'Patriot'),(410,39,'Sportage'),(411,39,'Sephia'),(412,39,'Sephia Ii'),(413,39,'Pride'),(414,39,'Clarus'),(415,39,'Shuma'),(416,39,'Carnival'),(417,39,'Joice'),(418,39,'Magentis'),(419,39,'Carens'),(420,39,'Rio'),(421,39,'Cerato'),(422,39,'Sorento'),(423,39,'Opirus'),(424,39,'Picanto'),(425,39,'Ceed'),(426,39,'Ceed Sporty Wagon'),(427,39,'Proceed'),(428,39,'K2500 Frontier'),(429,39,'K2500'),(430,39,'Soul'),(431,39,'Venga'),(432,39,'Optima'),(433,39,'Ceed Sportswagon'),(434,40,'Samara'),(435,40,'Niva'),(436,40,'Sagona'),(437,40,'Stawra 2110'),(438,40,'214'),(439,40,'Kalina'),(440,40,'Serie 2100'),(441,40,'Priora'),(442,41,'Gallardo'),(443,41,'Murcielago'),(444,41,'Aventador'),(445,42,'Delta'),(446,42,'K'),(447,42,'Y10'),(448,42,'Dedra'),(449,42,'Lybra'),(450,42,'Z'),(451,42,'Y'),(452,42,'Ypsilon'),(453,42,'Thesis'),(454,42,'Phedra'),(455,42,'Musa'),(456,42,'Thema'),(457,42,'Zeta'),(458,42,'Kappa'),(459,42,'Trevi'),(460,42,'Prisma'),(461,42,'A112'),(462,42,'Ypsilon Elefantino'),(463,42,'Voyager'),(464,43,'Range Rover'),(465,43,'Defender'),(466,43,'Discovery'),(467,43,'Freelander'),(468,43,'Range Rover Sport'),(469,43,'Discovery 4'),(470,43,'Range Rover Evoque'),(471,44,'Maxus'),(472,45,'Ls400'),(473,45,'Ls430'),(474,45,'Gs300'),(475,45,'Is200'),(476,45,'Rx300'),(477,45,'Gs430'),(478,45,'Gs460'),(479,45,'Sc430'),(480,45,'Is300'),(481,45,'Is250'),(482,45,'Rx400h'),(483,45,'Is220d'),(484,45,'Rx350'),(485,45,'Gs450h'),(486,45,'Ls460'),(487,45,'Ls600h'),(488,45,'Ls'),(489,45,'Gs'),(490,45,'Is'),(491,45,'Sc'),(492,45,'Rx'),(493,45,'Ct'),(494,46,'Elise'),(495,46,'Exige'),(496,47,'Bolero Pickup'),(497,47,'Goa Pickup'),(498,47,'Goa'),(499,47,'Cj'),(500,47,'Pikup'),(501,47,'Thar'),(502,48,'Ghibli'),(503,48,'Shamal'),(504,48,'Quattroporte'),(505,48,'3200 Gt'),(506,48,'Coupe'),(507,48,'Spyder'),(508,48,'Gransport'),(509,48,'Granturismo'),(510,48,'430'),(511,48,'Biturbo'),(512,48,'228'),(513,48,'224'),(514,48,'Grancabrio'),(515,49,'Maybach'),(516,50,'Xedos 6'),(517,50,'626'),(518,50,'121'),(519,50,'Xedos 9'),(520,50,'323'),(521,50,'Mx3'),(522,50,'Rx7'),(523,50,'Mx5'),(524,50,'Mazda3'),(525,50,'Mpv'),(526,50,'Demio'),(527,50,'Premacy'),(528,50,'Tribute'),(529,50,'Mazda6'),(530,50,'Mazda2'),(531,50,'Rx8'),(532,50,'Mazda5'),(533,50,'Cx7'),(534,50,'Serie B'),(535,50,'B2500'),(536,50,'Bt50'),(537,50,'Mx6'),(538,50,'929'),(539,50,'Cx5'),(540,51,'Clase C'),(541,51,'Clase E'),(542,51,'Clase Sl'),(543,51,'Clase S'),(544,51,'Clase Cl'),(545,51,'Clase G'),(546,51,'Clase Slk'),(547,51,'Clase V'),(548,51,'Viano'),(549,51,'Clase Clk'),(550,51,'Clase A'),(551,51,'Clase M'),(552,51,'Vaneo'),(553,51,'Slklasse'),(554,51,'Slr Mclaren'),(555,51,'Clase Cls'),(556,51,'Clase R'),(557,51,'Clase Gl'),(558,51,'Clase B'),(559,51,'100d'),(560,51,'140d'),(561,51,'180d'),(562,51,'Sprinter'),(563,51,'Vito'),(564,51,'Transporter'),(565,51,'280'),(566,51,'220'),(567,51,'200'),(568,51,'190'),(569,51,'600'),(570,51,'400'),(571,51,'Clase Sl R129'),(572,51,'300'),(573,51,'500'),(574,51,'420'),(575,51,'260'),(576,51,'230'),(577,51,'Clase Clc'),(578,51,'Clase Glk'),(579,51,'Sls Amg'),(580,52,'Mgf'),(581,52,'Tf'),(582,52,'Zr'),(583,52,'Zs'),(584,52,'Zt'),(585,52,'Ztt'),(586,52,'Mini'),(587,52,'Countryman'),(588,52,'Paceman'),(589,54,'Montero'),(590,54,'Galant'),(591,54,'Colt'),(592,54,'Space Wagon'),(593,54,'Space Runner'),(594,54,'Space Gear'),(595,54,'3000 Gt'),(596,54,'Carisma'),(597,54,'Eclipse'),(598,54,'Space Star'),(599,54,'Montero Sport'),(600,54,'Montero Io'),(601,54,'Outlander'),(602,54,'Lancer'),(603,54,'Grandis'),(604,54,'L200'),(605,54,'Canter'),(606,54,'300 Gt'),(607,54,'Asx'),(608,54,'Imiev'),(609,55,'44'),(610,55,'Plus 8'),(611,55,'Aero 8'),(612,55,'V6'),(613,55,'Roadster'),(614,55,'4'),(615,55,'Plus 4'),(616,56,'Terrano Ii'),(617,56,'Terrano'),(618,56,'Micra'),(619,56,'Sunny'),(620,56,'Primera'),(621,56,'Serena'),(622,56,'Patrol'),(623,56,'Maxima Qx'),(624,56,'200 Sx'),(625,56,'300 Zx'),(626,56,'Patrol Gr'),(627,56,'100 Nx'),(628,56,'Almera'),(629,56,'Pathfinder'),(630,56,'Almera Tino'),(631,56,'Xtrail'),(632,56,'350z'),(633,56,'Murano'),(634,56,'Note'),(635,56,'Qashqai'),(636,56,'Tiida'),(637,56,'Vanette'),(638,56,'Trade'),(639,56,'Vanette Cargo'),(640,56,'Pickup'),(641,56,'Navara'),(642,56,'Cabstar E'),(643,56,'Cabstar'),(644,56,'Maxima'),(645,56,'Camion'),(646,56,'Prairie'),(647,56,'Bluebird'),(648,56,'Np300 Pick Up'),(649,56,'Qashqai2'),(650,56,'Pixo'),(651,56,'Gtr'),(652,56,'370z'),(653,56,'Cube'),(654,56,'Juke'),(655,56,'Leaf'),(656,56,'Evalia'),(657,57,'Astra'),(658,57,'Vectra'),(659,57,'Calibra'),(660,57,'Corsa'),(661,57,'Omega'),(662,57,'Frontera'),(663,57,'Tigra'),(664,57,'Monterey'),(665,57,'Sintra'),(666,57,'Zafira'),(667,57,'Agila'),(668,57,'Speedster'),(669,57,'Signum'),(670,57,'Meriva'),(671,57,'Antara'),(672,57,'Gt'),(673,57,'Combo'),(674,57,'Movano'),(675,57,'Vivaro'),(676,57,'Kadett'),(677,57,'Monza'),(678,57,'Senator'),(679,57,'Rekord'),(680,57,'Manta'),(681,57,'Ascona'),(682,57,'Insignia'),(683,57,'Zafira Tourer'),(684,57,'Ampera'),(685,57,'Mokka'),(686,57,'Adam'),(687,58,'306'),(688,58,'605'),(689,58,'106'),(690,58,'205'),(691,58,'405'),(692,58,'406'),(693,58,'806'),(694,58,'807'),(695,58,'407'),(696,58,'307'),(697,58,'206'),(698,58,'607'),(699,58,'308'),(700,58,'307 Sw'),(701,58,'206 Sw'),(702,58,'407 Sw'),(703,58,'1007'),(704,58,'107'),(705,58,'207'),(706,58,'4007'),(707,58,'Boxer'),(708,58,'Partner'),(709,58,'J5'),(710,58,'604'),(711,58,'505'),(712,58,'309'),(713,58,'Bipper'),(714,58,'Partner Origin'),(715,58,'3008'),(716,58,'5008'),(717,58,'Rcz'),(718,58,'508'),(719,58,'Ion'),(720,58,'208'),(721,58,'4008'),(722,59,'Trans Sport'),(723,59,'Firebird'),(724,59,'Trans Am'),(725,60,'911'),(726,60,'Boxster'),(727,60,'Cayenne'),(728,60,'Carrera Gt'),(729,60,'Cayman'),(730,60,'928'),(731,60,'968'),(732,60,'944'),(733,60,'924'),(734,60,'Panamera'),(735,60,'918'),(736,61,'Megane'),(737,61,'Safrane'),(738,61,'Laguna'),(739,61,'Clio'),(740,61,'Twingo'),(741,61,'Nevada'),(742,61,'Espace'),(743,61,'Spider'),(744,61,'Scenic'),(745,61,'Grand Espace'),(746,61,'Avantime'),(747,61,'Vel Satis'),(748,61,'Grand Scenic'),(749,61,'Clio Campus'),(750,61,'Modus'),(751,61,'Express'),(752,61,'Trafic'),(753,61,'Master'),(754,61,'Kangoo'),(755,61,'Mascott'),(756,61,'Master Propulsion'),(757,61,'Maxity'),(758,61,'R19'),(759,61,'R25'),(760,61,'R5'),(761,61,'R21'),(762,61,'R4'),(763,61,'Alpine'),(764,61,'Fuego'),(765,61,'R18'),(766,61,'R11'),(767,61,'R9'),(768,61,'R6'),(769,61,'Grand Modus'),(770,61,'Kangoo Combi'),(771,61,'Koleos'),(772,61,'Fluence'),(773,61,'Wind'),(774,61,'Latitude'),(775,61,'Grand Kangoo Combi'),(776,62,'Siver Dawn'),(777,62,'Silver Spur'),(778,62,'Park Ward'),(779,62,'Silver Seraph'),(780,62,'Corniche'),(781,62,'Phantom'),(782,62,'Touring'),(783,62,'Silvier'),(784,63,'800'),(785,63,'600'),(786,63,'100'),(787,63,'200'),(788,63,'Coupe'),(789,63,'400'),(790,63,'45'),(791,63,'Cabriolet'),(792,63,'25'),(793,63,'Mini'),(794,63,'75'),(795,63,'Streetwise'),(796,63,'Sd'),(797,64,'900'),(798,64,'93'),(799,64,'9000'),(800,64,'95'),(801,64,'93x'),(802,64,'94x'),(803,65,'300'),(804,65,'350'),(805,65,'Anibal'),(806,65,'Anibal Pick Up'),(807,66,'Ibiza'),(808,66,'Cordoba'),(809,66,'Toledo'),(810,66,'Marbella'),(811,66,'Alhambra'),(812,66,'Arosa'),(813,66,'Leon'),(814,66,'Altea'),(815,66,'Altea Xl'),(816,66,'Altea Freetrack'),(817,66,'Terra'),(818,66,'Inca'),(819,66,'Malaga'),(820,66,'Ronda'),(821,66,'Exeo'),(822,66,'Mii'),(823,67,'Felicia'),(824,67,'Forman'),(825,67,'Octavia'),(826,67,'Octavia Tour'),(827,67,'Fabia'),(828,67,'Superb'),(829,67,'Roomster'),(830,67,'Scout'),(831,67,'Pickup'),(832,67,'Favorit'),(833,67,'130'),(834,67,'S'),(835,67,'Yeti'),(836,67,'Citigo'),(837,67,'Rapid'),(838,68,'Smart'),(839,68,'Citycoupe'),(840,68,'Fortwo'),(841,68,'Cabrio'),(842,68,'Crossblade'),(843,68,'Roadster'),(844,68,'Forfour'),(845,69,'Korando'),(846,69,'Family'),(847,69,'K4d'),(848,69,'Musso'),(849,69,'Korando Kj'),(850,69,'Rexton'),(851,69,'Rexton Ii'),(852,69,'Rodius'),(853,69,'Kyron'),(854,69,'Actyon'),(855,69,'Sports Pick Up'),(856,69,'Actyon Sports Pick Up'),(857,69,'Kodando'),(858,70,'Legacy'),(859,70,'Impreza'),(860,70,'Svx'),(861,70,'Justy'),(862,70,'Outback'),(863,70,'Forester'),(864,70,'G3x Justy'),(865,70,'B9 Tribeca'),(866,70,'Xt'),(867,70,'1800'),(868,70,'Tribeca'),(869,70,'Wrx Sti'),(870,70,'Trezia'),(871,70,'Xv'),(872,70,'Brz'),(873,71,'Maruti'),(874,71,'Swift'),(875,71,'Vitara'),(876,71,'Baleno'),(877,71,'Samurai'),(878,71,'Alto'),(879,71,'Wagon R'),(880,71,'Jimny'),(881,71,'Grand Vitara'),(882,71,'Ignis'),(883,71,'Liana'),(884,71,'Grand Vitara Xl7'),(885,71,'Sx4'),(886,71,'Splash'),(887,71,'Kizashi'),(888,72,'Samba'),(889,72,'Tagora'),(890,72,'Solara'),(891,72,'Horizon'),(892,73,'Telcosport'),(893,73,'Telco'),(894,73,'Sumo'),(895,73,'Safari'),(896,73,'Indica'),(897,73,'Indigo'),(898,73,'Grand Safari'),(899,73,'Tl Pick Up'),(900,73,'Xenon Pick Up'),(901,73,'Vista'),(902,73,'Xenon'),(903,73,'Aria'),(904,74,'Carina E'),(905,74,'4runner'),(906,74,'Camry'),(907,74,'Rav4'),(908,74,'Celica'),(909,74,'Supra'),(910,74,'Paseo'),(911,74,'Land Cruiser 80'),(912,74,'Land Cruiser 100'),(913,74,'Land Cruiser'),(914,74,'Land Cruiser 90'),(915,74,'Corolla'),(916,74,'Auris'),(917,74,'Avensis'),(918,74,'Picnic'),(919,74,'Yaris'),(920,74,'Yaris Verso'),(921,74,'Mr2'),(922,74,'Previa'),(923,74,'Prius'),(924,74,'Avensis Verso'),(925,74,'Corolla Verso'),(926,74,'Corolla Sedan'),(927,74,'Aygo'),(928,74,'Hilux'),(929,74,'Dyna'),(930,74,'Land Cruiser 200'),(931,74,'Verso'),(932,74,'Iq'),(933,74,'Urban Cruiser'),(934,74,'Gt86'),(935,75,'100'),(936,75,'121'),(937,76,'214'),(938,76,'110 Stawra'),(939,76,'111 Stawra'),(940,76,'215'),(941,76,'112 Stawra'),(942,77,'Passat'),(943,77,'Golf'),(944,77,'Vento'),(945,77,'Polo'),(946,77,'Corrado'),(947,77,'Sharan'),(948,77,'Lupo'),(949,77,'Bora'),(950,77,'Jetta'),(951,77,'New Beetle'),(952,77,'Phaeton'),(953,77,'Touareg'),(954,77,'Touran'),(955,77,'Multivan'),(956,77,'Caddy'),(957,77,'Golf Plus'),(958,77,'Fox'),(959,77,'Eos'),(960,77,'Caravelle'),(961,77,'Tiguan'),(962,77,'Transporter'),(963,77,'Lt'),(964,77,'Taro'),(965,77,'Crafter'),(966,77,'California'),(967,77,'Santana'),(968,77,'Scirocco'),(969,77,'Passat Cc'),(970,77,'Amarok'),(971,77,'Beetle'),(972,77,'Up'),(973,77,'Cc'),(974,78,'440'),(975,78,'850'),(976,78,'S70'),(977,78,'V70'),(978,78,'V70 Classic'),(979,78,'940'),(980,78,'480'),(981,78,'460'),(982,78,'960'),(983,78,'S90'),(984,78,'V90'),(985,78,'Classic'),(986,78,'S40'),(987,78,'V40'),(988,78,'V50'),(989,78,'V70 Xc'),(990,78,'Xc70'),(991,78,'C70'),(992,78,'S80'),(993,78,'S60'),(994,78,'Xc90'),(995,78,'C30'),(996,78,'780'),(997,78,'760'),(998,78,'740'),(999,78,'240'),(1000,78,'360'),(1001,78,'340'),(1002,78,'Xc60'),(1003,78,'V60'),(1004,78,'V40 Cross Country'),(1005,79,'353'),(1006,53,'Mini'),(1007,53,'Countryman'),(1008,53,'Paceman');
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `municipio` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_estado` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `municipios_id_estado_foreign` (`id_estado`),
  CONSTRAINT `municipios_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,'Alto Orinoco',1,NULL,NULL),(2,'Atabapo',1,NULL,NULL),(3,'Atures',1,NULL,NULL),(4,'Autana',1,NULL,NULL),(5,'Manapiare',1,NULL,NULL),(6,'Maroa',1,NULL,NULL),(7,'Río Negro',1,NULL,NULL),(8,'Anaco',2,NULL,NULL),(9,'Aragua',2,NULL,NULL),(10,'Manuel Ezequiel Bruzual',2,NULL,NULL),(11,'Diego Bautista Urbaneja',2,NULL,NULL),(12,'Fernando Peñalver',2,NULL,NULL),(13,'Francisco Del Carmen Carvajal',2,NULL,NULL),(14,'General Sir Arthur McGregor',2,NULL,NULL),(15,'Guanta',2,NULL,NULL),(16,'Independencia',2,NULL,NULL),(17,'José Gregorio Monagas',2,NULL,NULL),(18,'Juan Antonio Sotillo',2,NULL,NULL),(19,'Juan Manuel Cajigal',2,NULL,NULL),(20,'Libertad',2,NULL,NULL),(21,'Francisco de Miranda',2,NULL,NULL),(22,'Pedro María Freites',2,NULL,NULL),(23,'Píritu',2,NULL,NULL),(24,'San José de Guanipa',2,NULL,NULL),(25,'San Juan de Capistrano',2,NULL,NULL),(26,'Santa Ana',2,NULL,NULL),(27,'Simón Bolívar',2,NULL,NULL),(28,'Simón Rodríguez',2,NULL,NULL),(29,'Achaguas',3,NULL,NULL),(30,'Biruaca',3,NULL,NULL),(31,'Muñóz',3,NULL,NULL),(32,'Páez',3,NULL,NULL),(33,'Pedro Camejo',3,NULL,NULL),(34,'Rómulo Gallegos',3,NULL,NULL),(35,'San Fernando',3,NULL,NULL),(36,'Atanasio Girardot',4,NULL,NULL),(37,'Bolívar',4,NULL,NULL),(38,'Camatagua',4,NULL,NULL),(39,'Francisco Linares Alcántara',4,NULL,NULL),(40,'José Ángel Lamas',4,NULL,NULL),(41,'José Félix Ribas',4,NULL,NULL),(42,'José Rafael Revenga',4,NULL,NULL),(43,'Libertador',4,NULL,NULL),(44,'Mario Briceño Iragorry',4,NULL,NULL),(45,'Ocumare de la Costa de Oro',4,NULL,NULL),(46,'San Casimiro',4,NULL,NULL),(47,'San Sebastián',4,NULL,NULL),(48,'Santiago Mariño',4,NULL,NULL),(49,'Santos Michelena',4,NULL,NULL),(50,'Sucre',4,NULL,NULL),(51,'Tovar',4,NULL,NULL),(52,'Urdaneta',4,NULL,NULL),(53,'Zamora',4,NULL,NULL),(54,'Alberto Arvelo Torrealba',5,NULL,NULL),(55,'Andrés Eloy Blanco',5,NULL,NULL),(56,'Antonio José de Sucre',5,NULL,NULL),(57,'Arismendi',5,NULL,NULL),(58,'Barinas',5,NULL,NULL),(59,'Bolívar',5,NULL,NULL),(60,'Cruz Paredes',5,NULL,NULL),(61,'Ezequiel Zamora',5,NULL,NULL),(62,'Obispos',5,NULL,NULL),(63,'Pedraza',5,NULL,NULL),(64,'Rojas',5,NULL,NULL),(65,'Sosa',5,NULL,NULL),(66,'Caroní',6,NULL,NULL),(67,'Cedeño',6,NULL,NULL),(68,'El Callao',6,NULL,NULL),(69,'Gran Sabana',6,NULL,NULL),(70,'Heres',6,NULL,NULL),(71,'Piar',6,NULL,NULL),(72,'Angostura (Raúl Leoni)',6,NULL,NULL),(73,'Roscio',6,NULL,NULL),(74,'Sifontes',6,NULL,NULL),(75,'Sucre',6,NULL,NULL),(76,'Padre Pedro Chien',6,NULL,NULL),(77,'Bejuma',7,NULL,NULL),(78,'Carlos Arvelo',7,NULL,NULL),(79,'Diego Ibarra',7,NULL,NULL),(80,'Guacara',7,NULL,NULL),(81,'Juan José Mora',7,NULL,NULL),(82,'Libertador',7,NULL,NULL),(83,'Los Guayos',7,NULL,NULL),(84,'Miranda',7,NULL,NULL),(85,'Montalbán',7,NULL,NULL),(86,'Naguanagua',7,NULL,NULL),(87,'Puerto Cabello',7,NULL,NULL),(88,'San Diego',7,NULL,NULL),(89,'San Joaquín',7,NULL,NULL),(90,'Valencia',7,NULL,NULL),(91,'Anzoátegui',8,NULL,NULL),(92,'Tinaquillo',8,NULL,NULL),(93,'Girardot',8,NULL,NULL),(94,'Lima Blanco',8,NULL,NULL),(95,'Pao de San Juan Bautista',8,NULL,NULL),(96,'Ricaurte',8,NULL,NULL),(97,'Rómulo Gallegos',8,NULL,NULL),(98,'San Carlos',8,NULL,NULL),(99,'Tinaco',8,NULL,NULL),(100,'Antonio Díaz',9,NULL,NULL),(101,'Casacoima',9,NULL,NULL),(102,'Pedernales',9,NULL,NULL),(103,'Tucupita',9,NULL,NULL),(104,'Acosta',10,NULL,NULL),(105,'Bolívar',10,NULL,NULL),(106,'Buchivacoa',10,NULL,NULL),(107,'Cacique Manaure',10,NULL,NULL),(108,'Carirubana',10,NULL,NULL),(109,'Colina',10,NULL,NULL),(110,'Dabajuro',10,NULL,NULL),(111,'Democracia',10,NULL,NULL),(112,'Falcón',10,NULL,NULL),(113,'Federación',10,NULL,NULL),(114,'Jacura',10,NULL,NULL),(115,'José Laurencio Silva',10,NULL,NULL),(116,'Los Taques',10,NULL,NULL),(117,'Mauroa',10,NULL,NULL),(118,'Miranda',10,NULL,NULL),(119,'Monseñor Iturriza',10,NULL,NULL),(120,'Palmasola',10,NULL,NULL),(121,'Petit',10,NULL,NULL),(122,'Píritu',10,NULL,NULL),(123,'San Francisco',10,NULL,NULL),(124,'Sucre',10,NULL,NULL),(125,'Tocópero',10,NULL,NULL),(126,'Unión',10,NULL,NULL),(127,'Urumaco',10,NULL,NULL),(128,'Zamora',10,NULL,NULL),(129,'Camaguán',11,NULL,NULL),(130,'Chaguaramas',11,NULL,NULL),(131,'El Socorro',11,NULL,NULL),(132,'José Félix Ribas',11,NULL,NULL),(133,'José Tadeo Monagas',11,NULL,NULL),(134,'Juan Germán Roscio',11,NULL,NULL),(135,'Julián Mellado',11,NULL,NULL),(136,'Las Mercedes',11,NULL,NULL),(137,'Leonardo Infante',11,NULL,NULL),(138,'Pedro Zaraza',11,NULL,NULL),(139,'Ortíz',11,NULL,NULL),(140,'San Gerónimo de Guayabal',11,NULL,NULL),(141,'San José de Guaribe',11,NULL,NULL),(142,'Santa María de Ipire',11,NULL,NULL),(143,'Sebastián Francisco de Miranda',11,NULL,NULL),(144,'Andrés Eloy Blanco',12,NULL,NULL),(145,'Crespo',12,NULL,NULL),(146,'Iribarren',12,NULL,NULL),(147,'Jiménez',12,NULL,NULL),(148,'Morán',12,NULL,NULL),(149,'Palavecino',12,NULL,NULL),(150,'Simón Planas',12,NULL,NULL),(151,'Torres',12,NULL,NULL),(152,'Urdaneta',12,NULL,NULL),(179,'Alberto Adriani',13,NULL,NULL),(180,'Andrés Bello',13,NULL,NULL),(181,'Antonio Pinto Salinas',13,NULL,NULL),(182,'Aricagua',13,NULL,NULL),(183,'Arzobispo Chacón',13,NULL,NULL),(184,'Campo Elías',13,NULL,NULL),(185,'Caracciolo Parra Olmedo',13,NULL,NULL),(186,'Cardenal Quintero',13,NULL,NULL),(187,'Guaraque',13,NULL,NULL),(188,'Julio César Salas',13,NULL,NULL),(189,'Justo Briceño',13,NULL,NULL),(190,'Libertador',13,NULL,NULL),(191,'Miranda',13,NULL,NULL),(192,'Obispo Ramos de Lora',13,NULL,NULL),(193,'Padre Noguera',13,NULL,NULL),(194,'Pueblo Llano',13,NULL,NULL),(195,'Rangel',13,NULL,NULL),(196,'Rivas Dávila',13,NULL,NULL),(197,'Santos Marquina',13,NULL,NULL),(198,'Sucre',13,NULL,NULL),(199,'Tovar',13,NULL,NULL),(200,'Tulio Febres Cordero',13,NULL,NULL),(201,'Zea',13,NULL,NULL),(223,'Acevedo',14,NULL,NULL),(224,'Andrés Bello',14,NULL,NULL),(225,'Baruta',14,NULL,NULL),(226,'Brión',14,NULL,NULL),(227,'Buroz',14,NULL,NULL),(228,'Carrizal',14,NULL,NULL),(229,'Chacao',14,NULL,NULL),(230,'Cristóbal Rojas',14,NULL,NULL),(231,'El Hatillo',14,NULL,NULL),(232,'Guaicaipuro',14,NULL,NULL),(233,'Independencia',14,NULL,NULL),(234,'Lander',14,NULL,NULL),(235,'Los Salias',14,NULL,NULL),(236,'Páez',14,NULL,NULL),(237,'Paz Castillo',14,NULL,NULL),(238,'Pedro Gual',14,NULL,NULL),(239,'Plaza',14,NULL,NULL),(240,'Simón Bolívar',14,NULL,NULL),(241,'Sucre',14,NULL,NULL),(242,'Urdaneta',14,NULL,NULL),(243,'Zamora',14,NULL,NULL),(258,'Acosta',15,NULL,NULL),(259,'Aguasay',15,NULL,NULL),(260,'Bolívar',15,NULL,NULL),(261,'Caripe',15,NULL,NULL),(262,'Cedeño',15,NULL,NULL),(263,'Ezequiel Zamora',15,NULL,NULL),(264,'Libertador',15,NULL,NULL),(265,'Maturín',15,NULL,NULL),(266,'Piar',15,NULL,NULL),(267,'Punceres',15,NULL,NULL),(268,'Santa Bárbara',15,NULL,NULL),(269,'Sotillo',15,NULL,NULL),(270,'Uracoa',15,NULL,NULL),(271,'Antolín del Campo',16,NULL,NULL),(272,'Arismendi',16,NULL,NULL),(273,'García',16,NULL,NULL),(274,'Gómez',16,NULL,NULL),(275,'Maneiro',16,NULL,NULL),(276,'Marcano',16,NULL,NULL),(277,'Mariño',16,NULL,NULL),(278,'Península de Macanao',16,NULL,NULL),(279,'Tubores',16,NULL,NULL),(280,'Villalba',16,NULL,NULL),(281,'Díaz',16,NULL,NULL),(282,'Agua Blanca',17,NULL,NULL),(283,'Araure',17,NULL,NULL),(284,'Esteller',17,NULL,NULL),(285,'Guanare',17,NULL,NULL),(286,'Guanarito',17,NULL,NULL),(287,'Monseñor José Vicente de Unda',17,NULL,NULL),(288,'Ospino',17,NULL,NULL),(289,'Páez',17,NULL,NULL),(290,'Papelón',17,NULL,NULL),(291,'San Genaro de Boconoíto',17,NULL,NULL),(292,'San Rafael de Onoto',17,NULL,NULL),(293,'Santa Rosalía',17,NULL,NULL),(294,'Sucre',17,NULL,NULL),(295,'Turén',17,NULL,NULL),(296,'Andrés Eloy Blanco',18,NULL,NULL),(297,'Andrés Mata',18,NULL,NULL),(298,'Arismendi',18,NULL,NULL),(299,'Benítez',18,NULL,NULL),(300,'Bermúdez',18,NULL,NULL),(301,'Bolívar',18,NULL,NULL),(302,'Cajigal',18,NULL,NULL),(303,'Cruz Salmerón Acosta',18,NULL,NULL),(304,'Libertador',18,NULL,NULL),(305,'Mariño',18,NULL,NULL),(306,'Mejía',18,NULL,NULL),(307,'Montes',18,NULL,NULL),(308,'Ribero',18,NULL,NULL),(309,'Sucre',18,NULL,NULL),(310,'Valdéz',18,NULL,NULL),(341,'Andrés Bello',19,NULL,NULL),(342,'Antonio Rómulo Costa',19,NULL,NULL),(343,'Ayacucho',19,NULL,NULL),(344,'Bolívar',19,NULL,NULL),(345,'Cárdenas',19,NULL,NULL),(346,'Córdoba',19,NULL,NULL),(347,'Fernández Feo',19,NULL,NULL),(348,'Francisco de Miranda',19,NULL,NULL),(349,'García de Hevia',19,NULL,NULL),(350,'Guásimos',19,NULL,NULL),(351,'Independencia',19,NULL,NULL),(352,'Jáuregui',19,NULL,NULL),(353,'José María Vargas',19,NULL,NULL),(354,'Junín',19,NULL,NULL),(355,'Libertad',19,NULL,NULL),(356,'Libertador',19,NULL,NULL),(357,'Lobatera',19,NULL,NULL),(358,'Michelena',19,NULL,NULL),(359,'Panamericano',19,NULL,NULL),(360,'Pedro María Ureña',19,NULL,NULL),(361,'Rafael Urdaneta',19,NULL,NULL),(362,'Samuel Darío Maldonado',19,NULL,NULL),(363,'San Cristóbal',19,NULL,NULL),(364,'Seboruco',19,NULL,NULL),(365,'Simón Rodríguez',19,NULL,NULL),(366,'Sucre',19,NULL,NULL),(367,'Torbes',19,NULL,NULL),(368,'Uribante',19,NULL,NULL),(369,'San Judas Tadeo',19,NULL,NULL),(370,'Andrés Bello',20,NULL,NULL),(371,'Boconó',20,NULL,NULL),(372,'Bolívar',20,NULL,NULL),(373,'Candelaria',20,NULL,NULL),(374,'Carache',20,NULL,NULL),(375,'Escuque',20,NULL,NULL),(376,'José Felipe Márquez Cañizalez',20,NULL,NULL),(377,'Juan Vicente Campos Elías',20,NULL,NULL),(378,'La Ceiba',20,NULL,NULL),(379,'Miranda',20,NULL,NULL),(380,'Monte Carmelo',20,NULL,NULL),(381,'Motatán',20,NULL,NULL),(382,'Pampán',20,NULL,NULL),(383,'Pampanito',20,NULL,NULL),(384,'Rafael Rangel',20,NULL,NULL),(385,'San Rafael de Carvajal',20,NULL,NULL),(386,'Sucre',20,NULL,NULL),(387,'Trujillo',20,NULL,NULL),(388,'Urdaneta',20,NULL,NULL),(389,'Valera',20,NULL,NULL),(390,'Vargas',21,NULL,NULL),(391,'Arístides Bastidas',22,NULL,NULL),(392,'Bolívar',22,NULL,NULL),(407,'Bruzual',22,NULL,NULL),(408,'Cocorote',22,NULL,NULL),(409,'Independencia',22,NULL,NULL),(410,'José Antonio Páez',22,NULL,NULL),(411,'La Trinidad',22,NULL,NULL),(412,'Manuel Monge',22,NULL,NULL),(413,'Nirgua',22,NULL,NULL),(414,'Peña',22,NULL,NULL),(415,'San Felipe',22,NULL,NULL),(416,'Sucre',22,NULL,NULL),(417,'Urachiche',22,NULL,NULL),(418,'José Joaquín Veroes',22,NULL,NULL),(441,'Almirante Padilla',23,NULL,NULL),(442,'Baralt',23,NULL,NULL),(443,'Cabimas',23,NULL,NULL),(444,'Catatumbo',23,NULL,NULL),(445,'Colón',23,NULL,NULL),(446,'Francisco Javier Pulgar',23,NULL,NULL),(447,'Páez',23,NULL,NULL),(448,'Jesús Enrique Losada',23,NULL,NULL),(449,'Jesús María Semprún',23,NULL,NULL),(450,'La Cañada de Urdaneta',23,NULL,NULL),(451,'Lagunillas',23,NULL,NULL),(452,'Machiques de Perijá',23,NULL,NULL),(453,'Mara',23,NULL,NULL),(454,'Maracaibo',23,NULL,NULL),(455,'Miranda',23,NULL,NULL),(456,'Rosario de Perijá',23,NULL,NULL),(457,'San Francisco',23,NULL,NULL),(458,'Santa Rita',23,NULL,NULL),(459,'Simón Bolívar',23,NULL,NULL),(460,'Sucre',23,NULL,NULL),(461,'Valmore Rodríguez',23,NULL,NULL),(462,'Libertador',24,NULL,NULL);
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_tramite` bigint unsigned NOT NULL,
  `origenbanco` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencia` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` enum('Enviado','Aprobado','Rechazado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipopago` enum('Transferencia','Pago Movil','Efectivo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgpago` text COLLATE utf8mb4_unicode_ci,
  `pago` decimal(10,2) NOT NULL,
  `ingresoreal` decimal(10,2) NOT NULL,
  `descuento` tinyint NOT NULL,
  `fepago` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pagos_id_tramite_foreign` (`id_tramite`),
  CONSTRAINT `pagos_id_tramite_foreign` FOREIGN KEY (`id_tramite`) REFERENCES `tramites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,8,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-18','2021-02-24 04:59:06','2021-02-24 04:59:06'),(2,9,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:01:58','2021-02-24 05:01:58'),(3,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:02:23','2021-02-24 05:02:23'),(4,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:02:53','2021-02-24 05:02:53'),(5,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:05:15','2021-02-24 05:05:15'),(6,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:08:23','2021-02-24 05:08:23'),(7,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:09:11','2021-02-24 05:09:11'),(8,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:09:43','2021-02-24 05:09:43'),(9,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:10:44','2021-02-24 05:10:44'),(10,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:11:11','2021-02-24 05:11:11'),(11,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:14:55','2021-02-24 05:14:55'),(12,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:16:20','2021-02-24 05:16:20'),(13,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:16:40','2021-02-24 05:16:40'),(14,10,'Banco Mercantil','123123123','Enviado','Transferencia',NULL,15000000.00,15000000.00,1,'2021-02-16','2021-02-24 05:25:24','2021-02-24 05:25:24');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parroquias`
--

DROP TABLE IF EXISTS `parroquias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parroquias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_municipio` bigint unsigned NOT NULL,
  `parroquia` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parroquias_id_municipio_foreign` (`id_municipio`),
  CONSTRAINT `parroquias_id_municipio_foreign` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parroquias`
--

LOCK TABLES `parroquias` WRITE;
/*!40000 ALTER TABLE `parroquias` DISABLE KEYS */;
INSERT INTO `parroquias` VALUES (1,1,'Alto Orinoco',NULL,NULL),(2,1,'Huachamacare Acanaña',NULL,NULL),(3,1,'Marawaka Toky Shamanaña',NULL,NULL),(4,1,'Mavaka Mavaka',NULL,NULL),(5,1,'Sierra Parima Parimabé',NULL,NULL),(6,2,'Ucata Laja Lisa',NULL,NULL),(7,2,'Yapacana Macuruco',NULL,NULL),(8,2,'Caname Guarinuma',NULL,NULL),(9,3,'Fernando Girón Tovar',NULL,NULL),(10,3,'Luis Alberto Gómez',NULL,NULL),(11,3,'Pahueña Limón de Parhueña',NULL,NULL),(12,3,'Platanillal Platanillal',NULL,NULL),(13,4,'Samariapo',NULL,NULL),(14,4,'Sipapo',NULL,NULL),(15,4,'Munduapo',NULL,NULL),(16,4,'Guayapo',NULL,NULL),(17,5,'Alto Ventuari',NULL,NULL),(18,5,'Medio Ventuari',NULL,NULL),(19,5,'Bajo Ventuari',NULL,NULL),(20,6,'Victorino',NULL,NULL),(21,6,'Comunidad',NULL,NULL),(22,7,'Casiquiare',NULL,NULL),(23,7,'Cocuy',NULL,NULL),(24,7,'San Carlos de Río Negro',NULL,NULL),(25,7,'Solano',NULL,NULL),(26,8,'Anaco',NULL,NULL),(27,8,'San Joaquín',NULL,NULL),(28,9,'Cachipo',NULL,NULL),(29,9,'Aragua de Barcelona',NULL,NULL),(30,11,'Lechería',NULL,NULL),(31,11,'El Morro',NULL,NULL),(32,12,'Puerto Píritu',NULL,NULL),(33,12,'San Miguel',NULL,NULL),(34,12,'Sucre',NULL,NULL),(35,13,'Valle de Guanape',NULL,NULL),(36,13,'Santa Bárbara',NULL,NULL),(37,14,'El Chaparro',NULL,NULL),(38,14,'Tomás Alfaro',NULL,NULL),(39,14,'Calatrava',NULL,NULL),(40,15,'Guanta',NULL,NULL),(41,15,'Chorrerón',NULL,NULL),(42,16,'Mamo',NULL,NULL),(43,16,'Soledad',NULL,NULL),(44,17,'Mapire',NULL,NULL),(45,17,'Piar',NULL,NULL),(46,17,'Santa Clara',NULL,NULL),(47,17,'San Diego de Cabrutica',NULL,NULL),(48,17,'Uverito',NULL,NULL),(49,17,'Zuata',NULL,NULL),(50,18,'Puerto La Cruz',NULL,NULL),(51,18,'Pozuelos',NULL,NULL),(52,19,'Onoto',NULL,NULL),(53,19,'San Pablo',NULL,NULL),(54,20,'San Mateo',NULL,NULL),(55,20,'El Carito',NULL,NULL),(56,20,'Santa Inés',NULL,NULL),(57,20,'La Romereña',NULL,NULL),(58,21,'Atapirire',NULL,NULL),(59,21,'Boca del Pao',NULL,NULL),(60,21,'El Pao',NULL,NULL),(61,21,'Pariaguán',NULL,NULL),(62,22,'Cantaura',NULL,NULL),(63,22,'Libertador',NULL,NULL),(64,22,'Santa Rosa',NULL,NULL),(65,22,'Urica',NULL,NULL),(66,23,'Píritu',NULL,NULL),(67,23,'San Francisco',NULL,NULL),(68,24,'San José de Guanipa',NULL,NULL),(69,25,'Boca de Uchire',NULL,NULL),(70,25,'Boca de Chávez',NULL,NULL),(71,26,'Pueblo Nuevo',NULL,NULL),(72,26,'Santa Ana',NULL,NULL),(73,27,'Bergantín',NULL,NULL),(74,27,'Caigua',NULL,NULL),(75,27,'El Carmen',NULL,NULL),(76,27,'El Pilar',NULL,NULL),(77,27,'Naricual',NULL,NULL),(78,27,'San Crsitóbal',NULL,NULL),(79,28,'Edmundo Barrios',NULL,NULL),(80,28,'Miguel Otero Silva',NULL,NULL),(81,29,'Achaguas',NULL,NULL),(82,29,'Apurito',NULL,NULL),(83,29,'El Yagual',NULL,NULL),(84,29,'Guachara',NULL,NULL),(85,29,'Mucuritas',NULL,NULL),(86,29,'Queseras del medio',NULL,NULL),(87,30,'Biruaca',NULL,NULL),(88,31,'Bruzual',NULL,NULL),(89,31,'Mantecal',NULL,NULL),(90,31,'Quintero',NULL,NULL),(91,31,'Rincón Hondo',NULL,NULL),(92,31,'San Vicente',NULL,NULL),(93,32,'Guasdualito',NULL,NULL),(94,32,'Aramendi',NULL,NULL),(95,32,'El Amparo',NULL,NULL),(96,32,'San Camilo',NULL,NULL),(97,32,'Urdaneta',NULL,NULL),(98,33,'San Juan de Payara',NULL,NULL),(99,33,'Codazzi',NULL,NULL),(100,33,'Cunaviche',NULL,NULL),(101,34,'Elorza',NULL,NULL),(102,34,'La Trinidad',NULL,NULL),(103,35,'San Fernando',NULL,NULL),(104,35,'El Recreo',NULL,NULL),(105,35,'Peñalver',NULL,NULL),(106,35,'San Rafael de Atamaica',NULL,NULL),(107,36,'Pedro José Ovalles',NULL,NULL),(108,36,'Joaquín Crespo',NULL,NULL),(109,36,'José Casanova Godoy',NULL,NULL),(110,36,'Madre María de San José',NULL,NULL),(111,36,'Andrés Eloy Blanco',NULL,NULL),(112,36,'Los Tacarigua',NULL,NULL),(113,36,'Las Delicias',NULL,NULL),(114,36,'Choroní',NULL,NULL),(115,37,'Bolívar',NULL,NULL),(116,38,'Camatagua',NULL,NULL),(117,38,'Carmen de Cura',NULL,NULL),(118,39,'Santa Rita',NULL,NULL),(119,39,'Francisco de Miranda',NULL,NULL),(120,39,'Moseñor Feliciano González',NULL,NULL),(121,40,'Santa Cruz',NULL,NULL),(122,41,'José Félix Ribas',NULL,NULL),(123,41,'Castor Nieves Ríos',NULL,NULL),(124,41,'Las Guacamayas',NULL,NULL),(125,41,'Pao de Zárate',NULL,NULL),(126,41,'Zuata',NULL,NULL),(127,42,'José Rafael Revenga',NULL,NULL),(128,43,'Palo Negro',NULL,NULL),(129,43,'San Martín de Porres',NULL,NULL),(130,44,'El Limón',NULL,NULL),(131,44,'Caña de Azúcar',NULL,NULL),(132,45,'Ocumare de la Costa',NULL,NULL),(133,46,'San Casimiro',NULL,NULL),(134,46,'Güiripa',NULL,NULL),(135,46,'Ollas de Caramacate',NULL,NULL),(136,46,'Valle Morín',NULL,NULL),(137,47,'San Sebastían',NULL,NULL),(138,48,'Turmero',NULL,NULL),(139,48,'Arevalo Aponte',NULL,NULL),(140,48,'Chuao',NULL,NULL),(141,48,'Samán de Güere',NULL,NULL),(142,48,'Alfredo Pacheco Miranda',NULL,NULL),(143,49,'Santos Michelena',NULL,NULL),(144,49,'Tiara',NULL,NULL),(145,50,'Cagua',NULL,NULL),(146,50,'Bella Vista',NULL,NULL),(147,51,'Tovar',NULL,NULL),(148,52,'Urdaneta',NULL,NULL),(149,52,'Las Peñitas',NULL,NULL),(150,52,'San Francisco de Cara',NULL,NULL),(151,52,'Taguay',NULL,NULL),(152,53,'Zamora',NULL,NULL),(153,53,'Magdaleno',NULL,NULL),(154,53,'San Francisco de Asís',NULL,NULL),(155,53,'Valles de Tucutunemo',NULL,NULL),(156,53,'Augusto Mijares',NULL,NULL),(157,54,'Sabaneta',NULL,NULL),(158,54,'Juan Antonio Rodríguez Domínguez',NULL,NULL),(159,55,'El Cantón',NULL,NULL),(160,55,'Santa Cruz de Guacas',NULL,NULL),(161,55,'Puerto Vivas',NULL,NULL),(162,56,'Ticoporo',NULL,NULL),(163,56,'Nicolás Pulido',NULL,NULL),(164,56,'Andrés Bello',NULL,NULL),(165,57,'Arismendi',NULL,NULL),(166,57,'Guadarrama',NULL,NULL),(167,57,'La Unión',NULL,NULL),(168,57,'San Antonio',NULL,NULL),(169,58,'Barinas',NULL,NULL),(170,58,'Alberto Arvelo Larriva',NULL,NULL),(171,58,'San Silvestre',NULL,NULL),(172,58,'Santa Inés',NULL,NULL),(173,58,'Santa Lucía',NULL,NULL),(174,58,'Torumos',NULL,NULL),(175,58,'El Carmen',NULL,NULL),(176,58,'Rómulo Betancourt',NULL,NULL),(177,58,'Corazón de Jesús',NULL,NULL),(178,58,'Ramón Ignacio Méndez',NULL,NULL),(179,58,'Alto Barinas',NULL,NULL),(180,58,'Manuel Palacio Fajardo',NULL,NULL),(181,58,'Juan Antonio Rodríguez Domínguez',NULL,NULL),(182,58,'Dominga Ortiz de Páez',NULL,NULL),(183,59,'Barinitas',NULL,NULL),(184,59,'Altamira de Cáceres',NULL,NULL),(185,59,'Calderas',NULL,NULL),(186,60,'Barrancas',NULL,NULL),(187,60,'El Socorro',NULL,NULL),(188,60,'Mazparrito',NULL,NULL),(189,61,'Santa Bárbara',NULL,NULL),(190,61,'Pedro Briceño Méndez',NULL,NULL),(191,61,'Ramón Ignacio Méndez',NULL,NULL),(192,61,'José Ignacio del Pumar',NULL,NULL),(193,62,'Obispos',NULL,NULL),(194,62,'Guasimitos',NULL,NULL),(195,62,'El Real',NULL,NULL),(196,62,'La Luz',NULL,NULL),(197,63,'Ciudad Bolívia',NULL,NULL),(198,63,'José Ignacio Briceño',NULL,NULL),(199,63,'José Félix Ribas',NULL,NULL),(200,63,'Páez',NULL,NULL),(201,64,'Libertad',NULL,NULL),(202,64,'Dolores',NULL,NULL),(203,64,'Santa Rosa',NULL,NULL),(204,64,'Palacio Fajardo',NULL,NULL),(205,65,'Ciudad de Nutrias',NULL,NULL),(206,65,'El Regalo',NULL,NULL),(207,65,'Puerto Nutrias',NULL,NULL),(208,65,'Santa Catalina',NULL,NULL),(209,66,'Cachamay',NULL,NULL),(210,66,'Chirica',NULL,NULL),(211,66,'Dalla Costa',NULL,NULL),(212,66,'Once de Abril',NULL,NULL),(213,66,'Simón Bolívar',NULL,NULL),(214,66,'Unare',NULL,NULL),(215,66,'Universidad',NULL,NULL),(216,66,'Vista al Sol',NULL,NULL),(217,66,'Pozo Verde',NULL,NULL),(218,66,'Yocoima',NULL,NULL),(219,66,'5 de Julio',NULL,NULL),(220,67,'Cedeño',NULL,NULL),(221,67,'Altagracia',NULL,NULL),(222,67,'Ascensión Farreras',NULL,NULL),(223,67,'Guaniamo',NULL,NULL),(224,67,'La Urbana',NULL,NULL),(225,67,'Pijiguaos',NULL,NULL),(226,68,'El Callao',NULL,NULL),(227,69,'Gran Sabana',NULL,NULL),(228,69,'Ikabarú',NULL,NULL),(229,70,'Catedral',NULL,NULL),(230,70,'Zea',NULL,NULL),(231,70,'Orinoco',NULL,NULL),(232,70,'José Antonio Páez',NULL,NULL),(233,70,'Marhuanta',NULL,NULL),(234,70,'Agua Salada',NULL,NULL),(235,70,'Vista Hermosa',NULL,NULL),(236,70,'La Sabanita',NULL,NULL),(237,70,'Panapana',NULL,NULL),(238,71,'Andrés Eloy Blanco',NULL,NULL),(239,71,'Pedro Cova',NULL,NULL),(240,72,'Raúl Leoni',NULL,NULL),(241,72,'Barceloneta',NULL,NULL),(242,72,'Santa Bárbara',NULL,NULL),(243,72,'San Francisco',NULL,NULL),(244,73,'Roscio',NULL,NULL),(245,73,'Salóm',NULL,NULL),(246,74,'Sifontes',NULL,NULL),(247,74,'Dalla Costa',NULL,NULL),(248,74,'San Isidro',NULL,NULL),(249,75,'Sucre',NULL,NULL),(250,75,'Aripao',NULL,NULL),(251,75,'Guarataro',NULL,NULL),(252,75,'Las Majadas',NULL,NULL),(253,75,'Moitaco',NULL,NULL),(254,76,'Padre Pedro Chien',NULL,NULL),(255,76,'Río Grande',NULL,NULL),(256,77,'Bejuma',NULL,NULL),(257,77,'Canoabo',NULL,NULL),(258,77,'Simón Bolívar',NULL,NULL),(259,78,'Güigüe',NULL,NULL),(260,78,'Carabobo',NULL,NULL),(261,78,'Tacarigua',NULL,NULL),(262,79,'Mariara',NULL,NULL),(263,79,'Aguas Calientes',NULL,NULL),(264,80,'Ciudad Alianza',NULL,NULL),(265,80,'Guacara',NULL,NULL),(266,80,'Yagua',NULL,NULL),(267,81,'Morón',NULL,NULL),(268,81,'Yagua',NULL,NULL),(269,82,'Tocuyito',NULL,NULL),(270,82,'Independencia',NULL,NULL),(271,83,'Los Guayos',NULL,NULL),(272,84,'Miranda',NULL,NULL),(273,85,'Montalbán',NULL,NULL),(274,86,'Naguanagua',NULL,NULL),(275,87,'Bartolomé Salóm',NULL,NULL),(276,87,'Democracia',NULL,NULL),(277,87,'Fraternidad',NULL,NULL),(278,87,'Goaigoaza',NULL,NULL),(279,87,'Juan José Flores',NULL,NULL),(280,87,'Unión',NULL,NULL),(281,87,'Borburata',NULL,NULL),(282,87,'Patanemo',NULL,NULL),(283,88,'San Diego',NULL,NULL),(284,89,'San Joaquín',NULL,NULL),(285,90,'Candelaria',NULL,NULL),(286,90,'Catedral',NULL,NULL),(287,90,'El Socorro',NULL,NULL),(288,90,'Miguel Peña',NULL,NULL),(289,90,'Rafael Urdaneta',NULL,NULL),(290,90,'San Blas',NULL,NULL),(291,90,'San José',NULL,NULL),(292,90,'Santa Rosa',NULL,NULL),(293,90,'Negro Primero',NULL,NULL),(294,91,'Cojedes',NULL,NULL),(295,91,'Juan de Mata Suárez',NULL,NULL),(296,92,'Tinaquillo',NULL,NULL),(297,93,'El Baúl',NULL,NULL),(298,93,'Sucre',NULL,NULL),(299,94,'La Aguadita',NULL,NULL),(300,94,'Macapo',NULL,NULL),(301,95,'El Pao',NULL,NULL),(302,96,'El Amparo',NULL,NULL),(303,96,'Libertad de Cojedes',NULL,NULL),(304,97,'Rómulo Gallegos',NULL,NULL),(305,98,'San Carlos de Austria',NULL,NULL),(306,98,'Juan Ángel Bravo',NULL,NULL),(307,98,'Manuel Manrique',NULL,NULL),(308,99,'General en Jefe José Laurencio Silva',NULL,NULL),(309,100,'Curiapo',NULL,NULL),(310,100,'Almirante Luis Brión',NULL,NULL),(311,100,'Francisco Aniceto Lugo',NULL,NULL),(312,100,'Manuel Renaud',NULL,NULL),(313,100,'Padre Barral',NULL,NULL),(314,100,'Santos de Abelgas',NULL,NULL),(315,101,'Imataca',NULL,NULL),(316,101,'Cinco de Julio',NULL,NULL),(317,101,'Juan Bautista Arismendi',NULL,NULL),(318,101,'Manuel Piar',NULL,NULL),(319,101,'Rómulo Gallegos',NULL,NULL),(320,102,'Pedernales',NULL,NULL),(321,102,'Luis Beltrán Prieto Figueroa',NULL,NULL),(322,103,'San José (Delta Amacuro)',NULL,NULL),(323,103,'José Vidal Marcano',NULL,NULL),(324,103,'Juan Millán',NULL,NULL),(325,103,'Leonardo Ruíz Pineda',NULL,NULL),(326,103,'Mariscal Antonio José de Sucre',NULL,NULL),(327,103,'Monseñor Argimiro García',NULL,NULL),(328,103,'San Rafael (Delta Amacuro)',NULL,NULL),(329,103,'Virgen del Valle',NULL,NULL),(330,10,'Clarines',NULL,NULL),(331,10,'Guanape',NULL,NULL),(332,10,'Sabana de Uchire',NULL,NULL),(333,104,'Capadare',NULL,NULL),(334,104,'La Pastora',NULL,NULL),(335,104,'Libertador',NULL,NULL),(336,104,'San Juan de los Cayos',NULL,NULL),(337,105,'Aracua',NULL,NULL),(338,105,'La Peña',NULL,NULL),(339,105,'San Luis',NULL,NULL),(340,106,'Bariro',NULL,NULL),(341,106,'Borojó',NULL,NULL),(342,106,'Capatárida',NULL,NULL),(343,106,'Guajiro',NULL,NULL),(344,106,'Seque',NULL,NULL),(345,106,'Zazárida',NULL,NULL),(346,106,'Valle de Eroa',NULL,NULL),(347,107,'Cacique Manaure',NULL,NULL),(348,108,'Norte',NULL,NULL),(349,108,'Carirubana',NULL,NULL),(350,108,'Santa Ana',NULL,NULL),(351,108,'Urbana Punta Cardón',NULL,NULL),(352,109,'La Vela de Coro',NULL,NULL),(353,109,'Acurigua',NULL,NULL),(354,109,'Guaibacoa',NULL,NULL),(355,109,'Las Calderas',NULL,NULL),(356,109,'Macoruca',NULL,NULL),(357,110,'Dabajuro',NULL,NULL),(358,111,'Agua Clara',NULL,NULL),(359,111,'Avaria',NULL,NULL),(360,111,'Pedregal',NULL,NULL),(361,111,'Piedra Grande',NULL,NULL),(362,111,'Purureche',NULL,NULL),(363,112,'Adaure',NULL,NULL),(364,112,'Adícora',NULL,NULL),(365,112,'Baraived',NULL,NULL),(366,112,'Buena Vista',NULL,NULL),(367,112,'Jadacaquiva',NULL,NULL),(368,112,'El Vínculo',NULL,NULL),(369,112,'El Hato',NULL,NULL),(370,112,'Moruy',NULL,NULL),(371,112,'Pueblo Nuevo',NULL,NULL),(372,113,'Agua Larga',NULL,NULL),(373,113,'El Paují',NULL,NULL),(374,113,'Independencia',NULL,NULL),(375,113,'Mapararí',NULL,NULL),(376,114,'Agua Linda',NULL,NULL),(377,114,'Araurima',NULL,NULL),(378,114,'Jacura',NULL,NULL),(379,115,'Tucacas',NULL,NULL),(380,115,'Boca de Aroa',NULL,NULL),(381,116,'Los Taques',NULL,NULL),(382,116,'Judibana',NULL,NULL),(383,117,'Mene de Mauroa',NULL,NULL),(384,117,'San Félix',NULL,NULL),(385,117,'Casigua',NULL,NULL),(386,118,'Guzmán Guillermo',NULL,NULL),(387,118,'Mitare',NULL,NULL),(388,118,'Río Seco',NULL,NULL),(389,118,'Sabaneta',NULL,NULL),(390,118,'San Antonio',NULL,NULL),(391,118,'San Gabriel',NULL,NULL),(392,118,'Santa Ana',NULL,NULL),(393,119,'Boca del Tocuyo',NULL,NULL),(394,119,'Chichiriviche',NULL,NULL),(395,119,'Tocuyo de la Costa',NULL,NULL),(396,120,'Palmasola',NULL,NULL),(397,121,'Cabure',NULL,NULL),(398,121,'Colina',NULL,NULL),(399,121,'Curimagua',NULL,NULL),(400,122,'San José de la Costa',NULL,NULL),(401,122,'Píritu',NULL,NULL),(402,123,'San Francisco',NULL,NULL),(403,124,'Sucre',NULL,NULL),(404,124,'Pecaya',NULL,NULL),(405,125,'Tocópero',NULL,NULL),(406,126,'El Charal',NULL,NULL),(407,126,'Las Vegas del Tuy',NULL,NULL),(408,126,'Santa Cruz de Bucaral',NULL,NULL),(409,127,'Bruzual',NULL,NULL),(410,127,'Urumaco',NULL,NULL),(411,128,'Puerto Cumarebo',NULL,NULL),(412,128,'La Ciénaga',NULL,NULL),(413,128,'La Soledad',NULL,NULL),(414,128,'Pueblo Cumarebo',NULL,NULL),(415,128,'Zazárida',NULL,NULL),(416,113,'Churuguara',NULL,NULL),(417,129,'Camaguán',NULL,NULL),(418,129,'Puerto Miranda',NULL,NULL),(419,129,'Uverito',NULL,NULL),(420,130,'Chaguaramas',NULL,NULL),(421,131,'El Socorro',NULL,NULL),(422,132,'Tucupido',NULL,NULL),(423,132,'San Rafael de Laya',NULL,NULL),(424,133,'Altagracia de Orituco',NULL,NULL),(425,133,'San Rafael de Orituco',NULL,NULL),(426,133,'San Francisco Javier de Lezama',NULL,NULL),(427,133,'Paso Real de Macaira',NULL,NULL),(428,133,'Carlos Soublette',NULL,NULL),(429,133,'San Francisco de Macaira',NULL,NULL),(430,133,'Libertad de Orituco',NULL,NULL),(431,134,'Cantaclaro',NULL,NULL),(432,134,'San Juan de los Morros',NULL,NULL),(433,134,'Parapara',NULL,NULL),(434,135,'El Sombrero',NULL,NULL),(435,135,'Sosa',NULL,NULL),(436,136,'Las Mercedes',NULL,NULL),(437,136,'Cabruta',NULL,NULL),(438,136,'Santa Rita de Manapire',NULL,NULL),(439,137,'Valle de la Pascua',NULL,NULL),(440,137,'Espino',NULL,NULL),(441,138,'San José de Unare',NULL,NULL),(442,138,'Zaraza',NULL,NULL),(443,139,'San José de Tiznados',NULL,NULL),(444,139,'San Francisco de Tiznados',NULL,NULL),(445,139,'San Lorenzo de Tiznados',NULL,NULL),(446,139,'Ortiz',NULL,NULL),(447,140,'Guayabal',NULL,NULL),(448,140,'Cazorla',NULL,NULL),(449,141,'San José de Guaribe',NULL,NULL),(450,141,'Uveral',NULL,NULL),(451,142,'Santa María de Ipire',NULL,NULL),(452,142,'Altamira',NULL,NULL),(453,143,'El Calvario',NULL,NULL),(454,143,'El Rastro',NULL,NULL),(455,143,'Guardatinajas',NULL,NULL),(456,143,'Capital Urbana Calabozo',NULL,NULL),(457,144,'Quebrada Honda de Guache',NULL,NULL),(458,144,'Pío Tamayo',NULL,NULL),(459,144,'Yacambú',NULL,NULL),(460,145,'Fréitez',NULL,NULL),(461,145,'José María Blanco',NULL,NULL),(462,146,'Catedral',NULL,NULL),(463,146,'Concepción',NULL,NULL),(464,146,'El Cují',NULL,NULL),(465,146,'Juan de Villegas',NULL,NULL),(466,146,'Santa Rosa',NULL,NULL),(467,146,'Tamaca',NULL,NULL),(468,146,'Unión',NULL,NULL),(469,146,'Aguedo Felipe Alvarado',NULL,NULL),(470,146,'Buena Vista',NULL,NULL),(471,146,'Juárez',NULL,NULL),(472,147,'Juan Bautista Rodríguez',NULL,NULL),(473,147,'Cuara',NULL,NULL),(474,147,'Diego de Lozada',NULL,NULL),(475,147,'Paraíso de San José',NULL,NULL),(476,147,'San Miguel',NULL,NULL),(477,147,'Tintorero',NULL,NULL),(478,147,'José Bernardo Dorante',NULL,NULL),(479,147,'Coronel Mariano Peraza ',NULL,NULL),(480,148,'Bolívar',NULL,NULL),(481,148,'Anzoátegui',NULL,NULL),(482,148,'Guarico',NULL,NULL),(483,148,'Hilario Luna y Luna',NULL,NULL),(484,148,'Humocaro Alto',NULL,NULL),(485,148,'Humocaro Bajo',NULL,NULL),(486,148,'La Candelaria',NULL,NULL),(487,148,'Morán',NULL,NULL),(488,149,'Cabudare',NULL,NULL),(489,149,'José Gregorio Bastidas',NULL,NULL),(490,149,'Agua Viva',NULL,NULL),(491,150,'Sarare',NULL,NULL),(492,150,'Buría',NULL,NULL),(493,150,'Gustavo Vegas León',NULL,NULL),(494,151,'Trinidad Samuel',NULL,NULL),(495,151,'Antonio Díaz',NULL,NULL),(496,151,'Camacaro',NULL,NULL),(497,151,'Castañeda',NULL,NULL),(498,151,'Cecilio Zubillaga',NULL,NULL),(499,151,'Chiquinquirá',NULL,NULL),(500,151,'El Blanco',NULL,NULL),(501,151,'Espinoza de los Monteros',NULL,NULL),(502,151,'Lara',NULL,NULL),(503,151,'Las Mercedes',NULL,NULL),(504,151,'Manuel Morillo',NULL,NULL),(505,151,'Montaña Verde',NULL,NULL),(506,151,'Montes de Oca',NULL,NULL),(507,151,'Torres',NULL,NULL),(508,151,'Heriberto Arroyo',NULL,NULL),(509,151,'Reyes Vargas',NULL,NULL),(510,151,'Altagracia',NULL,NULL),(511,152,'Siquisique',NULL,NULL),(512,152,'Moroturo',NULL,NULL),(513,152,'San Miguel',NULL,NULL),(514,152,'Xaguas',NULL,NULL),(515,179,'Presidente Betancourt',NULL,NULL),(516,179,'Presidente Páez',NULL,NULL),(517,179,'Presidente Rómulo Gallegos',NULL,NULL),(518,179,'Gabriel Picón González',NULL,NULL),(519,179,'Héctor Amable Mora',NULL,NULL),(520,179,'José Nucete Sardi',NULL,NULL),(521,179,'Pulido Méndez',NULL,NULL),(522,180,'La Azulita',NULL,NULL),(523,181,'Santa Cruz de Mora',NULL,NULL),(524,181,'Mesa Bolívar',NULL,NULL),(525,181,'Mesa de Las Palmas',NULL,NULL),(526,182,'Aricagua',NULL,NULL),(527,182,'San Antonio',NULL,NULL),(528,183,'Canagua',NULL,NULL),(529,183,'Capurí',NULL,NULL),(530,183,'Chacantá',NULL,NULL),(531,183,'El Molino',NULL,NULL),(532,183,'Guaimaral',NULL,NULL),(533,183,'Mucutuy',NULL,NULL),(534,183,'Mucuchachí',NULL,NULL),(535,184,'Fernández Peña',NULL,NULL),(536,184,'Matriz',NULL,NULL),(537,184,'Montalbán',NULL,NULL),(538,184,'Acequias',NULL,NULL),(539,184,'Jají',NULL,NULL),(540,184,'La Mesa',NULL,NULL),(541,184,'San José del Sur',NULL,NULL),(542,185,'Tucaní',NULL,NULL),(543,185,'Florencio Ramírez',NULL,NULL),(544,186,'Santo Domingo',NULL,NULL),(545,186,'Las Piedras',NULL,NULL),(546,187,'Guaraque',NULL,NULL),(547,187,'Mesa de Quintero',NULL,NULL),(548,187,'Río Negro',NULL,NULL),(549,188,'Arapuey',NULL,NULL),(550,188,'Palmira',NULL,NULL),(551,189,'San Cristóbal de Torondoy',NULL,NULL),(552,189,'Torondoy',NULL,NULL),(553,190,'Antonio Spinetti Dini',NULL,NULL),(554,190,'Arias',NULL,NULL),(555,190,'Caracciolo Parra Pérez',NULL,NULL),(556,190,'Domingo Peña',NULL,NULL),(557,190,'El Llano',NULL,NULL),(558,190,'Gonzalo Picón Febres',NULL,NULL),(559,190,'Jacinto Plaza',NULL,NULL),(560,190,'Juan Rodríguez Suárez',NULL,NULL),(561,190,'Lasso de la Vega',NULL,NULL),(562,190,'Mariano Picón Salas',NULL,NULL),(563,190,'Milla',NULL,NULL),(564,190,'Osuna Rodríguez',NULL,NULL),(565,190,'Sagrario',NULL,NULL),(566,190,'El Morro',NULL,NULL),(567,190,'Los Nevados',NULL,NULL),(568,191,'Andrés Eloy Blanco',NULL,NULL),(569,191,'La Venta',NULL,NULL),(570,191,'Piñango',NULL,NULL),(571,191,'Timotes',NULL,NULL),(572,192,'Eloy Paredes',NULL,NULL),(573,192,'San Rafael de Alcázar',NULL,NULL),(574,192,'Santa Elena de Arenales',NULL,NULL),(575,193,'Santa María de Caparo',NULL,NULL),(576,194,'Pueblo Llano',NULL,NULL),(577,195,'Cacute',NULL,NULL),(578,195,'La Toma',NULL,NULL),(579,195,'Mucuchíes',NULL,NULL),(580,195,'Mucurubá',NULL,NULL),(581,195,'San Rafael',NULL,NULL),(582,196,'Gerónimo Maldonado',NULL,NULL),(583,196,'Bailadores',NULL,NULL),(584,197,'Tabay',NULL,NULL),(585,198,'Chiguará',NULL,NULL),(586,198,'Estánquez',NULL,NULL),(587,198,'Lagunillas',NULL,NULL),(588,198,'La Trampa',NULL,NULL),(589,198,'Pueblo Nuevo del Sur',NULL,NULL),(590,198,'San Juan',NULL,NULL),(591,199,'El Amparo',NULL,NULL),(592,199,'El Llano',NULL,NULL),(593,199,'San Francisco',NULL,NULL),(594,199,'Tovar',NULL,NULL),(595,200,'Independencia',NULL,NULL),(596,200,'María de la Concepción Palacios Blanco',NULL,NULL),(597,200,'Nueva Bolivia',NULL,NULL),(598,200,'Santa Apolonia',NULL,NULL),(599,201,'Caño El Tigre',NULL,NULL),(600,201,'Zea',NULL,NULL),(601,223,'Aragüita',NULL,NULL),(602,223,'Arévalo González',NULL,NULL),(603,223,'Capaya',NULL,NULL),(604,223,'Caucagua',NULL,NULL),(605,223,'Panaquire',NULL,NULL),(606,223,'Ribas',NULL,NULL),(607,223,'El Café',NULL,NULL),(608,223,'Marizapa',NULL,NULL),(609,224,'Cumbo',NULL,NULL),(610,224,'San José de Barlovento',NULL,NULL),(611,225,'El Cafetal',NULL,NULL),(612,225,'Las Minas',NULL,NULL),(613,225,'Nuestra Señora del Rosario',NULL,NULL),(614,226,'Higuerote',NULL,NULL),(615,226,'Curiepe',NULL,NULL),(616,226,'Tacarigua de Brión',NULL,NULL),(617,227,'Mamporal',NULL,NULL),(618,228,'Carrizal',NULL,NULL),(619,229,'Chacao',NULL,NULL),(620,230,'Charallave',NULL,NULL),(621,230,'Las Brisas',NULL,NULL),(622,231,'El Hatillo',NULL,NULL),(623,232,'Altagracia de la Montaña',NULL,NULL),(624,232,'Cecilio Acosta',NULL,NULL),(625,232,'Los Teques',NULL,NULL),(626,232,'El Jarillo',NULL,NULL),(627,232,'San Pedro',NULL,NULL),(628,232,'Tácata',NULL,NULL),(629,232,'Paracotos',NULL,NULL),(630,233,'Cartanal',NULL,NULL),(631,233,'Santa Teresa del Tuy',NULL,NULL),(632,234,'La Democracia',NULL,NULL),(633,234,'Ocumare del Tuy',NULL,NULL),(634,234,'Santa Bárbara',NULL,NULL),(635,235,'San Antonio de los Altos',NULL,NULL),(636,236,'Río Chico',NULL,NULL),(637,236,'El Guapo',NULL,NULL),(638,236,'Tacarigua de la Laguna',NULL,NULL),(639,236,'Paparo',NULL,NULL),(640,236,'San Fernando del Guapo',NULL,NULL),(641,237,'Santa Lucía del Tuy',NULL,NULL),(642,238,'Cúpira',NULL,NULL),(643,238,'Machurucuto',NULL,NULL),(644,239,'Guarenas',NULL,NULL),(645,240,'San Antonio de Yare',NULL,NULL),(646,240,'San Francisco de Yare',NULL,NULL),(647,241,'Leoncio Martínez',NULL,NULL),(648,241,'Petare',NULL,NULL),(649,241,'Caucagüita',NULL,NULL),(650,241,'Filas de Mariche',NULL,NULL),(651,241,'La Dolorita',NULL,NULL),(652,242,'Cúa',NULL,NULL),(653,242,'Nueva Cúa',NULL,NULL),(654,243,'Guatire',NULL,NULL),(655,243,'Bolívar',NULL,NULL),(656,258,'San Antonio de Maturín',NULL,NULL),(657,258,'San Francisco de Maturín',NULL,NULL),(658,259,'Aguasay',NULL,NULL),(659,260,'Caripito',NULL,NULL),(660,261,'El Guácharo',NULL,NULL),(661,261,'La Guanota',NULL,NULL),(662,261,'Sabana de Piedra',NULL,NULL),(663,261,'San Agustín',NULL,NULL),(664,261,'Teresen',NULL,NULL),(665,261,'Caripe',NULL,NULL),(666,262,'Areo',NULL,NULL),(667,262,'Capital Cedeño',NULL,NULL),(668,262,'San Félix de Cantalicio',NULL,NULL),(669,262,'Viento Fresco',NULL,NULL),(670,263,'El Tejero',NULL,NULL),(671,263,'Punta de Mata',NULL,NULL),(672,264,'Chaguaramas',NULL,NULL),(673,264,'Las Alhuacas',NULL,NULL),(674,264,'Tabasca',NULL,NULL),(675,264,'Temblador',NULL,NULL),(676,265,'Alto de los Godos',NULL,NULL),(677,265,'Boquerón',NULL,NULL),(678,265,'Las Cocuizas',NULL,NULL),(679,265,'La Cruz',NULL,NULL),(680,265,'San Simón',NULL,NULL),(681,265,'El Corozo',NULL,NULL),(682,265,'El Furrial',NULL,NULL),(683,265,'Jusepín',NULL,NULL),(684,265,'La Pica',NULL,NULL),(685,265,'San Vicente',NULL,NULL),(686,266,'Aparicio',NULL,NULL),(687,266,'Aragua de Maturín',NULL,NULL),(688,266,'Chaguamal',NULL,NULL),(689,266,'El Pinto',NULL,NULL),(690,266,'Guanaguana',NULL,NULL),(691,266,'La Toscana',NULL,NULL),(692,266,'Taguaya',NULL,NULL),(693,267,'Cachipo',NULL,NULL),(694,267,'Quiriquire',NULL,NULL),(695,268,'Santa Bárbara',NULL,NULL),(696,269,'Barrancas',NULL,NULL),(697,269,'Los Barrancos de Fajardo',NULL,NULL),(698,270,'Uracoa',NULL,NULL),(699,271,'Antolín del Campo',NULL,NULL),(700,272,'Arismendi',NULL,NULL),(701,273,'García',NULL,NULL),(702,273,'Francisco Fajardo',NULL,NULL),(703,274,'Bolívar',NULL,NULL),(704,274,'Guevara',NULL,NULL),(705,274,'Matasiete',NULL,NULL),(706,274,'Santa Ana',NULL,NULL),(707,274,'Sucre',NULL,NULL),(708,275,'Aguirre',NULL,NULL),(709,275,'Maneiro',NULL,NULL),(710,276,'Adrián',NULL,NULL),(711,276,'Juan Griego',NULL,NULL),(712,276,'Yaguaraparo',NULL,NULL),(713,277,'Porlamar',NULL,NULL),(714,278,'San Francisco de Macanao',NULL,NULL),(715,278,'Boca de Río',NULL,NULL),(716,279,'Tubores',NULL,NULL),(717,279,'Los Baleales',NULL,NULL),(718,280,'Vicente Fuentes',NULL,NULL),(719,280,'Villalba',NULL,NULL),(720,281,'San Juan Bautista',NULL,NULL),(721,281,'Zabala',NULL,NULL),(722,283,'Capital Araure',NULL,NULL),(723,283,'Río Acarigua',NULL,NULL),(724,284,'Capital Esteller',NULL,NULL),(725,284,'Uveral',NULL,NULL),(726,285,'Guanare',NULL,NULL),(727,285,'Córdoba',NULL,NULL),(728,285,'San José de la Montaña',NULL,NULL),(729,285,'San Juan de Guanaguanare',NULL,NULL),(730,285,'Virgen de la Coromoto',NULL,NULL),(731,286,'Guanarito',NULL,NULL),(732,286,'Trinidad de la Capilla',NULL,NULL),(733,286,'Divina Pastora',NULL,NULL),(734,287,'Monseñor José Vicente de Unda',NULL,NULL),(735,287,'Peña Blanca',NULL,NULL),(736,288,'Capital Ospino',NULL,NULL),(737,288,'Aparición',NULL,NULL),(738,288,'La Estación',NULL,NULL),(739,289,'Páez',NULL,NULL),(740,289,'Payara',NULL,NULL),(741,289,'Pimpinela',NULL,NULL),(742,289,'Ramón Peraza',NULL,NULL),(743,290,'Papelón',NULL,NULL),(744,290,'Caño Delgadito',NULL,NULL),(745,291,'San Genaro de Boconoito',NULL,NULL),(746,291,'Antolín Tovar',NULL,NULL),(747,292,'San Rafael de Onoto',NULL,NULL),(748,292,'Santa Fe',NULL,NULL),(749,292,'Thermo Morles',NULL,NULL),(750,293,'Santa Rosalía',NULL,NULL),(751,293,'Florida',NULL,NULL),(752,294,'Sucre',NULL,NULL),(753,294,'Concepción',NULL,NULL),(754,294,'San Rafael de Palo Alzado',NULL,NULL),(755,294,'Uvencio Antonio Velásquez',NULL,NULL),(756,294,'San José de Saguaz',NULL,NULL),(757,294,'Villa Rosa',NULL,NULL),(758,295,'Turén',NULL,NULL),(759,295,'Canelones',NULL,NULL),(760,295,'Santa Cruz',NULL,NULL),(761,295,'San Isidro Labrador',NULL,NULL),(762,296,'Mariño',NULL,NULL),(763,296,'Rómulo Gallegos',NULL,NULL),(764,297,'San José de Aerocuar',NULL,NULL),(765,297,'Tavera Acosta',NULL,NULL),(766,298,'Río Caribe',NULL,NULL),(767,298,'Antonio José de Sucre',NULL,NULL),(768,298,'El Morro de Puerto Santo',NULL,NULL),(769,298,'Puerto Santo',NULL,NULL),(770,298,'San Juan de las Galdonas',NULL,NULL),(771,299,'El Pilar',NULL,NULL),(772,299,'El Rincón',NULL,NULL),(773,299,'General Francisco Antonio Váquez',NULL,NULL),(774,299,'Guaraúnos',NULL,NULL),(775,299,'Tunapuicito',NULL,NULL),(776,299,'Unión',NULL,NULL),(777,300,'Santa Catalina',NULL,NULL),(778,300,'Santa Rosa',NULL,NULL),(779,300,'Santa Teresa',NULL,NULL),(780,300,'Bolívar',NULL,NULL),(781,300,'Maracapana',NULL,NULL),(782,302,'Libertad',NULL,NULL),(783,302,'El Paujil',NULL,NULL),(784,302,'Yaguaraparo',NULL,NULL),(785,303,'Cruz Salmerón Acosta',NULL,NULL),(786,303,'Chacopata',NULL,NULL),(787,303,'Manicuare',NULL,NULL),(788,304,'Tunapuy',NULL,NULL),(789,304,'Campo Elías',NULL,NULL),(790,305,'Irapa',NULL,NULL),(791,305,'Campo Claro',NULL,NULL),(792,305,'Maraval',NULL,NULL),(793,305,'San Antonio de Irapa',NULL,NULL),(794,305,'Soro',NULL,NULL),(795,306,'Mejía',NULL,NULL),(796,307,'Cumanacoa',NULL,NULL),(797,307,'Arenas',NULL,NULL),(798,307,'Aricagua',NULL,NULL),(799,307,'Cogollar',NULL,NULL),(800,307,'San Fernando',NULL,NULL),(801,307,'San Lorenzo',NULL,NULL),(802,308,'Villa Frontado (Muelle de Cariaco)',NULL,NULL),(803,308,'Catuaro',NULL,NULL),(804,308,'Rendón',NULL,NULL),(805,308,'San Cruz',NULL,NULL),(806,308,'Santa María',NULL,NULL),(807,309,'Altagracia',NULL,NULL),(808,309,'Santa Inés',NULL,NULL),(809,309,'Valentín Valiente',NULL,NULL),(810,309,'Ayacucho',NULL,NULL),(811,309,'San Juan',NULL,NULL),(812,309,'Raúl Leoni',NULL,NULL),(813,309,'Gran Mariscal',NULL,NULL),(814,310,'Cristóbal Colón',NULL,NULL),(815,310,'Bideau',NULL,NULL),(816,310,'Punta de Piedras',NULL,NULL),(817,310,'Güiria',NULL,NULL),(818,341,'Andrés Bello',NULL,NULL),(819,342,'Antonio Rómulo Costa',NULL,NULL),(820,343,'Ayacucho',NULL,NULL),(821,343,'Rivas Berti',NULL,NULL),(822,343,'San Pedro del Río',NULL,NULL),(823,344,'Bolívar',NULL,NULL),(824,344,'Palotal',NULL,NULL),(825,344,'General Juan Vicente Gómez',NULL,NULL),(826,344,'Isaías Medina Angarita',NULL,NULL),(827,345,'Cárdenas',NULL,NULL),(828,345,'Amenodoro Ángel Lamus',NULL,NULL),(829,345,'La Florida',NULL,NULL),(830,346,'Córdoba',NULL,NULL),(831,347,'Fernández Feo',NULL,NULL),(832,347,'Alberto Adriani',NULL,NULL),(833,347,'Santo Domingo',NULL,NULL),(834,348,'Francisco de Miranda',NULL,NULL),(835,349,'García de Hevia',NULL,NULL),(836,349,'Boca de Grita',NULL,NULL),(837,349,'José Antonio Páez',NULL,NULL),(838,350,'Guásimos',NULL,NULL),(839,351,'Independencia',NULL,NULL),(840,351,'Juan Germán Roscio',NULL,NULL),(841,351,'Román Cárdenas',NULL,NULL),(842,352,'Jáuregui',NULL,NULL),(843,352,'Emilio Constantino Guerrero',NULL,NULL),(844,352,'Monseñor Miguel Antonio Salas',NULL,NULL),(845,353,'José María Vargas',NULL,NULL),(846,354,'Junín',NULL,NULL),(847,354,'La Petrólea',NULL,NULL),(848,354,'Quinimarí',NULL,NULL),(849,354,'Bramón',NULL,NULL),(850,355,'Libertad',NULL,NULL),(851,355,'Cipriano Castro',NULL,NULL),(852,355,'Manuel Felipe Rugeles',NULL,NULL),(853,356,'Libertador',NULL,NULL),(854,356,'Doradas',NULL,NULL),(855,356,'Emeterio Ochoa',NULL,NULL),(856,356,'San Joaquín de Navay',NULL,NULL),(857,357,'Lobatera',NULL,NULL),(858,357,'Constitución',NULL,NULL),(859,358,'Michelena',NULL,NULL),(860,359,'Panamericano',NULL,NULL),(861,359,'La Palmita',NULL,NULL),(862,360,'Pedro María Ureña',NULL,NULL),(863,360,'Nueva Arcadia',NULL,NULL),(864,361,'Delicias',NULL,NULL),(865,361,'Pecaya',NULL,NULL),(866,362,'Samuel Darío Maldonado',NULL,NULL),(867,362,'Boconó',NULL,NULL),(868,362,'Hernández',NULL,NULL),(869,363,'La Concordia',NULL,NULL),(870,363,'San Juan Bautista',NULL,NULL),(871,363,'Pedro María Morantes',NULL,NULL),(872,363,'San Sebastián',NULL,NULL),(873,363,'Dr. Francisco Romero Lobo',NULL,NULL),(874,364,'Seboruco',NULL,NULL),(875,365,'Simón Rodríguez',NULL,NULL),(876,366,'Sucre',NULL,NULL),(877,366,'Eleazar López Contreras',NULL,NULL),(878,366,'San Pablo',NULL,NULL),(879,367,'Torbes',NULL,NULL),(880,368,'Uribante',NULL,NULL),(881,368,'Cárdenas',NULL,NULL),(882,368,'Juan Pablo Peñalosa',NULL,NULL),(883,368,'Potosí',NULL,NULL),(884,369,'San Judas Tadeo',NULL,NULL),(885,370,'Araguaney',NULL,NULL),(886,370,'El Jaguito',NULL,NULL),(887,370,'La Esperanza',NULL,NULL),(888,370,'Santa Isabel',NULL,NULL),(889,371,'Boconó',NULL,NULL),(890,371,'El Carmen',NULL,NULL),(891,371,'Mosquey',NULL,NULL),(892,371,'Ayacucho',NULL,NULL),(893,371,'Burbusay',NULL,NULL),(894,371,'General Ribas',NULL,NULL),(895,371,'Guaramacal',NULL,NULL),(896,371,'Vega de Guaramacal',NULL,NULL),(897,371,'Monseñor Jáuregui',NULL,NULL),(898,371,'Rafael Rangel',NULL,NULL),(899,371,'San Miguel',NULL,NULL),(900,371,'San José',NULL,NULL),(901,372,'Sabana Grande',NULL,NULL),(902,372,'Cheregüé',NULL,NULL),(903,372,'Granados',NULL,NULL),(904,373,'Arnoldo Gabaldón',NULL,NULL),(905,373,'Bolivia',NULL,NULL),(906,373,'Carrillo',NULL,NULL),(907,373,'Cegarra',NULL,NULL),(908,373,'Chejendé',NULL,NULL),(909,373,'Manuel Salvador Ulloa',NULL,NULL),(910,373,'San José',NULL,NULL),(911,374,'Carache',NULL,NULL),(912,374,'La Concepción',NULL,NULL),(913,374,'Cuicas',NULL,NULL),(914,374,'Panamericana',NULL,NULL),(915,374,'Santa Cruz',NULL,NULL),(916,375,'Escuque',NULL,NULL),(917,375,'La Unión',NULL,NULL),(918,375,'Santa Rita',NULL,NULL),(919,375,'Sabana Libre',NULL,NULL),(920,376,'El Socorro',NULL,NULL),(921,376,'Los Caprichos',NULL,NULL),(922,376,'Antonio José de Sucre',NULL,NULL),(923,377,'Campo Elías',NULL,NULL),(924,377,'Arnoldo Gabaldón',NULL,NULL),(925,378,'Santa Apolonia',NULL,NULL),(926,378,'El Progreso',NULL,NULL),(927,378,'La Ceiba',NULL,NULL),(928,378,'Tres de Febrero',NULL,NULL),(929,379,'El Dividive',NULL,NULL),(930,379,'Agua Santa',NULL,NULL),(931,379,'Agua Caliente',NULL,NULL),(932,379,'El Cenizo',NULL,NULL),(933,379,'Valerita',NULL,NULL),(934,380,'Monte Carmelo',NULL,NULL),(935,380,'Buena Vista',NULL,NULL),(936,380,'Santa María del Horcón',NULL,NULL),(937,381,'Motatán',NULL,NULL),(938,381,'El Baño',NULL,NULL),(939,381,'Jalisco',NULL,NULL),(940,382,'Pampán',NULL,NULL),(941,382,'Flor de Patria',NULL,NULL),(942,382,'La Paz',NULL,NULL),(943,382,'Santa Ana',NULL,NULL),(944,383,'Pampanito',NULL,NULL),(945,383,'La Concepción',NULL,NULL),(946,383,'Pampanito II',NULL,NULL),(947,384,'Betijoque',NULL,NULL),(948,384,'José Gregorio Hernández',NULL,NULL),(949,384,'La Pueblita',NULL,NULL),(950,384,'Los Cedros',NULL,NULL),(951,385,'Carvajal',NULL,NULL),(952,385,'Campo Alegre',NULL,NULL),(953,385,'Antonio Nicolás Briceño',NULL,NULL),(954,385,'José Leonardo Suárez',NULL,NULL),(955,386,'Sabana de Mendoza',NULL,NULL),(956,386,'Junín',NULL,NULL),(957,386,'Valmore Rodríguez',NULL,NULL),(958,386,'El Paraíso',NULL,NULL),(959,387,'Andrés Linares',NULL,NULL),(960,387,'Chiquinquirá',NULL,NULL),(961,387,'Cristóbal Mendoza',NULL,NULL),(962,387,'Cruz Carrillo',NULL,NULL),(963,387,'Matriz',NULL,NULL),(964,387,'Monseñor Carrillo',NULL,NULL),(965,387,'Tres Esquinas',NULL,NULL),(966,388,'Cabimbú',NULL,NULL),(967,388,'Jajó',NULL,NULL),(968,388,'La Mesa de Esnujaque',NULL,NULL),(969,388,'Santiago',NULL,NULL),(970,388,'Tuñame',NULL,NULL),(971,388,'La Quebrada',NULL,NULL),(972,389,'Juan Ignacio Montilla',NULL,NULL),(973,389,'La Beatriz',NULL,NULL),(974,389,'La Puerta',NULL,NULL),(975,389,'Mendoza del Valle de Momboy',NULL,NULL),(976,389,'Mercedes Díaz',NULL,NULL),(977,389,'San Luis',NULL,NULL),(978,390,'Caraballeda',NULL,NULL),(979,390,'Carayaca',NULL,NULL),(980,390,'Carlos Soublette',NULL,NULL),(981,390,'Caruao Chuspa',NULL,NULL),(982,390,'Catia La Mar',NULL,NULL),(983,390,'El Junko',NULL,NULL),(984,390,'La Guaira',NULL,NULL),(985,390,'Macuto',NULL,NULL),(986,390,'Maiquetía',NULL,NULL),(987,390,'Naiguatá',NULL,NULL),(988,390,'Urimare',NULL,NULL),(989,391,'Arístides Bastidas',NULL,NULL),(990,392,'Bolívar',NULL,NULL),(991,407,'Chivacoa',NULL,NULL),(992,407,'Campo Elías',NULL,NULL),(993,408,'Cocorote',NULL,NULL),(994,409,'Independencia',NULL,NULL),(995,410,'José Antonio Páez',NULL,NULL),(996,411,'La Trinidad',NULL,NULL),(997,412,'Manuel Monge',NULL,NULL),(998,413,'Salóm',NULL,NULL),(999,413,'Temerla',NULL,NULL),(1000,413,'Nirgua',NULL,NULL),(1001,414,'San Andrés',NULL,NULL),(1002,414,'Yaritagua',NULL,NULL),(1003,415,'San Javier',NULL,NULL),(1004,415,'Albarico',NULL,NULL),(1005,415,'San Felipe',NULL,NULL),(1006,416,'Sucre',NULL,NULL),(1007,417,'Urachiche',NULL,NULL),(1008,418,'El Guayabo',NULL,NULL),(1009,418,'Farriar',NULL,NULL),(1010,441,'Isla de Toas',NULL,NULL),(1011,441,'Monagas',NULL,NULL),(1012,442,'San Timoteo',NULL,NULL),(1013,442,'General Urdaneta',NULL,NULL),(1014,442,'Libertador',NULL,NULL),(1015,442,'Marcelino Briceño',NULL,NULL),(1016,442,'Pueblo Nuevo',NULL,NULL),(1017,442,'Manuel Guanipa Matos',NULL,NULL),(1018,443,'Ambrosio',NULL,NULL),(1019,443,'Carmen Herrera',NULL,NULL),(1020,443,'La Rosa',NULL,NULL),(1021,443,'Germán Ríos Linares',NULL,NULL),(1022,443,'San Benito',NULL,NULL),(1023,443,'Rómulo Betancourt',NULL,NULL),(1024,443,'Jorge Hernández',NULL,NULL),(1025,443,'Punta Gorda',NULL,NULL),(1026,443,'Arístides Calvani',NULL,NULL),(1027,444,'Encontrados',NULL,NULL),(1028,444,'Udón Pérez',NULL,NULL),(1029,445,'Moralito',NULL,NULL),(1030,445,'San Carlos del Zulia',NULL,NULL),(1031,445,'Santa Cruz del Zulia',NULL,NULL),(1032,445,'Santa Bárbara',NULL,NULL),(1033,445,'Urribarrí',NULL,NULL),(1034,446,'Carlos Quevedo',NULL,NULL),(1035,446,'Francisco Javier Pulgar',NULL,NULL),(1036,446,'Simón Rodríguez',NULL,NULL),(1037,446,'Guamo-Gavilanes',NULL,NULL),(1038,448,'La Concepción',NULL,NULL),(1039,448,'San José',NULL,NULL),(1040,448,'Mariano Parra León',NULL,NULL),(1041,448,'José Ramón Yépez',NULL,NULL),(1042,449,'Jesús María Semprún',NULL,NULL),(1043,449,'Barí',NULL,NULL),(1044,450,'Concepción',NULL,NULL),(1045,450,'Andrés Bello',NULL,NULL),(1046,450,'Chiquinquirá',NULL,NULL),(1047,450,'El Carmelo',NULL,NULL),(1048,450,'Potreritos',NULL,NULL),(1049,451,'Libertad',NULL,NULL),(1050,451,'Alonso de Ojeda',NULL,NULL),(1051,451,'Venezuela',NULL,NULL),(1052,451,'Eleazar López Contreras',NULL,NULL),(1053,451,'Campo Lara',NULL,NULL),(1054,452,'Bartolomé de las Casas',NULL,NULL),(1055,452,'Libertad',NULL,NULL),(1056,452,'Río Negro',NULL,NULL),(1057,452,'San José de Perijá',NULL,NULL),(1058,453,'San Rafael',NULL,NULL),(1059,453,'La Sierrita',NULL,NULL),(1060,453,'Las Parcelas',NULL,NULL),(1061,453,'Luis de Vicente',NULL,NULL),(1062,453,'Monseñor Marcos Sergio Godoy',NULL,NULL),(1063,453,'Ricaurte',NULL,NULL),(1064,453,'Tamare',NULL,NULL),(1065,454,'Antonio Borjas Romero',NULL,NULL),(1066,454,'Bolívar',NULL,NULL),(1067,454,'Cacique Mara',NULL,NULL),(1068,454,'Carracciolo Parra Pérez',NULL,NULL),(1069,454,'Cecilio Acosta',NULL,NULL),(1070,454,'Cristo de Aranza',NULL,NULL),(1071,454,'Coquivacoa',NULL,NULL),(1072,454,'Chiquinquirá',NULL,NULL),(1073,454,'Francisco Eugenio Bustamante',NULL,NULL),(1074,454,'Idelfonzo Vásquez',NULL,NULL),(1075,454,'Juana de Ávila',NULL,NULL),(1076,454,'Luis Hurtado Higuera',NULL,NULL),(1077,454,'Manuel Dagnino',NULL,NULL),(1078,454,'Olegario Villalobos',NULL,NULL),(1079,454,'Raúl Leoni',NULL,NULL),(1080,454,'Santa Lucía',NULL,NULL),(1081,454,'Venancio Pulgar',NULL,NULL),(1082,454,'San Isidro',NULL,NULL),(1083,455,'Altagracia',NULL,NULL),(1084,455,'Faría',NULL,NULL),(1085,455,'Ana María Campos',NULL,NULL),(1086,455,'San Antonio',NULL,NULL),(1087,455,'San José',NULL,NULL),(1088,456,'Donaldo García',NULL,NULL),(1089,456,'El Rosario',NULL,NULL),(1090,456,'Sixto Zambrano',NULL,NULL),(1091,457,'San Francisco',NULL,NULL),(1092,457,'El Bajo',NULL,NULL),(1093,457,'Domitila Flores',NULL,NULL),(1094,457,'Francisco Ochoa',NULL,NULL),(1095,457,'Los Cortijos',NULL,NULL),(1096,457,'Marcial Hernández',NULL,NULL),(1097,458,'Santa Rita',NULL,NULL),(1098,458,'El Mene',NULL,NULL),(1099,458,'Pedro Lucas Urribarrí',NULL,NULL),(1100,458,'José Cenobio Urribarrí',NULL,NULL),(1101,459,'Rafael Maria Baralt',NULL,NULL),(1102,459,'Manuel Manrique',NULL,NULL),(1103,459,'Rafael Urdaneta',NULL,NULL),(1104,460,'Bobures',NULL,NULL),(1105,460,'Gibraltar',NULL,NULL),(1106,460,'Heras',NULL,NULL),(1107,460,'Monseñor Arturo Álvarez',NULL,NULL),(1108,460,'Rómulo Gallegos',NULL,NULL),(1109,460,'El Batey',NULL,NULL),(1110,461,'Rafael Urdaneta',NULL,NULL),(1111,461,'La Victoria',NULL,NULL),(1112,461,'Raúl Cuenca',NULL,NULL),(1113,447,'Sinamaica',NULL,NULL),(1114,447,'Alta Guajira',NULL,NULL),(1115,447,'Elías Sánchez Rubio',NULL,NULL),(1116,447,'Guajira',NULL,NULL),(1117,462,'Altagracia',NULL,NULL),(1118,462,'Antímano',NULL,NULL),(1119,462,'Caricuao',NULL,NULL),(1120,462,'Catedral',NULL,NULL),(1121,462,'Coche',NULL,NULL),(1122,462,'El Junquito',NULL,NULL),(1123,462,'El Paraíso',NULL,NULL),(1124,462,'El Recreo',NULL,NULL),(1125,462,'El Valle',NULL,NULL),(1126,462,'La Candelaria',NULL,NULL),(1127,462,'La Pastora',NULL,NULL),(1128,462,'La Vega',NULL,NULL),(1129,462,'Macarao',NULL,NULL),(1130,462,'San Agustín',NULL,NULL),(1131,462,'San Bernardino',NULL,NULL),(1132,462,'San José',NULL,NULL),(1133,462,'San Juan',NULL,NULL),(1134,462,'San Pedro',NULL,NULL),(1135,462,'Santa Rosalía',NULL,NULL),(1136,462,'Santa Teresa',NULL,NULL),(1137,462,'Sucre (Catia)',NULL,NULL),(1138,462,'23 de enero',NULL,NULL);
/*!40000 ALTER TABLE `parroquias` ENABLE KEYS */;
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
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `plan` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_clase` bigint unsigned NOT NULL,
  `activo` smallint NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `cobertura` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plans_id_clase_foreign` (`id_clase`),
  CONSTRAINT `plans_id_clase_foreign` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Cobertura Basica',1,1,9000000.00,200000000.00,NULL,NULL),(2,'Cobertura VIP',1,1,18000000.00,400000000.00,NULL,NULL),(3,'Cobertura Basica',2,1,12500000.00,200000000.00,NULL,NULL),(4,'Cobertura VIP',2,1,25000000.00,400000000.00,NULL,NULL),(5,'Cobertura Basica',3,1,10000000.00,200000000.00,NULL,NULL),(6,'Cobertura VIP',3,1,10000000.00,400000000.00,NULL,NULL),(7,'Cobertura Basica',4,1,7000000.00,200000000.00,NULL,NULL),(8,'Cobertura VIP',4,1,15000000.00,400000000.00,NULL,NULL),(9,'Cobertura Basica',5,1,20000000.00,200000000.00,NULL,NULL),(10,'Cobertura VIP',5,1,15000000.00,400000000.00,NULL,NULL),(11,'Cobertura Basica',6,1,20000000.00,200000000.00,NULL,NULL),(12,'Cobertura VIP',6,1,15000000.00,400000000.00,NULL,NULL),(13,'Cobertura Basica',7,1,15000000.00,200000000.00,NULL,NULL),(14,'Cobertura VIP',7,1,17500000.00,400000000.00,NULL,NULL),(15,'Cobertura Basica',8,1,19000000.00,200000000.00,NULL,NULL),(16,'Cobertura VIP',8,1,19000000.00,400000000.00,NULL,NULL),(17,'Cobertura Basica',9,1,10000000.00,200000000.00,NULL,NULL),(18,'Cobertura VIP',9,1,10000000.00,400000000.00,NULL,NULL),(19,'Cobertura Basica',10,1,10000000.00,200000000.00,NULL,NULL),(20,'Cobertura VIP',10,1,10000000.00,400000000.00,NULL,NULL),(21,'Cobertura Basica',11,1,10000000.00,200000000.00,NULL,NULL),(22,'Cobertura VIP',11,1,10000000.00,400000000.00,NULL,NULL),(23,'Cobertura Basica',12,1,10000000.00,200000000.00,NULL,NULL),(24,'Cobertura VIP',12,1,10000000.00,400000000.00,NULL,NULL),(25,'Cobertura Basica',13,1,10000000.00,200000000.00,NULL,NULL),(26,'Cobertura VIP',13,1,10000000.00,400000000.00,NULL,NULL);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polizas`
--

DROP TABLE IF EXISTS `polizas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polizas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_plan` bigint unsigned NOT NULL,
  `plan` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo_asi_med` decimal(10,2) NOT NULL,
  `costo_invalidez` decimal(10,2) NOT NULL,
  `costo_fallec` decimal(10,2) NOT NULL,
  `costo_bienes` decimal(10,2) NOT NULL,
  `costo_grua` decimal(10,2) NOT NULL,
  `costo_estacionamiento` decimal(15,2) NOT NULL,
  `costo_cobertura` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `polizas_id_plan_foreign` (`id_plan`),
  CONSTRAINT `polizas_id_plan_foreign` FOREIGN KEY (`id_plan`) REFERENCES `plans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polizas`
--

LOCK TABLES `polizas` WRITE;
/*!40000 ALTER TABLE `polizas` DISABLE KEYS */;
/*!40000 ALTER TABLE `polizas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietarios`
--

DROP TABLE IF EXISTS `propietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vigenciadesde` date DEFAULT NULL,
  `vigenciahasta` date DEFAULT NULL,
  `id_estado` bigint unsigned NOT NULL,
  `id_municipio` bigint unsigned NOT NULL,
  `id_ciudad` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `propietarios_cedula_unique` (`cedula`),
  UNIQUE KEY `propietarios_email_unique` (`email`),
  KEY `propietarios_id_estado_foreign` (`id_estado`),
  KEY `propietarios_id_municipio_foreign` (`id_municipio`),
  KEY `propietarios_id_ciudad_foreign` (`id_ciudad`),
  CONSTRAINT `propietarios_id_ciudad_foreign` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `propietarios_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id`),
  CONSTRAINT `propietarios_id_municipio_foreign` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietarios`
--

LOCK TABLES `propietarios` WRITE;
/*!40000 ALTER TABLE `propietarios` DISABLE KEYS */;
INSERT INTO `propietarios` VALUES (1,'17014394','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos4@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:22:58','2021-02-24 04:22:58'),(2,'17014395','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos45@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:25:31','2021-02-24 04:25:31'),(3,'17014396','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos46@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:27:13','2021-02-24 04:27:13'),(4,'17014397','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos47@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:28:08','2021-02-24 04:28:08'),(5,'17014398','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos48@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:39:39','2021-02-24 04:39:39'),(6,'17014399','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos49@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:40:43','2021-02-24 04:40:43'),(7,'17014390','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos400@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:48:01','2021-02-24 04:48:01'),(8,'17014400','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos401@gmail.com',NULL,NULL,6,67,88,'2021-02-24 04:58:56','2021-02-24 04:58:56'),(9,'17014402','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos402@gmail.com',NULL,NULL,6,67,88,'2021-02-24 05:00:47','2021-02-24 05:00:47'),(10,'17014403','eqweqweqwe','Vargas Herrera','0243-2356171','vargasos403@gmail.com',NULL,NULL,6,67,88,'2021-02-24 05:02:11','2021-02-24 05:02:11');
/*!40000 ALTER TABLE `propietarios` ENABLE KEYS */;
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_user`
--

DROP TABLE IF EXISTS `roles_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `roles_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_user_roles_id_user_id_unique` (`roles_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_user`
--

LOCK TABLES `roles_user` WRITE;
/*!40000 ALTER TABLE `roles_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statustramite`
--

DROP TABLE IF EXISTS `statustramite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statustramite` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `txstatus` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statustramite`
--

LOCK TABLES `statustramite` WRITE;
/*!40000 ALTER TABLE `statustramite` DISABLE KEYS */;
INSERT INTO `statustramite` VALUES (1,'Guardado',NULL,NULL),(2,'Pagado',NULL,NULL),(3,'Aprobado',NULL,NULL),(4,'Rechazado',NULL,NULL),(5,'Eliminado',NULL,NULL);
/*!40000 ALTER TABLE `statustramite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Ambulancia'),(2,'Arrastre'),(3,'Autobusete'),(4,'Baranda'),(5,'Baranda / Hierro'),(6,'Batea'),(7,'Buque'),(8,'Camioneta'),(9,'Carga'),(10,'Carroceria'),(11,'Casillero'),(12,'Cava'),(13,'Cesta'),(14,'Chasis'),(15,'Chopper'),(16,'Chuto'),(17,'Cisterna'),(18,'Colectivo'),(19,'Compacto MPV'),(20,'Coupe'),(21,'Crossover'),(22,'Custon'),(23,'Encava'),(24,'Enduro'),(25,'Estacas'),(26,'Excavadora'),(27,'Ferretero'),(28,'Fibra'),(29,'Furgon'),(30,'Furgón/Cachucha'),(31,'Gato Hidraulico'),(32,'Granel'),(33,'Grua'),(34,'Grua de Plataforma'),(35,'Hatch Back'),(36,'Jaula'),(37,'Jaula Ganadera'),(38,'Jaula Pollera'),(39,'Low - Boy'),(40,'Minibus'),(41,'Minivan'),(42,'Motocicleta'),(43,'Panel'),(44,'Paseo'),(45,'Peñero'),(46,'Pick Up'),(47,'Pick Up D/ Cabina'),(48,'Pick Up/C Cabina'),(49,'Pick-Up / Baranda'),(50,'Pick-Up / Baranda/Hierro'),(51,'Pick-Up/C Furgon'),(52,'Plat / Estruc / Hierro'),(53,'Plataf / Cachucha'),(54,'Plataf/Baranda/Hierro'),(55,'Plataforma'),(56,'Plataforma / Baranda Metalica'),(57,'Plataforma Desplazable'),(58,'Plataforma Fija'),(59,'Platf / Baranda'),(60,'Platf / Estaca'),(61,'Platf/B Hidraulico'),(62,'Porta Contenedores'),(63,'Racing'),(64,'Ranchera'),(65,'Remolque'),(66,'Renegado'),(67,'Rustico'),(68,'Rustico Carga'),(69,'Scooter'),(70,'Sedan'),(71,'Sport Wagon'),(72,'Sport Wagon Convertible'),(73,'Station Wagon'),(74,'Supervan'),(75,'Tanque'),(76,'Techo de Lona'),(77,'Techo Duro'),(78,'Touring'),(79,'Tractor'),(80,'Type of ship'),(81,'Utilitario'),(82,'Vacuum'),(83,'Van'),(84,'Volqueta'),(85,'Volteo');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramites`
--

DROP TABLE IF EXISTS `tramites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tramites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned NOT NULL,
  `id_propietario` bigint unsigned NOT NULL,
  `id_transporte` bigint unsigned NOT NULL,
  `id_statustramite` bigint unsigned NOT NULL,
  `id_clase` bigint unsigned NOT NULL,
  `id_plan` bigint unsigned NOT NULL,
  `doc_path` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tptramite` enum('rcv') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rcv',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tramites_id_user_foreign` (`id_user`),
  KEY `tramites_id_propietario_foreign` (`id_propietario`),
  KEY `tramites_id_transporte_foreign` (`id_transporte`),
  KEY `tramites_id_statustramite_foreign` (`id_statustramite`),
  KEY `tramites_id_clase_foreign` (`id_clase`),
  KEY `tramites_id_plan_foreign` (`id_plan`),
  CONSTRAINT `tramites_id_clase_foreign` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`),
  CONSTRAINT `tramites_id_plan_foreign` FOREIGN KEY (`id_plan`) REFERENCES `plans` (`id`),
  CONSTRAINT `tramites_id_propietario_foreign` FOREIGN KEY (`id_propietario`) REFERENCES `propietarios` (`id`),
  CONSTRAINT `tramites_id_statustramite_foreign` FOREIGN KEY (`id_statustramite`) REFERENCES `statustramite` (`id`),
  CONSTRAINT `tramites_id_transporte_foreign` FOREIGN KEY (`id_transporte`) REFERENCES `transportes` (`id`),
  CONSTRAINT `tramites_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramites`
--

LOCK TABLES `tramites` WRITE;
/*!40000 ALTER TABLE `tramites` DISABLE KEYS */;
INSERT INTO `tramites` VALUES (1,1,1,1,1,6,12,NULL,'rcv','2021-02-24 04:22:59','2021-02-24 04:22:59'),(2,1,2,2,1,6,12,NULL,'rcv','2021-02-24 04:25:31','2021-02-24 04:25:31'),(3,1,3,3,1,6,12,NULL,'rcv','2021-02-24 04:27:14','2021-02-24 04:27:14'),(4,1,4,4,1,6,12,NULL,'rcv','2021-02-24 04:28:08','2021-02-24 04:28:08'),(5,1,5,5,1,6,12,NULL,'rcv','2021-02-24 04:39:40','2021-02-24 04:39:40'),(6,1,6,6,1,6,12,NULL,'rcv','2021-02-24 04:40:43','2021-02-24 04:40:43'),(7,1,7,7,1,6,12,NULL,'rcv','2021-02-24 04:48:01','2021-02-24 04:48:01'),(8,1,8,8,1,6,12,NULL,'rcv','2021-02-24 04:58:56','2021-02-24 04:58:56'),(9,1,9,9,1,6,12,NULL,'rcv','2021-02-24 05:00:47','2021-02-24 05:00:47'),(10,1,10,10,1,6,12,NULL,'rcv','2021-02-24 05:02:12','2021-02-24 05:02:12');
/*!40000 ALTER TABLE `tramites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportes`
--

DROP TABLE IF EXISTS `transportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_marca` bigint unsigned NOT NULL,
  `id_modelo` bigint unsigned NOT NULL,
  `anio` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_clase` bigint unsigned NOT NULL,
  `id_tipo` bigint unsigned NOT NULL,
  `id_uso` bigint unsigned NOT NULL,
  `serialcarroceria` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialmotor` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puestos` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_propietario` bigint unsigned NOT NULL,
  `placa` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transportes_id_marca_foreign` (`id_marca`),
  KEY `transportes_id_modelo_foreign` (`id_modelo`),
  KEY `transportes_id_clase_foreign` (`id_clase`),
  KEY `transportes_id_tipo_foreign` (`id_tipo`),
  KEY `transportes_id_uso_foreign` (`id_uso`),
  KEY `transportes_id_propietario_foreign` (`id_propietario`),
  CONSTRAINT `transportes_id_clase_foreign` FOREIGN KEY (`id_clase`) REFERENCES `clases` (`id`),
  CONSTRAINT `transportes_id_marca_foreign` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id`),
  CONSTRAINT `transportes_id_modelo_foreign` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id`),
  CONSTRAINT `transportes_id_propietario_foreign` FOREIGN KEY (`id_propietario`) REFERENCES `propietarios` (`id`),
  CONSTRAINT `transportes_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id`),
  CONSTRAINT `transportes_id_uso_foreign` FOREIGN KEY (`id_uso`) REFERENCES `usos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportes`
--

LOCK TABLES `transportes` WRITE;
/*!40000 ALTER TABLE `transportes` DISABLE KEYS */;
INSERT INTO `transportes` VALUES (1,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:22:58','2021-02-24 04:22:58',1,'765755'),(2,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:25:31','2021-02-24 04:25:31',2,'765755'),(3,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:27:13','2021-02-24 04:27:13',3,'765755'),(4,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:28:08','2021-02-24 04:28:08',4,'765755'),(5,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:39:39','2021-02-24 04:39:39',5,'765755'),(6,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:40:43','2021-02-24 04:40:43',6,'765755'),(7,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:48:01','2021-02-24 04:48:01',7,'765755'),(8,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 04:58:56','2021-02-24 04:58:56',8,'765755'),(9,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 05:00:47','2021-02-24 05:00:47',9,'765755'),(10,2,8,'2009',6,2,2,'765765765','76576575','Rojo','6','2021-02-24 05:02:11','2021-02-24 05:02:11',10,'765755');
/*!40000 ALTER TABLE `transportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` enum('admin','asesor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` smallint DEFAULT '1',
  `aprobado` smallint DEFAULT '0',
  `telefono` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'14730738','Osmer','Vargas','vargasos4@gmail.com',NULL,'$2y$10$/zh7fIkmOfqxVZrRJY5uVO7EYRlBrPzfyCcuSLM7UesLhNllguOee','admin',1,0,'1',NULL,'zQtkcwD8nX',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usos`
--

DROP TABLE IF EXISTS `usos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uso` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usos`
--

LOCK TABLES `usos` WRITE;
/*!40000 ALTER TABLE `usos` DISABLE KEYS */;
INSERT INTO `usos` VALUES (1,'Carga',NULL,NULL),(2,'Competencia',NULL,NULL),(3,'Grua',NULL,NULL),(4,'Maquinaria Pesada',NULL,NULL),(5,'Oficial',NULL,NULL),(6,'Particular',NULL,NULL),(7,'Pesca',NULL,NULL),(8,'Placer',NULL,NULL),(9,'Recreo',NULL,NULL),(10,'Recreo-Placer',NULL,NULL),(11,'Transporte Privado',NULL,NULL),(12,'Transporte Publico',NULL,NULL);
/*!40000 ALTER TABLE `usos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 19:10:49
