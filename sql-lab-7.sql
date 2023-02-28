USE sakila;

#1. not repeated last names from actors
SELECT last_name, COUNT(last_name) AS repeated FROM actor
GROUP BY last_name
HAVING repeated = 1;

#2. last names that appear more than once
SELECT last_name, COUNT(last_name) AS repeated FROM actor
GROUP BY last_name
HAVING repeated > 1;

#3. How many rentals were processed by each employee
SELECT staff_id, COUNT(rental_date)  AS rental
FROM rental
GROUP BY staff_id;

#4. how many films were released each year
SELECT release_year, COUNT(title) AS amount_movies
FROM film
GROUP BY release_year;

#5. how many films per rating
SELECT rating, COUNT(title) AS amount_movies
FROM film
GROUP BY rating;

#6. mean length of movies by rating
SELECT rating, COUNT(title) AS amount_movies, 
ROUND(AVG(length),2) AS mean_length
FROM film
GROUP BY rating;

#7. SELECT rating, COUNT(title) AS amount_movies, 
SELECT rating, ROUND(AVG(length),2) AS mean_length
FROM film
GROUP BY rating
HAVING mean_length > 120;


