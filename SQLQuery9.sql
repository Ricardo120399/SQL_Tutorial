use db_sql_tutorial;

/* Create new SQL table called persons with 4 columns:
ID, person name, birth date and phone */
CREATE TABLE person(
	id INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL UNIQUE
);

/* Create new SQL table called persons with 4 columns:
ID, person name, birth date and phone */
ALTER TABLE person
ADD email VARCHAR(15) NOT NULL

-- Delete the new table person from the database --
DROP TABLE person

SELECT *
FROM person