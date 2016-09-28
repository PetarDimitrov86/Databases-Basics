CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Title VARCHAR(5),
Notes VARCHAR(MAX)
)

CREATE TABLE Customers
(
AccountNumber VARCHAR(15) UNIQUE,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
PhoneNumber VARCHAR(20) NOT NULL,
EmergencyName VARCHAR(50),
EmergencyNumber VARCHAR(20),
Notes VARCHAR(MAX)
)

CREATE TABLE RoomStatus
(
RoomStatus VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

CREATE TABLE RoomTypes
(
RoomType VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

CREATE TABLE BedTypes
(
BedType VARCHAR(50) NOT NULL,
Notes VARCHAR(MAX)
)

CREATE TABLE Rooms
(
RoomNumber VARCHAR(5) UNIQUE NOT NULL,
RoomType VARCHAR(50) NOT NULL,
BedType VARCHAR(50) NOT NULL,
Rate DECIMAL NOT NULL,
RoomStatus VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX)
)

CREATE TABLE Payments
(
Id INT IDENTITY PRIMARY KEY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
PaymentDate DATE,
AccountNumber VARCHAR(15) NOT NULL UNIQUE,
FirstDateOccupied DATE,
LastDateOcccupied DATE,
TotalDays INT NOT NULL,
AmountCharged DECIMAL NOT NULL,
TaxRate DECIMAL NOT NULL,
TaxAmmount DECIMAL NOT NULL,
PaymentTotal DECIMAL NOT NULL, 
Notes VARCHAR(MAX)
)

CREATE TABLE Occupancies
(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
DateOccupied DATE,
AccountNumber VARCHAR(15) UNIQUE NOT NULL,
RoomNumber VARCHAR(5) UNIQUE NOT NULL,
RateApplied DECIMAL NOT NULL,
PhoneCharge BIT NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Employees(FirstName, LastName, Title)
VALUES
('Petar', 'Dimitrov', 'Mr'),
('Nikolay', 'Petkov', 'Mr'),
('Lidiya', 'Plamenova', 'Mrs')

INSERT INTO Customers (AccountNumber, FirstName, LastName, PhoneNumber)
VALUES
('21451421342', 'Kobe', 'Bryant', '+17244152134'),
('245125123', 'LeBron', 'James', '+4917623965546'),
('213412412412', 'Steph', 'Curry', '+359885421351')

INSERT INTO RoomStatus (RoomStatus)
VALUES
('Available'),
('Unavailable'),
('Available')

INSERT INTO RoomTypes (RoomType)
VALUES 
('Single Bed'),
('Double Bed'),
('Suite')

INSERT INTO BedTypes (BedType)
VALUES
('Linen'),
('Wool'),
('Leather')

INSERT INTO Rooms (RoomNumber, RoomType, BedType, Rate, RoomStatus)
VALUES
('1242', 'Single Bed', 'Linen', 143.50, 'Available'),
('1351', 'Double Bed', 'Wool', 90.10, 'Unavailable'),
('403', 'Suite', 'Wool', 200.50, 'Available')

INSERT INTO Payments(EmployeeId, AccountNumber, TotalDays, AmountCharged, TaxRate, TaxAmmount, PaymentTotal)
VALUES
(1, '321415', 3, 150.42, 15.00, 17.00, 167.42),
(2, '23846738', 10, 1050.42, 150.00, 170.00, 1670.42),
(3, '23432432', 1, 50.42, 12.00, 15.00, 65.42)

INSERT INTO Occupancies(EmployeeId, AccountNumber, RoomNumber, RateApplied, PhoneCharge)
VALUES
(1, '4213425', '912', 150, 1),
(2, '425325432', '101', 200, 0),
(3, '12324124', '304', 10, 1)