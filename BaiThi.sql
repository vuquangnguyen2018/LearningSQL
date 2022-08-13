-- DANH SACH KH o California
SELECT district, email,first_name, last_name, phone FROM address
INNER JOIN customer ON 
address.address_id=customer.address_id
WHERE district='California';
--- DANH SACH FILM Co Nick Wahlberg tham gia

SELECT title, first_name, last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id=film_actor.actor_id
INNER JOIN film
ON film_actor.film_id=film.film_id
WHERE first_name='Nick' AND
last_name='Wahlberg';