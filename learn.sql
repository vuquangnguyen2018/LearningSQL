-- BAI THI 1 

-- 1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.

-- The answer should be customers 187 and 148.
 

-- 2. How many films begin with the letter J?

-- The answer should be 20.

-- 3. What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?

-- The answer is Eddie Tomlin

-- -- ANSWER QUESTION 1
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id  
HAVING SUM(amount)>=110;

-- -- ANSWER QUESTION 2
SELECT COUNT(title) FROM film
WHERE title LIKE 'J%'

-- -- ANSWER QUESTION 3

SELECT first_name, last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id<500
ORDER BY customer_id DESC
LIMIT 1;

-- LESSON : JOIN 

SELECT payment_id, payment.customer_id, first_name FROM customer
INNER JOIN payment
ON payment.customer_id=customer.customer_id 

