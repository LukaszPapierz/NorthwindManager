go
if OBJECT_ID('dbo.update_proc') is not null
	DROP PROC dbo.update_proc;
go
create proc dbo.update_proc
 @CustomerID varchar(5),
 @CompanyName varchar(60), 
 @ContactName varchar(60), 
 @ContactTitle varchar(60), 
 @Address varchar(60), 
 @City varchar(60), 
 @Region varchar(60), 
 @PostalCode varchar(60), 
 @Country varchar(60), 
 @Phone varchar(60), 
 @Fax varchar(60)
as
	UPDATE Customers
		set 
		CustomerID = @CustomerID,
		CompanyName = @CompanyName,
		ContactName = @ContactName, 
		ContactTitle = @ContactTitle, 
		Address = @Address, 
		City = @City, 
		Region = @Region, 
		PostalCode = @PostalCode, 
		Country = @Country, 
		Phone = @Phone, 
		Fax = @Fax
	WHERE CustomerID = @CustomerID;
go

exec dbo.update_proc '4AC5F', 'AAAAAA', 'Mariaa', 'Salesa', 
'Obere Str. 58', 'Berlin8', 'Regi8', '12208', 'Germany8', '030-00743218', '030-0076548'

select * from dbo.Customers order by CompanyName;