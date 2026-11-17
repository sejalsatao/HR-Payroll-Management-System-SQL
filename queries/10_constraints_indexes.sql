#1. Create index on email
create INDEX idx_email
on employees(email);

select * from employees;
SHOW INDEX FROM employees;

#2 Add CHECK constraint for min salary ( age ≥18 ) 
alter table salaries
add constraint chk_min_salary check (basic_salary >= 10000);

select * from salaries;

#3 Add NOT NULL to phone column
alter table employees
modify column phone varchar(15) not null;
