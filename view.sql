-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- View for top rated movies
CREATE VIEW top_rated_movies AS
SELECT t.tconst, t.primary_title, t.start_year, r.average_rating, r.num_votes
FROM titles t
JOIN ratings r ON t.tconst = r.tconst
WHERE t.title_type = 'movie' AND r.num_votes > 1000
ORDER BY r.average_rating DESC
LIMIT 100;

-- View for TV series with episode count
CREATE VIEW tv_series_with_episodes AS
SELECT t.primary_title, t.start_year, COUNT(e.tconst) as episode_count
FROM titles t
JOIN title_episodes e ON t.tconst = e.parent_tconst
WHERE t.title_type = 'tvSeries'
GROUP BY t.tconst, t.primary_title, t.start_year
ORDER BY episode_count DESC;