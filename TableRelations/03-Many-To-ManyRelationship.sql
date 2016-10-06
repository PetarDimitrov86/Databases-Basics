CREATE TABLE Students(
StudentID INT IDENTITY,
Name VARCHAR (50))

CREATE TABLE Exams(
ExamID INT IDENTITY(101, 1),
Name VARCHAR(50)
)

CREATE TABLE StudentsExams(
StudentID INT NOT NULL,
ExamID INT NOT NULL
)

INSERT INTO Students (Name)
VALUES ('Mila'), ('Toni'), ('Ron')

INSERT INTO Exams (Name)
VALUES ('Spring MVC'), ('Neo4j'), ('Oracle 11g')

INSERT INTO StudentsExams (StudentID, ExamID)
VALUES (1, 101), (1, 102), (2, 101), (3, 103), (2, 102), (2, 103)

ALTER TABLE Students
ADD PRIMARY KEY (StudentID)

ALTER TABLE Exams
ADD PRIMARY KEY(ExamID)

ALTER TABLE StudentsExams
ADD PRIMARY KEY (StudentID, ExamID)

ALTER TABLE StudentsExams
ADD CONSTRAINT FK_StudentsExams_Students FOREIGN KEY (StudentID) 
REFERENCES Students(StudentID)

ALTER TABLE StudentsExams
ADD CONSTRAINT FK_StudentsExams_Exams FOREIGN KEY (ExamID)
REFERENCES Exams(ExamID)