use AdventureWorks2019
go

--4. Viet lenh truy van de
--4.a,liet ke danh sach khach hang da mua o cua hang
Select Name from customer
go
--4.b,Liet ke danh sach san pham cua cua hang
Select Cate from Category
go
--4.c,Liet ke cac don dat hang cua cua hang
Select MaDonHang,GoodsName from orders
GO
--5.a,Liet ke danh sach khach hang theo van alphabet
select * from customer
order by Name
go
--5.b,Liet ke danh san pham cua cua hang theo thu tu giam dan 
select * from Category
Order by Cate DESC
go
--5.c,Liet ke san pham ma khach hang nguyen van an da mua
select *from orders
where MaDonHang=456
go
--6.a,So khach hang da mua o cua hang 
select Name from customer
go
--6.b,So mat hang ma cua hang ban
select sum(Ammount) AS 'So mat hang dang ban' from orderDetails
go
--6.c,Tong tien cua tung don hangR

--7.aViet cau lenh thay doi truong gia tri cua mat hang la duong