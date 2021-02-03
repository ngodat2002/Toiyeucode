use LabSp
go

--2.Viết câu lệnh tạo thủ tục lưu trữ có tên là HeavyToys cho phép liệt kê tất cả các loại đồ chơi có trọng lượng lớn hơn 500g
create procedure HeavyToys
as
select * from ToyzUnlimit
where Netweight>500
GO
--3.Viết câu lệnh tạo Thủ tục lưu trữ có tên là PriceIncrease cho phép tăng giá của tất cả các loại đồ chơi lên thêm 10 đơn vị giá.
CREATE PROCEDURE PriceIncrease
AS
SELECT * FROM ToyzUnlimit
UPDATE ToyzUnlimit
set UnitPrice+10
--4.Viết câu lệnh tạo Thủ tục lưu trữ có tên là QtyOnHand làm giảm số lượng đồ chơi còn trong của hàng mỗi thứ 5 đơn vị.
create procedure QtyOnHand
as
select * from ToyzUnlimit
update ToyzUnlimit 
set QtyOnHand-10
go
--5.Thực thi 3 thủ tục lưu trữ trên.
EXECUTE HeavyToys
GO
EXECUTE PriceIncrease
go
EXECUTE QtyOnHand
go
