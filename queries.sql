-- Active: 1746602073145@@localhost@3306@imdbsportsmovies
-- Select top 100 rows from each table
SELECT * FROM titles LIMIT 100;
SELECT * FROM ratings LIMIT 100;
SELECT * FROM names LIMIT 100;
SELECT * FROM title_crew LIMIT 100;
SELECT * FROM title_episodes LIMIT 100;
SELECT * FROM title_akas LIMIT 100;

-- Join titles with ratings
SELECT t.tconst, t.primary_title, r.average_rating, r.num_votes
FROM titles t
JOIN ratings r ON t.tconst = r.tconst
LIMIT 100;

-- Aggregate query: Average rating by title type
SELECT t.title_type, AVG(r.average_rating) as avg_rating, COUNT(*) as count
FROM titles t
JOIN ratings r ON t.tconst = r.tconst
GROUP BY t.title_type
ORDER BY avg_rating DESC;

-- Top 10 most prolific directors
SELECT n.primary_name, COUNT(*) as movie_count
FROM title_crew tc
JOIN names n ON POSITION(n.nconst IN tc.directors) > 0
GROUP BY n.primary_name
ORDER BY movie_count DESC
LIMIT 10;