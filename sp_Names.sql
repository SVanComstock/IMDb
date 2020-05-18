INSERT INTO IMDb.dim_Names (
  `imdb_name_id`,
  `name`,
  `birth_name`,
  `height`,
  #`bio`,
  `birth_details`,
  `birth_year`,
  `date_of_birth`,
  `place_of_birth`,
  `death_details`,
  `death_year`,
  `date_of_death`,
  `place_of_death`,
  `reason_of_death`,
  `spouses`,
  `divorces`,
  `spouses_with_children`,
  `children`,
  `primary_profession`,
  `known_for_titles`
)
SELECT
  `imdb_name_id`,
  `name`,
  `birth_name`,
  `height`,
  #`bio`,
  `birth_details`,
  `birth_year`,
  `date_of_birth`,
  `place_of_birth`,
  `death_details`,
  `death_year`,
  `date_of_death`,
  `place_of_death`,
  `reason_of_death`,
  `spouses`,
  `divorces`,
  `spouses_with_children`,
  `children`,
  `primary_profession`,
  `known_for_titles`
FROM IMDb_raw.imdbnames