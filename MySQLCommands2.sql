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