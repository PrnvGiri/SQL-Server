
use lpu
create table worker(worker_id int, Name varchar(30), salary int, department varchar(20));
create table title(worker_ref_id int, worker_title varchar(20));
insert into worker values(1,'monika',100000,'HR'),(2,'Niharika', 80000,'Admin'),(3,'Vishal', 300000,'HR'),
						 (4,'Amitabh',500000,'Admin'),(5,'Vivek',500000,'Admin'),(6,'Vipul',200000,'Account'),
						 (7,'Satish',75000,'Account'),(8,'Geetika', 90000,'Admin')
insert into title values(1,'Manager'),(2,'Executive'),(8,'Executive'),(5,'Manager'),(4,'Asst.Manager'),
						 (7,'Excecutive'),(6,'Lead'),(3,'Lead');
select *from worker;
select *from title;
select *from worker where worker_id in (select worker_ref_id from
 title where worker_title = 'Asst.Manager')
 select *from worker where department in (select department from worker where worker_id = 4)
 select *from worker where department in (select department from worker where name = 'Vishal')
 drop table worker
 drop table title

