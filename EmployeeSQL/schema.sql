DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
  dept_no character varying PRIMARY KEY NOT NULL,
  dept_name character varying NOT NULL
);
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  emp_no integer PRIMARY KEY NOT NULL,
  birth_date date NOT NULL,
  first_name character varying NOT NULL,
  last_name character varying NOT NULL,
  gender character varying NOT NULL,
  hire_date date NOT NULL
);

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no)  REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no,dept_no, from_date, to_date)
);

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager ( 
  dept_no character varying NOT NULL,
  emp_no integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no)  REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no,dept_no, from_date, to_date)
);


DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no,from_date, to_date)
);

DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no,from_date, to_date)
);
