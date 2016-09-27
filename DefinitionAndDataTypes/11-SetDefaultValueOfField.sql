ALTER TABLE Users
ADD CONSTRAINT DefaultTimeValue DEFAULT GETDATE() FOR LastLoginTime

--ALTER COLUMN LastLoginTime SET DEFAULT GETDATE()
--Should be working, but doesn't?