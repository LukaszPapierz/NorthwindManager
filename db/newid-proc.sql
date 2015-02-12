use Northwind;

go
if OBJECT_ID('dbo.newid_proc') is not null
	DROP PROC dbo.newid_proc;
go
create proc dbo.newid_proc
as
DECLARE @myID varchar(100);
SET @myID = NEWID();

DECLARE @newID varchar(100);
set @newID = SUBSTRING(@myID, 1, 5);

while exists (select * from dbo.Customers where CustomerID=@newID)
begin
	SET @myID = NEWID();
	set @newID = SUBSTRING(@myID, 1, 5);
end

select @newID;
go 

exec dbo.newid_proc