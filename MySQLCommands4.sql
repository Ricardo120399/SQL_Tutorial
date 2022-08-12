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