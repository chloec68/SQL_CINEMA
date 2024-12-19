-- Films tournés par un acteur en particulier (id_acteur) avec leur rôle et l'année de sortie (du film le plus
--récent au plus ancien) = filmographie d'un acteur 

-- Movies an actor starred in with the role he played and release year (from most recent to oldest)
-- = filmography of a specific actor

SELECT MOVIE.movie_title,MOVIE.releaseYear,PERSON.person_name FROM casting 
INNER JOIN movie ON casting.id_movie = MOVIE.id_movie
INNER JOIN ACTOR ON CASTING.id_actor = ACTOR.id_actor
INNER JOIN PERSON ON ACTOR.id_person = PERSON.id_person 
WHERE CASTING.id_actor = 1