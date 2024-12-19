-- Nombre de films par genre (classés dans l'ordre
--décroissant)

-- Number of movies for each type (ranked in descending order )

SELECT COUNT(id_movie) from movie_type 
GROUP BY id_type