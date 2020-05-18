/*
Developer: Sasha Comstock
Date: May 16, 2020
Description: stored procedure pulls data from IMDb_raw database
and inserts it into IMDb.dim_Title_Principals
*/

INSERT INTO IMDb.dim_Title_Principals (
  `imdb_title_id`,
  `ordering`,
  `imdb_name_id`,
  `category`,
  `job`,
  `characters`
)
SELECT
`imdb_title_id`,
`ordering`,
`imdb_name_id`,
`category`,
`job`,
`characters`
FROM IMDb_raw.imdbtitle_principals
