-- Active: 1746602073145@@localhost@3306@imdbsportsmovies

    USE imdbsportsmovies;
--tv basics 
LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/title.data.basics.tsv'
INTO TABLE titles
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(tconst, title_type, primary_title, original_title, is_adult, start_year, end_year, runtime_minutes, genres);
-- crew title 
LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/crew.title.tsv'
INTO TABLE title_crew
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(tconst, director_ids, writer_ids);
-- principals
LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/title.principals.sample.tsv'
INTO TABLE principals
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- Akas Table and Data
CREATE TABLE akas (
  titleId VARCHAR(20),
  ordering INT,
  title VARCHAR(500),
  region VARCHAR(10),
  language VARCHAR(20),
  types VARCHAR(100),
  attributes VARCHAR(255),
  isOriginalTitle BOOLEAN
);

LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/title.akas.sample.tsv'
INTO TABLE akas
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- Episodes Data and Table 
CREATE TABLE episodes (
  tconst VARCHAR(20),
  parentTconst VARCHAR(20),
  seasonNumber INT,
  episodeNumber INT
);

LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/title.episode.sample.tsv'
INTO TABLE episodes
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
-- Names Data and Table 
DROP TABLE IF EXISTS names;

CREATE TABLE names (
  nconst VARCHAR(20),
  primaryName VARCHAR(255),
  birthYear INT,
  deathYear INT,
  primaryProfession VARCHAR(255),
  knownForTitles VARCHAR(255)
);

LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/name.basics.sample.tsv'
INTO TABLE names
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ratings 
CREATE TABLE ratings (
  tconst VARCHAR(20),
  averageRating DECIMAL(3,1),
  numVotes INT
);
LOAD DATA LOCAL INFILE 'C:/Users/chere/Downloads/title.ratings.sample.tsv'
INTO TABLE ratings
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;






DESCRIBE titles;

ALTER TABLE titles ADD COLUMN genres VARCHAR(100);


SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS titles;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE titles (
    tconst VARCHAR(20) PRIMARY KEY,
    title_type VARCHAR(20),
    primary_title VARCHAR(500),
    original_title VARCHAR(500),
    is_adult TINYINT(1),
    start_year INT,
    end_year INT,
    runtime_minutes INT
);
