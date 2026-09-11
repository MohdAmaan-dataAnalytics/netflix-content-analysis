USE netflix;
SELECT director, COUNT(*) AS total
FROM netflix_title
GROUP BY director
ORDER BY COUNT(*) DESC
LIMIT 5;