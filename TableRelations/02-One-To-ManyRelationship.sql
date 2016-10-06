CREATE TABLE Manufacturers(
ManufacturerId INT IDENTITY,
Name VARCHAR(50),
EstablishedOn DATE)

CREATE TABLE Models(
ModelId INT IDENTITY (101,1),
Name VARCHAR(50),
ManufacturerId INT)

INSERT INTO Manufacturers (Name, EstablishedOn)
VALUES ('BMW', '07/03/1916'), ('Tesla', '01/01/2003'), ('Lada', '01/05/1966')

INSERT INTO Models (Name, ManufacturerId)
VALUES ('X1', 1), ('I6', 1), ('Model S', 2), ('Model X', 2), ('Model 3', 2), ('Nova', 3)

ALTER TABLE Models
ADD PRIMARY KEY(ModelId)

ALTER TABLE Manufacturers
ADD PRIMARY KEY(ManufacturerId)

ALTER TABLE Models
ADD FOREIGN KEY(ManufacturerId) REFERENCES Manufacturers(ManufacturerId)