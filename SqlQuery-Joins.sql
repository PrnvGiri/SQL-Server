use lpu
create table department(deptid int not null primary key, 
dept_name varchar(25))

insert into department values(101, 'sales'),(102,'marketing'),
(103,'admin'),(104,'HR'),(105,'Finance')

select * from department


create table employee(empid int not null primary key, 
ename varchar(25),designation varchar(25),
headid varchar(25), salary float, 
deptid int foreign key references department(deptid))

insert into employee (empid,ename,designation,salary,deptid)
values(11, 'Tejinder Singh','Manager',400000,104)
insert into employee (empid,ename,designation,salary,deptid)
values(12, 'Simran','Manager',450000,102)
insert into employee (empid,ename,designation,headid,salary,deptid)
values(13, 'Pratik','Marketing Expert',12,100000,102)
insert into employee (empid,ename,designation,headid,salary,deptid)
values(14, 'Deepesh','Analyst',11,150000,104)
insert into employee (empid,ename,designation,headid,salary,deptid)
values(15, 'Meenakshi','Clerk',12,80000,101)
insert into employee (empid,ename,designation,headid,salary,deptid)
values(16, 'Ronak','Office manager',11,200000,103)
insert into employee (empid,ename,designation,headid,salary,deptid)
values(17,'Mukesh','Auditor',12,350000,105)


select *from employee
delete from employee where empid=13
delete from employee where empid=17
select *from employee

/*Inner Join*/
select e.empid,e.ename,e.designation,d.dept_name
from employee e inner join department d
on e.deptid=d.deptid

/*Inner join with all columns*/
select *from employee e  inner join department d
on e.deptid=d.deptid

/*Natural join*/
select *from employee e  natural join department d
on e.deptid=d.deptid

/*Cross Join*/
select *From employee cross join department

/*Left outer join*/
select e.empid,e.ename,e.designation,d.dept_name
from employee e left outer join department d
on e.deptid=d.deptid

/*Right outer join */
select e.empid,e.ename,e.designation,d.dept_name
from employee e right outer join department d
on e.deptid=d.deptid

/*Full outer join */
select e.empid,e.ename,e.designation,d.dept_name
from employee e full outer join department d
on e.deptid=d.deptid

/*Self Join */
select e2.ename, e1.ename as Head_Name
from employee e1 inner join employee e2 on e1.empid=e2.headid


