-- Set the database to alx_book_store
USE alx_book_store;

-- Insert a single row into the customers table, update if it already exists
INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.')
ON DUPLICATE KEY UPDATE 
    customer_name = 'Cole Baidoo', 
    email = 'cbaidoo@sandtech.com', 
    address = '123 Happiness Ave.';
