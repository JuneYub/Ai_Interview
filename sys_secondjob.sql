CREATE DATABASE  IF NOT EXISTS `sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sys`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `secondjob`
--

DROP TABLE IF EXISTS `secondjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondjob` (
  `FirstJobId` int NOT NULL,
  `SecondJobId` int NOT NULL,
  `SecondJobName` varchar(100) NOT NULL,
  PRIMARY KEY (`FirstJobId`,`SecondJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondjob`
--

LOCK TABLES `secondjob` WRITE;
/*!40000 ALTER TABLE `secondjob` DISABLE KEYS */;
INSERT INTO `secondjob` VALUES (0,0,'기획 전략 경영'),(0,1,'사무 총무 법무'),(0,2,'인사노무 교육'),(0,3,'경리 회계 결산'),(0,4,'재무 세무 IR'),(1,0,'마케팅 광고 분석'),(1,1,'홍보 PR'),(1,2,'전시 컨벤션'),(2,0,'웹'),(2,1,'안드로이드'),(2,2,'IOS'),(2,3,'시스템프로그래머'),(2,4,'DBA 데이터베이스'),(2,5,'네트워크 서버 보안'),(2,6,'QA 테스터 검증'),(2,7,'게임'),(2,8,'ERP 시스템 분석 설계'),(2,9,'빅데이터 AI'),(2,10,'딥러닝'),(3,0,'그래픽디자인 CG'),(3,1,'출판 편집디자인'),(3,2,'제품 산업디자인'),(3,3,'광고 시각디자인'),(3,4,'의류 패션 잡화디자인'),(3,5,'전시 공간디자인'),(4,0,'수출입 무역사무'),(4,1,'구매 자재'),(4,2,'상품기획 MD'),(4,3,'유통 물류 재고'),(5,0,'생산관리 공정관리 품질관리'),(5,1,'생산 제조 설비 조립'),(6,0,'건축 설계 인테리어'),(6,1,'시공 현장 감리 공무'),(6,2,'토목 조경 도시 측량'),(6,3,'전기 소방 통신 안전'),(6,4,'환경 플랜트'),(7,0,'약사 한약사 약무보조'),(8,0,'감독 연출 PD'),(8,1,'영상 사진 촬영'),(8,2,'광고제작 카피 CF'),(8,3,'아나운서 리포터 성우'),(8,4,'기자'),(8,5,'작가 시나리오'),(8,6,'기자'),(8,7,'인쇄 출판 편집'),(8,8,'음악 음향');
/*!40000 ALTER TABLE `secondjob` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 19:52:07
