 create database pinky;
use pinky;
create table movies (movie_id int primary key,title varchar(30),release_year int,director_id int);
create table directors (director_id int primary key,director_name varchar(30));
create table genres (genres_id int primary key,genre_name varchar(30));
create table movgenres (movie_id int,genre_id int);
insert into movies values (1,'Kushi',2001,1),(2,'vakkel saab',2008,2),(3,'agnatavasi',2012,3);
insert into movies values (4,'atadu',2010,1),(5,'SVSC',2018,2),(6,'Bro',2023,3);
insert into directors values (1,'S.J.Surya'),(2,'Rajmouli'),(3,'Harrish Shankar');
insert into genres values (1,'Romcom-Action-Drama'),(2,'Action-Comedy');
insert into movgenres values (1,1),(2,1),(3,2);
insert into movgenres values (4,2),(5,1),(6,2);
SELECT movies.title, directors.director_name FROM movies JOIN directors ON movies.director_id = directors.director_id;
SELECT movies.title, movies.release_year, directors.director_name FROM movies LEFT JOIN directors ON movies.director_id = directors.director_id;
SELECT directors.director_name, movies.title FROM directors LEFT JOIN movies ON directors.director_id = movies.director_id;
SELECT movies.title, genres.genre_name FROM movies JOIN movgenres ON movies.movie_id = movgenres.movie_id JOIN genres ON movgenres.genre_id = genres.genres_id