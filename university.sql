-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.3

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
-- Table structure for table `Assistant`
--

DROP TABLE IF EXISTS `Assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assistant` (
  `Aname` varchar(10) NOT NULL,
  `Ano` varchar(12) NOT NULL,
  `Aage` int DEFAULT NULL,
  `Aphone` varchar(12) DEFAULT NULL,
  `Amail` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assistant`
--

LOCK TABLES `Assistant` WRITE;
/*!40000 ALTER TABLE `Assistant` DISABLE KEYS */;
INSERT INTO `Assistant` VALUES ('徐导','A1',23,'123234','132989234@gamil.com'),('董导','A2',26,'1237823492','kjasd92@163.com');
/*!40000 ALTER TABLE `Assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CStudent`
--

DROP TABLE IF EXISTS `CStudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CStudent` (
  `Sno` varchar(12) NOT NULL,
  `Cno` varchar(12) NOT NULL,
  PRIMARY KEY (`Sno`),
  KEY `Cno` (`Cno`),
  CONSTRAINT `CStudent_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `Student` (`Sno`),
  CONSTRAINT `CStudent_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `Class` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CStudent`
--

LOCK TABLES `CStudent` WRITE;
/*!40000 ALTER TABLE `CStudent` DISABLE KEYS */;
INSERT INTO `CStudent` VALUES ('1190100612','1'),('1190200705','1'),('1190200710','1'),('1190200715','1'),('1190200720','1'),('1190200725','1'),('1190200730','1'),('1190200735','1'),('1190200740','1'),('1190200745','1'),('1190200750','1'),('1190200755','1'),('1190200760','1'),('1190200765','1'),('1190200770','1'),('1190200775','1'),('1190200780','1'),('1190200785','1'),('1190200790','1'),('1190200795','1'),('1190200800','1'),('1190200805','1'),('1190200810','1'),('1190200815','1'),('1190200820','1'),('1190200825','1'),('1190200830','1'),('1190200835','1'),('1190200840','1'),('1190200845','1'),('1190200850','1'),('1190200855','1'),('1190200860','1'),('1190200865','1'),('1190200870','1'),('1190200875','1'),('1190200880','1'),('1190200885','1'),('1190200890','1'),('1190200895','1'),('1190200900','1'),('1190200701','2'),('1190200706','2'),('1190200711','2'),('1190200716','2'),('1190200721','2'),('1190200726','2'),('1190200731','2'),('1190200736','2'),('1190200741','2'),('1190200746','2'),('1190200751','2'),('1190200756','2'),('1190200761','2'),('1190200766','2'),('1190200771','2'),('1190200776','2'),('1190200781','2'),('1190200786','2'),('1190200791','2'),('1190200796','2'),('1190200801','2'),('1190200806','2'),('1190200811','2'),('1190200816','2'),('1190200821','2'),('1190200826','2'),('1190200831','2'),('1190200836','2'),('1190200841','2'),('1190200846','2'),('1190200851','2'),('1190200856','2'),('1190200861','2'),('1190200866','2'),('1190200871','2'),('1190200876','2'),('1190200881','2'),('1190200886','2'),('1190200891','2'),('1190200896','2'),('1190200702','3'),('1190200707','3'),('1190200712','3'),('1190200717','3'),('1190200722','3'),('1190200727','3'),('1190200732','3'),('1190200737','3'),('1190200742','3'),('1190200747','3'),('1190200752','3'),('1190200757','3'),('1190200762','3'),('1190200767','3'),('1190200772','3'),('1190200777','3'),('1190200782','3'),('1190200787','3'),('1190200792','3'),('1190200797','3'),('1190200802','3'),('1190200807','3'),('1190200812','3'),('1190200817','3'),('1190200822','3'),('1190200827','3'),('1190200832','3'),('1190200837','3'),('1190200842','3'),('1190200847','3'),('1190200852','3'),('1190200857','3'),('1190200862','3'),('1190200867','3'),('1190200872','3'),('1190200877','3'),('1190200882','3'),('1190200887','3'),('1190200892','3'),('1190200897','3'),('1190200703','4'),('1190200708','4'),('1190200713','4'),('1190200718','4'),('1190200723','4'),('1190200728','4'),('1190200733','4'),('1190200738','4'),('1190200743','4'),('1190200748','4'),('1190200753','4'),('1190200758','4'),('1190200763','4'),('1190200768','4'),('1190200773','4'),('1190200778','4'),('1190200783','4'),('1190200788','4'),('1190200793','4'),('1190200798','4'),('1190200803','4'),('1190200808','4'),('1190200813','4'),('1190200818','4'),('1190200823','4'),('1190200828','4'),('1190200833','4'),('1190200838','4'),('1190200843','4'),('1190200848','4'),('1190200853','4'),('1190200858','4'),('1190200863','4'),('1190200868','4'),('1190200873','4'),('1190200878','4'),('1190200883','4'),('1190200888','4'),('1190200893','4'),('1190200898','4'),('1190200704','5'),('1190200709','5'),('1190200714','5'),('1190200719','5'),('1190200724','5'),('1190200729','5'),('1190200734','5'),('1190200739','5'),('1190200744','5'),('1190200749','5'),('1190200754','5'),('1190200759','5'),('1190200764','5'),('1190200769','5'),('1190200774','5'),('1190200779','5'),('1190200784','5'),('1190200789','5'),('1190200794','5'),('1190200799','5'),('1190200804','5'),('1190200809','5'),('1190200814','5'),('1190200819','5'),('1190200824','5'),('1190200829','5'),('1190200834','5'),('1190200839','5'),('1190200844','5'),('1190200849','5'),('1190200854','5'),('1190200859','5'),('1190200864','5'),('1190200869','5'),('1190200874','5'),('1190200879','5'),('1190200884','5'),('1190200889','5'),('1190200894','5'),('1190200899','5');
/*!40000 ALTER TABLE `CStudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Class` (
  `Cno` varchar(12) NOT NULL,
  `Croom` varchar(99) DEFAULT NULL,
  `Tno` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Cno`),
  KEY `Tno` (`Tno`),
  CONSTRAINT `Class_ibfk_1` FOREIGN KEY (`Tno`) REFERENCES `Teacher` (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES ('1','正心820','T1190100612'),('2','正心821','T1190100613'),('3','正心822','T1190100614'),('4','正心823','T1190100615'),('5','正心824','T1190100616');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `Cname` varchar(30) NOT NULL,
  `Cno` varchar(12) NOT NULL,
  `Croom` varchar(99) DEFAULT NULL,
  `Ctime` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES ('数据库系统','C1','正心23','周二3-4节周五3-4节'),('编译系统','C2','正心33','周二1-2节周五1-2节'),('操作系统','C3','正心42','周三1-4节'),('网络安全','C4','正心218','周一5-6节周四7-8节'),('信息内容安全','C6','正心229','周一9-10节周五9-10节'),('德语二外','C7','正心320','周六1-4节'),('日语二外','C8','正心520','周天1-4节'),('项目管理','C9','正心343','周三1-4节');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `course_log_update` AFTER UPDATE ON `Course` FOR EACH ROW begin insert into course_log values(NULL, 'UPDATE', NOW(), new.Cno , concat('resultBefore{Cname=',old.Cname,',Cno=',old.Cno,',Croom=',old.Croom,',Ctime=',old.Ctime,'}','resultAfter{Cname=',new.Cname,',Cno=',new.Cno,',Croom=',new.Croom,',Ctime',new.Ctime,'}')); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Curricula`
--

DROP TABLE IF EXISTS `Curricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curricula` (
  `Sno` varchar(12) NOT NULL,
  `Cno` varchar(12) NOT NULL,
  `result` int DEFAULT NULL,
  PRIMARY KEY (`Sno`,`Cno`),
  KEY `Cno` (`Cno`),
  KEY `result` (`result`),
  CONSTRAINT `Curricula_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `Student` (`Sno`),
  CONSTRAINT `Curricula_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `Course` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curricula`
--

LOCK TABLES `Curricula` WRITE;
/*!40000 ALTER TABLE `Curricula` DISABLE KEYS */;
INSERT INTO `Curricula` VALUES ('1190100612','C1',NULL),('1190100612','C4',NULL),('1190200811','C9',NULL),('1190200812','C1',NULL),('1190200812','C2',NULL),('1190200812','C9',NULL),('1190200823','C9',NULL),('1190200844','C6',35),('1190200811','C6',83),('1190200812','C6',90),('1190200853','C6',91),('1190100612','C9',92),('1190200823','C6',92),('1190200853','C9',92),('1190100612','C6',94);
/*!40000 ALTER TABLE `Curricula` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `curricula_log_insert` AFTER INSERT ON `Curricula` FOR EACH ROW begin insert into curricula_insert_log values(NULL, 'INSERT', NOW(), new.Sno , concat('insert{Sno=',new.Sno,',Cno=',new.Cno,',result=','null','}')); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `curricula_log_update` AFTER UPDATE ON `Curricula` FOR EACH ROW begin if old.result is NULL then insert into curricula_result_log values(NULL, 'UPDATE', NOW(), new.Sno , concat('resultBefore{Sno=',old.Sno,',Cno=',old.Cno,',result=','null','}','resultAfter{Sno=',new.Sno,',Cno=',new.Cno,',result=',new.result,'}')); else insert into curricula_result_log values(NULL, 'UPDATE', NOW(), new.Sno , concat('resultBefore{Sno=',old.Sno,',Cno=',old.Cno,',result=',old.result,'}','resultAfter{Sno=',new.Sno,',Cno=',new.Cno,',result=',new.result,'}')); end if; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `curricula_log_delete` BEFORE DELETE ON `Curricula` FOR EACH ROW begin insert into curricula_insert_log values(NULL, 'DELETE', NOW(), old.Sno , concat('insert{Sno=',old.Sno,',Cno=',old.Cno,',result=','null','}')); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `Dname` varchar(30) NOT NULL,
  `Dno` varchar(12) NOT NULL,
  PRIMARY KEY (`Dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES ('computer science','02');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IAssistant`
--

DROP TABLE IF EXISTS `IAssistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IAssistant` (
  `Ano` varchar(12) NOT NULL,
  `Ino` varchar(12) NOT NULL,
  PRIMARY KEY (`Ano`,`Ino`),
  KEY `Ino` (`Ino`),
  CONSTRAINT `IAssistant_ibfk_1` FOREIGN KEY (`Ano`) REFERENCES `Assistant` (`Ano`),
  CONSTRAINT `IAssistant_ibfk_2` FOREIGN KEY (`Ino`) REFERENCES `Institute` (`Ino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IAssistant`
--

LOCK TABLES `IAssistant` WRITE;
/*!40000 ALTER TABLE `IAssistant` DISABLE KEYS */;
INSERT INTO `IAssistant` VALUES ('A1','A'),('A1','B1'),('A1','B2'),('A1','C'),('A2','D'),('A2','E'),('A2','F');
/*!40000 ALTER TABLE `IAssistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IStudent`
--

DROP TABLE IF EXISTS `IStudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IStudent` (
  `Sno` varchar(12) NOT NULL,
  `Ino` varchar(12) NOT NULL,
  PRIMARY KEY (`Sno`),
  KEY `Ino` (`Ino`),
  CONSTRAINT `IStudent_ibfk_1` FOREIGN KEY (`Sno`) REFERENCES `Student` (`Sno`),
  CONSTRAINT `IStudent_ibfk_2` FOREIGN KEY (`Ino`) REFERENCES `Institute` (`Ino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IStudent`
--

LOCK TABLES `IStudent` WRITE;
/*!40000 ALTER TABLE `IStudent` DISABLE KEYS */;
INSERT INTO `IStudent` VALUES ('1190200701','A'),('1190200702','A'),('1190200703','A'),('1190200704','A'),('1190200705','A'),('1190200706','A'),('1190200707','A'),('1190200708','A'),('1190200709','A'),('1190200710','A'),('1190200711','A'),('1190200712','A'),('1190200713','A'),('1190200714','A'),('1190200715','A'),('1190200716','A'),('1190200717','A'),('1190200718','A'),('1190200719','A'),('1190200720','A'),('1190200721','A'),('1190200722','A'),('1190200723','A'),('1190200724','A'),('1190200725','A'),('1190200726','A'),('1190200727','A'),('1190200728','A'),('1190200729','A'),('1190200730','A'),('1190200761','B1'),('1190200762','B1'),('1190200763','B1'),('1190200764','B1'),('1190200765','B1'),('1190200766','B1'),('1190200767','B1'),('1190200768','B1'),('1190200769','B1'),('1190200770','B1'),('1190200771','B1'),('1190200772','B1'),('1190200773','B1'),('1190200774','B2'),('1190200775','B2'),('1190200776','B2'),('1190200777','B2'),('1190200778','B2'),('1190200779','B2'),('1190200780','B2'),('1190200781','B2'),('1190200782','B2'),('1190200783','B2'),('1190200784','B2'),('1190200785','B2'),('1190200786','B2'),('1190100612','C'),('1190200731','C'),('1190200732','C'),('1190200733','C'),('1190200734','C'),('1190200735','C'),('1190200736','C'),('1190200737','C'),('1190200738','C'),('1190200739','C'),('1190200740','C'),('1190200741','C'),('1190200742','C'),('1190200743','C'),('1190200744','C'),('1190200745','C'),('1190200746','C'),('1190200747','C'),('1190200748','C'),('1190200749','C'),('1190200750','C'),('1190200751','C'),('1190200752','C'),('1190200753','C'),('1190200754','C'),('1190200755','C'),('1190200756','C'),('1190200757','C'),('1190200758','C'),('1190200759','C'),('1190200760','C'),('1190200787','D'),('1190200788','D'),('1190200789','D'),('1190200790','D'),('1190200791','D'),('1190200792','D'),('1190200793','D'),('1190200794','D'),('1190200795','D'),('1190200796','D'),('1190200797','D'),('1190200798','D'),('1190200799','D'),('1190200800','D'),('1190200801','D'),('1190200802','D'),('1190200803','D'),('1190200804','D'),('1190200805','D'),('1190200806','D'),('1190200807','D'),('1190200808','D'),('1190200809','D'),('1190200810','D'),('1190200811','D'),('1190200812','D'),('1190200813','D'),('1190200814','D'),('1190200815','D'),('1190200816','D'),('1190200817','D'),('1190200818','D'),('1190200819','D'),('1190200820','D'),('1190200821','E'),('1190200822','E'),('1190200823','E'),('1190200824','E'),('1190200825','E'),('1190200826','E'),('1190200827','E'),('1190200828','E'),('1190200829','E'),('1190200830','E'),('1190200831','E'),('1190200832','E'),('1190200833','E'),('1190200834','E'),('1190200835','E'),('1190200836','E'),('1190200837','E'),('1190200838','E'),('1190200839','E'),('1190200840','E'),('1190200841','E'),('1190200842','E'),('1190200843','E'),('1190200844','E'),('1190200845','E'),('1190200846','E'),('1190200847','E'),('1190200848','E'),('1190200849','E'),('1190200850','E'),('1190200851','F'),('1190200852','F'),('1190200853','F'),('1190200854','F'),('1190200855','F'),('1190200856','F'),('1190200857','F'),('1190200858','F'),('1190200859','F'),('1190200860','F'),('1190200861','F'),('1190200862','F'),('1190200863','F'),('1190200864','F'),('1190200865','F'),('1190200866','F'),('1190200867','F'),('1190200868','F'),('1190200869','F'),('1190200870','F'),('1190200871','F'),('1190200872','F'),('1190200873','F'),('1190200874','F'),('1190200875','F'),('1190200876','F'),('1190200877','F'),('1190200878','F'),('1190200879','F'),('1190200880','F'),('1190200881','F'),('1190200882','F'),('1190200883','F'),('1190200884','F'),('1190200885','F'),('1190200886','F'),('1190200887','F'),('1190200888','F'),('1190200889','F'),('1190200890','F'),('1190200891','F'),('1190200892','F'),('1190200893','F'),('1190200894','F'),('1190200895','F'),('1190200896','F'),('1190200897','F'),('1190200898','F'),('1190200899','F'),('1190200900','F');
/*!40000 ALTER TABLE `IStudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Institute`
--

DROP TABLE IF EXISTS `Institute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Institute` (
  `Iname` varchar(30) NOT NULL,
  `Ino` varchar(12) NOT NULL,
  `Dno` varchar(12) NOT NULL,
  PRIMARY KEY (`Ino`,`Dno`),
  KEY `Dno` (`Dno`),
  CONSTRAINT `Institute_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `Department` (`Dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institute`
--

LOCK TABLES `Institute` WRITE;
/*!40000 ALTER TABLE `Institute` DISABLE KEYS */;
INSERT INTO `Institute` VALUES ('computer science','A','02'),('artificial intellect','B1','02'),('big data','B2','02'),('information security','C','02'),('bioinformation','D','02'),('internet of things','E','02'),('software engineering','F','02');
/*!40000 ALTER TABLE `Institute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LTeacher`
--

DROP TABLE IF EXISTS `LTeacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LTeacher` (
  `Tno` varchar(12) NOT NULL,
  `Lno` varchar(12) NOT NULL,
  `Position` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`Tno`),
  KEY `Lno` (`Lno`),
  CONSTRAINT `LTeacher_ibfk_1` FOREIGN KEY (`Tno`) REFERENCES `Teacher` (`Tno`),
  CONSTRAINT `LTeacher_ibfk_2` FOREIGN KEY (`Lno`) REFERENCES `Lab` (`Lno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LTeacher`
--

LOCK TABLES `LTeacher` WRITE;
/*!40000 ALTER TABLE `LTeacher` DISABLE KEYS */;
INSERT INTO `LTeacher` VALUES ('T1190100612','C1','Professor'),('T1190100613','E1','Professor'),('T1190100614','B11','Professor'),('T1190100615','A1','Professor'),('T1190100616','C1','Assistant Professor'),('T1190100617','E1','Assistant Professor'),('T1190100618','B11','Assistant Professor');
/*!40000 ALTER TABLE `LTeacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lab` (
  `Lname` varchar(30) NOT NULL,
  `Lno` varchar(12) NOT NULL,
  `Laddress` varchar(99) DEFAULT NULL,
  `Ino` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Lno`),
  KEY `Ino` (`Ino`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`Ino`) REFERENCES `Institute` (`Ino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES ('大数据研究中心','A1','科创大厦1923','A'),('赛尔实验室','B11','科创大厦1723','B1'),('鹏城实验室','C1','深圳校区','C'),('物联网泛智能研究中心','E1','综合楼23','E');
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `Sname` varchar(10) NOT NULL,
  `Sno` varchar(12) NOT NULL,
  `Sage` int DEFAULT NULL,
  `Sgrade` int DEFAULT NULL,
  `Sphone` varchar(12) DEFAULT NULL,
  `Smail` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`Sno`),
  KEY `age` (`Sage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES ('冯梓峻','1190100612',23,2,'15215087488','851054756@qq.com'),('高丽丽','1190200701',19,2,'15649656199','najiang@example.org'),('黎勇','1190200702',21,2,'18118393440','dongjun@example.org'),('马畅','1190200703',19,2,'13479161623','weiming@example.com'),('袁帆','1190200704',21,2,'13023018448','jingbai@example.com'),('仲丽华','1190200705',21,2,'14574895910','gangmao@example.org'),('刘玉梅','1190200706',18,2,'18257274927','gtao@example.org'),('张海燕','1190200707',21,2,'13915595322','mding@example.com'),('舒秀芳','1190200708',18,2,'13588614954','zhouyan@example.org'),('焦金凤','1190200709',20,2,'14563442186','ping30@example.org'),('蒋磊','1190200710',18,2,'13420801419','jing07@example.net'),('徐玉华','1190200711',21,2,'13034325086','dwu@example.net'),('陈凤英','1190200712',18,2,'15083964907','xiulan78@example.net'),('何桂香','1190200713',19,2,'15950882172','chao72@example.org'),('涂楠','1190200714',18,2,'15236245701','huguiying@example.net'),('杨淑华','1190200715',19,2,'15812844221','yang64@example.com'),('伍岩','1190200716',18,2,'13304910158','gangliao@example.com'),('曾帆','1190200717',20,2,'15864328156','yongliu@example.org'),('段丽娟','1190200718',18,2,'18092964276','jqian@example.org'),('孙利','1190200719',20,2,'13893170261','yechao@example.org'),('蒋博','1190200720',19,2,'15832719437','gang38@example.org'),('黄林','1190200721',20,2,'13231771883','fanfang@example.net'),('吴玉华','1190200722',19,2,'18156278773','xiulan62@example.org'),('黄海燕','1190200723',21,2,'18116391982','guiying30@example.com'),('张涛','1190200724',18,2,'15651008106','lei40@example.org'),('姚婷','1190200725',20,2,'13091305144','shenmin@example.org'),('杨淑英','1190200726',21,2,'14535999518','liuxiuying@example.com'),('龚鑫','1190200727',20,2,'15258192755','gongping@example.net'),('廖晶','1190200728',21,2,'18256794954','gang67@example.net'),('修婷婷','1190200729',20,2,'14587788334','na79@example.net'),('刘柳','1190200730',19,2,'18675446675','yongmo@example.org'),('李桂花','1190200731',19,2,'18286079277','qiang15@example.com'),('王桂兰','1190200732',18,2,'15979285001','panfang@example.com'),('黄荣','1190200733',20,2,'13133871064','yan05@example.net'),('刘建军','1190200734',18,2,'15091446089','pmao@example.org'),('郭燕','1190200735',18,2,'18120782420','yan73@example.org'),('陶洋','1190200736',19,2,'15756157147','caojie@example.org'),('袁军','1190200737',20,2,'14594330437','rxu@example.net'),('周健','1190200738',20,2,'13116977167','xia31@example.net'),('黄雪梅','1190200739',21,2,'13780363556','jing19@example.org'),('张兵','1190200740',21,2,'18745807256','tsu@example.org'),('廖玉','1190200741',21,2,'18027820975','yongyu@example.org'),('吴凯','1190200742',20,2,'18027962820','juan59@example.com'),('刘萍','1190200743',19,2,'15736607544','na66@example.com'),('周健','1190200744',20,2,'15857827503','xiulan18@example.net'),('曹淑兰','1190200745',20,2,'18273738954','zhangtao@example.org'),('游莉','1190200746',18,2,'18753481294','wei97@example.org'),('虞桂花','1190200747',18,2,'18665939464','shigang@example.net'),('董志强','1190200748',18,2,'18615382317','chao60@example.net'),('田博','1190200749',20,2,'15064280082','yangxiong@example.com'),('马丽','1190200750',18,2,'18810693434','dzou@example.net'),('刘云','1190200751',18,2,'15710707241','flong@example.org'),('田静','1190200752',20,2,'15611404202','vwen@example.net'),('范荣','1190200753',19,2,'15287671290','daijing@example.net'),('郭欣','1190200754',20,2,'15086239354','xiulan32@example.com'),('江彬','1190200755',20,2,'18163418627','fangwen@example.com'),('史平','1190200756',21,2,'13942437303','changqiang@example.com'),('高俊','1190200757',20,2,'14541860483','ocui@example.org'),('李彬','1190200758',21,2,'18588442224','ayan@example.net'),('刘峰','1190200759',18,2,'18296875518','zsun@example.com'),('毛莹','1190200760',21,2,'13367963362','chao28@example.com'),('王俊','1190200761',20,2,'18999090900','qiang39@example.com'),('周帅','1190200762',18,2,'15819122680','xiuyingchang@example.org'),('阙秀英','1190200763',18,2,'15971408532','caolei@example.com'),('徐雪梅','1190200764',19,2,'15922313809','tiangang@example.net'),('李军','1190200765',19,2,'13479730246','izou@example.org'),('杨桂香','1190200766',21,2,'13451950818','jing40@example.org'),('师秀芳','1190200767',20,2,'15009813061','fangfeng@example.com'),('杨淑英','1190200768',20,2,'13936522920','liaolei@example.org'),('周莹','1190200769',18,2,'15902248157','qiangliang@example.org'),('陈英','1190200770',21,2,'13560799248','lhe@example.net'),('林帅','1190200771',20,2,'18282275607','yaoyong@example.com'),('钱洋','1190200772',20,2,'18153203293','xiulan63@example.net'),('董秀珍','1190200773',20,2,'15979378802','yhan@example.net'),('宋秀珍','1190200774',18,2,'18889766184','gongqiang@example.com'),('官秀荣','1190200775',19,2,'13052661155','guiying43@example.org'),('汪杰','1190200776',18,2,'14517415081','weiwen@example.net'),('刘娟','1190200777',18,2,'15754618013','vsun@example.org'),('张红','1190200778',19,2,'18827161960','dyao@example.com'),('周桂荣','1190200779',21,2,'18105243211','jzeng@example.com'),('高斌','1190200780',19,2,'18805882230','flong@example.org'),('陈健','1190200781',20,2,'13082410878','ulei@example.net'),('鞠玉英','1190200782',18,2,'18575886608','na49@example.net'),('车林','1190200783',20,2,'15251366057','weitang@example.org'),('陈秀英','1190200784',19,2,'13513868770','ymeng@example.com'),('倪柳','1190200785',21,2,'15768493706','weisu@example.com'),('杜成','1190200786',20,2,'14544683851','jiexue@example.org'),('陈瑞','1190200787',18,2,'18078410036','jingkong@example.net'),('容龙','1190200788',19,2,'13884661163','dtang@example.net'),('朱凤兰','1190200789',20,2,'13387795889','xiuyingyu@example.com'),('李倩','1190200790',20,2,'18756687009','jie95@example.net'),('张秀荣','1190200791',18,2,'13718585136','tanyong@example.net'),('简磊','1190200792',19,2,'15577989185','qiaofang@example.com'),('刘宇','1190200793',18,2,'18271748039','jun31@example.org'),('姚雪梅','1190200794',20,2,'13005612807','guiying81@example.com'),('马佳','1190200795',21,2,'15093607709','fangyin@example.net'),('吕艳','1190200796',19,2,'15036768504','ping44@example.com'),('张静','1190200797',18,2,'13115275703','xiuyingzhang@example.net'),('刘楠','1190200798',20,2,'13442377729','ming01@example.net'),('谭敏','1190200799',18,2,'18935446400','lifu@example.org'),('王楠','1190200800',19,2,'15254053412','fanghu@example.org'),('唐金凤','1190200801',19,2,'14766821982','yang67@example.org'),('桑玉英','1190200802',19,2,'15612120322','yangbai@example.org'),('李娜','1190200803',18,2,'15364693772','qiang34@example.net'),('李平','1190200804',19,2,'13942829510','xiuying25@example.net'),('秦芳','1190200805',21,2,'14501397041','weiyong@example.com'),('徐丽','1190200806',20,2,'13331670160','wangming@example.net'),('钟柳','1190200807',21,2,'15244257320','leiliao@example.com'),('张红霞','1190200808',18,2,'15166394768','qianyang@example.net'),('赵华','1190200809',21,2,'15175494177','xia07@example.com'),('王芳','1190200810',18,2,'13811091007','yongguo@example.net'),('解桂兰','1190200811',19,2,'18926369288','yongren@example.org'),('李洁','1190200812',21,2,'13848295986','wuna@example.com'),('李桂香','1190200813',20,2,'18746519556','yongwen@example.com'),('刘燕','1190200814',20,2,'15802260593','ming20@example.com'),('龙红霞','1190200815',20,2,'18826058149','min77@example.com'),('覃飞','1190200816',19,2,'15626268377','rsun@example.com'),('何兰英','1190200817',20,2,'13823965791','chao73@example.org'),('赵莉','1190200818',21,2,'13109425422','li74@example.net'),('陆辉','1190200819',21,2,'15042007177','na90@example.org'),('谢雷','1190200820',21,2,'15778666259','tao07@example.org'),('林洁','1190200821',19,2,'18650290087','chaoqin@example.org'),('沈波','1190200822',18,2,'18201476386','yan65@example.org'),('张磊','1190200823',21,2,'13643860734','minding@example.com'),('李冬梅','1190200824',18,2,'15909723655','juanzhang@example.org'),('吕玉梅','1190200825',19,2,'13699715027','ylai@example.org'),('何龙','1190200826',20,2,'18067607012','jinxiuying@example.org'),('龚玲','1190200827',20,2,'15086217963','yonglin@example.net'),('李兵','1190200828',19,2,'13120418783','jcheng@example.net'),('甄柳','1190200829',18,2,'18543917619','juan15@example.com'),('党畅','1190200830',19,2,'18029617719','jinglu@example.org'),('邱浩','1190200831',18,2,'13770465730','wangjing@example.com'),('李晨','1190200832',19,2,'15555865584','jie56@example.com'),('梁俊','1190200833',20,2,'13795769083','yinguiying@example.net'),('伍浩','1190200834',19,2,'14584134296','ncao@example.org'),('赵雷','1190200835',20,2,'15073924868','uhan@example.net'),('季婷','1190200836',18,2,'13910317477','guiying45@example.com'),('刘亮','1190200837',18,2,'13175690893','yang66@example.org'),('康玉英','1190200838',20,2,'15190840103','juan65@example.net'),('耿淑华','1190200839',19,2,'15879722104','juan39@example.net'),('张欣','1190200840',18,2,'18271422225','yanglai@example.net'),('吴浩','1190200841',21,2,'15140753422','mingxiao@example.org'),('王坤','1190200842',21,2,'13768862150','hujuan@example.net'),('吴芳','1190200843',18,2,'13984491250','zoujun@example.net'),('李凤兰','1190200844',20,2,'15025248571','blong@example.com'),('刘丽娟','1190200845',18,2,'13632494735','tangxia@example.com'),('薛霞','1190200846',20,2,'15688437885','caoyang@example.net'),('黄玉华','1190200847',21,2,'15359174639','shiguiying@example.com'),('董鑫','1190200848',18,2,'13658042845','cgu@example.org'),('樊伟','1190200849',19,2,'15796934938','ping75@example.org'),('阳涛','1190200850',21,2,'15344018189','wei49@example.org'),('黄坤','1190200851',21,2,'18119153274','nawu@example.net'),('苏林','1190200852',19,2,'13118203077','chao57@example.net'),('王秀英','1190200853',21,2,'13498378422','yujuan@example.net'),('张秀英','1190200854',19,2,'15963266910','ming69@example.net'),('叶凯','1190200855',19,2,'13273610065','junluo@example.org'),('牛倩','1190200856',21,2,'15095535756','chaoyin@example.net'),('夏勇','1190200857',21,2,'13402950163','bsu@example.com'),('陈丹','1190200858',19,2,'14504215405','liduan@example.com'),('黄文','1190200859',19,2,'13286832849','fangqiang@example.org'),('陈桂珍','1190200860',19,2,'15706705841','juan93@example.org'),('吴淑华','1190200861',19,2,'15686650642','span@example.com'),('顾利','1190200862',19,2,'15144444534','guoping@example.net'),('王玉珍','1190200863',19,2,'18805215039','hanyan@example.net'),('李健','1190200864',19,2,'15892238601','xiagao@example.org'),('钟雪','1190200865',21,2,'18713511623','qianchao@example.com'),('孟凤英','1190200866',21,2,'15792487680','longyang@example.net'),('吕英','1190200867',19,2,'15144100921','mxiang@example.net'),('杨龙','1190200868',20,2,'18226233004','jun46@example.net'),('宋健','1190200869',19,2,'18284324407','sfan@example.com'),('张晨','1190200870',21,2,'13895335719','wangfang@example.org'),('刘凤英','1190200871',20,2,'15218837901','vyao@example.net'),('王宇','1190200872',21,2,'15971447145','chaomo@example.com'),('包丽华','1190200873',18,2,'14551464442','xiuyinghuang@example.com'),('洪梅','1190200874',20,2,'15186281526','xiangguiying@example.com'),('刘秀荣','1190200875',19,2,'15620883737','lzhong@example.com'),('李丽娟','1190200876',21,2,'15678199523','axue@example.net'),('洪杨','1190200877',21,2,'15170034595','ping31@example.com'),('王荣','1190200878',19,2,'15975035974','taoxiang@example.com'),('汪娜','1190200879',20,2,'13792980091','ffang@example.org'),('蒋杰','1190200880',18,2,'15815891854','nwen@example.com'),('白芳','1190200881',19,2,'15703510689','shenyan@example.com'),('傅阳','1190200882',18,2,'13482674328','ping46@example.org'),('何英','1190200883',18,2,'18557274874','jun09@example.com'),('刘淑兰','1190200884',21,2,'18773469993','juanxiong@example.com'),('郭欢','1190200885',18,2,'13163131830','blai@example.org'),('黄峰','1190200886',21,2,'18178811145','wutao@example.net'),('郭桂芳','1190200887',19,2,'15928526107','juangong@example.org'),('柯柳','1190200888',18,2,'13874050455','uyin@example.com'),('刘玉梅','1190200889',19,2,'13136738020','cuixia@example.org'),('邢秀梅','1190200890',21,2,'15883298019','pingcheng@example.com'),('李丹丹','1190200891',19,2,'18766762706','wangguiying@example.net'),('赵春梅','1190200892',19,2,'13769631868','na92@example.net'),('张桂芳','1190200893',21,2,'18955427671','nshao@example.com'),('邓兰英','1190200894',19,2,'15665612315','yongwen@example.org'),('成桂芝','1190200895',19,2,'15232271952','fang22@example.net'),('刘小红','1190200896',21,2,'18518839511','namo@example.com'),('梁丹','1190200897',20,2,'14520437687','nren@example.org'),('萧楠','1190200898',20,2,'15670326909','yongtian@example.org'),('赵秀芳','1190200899',18,2,'13226225305','olu@example.org'),('赵杰','1190200900',19,2,'15581368498','xiulanfan@example.com');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCourse`
--

DROP TABLE IF EXISTS `TCourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TCourse` (
  `Cno` varchar(12) NOT NULL,
  `Tno` varchar(12) NOT NULL,
  PRIMARY KEY (`Cno`),
  KEY `Tno` (`Tno`),
  CONSTRAINT `TCourse_ibfk_1` FOREIGN KEY (`Tno`) REFERENCES `Teacher` (`Tno`),
  CONSTRAINT `TCourse_ibfk_2` FOREIGN KEY (`Cno`) REFERENCES `Course` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCourse`
--

LOCK TABLES `TCourse` WRITE;
/*!40000 ALTER TABLE `TCourse` DISABLE KEYS */;
INSERT INTO `TCourse` VALUES ('C6','T1190100612'),('C9','T1190100612'),('C1','T1190100613'),('C2','T1190100614'),('C3','T1190100615'),('C4','T1190100616'),('C7','T1190100617'),('C8','T1190100618');
/*!40000 ALTER TABLE `TCourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `Tname` varchar(10) NOT NULL,
  `Tno` varchar(12) NOT NULL,
  `Tage` int DEFAULT NULL,
  `Tphone` varchar(12) DEFAULT NULL,
  `Tmail` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES ('田老师','T1190100612',35,'123234234','eliforsharon@163.com'),('李老师','T1190100613',43,'18932487240','122132389@qq.com'),('冯老师','T1190100614',41,'18932457240','121332389@qq.com'),('徐老师','T1190100615',41,'189324872340','23421332389@qq.com'),('马老师','T1190100616',56,'18923457240','76921332389@qq.com'),('何老师','T1190100617',42,'18922457240','11021332389@qq.com'),('徐老师','T1190100618',47,'18922457240','72321332389@qq.com');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(99) NOT NULL,
  `vis` int DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('1190100612','asd123',0),('1190100615','www123',0),('1190200701','asd123',0),('1190200702','asd123',0),('1190200703','asd123',0),('1190200704','asd123',0),('1190200705','asd123',0),('1190200706','asd123',0),('1190200707','asd123',0),('1190200708','asd123',0),('1190200709','asd123',0),('1190200710','asd123',0),('1190200711','asd123',0),('1190200712','asd123',0),('1190200713','asd123',0),('1190200714','asd123',0),('1190200715','asd123',0),('1190200716','asd123',0),('1190200717','asd123',0),('1190200718','asd123',0),('1190200719','asd123',0),('1190200720','asd123',0),('1190200721','asd123',0),('1190200722','asd123',0),('1190200723','asd123',0),('1190200724','asd123',0),('1190200725','asd123',0),('1190200726','asd123',0),('1190200727','asd123',0),('1190200728','asd123',0),('1190200729','asd123',0),('1190200730','asd123',0),('1190200731','asd123',0),('1190200732','asd123',0),('1190200733','asd123',0),('1190200734','asd123',0),('1190200735','asd123',0),('1190200736','asd123',0),('1190200737','asd123',0),('1190200738','asd123',0),('1190200739','asd123',0),('1190200740','asd123',0),('1190200741','asd123',0),('1190200742','asd123',0),('1190200743','asd123',0),('1190200744','asd123',0),('1190200745','asd123',0),('1190200746','asd123',0),('1190200747','asd123',0),('1190200748','asd123',0),('1190200749','asd123',0),('1190200750','asd123',0),('1190200751','asd123',0),('1190200752','asd123',0),('1190200753','asd123',0),('1190200754','asd123',0),('1190200755','asd123',0),('1190200756','asd123',0),('1190200757','asd123',0),('1190200758','asd123',0),('1190200759','asd123',0),('1190200760','asd123',0),('1190200761','asd123',0),('1190200762','asd123',0),('1190200763','asd123',0),('1190200764','asd123',0),('1190200765','asd123',0),('1190200766','asd123',0),('1190200767','asd123',0),('1190200768','asd123',0),('1190200769','asd123',0),('1190200770','asd123',0),('1190200771','asd123',0),('1190200772','asd123',0),('1190200773','asd123',0),('1190200774','asd123',0),('1190200775','asd123',0),('1190200776','asd123',0),('1190200777','asd123',0),('1190200778','asd123',0),('1190200779','asd123',0),('1190200780','asd123',0),('1190200781','asd123',0),('1190200782','asd123',0),('1190200783','asd123',0),('1190200784','asd123',0),('1190200785','asd123',0),('1190200786','asd123',0),('1190200787','asd123',0),('1190200788','asd123',0),('1190200789','asd123',0),('1190200790','asd123',0),('1190200791','asd123',0),('1190200792','asd123',0),('1190200793','asd123',0),('1190200794','asd123',0),('1190200795','asd123',0),('1190200796','asd123',0),('1190200797','asd123',0),('1190200798','asd123',0),('1190200799','asd123',0),('1190200800','asd123',0),('1190200801','asd123',0),('1190200802','asd123',0),('1190200803','asd123',0),('1190200804','asd123',0),('1190200805','asd123',0),('1190200806','asd123',0),('1190200807','asd123',0),('1190200808','asd123',0),('1190200809','asd123',0),('1190200810','asd123',0),('1190200811','asd123',0),('1190200812','asd123',0),('1190200813','asd123',0),('1190200814','asd123',0),('1190200815','asd123',0),('1190200816','asd123',0),('1190200817','asd123',0),('1190200818','asd123',0),('1190200819','asd123',0),('1190200820','asd123',0),('1190200821','asd123',0),('1190200822','asd123',0),('1190200823','asd123',0),('1190200824','asd123',0),('1190200825','asd123',0),('1190200826','asd123',0),('1190200827','asd123',0),('1190200828','asd123',0),('1190200829','asd123',0),('1190200830','asd123',0),('1190200831','asd123',0),('1190200832','asd123',0),('1190200833','asd123',0),('1190200834','asd123',0),('1190200835','asd123',0),('1190200836','asd123',0),('1190200837','asd123',0),('1190200838','asd123',0),('1190200839','asd123',0),('1190200840','asd123',0),('1190200841','asd123',0),('1190200842','asd123',0),('1190200843','asd123',0),('1190200844','asd123',0),('1190200845','asd123',0),('1190200846','asd123',0),('1190200847','asd123',0),('1190200848','asd123',0),('1190200849','asd123',0),('1190200850','asd123',0),('1190200851','asd123',0),('1190200852','asd123',0),('1190200853','asd123',0),('1190200854','asd123',0),('1190200855','asd123',0),('1190200856','asd123',0),('1190200857','asd123',0),('1190200858','asd123',0),('1190200859','asd123',0),('1190200860','asd123',0),('1190200861','asd123',0),('1190200862','asd123',0),('1190200863','asd123',0),('1190200864','asd123',0),('1190200865','asd123',0),('1190200866','asd123',0),('1190200867','asd123',0),('1190200868','asd123',0),('1190200869','asd123',0),('1190200870','asd123',0),('1190200871','asd123',0),('1190200872','asd123',0),('1190200873','asd123',0),('1190200874','asd123',0),('1190200875','asd123',0),('1190200876','asd123',0),('1190200877','asd123',0),('1190200878','asd123',0),('1190200879','asd123',0),('1190200880','asd123',0),('1190200881','asd123',0),('1190200882','asd123',0),('1190200883','asd123',0),('1190200884','asd123',0),('1190200885','asd123',0),('1190200886','asd123',0),('1190200887','asd123',0),('1190200888','asd123',0),('1190200889','asd123',0),('1190200890','asd123',0),('1190200891','asd123',0),('1190200892','asd123',0),('1190200893','asd123',0),('1190200894','asd123',0),('1190200895','asd123',0),('1190200896','asd123',0),('1190200897','asd123',0),('1190200898','asd123',0),('1190200899','asd123',0),('1190200900','asd123',0),('A1','asd123',1),('A2','asd123',1),('admin','asd123',1),('T1190100612','asd123',1),('T1190100613','asd123',1),('T1190100614','asd123',1),('T1190100615','asd123',1),('T1190100616','asd123',1),('T1190100617','asd123',1),('T1190100618','asd123',1);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ai_student`
--

DROP TABLE IF EXISTS `ai_student`;
/*!50001 DROP VIEW IF EXISTS `ai_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ai_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bd_student`
--

DROP TABLE IF EXISTS `bd_student`;
/*!50001 DROP VIEW IF EXISTS `bd_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bd_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bio_student`
--

DROP TABLE IF EXISTS `bio_student`;
/*!50001 DROP VIEW IF EXISTS `bio_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bio_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `course_log`
--

DROP TABLE IF EXISTS `course_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operation` varchar(20) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  `operation_id` varchar(200) DEFAULT NULL,
  `operation_params` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_log`
--

LOCK TABLES `course_log` WRITE;
/*!40000 ALTER TABLE `course_log` DISABLE KEYS */;
INSERT INTO `course_log` VALUES (1,'UPDATE','2022-04-29 21:56:07','C6','resultBefore{Cname=信息内容安全,Cno=C6,Croom=正心229,Ctime=周一9-10节周五9-10节}resultAfter{Cname=信息内容安全,Cno=C6,Croom=正心230,Ctime周一9-10节周五9-10节}'),(2,'UPDATE','2022-04-29 23:44:30','C6','resultBefore{Cname=信息内容安全,Cno=C6,Croom=正心230,Ctime=周一9-10节周五9-10节}resultAfter{Cname=信息内容安全,Cno=C6,Croom=正心456,Ctime周一9-10节周五9-10节}'),(3,'UPDATE','2022-04-29 23:44:30','C9','resultBefore{Cname=项目管理,Cno=C9,Croom=正心212,Ctime=周三1-4节}resultAfter{Cname=项目管理,Cno=C9,Croom=正心123,Ctime周三1-4节}'),(4,'UPDATE','2022-04-30 16:10:06','C6','resultBefore{Cname=信息内容安全,Cno=C6,Croom=正心456,Ctime=周一9-10节周五9-10节}resultAfter{Cname=信息内容安全,Cno=C6,Croom=正心229,Ctime周一9-10节周五9-10节}'),(5,'UPDATE','2022-04-30 16:10:06','C9','resultBefore{Cname=项目管理,Cno=C9,Croom=正心123,Ctime=周三1-4节}resultAfter{Cname=项目管理,Cno=C9,Croom=正心343,Ctime周三1-4节}'),(6,'UPDATE','2022-04-30 16:11:40','C9','resultBefore{Cname=项目管理,Cno=C9,Croom=正心343,Ctime=周三1-4节}resultAfter{Cname=项目管理,Cno=C9,Croom=正心343,Ctime周三2-4节}'),(8,'UPDATE','2022-04-30 16:14:52','C9','resultBefore{Cname=项目管理,Cno=C9,Croom=正心343,Ctime=周三2-4节}resultAfter{Cname=项目管理,Cno=C9,Croom=正心343,Ctime周三1-4节}');
/*!40000 ALTER TABLE `course_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cs_student`
--

DROP TABLE IF EXISTS `cs_student`;
/*!50001 DROP VIEW IF EXISTS `cs_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cs_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `curricula_insert_log`
--

DROP TABLE IF EXISTS `curricula_insert_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curricula_insert_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operation` varchar(20) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  `operation_id` varchar(200) DEFAULT NULL,
  `operation_params` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_insert_log`
--

LOCK TABLES `curricula_insert_log` WRITE;
/*!40000 ALTER TABLE `curricula_insert_log` DISABLE KEYS */;
INSERT INTO `curricula_insert_log` VALUES (3,'INSERT','2022-04-29 22:31:40','1190100612','insert{Sno=1190100612,Cno=C1,result=null}'),(4,'INSERT','2022-04-29 22:41:26','1190200844','insert{Sno=1190200844,Cno=C6,result=null}'),(5,'DELETE','2022-04-29 22:45:17','1190100612','insert{Sno=1190100612,Cno=C1,result=null}'),(6,'DELETE','2022-04-30 15:33:51','1190100612','insert{Sno=1190100612,Cno=C6,result=null}'),(7,'INSERT','2022-04-30 15:34:10','1190100612','insert{Sno=1190100612,Cno=C6,result=null}'),(8,'INSERT','2022-04-30 15:37:50','1190100612','insert{Sno=1190100612,Cno=C1,result=null}'),(9,'DELETE','2022-04-30 15:39:37','1190100612','insert{Sno=1190100612,Cno=C9,result=null}'),(10,'INSERT','2022-04-30 15:44:37','1190100612','insert{Sno=1190100612,Cno=C9,result=null}'),(11,'INSERT','2022-04-30 15:56:59','1190100612','insert{Sno=1190100612,Cno=C8,result=null}'),(12,'DELETE','2022-04-30 15:57:05','1190100612','insert{Sno=1190100612,Cno=C8,result=null}'),(13,'INSERT','2022-04-30 16:19:40','1190200812','insert{Sno=1190200812,Cno=C6,result=null}'),(14,'INSERT','2022-04-30 16:19:44','1190200812','insert{Sno=1190200812,Cno=C9,result=null}'),(15,'INSERT','2022-04-30 16:19:47','1190200812','insert{Sno=1190200812,Cno=C1,result=null}'),(16,'INSERT','2022-04-30 16:19:50','1190200812','insert{Sno=1190200812,Cno=C2,result=null}'),(17,'INSERT','2022-04-30 16:20:08','1190200823','insert{Sno=1190200823,Cno=C6,result=null}'),(18,'INSERT','2022-04-30 16:20:11','1190200823','insert{Sno=1190200823,Cno=C9,result=null}'),(19,'INSERT','2022-04-30 16:20:31','1190200811','insert{Sno=1190200811,Cno=C6,result=null}'),(20,'INSERT','2022-04-30 16:20:33','1190200811','insert{Sno=1190200811,Cno=C9,result=null}');
/*!40000 ALTER TABLE `curricula_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curricula_result_log`
--

DROP TABLE IF EXISTS `curricula_result_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curricula_result_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `operation` varchar(20) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  `operation_id` varchar(200) DEFAULT NULL,
  `operation_params` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curricula_result_log`
--

LOCK TABLES `curricula_result_log` WRITE;
/*!40000 ALTER TABLE `curricula_result_log` DISABLE KEYS */;
INSERT INTO `curricula_result_log` VALUES (21,'UPDATE','2022-04-29 22:34:31','1190100612','resultBefore{Sno=1190100612,Cno=C6,result=null}resultAfter{Sno=1190100612,Cno=C6,result=93}'),(22,'UPDATE','2022-04-29 22:34:31','1190100612','resultBefore{Sno=1190100612,Cno=C9,result=null}resultAfter{Sno=1190100612,Cno=C9,result=90}'),(23,'UPDATE','2022-04-29 22:34:31','1190200853','resultBefore{Sno=1190200853,Cno=C6,result=null}resultAfter{Sno=1190200853,Cno=C6,result=91}'),(24,'UPDATE','2022-04-29 22:34:31','1190200853','resultBefore{Sno=1190200853,Cno=C9,result=null}resultAfter{Sno=1190200853,Cno=C9,result=92}'),(25,'UPDATE','2022-04-29 22:34:51','1190100612','resultBefore{Sno=1190100612,Cno=C9,result=null}resultAfter{Sno=1190100612,Cno=C9,result=97}'),(26,'UPDATE','2022-04-29 22:38:16','1190100612','resultBefore{Sno=1190100612,Cno=C6,result=93}resultAfter{Sno=1190100612,Cno=C6,result=92}'),(27,'UPDATE','2022-04-29 22:38:57','1190100612',NULL),(28,'UPDATE','2022-04-29 22:41:42','1190200844','resultBefore{Sno=1190200844,Cno=C6,result=null}resultAfter{Sno=1190200844,Cno=C6,result=34}'),(29,'UPDATE','2022-04-29 22:41:53','1190200844','resultBefore{Sno=1190200844,Cno=C6,result=34}resultAfter{Sno=1190200844,Cno=C6,result=35}'),(31,'UPDATE','2022-04-29 23:45:45','1190100612','resultBefore{Sno=1190100612,Cno=C9,result=97}resultAfter{Sno=1190100612,Cno=C9,result=95}'),(35,'UPDATE','2022-04-30 15:44:54','1190100612','resultBefore{Sno=1190100612,Cno=C6,result=null}resultAfter{Sno=1190100612,Cno=C6,result=94}'),(36,'UPDATE','2022-04-30 15:44:54','1190100612','resultBefore{Sno=1190100612,Cno=C9,result=null}resultAfter{Sno=1190100612,Cno=C9,result=92}'),(43,'UPDATE','2022-04-30 16:25:31','1190200823','resultBefore{Sno=1190200823,Cno=C6,result=null}resultAfter{Sno=1190200823,Cno=C6,result=92}'),(44,'UPDATE','2022-04-30 16:25:31','1190200812','resultBefore{Sno=1190200812,Cno=C6,result=null}resultAfter{Sno=1190200812,Cno=C6,result=90}'),(45,'UPDATE','2022-04-30 16:25:31','1190200811','resultBefore{Sno=1190200811,Cno=C6,result=null}resultAfter{Sno=1190200811,Cno=C6,result=83}');
/*!40000 ALTER TABLE `curricula_result_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `iot_student`
--

DROP TABLE IF EXISTS `iot_student`;
/*!50001 DROP VIEW IF EXISTS `iot_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `iot_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `is_student`
--

DROP TABLE IF EXISTS `is_student`;
/*!50001 DROP VIEW IF EXISTS `is_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `is_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `se_student`
--

DROP TABLE IF EXISTS `se_student`;
/*!50001 DROP VIEW IF EXISTS `se_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `se_student` AS SELECT 
 1 AS `Sname`,
 1 AS `Sno`,
 1 AS `Sage`,
 1 AS `Sgrade`,
 1 AS `Sphone`,
 1 AS `Smail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_curricula`
--

DROP TABLE IF EXISTS `v_curricula`;
/*!50001 DROP VIEW IF EXISTS `v_curricula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_curricula` AS SELECT 
 1 AS `Cno`,
 1 AS `Sno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_student`
--

DROP TABLE IF EXISTS `v_student`;
/*!50001 DROP VIEW IF EXISTS `v_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_student` AS SELECT 
 1 AS `Sno`,
 1 AS `Sname`,
 1 AS `Sage`,
 1 AS `Sgrade`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ai_student`
--

/*!50001 DROP VIEW IF EXISTS `ai_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ai_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'B1')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bd_student`
--

/*!50001 DROP VIEW IF EXISTS `bd_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bd_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'B2')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bio_student`
--

/*!50001 DROP VIEW IF EXISTS `bio_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bio_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'D')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cs_student`
--

/*!50001 DROP VIEW IF EXISTS `cs_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cs_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'A')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `iot_student`
--

/*!50001 DROP VIEW IF EXISTS `iot_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `iot_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'E')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `is_student`
--

/*!50001 DROP VIEW IF EXISTS `is_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `is_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'C')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `se_student`
--

/*!50001 DROP VIEW IF EXISTS `se_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `se_student` AS select `Student`.`Sname` AS `Sname`,`Student`.`Sno` AS `Sno`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade`,`Student`.`Sphone` AS `Sphone`,`Student`.`Smail` AS `Smail` from (`Student` join `IStudent`) where ((`Student`.`Sno` = `IStudent`.`Ino`) and (`IStudent`.`Ino` = 'F')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_curricula`
--

/*!50001 DROP VIEW IF EXISTS `v_curricula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_curricula` (`Cno`,`Sno`) AS select `Curricula`.`Cno` AS `Cno`,`Curricula`.`Sno` AS `Sno` from `Curricula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_student`
--

/*!50001 DROP VIEW IF EXISTS `v_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_student` AS select `Student`.`Sno` AS `Sno`,`Student`.`Sname` AS `Sname`,`Student`.`Sage` AS `Sage`,`Student`.`Sgrade` AS `Sgrade` from `Student` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 22:13:01
