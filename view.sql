-- SQLBook: Code
-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- View for top rated movies
CREATE OR REPLACE VIEW movie_view AS
SELECT
    t.tconst,
    t.primary_title,
    t.start_year,
    t.runtime_minutes,
    t.genres,
    r.averageRating,
    r.numVotes,
    c.directors,
    c.writers,
    GROUP_CONCAT(DISTINCT n.primaryName ORDER BY p.ordering SEPARATOR ', ') AS cast_and_crew
FROM
    titles t
LEFT JOIN ratings r ON t.tconst = r.tconst
LEFT JOIN crew c ON t.tconst = c.tconst
LEFT JOIN principals p ON t.tconst = p.tconst
LEFT JOIN names n ON p.nconst = n.nconst
WHERE
    t.title_type = 'movie'
GROUP BY
    t.tconst, t.primary_title, t.start_year, t.runtime_minutes, t.genres,
    r.averageRating, r.numVotes, c.directors, c.writers;
