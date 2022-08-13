---STRING
SELECT upper(first_name) ||' '|| upper(last_name) AS Full_name
FROM customer;

-- SUB QUERY: rental_rate >  AVERAGE
SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film )
ORDER BY rental_rate DESC

-- SUB QUERY: film_id có return_date từ 2005-05-29 đến 2005-08-30
SELECT film_id, title 
FROM film
WHERE film_id IN
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory ON 
inventory.inventory_id=rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-08-30')
ORDER BY title

---- TIM KHACH hang CO Amount >$11
SELECT first_name, last_name 
FROM customer AS c 
WHERE EXISTS
(SELECT * FROM payment AS p 
WHERE p.customer_id = c.customer_id AND
amount >11)

---
SELECT DISTINCT TO_CHAR(return_date,'YYYY-MM-dd') AS return_date FROM rental
ORDER BY return_date DESC




