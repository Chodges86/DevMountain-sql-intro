-- List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date)
FROM employee;

-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date)
FROM employee;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column).
SELECT * FROM employee
WHERE reports_to = 2;

-- You will need to query the employee table to find the id for Nancy Edwards
SELECT employee_id, first_name, last_name FROM employee
WHERE first_name = 'Nancy';

-- Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';