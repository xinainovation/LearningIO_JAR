-- MySQL dump 10.13  Distrib 5.7.43, for osx10.18 (x86_64)
--
-- Host: localhost    Database: LearningIO
-- ------------------------------------------------------
-- Server version	5.7.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mst_topick`
--

DROP TABLE IF EXISTS `mst_topick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_topick` (
  `topick_id` varchar(256) NOT NULL,
  `topick_name` varchar(45) NOT NULL,
  `id` varchar(255) NOT NULL,
  `last_recorded_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`topick_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_topick`
--

LOCK TABLES `mst_topick` WRITE;
/*!40000 ALTER TABLE `mst_topick` DISABLE KEYS */;
INSERT INTO `mst_topick` VALUES ('1','JavaGold SE11','tubasa',NULL);
/*!40000 ALTER TABLE `mst_topick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mst_user_accounts`
--

DROP TABLE IF EXISTS `mst_user_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mst_user_accounts` (
  `id` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `target_study_time` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mst_user_accounts`
--

LOCK TABLES `mst_user_accounts` WRITE;
/*!40000 ALTER TABLE `mst_user_accounts` DISABLE KEYS */;
INSERT INTO `mst_user_accounts` VALUES ('tubasa','1223tubasa',14);
/*!40000 ALTER TABLE `mst_user_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_remind`
--

DROP TABLE IF EXISTS `trn_remind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_remind` (
  `remind_id` int(11) NOT NULL,
  `remind_details` varchar(256) DEFAULT NULL,
  `remind_date` date DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  PRIMARY KEY (`remind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_remind`
--

LOCK TABLES `trn_remind` WRITE;
/*!40000 ALTER TABLE `trn_remind` DISABLE KEYS */;
INSERT INTO `trn_remind` VALUES (214,'Optionalインターフェースの概念、各メソッドの使い方。streamAPIの各メソッドの使い方','2023-07-26',0),(1364,'ExecutorService、singleThreadExecutor、scheduledExecutorService等を使った並行処理','2023-07-22',0),(1979,'例外とアサーション、javaモジュールシステム、ローカライズ。','2023-08-03',0),(3238,'streamAPI、optionalインターフェース、並列ストリームについて。','2023-07-22',0),(3537,'並行処理。Thread、\r\nRunnableの実装による並列処理の実現、synchronizedによる並行処理の競合問題の対処方法','2023-08-23',3),(4122,'StreamAPI、reduce、maxメソッド','2023-07-26',1),(5506,'I/O関係\r\nFile,Files,Path,Paths','2023-08-10',0),(8489,'アノテーション。実際にコードを打って復習する必要あり。','2023-08-03',0),(9656,'入出力。解像度低め','2023-07-27',0);
/*!40000 ALTER TABLE `trn_remind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trn_studyrecord`
--

DROP TABLE IF EXISTS `trn_studyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trn_studyrecord` (
  `id` varchar(255) NOT NULL,
  `topick_id` varchar(255) DEFAULT NULL,
  `study_hour` time DEFAULT '00:00:00',
  `study_datetime` datetime DEFAULT NULL,
  `remind_id` int(11) DEFAULT NULL,
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trn_studyrecord`
--

LOCK TABLES `trn_studyrecord` WRITE;
/*!40000 ALTER TABLE `trn_studyrecord` DISABLE KEYS */;
INSERT INTO `trn_studyrecord` VALUES ('tubasa','1','00:30:00','2023-07-10 00:00:00',NULL,8),('tubasa','1','01:00:00','2023-07-11 00:00:00',NULL,9),('tubasa','1','01:00:00','2023-07-12 00:00:00',NULL,10),('tubasa','1','00:30:00','2023-07-13 21:12:30',5333,27),('tubasa','1','00:30:00','2023-07-14 21:17:56',3741,32),('tubasa','1','00:20:00','2023-07-15 21:18:19',7046,33),('tubasa','1','02:00:00','2023-07-17 23:07:17',3537,34),('tubasa','1','02:00:00','2023-07-18 08:41:44',1364,35),('tubasa','1','01:20:00','2023-07-19 22:05:05',3238,36),('tubasa','1','00:40:00','2023-07-20 22:13:56',4122,40),('tubasa','1','00:30:00','2023-07-22 00:03:43',488,47),('tubasa','1','04:00:00','2023-07-23 23:12:37',214,48),('tubasa','1','01:20:00','2023-07-24 06:14:24',9656,49),('tubasa','1','01:00:00','2023-07-29 16:42:49',NULL,67),('tubasa','1','01:00:00','2023-07-30 23:34:06',8489,68),('tubasa','1','01:30:00','2023-07-31 21:20:45',1979,69),('tubasa','1','02:30:00','2023-08-01 22:29:55',NULL,70),('tubasa','1','02:00:00','2023-08-02 23:30:24',NULL,71),('tubasa','1','01:00:00','2023-08-04 09:11:13',NULL,72),('tubasa','1','03:00:00','2023-08-05 14:28:22',NULL,73),('tubasa','1','03:00:00','2023-08-06 17:19:37',NULL,74),('tubasa','1','01:00:00','2023-08-06 08:49:01',NULL,75),('tubasa','1','01:00:00','2023-08-07 08:49:12',NULL,76),('tubasa','1','01:00:00','2023-08-07 21:23:03',5506,77),('tubasa','1','01:00:00','2023-08-08 19:22:22',NULL,78),('tubasa','1','00:20:00','2023-08-12 09:07:48',NULL,79),('tubasa','1','02:00:00','2023-08-13 09:08:01',NULL,80),('tubasa','1','00:20:00','2023-08-14 09:19:48',NULL,81),('tubasa','1','00:40:00','2023-08-14 22:29:30',NULL,82),('tubasa','1','00:50:00','2023-08-15 08:23:38',NULL,83);
/*!40000 ALTER TABLE `trn_studyrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-16 22:01:21
