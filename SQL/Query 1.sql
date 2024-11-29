create database db;
use db;
create table course(
		courseId int primary key,
        courseName varchar(20));

insert into course values(101,"CSE"),
		(102,"Mech"),(103,"ECE"),(104,"Civil");

select * from course;

create table student(
		SId int,
        Sname varchar(20),
        Cid int references course(courseId));

insert into student values(1,"Sharan",101),
		(2,"Saran",101),
        (3,"Jason",102),
        (4,"Abhi",104),
        (5,"Suraj",103);

insert into student values(6,"har",106);

delete from student where SId=6;

SET SQL_SAFE_UPDATES = 0;

select * from student;

select * from course;

select * from student,course;

select courseName from course
where courseId=(select Cid from student
where Sname="Abhi");

-- displaying students who all are doing cse

select Sname from student
where Cid=(select courseId from course
where courseName="CSE");

-- display sname with cse and mech
select Sname from student
where Cid=(select courseId from course
where courseName="CSE") or Cid=(select courseId from course
where  courseName="Mech"); 

select Sname from student
where Cid in (select courseId from course
where courseName="CSE" or courseName="Mech"); 

DELIMITER $$

CREATE PROCEDURE print_numbers()
BEGIN
    DECLARE num INT DEFAULT 1;

    -- Loop from 1 to 5
    WHILE num <= 5 DO
        -- Print the number
        SELECT num;
        -- Increment the number
        SET num = num + 1;
    END WHILE;
END$$

DELIMITER ;

CALL print_numbers();