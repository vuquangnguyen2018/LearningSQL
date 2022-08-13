SELECT f1.title, f2.title, f1.length 
FROM film AS f1 
INNER JOIN film AS f2 
ON f1.film_id != f2.film_id 
AND f1.length=f2.length