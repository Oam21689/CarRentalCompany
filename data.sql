-- Insert Sample Data into Locations Table
INSERT INTO Locations (Address, ContactInformation) VALUES
('1200 Sunset Hills Road, Reston, VA', '703-123-4567'),
('1425 Prince William Parkway, Woodbridge, VA', '703-234-5678'),
('10101 Battleview Parkway, Manassas, VA', '703-345-6789'),
('1961 Chain Bridge Rd, Tysons Corner, VA', '703-456-7890'),
('3200 Wilson Blvd, Arlington, VA', '703-567-8901'),
('1001 G Street NW, Washington, DC', '202-123-4567'),
('301 West Pratt Street, Baltimore, MD', '410-123-4567'),
('8505 Fenton Street, Silver Spring, MD', '301-123-4567'),
('4800 Hampden Lane, Bethesda, MD', '301-234-5678'),
('14301 Sullyfield Circle, Chantilly, VA', '703-678-9012'),
('6710 Oxon Hill Road, Oxon Hill, MD', '301-345-6789');

-- Insert Sample Data into Customers Table
INSERT INTO Customers (Name, ContactNumber, DrivingLicenseNumber, InsurancePolicyNumber, Email) VALUES
('John Smith', '555-123-4567', 'DL123456', 'IP987654', 'john.smith@email.com'),
('Alice Johnson', '555-234-5678', 'DL234567', 'IP876543', 'alice.johnson@email.com'),
('Bob Davis', '555-345-6789', 'DL345678', 'IP765432', 'bob.davis@email.com'),
('Emma Wilson', '555-456-7890', 'DL456789', 'IP654321', 'emma.wilson@email.com'),
('Michael Brown', '555-567-8901', 'DL567890', 'IP543210', 'michael.brown@email.com'),
('Olivia Lee', '555-678-9012', 'DL678901', 'IP432109', 'olivia.lee@email.com'),
('William Turner', '555-789-0123', 'DL789012', 'IP321098', 'william.turner@email.com'),
('Sophia Clark', '555-890-1234', 'DL890123', 'IP210987', 'sophia.clark@email.com'),
('Liam Hernandez', '555-901-2345', 'DL901234', 'IP109876', 'liam.hernandez@email.com'),
('Ava Adams', '555-012-3456', 'DL012345', 'IP098765', 'ava.adams@email.com');

-- Insert Sample Data into Cars Table
INSERT INTO Cars (Make, Model, Year, RegistrationNumber, CurrentLocationID, MaintenanceStatus, VIN, Mileage) VALUES
('Toyota', 'Corolla', 2020, 'VA1234', 1, 'OK', 'JT12345K2020001', 5000),
('Honda', 'Civic', 2019, 'VA1235', 1, 'OK', '2H23456G1910002', 8000),
('Ford', 'Focus', 2018, 'VA1236', 2, 'Due', '3F34567H1820003', 12000),
('Chevrolet', 'Cruze', 2017, 'VA1237', 2, 'OK', '1C45678J1720004', 15000),
('Nissan', 'Sentra', 2020, 'VA1238', 3, 'In', '1N56789K2020005', 3000),
('Hyundai', 'Elantra', 2019, 'VA1239', 3, 'Due', '5Y67890L1910006', 9500),
('Kia', 'Forte', 2018, 'VA1240', 4, 'OK', '5K90123M1820007', 11000),
('Subaru', 'Impreza', 2017, 'VA1241', 4, 'OK', '4S21234N1720008', 13000),
('Mazda', '3', 2020, 'VA1242', 5, 'OK', 'JM32345O2020009', 6000),
('Volkswagen', 'Jetta', 2019, 'VA1243', 5, 'OK', '3V43456P1910010', 7000),
('BMW', '3 Series', 2018, 'VA1244', 6, 'Due', 'WB14567Q1820011', 10000),
('Mercedes-Benz', 'C-Class', 2017, 'VA1245', 6, 'OK', 'MB55678R1720012', 14000),
('Audi', 'A4', 2020, 'VA1246', 7, 'OK', 'WA16789S2020013', 5500),
('Lexus', 'IS', 2019, 'VA1247', 7, 'In', 'JT17890T1910014', 8500),
('Toyota', 'Camry', 2018, 'VA1248', 8, 'OK', '4T18901U1820015', 9500),
('Honda', 'Accord', 2017, 'VA1249', 8, 'Due', '1H29012V1720016', 16000),
('Ford', 'Fusion', 2020, 'VA1250', 9, 'OK', '3F30123W2020017', 4200),
('Chevrolet', 'Malibu', 2019, 'VA1251', 9, 'In', '1G31234X1910018', 7800),
('Nissan', 'Altima', 2018, 'VA1252', 10, 'OK', '1N42345Y1820019', 10500),
('Hyundai', 'Sonata', 2017, 'VA1253', 10, 'Due', '5Y53456Z1720020', 13500);

-- Insert Sample Data into Employees Table
INSERT INTO Employees (Name, Role, ContactDetails, LocationID) VALUES
-- Location 1
('Emma Turner', 'Manager', '703-100-1001', 1),
('James Johnson', 'Employee', '703-100-1002', 1),
('Sophia Williams', 'Employee', '703-100-1003', 1),

-- Location 2
('Ava Davis', 'Manager', '703-200-1001', 2),
('William Brown', 'Employee', '703-200-1002', 2),
('Isabella Miller', 'Employee', '703-200-1003', 2),

-- Location 3
('Mia Wilson', 'Manager', '703-300-1001', 3),
('Lucas Moore', 'Employee', '703-300-1002', 3),
('Amelia Taylor', 'Employee', '703-300-1003', 3),

-- Location 4
('Ethan Anderson', 'Manager', '703-400-1001', 4),
('Logan Thomas', 'Employee', '703-400-1002', 4),
('Harper Jackson', 'Employee', '703-400-1003', 4),

-- Location 5
('Mason Martin', 'Manager', '703-500-1001', 5),
('Ella White', 'Employee', '703-500-1002', 5),
('Aiden Harris', 'Employee', '703-500-1003', 5),

-- Location 6
('Oliver Clark', 'Manager', '703-600-1001', 6),
('Lily Lewis', 'Employee', '703-600-1002', 6),
('Charlotte Walker', 'Employee', '703-600-1003', 6),

-- Location 7
('Noah Young', 'Manager', '703-700-1001', 7),
('Emma Hall', 'Employee', '703-700-1002', 7),
('Benjamin Allen', 'Employee', '703-700-1003', 7),

-- Location 8
('Olivia King', 'Manager', '703-800-1001', 8),
('Jacob Scott', 'Employee', '703-800-1002', 8),
('Zoe Wright', 'Employee', '703-800-1003', 8),

-- Location 9
('Michael Green', 'Manager', '703-900-1001', 9),
('Evelyn Adams', 'Employee', '703-900-1002', 9),
('Daniel Nelson', 'Employee', '703-900-1003', 9),

-- Location 10
('Abigail Baker', 'Manager', '703-100-2001', 10),
('Matthew Carter', 'Employee', '703-100-2002', 10),
('Madison Roberts', 'Employee', '703-100-2003', 10),

-- Location 11
('Ethan Turner', 'Manager', '703-110-1001', 11),
('Mia Anderson', 'Employee', '703-110-1002', 11),
('Alexander Thomas', 'Employee', '703-110-1003', 11);

-- Sample Data for Rentals Table
INSERT INTO Rentals (CustomerID, CarID, RentalDate, ReturnDate, RentalLocationID, ReturnLocationID, Price) VALUES
(2, 1, '2023-10-05', '2023-10-10', 1, 1, 350.00), -- Same location
(3, 4, '2023-09-18', '2023-09-22', 2, 2, 280.00), -- Same location
(5, 8, '2023-11-10', '2023-11-15', 3, 4, 450.00), -- Different return location
(7, 11, '2023-08-20', '2023-08-25', 4, 3, 320.00), -- Different return location
(8, 16, '2023-09-25', '2023-09-30', 5, 6, 390.00), -- Different return location
(9, 6, '2023-12-01', '2023-12-05', 6, 5, 300.00), -- Different return location
(10, 10, '2023-11-15', '2023-11-20', 7, 7, 420.00), -- Same location
(2, 3, '2023-10-12', '2023-10-17', 8, 9, 380.00), -- Different return location
(4, 5, '2023-08-30', '2023-09-03', 9, 8, 270.00), -- Different return location
(6, 13, '2023-11-05', '2023-11-09', 10, 11, 360.00); -- Different return location

-- Insert Sample Data into Reservations Table
INSERT INTO Reservations (CustomerID, CarID, ReservationDate, PickupDate, ReturnDate, PickupLocationID, ReturnLocationID, Status) VALUES
(1, 3, '2023-02-10', '2023-02-10', NULL, 1, 1, 'Maintenance'), -- Car 3 under maintenance
(2, 4, '2023-01-20', '2023-01-22', '2023-01-29', 2, 3, 'Reserved'),
(1, 5, '2023-03-05', '2023-03-05', NULL, 2, 2, 'Maintenance'), -- Car 5 under maintenance
(3, 6, '2023-01-25', '2023-01-27', '2023-02-03', 3, 1, 'Reserved'),
(1, 7, '2023-04-01', '2023-04-01', NULL, 3, 3, 'Maintenance'), -- Car 7 under maintenance
(4, 8, '2023-02-15', '2023-02-17', '2023-02-24', 4, 2, 'Reserved'),
(1, 10, '2023-05-20', '2023-05-20', NULL, 4, 4, 'Maintenance'), -- Car 10 under maintenance
(5, 9, '2023-03-10', '2023-03-12', '2023-03-19', 5, 5, 'Cancelled'), -- Canceled reservation
(6, 11, '2023-06-01', '2023-06-03', '2023-06-10', 1, 6, 'Reserved'),
(7, 12, '2023-06-15', '2023-06-15', NULL, 2, 2, 'Cancelled'); -- Canceled reservation

-- Sample Data for Payments Table
INSERT INTO Payments (RentalID, PaymentDate, Amount, PaymentMethod) VALUES
(1, '2023-10-11', 350.00, 'Credit Card'),
(2, '2023-09-23', 280.00, 'Cash'),
(3, '2023-11-16', 450.00, 'Credit Card'),
(4, '2023-08-26', 320.00, 'Debit Card'),
(5, '2023-10-01', 390.00, 'Credit Card'),
(6, '2023-12-06', 300.00, 'Cash'),
(7, '2023-11-21', 420.00, 'Credit Card'),
(8, '2023-10-18', 380.00, 'Debit Card'),
(9, '2023-09-04', 270.00, 'Credit Card'),
(10, '2023-11-10', 360.00, 'Credit Card');

-- Insert Sample Data into Maintenance Table
INSERT INTO Maintenance (CarID, StartDate, EndDate, Description, Cost, MaintenanceMileage) VALUES
(1, '2023-01-15', '2023-01-17', 'Oil change and brake check', 120.00, 4800),
(2, '2023-01-20', '2023-01-22', 'Tire replacement', 300.00, 7500),
(3, '2022-01-15', '2022-01-17', 'Routine check-up', 150.00, 11000),
(4, '2022-02-15', '2022-02-17', 'Engine tuning', 250.00, 14000),
(5, '2023-03-05', NULL, 'General inspection', 100.00, 2800), -- Under maintenance
(6, '2022-03-20', '2022-03-22', 'Oil change', 120.00, 9000),
(7, '2023-04-01', NULL, 'Brake pad replacement', 180.00, 10000), -- Under maintenance
(8, '2023-04-15', '2023-04-17', 'Suspension check', 150.00, 12000),
(9, '2023-05-01', '2023-05-03', 'Air filter change', 90.00, 5500),
(10, '2023-05-20', NULL, 'Wheel alignment', 200.00, 6500), -- Under maintenance
(11, '2022-06-01', '2022-06-03', 'Oil change and brake check', 130.00, 9800),
(12, '2022-06-15', '2022-06-17', 'Tire replacement', 320.00, 13500),
(13, '2023-07-10', '2023-07-12', 'Battery replacement', 210.00, 5400),
(14, '2023-07-20', NULL, 'Engine tuning', 260.00, 8600), -- Under maintenance
(15, '2023-08-05', '2023-08-07', 'General inspection', 110.00, 9300),
(16, '2023-08-15', NULL, 'Oil change', 125.00, 10500), -- Under maintenance
(17, '2023-09-01', '2023-09-03', 'Brake pad replacement', 190.00, 10100),
(18, '2023-09-15', NULL, 'Suspension check', 160.00, 7600), -- Under maintenance
(19, '2023-10-01', '2023-10-03', 'Air filter change', 95.00, 10400),
(20, '2023-10-15', NULL, 'Wheel alignment', 210.00, 13100); -- Under maintenance