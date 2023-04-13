use lpu
create table employees(employee_id int,first_name varchar(30),Last_name varchar(30),email varchar(35),phone_number int,hire_date date,
job_id int,salary int,manager_id int,department_id int);
create table departments(departmenet_id int,department_name varchar (30),location_id int);
select *from employees;
select *from departments;
insert employees values(1,'JUNE','MAY','junemay@gamil.com',8940384,'2022-08-14',321,44000,12,186),
						(2,'JANE','MAVIS','janemay@gamil.com',65234384,'05-03-2010',456,44000,19,100),
						(3,'JACK','PETERSON','jackpete@gamil.com',8090384,'04-08-2012',891,44000,35,170),
						(4,'MELODY','MELONY','mmelody@gamil.com',85674384,'09-11-2018',119,44000,16,700),
						(5,'JUNE','TETHERSON','junetehtherson@gamil.com',8765384,'05-08-2020',405,44000,12,168);
insert departments values(186,'Manager',1700),(170,'officer',1700);
insert departments values(100,'Clerk', 1400),(700,'Officer',8546);
select *from employees where department_id in (select departmenet_id from
 departments where location_id = 1700)
 drop table employees
 drop table departments
