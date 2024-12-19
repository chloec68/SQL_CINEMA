-- Nombre d'hommes et de femmes parmi les acteurs
-- Number of men and women among actors 
SELECT COUNT(actor.id_person) from PERSON
INNER JOIN actor ON PERSON.id_person = actor.id_person
GROUP BY person.gender

-- OR

SELECT COUNT(ACTOR.id_person) from ACTOR 
inner JOIN PERSON on ACTOR.id_person = PERSON.id_person
GROUP BY person.gender