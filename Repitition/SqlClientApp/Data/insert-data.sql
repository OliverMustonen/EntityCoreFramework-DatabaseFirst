DECLARE @FirstName nvarchar(50) SET @FirstName = 'Axel'
DECLARE @LastName nvarchar(50) SET @LastName = 'Fredrikson'
DECLARE @Email nvarchar(100) SET @Email = 'axel.fredrikson@gmail.com'
DECLARE @AddressLine nvarchar(50) SET @AddressLine = 'Patronvägen 90'
DECLARE @ZipCode nvarchar(50) SET @ZipCode = '7420 69'
DECLARE @City nvarchar(50) SET @City = 'Stockholm'
DECLARE @AddressId int SET @AddressId = 1

IF NOT EXISTS (SELECT Id FROM Addresses WHERE AddressLine = @AddressLine AND ZipCode = @ZipCode) INSERT INTO Addresses (AddressLine, ZipCode, City) OUTPUT INSERTED.Id VALUES (@AddressLine, @ZipCode, @City) ELSE SELECT Id FROM Addresses WHERE AddressLine = @AddressLine AND ZipCode = @ZipCode

IF NOT EXISTS (SELECT Id FROM Users WHERE Email = @Email) INSERT INTO Users (FirstName, LastName, Email, AddressId) OUTPUT INSERTED.Id  VALUES (@FirstName, @LastName, @Email, @AddressId) ELSE SELECT Id FROM Users WHERE Email = @Email
	
SELECT * FROM Users
SELECT * FROM Addresses