create database codelean2
go
use codelean2
go
create table Student
(
StudentNo int primary key,
StudentName varchar(50),
StudentAddress varchar(100),
PhoneNo int
)
go
insert into Student(StudentNo,StudentName,StudentAddress,PhoneNo) VALUES (101,'Ngo Chi Thanh Dat','Bac Ninh',0394480757)
insert into Student(StudentNo,StudentName,StudentAddress,PhoneNo) VALUES (202,'Nguyen Quang Tuan','Yen Phong',0386684837)
insert into Student(StudentNo,StudentName,StudentAddress,PhoneNo) VALUES (303,'Nguyen Thi Anh Tam','Dong Tien',039485999)
insert into Student(StudentNo,StudentName,StudentAddress,PhoneNo) VALUES (404,'Do Thi Thanh Thao','Yen Trung',0345699999)
select * from Student
go
drop table Student
go
--Bang  Department
create table Department(
DeptNo int primary key,
DeptName varchar(50),
ManagerName varchar(30)
)
go
Insert into Department(DeptNo,DeptName,ManagerName) values(123,'Superman','Ngo Chi Thanh Dat')
Insert into Department(DeptNo,DeptName,ManagerName) values(456,'BatMan','Nguyen Quang Tuan')
Insert into Department(DeptNo,DeptName,ManagerName) values(789,'Superman','Nguyen Thi Anh Tam')
Insert into Department(DeptNo,DeptName,ManagerName) values(678,'Superman','Do Thi Thanh Thao')
select * from Department
go
drop table Department
go
--Bang Assignment
create table Assignment (
AssignmentNo int primary key,
Description varchar(100),
)
go
Insert into Assignment(AssignmentNo,Description) VALUES (20,'HTML & CSS')
Insert into Assignment(AssignmentNo,Description) VALUES (10,'Boostrap & Jquery')
Insert into Assignment(AssignmentNo,Description) VALUES (5,'Javascript')
Insert into Assignment(AssignmentNo,Description) VALUES (15,'Database SQL')
select * from Assignment
go
drop table Assignment
go
--Bang Work_Assign
create table Work_Assign
(
JobID int primary key,
StudentNo int,
AssignmentNo int,
TotalHours int ,
JobDetails varchar(450),
constraint ok foreign key (StudentNo) references Student(StudentNo),
constraint oh foreign key (AssignmentNo) references Assignment(AssignmentNo)
)
go
Insert into Work_Assign(JobID,StudentNo,AssignmentNo,TotalHours,JobDetails) values (11,101,20,5,'No Hand In LATE :))')
Insert into Work_Assign(JobID,StudentNo,AssignmentNo,TotalHours,JobDetails) values (22,202,10,2,'No Hand In LATE :))')
Insert into Work_Assign(JobID,StudentNo,AssignmentNo,TotalHours,JobDetails) values (33,303,5,3,'No Hand In LATE :))')
Insert into Work_Assign(JobID,StudentNo,AssignmentNo,TotalHours,JobDetails) values (44,404,10,1,'No Hand In LATE :))')
GO 
SELECT * FROM Work_Assign
GO 
DROP TABLE Work_Assign
GO

--2 Tao mot clustered Index IX_Student tren cot studenno cua  bang student
create Clustered index IX_Student
ON Student(StudentNo)
GO
--3Chinh sua va xay dung lai rebuild IX_Student da duoc tao tren  bang student
ALTER INDEX IX_Student on Student REBUILD
--4 tao mot chi non clustered index ten la IX_Dept Tren bang DepartMent Du dung 2 truong khong khoa DeptName vA DeptManagerNo
create NONCLUSTERED INDEX IX_Dept
On Department(DeptName,DeptManagerNo)
go