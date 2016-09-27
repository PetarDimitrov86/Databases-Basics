CREATE TABLE People 
(
Id INT NOT NULL IDENTITY PRIMARY KEY,
Name VARCHAR(200) NOT NULL,
Picture VARBINARY(2),
Height FLOAT(2),
Weight FLOAT(2),
Gender CHARACTER(1) NOT NULL,
Birthdate DATE NOT NULL,
Biography VARCHAR(max)
)

INSERT INTO People(Name, Height, Weight, Gender, Birthdate, Biography)
VALUES
('Pesho', 1.80, 73.50, 'm', '1986-07-08', '����� ����� �������� :D'),
('����', 1.85, 93.10, 'm', '1986-04-03', 'Biggest WorldStarHipHop Fan :)'),
('�����', 1.70, 63.50, 'm', '1994-09-29', '����� ��� ������ ���'),
('����', 1.82, 70.00, 'm', '1996-05-09', '������ �� ���������� �������, ������� ������� �� ��� ������'),
('�������', 1.81, 90.00, 'm', '1986-10-11', '������� ����� ������� :D')