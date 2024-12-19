-- Liste des films qui ont moins de 5 ans (classés du plus récent au plus ancien)

-- List of movies released less than 5 years ago

SELECT MOVIE.movie_title,MOVIE.releaseYear FROM MOVIE 
WHERE MOVIE.releaseYear <= 01-12-2019
