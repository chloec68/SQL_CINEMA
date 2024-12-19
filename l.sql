-- Acteurs ayant joué dans 3 films ou plus
-- Actors who starred in 3 movies or more 

select CASTING.id_actor,person.person_surname,PERSON.person_name from CASTING
INNER JOIN ACTOR ON CASTING.id_actor = ACTOR.id_actor
INNER JOIN PERSON ON ACTOR.id_person = PERSON.id_person
group by CASTING.id_actor
HAVING COUNT(id_role)>3