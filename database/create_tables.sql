**departments**
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50)
);

**employees**
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE NOT NULL,
    dept_id INT,
    job_role VARCHAR(50),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    CONSTRAINT chk_role CHECK (job_role IN ('Developer','Manager','HR','Accountant','Tester'))
);

**projects**
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

**employee_projects (Many-to-Many)**
CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    PRIMARY KEY(emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

**salaries**
CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2) NOT NULL,
    bonus DECIMAL(10,2) DEFAULT 0,
    deductions DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

**attendance**
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    status VARCHAR(10) CHECK (status IN ('Present','Absent','Leave')),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

