use db_sql_tutorial
/* List all customer names, where the name is
combination of first name and last name */
SELECT 
	CONCAT(first_name, ' ', last_name) AS "Customers full name"
FROM Customers

-- List the first name of all customers in uppercase --
SELECT 
	UPPER(first_name) AS upper_first_name
FROM Customers

-- List the first name of all customers in lowercase --
SELECT 
	LOWER(first_name) AS lower_first_name
FROM Customers

-- Remove white spaces of all lastname --
SELECT 
	RTRIM(LTRIM(last_name)) AS clean_last_name
FROM Customers 

-- Find the length of last name of all customers --
SELECT 
	RTRIM(LTRIM(last_name)) AS clean_last_name,
	LEN(last_name) AS len_last_name
FROM Customers 
