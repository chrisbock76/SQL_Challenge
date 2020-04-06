-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_managers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--departments table
CREATE TABLE departments (
    dept_no varchar (10) NOT NULL,
    dept_name varchar (50) NOT NULL,
    PRIMARY KEY (dept_no)
);

--employees table
CREATE TABLE employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name varchar (30) NOT NULL,
    last_name varchar (30) NOT NULL,
    gender varchar (5) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

--dept_emp table
CREATE TABLE dept_emp (
    emp_no integer NOT NULL,
    dept_no varchar (10) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--dept_managers table
CREATE TABLE dept_managers (
    dept_no varchar (10) NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

--salaries table
CREATE TABLE "salaries" (
    emp_no integer NOT NULL,
    salary money NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--titles table
CREATE TABLE titles (
    emp_no integer NOT NULL,
    title varchar (30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
