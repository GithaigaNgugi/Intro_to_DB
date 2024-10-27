import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server using TCP/IP
        connection = mysql.connector.connect(
            host="127.0.0.1",         # Replace with your MySQL server host IP if not on localhost
            port=3306,                # Default MySQL port
            user="root",     # Replace with your MySQL username
            password="Githaiga001#"  # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()

            # Attempt to create the database
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(f"Error: '{err}'")

    except Exception as e:
        print(f"An unexpected error occurred: {e}")

    finally:
        # Ensure the cursor and connection are closed
        if 'cursor' in locals():
            cursor.close()
        if connection and connection.is_connected():
            connection.close()
            print("MySQL connection closed")

# Run the function if the script is executed
if __name__ == '__main__':
    create_database()
