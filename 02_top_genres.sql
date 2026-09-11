USE netflix;

SELECT listed_in, COUNT(*) AS total
FROM netflix_title
-- WHERE listed_in LIKE '%Dramas%' 
GROUP BY listed_in
ORDER BY COUNT(*) DESC
LIMIT 10;