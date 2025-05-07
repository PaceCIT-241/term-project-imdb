-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- Create the database
CREATE DATABASE imdb;
\c imdb;

-- Create Titles table
CREATE TABLE titles (
    tconst VARCHAR(20) PRIMARY KEY,
    title_type VARCHAR(20),
    primary_title VARCHAR(500),
    original_title VARCHAR(500),
    is_adult BOOLEAN,
    start_year INTEGER,
    end_year INTEGER,
    runtime_minutes INTEGER
);

-- Create Ratings table
CREATE TABLE ratings (
    tconst VARCHAR(20) PRIMARY KEY REFERENCES titles(tconst),
    average_rating DECIMAL(3,1),
    num_votes INTEGER
);

-- Create Names table
CREATE TABLE names (
    nconst VARCHAR(20) PRIMARY KEY,
    primary_name VARCHAR(200),
    birth_year INTEGER,
    death_year INTEGER,
    primary_profession VARCHAR(200),
    known_for_titles VARCHAR(200)
);

-- Create Title_Crew table
CREATE TABLE title_crew (
    tconst VARCHAR(20) REFERENCES titles(tconst),
    directors VARCHAR(200),
    writers VARCHAR(200),
    PRIMARY KEY (tconst)
);

-- Create Title_Episodes table
CREATE TABLE title_episodes (
    tconst VARCHAR(20) PRIMARY KEY REFERENCES titles(tconst),
    parent_tconst VARCHAR(20) REFERENCES titles(tconst),
    season_number INTEGER,
    episode_number INTEGER
);

-- Create Title_Akas table
CREATE TABLE title_akas (
    tconst VARCHAR(20) REFERENCES titles(tconst),
    ordering INTEGER,
    title VARCHAR(500),
    region VARCHAR(10),
    language VARCHAR(10),
    types VARCHAR(50),
    attributes VARCHAR(200),
    is_original_title BOOLEAN,
    PRIMARY KEY (tconst, ordering)
);
