create database lpu
use lpu
create table student(RollNo int, Name varchar(20), 
Age int, Gender varchar(20), City varchar(25),
State varchar(25), Country varchar(25), Degree varchar(20), 
Duration_years int)
select *from student
insert into student values(101,'Ritika',17,'F','Gurdaspur','Punjab','India','BCA',3),
(102,'Navam',17,'M','Amritsar','Punjab','India','BSc(CS)', 3),
(216,'Roopum', 18, 'M', 'Kollam','Kerala','India','BCA',4),
(311, 'Dinesh',19,'M','Kannur','Kerala','India','BSc(IT)',3),
(111,'Ritika',19,'F','Amritsar','Punjab','India','BSc(CS)',3),
(115,'Pritpal Singh',20, 'M','Gurdaspur','Punjab','India','BCA', 4),
(309,'Ali', 18, 'M', 'Kabul','Balkh', 'Afghanistan', 'BSc(CS)',3),
(310,'Bannu',17,'F','Kabul','Balkh','Afghanistan','BCA',3)
select distinct country from student
select count(distinct country)from student
select *from student where city='Gurdaspur' and Duration_years=3
select *from student where country='India' and (city='Amritsar' or city='Gurdaspur')
select *from student order by Country
select *from student order by Country desc
update student set Name='Dinesh Kumar' where RollNo=311
select *from student
delete from student where RollNo=310
select top 3 *from student
SELECT TOP 50 PERCENT * FROM student
SELECT MIN(Duration_years) AS MinimumDuration FROM student;
SELECT MAX(Duration_years) AS MinimumDuration FROM student;
