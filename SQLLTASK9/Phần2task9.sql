create database LabSp
go
use LabSp
go
create table ToyzUnlimit
(
ProductCode varchar(7) primary key,
Name varchar(30),
Category varchar(30),
Manufacturer varchar(40),
AgeRange varchar(15),
UnitPrice money,
Netweight int,
QtyOnHand int
)
go
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY11','Dragon Ball 7','Build','Ngo Chi Thanh Dat','6-18 Age',$2000,500,15)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY22','Doll','Build','AnhTam','3-5 Age',$150,1000,100)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY33','Batman','Build','Quang Tuan','6-20 Age',$1500,800,20)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY44','SuperMan','Build','Van Thanh','8-19 Age',$1000,560,12)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY55','Thor','Build','Duy Hoang','10-17 Age',$900,570,25)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY66','Spider Man','Build','Phuong Nha','5-26 Age',$1560,500,30)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY77','DOLL BATMAN','Build','Van Phuong','9-19 Age',$1502,600,150)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY88','DOLL SuperMan','Build','Thanh Thao','5-20 Age',$700,500,505)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY99','Doll Spider Man','Build','Ngo Dat','7-18 Age',$4000,550,21)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY991','Doll Thor','Build',' Thanh Dat','9-18 Age',$1700,500,36)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY992','Toyz Toyz','The Set','Ngo Chi ','2-18 Age',$2000,690,54)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY993','Kunz Toyx','The Set','Ba Bac','1-18 Age',$2000,650,22)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY994','Sonoku & Cadic','The Set','Nguyen Thao','3-18 Age',$1450,780,98)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY995','Cell3&Cell4','The Set','Do Thao','5-21 Age',$112,600,154)
insert into ToyzUnlimit(ProductCode,Name,Category,Manufacturer,AgeRange,UnitPrice,Netweight,QtyOnHand)values('TOY996','Vegeta&Kirilin','The Set','Do Thi Thanh Thao','6-22 Age',$840,500,10)
go
select * from ToyzUnlimit
go
drop table ToyzUnlimit
go

