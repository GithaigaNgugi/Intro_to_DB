USE alx_book_store;

-- Check if customer with customer_id=2 exists
SELECT CASE 
    WHEN EXISTS (SELECT 1 FROM customer WHERE customer_id = 2) THEN 
        'Customer with ID 2 already exists.' 
    ELSE 
        'Customer with ID 2 does not exist, proceeding with insertion.' 
END;

-- Check if customer with customer_id=3 exists
SELECT CASE 
    WHEN EXISTS (SELECT 1 FROM customer WHERE customer_id = 3) THEN 
        'Customer with ID 3 already exists.' 
    ELSE 
        'Customer with ID 3 does not exist, proceeding with insertion.' 
END;

-- Check if customer with customer_id=4 exists
SELECT CASE 
    WHEN EXISTS (SELECT 1 FROM customer WHERE customer_id = 4) THEN 
        'Customer with ID 4 already exists.' 
    ELSE 
        'Customer with ID 4 does not exist, proceeding with insertion.' 
END;

-- Insert multiple rows
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES 
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');
