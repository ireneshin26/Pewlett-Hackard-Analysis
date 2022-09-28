-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no int NOT NULL,
    birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE dept_managers (
	dept_no varchar NOT NULL,
	emp_no int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
); 


CREATE TABLE titles (
	emp_no int NOT NULL,
	title VARCHAR NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	foreign key (emp_no) references salaries (emp_no)
); 


CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
); 

