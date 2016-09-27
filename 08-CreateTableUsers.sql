CREATE TABLE Users
(
Id BIGINT IDENTITY,
Username NVARCHAR(30) UNIQUE NOT NULL,
Password NVARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(max),
LastLoginTime DATE,
IsDeleted BIT
)

ALTER TABLE Users
ADD PRIMARY KEY (Id)

INSERT INTO Users (Username, Password, LastLoginTime, IsDeleted)
VALUES
('lbmikesmith', '123456', '2016-09-27', 0),
('maxwell', 'randompass', '2016-09-27', 1),
('Alex0101', 'MasterChef', '2016-09-27', 0),
('Gesh4o', 'newCar', '2016-09-27', 0),
('lidenceto', 'catzRule', '2016-09-27', 1)