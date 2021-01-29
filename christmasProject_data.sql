-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: christmas_18
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL,
  `nextPage` varchar(45) DEFAULT NULL,
  `lastPage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cat_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'cards','decorations','list'),(1,'decorations','gifts','cards'),(2,'gifts','list','decorations'),(3,'list','cards','gifts');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmas_18`
--

DROP TABLE IF EXISTS `xmas_18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xmas_18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `subtitle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmas_18`
--

LOCK TABLES `xmas_18` WRITE;
/*!40000 ALTER TABLE `xmas_18` DISABLE KEYS */;
INSERT INTO `xmas_18` VALUES (1,'cards',0,'Snoopy','https://i.pinimg.com/564x/51/29/b5/5129b5692156d4dabe59e03005295a61.jpg',NULL),(2,'cards',0,'Reindeer','https://i.pinimg.com/564x/d5/96/66/d596665ce455a61790215bffe9ccda47.jpg',NULL),(3,'cards',0,'Gingerman','https://i.pinimg.com/564x/d9/ad/9d/d9ad9d55da3cc60c70ebaf7a731ea923.jpg',NULL),(4,'cards',0,'Mask','https://i.pinimg.com/564x/a6/f7/4f/a6f74ff6900accef73dd47560dbfae8c.jpg',NULL),(5,'cards',0,'Dog','https://i.pinimg.com/564x/a9/a4/02/a9a402f52cd1d5dc68f468639341fd3c.jpg',NULL),(6,'cards',0,'Socks','https://i.pinimg.com/564x/78/97/2e/78972ec2edb2601a0690b3705127aefc.jpg',NULL),(7,'cards',0,'Tree','https://i.pinimg.com/564x/74/05/9c/74059c292462eb101962b06dc86a90db.jpg',NULL),(8,'cards',0,'Elves','https://i.pinimg.com/564x/ee/cb/ba/eecbba7f3184c5467788f2e452ce91cf.jpg',NULL),(9,'decorations',1,'doorway','https://i.pinimg.com/564x/92/9e/29/929e29973cb57d6278609d5fdc348146.jpg',NULL),(10,'decorations',1,'bed room','https://i.pinimg.com/564x/b3/da/ec/b3daec9c2bb81ddae72a6b2a320178fb.jpg',NULL),(11,'decorations',1,'stove','https://i.pinimg.com/564x/1e/cf/4d/1ecf4d1fb59c2c0cec3da6b96334f0e3.jpg',NULL),(12,'decorations',1,'kitchen','https://i.pinimg.com/564x/db/d5/72/dbd572e65544f6c4bdb35049a9647c40.jpg',NULL),(13,'decorations',1,'house','https://i.pinimg.com/564x/84/5a/1f/845a1fb36822a279bdabeb29f69fafc2.jpg',NULL),(14,'decorations',1,'stairs','https://i.pinimg.com/564x/76/ae/54/76ae54e0878b6cdaf321d3757f38e2e8.jpg',NULL),(15,'decorations',1,'living room','https://i.pinimg.com/564x/45/20/d1/4520d10052680acb88377559b6ae67dd.jpg',NULL),(16,'decorations',1,'dining room','https://i.pinimg.com/564x/1e/5b/fe/1e5bfee1996e5a3e743aac7b92b970e3.jpg',NULL),(17,'gifts',2,'cup','https://i.pinimg.com/564x/99/7d/e5/997de5b1449d44a6a731ce90dc1a73da.jpg',NULL),(18,'gifts',2,'candy','https://i.pinimg.com/564x/98/8c/54/988c540db51b91960eeffceb793e6d01.jpg',NULL),(19,'gifts',2,'tea','https://i.pinimg.com/564x/1c/ea/1c/1cea1cafd301df46a262d1e67a452d67.jpg',NULL),(20,'gifts',2,'dessert','https://i.pinimg.com/564x/fe/d8/b3/fed8b33960e7d9a0f3adc32c55be1f10.jpg',NULL),(21,'gifts',2,'cat','https://i.pinimg.com/564x/32/e2/91/32e2916a31d8720aaf9e750c2a5c92af.jpg',NULL),(22,'gifts',2,'flowers','https://i.pinimg.com/564x/ab/cf/1f/abcf1f9156b6c4aeb7286493ad7dd4a4.jpg',NULL),(23,'gifts',2,'gloves','https://i.pinimg.com/564x/9d/7c/8d/9d7c8d81b96fc6803ace6ea5d0958f8e.jpg',NULL),(24,'gifts',2,'earings','https://i.pinimg.com/564x/9a/9c/fb/9a9cfbd059bd795786c9e7538228dab8.jpg',NULL),(25,'list',3,'Sarah','https://i.pinimg.com/564x/09/5a/d3/095ad34e8d0309ba069278da9ca0a41a.jpg','NAUTY'),(26,'list',3,'Panny','https://i.pinimg.com/564x/39/c6/93/39c693610a6b5a46511c7c9afe2a9bf8.jpg','NICE'),(27,'list',3,'Nancy','https://i.pinimg.com/564x/0a/5a/37/0a5a37c45fa7f5a7873ece92ac1163b6.jpg','NICE'),(28,'list',3,'Lora','https://i.pinimg.com/564x/42/73/0b/42730bd1653f550b44a5a121154261c3.jpg','NAUTY'),(32,'list',3,'Max','https://i.pinimg.com/564x/0d/0f/f7/0d0ff7952466fed664b528d9bb8a442b.jpg','NAUTY'),(33,'list',3,'Kevin','https://i.pinimg.com/564x/90/f3/7f/90f37f2179bd9955c4303897bdf130f3.jpg','NICE'),(34,'list',3,'Jason','https://i.pinimg.com/564x/0f/fd/53/0ffd53ef56533b6176975672cdf82135.jpg','NICE'),(35,'list',3,'Vencent','https://i.pinimg.com/564x/a3/4c/dd/a34cdd80bd8844e56bdffd16bd92c0d5.jpg','NICE'),(37,'cards',0,'raccoon','https://i.pinimg.com/564x/ca/1d/b2/ca1db2db27fff35b3d26b60ca20a9327.jpg','');
/*!40000 ALTER TABLE `xmas_18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'christmas_18'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 12:17:48
