/*
Developer: Sasha Comstock
Date: May 16, 2020
Description: The Names dimension contains details about personnel
*/
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
)
