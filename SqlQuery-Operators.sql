use lpu
select *from studennt

select count(Gender) from studennt

Select avg(age) as average_age from 

select sum(Duration_years) from student

select *from studennt where stt_name like 'R%'
select *from studennt where stt_name like '%R'
select *from studennt where stt_name like '_R%'
select *from studennt where stt_name like '%an%'
select *from studennt where stt_name like 'R%t'

SELECT * FROM studennt WHERE stt_Name LIKE '[PA]%';

select *from studennt

/* IN operator*/
SELECT * FROM studennt
WHERE City IN ('Amritsar', 'Gurdaspur');

/* NOT IN operator*/
SELECT * FROM studennt
WHERE City NOT IN ('Amritsar', 'Gurdaspur');


/*Between operator*/
/* 1. */
SELECT * FROM studennt
WHERE  age BETWEEN 17 AND 19;

/* 2. */
SELECT * FROM studennt
WHERE  State BETWEEN 'Kerala' AND 'Punjab'
ORDER BY State 


/*Not Between operator*/
SELECT * FROM studennt
WHERE  age NOT BETWEEN 17 AND 19;

/*In and Between opeators in single query*/
select *from studennt
where age BETWEEN 17 and 19 and 
City IN ('Amritsar','Gurdaspur')
