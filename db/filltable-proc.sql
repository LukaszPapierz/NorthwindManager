use Northwind;

go
if OBJECT_ID('dbo.filltable') is not null
	DROP PROC dbo.filltable;
go	
create proc dbo.filltable
	@colname int
as

if @colname = 1
	SELECT * FROM dbo.Customers order by CustomerID ASC;
else if @colname = 2		
	SELECT * FROM dbo.Customers order by CustomerID DESC;
else if @colname = 3		
	SELECT * FROM dbo.Customers order by CompanyName ASC;
else if @colname = 4		
	SELECT * FROM dbo.Customers order by CompanyName DESC;
else if @colname = 5		
	SELECT * FROM dbo.Customers order by ContactName ASC;
else if @colname = 6		
	SELECT * FROM dbo.Customers order by ContactName DESC;
go

exec dbo.filltable 1;