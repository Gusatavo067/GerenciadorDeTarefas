-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: users_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `priority` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'fwecs','svDVV','media',4,'2024-12-15 23:35:41',NULL),(2,'CAQC','CAc','media',4,'2024-12-15 23:36:36',NULL),(3,'Participar da Daly','Daly do dia 16/12/2024','alta',3,'2024-12-15 23:45:05',NULL),(4,'aaaaaaaaaaaaaa','aaaaaaaaaaaaa','baixa',3,'2024-12-16 00:19:26',NULL),(5,'oooooo','oooooo','alta',3,'2024-12-16 00:30:12',NULL),(6,'dvbad','dfqgb','alta',12,'2024-12-16 19:10:05',NULL),(9,'Fazer Comida','Preparar uma refei├º├úo','media',12,'2024-12-23 01:35:32',NULL),(11,'jiojhkj','mnnbkh','media',4,'2024-12-28 14:45:23',NULL),(14,'njkan','xkanjc','alta',13,'2025-01-04 22:26:41','A Fazer');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT '0',
  `loginAttempts` int DEFAULT '0',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'$2a$10$sGVv0wNrfbjAB9BhVFjDVeyr47xuCRcgI/tvILVqlvihYxRHFTs16','gustavo.florentin@ufms.br',NULL,0,1,NULL),(4,'$2a$10$URq64dYhuc22OtiSLUv0O.XakpsFJ0uuhnjwQ1nSVMoWOUm8JSn4u','jane@gmail.com',NULL,0,0,NULL),(5,'$2a$10$MaSfJMZtDddvqIL8ZqvBCu98L495OKAaIMkUYrnTLmEkij39Dly8C','gustavoengsoft0901@gmail.com',NULL,0,0,NULL),(6,'$2a$10$dEww.hD/ZwU9O5P9Mp0YA.aPT4eQ3Fkxi4qI5qammocXP3ITm9DAK','deboraflorflorentinflorentin@gmail.com',NULL,0,0,NULL),(7,'$2a$10$qXiR9c7nfBebXQY4pmzrgOgwuGF/tiMv6OELNOPRmehi7YRi3HW0m','henriquegustavo092005@gmail.com',NULL,0,0,NULL),(8,'$2a$10$XP5d9.f.37UH8Nzv3.kuBuMxrN3WSa.Lve1Lq6NPj4cpcJI94d2sC','henriquegustavo092005@gmail.com',NULL,0,0,NULL),(9,'$2a$10$fI19Ab6ishJhnOEqHtmhau0fItq9AO4tiEIpO77aEDDkXWMkj.8TW','gustavoengsoft0901@gmail.com',NULL,0,0,NULL),(10,'$2a$10$R1B04osoZt0Iq4jvrHW8Le32mgLWXUGUr2E1FMlfxieQh3fvm0Mau','henriquegustavo092005@gmail.com',NULL,0,0,NULL),(11,'$2a$10$y5x3mkUsmw2U/kmhDC0PWORvi1Veq1Mjb0pvb..x/0H67/V7kxs5C','otavio@gmail.com',NULL,0,0,NULL),(12,'$2a$10$WoPEphAcjiQ1Yty/mIYKW.qIDCCyzz4IB1XLI8CnAny.mBMAFExku','emilia@gmail.com',NULL,0,0,NULL),(13,'$2a$10$Sn16LmJiKnnRUMGkTIL5UOdB.B6iqAiWWEIek9GJLttIJIiLi.Bom','mileny@gmail.com',NULL,0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-04 18:58:28
