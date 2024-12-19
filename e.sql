--Nombre de films par réalisateur (classés dans l'ordre décroissant)
-- Number of movies by director (ranked in descending order)

-- FONCTIONNE 
SELECT COUNT(movie.id_realisator),person_name FROM movie
INNER JOIN realisator ON movie.id_realisator=realisator.id_realisator
INNER JOIN person ON realisator.id_person = person.id_person
GROUP BY movie.id_realisator 