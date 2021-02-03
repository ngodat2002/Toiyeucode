use AdventureWorks2019
go
/*** Tao MOUDLE7 ***/
CREATE PROCEDURE sp_DisplayEmployeesHireYear
@HireYear int
as
select * from HumanResources.Employee
WHERE DATEPART (YY,HireDate)=@HireYear
go
--De chay thu tuc nay can phai truyefn vao tham so la nam ma nhan vien vao lam

execute sp_DisplayEmployeesHireYear 2008
go
--Tao thu tuc luu tru dem so luong vao lam trong mot nam xac dinh co tham so dau vao la mot nam tham so dau ra la so nguoi vao lam trong nam
create procedure sp_EmployeesHireYearCount
@HireYear int,
@Count int OUTPUT
AS 
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY/ HireDate)=@HireYear
--CHay thu tu  luu tru can phai truyen vao 1 tham so dau vao va mot tham so dau ra
declare @Number int
execute sp_EmployeesHireYearCount 2008, @Number OUTPUT
PRINT @Number
go
--
create procedure sp_EmployeesHireYearCount2
@HireYear int,
as
declare @Count int  
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY/ HireDate)=@HireYear
return @Count 
go
declare @Number int 
execute @Number = sp_EmployeesHireYearCount2 2008
print @Number
go

--Tao bang student 
create table #Students(
RoolNo Varchar(6) constraint Pk_Students primary key,
FullName nvarchar(100),
BirthDay datetime  constraint DF_StudentsBirthday Default Dateadd(yy,-18,Getdate()) 
)
go
--tao thu tuc luu tru tam de chen du lieu vao bang tam 
create procedure #spInsertStudents
@rollNo varchar(6),
@fullName nvarchar(100),
@birthDay datetime
as begin
if(@BirthDay is null)
set @BirthDay=DATEADD(YY,-18,GETDATE())
insert into #Students(RoolNo,FullName,BirthDay)
values (@rollNo,@fullName,@birthDay)
end
go
--Su dung thu tuc luu tru de chen du lieu vao bang tam
exec #spStudents 'A12345' ,'abc',Null
exec #spStudents 'A54321','abc','12/24/2011'
select * from #Students
--tao thu tuc luu tru tam de xoa du lieu tu bang tam theo roll no
create procedure #spDeleteStudents
@RollNo varchar(6)
as begin
delete from #Students where @RollNo=@rollNo
end
go
--Xoa du lieu su dung thu tuc cau luu tru
exec #spDeleteStudents 'A12345'
go
--Tao mot thu tuc luu tru su dung lenh return tra ve mot so nguyen
create procedure Cal_Square @num int=0 as
begin 
return (@num * @num);
end
go
--CHay thu tuc luu tru 
declare @square int;
exec @square = Cal_Square 10;
print @square;
go
--Xem dinh nghia thu tuc luu tru bang ham OBJECT_DEFINTITON
SELECT OBJECT_DEFINITION(OBJECT_ID('HumanResources.upsUpdateEmployeePersonalInfo')) as definition
--xem dinh nghia thu tuc luu tru bang
select definition from sys.sql_modules
where object_id=OBJECT_ID('HumanResources.upsUpdateEmployeePersonalInfo')
go
--thu tuc luu tru he thong xem cac thanh phan ma thu tuc luu tru phu thuoc
sp_depends 'HumanResources.upsUpdateEmployeePersonalInfo'
go
USE AdventureWorks2019
GO
--Tạo thủ tục lưu trữ sp_DisplayEmployees
CREATE PROCEDURE sp_DisplayEmployees AS
SELECT * FROM HumanResources.Employee
GO
--Thay đổi thủ tục lưu trữ sp_DisplayEmployees
ALTER PROCEDURE sp_DisplayEmployees AS
SELECT * FROM HumanResources.Employee
WHERE Gender='F'
GO
--Chạy thủ tục lưu trữ sp_DisplayEmployees
EXEC sp_DisplayEmployees
GO

--Xóa một thủ tục lưu trữ
DROP PROCEDURE sp_DisplayEmployees
GO

--
CREATE PROCEDURE sp_EmployeeHire
AS
BEGIN
--Hiển thị
EXECUTE sp_DisplayEmployeesHireYear 1999
DECLARE @Number int
EXECUTE sp_EmployeesHireYearCount 1999, @Number OUTPUT
PRINT N'Số nhân viên vào làm năm 1999 là: ' +
CONVERT(varchar(3),@Number)
END
GO
--Chạy thủ tục lưu trữ
EXEC sp_EmployeeHire
GO

--Thay đổi thủ tục lưu trữ sp_EmployeeHire có khối TRY ... CATCH
ALTER PROCEDURE sp_EmployeeHire
@HireYear int
AS
BEGIN
BEGIN TRY
EXECUTE sp_DisplayEmployeesHireYear @HireYear
DECLARE @Number int
--Lỗi xảy ra ở đây có thủ tục sp_EmployeesHireYearCount chỉ truyền 2 tham số mà ta truyền 3

EXECUTE sp_EmployeesHireYearCount @HireYear, @Number OUTPUT,

'123'

PRINT N'Số nhân viên vào làm năm là: ' +

CONVERT(varchar(3),@Number)
END TRY
BEGIN CATCH
PRINT N'Có lỗi xảy ra trong khi thực hiện thủ tục lưu trữ'
END CATCH
PRINT N'Kết thúc thủ tục lưu trữ'
END
GO
--Chạy thủ tục sp_EmployeeHire
EXEC sp_EmployeeHire 1999
--Xem thông báo lỗi bên Messages không phải bên Result
GO

--Thay đổi thủ tục lưu trữ sp_EmployeeHire sử dụng hàm @@ERROR
ALTER PROCEDURE sp_EmployeeHire
@HireYear int
AS
BEGIN
EXECUTE sp_DisplayEmployeesHireYear @HireYear
DECLARE @Number int
--Lỗi xảy ra ở đây có thủ tục sp_EmployeesHireYearCount chỉ truyền 2 tham số mà ta truyền 3
EXECUTE sp_EmployeesHireYearCount @HireYear, @Number OUTPUT,
'123'
IF @@ERROR <> 0
PRINT N'Có lỗi xảy ra trong khi thực hiện thủ tục lưu trữ'
PRINT N'Số nhân viên vào làm năm là: ' +
CONVERT(varchar(3),@Number)
END
GO
--Chạy thủ tục sp_EmployeeHire
EXEC sp_EmployeeHire 1999
--Xem thông báo lỗi bên Messages không phải bên Result