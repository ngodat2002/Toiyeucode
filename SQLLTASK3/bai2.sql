use example5
go
create table booklibary(
BookCode int primary key,
BookTitle varchar(100),
Author varchar(50),
Edition int,
BookPrice money,
Copies int,
)
go
select * from booklibary
go
--tao insert
insert into booklibary(BookCode,BookTitle,Author,Edition,BookPrice,Copies) values(101,'Hello My Friend','Meis',2020,$120,5)
insert into booklibary(BookCode,BookTitle,Author,Edition,BookPrice,Copies) values(302,'My dream  me with you','Niso',1953,$10,10)
insert into booklibary(BookCode,BookTitle,Author,Edition,BookPrice,Copies) values(150,'I Love You','Shir',1996,$50,15)
insert into booklibary(BookCode,BookTitle,Author,Edition,BookPrice,Copies) values(942,'I hate you','Nger',2021,$68,4)
insert into booklibary(BookCode,BookTitle,Author,Edition,BookPrice,Copies) values(845,'Book Limited','Me',2021,$12,1)
go
--tao bang member 
create table member(
MemBerCode int primary key,
Name nvarchar(50),
Address varchar(100),
PhoneNumber int,
)
go
select * from member
go
--tao insert
insert into member(MemBerCode,Name,Address,PhoneNumber) values (202,'Jhon Wick','New York',0394480757)
insert into member(MemBerCode,Name,Address,PhoneNumber) values (451,'Captian','Endland',548116962)
insert into member(MemBerCode,Name,Address,PhoneNumber) values (102,'Batman','New York',364413584)
insert into member(MemBerCode,Name,Address,PhoneNumber) values (364,'Superman','New York',79621651)
insert into member(MemBerCode,Name,Address,PhoneNumber) values (597,'Thor','Taiwan',11219999)
go
--tao bang thong tin muon sach
create table issuedetails(
IssueDate datetime,
ReturnDate datetime,
BookCode int,
MemBerCode int,
constraint ml foreign key (BookCode) references booklibary(BookCode),
constraint mk foreign key (MemBerCode) references member(MemBerCode)
)
go
select * from issuedetails
go

--tao insert 
insert into issuedetails(IssueDate,ReturnDate,BookCode,MemBerCode) values (2012/12/12,2012/12/12,101,202)
insert into issuedetails(IssueDate,ReturnDate,BookCode,MemBerCode) values (2012/12/12,2012/12/12,302,451)
insert into issuedetails(IssueDate,ReturnDate,BookCode,MemBerCode) values (2012/12/12,2012/12/12,150,102)
insert into issuedetails(IssueDate,ReturnDate,BookCode,MemBerCode) values (2012/12/12,2012/12/12,942,364)
insert into issuedetails(IssueDate,ReturnDate,BookCode,MemBerCode) values (2012/12/12,2012/12/12,845,597)
go
--xoa bang dl
drop table issuedetails
go
drop table booklibary
go
drop table member
go

--Xóa b? các ràng bu?c khóa ngo?i c?a b?ng IssueDetails
Alter table issuedetails drop constraint ml
go
Alter table issuedetails drop constraint mk
go
--Xóa b? ràng bu?c khóa chính c?a b?ng member và book
Alter table booklibary drop constraint PK_BookCode
Alter table member drop constraint PK_MemBerCode
go
--thêm mới ràng buộc khóa chính cho member và booklibary
alter table booklibary add constraint pk_book primary key(Author)
alter table member add constraint pk_mem primary key(Address)
--Bổ sung thêm Ràng buộc giá bán sách > 0 và < 200
ALTER TABLE booklibary 
ADD CONSTRAINT BookPrice CHECK (>0 AND <200);
go
--Bổ sung thêm Ràng buộc duy nhất cho PhoneNumber của bảng Member
alter table member add constraint pk_mer primary key(PhoneNumber)
--Bổ sung thêm ràng buộc NOT NULL cho BookCode, MemberCode trong bảng IssueDetails
ALTER TABLE issuedetails MODIFY BookCode int datatype NOT NULL;
--Tạo khóa chính gồm 2 cột BookCode, MemberCode cho bảng IssueDetails
ALTER TABLE issueDetails 
ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (BookCode,MemBerCode);
go
--Chèn dữ liệu hợp lý cho các bảng(Sử dụng SQL)