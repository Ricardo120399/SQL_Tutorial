use db_sql_tutorial
SELECT
	first_name AS per_first_name,
	last_name AS per_first_name,
	country AS per_country
FROM customers
UNION
SELECT
	first_name,
	last_name,
	emp_country
FROM Employees

/* Find the total number of customers */
SELECT SUM(quantity) AS sum_quantity
FROM Orders

/* Find the average score of all customers */
SELECT AVG(score) AS avg_score
FROM Customers

-- Find the highest score of all customers --
SELECT MAX(score) AS max_score
FROM Customers

-- Find the lowest score of all customers --
SELECT MIN(score) AS low_score
FROM customers