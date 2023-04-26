use lpu
/*SET Primary key constraint*/

create table customer1
(
emp_id int,
emp_name varchar(25),
constraint pk4 primary key(emp_id)
)
insert into emp2 values(1,'aa')
insert into emp2 values(1,'bb')
/*Delete Primary Key constraint*/
alter table emp1 drop constraint pk

/*Set Primary key constarint on alraedy existing table*/
alter table student add constraint pk2 primary key(Rollno)


/*Set not null conatraint on a column of already existing table*/
alter table student
alter column Rollno int not null

/* Not Null constraint*/
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
); 

/*Not Null with Alter*/
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL; 

/*Unique constraint*/
CREATE TABLE Customers (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

/*unique constraint with Alter*/
ALTER TABLE Persons
ADD constraint uq UNIQUE (age); 

/*check constraint*/
CREATE TABLE customer6 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);
insert into customer6 values(1,'aa','bb',18)

/*check constarint with alter*/
create table employee(id int not null, name varchar(20),age int)

ALTER TABLE employee
ADD CONSTRAINT chk1 CHECK (age>=18)

/*Default constraint*/
CREATE TABLE consumer1 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'jalandhar'
); 
insert into consumer1(id,LastName,FirstName,Age) values(1,'dd','aa',20)
select *from consumer1

/*The DEFAULT constraint can also be used to 
insert system values, by using functions like GETDATE():*/
CREATE TABLE Orders1 (
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate date DEFAULT GETDATE()
); 
insert into Orders1(ID,OrderNumber) values(10,110)
select *from Orders1

/*Default constraint with Alter */
create table Teachers(id int, name varchar(20),dept varchar(20))

ALTER TABLE Teachers
ADD CONSTRAINT df_dept DEFAULT 'SCA' FOR dept; 

insert into Teachers(id,name) values(11,'Taran')
select *from Teachers
