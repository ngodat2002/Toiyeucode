use ASM2
GO
--4.Viet cau lenh truy van 
--4.a,Hien thi tat ca cac hang san xuat
select Name from Trademarkk
go
--4.b,Hien thi tat ca cac san pham
Select Name FROM productt
go
--5.a,Liet ke danh sach hang theo thu tu nguoc alphabet
select Name from Trademarkk
order by Name DESC
GO
--5.b,liet ke danh sach san pham cua cua hang theo thu tu giam dan 
select name from productt
order by name DESC
GO
--5.c,liet ke thong tin cua hang asus
select name,Tel,Address from Trademarkk
WHERE TraID=123
GO
--5.d,liet ke danh sach san pham con it hon 11 chiec trong kho
select CatID,Qty from productt
where Qty<11
go
--5.e,liet ke danh san pham cua hang ASUS

--6.a so hang san pham cua cua hang co
select Name from Trademarkk
go
--6.b,so mat hang ma cua hang ban
select Name from productt
go
--6.c,tong so loai san pham cua moi hang trong cua hang

--6.d,tong so dau san pham cua cua hang


