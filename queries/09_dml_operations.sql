#1. Update salary
update salaries
set basic_salary = 50000
where salary_id = 4;

select * from salaries;

#2 Delete all “Absent” attendance
delete from attendance
where status = 'Absent'

SET SQL_SAFE_UPDATES=0;

select * from attendance;

#3 Insert a new project
insert into projects values
(4 , 'HR Portal', '2024-01-01','2024-06-30')

select * from projects;

#4 Transfer an employee to another department
update employees
set dept_id = 1
where emp_id = 101

select * from employees
