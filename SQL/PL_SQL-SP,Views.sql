use project1;
select*from employee;
select*from product_details;
alter table employee add column doj date;
update employee set doj='1998-08-07' where EmpId=12301;
update employee set doj='1988-10-11' where EmpId=12302;
update employee set doj='2000-07-27' where EmpId=12303;
update employee set doj='2024-11-17' where EmpId=12304;



DELIMITER $$
CREATE PROCEDURE GetEmployeesByYear(
    IN emp_year INT )
BEGIN
    SELECT * FROM employee WHERE YEAR(doj) = emp_year;  
END $$
DELIMITER ;

CALL GetEmployeesByYear(1998);

DROP PROCEDURE IF EXISTS GetEmployeesByYear;

CREATE VIEW SeniorEmployeesView AS
SELECT * FROM employee
ORDER BY doj ASC LIMIT 1;

select*from SeniorEmployeesView;

DROP VIEW SeniorEmployeesView;

										//SP returns all rows //Functions only return only one value(single scalar value )
DELIMITER $$
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employee;
END $$

DELIMITER ;

CALL GetAllEmployees();

DROP PROCEDURE IF EXISTS GetAllEmployees;