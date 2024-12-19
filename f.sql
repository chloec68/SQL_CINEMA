-- Casting d'un film en particulier (id_film) : nom, prénom des acteurs + sexe 
-- Casting of a movie : actors name,surname and gender 

SELECT person_name,person_surname,gender, movie.movie_title FROM PERSON 
INNER JOIN ACTOR on person.id_person = actor.id_person 
INNER JOIN casting on actor.id_actor = casting.id_actor
INNER JOIN movie on casting.id_movie = movie.id_movie 
WHERE movie.id_movie = 1