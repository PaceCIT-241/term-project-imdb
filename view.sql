-- SQLBook: Code
-- Active: 1746602073145@@localhost@3306@imdbsportsmovies02073145@@localhost@3306@imdbsportsmovies
-- View for top rated movies
CREATE OR REPLACE VIEW movie_view AS
SELECT
    t.tconst,
    t.primary_title,
    t.start_year,
    t.runtime_minutes,
    t.genres,
    r.averageRating
FROM
    titles t
LEFT JOIN ratings r ON t.tconst = r.tconst
WHERE
    t.title_type = 'movie'
    AND t.start_year >= 2015;
