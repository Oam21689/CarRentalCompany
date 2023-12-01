# MySQL Database Interaction Script

This Python script provides a command-line interface for interacting with a MySQL database. It facilitates executing predefined SQL queries, updating records, and viewing data, tailored specifically for managing a car rental company database.

## Features

- Connects to a MySQL database using user-provided credentials.
- Executes SQL commands from external files for database setup and data insertion.
- Offers an interactive menu for performing specific queries and updates, including:
  - Listing all cars, customers, rentals, reservations, and payments.
  - Finding available cars, specific cars by registration number, cars by make and model, and cars in need of or currently under maintenance.
  - Showing car rentals and maintenance history for specific customers or cars.
  - Updating maintenance status for a car.
  - Listing cars rented within a specific time period.

## Prerequisites

- Python 3.x
- `mysql-connector-python` package
- Access to a MySQL server

## Installation

1. Ensure Python 3.x is installed on your system.
2. Install `mysql-connector-python` using pip:

  ```bash
  pip install mysql-connector-python
  ```

## Usage

1. Clone the repository.
2. Navigate into the cloned repo

```bash
	cd CarRentalCompany
```


3. Run the script with the following command:


4. Enter your MySQL credentials and host when prompted.
5. Use the interactive menu to choose the action you want to perform.

## Configuration

Before running the script, ensure the following:

- The MySQL server is running and accessible.
- The MySQL user credentials provided have the necessary privileges to create databases, and read/write data.
