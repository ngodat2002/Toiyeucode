use AdventureWorks2019
go
 --Bang Product
create table Product(
STT int identity,
GoodsName varchar(50),
Description varchar(200),
Unit varchar(20),
Price money
)
go
insert into Product(GoodsName,Description,Unit,Price) Values ('Computer T450','New Goods' ,'Piece',$1000)
Insert into Product(GoodsName,Description,Unit,Price) values ('Phone Nokia5670','Hot Goods' ,'Piece',$200)
Insert into Product(GoodsName,Description,Unit,Price) values ('In SamSung 450','Normal Goods' ,'Piece',$100)
go

select * from Product
go
--bang category
create table Category(
Stt int identity,
Cate varchar(50)
)
go
insert into Category(Cate) values ('Computer'),('Phone'),('In')
GO
SELECT * FROM Category
GO
drop table Category
go
--bang order
create table orders (
STT int identity,
MaDonHang int,
GoodsName varchar(50),
Price money
)
go
insert into orders(MaDonHang,GoodsName,Price) Values (123,'Computer T450',$1000)
insert into orders(MaDonHang,GoodsName,Price) Values (123,'Phone Nokia 5670',$200)
insert into orders(MaDonHang,GoodsName,Price) Values (456,'In SamSung 450',$100)
insert into orders(MaDonHang,GoodsName,Price) Values (456,'In LG 450',$200)
go
select * from orders
go
drop table orders
go
--Bang order details
create table orderDetails(
STT int identity,
Details varchar(100),
Unit varchar(50),
Ammount int 
)
go
insert into orderDetails(Details,Unit,Ammount) VALUEs('New','Piece',1),('Phone Hot','Piece',2 ),('Normal','Piece',1),('Hot','Piece',3)
go
select * from orderDetails
go
drop table orderDetails
go
--Bang customer
create table customer(
Name varchar(50),
Address varchar(100),
Phone int,
Date_Goods datetime
)
go
Insert into customer (Name,Address,Phone,Date_Goods) values ('Ngo Chi Thanh Dat','784 Phao Dai Lang Dong Da Ha Noi',394480757,'2020/11/22'),('Nguyen Van An','Thanh Xuan Ha Noi',0366473990,'2020/12/12')

go
select * from customer
go
drop table customer
go
