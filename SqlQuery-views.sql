use lpu
create table students(rollno int, name varchar(20),marks int, city varchar(20))
insert into students values(1,'aa',58,'Jalandhar')
insert into students values(2,'bb',60,'Jalandhar')
insert into students values(3,'cc',72,'Ludhiana')
insert into students values(4,'dd',66,'Patiala')
insert into students values(5,'ee',71,'Amritsar')
insert into students values(6,'gg',15,'Amritsar')

create table course(rollno int,cid varchar(20),course_name varchar(20), duration varchar(20))
insert into course values(1,'D101','DBMS','1y')
insert into course values(1,'D202','R Studio','6M')
insert into course values(5,'D101','DBMS','1y')

select * from students
select *from course

/*create following table*/
CREATE VIEW vstudents AS
SELECT rollno, name
FROM students
WHERE city = 'Jalandhar'; 

drop view marksstudents
select *from vstudents

CREATE VIEW marksstudents AS
SELECT rollno,name,marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students); 

select *from marksstudents
drop view marksstudents



alter view marksstudents AS
SELECT rollno, name, marks,city
FROM students
WHERE marks > (SELECT AVG(marks) FROM students); 

select *from marksstudents

/* create view from multiple tables*/


create view ct_view as
select s.rollno,s.name,c.course_name from students s, course c
where s.rollno=c.rollno

select *from ct_view
