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
('Pesho', 1.80, 73.50, 'm', '1986-07-08', 'Някъв супер смотаняк :D'),
('Ники', 1.85, 93.10, 'm', '1986-04-03', 'Biggest WorldStarHipHop Fan :)'),
('Лидка', 1.70, 63.50, 'm', '1994-09-29', 'Скоро има рожден ден'),
('Жоро', 1.82, 70.00, 'm', '1996-05-09', 'Ментор от Програминг бейсикс, сегашен трейнър на тех модула'),
('Светльо', 1.81, 90.00, 'm', '1986-10-11', 'Редовно взима нацепин :D')