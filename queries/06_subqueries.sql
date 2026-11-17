#1. Employees earning more than company avg
select e.emp_id, e.emp_name , s.basic_salary as salary_more_than_avg ,
(select avg(basic_salary) from salaries) as company_avg
from employees e
join salaries s
on e.emp_id = s.emp_id
where s.basic_salary > (select avg(basic_salary) from salaries);

#2 Highest earning employee
select e.emp_id, e.emp_name, s.basic_salary as highest_earning
from employees e
join salaries s
on e.emp_id = s.emp_id
where s.basic_salary = (select max(basic_salary) from salaries);

#3 Employees not assigned to any project
select e.emp_id, e.emp_name , ep.role
from employees e
left join employee_projects ep
on e.emp_id = ep.emp_id
where ep.emp_id is null;
