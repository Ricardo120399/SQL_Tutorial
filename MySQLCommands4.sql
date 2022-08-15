use db_sql_tutorial
/* List all customer names, where the name is
combination of first name and last name */
SELECT 
	CONCAT(first_name, ' ', last_name) as "Customers full name"
FROM Customers

-- List the first name of all customers in uppercase --
SELECT 
	UPPER(first_name) as upper_firstname
FROM Customers

-- List the first name of all customers in lowercase --
SELECT 
	LOWER(first_name) as lower_firstname
FROM Customers

-- Remove white spaces of all lastname --
SELECT
	TRIM(last_name) AS clean_last_name
FROM Customers

-- Find the length of last name of all customers --
SELECT
	LENGTH(TRIM(last_name)) AS clean_last_name
FROM Customers

-- SUBSTRING --
SELECT
	last_name,
SUBSTRING(last_name, 2, 3) AS "Substring"
FROM Customers

DESCRIBE Customers

/* Insert new customers Anna Nixon from UK */
INSERT INTO customers VALUES (DEFAULT, 'Anna', 'Nixon', 'UK',NULL)

-- Insert new customer Max Lang --
INSERT INTO customers VALUES (DEFAULT, 'Max', 'Lang', 'China', 989)

INSERT INTO customers VALUES (DEFAULT, 'Jose', 'Rosario', NULL, NULL)

INSERT INTO customers
	(first_name, last_name)
VALUES('Fernanda', 'Ramirez')

-- Change the country of customer ID 7 to Germany --
UPDATE customers
SET country = 'Germany'
WHERE customer_id = 7

/* Change the score of customer Anna to 100
and change her country from UK to USA */
UPDATE Customers
SET country = 'USA',
	score = 100
WHERE customer_id = 6

/* Delete both new customers Anna and Max from
our database */
DELETE FROM customers
WHERE customer_id IN (6,7,8,9,10)

/* Truncate customers() this command is dangerous!! when you use it you are tellign the sql to delete all the data from your table, do not use it unless is really 
necesary */