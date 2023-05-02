DROP TABLE IF EXISTS Dep_emp;
DROP TABLE IF EXISTS Dep_manager;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
			dept_no VARCHAR PRIMARY KEY,
			dept_name VARCHAR(255));

CREATE TABLE Titles(
			title_id VARCHAR PRIMARY KEY,
			title VARCHAR(255));

CREATE TABLE Employees(
			emp_no INT NOT NULL PRIMARY KEY,
			emp_title_id VARCHAR NOT NULL,
			FOREIGN KEY(emp_title_id)REFERENCES Titles(title_id),
			birth_date DATE,
			first_name VARCHAR (255) NOT NULL,
			last_name VARCHAR (255) NOT NULL,
			sex VARCHAR,
			hire_date DATE);		

ALTER DATABASE "employees_db" SET datestyle = "ISO, MDY";
		
CREATE TABLE Salaries(
			emp_no INT,
			FOREIGN KEY(emp_no)REFERENCES Employees(emp_no),
			salary FLOAT NOT NULL );
			
CREATE TABLE Dep_manager(
			dept_no VARCHAR,
			FOREIGN KEY(dept_no)REFERENCES Departments(dept_no),
			emp_no INT,
			FOREIGN KEY(emp_no)REFERENCES Employees(emp_no));
			
CREATE TABLE Dep_emp(emp_no INT,
					 FOREIGN KEY(emp_no)REFERENCES Employees(emp_no),
					 dept_no VARCHAR, 
					 FOREIGN KEY(dept_no)REFERENCES Departments(dept_no));

SELECT * FROM Departments;
SELECT * FROM Titles;
SELECT * FROM Employees;

SELECT * FROM Salaries;
SELECT * FROM Dep_manager;
SELECT * FROM Dep_emp;

-- Q1: List the employee number, last name, first name, sex, and salary of each employee
-- Join Employees table and Salaries table
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM Employees AS e
JOIN Salaries AS s
ON e.emp_no = s.emp_no;

-- Q2: List the first name, last name, and hire date for the employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM Employees AS e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- Q3: List the manager of each department along with their 
-- department number, department name, employee number, last name, and first name
SELECT m.emp_no, m.dept_no, d.dept_name, e.first_name, e.last_name
FROM Dep_manager AS m
JOIN Departments AS d
ON m.dept_no = d.dept_no
JOIN Employees AS e
ON m.emp_no = e.emp_no;

-- Q4: List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name
SELECT de.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
FROM Dep_emp AS de
JOIN Departments AS d
ON de.dept_no = d.dept_no
JOIN Employees AS e
ON de.emp_no = e.emp_no;

-- Q5: List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM Employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Q6: List each employee in the Sales department, including their employee number, last name, and first name
CREATE VIEW total_department AS
SELECT de.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
FROM Dep_emp AS de
JOIN Departments AS d
ON de.dept_no = d.dept_no
JOIN Employees AS e
ON de.emp_no = e.emp_no;

SELECT * 
FROM total_department
WHERE dept_name ='Sales';

-- Q7: List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name
SELECT *
FROM total_department
WHERE dept_name ='Sales'
OR dept_name = 'Development';

-- Q8: List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY COUNT(last_name) DESC;




