USE netflix;
SELECT YEAR(date_added) AS year, COUNT(*) AS total
FROM netflix_title
GROUP BY YEAR(date_added)
ORDER BY YEAR(date_added) DESC
LIMIT 10;