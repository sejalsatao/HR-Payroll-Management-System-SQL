#1 Count employees in each department
select d.dept_name, count(e.emp_id) as total_employees
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_id , d.dept_name ;

#2 Avg salary of developers
select avg(s.basic_salary) as avg_salary_of_developer
from salaries s
join employees e
on s.emp_id = e.emp_id
where job_role = 'developer';

#3 Max salary in company
select max(basic_salary) as max_salary_in_company
from salaries;
