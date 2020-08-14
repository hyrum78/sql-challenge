-- IMPORT from QuickDBD modeling tool
-- Modified keys and relationships

CREATE TABLE Departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    FOREIGN KEY (title_id) REFERENCES Titles (title_id),
	PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_Manager (
    dept_no varchar   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    PRIMARY KEY (emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Manual import data into pgAdmin schema in the order listed above

-- Verify import
SELECT * FROM Employees


