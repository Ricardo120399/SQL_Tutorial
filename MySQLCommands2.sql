/* Find all customers whose score falls
int the range between 100 and 500 */
SELECT *
FROM Customers
WHERE score BETWEEN 100 AND 500
-- Is a good practice to use it logical operators instead of the Between keyword --
SELECT *
FROM Customers
WHERE score >= 100 AND score <= 500

-- Find all customers whose ID is equal to 1, 2 or 5 --
SELECT *
FROM Customers
WHERE customer_id IN (1,2,5)

SELECT *
FROM Customers
WHERE customer_id = 1 
OR customer_id = 2
OR customer_id = 5 

/* Find all customers whose first name
starts with M */
SELECT *
FROM Customers
Where first_name LIKE 'M%'

/* Find all customers whose first name
ends with n */
SELECT *
FROM Customers
Where first_name LIKE '%n'

/* Find all customers whose first name
contains r */
SELECT *
FROM Customers
Where first_name LIKE '%r%'

/* Find all customers whose first name
contains r in 3rd position */
SELECT *
FROM Customers
Where first_name LIKE '__r%'

-- SQL Aliases --
SELECT
	c.customer_id AS cid
from Customers AS c

/* List customer ID, first name, Order ID, quantity.
Exclude the customers who have not placed any orders */
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id

/* List customer ID, first name, Order ID, quantity.
Include the customers who have not placed any orders */
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id 
ORDER BY quantity ASC

/* List customer ID, first name, Order ID, quantity.
Include all orders, regardless of whether there is a
matching customer */
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id 
ORDER BY quantity ASC

/* List customer ID, first name, Order ID, quantity.
Include everything! All customers and all orders */
SELECT
 c.customer_id,
 c.first_name,
 o.order_id,
 o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
UNION 
SELECT
 c.customer_id,
 c.first_name,
 o.order_id,
 o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id