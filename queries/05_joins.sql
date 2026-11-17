#1. Employees with departments
select e.emp_name , d.dept_name
from employees e
join departments d
on e.dept_id = d.dept_id

#2 Employees with their salary details
select e.emp_name , s.basic_salary
from employees e
join salaries s
on e.emp_id = s.emp_id

#3 Projects with assigned employees
select p.project_name , e.emp_name as assigned_employee
from employees e
join employee_projects ep
on e.emp_id = ep.emp_id
join projects p
on p.project_id = ep.project_id

#4 Departments with no employees (RIGHT JOIN)
select e.emp_name , d.dept_name
from employees e
right join departments d
on e.dept_id = d.dept_id
where emp_name is null;

#5 Full join alternative using UNION
select e.emp_name , d.dept_name
from employees e
right join departments d
on e.dept_id = d.dept_id

union

select e.emp_name , d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;
