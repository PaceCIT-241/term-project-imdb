 
    USE imdbsportsmovies;

CREATE TABLE titles (
    tconst VARCHAR(20) PRIMARY KEY,
    titleType VARCHAR(50),
    primaryTitle VARCHAR(255),
    originalTitle VARCHAR(255),
    isAdult TINYINT(1),
    startYear SMALLINT,
    endYear SMALLINT,
    runtimeMinutes INT,
    genres VARCHAR(255)
);

    USE imdbsportsmovies;

CREATE TABLE principals (
    tconst VARCHAR(10),
    ordering INT,
    nconst VARCHAR(10),
    category VARCHAR(50),
    job VARCHAR(255),
    characters VARCHAR(255)
);
CREATE TABLE akas (
  titleId VARCHAR(20),
  ordering INT,
  title VARCHAR(512),
  region VARCHAR(10),
  language VARCHAR(20),
  types VARCHAR(100),
  attributes VARCHAR(100),
  isOriginalTitle BOOLEAN
);

CREATE TABLE episodes (
  tconst VARCHAR(20),
  parentTconst VARCHAR(20),
  seasonNumber INT,
  episodeNumber INT
);

);
DROP TABLE IF EXISTS names;

CREATE TABLE names (
  nconst VARCHAR(20),
  primaryName VARCHAR(255),
  birthYear INT,
  deathYear INT,
  primaryProfession VARCHAR(255),
  knownForTitles VARCHAR(255)
);


show tables
