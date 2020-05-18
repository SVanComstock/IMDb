-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: IMDb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `dim_Movie_Details`
--

DROP TABLE IF EXISTS `dim_Movie_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_Movie_Details` (
  `Movie_Details_id` int NOT NULL AUTO_INCREMENT,
  `imdb_title_id` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `original_title` varchar(1000) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `date_published` varchar(1000) DEFAULT NULL,
  `genre` varchar(1000) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `country` varchar(1000) DEFAULT NULL,
  `language` varchar(1000) DEFAULT NULL,
  `director` varchar(1000) DEFAULT NULL,
  `writer` varchar(1000) DEFAULT NULL,
  `production_company` varchar(1000) DEFAULT NULL,
  `actors` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `avg_vote` decimal(18,4) DEFAULT NULL,
  `votes` int DEFAULT NULL,
  `budget` varchar(1000) DEFAULT NULL,
  `usa_gross_income` varchar(1000) DEFAULT NULL,
  `worlwide_gross_income` varchar(1000) DEFAULT NULL,
  `metascore` varchar(1000) DEFAULT NULL,
  `reviews_from_users` int DEFAULT NULL,
  `reviews_from_critics` int DEFAULT NULL,
  PRIMARY KEY (`Movie_Details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64960 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_Names`
--

DROP TABLE IF EXISTS `dim_Names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_Names` (
  `Names_id` int NOT NULL AUTO_INCREMENT,
  `imdb_name_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birth_name` varchar(1000) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `bio` varchar(10000) DEFAULT NULL,
  `birth_details` varchar(1000) DEFAULT NULL,
  `birth_year` varchar(50) DEFAULT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `place_of_birth` varchar(1000) DEFAULT NULL,
  `death_details` varchar(1000) DEFAULT NULL,
  `death_year` varchar(50) DEFAULT NULL,
  `date_of_death` varchar(50) DEFAULT NULL,
  `place_of_death` varchar(1000) DEFAULT NULL,
  `reason_of_death` varchar(1000) DEFAULT NULL,
  `spouses` int DEFAULT NULL,
  `divorces` int DEFAULT NULL,
  `spouses_with_children` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `primary_profession` varchar(50) DEFAULT NULL,
  `known_for_titles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Names_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_Ratings`
--

DROP TABLE IF EXISTS `dim_Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_Ratings` (
  `Ratings_id` int NOT NULL AUTO_INCREMENT,
  `imdb_title_id` varchar(20) DEFAULT NULL,
  `weighted_average_vote` decimal(18,4) DEFAULT NULL,
  `total_votes` int DEFAULT NULL,
  `mean_vote` decimal(18,4) DEFAULT NULL,
  `median_vote` decimal(18,4) DEFAULT NULL,
  `votes_10` int DEFAULT NULL,
  `votes_9` int DEFAULT NULL,
  `votes_8` int DEFAULT NULL,
  `votes_7` int DEFAULT NULL,
  `votes_6` int DEFAULT NULL,
  `votes_5` int DEFAULT NULL,
  `votes_4` int DEFAULT NULL,
  `votes_3` int DEFAULT NULL,
  `votes_2` int DEFAULT NULL,
  `votes_1` int DEFAULT NULL,
  `allgenders_0age_avg_vote` decimal(18,4) DEFAULT NULL,
  `allgenders_0age_votes` int DEFAULT NULL,
  `allgenders_18age_avg_vote` decimal(18,4) DEFAULT NULL,
  `allgenders_18age_votes` int DEFAULT NULL,
  `allgenders_30age_avg_vote` decimal(18,4) DEFAULT NULL,
  `allgenders_30age_votes` int DEFAULT NULL,
  `allgenders_45age_avg_vote` decimal(18,4) DEFAULT NULL,
  `allgenders_45age_votes` int DEFAULT NULL,
  `males_allages_avg_vote` decimal(18,4) DEFAULT NULL,
  `males_allages_votes` int DEFAULT NULL,
  `males_0age_avg_vote` decimal(18,4) DEFAULT NULL,
  `males_0age_votes` int DEFAULT NULL,
  `males_18age_avg_vote` decimal(18,4) DEFAULT NULL,
  `males_18age_votes` int DEFAULT NULL,
  `males_30age_avg_vote` decimal(18,4) DEFAULT NULL,
  `males_30age_votes` int DEFAULT NULL,
  `males_45age_avg_vote` decimal(18,4) DEFAULT NULL,
  `males_45age_votes` int DEFAULT NULL,
  `females_allages_avg_vote` decimal(18,4) DEFAULT NULL,
  `females_allages_votes` int DEFAULT NULL,
  `females_0age_avg_vote` decimal(18,4) DEFAULT NULL,
  `females_0age_votes` int DEFAULT NULL,
  `females_18age_avg_vote` decimal(18,4) DEFAULT NULL,
  `females_18age_votes` int DEFAULT NULL,
  `females_30age_avg_vote` decimal(18,4) DEFAULT NULL,
  `females_30age_votes` int DEFAULT NULL,
  `females_45age_avg_vote` decimal(18,4) DEFAULT NULL,
  `females_45age_votes` int DEFAULT NULL,
  `top1000_voters_rating` decimal(18,4) DEFAULT NULL,
  `top1000_voters_votes` int DEFAULT NULL,
  `us_voters_rating` decimal(18,4) DEFAULT NULL,
  `us_voters_votes` int DEFAULT NULL,
  `non_us_voters_rating` decimal(18,4) DEFAULT NULL,
  `non_us_voters_votes` int DEFAULT NULL,
  PRIMARY KEY (`Ratings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_Title_Principals`
--

DROP TABLE IF EXISTS `dim_Title_Principals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_Title_Principals` (
  `Title_Principals_id` int NOT NULL AUTO_INCREMENT,
  `imdb_title_id` varchar(20) DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `imdb_name_id` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `job` varchar(1000) DEFAULT NULL,
  `characters` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Title_Principals_id`)
) ENGINE=InnoDB AUTO_INCREMENT=377849 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'IMDb'
--

--
-- Dumping routines for database 'IMDb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18  8:10:27
