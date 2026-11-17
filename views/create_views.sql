# 1. High earners
create view high_earners as
select emp_id,basic_salary 
from salaries
where basic_salary > 60000;

# Select VIEW high_earners

select * from high_earners;

#2. Department-wise salary summary
create view dept_salary_summary as
select d.dept_name , avg(s.basic_salary) as avg_salary
from employees e
join salaries s
on e.emp_id =s.emp_id
join departments d
on e.dept_id = d.dept_id
group by d.dept_name;

select * from dept_salary_summary ;

#3. Employee project allocation
create view employee_project_view as
select e.emp_name, p.project_name, ep.role
from employees e
join employee_projects ep
on e.emp_id = ep.emp_id
join projects p
on p.project_id = ep.project_id;

select * from employee_project_view;
