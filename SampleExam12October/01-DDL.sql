CREATE TABLE DepositTypes(
DepositTypeID INT PRIMARY KEY IDENTITY,
Name VARCHAR(20)
)

CREATE TABLE Deposits(
DepositID INT IDENTITY PRIMARY KEY,
Amount DECIMAL(10, 2),
StartDate DATE,
EndDate DATE,
DepositTypeID INT,
CustomerID INT,
CONSTRAINT FK_Deposits_DepositType FOREIGN KEY(DepositTypeID) REFERENCES DepositTypes(DepositTypeID),
CONSTRAINT FK_Deposits_Customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE EmployeesDeposits(
EmployeeID INT,
DepositID INT,
CONSTRAINT PK_EmployeesDeposits PRIMARY KEY(EmployeeID, DepositID),
CONSTRAINT FK_EmployeesDeposits_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
CONSTRAINT FK_EmployeesDeposits_Deposits FOREIGN KEY (DepositID) REFERENCES Deposits(DepositID)
)

CREATE TABLE CreditHistory(
CreditHistoryID INT PRIMARY KEY IDENTITY,
Mark CHAR(1),
StartDate DATE,
EndDate DATE,
CustomerID INT,
CONSTRAINT FK_CreditHistory_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE Payments(
PaymentID INT PRIMARY KEY IDENTITY,
Date DATE,
Amount DECIMAL (10, 2),
LoanID INT,
CONSTRAINT FK_Payments_Loan FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
)

CREATE TABLE Users(
UserID INT PRIMARY KEY IDENTITY,
UserName VARCHAR(20),
Password VARCHAR(20),
CustomerID INT UNIQUE,
CONSTRAINT FK_Users_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
ALTER TABLE Employees
ADD ManagerID INT

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Employees FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
