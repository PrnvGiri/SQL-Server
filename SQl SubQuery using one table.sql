use lpu
create table employee(Empid int,first_name varchar(20), last_name varchar(20), 
email varchar(20), contact int, salary int, deptid int, designation varchar(20))
insert into employee values(168, 'Rahul','singh', 'rahul@gmail.com',8546584,45888,48,'Manager'),
(169,'ayush','singh', 'ayu@gmail.com',85464875,45878,88,'Manager'),
(128 , 'ujjawal','singh', 'ul@gmail.com',857894,104558,28,'CEO')
select first_name, last_name, deptid, designation
from Employee
where designation = (
  select designation
  from Employee
  where empid = 169
) 
/*time to the pass*/

