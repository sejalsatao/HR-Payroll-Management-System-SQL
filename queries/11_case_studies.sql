#1. Total payroll cost of company
select sum(basic_salary + bonus + deductions) as Total_payroll_cost from salaries ;

#2 Employee working on max projects
select e.emp_id ,e.emp_name, count(ep.project_id) as Total_projects
from employees e
join employee_projects ep
on e.emp_id = ep.emp_id
group by e.emp_id, e.emp_name
order by Total_projects desc
limit 1;

#3 Department with highest employee count
select d.dept_name, count(e.emp_id) as Total_employees
from employees e
join departments d
on e.dept_id = d.dept_id
group by d.dept_name
order by Total_employees desc
limit 1;

#4 Least busy project
select p.project_name , count(ep.emp_id) as employee_count
from projects p
join employee_projects ep
on p.project_id = ep.project_id
group by p.project_name
order by employee_count ASC
limit 1;

#5 Employees with 100% attendance
select e.emp_id , e.emp_name
from employees e
join attendance a
on e.emp_id = a.emp_id
group by e.emp_id , e.emp_name
having count(a.attendance_id) = sum(a.status = 'Present');
