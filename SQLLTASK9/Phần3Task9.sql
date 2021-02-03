use LabSp
go

--1.
--Thủ tục lưu trữ hệ thống sp_helptext
sp_helptext 'ToyzUnlimit'
go
-- Khung nhìn hệ thống sys.sql_modules
select definition from sys.sql_modules
where object_id=OBJECT_ID('ToyzUnlimit')
go
-- Hàm OBJECT_DEFINITION()
SELECT OBJECT_DEFINITION(OBJECT_ID('ToyzUnlimit')) as definition
go
--2.Viết câu lệnh hiển thị đối tuowjgn phụ thuộc vào mỗi thủ tục lưu trữ trên
sp_depends 'ToyzUnlimit'
go
--3Chỉnh sửa thủ tục PriceIncreasevà QtyOnHand thêm câu lệnh cho phép hiển thị giá trị mới đã được cập nhật của các trường (UnitPrice,QtyOnHand).

--4. Viết câu lệnh tạo thủ tục lưu trữ có tên là SpecificPriceIncrease thực hiện cộng thêm tổng số sản phẩm (giá trị trường QtyOnHand)vào giá của sản phẩm đồ chơi tương ứng.

--5Chỉnh sửa thủ tục lưu trữ SpecificPriceIncrease cho thêm tính năng trả lại tổng số các bản ghi được cập nhật.

--6 Chỉnh sửa thủ tục lưu trữ SpecificPriceIncrease cho phép gọi thủ tục HeavyToysbên trong nó

--7Thực hiện điều khiển xử lý lỗi cho tất cả các thủ tục lưu trữ được tạo ra.

--8Xóa bỏ tất cả các thủ tục lưu trữ đã được tạo ra
drop 