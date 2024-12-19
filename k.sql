-- Liste des acteurs ayant plus de 50 ans (âge révolu et non révolu)
-- List of actors who are older than 50 years old (completed and not completed)

SELECT person.person_surname,person.person_name FROM ACTOR
INNER JOIN PERSON ON ACTOR.id_person = PERSON.id_person
WHERE PERSON.dateOfBirth >= 1974-12-19

