/*create student table
in table youll have name, roll no primary key,reg id, city, stream, department;
create student audit table
roll no as primary, audit record nvarchar datatype;
require to implement after insert trigger along with the date and time;*/
use Trig
CREATE TABLE student
(
 roll_no int Primary Key,
 Name nvarchar(30),
 reg_id int,
 city nvarchar(10),
  stream varchar(10),
  department varchar(10)
)
insert into student values (1,'Rahul',100,'Delhi','Engineer','CSE'),(2,'Vivek',101,'Delhi','Doctor','MBBS'),
                           (3,'Ayush',102,'Jalandhar','Engineer','ECE');

create table student_audit
(
    roll_no int identity(1,1) primary key,
    audit_record nvarchar(1000)
)
create trigger student_trigger1
on student
for insert
as
begin
 declare @roll int
 select @roll = roll_no from inserted
 
 insert into student_audit 
 values('New Student with roll number  = ' + Cast(@roll as nvarchar(5)) + ' is added at ' + cast(Getdate()as nvarchar(20)))
end

insert into student values (4,'Franc',105,'Phagwara','CS', 'BCA')
insert into student values(5,'Franc',105,'Phagwara','CS', 'BCA')
select *from student
select *from student_audit
drop table student_audit
drop table student
