-- Set the database to alx_book_store
USE alx_book_store;

-- Query to get the full description of the 'books' table
SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_DEFAULT, 
    COLUMN_KEY, 
    EXTRA 
FROM 
    information_schema.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'alx_book_store' 
    AND TABLE_NAME = 'Books';
