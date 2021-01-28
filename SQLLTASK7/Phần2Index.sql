--Phan 2	
create database codelean
go
use codelean
go
create table Classes(
ClassName varchar(6),
Teacher varchar(30),
TimeSlot varchar(30),
Class int,
Lab int
)
go
insert into Classes(ClassName,Teacher,TimeSlot,Class,Lab) VALUES('T2010A','Dang Kim Thi','Database SQL',10,10)
insert into Classes(ClassName,Teacher,TimeSlot,Class,Lab) VALUES('T2010B','Ngo Chi Thanh Dat','HTML & CSS',5,3)
insert into Classes(ClassName,Teacher,TimeSlot,Class,Lab) VALUES('T2010C','Nguyen Quang Tuan','Boostrap and Jquery',2,3)
go
select * from Classes
go
drop table Classes
go
--indec ---chi muc
--1 tao an unique,clustered index ten la MyclusteredIndex tren truong ClassName
--chi muc unique
create UNIQUE INDEX MyclusteredIndex ON Classes(ClassName)
go
--clustered index
create Clustered index MyclustereddIndex
ON Classes(ClassName)
GO
--2 tap a nonclustered 
create NONCLUSTERED INDEX TeacherIndex
On Classes(Teacher)
go
--3 XOA CHI MUC tEACHERINDEX
DROP INDEX TeacherIndex on Classes
go
--4 xay dung lai MyclustereddIndex voi thuoc tinh Fillfactor
ALTER INDEX MyclustereddIndex ON Classes REBUILD WITH (FILLFACTOR=60)
--5Tao mot composite index ten la ClassLabIndex tren 2 truong CLass lAB
create index ClassesLabIndex on Classes(Class, Lab)
go
--6 viet cau lenh xem toan bo cac chi muc cua co so du lieu
 select * from codelean.dbo.Classes
 go