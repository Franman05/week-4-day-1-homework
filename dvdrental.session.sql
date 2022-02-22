

--Question 1. How many actors are there with the last name 'Wahlberg'?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'
--answer: 2

--Question 2. How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
--answer:5607

--Question 3. What film does the store have the most of?(search in invertory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
HAVING COUNT(film_id) > 7
--answer: tied with alot of 8

--Question 4. How many customers have the last name 'William'?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William'
--answer: 0


--Question 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
--answer: employee 2 with 7304

--Question 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address
--answer:378

--Question 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, Count(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY count DESC
--answer: film 508 with 15 actors

--Question 8. From store_id 1, how many customers have a last name ending with 'es'?(use customer table)
SELECT COUNT(store_id)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--answer: 13

--Question 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(amount)
FROM payment
WHERE rental_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250
--answer: 0

--Question 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY count DESC
--answer: 5 rating and PG-13 has the most with 223