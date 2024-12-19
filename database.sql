-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour cinema_chloe
CREATE DATABASE IF NOT EXISTS `cinema_chloe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema_chloe`;

-- Listage de la structure de table cinema_chloe. actor
CREATE TABLE IF NOT EXISTS `actor` (
  `id_actor` int NOT NULL AUTO_INCREMENT,
  `id_person` int DEFAULT NULL,
  PRIMARY KEY (`id_actor`),
  KEY `id_person` (`id_person`),
  CONSTRAINT `FK_actor_person` FOREIGN KEY (`id_person`) REFERENCES `person` (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.actor : ~20 rows (environ)
INSERT INTO `actor` (`id_actor`, `id_person`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 17),
	(18, 18),
	(19, 19),
	(20, 20);

-- Listage de la structure de table cinema_chloe. casting
CREATE TABLE IF NOT EXISTS `casting` (
  `id_movie` int DEFAULT NULL,
  `id_actor` int DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  KEY `id_movie` (`id_movie`),
  KEY `id_actor` (`id_actor`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `FK__actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`),
  CONSTRAINT `FK__role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  CONSTRAINT `FKK__movie` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.casting : ~4 rows (environ)
INSERT INTO `casting` (`id_movie`, `id_actor`, `id_role`) VALUES
	(1, 1, 15),
	(1, 16, 16),
	(2, 3, 3),
	(4, 5, 5);

-- Listage de la structure de table cinema_chloe. movie
CREATE TABLE IF NOT EXISTS `movie` (
  `id_movie` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(200) NOT NULL DEFAULT '',
  `releaseYear` date NOT NULL,
  `duration` int NOT NULL DEFAULT '0',
  `synopsis` text NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `poster` varchar(255) NOT NULL DEFAULT '0',
  `id_realisator` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_movie`),
  KEY `id_director` (`id_director`),
  CONSTRAINT `FK_movie_director` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.movie : ~20 rows (environ)
INSERT INTO `movie` (`id_movie`, `movie_title`, `releaseYear`, `duration`, `synopsis`, `rating`, `poster`, `id_director`) VALUES
	(1, 'The Matrix', '1999-03-31', 136, 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 87, 'matrix.jpg', 1),
	(2, 'Inception', '2010-07-16', 148, 'A thief who enters the dreams of others to steal secrets from their subconscious is given the task of planting an idea into the mind of a CEO.', 86, 'inception.jpg', 1),
	(3, 'Titanic', '1997-12-19', 195, 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 90, 'titanic.jpg', 2),
	(4, 'Avengers: Endgame', '2019-04-26', 181, 'After the devastating events of Avengers: Infinity War, the Avengers assemble once more in order to reverse Thanos\' actions and restore order to the universe.', 94, 'endgame.jpg', 3),
	(5, 'Harry Potter and the Sorcerer\'s Stone', '2001-11-10', 152, 'An orphaned boy discovers that he is a wizard and attends a magical school to learn the skills necessary to defeat the dark wizard responsible for his parents\' deaths.', 89, 'harrypotter.jpg', 2),
	(6, 'Star Wars: The Empire Strikes Back', '1980-05-21', 124, 'After the Rebels are overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda while his friends are pursued across the galaxy by Darth Vader.', 92, 'empirestrikesback.jpg', 4),
	(7, 'The Godfather', '1972-03-24', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 98, 'godfather.jpg', 2),
	(8, 'Pulp Fiction', '1994-09-14', 154, 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 90, 'pulpfiction.jpg', 3),
	(9, 'Forrest Gump', '1994-07-06', 142, 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an extraordinary life story.', 91, 'forrestgump.jpg', 3),
	(10, 'The Dark Knight', '2008-07-18', 152, 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, forcing Batman to rethink his methods.', 93, 'darkknight.jpg', 1),
	(11, 'The Avengers', '2012-05-04', 143, 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 92, 'avengers.jpg', 3),
	(12, 'Jurassic Park', '1993-06-11', 127, 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run wild.', 91, 'jurassicpark.jpg', 2),
	(13, 'Titanic', '1997-12-19', 195, 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 90, 'titanic.jpg', 2),
	(14, 'Jurassic World', '2015-06-12', 124, 'A new theme park, built on the original site of Jurassic Park, creates a genetically modified dinosaur that soon runs riot over the island.', 80, 'jurassicworld.jpg', 4),
	(15, 'Sherlock Holmes', '2009-12-25', 128, 'Detective Sherlock Holmes and his partner, Watson, battle to bring down a villainous occult mastermind.', 88, 'sherlockholmes.jpg', 1),
	(16, 'Star Wars: A New Hope', '1977-05-25', 121, 'Luke Skywalker joins forces with a rogue captain and a Jedi Knight to rescue a princess from a notorious Imperial stormtrooper and restore peace and justice in the Empire.', 93, 'starwarsnewhope.jpg', 4),
	(17, 'Mission: Impossible – Fallout', '2018-07-27', 147, 'Ethan Hunt and his IMF team must track down a dangerous weapon in order to prevent a disaster of epic proportions.', 85, 'missionimpossible.jpg', 1),
	(18, 'Mad Max: Fury Road', '2015-05-15', 120, 'In a post-apocalyptic wasteland, Max teams up with a runaway named Furiosa to escape a tyrannical warlord and his army.', 92, 'madmax.jpg', 5),
	(19, 'The Hunger Games', '2012-03-23', 142, 'In a dystopian future, 12 children from 12 districts are selected to compete in a televised death match. Katniss Everdeen volunteers to take her sister\'s place.', 88, 'hunger.jpg', 5),
	(20, 'Guardians of the Galaxy', '2014-08-01', 121, 'A group of intergalactic criminals must pull together to stop a fanatical warrior from taking control of the universe.', 89, 'guardians.jpg', 3);

-- Listage de la structure de table cinema_chloe. movie_type
CREATE TABLE IF NOT EXISTS `movie_type` (
  `id_movie` int DEFAULT NULL,
  `id_type` int DEFAULT NULL,
  KEY `id_movie` (`id_movie`),
  KEY `id_type` (`id_type`),
  CONSTRAINT `FK__movie` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`),
  CONSTRAINT `FK__type` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.movie_type : ~32 rows (environ)
INSERT INTO `movie_type` (`id_movie`, `id_type`) VALUES
	(1, 6),
	(1, 5),
	(2, 1),
	(2, 6),
	(3, 4),
	(3, 3),
	(4, 1),
	(4, 3),
	(5, 3),
	(5, 4),
	(6, 1),
	(6, 6),
	(7, 3),
	(8, 1),
	(8, 3),
	(9, 3),
	(9, 4),
	(10, 1),
	(11, 3),
	(11, 1),
	(12, 1),
	(13, 1),
	(13, 3),
	(14, 5),
	(15, 3),
	(15, 1),
	(16, 6),
	(17, 1),
	(18, 5),
	(19, 5),
	(20, 1),
	(20, 3);

-- Listage de la structure de table cinema_chloe. person
CREATE TABLE IF NOT EXISTS `person` (
  `id_person` int NOT NULL AUTO_INCREMENT,
  `person_name` varchar(50) NOT NULL DEFAULT '',
  `person_surname` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.person : ~25 rows (environ)
INSERT INTO `person` (`id_person`, `person_name`, `person_surname`, `sex`, `dateOfBirth`) VALUES
	(1, ' Reeves', 'Keanu', 'male', '1964-09-02'),
	(2, ' Jolie', 'Angelina', 'female', '1975-06-04'),
	(3, ' Downey Jr.', 'Robert', 'male', '1965-04-04'),
	(4, ' Johansson', 'Scarlett', 'female', '1984-11-22'),
	(5, 'Craig', 'Daniel', 'male', '1968-03-02'),
	(6, ' Cumberbatch', 'Benedict', 'female', '1976-07-19'),
	(7, 'Witherspoon', 'Reese ', 'male', '1976-03-22'),
	(8, ' Hanks', 'Tom', 'male', '1956-07-09'),
	(9, 'Radcliffe', 'Daniel ', 'male', '1989-07-23'),
	(10, 'Watson', 'Emma ', 'female', '1990-04-15'),
	(11, ' Maguire', 'Tobey', 'male', '1975-06-27'),
	(12, 'Dunst', 'Kirsten ', 'female', '1982-04-30'),
	(13, ' DiCaprio', 'Leonardo', 'male', '1974-11-11'),
	(14, ' Winslet', 'Kate', 'female', '1975-10-05'),
	(15, 'Reeves', 'Keanu ', 'male', '1964-09-02'),
	(16, ' Moss', 'Carrie-Anne', 'female', '1967-10-21'),
	(17, 'Ford', 'Harrison ', 'male', '1942-07-13'),
	(18, 'Fisher', 'Carrie ', 'male', '1956-10-21'),
	(19, ' McKellen', 'Ian', 'male', '1939-05-25'),
	(20, ' Wood', 'Elijah', 'male', '1981-01-28'),
	(21, ' Nolan', 'Christopher', 'male', '1970-07-30'),
	(22, 'Spielberg', 'Steven ', 'male', '1946-12-18'),
	(23, ' Tarantino', 'Quentin', 'male', '1963-03-27'),
	(24, 'Abrams', 'J.J. ', 'male', '1966-06-27'),
	(25, 'Ross', 'Gary', 'male', '1956-11-03');

-- Listage de la structure de table cinema_chloe. realisator
CREATE TABLE IF NOT EXISTS `director` (
  `id_director` int NOT NULL AUTO_INCREMENT,
  `id_person` int NOT NULL,
  PRIMARY KEY (`id_director`),
  KEY `id_person` (`id_person`),
  CONSTRAINT `FK_director_person` FOREIGN KEY (`id_person`) REFERENCES `person` (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.realisator : ~5 rows (environ)
INSERT INTO `director` (`id_director`, `id_person`) VALUES
	(1, 21),
	(2, 22),
	(3, 23),
	(4, 24),
	(5, 25);

-- Listage de la structure de table cinema_chloe. role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.role : ~20 rows (environ)
INSERT INTO `role` (`id_role`, `role_name`) VALUES
	(1, 'John Wick'),
	(2, 'Lara Croft'),
	(3, 'Tony Stark'),
	(4, 'Natasha Romanoff'),
	(5, 'James Bond'),
	(6, 'Sherlock Holmes'),
	(7, 'Elle Woods'),
	(8, 'Forrest Gump'),
	(9, 'Harry Potter'),
	(10, 'Hermione Granger'),
	(11, 'Peter Parker'),
	(12, 'Mary Jane Watson'),
	(13, 'Jack Dawson'),
	(14, 'Rose DeWitt Bukater'),
	(15, 'Neo'),
	(16, 'Trinity'),
	(17, 'Han Solo'),
	(18, 'Princess Leia'),
	(19, 'Gandalf'),
	(20, 'Frodo Baggins');

-- Listage de la structure de table cinema_chloe. type
CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema_chloe.type : ~6 rows (environ)
INSERT INTO `type` (`id_type`, `type_name`) VALUES
	(1, 'Action'),
	(2, 'Comedy'),
	(3, 'Drama'),
	(4, 'Romance'),
	(5, 'Thriller'),
	(6, 'Science Fiction');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
