**departments**
INSERT INTO departments VALUES
(1, 'HR', 'Pune'),
(2, 'Development', 'Pune'),
(3, 'Finance', 'Mumbai'),
(4, 'QA', 'Pune'),
(5, 'Management', 'Mumbai');

**employees**
INSERT INTO employees VALUES
(101, 'Amit Sharma','amit@company.com','9876543210','2022-01-10',2,'Developer'),
(102, 'Priya Singh','priya@company.com','9922334455','2021-03-15',1,'HR'),
(103, 'Rahul Verma','rahul@company.com','8811223344','2020-07-22',2,'Manager'),
(104, 'Neha Joshi','neha@company.com','9988776655','2023-02-10',4,'Tester'),
(105, 'Karan Patel','karan@company.com','9090909090','2019-11-01',3,'Accountant'),
(106, 'Sonia Mehta','sonia@company.com','8899001122','2021-04-19',2,'Developer');

**projects**
INSERT INTO projects VALUES
(1,'Payroll System','2023-01-01','2023-06-30'),
(2,'E-Commerce Portal','2023-02-01','2023-09-30'),
(3,'Mobile App','2023-03-15','2023-12-31');

**employee_projects**
INSERT INTO employee_projects VALUES
(101,1,'Developer'),
(101,2,'Developer'),
(102,1,'HR Support'),
(103,2,'Manager'),
(106,3,'Developer'),
(104,2,'Tester');

**salaries**
INSERT INTO salaries VALUES
(1,101,60000,5000,2000),
(2,102,45000,3000,1000),
(3,103,80000,7000,5000),
(4,104,40000,2000,500),
(5,105,55000,4000,1500),
(6,106,62000,6000,2500);

**attendance**
INSERT INTO attendance VALUES
(1,101,'2023-12-01','Present'),
(2,102,'2023-12-01','Absent'),
(3,103,'2023-12-01','Present'),
(4,104,'2023-12-01','Leave'),
(5,105,'2023-12-01','Present'),
(6,106,'2023-12-01','Present');
