-- Retrieve all data and columns from customers
SELECT * 
FROM Customers

-- Retrieve only first name and country of all customers
SELECT
	first_name,
	country
FROM Customers

-- List all countries of all customers without duplicates
SELECT DISTINCT
	country
FROM Customers

/* Retrieve all customers where the result
is sorted by score (smallest first) */
SELECT *
FROM Customers
ORDER BY score ASC

/* Retrieve all customers where the result
is sorted by score (highest first) */
SELECT *
FROM Customers
ORDER BY score DESC

/* Retrieve all customers, sorting the result by
country (alphabetically) and then by score (highest
first) */
SELECT *
FROM Customers
ORDER BY country ASC, score DESC

-- Retrieve only two customers --
SELECT top 2 *
FROM Customers

-- List only german customers --
SELECT *
FROM Customers
WHERE country = 'Germany'

-- Find all customers whose score is higher than 500 --
SELECT *
FROM Customers
WHERE score > 500

-- Find all customers whose score is less than 500 --
SELECT *
FROM Customers
WHERE score < 500

-- Find all customers whose score is less than or equal to 500 --
SELECT *
FROM Customers
WHERE score <= 500

-- Find all customers whose score is higher than or equal to 500 --
SELECT *
FROM Customers
WHERE score >= 500

-- Find all not german customers --
SELECT *
FROM Customers
WHERE country <> 'Germany'

/* Find all customers who come from Germany
and whose score is less than 400 */
SELECT *
FROM Customers
WHERE country = 'Germany' AND score < 400

/* Find all customers who come from Germany
or whose score is less than 400 */
SELECT *
FROM Customers
WHERE country = 'Germany' OR score < 400