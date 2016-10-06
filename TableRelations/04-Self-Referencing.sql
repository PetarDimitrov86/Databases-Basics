CREATE TABLE Teachers(
TeacherID INT IDENTITY(101, 1),
Name VARCHAR(50),
ManagerID INT)

INSERT INTO Teachers (Name, ManagerID)
VALUES ('John', null), ('Maya', 106), ('Silvia', 106), ('Ted', 105), ('Mark', 101), ('Greta', 101)

ALTER TABLE Teachers
ADD PRIMARY KEY(TeacherID)

ALTER TABLE Teachers
ADD CONSTRAINT FK_Manager_Teacher FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)