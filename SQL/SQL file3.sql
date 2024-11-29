create database plsql;
use plsql;

create table employee(EmpId int primary key, Name varchar(30), Dept varchar(20), City varchar(20), Salary int);

insert into employee values(12358,"Bharath","ES","coimbatore",30000),
					(12359,"Chandru","Insurance","chennai",40000),
                    (12360,"Janani","D&A","coimbatore",20000),
                    (12364,"Sharan","Insurance","kollam",30000);

select * from employee;

create table product_details(PId int primary key, Pname varchar(20), Pcategory varchar(20), Price int);

insert into product_details values(101,"Iron box","Electronics",1500),
							(102,"brush","Cleaning",300),
                            (103,"Smartphone","Electronics",5000),
                            (104,"football","sports",2000);
                            
select * from product_details;

show tables;

