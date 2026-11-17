#1. Second highest salary
select max(basic_salary) from salaries
where basic_salary < (select max(basic_salary) from salaries);

#2 Projects with more than 2 employees
select p.project_name, count(e.emp_id) as employee_count
from employees e
join employee_projects ep
on e.emp_id = ep.emp_id
join projects p
on ep.project_id = p.project_id
group by p.project_name
having count(e.emp_id) > 2;

#3 Departments having avg salary > finance
select d.dept_name, avg(s.basic_salary) as avg_salary_greater_than_finance
from departments d join employees e
on d.dept_id = e.dept_id
join salaries s
on e.emp_id = s.emp_id
group by d.dept_name
having avg(s.basic_salary) >
(select avg(s.basic_salary)
from departments d join employees e
on d.dept_id = e.dept_id
join salaries s
on e.emp_id = s.emp_id
where d.dept_name = 'finance');
