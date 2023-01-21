-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL REFERENCES person(id),
    product_name VARCHAR(255),
    product_price DECIMAL,
    quantity INT
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES(1, 'headlight', 16.99, 1),
(2, 'knitting needles', 5.99, 2),
(1, 'speedometer sensor', 35.99, 1),
(3, 'Goosebumps book', 12.99, 1),
(4, 'Lego set', 19.99, 1);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT COUNT(*) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price)
FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price)
FROM orders
WHERE person_id = 1;