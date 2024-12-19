-- Liste des personnes qui sont à la fois actrices et réalisatrices
-- List of persons who are actors and directors at the same time 

SELECT PERSON.person_name,PERSON.person_surname FROM PERSON
INNER JOIN ACTOR ON PERSON.id_person = ACTOR.id_person
INNER JOIN DIRECTOR ON PERSON.id_person = DIRECTOR.id_person
WHERE ACTOR.id_person = DIRECTOR.id_person