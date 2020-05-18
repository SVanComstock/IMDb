/*
Developer: Sasha Comstock
Date: May 16, 2020
Description: The Movie Details dimension contains details about a movie
*/
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
      #`metascore` decimal(3,1) DEFAULT NULL,
      `reviews_from_users` int DEFAULT NULL,
      `reviews_from_critics` int DEFAULT NULL,
      PRIMARY KEY (`Movie_Details_id`)
    )
