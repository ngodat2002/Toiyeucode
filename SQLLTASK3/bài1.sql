USE AdventureWorks2019
GO
if exists (select * from sys.databases where name like 'example5') Drop database example5
go

create database example5
go
use example5
go

create table LopHoc(
MaLopHoc int primary key identity,
TenLopHoc varchar(10)
)
go


create table SinhVien(
MaSinhVien int primary key,
TenSinhVien nvarchar(40),
MaLopHoc int,
constraint ml foreign key (MaLopHoc) references LopHoc(MaLopHoc)
)
go
--tao bang san pham voi mot cot null, mot cot not null
create table sanpham (
masp int not null,
tensp varchar(40) null
)
go
--tao bang thuoc tinh default cho cot price
create table StoreProduct(
ProductID int NOT NULL,
Name varchar(40) NOT NULL,
price money not null default (100)
)
--thu kiem tra xem gia tri default co duoc su dung hay khong
insert into StoreProduct (ProductID,Name) values (111, 'Rivets')
go
--tao bang bang contactphone voi thuoc tinh identity
create table Contactphone(
Person_ID int IDENTITY(500,1) not null,
MobileNumber bigint not null

)
go
--tao cot nhan dang duy nhat tong the
create table CellularPhone(
Person_ID uniqueidentifier DEFAULT NEWID () not null,
personName varchar(60) not null
)
--chen dong record vao
insert into CellularPhone(personName) values('William Smith')
go
--kiem tra gia tri cua cot person_id tu dong sinh
select * from CellularPhone
go
--tao bang  contactphone voi cot moblienumber co thuoc tinh unique
create table ContactPhone (
Person_ID int primary key,
mobileNumber bigint unique,
ServiceProvider varchar(30),
LandlineNumber bigint unique
)
--chen 2 ban ghi co gia tri giong nhau o cot mobilenumber va landlinenumber de quan sat loi
insert into Contactphone values(101, 983345674,'Hutch',null)
insert into Contactphone values(101, 983345674,'Alex',null)
Go
--Tạo bảng PhoneExpenses có một CHECT ở cột Amount
CREATE TABLE PhoneExpenses (
Expense_ID int PRIMARY KEY,
MobileNumber bigint FOREIGN KEY REFERENCES ContactPhone
(MobileNumber),
Amount bigint CHECK (Amount >0)
)
GO
--Chỉnh sửa cột trong bảng
ALTER TABLE ContactPhone
ALTER COLUMN ServiceProvider varchar(45)
GO
--Xóa cột trong bảng
ALTER TABLE ContactPhone
DROP COLUMN ServiceProvider
GO
---Them một ràng buộc vào bảng
ALTER TABLE ContactPhone ADD CONSTRAINT CHK_RC CHECK(RentalCharges >0)
GO
--Xóa một ràng buộc
ALTER TABLE Person.ContactPhone
DROP CONSTRAINT CHK_RC