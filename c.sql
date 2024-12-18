-- Liste des films d'un réalisateur (en précisant)
-- l'année de sortie)

SELECT movie_title,releaseYear,person_name FROM movie 
INNER JOIN realisator ON movie.id_realisator = realisator.id_realisator
INNER JOIN person ON realisator.id_person = person.id_person
