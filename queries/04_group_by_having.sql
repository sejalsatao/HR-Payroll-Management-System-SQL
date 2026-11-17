#1. Avg salary per department
select d.dept_name , avg(s.basic_salary) as avg_salary 
from departments d
join employees e
on d.dept_id = e.dept_id
join salaries s
on e.emp_id = s.emp_id
group by d.dept_name ;

#2 Departments with more than 2 employees
select d.dept_name , count(e.emp_id) as employees_count
from departments d
join employees e
on d.dept_id = e.dept_id
group by d.dept_name
having count(e.emp_id) > 2;
