-- Create the Car Rental Database
CREATE DATABASE IF NOT EXISTS CarRentalCompany;
USE CarRentalCompany;

-- Create Locations Table
CREATE TABLE Locations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    Address VARCHAR(255),
    ContactInformation VARCHAR(100)
    -- Additional fields can be added as needed
);

-- Create Cars Table
CREATE TABLE Cars (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year YEAR,
    RegistrationNumber VARCHAR(20) UNIQUE,
    CurrentLocationID INT,
    MaintenanceStatus ENUM('OK', 'Due', 'In') DEFAULT 'OK',
    VIN VARCHAR(17) UNIQUE,
    Mileage INT,
    RentalRatePerDay DECIMAL(10, 2),
    FOREIGN KEY (CurrentLocationID) REFERENCES Locations(LocationID)
);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    ContactNumber VARCHAR(15),
    DrivingLicenseNumber VARCHAR(50) UNIQUE,
    InsurancePolicyNumber VARCHAR(50),
    Email VARCHAR(255) UNIQUE
);

-- Create Rentals Table
CREATE TABLE Rentals (
    RentalID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    RentalDate DATE,
    ReturnDate DATE,
    RentalLocationID INT,
    ReturnLocationID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (RentalLocationID) REFERENCES Locations(LocationID),
    FOREIGN KEY (ReturnLocationID) REFERENCES Locations(LocationID)
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    ContactDetails VARCHAR(100),
    LocationID INT,
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

-- Create Maintenance Table
CREATE TABLE Maintenance (
    MaintenanceID INT AUTO_INCREMENT PRIMARY KEY,
    CarID INT,
    StartDate DATE,
    EndDate DATE,
    Description VARCHAR(255),
    Cost DECIMAL(10, 2),
    MaintenanceMileage INT,
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);

-- Create Payments Table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    RentalID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID)
);

-- Create Reservations Table
CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    CarID INT,
    ReservationDate DATE,
    PickupDate DATE,
    ReturnDate DATE,
    PickupLocationID INT,
    ReturnLocationID INT,
    Status ENUM('Reserved', 'Cancelled', 'Completed', 'Maintenance') DEFAULT 'Reserved',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (PickupLocationID) REFERENCES Locations(LocationID),
    FOREIGN KEY (ReturnLocationID) REFERENCES Locations(LocationID)
);