--Nombre de films par réalisateur (classés dans 
-- l'ordre décroissant)
--INCOMPLET
SELECT person_name,realisator.id_realisator,movie_title FROM person
INNER JOIN realisator ON person.id_person = realisator.id_person
INNER JOIN movie ON realisator.id_realisator = movie.id_realisator
ORDER BY movie.id_realisator DESC


-- FONCTIONNE 
SELECT COUNT(movie.id_realisator),person_name FROM movie
INNER JOIN realisator ON movie.id_realisator=realisator.id_realisator
INNER JOIN person ON realisator.id_person = person.id_person
GROUP BY movie.id_realisator 