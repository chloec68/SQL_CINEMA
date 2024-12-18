-- Informations d'un film (id_film) : titre, année,
-- durée (au format : HH:MM) et réalisateur


SELECT movie_title,releaseYear,CONVERT (duration,TIME),person_name FROM movie
INNER JOIN realisator ON movie.id_realisator = realisator.id_realisator
INNER JOIN person ON realisator.id_person = person.id_person


-- ou CAST ?