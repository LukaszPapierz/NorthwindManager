use Northwind;

go
if OBJECT_ID('dbo.rownum') is not null
	DROP PROC dbo.rownum;
go	
create proc dbo.rownum
	@name varchar(20),
	@nr int
as
declare @order varchar(20);
set @order='';
declare @dir varchar(20);

if @nr = 1
	set @order = 'CustomerID ASC';
else if @nr = 2		
	set @order = 'CustomerID DESC';
else if @nr = 3		
	set @order = 'CompanyName ASC';
else if @nr = 4		
	set @order = 'CompanyName DESC';
else if @nr = 5		
	set @order = 'ContactName ASC';
else if @nr = 6		
	set @order = 'ContactName DESC';
	
declare @Q varchar(1000);
set @Q = ' 	
WITH Rows AS (
   SELECT ROW_NUMBER() OVER(ORDER BY '+@order+') AS Row,
   CustomerID AS CID FROM dbo.Customers )
   SELECT top 1 Row FROM Rows WHERE CID ='''+ @name+'''';

exec(@Q);
go

select * from dbo.Customers as C order by ContactName asc; 

exec dbo.rownum 'MORGK', 5