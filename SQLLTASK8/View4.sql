use phan4
go
--2,Tạo một khung nhìn chứa danh sách các sinh viên đã có ít nhất 2 bài thi (2 môn học khác nhau).
create view V_Subject as
select s.SubjectCode,s.SubjectName,p.PMark,p.WMark
from Subjects s
join Mark as p on p.SubjectCode=s.SubjectCode
where p.PMark < 6 OR P.WMark <50;
go
select * from V_Subject
go
drop view V_Subject
GO

--3,Tạo một khung nhìn chứa danh sách tất cả các sinh viên đã bị trượt ít nhất là một môn.
 create view V_Student as
 select s.RollNo,s.FullName,p.PMark,p.WMark
 from Student s 
 join Mark as p on  p.RollNo=s.RollNo
 where p.PMark <= 3 or p.WMark <=40 ;
go
select * from V_Student
GO
DROP VIEW V_Student
GO
 --4,Tạo một khung nhìn chứa danh sách các sinh viên đang học ở TimeSlot G.
 create view V_Time as
 select t.TimeSlot,t.ClassCode,p.FullName
 from Class t
 JOIN Student as p on p.ClassCode=t.ClassCode
 where  TimeSlot ='G' ;
 go
 select * from V_Time
 GO 
 DROP vIEW V_Time
 GO
 --5,TAo một khung nhìn chứa danh sách các giáo viên có ít nhất 3 học sinh thi trượt ở bất cứ môn nào.
 CREATE VIEW V_Teacher as
 select c.ClassCode,c.HeadTeacher,s.FullName
 from Class c
 join Student as s on s.ClassCode=c.ClassCode
go
select * from V_Teacher
go
drop view V_Teacher
go
 --6 Tạo một khung nhìn chứa danh sách các sinh viên thi trượt môn EPC của từng lớp. Khung nhìn 
 --này phải chứa các cột: Tên sinh viên, Tên lớp, Tên Giáo viên, Điểm thi môn EPC.