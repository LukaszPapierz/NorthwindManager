use Northwind;

go
if OBJECT_ID('dbo.insert_proc') is not null
	DROP PROC dbo.insert_proc;
go
create proc dbo.insert_proc
 @newID varchar(5),
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

INSERT INTO dbo.Customers(
CustomerID, CompanyName, ContactName, ContactTitle, 
Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES (
@newID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, 
@Region, @PostalCode, @Country, @Phone, @Fax)

go 

exec dbo.insert_proc 'asda', 'A', 'Maria Andersss', 'Sales Representative', 
'Obere Str. 57', 'Berlin', 'Region', '12209', 'Germany', '030-0074321', '030-0076545'

select * from dbo.Customers order by CompanyName;