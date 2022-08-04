-- LESSON : JOIN 

-- INNER JOIN 
-- SELECT payment_id, payment.customer_id, first_name FROM customer
-- INNER JOIN payment
-- ON payment.customer_id=customer.customer_id 


-- -- FULL OUTER JOIN 
SELECT * FROM customer 
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
LIMIT 50;

-- LEFT JOIN 
SELECT film.film_id, title, inventory.last_update
FROM film 
LEFT JOIN inventory
ON inventory.film_id=film.film_id 
WHERE inventory.last_update IS NOT null
ORDER BY inventory.last_update DESC 
LIMIT 200;



