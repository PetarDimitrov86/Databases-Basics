ALTER TABLE Users
ADD CHECK (DATALENGTH(Password) >= 5)

--With this you can name your Constraint, while the version above generates a random constraint name
ALTER TABLE Users
ADD CONSTRAINT MinLengthConstraint CHECK (DATALENGTH(Password) >= 5)