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

/* Find the total number of customers
for each country and only include countries
that have more than 1 customer */
SELECT 
	COUNT(*) AS total_customers,
	country
FROM Customers
WHERE country != 'USA'
GROUP BY country
HAVING COUNT(*) > 1

/* Find all orders place from customers whose
score higher than 500 using the customers ID */
SELECT *
FROM Orders
WHERE customer_id IN (	
	SELECT customer_id
	FROM Customers
	WHERE score > 500
)

SELECT * 
FROM orders AS o 
WHERE EXISTS (
 SELECT 1 
 FROM customers AS c
 WHERE c.customer_id = o.customer_id
 AND score > 500)