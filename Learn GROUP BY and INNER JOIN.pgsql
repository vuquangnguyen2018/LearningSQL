SELECT title, film_id, rating FROM film 
WHERE rating = 'NC-17'
ORDER BY title ASC;

SELECT * FROM payment
LIMIT 20

SELECT * FROM customer
LIMIT 20 

SELECT first_name, last_name, amount FROM customer 
INNER JOIN payment 
ON payment.customer_id=customer.customer_id
WHERE amount >=1.99
ORDER BY amount DESC, first_name ASC 


-- DANH SACH KH o California
SELECT district, email,first_name, last_name, phone FROM address
INNER JOIN customer ON 
address.address_id=customer.address_id
WHERE district='California';
--- DANH SACH FILM Co Nick Wahlberg tham gia




SELECT DISTINCT district FROM address 
ORDER BY district ASC 


 
-- Xac dinh TOP 10 khach hang o California va So Paulo chi tra so tien tu 90-150
SELECT first_name, last_name, district, SUM(amount) AS payment_charge FROM customer 
INNER JOIN address
ON customer.address_id=address.address_id
INNER JOIN payment
ON customer.customer_id=payment.customer_id
WHERE district IN ('California', 'So Paulo')
GROUP BY first_name, last_name, district
HAVING SUM(amount) >=100
ORDER BY SUM(amount) DESC  
LIMIT 10











SELECT title, first_name, last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id=film_actor.actor_id
INNER JOIN film
ON film_actor.film_id=film.film_id
WHERE first_name='Nick' AND
last_name='Wahlberg';
