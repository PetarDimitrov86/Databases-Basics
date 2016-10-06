CREATE TABLE Persons(
PersonId INT IDENTITY,
FirstName VARCHAR(50),
Salary DECIMAL,
PassportID INT NOT NULL 
)

CREATE TABLE Passports(
PassportId INT IDENTITY(101,1),
PassportNumber VARCHAR(20)
)

INSERT INTO Persons (FirstName, Salary, PassportID)
VALUES ('Roberto', 43300, 102), ('Tom', 56100, 103), ('Yana', 60200, 101)

INSERT INTO Passports (PassportNumber)
VALUES ('N34FG21B'), ('K65LO4R7'), ('ZE657QP2')

ALTER TABLE Persons
ADD PRIMARY KEY (PersonId)

ALTER TABLE Passports
ADD PRIMARY KEY (PassportId)

ALTER TABLE Persons
ADD CONSTRAINT FK_Persons_Passports FOREIGN KEY (PassportId)
REFERENCES Passports(PassportId)
