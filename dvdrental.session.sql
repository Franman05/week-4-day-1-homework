

--How many actors are there with the last name 'Wahlberg'?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'
--answer: 2

--How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

--What film does the store have the most of?(search in invertory)


--How many customers have the last name 'William'?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William'


--What store employee (get the id) sold the most rentals?
SELECT rentals, amount
FROM employee
GROUP BY amount
ORDER BY amount


--How many different district names are there?
SELECT name COUNT(DISTRICT amount)
FROM country
GROUP BY A-Z
ORDER BY A-Z


--What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, Count(film_actor)
FROM film
GROUP BY film_id
ORDER BY film_actor


--From store_id 1, how many customers have a last name ending with 'es'?(use customer table)
SELECT first_name, last_username, store_id
FROM customers
WHERE last_name LIKE '__es';

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)


--Within the film table, how many rating categories are there? And what rating has the most movies total?

