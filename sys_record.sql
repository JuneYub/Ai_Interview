CREATE DATABASE  IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sys`;

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
                            `Id` int NOT NULL AUTO_INCREMENT,
                            `firstJobName` varchar(100) NOT NULL,
                            `secondJobName` varchar(100) NOT NULL,
                            `introFirst` varchar(1000) NOT NULL,
                            `introSecond` varchar(1000) NOT NULL,
                            `q1` varchar(100) NOT NULL,
                            `q2` varchar(100) NOT NULL,
                            `q3` varchar(100) NOT NULL,
                            `a1` varchar(1000) NOT NULL,
                            `a2` varchar(1000) NOT NULL,
                            `a3` varchar(1000) NOT NULL,
                            PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstjob`
--

-- LOCK TABLES `firstjob` WRITE;
-- /*!40000 ALTER TABLE `firstjob` DISABLE KEYS */;
-- INSERT INTO `firstjob` VALUES (0,'경영사무'),(1,'마케팅 광고 홍보'),(2,'IT 인터넷'),(3,'디자인'),(4,'무역 유통'),(5,'생산 제조'),(6,'건설'),(7,'의료'),(8,'미디어');
-- /*!40000 ALTER TABLE `firstjob` ENABLE KEYS */;
-- UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 19:52:08
