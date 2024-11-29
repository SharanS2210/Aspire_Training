create database project1;
use project1;

create table employee(EmpId int primary key, Name varchar(20),Dept varchar(20), City varchar(20),Salary int);

insert into employee values(12301,'chandru','Insurance','chennai',22000),(12302,'Mukesh','D&A','Madurai',30000),(12303,'Barath','ES','Coimbatore',32000),
(12304,'Sharan','Insurance','Hyderabad',25000);

select*from employee;

select * from employee where City='chennai';


create table product_details(P_Id int primary key, P_name varchar(20), p_category varchar(20),price int);

insert into product_details values(101,'Smartphone','Electronics',10000),(102,'Laptop','Electronics',20000),
(103,'pencil','Stationary',5),(104,'Harpic','Cleaning',120);


select * from product_details;