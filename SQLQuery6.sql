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