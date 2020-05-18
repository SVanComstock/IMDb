-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: IMDb_raw
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
-- Table structure for table `imdb_names`
--

DROP TABLE IF EXISTS `imdb_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imdb_names` (
  `imdb_name_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birth_name` varchar(50) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `bio` varchar(10000) DEFAULT NULL,
  `birth_details` varchar(50) DEFAULT NULL,
  `birth_year` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(50) DEFAULT NULL,
  `death_details` varchar(50) DEFAULT NULL,
  `death_year` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `place_of_death` varchar(50) DEFAULT NULL,
  `reason_of_death` varchar(50) DEFAULT NULL,
  `spouses` int DEFAULT NULL,
  `divorces` int DEFAULT NULL,
  `spouses_with_children` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `primary_profession` varchar(50) DEFAULT NULL,
  `known_for_titles` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdbmovies`
--

DROP TABLE IF EXISTS `imdbmovies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imdbmovies` (
  `imdb_title_id` text,
  `title` text,
  `original_title` text,
  `year` int DEFAULT NULL,
  `date_published` text,
  `genre` text,
  `duration` int DEFAULT NULL,
  `country` text,
  `language` text,
  `director` text,
  `writer` text,
  `production_company` text,
  `actors` text,
  `description` text,
  `avg_vote` double DEFAULT NULL,
  `votes` int DEFAULT NULL,
  `budget` text,
  `usa_gross_income` text,
  `worlwide_gross_income` text,
  `metascore` text,
  `reviews_from_users` double DEFAULT NULL,
  `reviews_from_critics` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdbnames`
--

DROP TABLE IF EXISTS `imdbnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imdbnames` (
  `imdb_name_id` text,
  `name` text,
  `birth_name` text,
  `height` int DEFAULT NULL,
  `birth_details` text,
  `birth_year` int DEFAULT NULL,
  `date_of_birth` text,
  `place_of_birth` text,
  `death_details` text,
  `death_year` text,
  `date_of_death` text,
  `place_of_death` text,
  `reason_of_death` text,
  `spouses` int DEFAULT NULL,
  `divorces` int DEFAULT NULL,
  `spouses_with_children` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `primary_profession` text,
  `known_for_titles` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdbratings`
--

DROP TABLE IF EXISTS `imdbratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imdbratings` (
  `imdb_title_id` text,
  `weighted_average_vote` double DEFAULT NULL,
  `total_votes` int DEFAULT NULL,
  `mean_vote` double DEFAULT NULL,
  `median_vote` double DEFAULT NULL,
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
  `allgenders_0age_avg_vote` double DEFAULT NULL,
  `allgenders_0age_votes` double DEFAULT NULL,
  `allgenders_18age_avg_vote` double DEFAULT NULL,
  `allgenders_18age_votes` double DEFAULT NULL,
  `allgenders_30age_avg_vote` double DEFAULT NULL,
  `allgenders_30age_votes` double DEFAULT NULL,
  `allgenders_45age_avg_vote` double DEFAULT NULL,
  `allgenders_45age_votes` double DEFAULT NULL,
  `males_allages_avg_vote` double DEFAULT NULL,
  `males_allages_votes` double DEFAULT NULL,
  `males_0age_avg_vote` double DEFAULT NULL,
  `males_0age_votes` double DEFAULT NULL,
  `males_18age_avg_vote` double DEFAULT NULL,
  `males_18age_votes` double DEFAULT NULL,
  `males_30age_avg_vote` double DEFAULT NULL,
  `males_30age_votes` double DEFAULT NULL,
  `males_45age_avg_vote` double DEFAULT NULL,
  `males_45age_votes` double DEFAULT NULL,
  `females_allages_avg_vote` double DEFAULT NULL,
  `females_allages_votes` double DEFAULT NULL,
  `females_0age_avg_vote` double DEFAULT NULL,
  `females_0age_votes` double DEFAULT NULL,
  `females_18age_avg_vote` double DEFAULT NULL,
  `females_18age_votes` double DEFAULT NULL,
  `females_30age_avg_vote` double DEFAULT NULL,
  `females_30age_votes` double DEFAULT NULL,
  `females_45age_avg_vote` double DEFAULT NULL,
  `females_45age_votes` double DEFAULT NULL,
  `top1000_voters_rating` double DEFAULT NULL,
  `top1000_voters_votes` double DEFAULT NULL,
  `us_voters_rating` double DEFAULT NULL,
  `us_voters_votes` double DEFAULT NULL,
  `non_us_voters_rating` double DEFAULT NULL,
  `non_us_voters_votes` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imdbtitle_principals`
--

DROP TABLE IF EXISTS `imdbtitle_principals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imdbtitle_principals` (
  `imdb_title_id` text,
  `ordering` int DEFAULT NULL,
  `imdb_name_id` text,
  `category` text,
  `job` text,
  `characters` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'IMDb_raw'
--

--
-- Dumping routines for database 'IMDb_raw'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18  5:50:14
