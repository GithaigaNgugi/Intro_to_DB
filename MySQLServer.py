import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host= "127.0.0.1", 
            port= 3306,       # Update with your MySQL server host if not on localhost
            user="root",    # Replace with your MySQL username
            password= "Githaiga001#" # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            
            # Attempt to create the database
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            print("Database 'alx_book_store' created successfully!")
            
    except Error as e:
        print(f"Error: '{e}'")
        
    finally:
        # Ensure the cursor and connection are closed
        if 'cursor' in locals():
            cursor.close()
        if connection.is_connected():
            connection.close()
            print("MySQL connection closed")

# Run the function if script is executed
if __name__ == '__main__':
    create_database()