use lpu
drop database lpu
CREATE TABLE tblEmployee
(
 Id int Primary Key,
 Name nvarchar(30),
 Salary int,
 Gender nvarchar(10),
 DepartmentId int
)
Insert into tblEmployee values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3,'Pam', 6000, 'Female', 1)

CREATE TABLE tblEmployeeAudit
(
 Id int identity(1,1) primary key,
 AuditData nvarchar(1000)
)

--After Insert Trigger
CREATE TRIGGER tr_tblEMployee_ForInsert
ON tblEmployee
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END

insert into tblEmployee values(10,'ABC',7000,'Male',5)
insert into tblEmployee values(11,'abcd', 8500,'male',6)
---------------------------------------------------
select *from tblEmployee
select *from tblEmployeeAudit
---------------------------------------------------

--After Delete Trigger
CREATE TRIGGER tr_tblEMployee_ForDelete
ON tblEmployee
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted
 
 insert into tblEmployeeAudit 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END

delete from tblEmployee where Id=10

--instead of trigger
create trigger insteadof2 on tblEmployee
instead OF delete
as 
declare @id int;
declare @sal int;
select @id = Id from deleted;
select @sal = Salary from deleted;
 
 BEGIN
 if(@sal>5000)
 BEGIN
 RAISERROR('cannot delete where salary > 5000',16,1);
 rollback;
 end
 else
 BEGIN
 delete from tblEmployee where Id =@id;
 commit;
 insert into tblEmployeeAudit
 values('An existing employee with ID = ' + cast(@Id as nvarchar(5)) + 'is deleted at' +cast(getdate()as nvarchar(20)))
 end
 END
-------------------------
delete from tblEmployee where Salary=8500;