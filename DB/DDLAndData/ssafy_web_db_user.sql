-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: i6a206.p.ssafy.io    Database: ssafy_web_db
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` int DEFAULT NULL,
  `age` datetime DEFAULT NULL,
  `host_point` int DEFAULT NULL,
  `guest_point` int DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `profile_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'{bcrypt}$2a$10$U/2lhhwnGz3vTL5ANg9uROz6GSVbGPqxllxgAvSpnR9aKTgs9Q/a6','kdhkdh','rjehgu13@gmail.com',0,'2022-02-10 18:36:39',0,0,'',''),(5,'{bcrypt}$2a$10$Y3/JG0He8CizaF4MTQfTOONBaJA2MUHED7e6F6pKS9eXzx1Tliquu','아몬드땅콩','fsa3806@naver.com',0,'2022-02-10 18:37:32',0,0,'',''),(6,'{bcrypt}$2a$10$0a/7iH6HVzBijyNgnhJex.YvhZVq6i3hAuAeswny3TjOhrvYA5iK2','절반은 잠을 자는 돌고래','jjangsw004@naver.com',0,'2022-02-10 20:14:06',0,0,'','안녕하세요 돌고래 입니다.'),(8,'{bcrypt}$2a$10$Q9A/5WV/7eF2ma527r1wxeBsifXLt/YYv5Gk1raGVEhLnXcQo4TBK','정찬','cjung0418@naver.com',0,'2022-02-11 01:33:29',0,0,'','잘하자!!'),(9,'{bcrypt}$2a$10$3JxUf.Stf1UNC35pHgABgOeMApyvEHsX8EvZcxVu5EoyG95Gxnsie','의식적으로 잠을 자야겠다','toor21@naver.com',0,'2022-02-11 01:44:22',0,0,'','설명설명'),(10,'{bcrypt}$2a$10$R36Ae7ECLAFjlLMkah6fMO5LXUyK5ul55gukyc4gi/PhF8QytNMmq','jchan','cjung0418@daum.net',0,'2022-02-11 02:25:36',0,0,NULL,'chan'),(12,'{bcrypt}$2a$10$x8VLvinIKmrfpwHY3FhWuOCBNrIjFvlTkc/llMDjfuakIDx3lLzYa','복숭아 먹고싶은 어피치','dmlwls507@naver.com',0,'2022-02-12 04:48:49',0,0,'','안녕하세요!'),(21,'{bcrypt}$2a$10$6KVrFJRCOB9ATY8cXdmYzO70pKax6ygx6Dc9v/yNmNVz6eOJoBnFy','돈다발 들고 좋아하는 어피치','unjoo94@naver.com',0,'2022-02-15 13:18:25',0,0,'','asdfasdfasdfasdfasdfasdfasdf'),(22,'{bcrypt}$2a$10$x7ARLF1MM3VLdgMP3tYSReQXJzSfRIPpgoqziKenjCuNzkCCCjD9.','testaccount_1','caxof61316@balaket.com',0,'2022-02-16 22:50:40',0,0,'','dfdf'),(23,'{bcrypt}$2a$10$40xw4yfrE.mv.cU/sIau..31zKr2aeM6Jtx83Y3DCoHUY6FBeNlCK','another_tester','mailmail@tmpbox.net',0,'2022-02-16 22:53:09',0,0,'','한마디 하겠ㅅ브니다'),(24,'{bcrypt}$2a$10$Drel09rxwTKP310/rAA4MuPbcni7wbo//RDudmBUmoee.8fIU5BLG','프로님','meetbooktest2@gmail.com',0,'2022-02-16 23:26:10',0,0,'',''),(25,'{bcrypt}$2a$10$sKBm6DLZaKa8c/vnTYjQiuEDB34uGBfzHWHEzK0M8JiCZOBpXMA4O','호제','h2j4607@naver.com',0,'2022-02-17 00:10:04',0,0,'http://k.kakaocdn.net/dn/vpPcX/btrpozcXleF/b3hK2YOKcYsLMlvrZAp5K1/img_110x110.jpg',''),(30,'{bcrypt}$2a$10$bs71J0TSqgcGt.e2aXG3f.w5E7p4PzbWmjtwt/.CkQi2mgMhgCDGC','abcd','meatbook3806@gmail.com',0,'2022-02-17 15:27:24',0,0,'','화이팅입니다.'),(33,'{bcrypt}$2a$10$gqqfWkudKuRi86fCWxRsd.0UFMbbnClpghD9fwZu9hoxstt91xVZO','나는 날치','jchan0418@gmail.com',0,'2022-02-18 02:41:35',0,0,'',''),(36,'{bcrypt}$2a$10$gYPXDbemr3gF4hWpcKuHKuGFuol4jNwadyDpojDHy.55dEFLQcGC6','01030264375','tae.in.poland@gmail.com',0,'2022-02-18 11:54:29',0,0,'','캌카오로그인하면 전화번호를 바로 때려박으시네요ㅋㅋㅋㅋㅋㅋㅋ\n괜찮아요 이럴줄 알고 제 전화번호 아닙니다');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18 11:55:31
