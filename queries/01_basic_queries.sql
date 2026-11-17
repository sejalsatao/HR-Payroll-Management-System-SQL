USE hr_payroll;

1. List all employees
SELECT * FROM employees;

2. Employees hired after 2021
SELECT *
FROM employees
WHERE hire_date > '2021-12-31';

3. Employees working in the HR department
select * from employees
where job_role = "HR";
