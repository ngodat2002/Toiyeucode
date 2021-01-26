create database ASM2
GO
USE ASM2
GO

--bang product
 create table productt(
 Name varchar(50),
 Description varchar(50),
 Unit varchar(50),
 Price money,
 Qty int,
 CatID varchar(50),
 constraint ok foreign key (CatID) references categoryy(CatID)
 )
 go
insert into productt (Name,Description,Unit,Price,Qty,CatID) values ('Computer T450','OLD','Piece',$1000,10,'Computer')
insert into productt (Name,Description,Unit,Price,Qty,CatID) values ('Phone NOkia5670','HOT','Piece',$200,200,'Phone')
insert into productt (Name,Description,Unit,Price,Qty,CatID) values ('IN SamSung 450','Medium','Piece',$100,10,'IN')
go
select * from productt
go
drop table productt
go
--BANG Category
create table categoryy(
CatID varchar(50) primary key,
Name varchar(50),

)
go
insert into categoryy(CatID,Name) values('Computer','Computer T450')
insert into categoryy(CatID,Name) values('Phone','Phone Nokia 4670')
insert into categoryy(CatID,Name) values('IN','May IN SamSung 450')
go
select * from categoryy
go
drop table categoryy
go
--Bang Trademark
create table Trademarkk(
Stt int identity,
TraID int,
Name varchar(50) primary key,
Address varchar(50),
Tel int
)
go
insert into Trademarkk(TraID,Name,Address,Tel)values(123,'Asus','USA',983232)
insert into Trademarkk(TraID,Name,Address,Tel)values(456,'MacBook','England',2348415)
insert into Trademarkk(TraID,Name,Address,Tel)values(789,'DELL','VietNamese',37849599)
go
select * from Trademarkk
go
drop table Trademarkk
go
