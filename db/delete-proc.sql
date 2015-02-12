use Northwind;

go
if OBJECT_ID('dbo.delete_proc') is not null
	DROP PROC dbo.delete_proc;
go
create proc dbo.delete_proc
 @CustomerID varchar(5)
as
	Delete from dbo.Customers where CustomerID=@CustomerID;
go

select * from dbo.Customers order by CompanyName;
exec dbo.delete_proc '0439A'
select * from dbo.Customers order by CompanyName;