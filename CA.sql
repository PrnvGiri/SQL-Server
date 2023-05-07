use lpu
create table product
(
    Prodid int primary key,
    Prodname varchar(20),
    Price int, Brand varchar(20)
)
insert into product values(1,'Laptop',7500,'Dell'),(2,'SSD', 5500,'Asus'),
                          (3,'Hard disk', 5000, 'WD'),(4,'Processor',8000,'intel')
select *from product

create table productaudit
(
    Id int identity(1,1) primary key,
 AuditData nvarchar(1000)
)
create trigger prod_trig
on product
for INSERT AS
BEGIN
declare @Id INT
SELECT @Id = Prodid from inserted

insert into productaudit 
values('Product with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END

insert into product values(5,'Graphic card', 13000, 'Nvidia')
select *from productaudit

create trigger prod_insteadof
on product
instead of UPDATE
as
declare @id int;
declare @name varchar(20);
declare @price int;
declare @brand varchar(20); 
select @id = Prodid from product
select @name = Prodname from product
select @price = Price from product
select @brand = Brand from product
begin 
RAISERROR('You are not allowed to update the Product table',16,1);
ROLLBACK;
end

Update product
set Prodname='Monitor' where Prodid = 2



 
 




