Use Phan2
go
--tao mot khung nhin chua danh sach các cuốn sách kèm theo số lượng đã bán được của  mỗi cuốn sách
create view V_Book_So as
select k.BookCode,k.Titile,k.Price,s.Ammount
from Book k
join BookSold as s on k.BookCode=s.BookCode
go
select * from V_Book_So
go
drop view V_Book_So
go
--3 tao khung nhìn chứa danh sách khách hàng
create view V_Customer_IX AS
SELECT c.CustomerId,c.CustomerName,c.Address,k.Ammount
from customer c
join BookSold as k on c.CustomerID=k.Ammount
go
select * from V_Customer_IX
go
drop view V_Customer_IX
go
--4 Tao mot khung nhin chua danh sach khach hang 
create view V_Customer_IV as
select c.CustomerId,c.CustomerName,c.Address,d.Date
from customer c
join BookSold as d on c.CustomerID=d.CustomerID
where d.Date < '1994/12/12'
go
select * from V_Customer_IV
go
drop VIEW V_Customer_IV 
GO