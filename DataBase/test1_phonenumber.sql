-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `phonenumber`
--

DROP TABLE IF EXISTS `phonenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonenumber` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `emp_ID` int NOT NULL,
  `phone_number` char(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `emp_ID` (`emp_ID`),
  CONSTRAINT `phonenumber_ibfk_1` FOREIGN KEY (`emp_ID`) REFERENCES `employee` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonenumber`
--

LOCK TABLES `phonenumber` WRITE;
/*!40000 ALTER TABLE `phonenumber` DISABLE KEYS */;
INSERT INTO `phonenumber` VALUES (1,1,'0741320518'),(2,1,'0755428769'),(3,2,'0771813010'),(4,2,'0770992701'),(5,3,'0722137949'),(6,3,'0729099576'),(7,4,'0728082778'),(8,4,'0748803616'),(9,5,'0733044152'),(10,5,'0741346308'),(11,6,'0799246503'),(12,6,'0733507188'),(13,7,'0797803959'),(14,7,'0706966708'),(15,8,'0741609263'),(16,8,'0726940392'),(17,9,'0725011637'),(18,9,'0719165542'),(19,10,'0792747929'),(20,10,'0741770352'),(21,11,'0793570286'),(22,11,'0798948459'),(23,12,'0733225836'),(24,12,'0707706883'),(25,13,'0754897097'),(26,13,'0704421234'),(27,14,'0744657531'),(28,14,'0788791882'),(29,15,'0789941094'),(30,15,'0793361064'),(31,16,'0780856844'),(32,16,'0744717122'),(33,17,'0710496678'),(34,17,'0724991758'),(35,18,'0743580629'),(36,18,'0724794557'),(37,19,'0730815316'),(38,19,'0738199612'),(39,20,'0717123353'),(40,20,'0762038794'),(41,21,'0764046172'),(42,21,'0770721522'),(43,22,'0763857189'),(44,22,'0703363645'),(45,23,'0730477417'),(46,23,'0791227490'),(47,24,'0726732497'),(48,24,'0744420961'),(49,25,'0776550314'),(50,25,'0796851433'),(51,26,'0782389760'),(52,26,'0763359694'),(53,27,'0757742778'),(54,27,'0796898017'),(55,28,'0726117374'),(56,28,'0762111889'),(57,29,'0756264093'),(58,29,'0798331559'),(59,30,'0752820047'),(60,30,'0762169061'),(61,31,'0733653042'),(62,31,'0762770682'),(63,32,'0777560295'),(64,32,'0785997504'),(65,33,'0759069308'),(66,33,'0786413612'),(67,34,'0739942810'),(68,34,'0714765265'),(69,35,'0779123388'),(70,35,'0765655085'),(71,36,'0726583630'),(72,36,'0706556838'),(73,37,'0775184817'),(74,37,'0720423795'),(75,38,'0776711669'),(76,38,'0760449963'),(77,39,'0793854077'),(78,39,'0753287225'),(79,40,'0749348579'),(80,40,'0757165700'),(81,41,'0715209169'),(82,41,'0710612944'),(83,42,'0766861286'),(84,42,'0733543169'),(85,43,'0720080416'),(86,43,'0719262478'),(87,44,'0752463292'),(88,44,'0770241229'),(89,45,'0732249794'),(90,45,'0762187196'),(91,46,'0792821975'),(92,46,'0762750228'),(93,47,'0787510183'),(94,47,'0715835876'),(95,48,'0728717989'),(96,48,'0717810381'),(97,49,'0779365985'),(98,49,'0796367875'),(99,50,'0706360036'),(100,50,'0790978047'),(101,51,'0783944848'),(102,51,'0758886632'),(103,52,'0779344430'),(104,52,'0705260548'),(105,53,'0737233492'),(106,53,'0752049716'),(107,54,'0751111852'),(108,54,'0785911915'),(109,55,'0783136638'),(110,55,'0701032438'),(111,56,'0790719339'),(112,56,'0768988614'),(113,57,'0704256355'),(114,57,'0779287208'),(115,58,'0784248829'),(116,58,'0772240849'),(117,59,'0748146183'),(118,59,'0741677505'),(119,60,'0755098062'),(120,60,'0777037517'),(121,61,'0765448529'),(122,61,'0779105711'),(123,62,'0793189312'),(124,62,'0733712431'),(125,63,'0782557308'),(126,63,'0749823432'),(127,64,'0794770784'),(128,64,'0755844940'),(129,65,'0748244869'),(130,65,'0776058195'),(131,66,'0700603796'),(132,66,'0773590807'),(133,67,'0777967745'),(134,67,'0752842441'),(135,68,'0756520116'),(136,68,'0762739107'),(137,69,'0742119828'),(138,69,'0741142039'),(139,70,'0762684003'),(140,70,'0711769663'),(141,71,'0725574280'),(142,71,'0704503680'),(143,72,'0720567643'),(144,72,'0707218565'),(145,73,'0721945319'),(146,73,'0748388696'),(147,74,'0777453030'),(148,74,'0716315566'),(149,75,'0721595900'),(150,75,'0735249554'),(151,76,'0782615838'),(152,76,'0781846553'),(153,77,'0727418331'),(154,77,'0763398196'),(155,78,'0737566111'),(156,78,'0716006891'),(157,79,'0798906344'),(158,79,'0771417139'),(159,80,'0787382757'),(160,80,'0764418293'),(161,81,'0705178926'),(162,81,'0753099278'),(163,82,'0794489165'),(164,82,'0773781314'),(165,83,'0760668798'),(166,83,'0713780428'),(167,84,'0706309055'),(168,84,'0755727342'),(169,85,'0792661266'),(170,85,'0764322504'),(171,86,'0708085469'),(172,86,'0763715043'),(173,87,'0794710519'),(174,87,'0722074434'),(175,88,'0731828263'),(176,88,'0768905311'),(177,89,'0753059723'),(178,89,'0702444399'),(179,90,'0769534631'),(180,90,'0738402336'),(181,91,'0752081832'),(182,91,'0795046927'),(183,92,'0768200959'),(184,92,'0741387798'),(185,93,'0797797609'),(186,93,'0795905973'),(187,94,'0704247351'),(188,94,'0778351838'),(189,95,'0774150668'),(190,95,'0796519455'),(191,96,'0736736781'),(192,96,'0775141460'),(193,97,'0741899080'),(194,97,'0735192034'),(195,98,'0710251327'),(196,98,'0771683998'),(197,99,'0762126986'),(198,99,'0729956472'),(199,100,'0776303812'),(200,100,'0707733047'),(201,101,'0706514436'),(202,101,'0730573855'),(203,102,'0741864150'),(204,102,'0753885351'),(205,103,'0787291789'),(206,103,'0796500019'),(207,104,'0721819696'),(208,104,'0733127849'),(209,105,'0752022764'),(210,105,'0782442045'),(211,106,'0744293094'),(212,106,'0758813241'),(213,107,'0706625966'),(214,107,'0767532552'),(215,108,'0729426841'),(216,108,'0768379922'),(217,109,'0763203415'),(218,109,'0753689105'),(219,110,'0742073232'),(220,110,'0719619876'),(221,111,'0740274608'),(222,111,'0777586428'),(223,112,'0756849743'),(224,112,'0765315606'),(225,113,'0733531061'),(226,113,'0739545429'),(227,114,'0775394246'),(228,114,'0715027094'),(229,115,'0749893468'),(230,115,'0718650322'),(231,116,'0725322401'),(232,116,'0716571864'),(233,117,'0754446382'),(234,117,'0779892759'),(235,118,'0704827085'),(236,118,'0728333667'),(237,119,'0700815674'),(238,119,'0792085895'),(239,120,'0745012103'),(240,120,'0740122818'),(241,121,'0744355697'),(242,121,'0755917017'),(243,122,'0764732742'),(244,122,'0799741563'),(245,123,'0726829171'),(246,123,'0724045962'),(247,124,'0727282480'),(248,124,'0771541716'),(249,125,'0764010475'),(250,125,'0745110340'),(251,126,'0755972569'),(252,126,'0725371636'),(253,127,'0770085806'),(254,127,'0778251464'),(255,128,'0777130213'),(256,128,'0708269350'),(257,129,'0746935144'),(258,129,'0700067179'),(259,130,'0799491971'),(260,130,'0764914567'),(261,131,'0765436296'),(262,131,'0779668019'),(263,132,'0753592122'),(264,132,'0704774872'),(265,133,'0776789158'),(266,133,'0715846474'),(267,134,'0785217962'),(268,134,'0718411116'),(269,135,'0749953205'),(270,135,'0769382368'),(271,136,'0766526802'),(272,136,'0762270033'),(273,137,'0739944049'),(274,137,'0748105468'),(275,138,'0709129363'),(276,138,'0702036334'),(277,139,'0724250124'),(278,139,'0789557533'),(279,140,'0717802731'),(280,140,'0792128761'),(281,141,'0735173088'),(282,141,'0773136599'),(283,142,'0724073471'),(284,142,'0756040747'),(285,143,'0793849697'),(286,143,'0778902667'),(287,144,'0707895192'),(288,144,'0706079974'),(289,145,'0794863252'),(290,145,'0780314008'),(291,146,'0705097929'),(292,146,'0725275965'),(293,147,'0721396627'),(294,147,'0710089283'),(295,148,'0718068697'),(296,148,'0749968630'),(297,149,'0725219708'),(298,149,'0719475119'),(299,150,'0701582658'),(300,150,'0735935338'),(301,151,'0708613064'),(302,151,'0776805353'),(303,152,'0736240877'),(304,152,'0708870830'),(305,153,'0777677244'),(306,153,'0796386033'),(307,154,'0748017917'),(308,154,'0730481082'),(309,155,'0708748869'),(310,155,'0731643399'),(311,156,'0794855879'),(312,156,'0751109201'),(313,157,'0703396009'),(314,157,'0799777005'),(315,158,'0718418498'),(316,158,'0785695941'),(317,159,'0764475199'),(318,159,'0777070970'),(319,160,'0786505846'),(320,160,'0795470550'),(321,161,'0736856702'),(322,161,'0782263141'),(323,162,'0715690481'),(324,162,'0773171774'),(325,163,'0784161569'),(326,163,'0774178590'),(327,164,'0713538915'),(328,164,'0704620821'),(329,165,'0717460491'),(330,165,'0733151658'),(331,166,'0799909620'),(332,166,'0760397151'),(333,167,'0753199593'),(334,167,'0759284735'),(335,168,'0776820965'),(336,168,'0749084454'),(337,169,'0789864869'),(338,169,'0738260875'),(339,170,'0706601663'),(340,170,'0789950272'),(341,171,'0723195166'),(342,171,'0762373219'),(343,172,'0701645450'),(344,172,'0799338932'),(345,173,'0726877103'),(346,173,'0768189374'),(347,174,'0744585128'),(348,174,'0748348162'),(349,175,'0721316237'),(350,175,'0761961537'),(351,176,'0715923649'),(352,176,'0717926974'),(353,177,'0781906640'),(354,177,'0761619388'),(355,178,'0760699754'),(356,178,'0710340080'),(357,179,'0728030537'),(358,179,'0703031135'),(359,180,'0794191123'),(360,180,'0796292781'),(361,181,'0784615313'),(362,181,'0706492679'),(363,182,'0727269455'),(364,182,'0772988221'),(365,183,'0749531258'),(366,183,'0750877516'),(367,184,'0734080342'),(368,184,'0733510089'),(369,185,'0714320746'),(370,185,'0770593515'),(371,186,'0723147542'),(372,186,'0747408060'),(373,187,'0771544203'),(374,187,'0790789738'),(375,188,'0730965241'),(376,188,'0712086674'),(377,189,'0727073081'),(378,189,'0797239993'),(379,190,'0761768725'),(380,190,'0797566220'),(381,191,'0715059659'),(382,191,'0736011410'),(383,192,'0772966615'),(384,192,'0782402627'),(385,193,'0780693348'),(386,193,'0794440306'),(387,194,'0749861118'),(388,194,'0719610537'),(389,195,'0718158568'),(390,195,'0744685664'),(391,196,'0723499366'),(392,196,'0709072407'),(393,197,'0704851018'),(394,197,'0796251887'),(395,198,'0729393265'),(396,198,'0750186504'),(397,199,'0731544626'),(398,199,'0713242923'),(399,200,'0791830751'),(400,200,'0761194554'),(401,201,'0789878678'),(402,201,'0778987676'),(403,202,'0765654333'),(404,202,'0778987676');
/*!40000 ALTER TABLE `phonenumber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 12:40:57
