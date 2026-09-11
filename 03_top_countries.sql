USE netflix;
SELECT country , COUNT(*) AS total
FROM netflix_title
GROUP BY country
ORDER BY COUNT(*) DESC
LIMIT 10;