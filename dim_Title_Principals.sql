/*
Developer: Sasha Comstock
Date: May 16, 2020
Description: The Title Principals dimension contains details the movie, its personnel, and genre
*/
CREATE TABLE `dim_Title_Principals` (
    `Title_Principals_id` INT NOT NULL AUTO_INCREMENT,
    `imdb_title_id` VARCHAR(20),
    `ordering` INT DEFAULT NULL,
    `imdb_name_id` VARCHAR(20),
    `category` VARCHAR(20),
    `job` VARCHAR(1000),
    `characters` VARCHAR(1000),
    PRIMARY KEY (Title_Principals_id)
    #CONSTRAINT imdb_title_principals_pk PRIMARY KEY (imdb_title_id, imdb_name_id)
    ) ;
