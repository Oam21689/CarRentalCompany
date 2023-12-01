import mysql.connector
import sys
import os
import getpass

def run_sql_file(filename, connection):
    with open(filename, 'r') as sql_file:
        sql_script = sql_file.read()

    for statement in sql_script.split(';'):  
        if statement.strip():
            cursor = connection.cursor()
            cursor.execute(statement)
            cursor.close()

def execute_query(cursor, query, params=None):
    cursor.execute(query, params or ())
    result = cursor.fetchall()
    for row in result:
        print(row)

def main():
    if len(sys.argv) < 3:
        print("Usage: python run.sql.py <path_to_structure_sql_file> <path_to_data_sql_file>")
        sys.exit(1)

    structure_sql_file_path = sys.argv[1]
    data_sql_file_path = sys.argv[2]

    database_name = os.path.splitext(os.path.basename(structure_sql_file_path))[0]

    user = input("Enter your MySQL username: ")
    password = getpass.getpass("Enter your MySQL password: ")
    host = input("Enter your MySQL host (default '127.0.0.1'): ") or '127.0.0.1'

    try:
        connection = mysql.connector.connect(
            user=user, 
            password=password, 
            host=host
        )

        cursor = connection.cursor()

        # Initial SQL file execution
        run_sql_file(structure_sql_file_path, connection)
        run_sql_file(data_sql_file_path, connection)

        # Interactive query execution
        while True:
            print("\nChoose an action:")
            print("1. List All Cars")
            print("2. Find Available Cars")
            print("3. List Customers")
            print("4. Find Specific Car by Registration Number")
            print("5. List All Rentals")
            print("6. Show Car Rentals for a Specific Customer")
            print("7. List Cars in Need of Maintenance")
            print("8. Display Cars Currently Under Maintenance")
            print("9. Show Maintenance History of a Specific Car")
            print("10. Find Employees at a Specific Location")
            print("11. Calculate Total Earnings from Rentals")
            print("12. List All Reservations")
            print("13. Show All Maintenance Records with Costs Above a Certain Value")
            print("14. Find Cars by Make and Model")
            print("15. List All Payments")
            print("16. Show Reservations for a Specific Car")
            print("17. Update Maintenance Status for a Car")
            print("18. List Cars and Their Current Locations")
            print("19. Show Total Maintenance Costs for Each Car")
            print("20. List Cars Rented in a Specific Time Period")
            print("N. Exit")
            choice = input("Enter your choice: ")

            if choice == '1':
                execute_query(cursor, "SELECT * FROM Cars;")
            elif choice == '2':
                execute_query(cursor, "SELECT * FROM Cars WHERE MaintenanceStatus = 'OK';")
            elif choice == '3':
                execute_query(cursor, "SELECT * FROM Customers;")
            elif choice == '4':
                reg_num = input("Enter the car's registration number: ")
                execute_query(cursor, "SELECT * FROM Cars WHERE RegistrationNumber = %s;", (reg_num,))
            elif choice == '5':
                execute_query(cursor, "SELECT * FROM Rentals;")
            elif choice == '6':
                customer_id = input("Enter the customer ID: ")
                execute_query(cursor, "SELECT * FROM Rentals WHERE CustomerID = %s;", (customer_id,))
            elif choice == '7':
                execute_query(cursor, "SELECT * FROM Cars WHERE MaintenanceStatus = 'Due';")
            elif choice == '8':
                execute_query(cursor, "SELECT * FROM Cars WHERE MaintenanceStatus = 'In';")
            elif choice == '9':
                car_id = input("Enter the car ID: ")
                execute_query(cursor, "SELECT * FROM Maintenance WHERE CarID = %s;", (car_id,))
            elif choice == '10':
                location_id = input("Enter the location ID: ")
                execute_query(cursor, "SELECT * FROM Employees WHERE LocationID = %s;", (location_id,))
            elif choice == '11':
                execute_query(cursor, "SELECT SUM(Price) FROM Rentals;")
            elif choice == '12':
                execute_query(cursor, "SELECT * FROM Reservations;")
            elif choice == '13':
                cost_value = input("Enter the cost value: ")
                try:
                    cost_value = float(cost_value)  # Convert input to float
                    execute_query(cursor, "SELECT * FROM Maintenance WHERE Cost > %s;", (cost_value,))
                except ValueError:
                    print("Invalid cost value. Please enter a numeric value.")
            elif choice == '14':
                car_make = input("Enter the car make: ")
                car_model = input("Enter the car model: ")
                execute_query(cursor, "SELECT * FROM Cars WHERE Make = %s AND Model = %s;", (car_make, car_model))
            elif choice == '15':
                execute_query(cursor, "SELECT * FROM Payments;")
            elif choice == '16':
                car_id = input("Enter the car's ID: ")
                execute_query(cursor, "SELECT * FROM Reservations WHERE CarID = %s;", (car_id,))
            elif choice == '17':
                car_id = input("Enter the car's ID: ")
                new_status = input("Enter the new maintenance status: ")
                execute_query(cursor, "UPDATE Cars SET MaintenanceStatus = %s WHERE CarID = %s;", (new_status, car_id))
                print("Maintenance status updated successfully.")
            elif choice == '18':
                execute_query(cursor, "SELECT Cars.CarID, Cars.Make, Cars.Model, Locations.Address FROM Cars JOIN Locations ON Cars.CurrentLocationID = Locations.LocationID;")
            elif choice == '19':
                execute_query(cursor, "SELECT CarID, SUM(Cost) AS TotalCost FROM Maintenance GROUP BY CarID;")
            elif choice == '20':
                start_date = input("Enter the start date (YYYY-MM-DD): ")
                end_date = input("Enter the end date (YYYY-MM-DD): ")
                execute_query(cursor, "SELECT * FROM Rentals WHERE RentalDate BETWEEN %s AND %s;", (start_date, end_date))
            elif choice.upper() == 'N':
                break
            else:
                print("Invalid choice. Please try again.")

        cursor.close()

    except mysql.connector.Error as err:
        print(f"Error: {err}")
        connection = None
    finally:
        if connection and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    main()
