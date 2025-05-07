-- Active: 1746602073145@@localhost@3306@imdbsportsmovies

LOAD DATA INFILE 'C:/full/path/to/title.basics.tsv'
INTO TABLE titles
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Import ratings data
COPY ratings FROM '/path/to/title.ratings.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true, NULL '\N');

-- Import names data
COPY names FROM '/path/to/name.basics.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true, NULL '\N');

-- Import title_crew data
COPY title_crew FROM '/path/to/title.crew.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true, NULL '\N');

-- Import title_episodes data
COPY title_episodes FROM '/path/to/title.episode.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true, NULL '\N');

-- Import title_akas data
COPY title_akas FROM '/path/to/title.akas.tsv' WITH (FORMAT csv, DELIMITER E'\t', HEADER true, NULL '\N');