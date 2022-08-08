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
SELECT COUNT(*) AS total_customers
FROM Customers

/* Find the total quantity of all orders */
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

-- Find the total number of customers for each country --
SELECT
	COUNT(*) AS total_customers,
	country
FROM Customers
GROUP BY country 
ORDER BY total_customers DESC

-- Find the highest score of customers for each country --
SELECT
	MAX(score) AS max_score,
	country
FROM Customers
GROUP BY country
ORDER BY max_score DESC