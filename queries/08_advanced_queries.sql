#1. Total payroll cost per employee
select e.emp_id, e.emp_name, s.basic_salary + s.bonus + s.deductions as Total_payroll 
from employees e
join salaries s
on e.emp_id = s.emp_id

#2 Rank employees by salary (window)
select e.emp_id,  e.emp_name, s.basic_salary ,
rank() over(order by basic_salary desc) as emp_salary_rank
from employees e
join salaries s
on e.emp_id = s.emp_id;
 
#3 Month-wise attendance summary
select month(date), status, count(status)
from attendance
group by month(date) , status; 
