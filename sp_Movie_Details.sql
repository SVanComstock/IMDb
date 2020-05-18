/*
Developer: Sasha Comstock
Date: May 16, 2020
Description: stored procedure pulls data from IMDb_raw database
and inserts it into dimension table dim_Movie_Details located in the IMDb database
*/
INSERT INTO IMDb.dim_Movie_Details (
 `imdb_title_id` ,
      `title`,
      `original_title`,
      `year`,
      `date_published`,
      `genre`,
      `duration`,
      `country` ,
      `language` ,
      `director` ,
      `writer` ,
      `production_company` ,
      `actors`,
      `description` ,
      `avg_vote` ,
      `votes` ,
      `budget` ,
      `usa_gross_income` ,
      `worlwide_gross_income` ,
      `metascore`,
      `reviews_from_users`,
      `reviews_from_critics`
)
SELECT
      `imdb_title_id` ,
      `title`,
      `original_title`,
      `year`,
      `date_published`,
      `genre`,
      `duration`,
      `country` ,
      `language` ,
      `director` ,
      `writer` ,
      `production_company` ,
      `actors`,
      `description` ,
      `avg_vote` ,
      `votes` ,
      `budget` ,
      `usa_gross_income` ,
      `worlwide_gross_income` ,
      `metascore`,
      `reviews_from_users`,
      `reviews_from_critics`
      FROM IMDb_raw.imdbmovies
