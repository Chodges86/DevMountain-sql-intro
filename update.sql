-- Find all customers with fax numbers and set those numbers to null.
UPDATE customer
SET fax = null
WHERE fax LIKE '%'; -- THIS WORKS BUT I COULD NOT GET IT TO WORK WITH: WHERE fax != null;

-- Find all customers with no company (null) and set their company to “Self”.
UPDATE customer
SET company = 'Self'
WHERE company = null; -- THIS IS NOT WORKING

-- Find the customer Julia Barnett and change her last name to Thompson.
SELECT * FROM customer
WHERE first_name = 'Julia';

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28;

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
SELECT * FROM track
WHERE genre_id = 3 AND composer = null; -- THIS IS NOT WORKING