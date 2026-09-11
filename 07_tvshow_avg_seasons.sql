USE netflix;

-- Movies average duration
SELECT AVG(SUBSTRING_INDEX(duration, ' ', 1) + 0) AS avg_duration_minutes
FROM netflix_title
WHERE type = 'Movie';

-- TV Shows average seasons
SELECT AVG(SUBSTRING_INDEX(duration, ' ', 1) +0 ) AS AVG_duration_seasion
FROM netflix_title
WHERE type = 'TV Show';
