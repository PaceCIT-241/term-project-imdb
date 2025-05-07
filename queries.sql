
-- 1. Top Rated Movies (Simplified - without ratings join)
SELECT primary_title, start_year
FROM titles
WHERE title_type = 'movie'
LIMIT 10;

-- 2. Count of Titles by Type
-- Quick count of title types, limited to a smaller sample
SELECT title_type, COUNT(*) AS total
FROM titles
WHERE tconst < 'tt0010000'  -- Limits to a subset of rows (early titles only)
GROUP BY title_type
ORDER BY total DESC;



-- 3. Movies Released Per Year (Top 10 most recent years)
SELECT start_year, COUNT(*) AS total
FROM titles
WHERE title_type = 'movie'
GROUP BY start_year
ORDER BY start_year DESC
LIMIT 10;

-- 4. Ratings Overview (check if the ratings table has data)
SELECT *
FROM ratings
LIMIT 10;
