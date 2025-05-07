-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- Create read-only role
CREATE ROLE imdb_reader;

-- Grant select privileges
GRANT SELECT ON ALL TABLES IN SCHEMA public TO imdb_reader;
GRANT SELECT ON ALL VIEWS IN SCHEMA public TO imdb_reader;

-- Create users and add to role
CREATE USER analyst1 WITH PASSWORD 'securepassword1';
CREATE USER analyst2 WITH PASSWORD 'securepassword2';
CREATE USER manager WITH PASSWORD 'securepassword3';

GRANT imdb_reader TO analyst1, analyst2, manager;