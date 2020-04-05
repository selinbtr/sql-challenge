DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
  dept_no integer NOT NULL,
  dept_name character varying NOT NULL
);

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
  dept_no integer NOT NULL,
  emp_no integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  emp_no integer NOT NULL,
  birth_date date NOT NULL,
  first_name character varying NOT NULL,
  last_name character varying NOT NULL,
  gender character varying NOT NULL,
  hire_date date NOT NULL
);

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);

DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL
);


