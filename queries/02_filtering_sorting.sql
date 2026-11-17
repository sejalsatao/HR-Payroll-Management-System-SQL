1 Employees with salary > 50,000
select e.*, s.basic_salary
from employees e
join salaries s
on e.emp_id = s.emp_id
where s.basic_salary > 50000;

2 Order employees by hire_date
select * from employees order by hire_date;

3 Employees not in Development department
select e.emp_name , d.dept_name
from employees e
join departments d
on e.dept_id = d.dept_id
where dept_name != 'development';
