use db_sql_tutorial

/* Insert new customers Anna Nixon from UK */
INSERT INTO customers VALUES ('Anna', 'Nixon', 'UK',NULL)

-- Insert new customer Max Lang --
INSERT INTO customers VALUES ('Max', 'Lang', 'China', 989)

INSERT INTO customers VALUES ('Jose', 'Rosario', NULL, NULL)

INSERT INTO customers
	(first_name, last_name)
VALUES('Fernanda', 'Ramirez')

-- Change the country of customer ID 7 to Germany --
UPDATE customers
SET country = 'Germany'
WHERE customer_id = 7

/* Change the score of customer Anna to 100
and change her country from UK to USA */
UPDATE Customers
SET score = 100,
	country = 'USA'
WHERE first_name = 'Anna'

/* Delete both new customers Anna and Max from
our database */
DELETE FROM customers
WHERE customer_id IN (6,7,8,9)


