CREATE DATABASE  IF NOT EXISTS `db_empleados` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_empleados`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_empleados
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `observacion` text,
  `fecha_ingreso` date DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `jornada` char(1) DEFAULT NULL,
  `observacion1` text,
  `sueldo` decimal(10,4) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (152,'carlos','choca','1312362062','1986-08-06','harlericho@gmail.com','nada','2024-01-01','programador','sistemas','0','nada',800.0000,'Manabi'),(153,'javier','sanchez','2003004005','1990-02-02','xyz@xyz.com','nada','2023-01-10','soporte','sistemas','0','nada',500.0000,'Pichincha'),(154,'daniela','suarez','4005006007','1985-03-03','dani@gmail.com','nada','2022-04-04','proyectos','sistemas','0','nada',600.0000,'Azuay'),(155,'sofia','alvarez','6007008008','1990-02-03','sofi@hotmail.com','nada','2023-05-05','programador','sistemas','0','nada',700.0000,'Guayas'),(158,'michelle','taipe','1717171717','2023-02-08','mktaipe@gmail.com','nada','2023-08-16','soporte','sistemas','1','nada',460.0000,'Pichincha'),(159,'jorge','ponce','1789034567','2024-05-09','head@admin.com','nada','2022-06-07','programador','sistemas','0','nada',6000.0000,'Orellana'),(160,'javier','gomez','1301312345','2024-05-10','xyz@xyz.com','nada','2022-02-10','soporte','sistemas','1','nada',5700.0000,'Los Rios'),(161,'paola','lopez','1701703455','2024-05-08','head@admin.com','nada','2022-06-11','soporte','sistemas','1','nada',560.0000,'Carchi'),(162,'fabian','moreno','1789034567','2024-04-30','xyz@xyz.com','nada','2024-01-02','proyectos','sistemas','1','nada',6700.0000,'El Oro'),(163,'liz','espin','1735468787','2024-05-08','lizmadel@gmail.com','nada','2021-11-18','soporte','sistemas','0','nada',450.0000,'Carchi'),(164,'marina','merino','1301312345','2024-05-10','head@admin.com','nada','2020-02-07','proyectos','sistemas','0','nada',6700.0000,'Orellana'),(165,'javier','sardi','1302456784','2024-05-09','xyz@xyz.com','nada','2020-05-10','proyectos','sistemas','1','nada',560.0000,'Morona Santiago'),(166,'daniel','choca','1313453453','1986-08-06','ha@gmail.com','nada','2024-01-01','programador','sistemas','0','nada',800.0000,'Manabi'),(167,'javier','sanchez','2003004005','1990-02-02','xyz@xyz.com','nada','2023-01-10','soporte','sistemas','0','nada',500.0000,'Pichincha'),(168,'camila','suarez','4005006007','1985-03-03','dani@gmail.com','nada','2022-04-04','proyectos','sistemas','0','nada',600.0000,'Azuay'),(170,'galo','alvarez','6007008008','1990-02-03','sofi4@hotmail.com','nada','2023-05-05','programador','sistemas','0','nada',700.0000,'Guayas'),(171,'andres','alvarez','6007008008','1990-02-03','sofi6@hotmail.com','nada','2023-05-05','proyectos','sistemas','0','nada',700.0000,'Guayas'),(172,'karina','suarez','6007008008','1990-02-03','sofi7@hotmail.com','nada','2023-05-05','programador','sistemas','0','nada',700.0000,'Guayas'),(173,'luis','alvarez','6007008008','1990-02-03','sofi8@hotmail.com','nada','2023-05-05','soporte','sistemas','0','nada',700.0000,'Guayas'),(174,'camila','alvarez','6007008008','1990-02-03','sofi0@hotmail.com','nada','2023-05-05','programador','sistemas','0','nada',700.0000,'Guayas'),(175,'fernando','alvarez','6007008008','1990-02-03','sof10i@hotmail.com','nada','2023-05-05','proyectos','sistemas','0','nada',700.0000,'Guayas'),(176,'carla','alvarez','6007008008','1990-02-03','sof10i@hotmail.com','nada','2023-05-05','proyectos','sistemas','0','nada',700.0000,'Guayas'),(177,'sandra','alvarez','6007008008','1990-02-03','sof10i@hotmail.com','nada','2023-05-05','proyectos','sistemas','0','nada',700.0000,'Guayas'),(178,'luis','nero','6007008008','1990-02-03','sof10i@hotmail.com','nada','2023-05-05','programador','sistemas','0','nada',700.0000,'Guayas');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `provinciascol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_provincia` varchar(100) DEFAULT NULL,
  `capital_provincia` varchar(100) DEFAULT NULL,
  `descripcion_provincia` text,
  `poblacion_provincia` varchar(50) DEFAULT NULL,
  `superficie_provincia` varchar(45) DEFAULT NULL,
  `latitud_provincia` varchar(45) DEFAULT NULL,
  `longitud_provincia` varchar(45) DEFAULT NULL,
  `id_region` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`provinciascol`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Azuay','Cuenca','Es\nllamada la Atenas del Ecuador por su arquitectura, su diversidad cultural, su aporte a\nlas artes, ciencias y letras ecuatorianas y por ser el lugar de nacimiento de muchos\npersonajes ilustres de la sociedad ecuatoriana','569.42','122.00','-2.902222','-\n79.005261','1'),(2,'Bolivar','Guaranda','Bolívar es una provincia del centro de Ecuador, en la cordillera\noccidental de los Andes. Su capital es la ciudad de Guaranda. La Provincia de Bolívar se\nllama así en honor al Libertador Simón Bolívar.','183 641','3254.00','-1.6','-\n79','1'),(3,'Canar','Azoguez','La\nprovincia destaca como uno de los sitios turísticos más importantes del país,\ndestacándose entre otros la Fortaleza de Ingapirca, la Laguna de Culebrillas y la ciudad\nde Azogues.','33848.00','3908.00','-2.733333','-78.833333','1'),(4,'Carchi','Tulcan','Carchi es una provincia ecuatoriana situada al norte del Ecuador en\nla frontera con Colombia. Su capital es la ciudad de Tulcán. Forma parte de la región\n1','82734.00','3783.00','0.811667',' -77.718611','1'),(5,'Chimborazo','Riobamba','En esta provincia se encuentran varias de las cumbres más\nelevadas del país, como el Carihuairazo, el Altar, Igualata, Sangay, entre otros, que en\nalgunos casos comparte con otras provincias.','223586.00','6487.00','-1.666667','-\n78.65','1'),(6,'Cotopaxi','Latacunga','La provincia toma el nombre del volcán más grande e importante\nde su territorio, el volcán Cotopaxi. Cotopaxi se encuentra dividida políticamente en 7\ncantones. Según el último ordenamiento territorial, la provincia de Cotopaxi pertenece a\nla región centro 3','409 205','6569.00','-0.933333',' -78.616667','1'),(7,'El\nOro','Machala','La capital de la provincia de El Oro es la ciudad de Machala, quinta\nciudad del país, considerada como la capital bananera del mundo\n.','260528.00','6188.00','-3.266669',' -79.9667','2'),(8,'Esmeraldas','Esmeraldas','Provincia del Ecuador situada en su costa noroccidental,\nconocida popularmente como la provincia verde. Sucapital homónima es uno de los puertos\nprincipales del Ecuador y terminal del oleoducto transandino. Posee un aeropuerto para\nvuelos nacionales e internacionales','189504.00','15 954','-0.966667',' -\n79.65','2'),(9,'Galapagos','P.\nBaquerizo Moreno','Es el mayor centro turístico del Ecuador, así como también una de las\nreservas ecológicas más grandes e importantes del planeta. Con sus 26.640 habitantes,\nGalápagos es la provincia menos poblada del país, debido principalmente al afán de\nconservar al máximo la flora y fauna de la región.','5600.00','8010.00','-0.666667',' -\n90.55','3'),(10,'Guayas','Guayaquil','Es el mayor centro comercial e industrial del Ecuador. Con sus\n3,8 millones de habitantes, Guayas es la provincia más poblada del país, constituyéndose\ncon el 24,5% de la población de la República.','2526927.00','17139.00','-2.2',' -\n79.9667','2'),(11,'Imbabura','Ibarra','La provincia también es conocida por sus contrastes poblacionales\nes así que la población está marcada por diferentes factores demográficos, además desde\nsiempre ha sido núcleo de artesanías y cultura.','181722.00','4599.00','0.35','-\n78.133333','1'),(12,'Loja','Loja','Loja\nes una ciudad del Ecuador, capital de la provincia y cantón Loja, tiene una rica\ntradición en las artes, y por esta razón es conocida como la capital musical y cultural\ndel Ecuador.','206.83','57.00','-3.833','-80.067','1'),(13,'Los\nRios','Babahoyo','Los Ríos, oficialmente Provincia de Los Ríos, es una de las 24\nprovincias de la República del Ecuador, localizada en la Región Costa del país. Su\ncapital es la ciudad de Babahoyo y su localidad más poblada es la ciudad de Quevedo. Es\nuno de los más importantes centros agrícolas del Ecuador. Su territorio está ubicado en\nla parte central del litoral del país y limita con las provincias de Guayas, Santo\nDomingo de los Tsáchilas, Manabí, Cotopaxi y Bolívar. Según el último ordenamiento\nterritorial, la provincia de Los Ríos pertenece a la región comprendida también por las\nprovincias de Bolívar, Guayas y Santa Elena.','778115.00','6254.00','-1.766669','-\n79.45','2'),(14,'Manabi','Portoviejo','Manabí es una provincia ecuatoriana localizada en el\nemplazamiento centro-noroeste del Ecuador continental, cuya unidad jurídica se ubica en\nla región geográfica del litoral, que a su vez se encuentra dividida por el cruce de la\nlínea equinoccial. Su capital es Portoviejo. Limita al oeste con el Océano Pacífico, al\nnorte con la provincia de Esmeraldas, al este con la provincia deSanto Domingo de los\nTsáchilas y Los Ríos, al sur con la provincia de Santa Elena y al sur y este con la\nprovincia de Guayas. Con una población de 1,395.249 habitantes, es la tercera provincia\nmás poblada de Ecuador.','1369780.00','18400.00','-1.052219','-80.4506','2'),(15,'Morona\nSantiago','Macas','Morona Santiago (nombre oficial Provincia de Morona Santiago) es una\nde las 24 provincias que conforman la República del Ecuador. Es una provincia de la\nAmazonía ecuatoriana. Su capital es la ciudad de Macas, la cual además, es su urbe más\npoblada. Su territorio limita al norte con Pastaza, al sur con Zamora Chinchipe, al este\ncon Perú, y al oeste con Tungurahua, Azuay, Chimborazo y Cañar. Ocupa una superficie de\n25.690 km², un área similar a la de Cerdeña.','147940.00','25690.00','-2.366667',' -\n78.133333','4'),(16,'Napo','Tena','La\nprovincia de Napo es una de las provincias de la Región Centro Norte (Ecuador), de la\nRepública del Ecuador, situada en la región amazónica ecuatoriana e incluyendo parte de\nlas laderas de los Andes, hasta las llanuras amazónicas. Toma su nombre del río Napo. Su\ncapital es la ciudad de Tena. Limita al norte con Sucumbíos, al sur con Pastaza, al\noeste con Pichincha,Cotopaxi y Tungurahua y al este con la Provincia de\nOrellana.','103697.00','13271.00','0.989','-77.8159','4'),(17,'Orellana','Francisco\nde Orellana','Orellana, provincia de la Región Centro Norte (Ecuador), Ecuador, La\ncapital de la provincia es El Coca más conocida como «Coca». Al norte limita con\nSucumbíos, al sur con la provincia de Pastaza, al este con Perú y al oeste con Napo.\nTiene una superficie de 20.733 km², que en términos de extensión es similar a la de El\nSalvador. Es una de las provincias más nuevas del país, provincia 22, pues fue creada en\n1998 al ser separada de Napo. Inicialmente su nombre iba a ser provincia de Amazonaspero\nante un potencial reclamo de Perú se decidió denominarla Orellana. La población es de\n136.396 habitantes; sus habitantes nativos pertenecen principalmente a las\nnacionalidades waorani, schuar y kichwa.','136396.00','20773.00','-0.933333','-\n75.666667','4'),(18,'Pastaza','Puyo','Pastaza, oficialmente Provincia de Pastaza, es una de las 24\nprovincias que conforman la República del Ecuador, situada en laRegión Amazónica del\nEcuador. Recibe su nombre del río Pastaza, que la separa al sur de la provincia de\nMorona Santiago. Su capital es la ciudad de Puyo.','83933.00','29520.00','-1.066667','-\n78.001111','4'),(19,'Pichincha','Quito','La Provincia de Pichincha es una de las 24 provincias que\nconforman la República del Ecuador. Se encuentra ubicada al norte del país, en la zona\ngeográfica conocida como sierra. Su capital administrativa es la ciudad de Quito, la\ncual además es su urbe más poblada y la capital del país. Es también el principal centro\ncomercial del país.','2576287.00','9612.00','-0.25','-78.583333','1'),(20,'Santa Elena','Santa\nElena','Santa Elena es una provincia de la costa de Ecuador creada el 7 de noviembre de\n2007, la más reciente de las 24 actuales, con territorios que anterior a esa fecha\nformaban parte de la provincia del Guayas, al oeste de ésta.','308693.00','3763.00','-\n2.2267',' -80.8583','2'),(21,'Santo Domingo de los\r Tsachilas','Santo Domingo','La Provincia de Santo Domingo de los Tsáchilas es una de las\nprovincias de la República del Ecuador y forma parte de laRegión Costa, históricamente\nconocida como Provincia de Yumbos. Su territorio está en zona de trópico húmedo. La\nprovincia toma su nombre de los Tsáchilas, etnia ancestral de la\nzona.','410937.00','4180.00','-0.333333','-79.25','2'),(22,'Sucumbios','Nueva\nLoja','Sucumbíos es una provincia del nor-oriente del Ecuador. Su capital es Nueva Loja.\nEs una de las principales provincias que proveen al Estado ecuatoriano del petróleo que\nnecesita para las exportaciones. Se caracteriza por sus bellos paisajes amazónicos,\nentre ellos el río Aguarico.','176472.00','18612.00','-0.083333','-\n76.883333','4'),(23,'Tungurahua','Ambato','Tungurahua, oficialmente Provincia de Tungurahua, es una de las\n24 provincias que conforman la República del Ecuador. Se encuentra al centro del país,\nen la región geográfica conocida como sierra. La ciudad de Ambato es su capital\nadministrativa; se divide en 9 cantones. Forma parte de la región comprendida también\npor las provincias de Cotopaxi, Chimborazo y Pastaza.','504583.00','3334.00','-\n1.233333','-78.616667','1'),(24,'Zamora\nChimchipe','Zamora','Zamora Chinchipe es una provincia de Ecuador ubicada en el suroriente de la Amazonía ecuatoriana, que limita con la provincia de Morona Santiago al\nnorte; con la provincia de Loja al oeste; y con Perú al sur y este. Según el último\nordenamiento territorial del Ecuador, Zamora Chinchipe pertenece a la Región Sur\ncomprendida también por las provincias de Loja y El Oro. Tiene una superficie de 10.556\nkm², la cual comprende una orografía montañosa única que la distingue del resto de\nprovincias amazónicas.','91376.00','10556.00','-2.883333','-79','4');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_empleados'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08  0:26:28
