-- Informations d'un film (id_film) : titre, année, durée (au format : HH:MM) et réalisateur
-- Display following infos about a movie : title,  release year, duration (format : HH:MM) and director


SELECT movie_title,releaseYear,CONVERT (duration,TIME),person_name FROM movie
INNER JOIN director ON movie.id_director = director.id_director
INNER JOIN person ON director.id_person = person.id_person


-- ou CAST ?