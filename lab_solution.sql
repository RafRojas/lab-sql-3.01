use sakila;

CREATE TABLE staff_demo SELECT * FROM staff;
CREATE TABLE customer_demo SELECT * FROM customer;
CREATE TABLE rental_demo SELECT * FROM rental;
CREATE TABLE payment_demo SELECT * FROM payment;

SELECT * FROM staff_demo;

-- 1) Drop column picture from staff.

ALTER TABLE staff_demo
DROP COLUMN picture;

SELECT * FROM staff_demo;

-- 2) A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * FROM customer_demo
WHERE first_name LIKE 'TAMMY';

SELECT * FROM payment_demo
WHERE customer_id LIKE '75';

SELECT * FROM rental_demo
WHERE customer_id LIKE '75';

DELETE FROM payment_demo WHERE customer_id = 75;
DELETE FROM rental_demo WHERE customer_id = 75;
DELETE FROM customer_demo WHERE customer_id = 75;

SELECT * FROM staff_demo;

INSERT INTO staff_demo (staff_id, first_name, last_name, address_id, store_id, active, username)
VALUES 
('3', 'TAMMY', 'SANDERS', 4, 2, 1, 'tammy');

-- 3) Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 

SELECT * FROM rental;

SELECT * FROM customer_demo
WHERE first_name = 'CHARLOTTE' and last_name = 'HUNTER';

SELECT * FROM film
WHERE title = 'Academy Dinosaur';

SELECT * FROM inventory
WHERE film_id = 1;

SELECT * FROM staff
WHERE first_name = 'Mike';

INSERT INTO rental_demo (rental_id, rental_date, inventory_id, customer_id, staff_id)
VALUES 
('16050','2022-10-18', '1', '130', '1');

SELECT * FROM rental_demo;




Error Code: 1364. Field 'rental_date' doesn't have a default value

