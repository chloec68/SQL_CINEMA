-- Liste des films d'un réalisateur (en précisant) l'année de sortie)
-- Display the list of movies of a specific director and specify the release year

SELECT movie_title,releaseYear,person_name FROM movie 
INNER JOIN director ON movie.id_director = director.id_director
INNER JOIN person ON director.id_person = person.id_person