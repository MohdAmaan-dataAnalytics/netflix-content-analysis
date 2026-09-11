USE netflix;

SELECT type, COUNT(*) AS total
FROM netflix_title
GROUP BY type
ORDER BY COUNT(*) DESC;