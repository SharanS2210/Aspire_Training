create database employee;
use employee;
  
create table info(id int primary key,name varchar(20),phone varchar(30));
   
insert into info values(1,'chan','1234567890,0987654321'),(2,'muthu','8907654321,1324567980');
   
select*from info;
select*from info where phone='1234567890';
select*from info where phone='1234567890,0987654321';
      
update info set phone='1234567890' where id=1;
update info set phone='9087654321' where id=2;
        
alter table info modify phone bigint(10);
alter table info drop column phone;
alter table info add column phone bigint(10);
alter table info rename column phone to phone_no;

desc info;

alter table info add column salary int;

update info set salary=10000 where id=1;
update info set salary=30000 where id=2;

rename table info to employee;

select*from employee;

show tables;

delete from employee where id=1;
delete from employee;
truncate table employee;
drop table employee;


select max(salary) from employee;
select min(salary)from employee;
select sum(salary)from employee;
select avg(salary)from employee;
select count(*) from employee;

select name from employee where salary>=20000;

select *from employee where name like 'm%';
select *from employee where name like '%n';
select *from employee where name like '___n';
select *from employee where name like 'm____';





