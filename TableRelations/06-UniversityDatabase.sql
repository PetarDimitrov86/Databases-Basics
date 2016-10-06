CREATE TABLE Majors(
MajorID INT PRIMARY KEY,
Name VARCHAR(50))

CREATE TABLE Students(
StudentID INT PRIMARY KEY,
StudentNumber VARCHAR(50),
StudentName VARCHAR(50),
MajorID INT, FOREIGN KEY (MajorID) REFERENCES Majors(MajorID))

CREATE TABLE Payments(
PaymentID INT PRIMARY KEY,
PaymentDate DATE,
PaymentAmmount DECIMAL,
StudentID INT, FOREIGN KEY (StudentID) REFERENCES Students(StudentID))

CREATE TABLE Subjects(
SubjectID INT PRIMARY KEY,
SubjectName VARCHAR(50))

CREATE TABLE Agenda(
StudentID INT,
SubjectID INT,
PRIMARY KEY (StudentID, SubjectID),
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID))
