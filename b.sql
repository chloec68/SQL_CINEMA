-- Liste des films dont la durée excès 2h15 
-- classés par durée (du + long au + court)

SELECT movie_title,CONVERT (duration,TIME) FROM movie
WHERE duration >= 215
ORDER BY duration ASC
