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