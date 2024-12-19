-- Liste des films dont la durée excès 2h15 classés par durée (du + long au + court)

-- Movies which duration exceed 2h15 ordered by duration (from longer to shorter)

SELECT movie_title,CONVERT (duration,TIME) FROM movie
WHERE duration >= 215
ORDER BY duration ASC
