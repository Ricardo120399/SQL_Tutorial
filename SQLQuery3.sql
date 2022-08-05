--Database creation--
CREATE DATABASE db_sql_tutorial;
USE db_sql_tutorial;

--Customers Table creation--
CREATE TABLE Customers(
	customer_id INT IDENTITY(1,1) PRIMARY KEY,
	first_name	VARCHAR(50) NOT NULL,
	last_name	VARCHAR(50) NOT NULL,
	country		VARCHAR(50) NULL,
	score		INT			NULL
);

--Insert customers data--
INSERT INTO Customers VALUES('Maria', 'Cramer ', 'Germany',350);
INSERT INTO Customers VALUES('John','Steel','USA', 900);
INSERT INTO Customers VALUES('Georg',' Pipps ', 'UK', 750);
INSERT INTO Customers VALUES('Martin','Müller','Germany', 500);
INSERT INTO Customers VALUES('Peter','Franken','USA', NULL);

--Orders table creation--
CREATE TABLE Orders(
	order_id	INT IDENTITY(1,1) PRIMARY KEY,
	customer_id	INT  NOT NULL,
	order_date	DATE NULL,
	quantity    INT  NULL
);

--Insert orders data--
INSERT INTO Orders VALUES(1,'2021-01-11',250);
INSERT INTO Orders VALUES(2,'2021-04-05',1150);
INSERT INTO Orders VALUES(3,'2021-06-18',500);
INSERT INTO Orders VALUES(6,'2021-08-31',750);

--Employees table creation--
CREATE TABLE Employees(
	emp_id		INT IDENTITY(1,1) PRIMARY KEY,
	first_name	VARCHAR(50) NOT NULL,
	last_name	VARCHAR(50) NOT NULL,
	emp_country VARCHAR(50) NULL,
	salary		INT			NULL
);

--Insert employees data--
INSERT INTO Employees VALUES('John', 'Steel', 'USA', 55000);
INSERT INTO Employees VALUES('Ann', 'Labrune', 'France', 75000);
INSERT INTO Employees VALUES('Marie', 'Bertrand', 'Brazil', 75000);
INSERT INTO Employees VALUES('Georg', 'Afonso', 'UK', 75000);
INSERT INTO Employees VALUES('Marie', 'Steel', 'UK', 75000);

