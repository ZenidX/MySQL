DROP DATABASE IF EXISTS office_db;
CREATE DATABASE IF NOT EXISTS office_db;
USE office_db;

CREATE TABLE IF NOT EXISTS departments( 
	department_id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    department_name VARCHAR(30), 
    location_id INTEGER
);

CREATE TABLE IF NOT EXISTS employees( 
	employee_id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary INTEGER,
    commission_pct INTEGER,
    manager_id INTEGER,
    department_id INTEGER,
    constraint pk_emp primary key (employee_id),
    constraint fk_deptno foreign key (department_id) references departments(department_id) 
);

## Insert insto Departments table
 INSERT INTO departments (department_name, location_id) VALUES ('Marketing',  180);
 INSERT INTO departments (department_name, location_id) VALUES ('Purchasing',  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Human Resources',  2400);
 INSERT INTO departments (department_name, location_id) VALUES ('Shipping',  1500);
 INSERT INTO departments (department_name, location_id) VALUES ('IT',  1400);
 INSERT INTO departments (department_name, location_id) VALUES ('Public Relations',  2700);
 INSERT INTO departments (department_name, location_id) VALUES ('Sales',  2500 );
 INSERT INTO departments (department_name, location_id) VALUES ('Executive',  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Finance',  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Accounting',  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Treasury' ,  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Corporate Tax' ,  1700 );
 INSERT INTO departments (department_name, location_id) VALUES ('Control And Credit' ,  1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Shareholder Services', 1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Benefits', 1700);
 INSERT INTO departments (department_name, location_id) VALUES ('Payroll' , 1700);
 
SELECT * FROM departments;

## Insert into Employees table
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Steven', 'King', 'SKING', '515.123.4567', '1987-06-17' , 'AD_PRES', 24000 , NULL, NULL, 2);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Neena' , 'Kochhar' , 'NKOCHHAR' , '515.123.4568' , '1989-11-21' , 'AD_VP' , 17000 , NULL , 100 , 2);
INSERT INTO employees ( first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Lex' , 'De Haan' , 'LDEHAAN' , '515.123.4569' , '1993-09-12' , 'AD_VP' , 17000 , NULL , 100 , 3);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Alexander' , 'Hunold' , 'AHUNOLD' , '590.423.4567' , '1990-09-30', 'IT_PROG' , 9000 , NULL , 102 , 6);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Bruce' , 'Ernst' , 'BERNST' , '590.423.4568' , '1991-05-21',  'IT_PROG' , 6000 , NULL , 103 , 6);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('David' , 'Austin' , 'DAUSTIN' , '590.423.4569' , '1997-06-25',  'IT_PROG' , 4800 , NULL , 103 , 6);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Valli' , 'Pataballa' , 'VPATABAL' , '590.423.4560' , '1998-02-05',  'IT_PROG' , 4800 , NULL , 103 , 4);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Diana' , 'Lorentz' , 'DLORENTZ' , '590.423.5567' , '1999-02-09',  'IT_PROG' , 4200 , NULL , 103 , 4);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Nancy' , 'Greenberg' , 'NGREENBE' , '515.124.4569' , '1994-08-17',  'FI_MGR' , 12000 , NULL , 101 , 10);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Daniel' , 'Faviet' , 'DFAVIET' , '515.124.4169' , '1994-08-12',  'FI_ACCOUNT' , 9000 , NULL , 108 , 8);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('John' , 'Chen' , 'JCHEN' , '515.124.4269' , '1997-04-09',  'FI_ACCOUNT' , 8200 , NULL , 108 , 7);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Ismael' , 'Sciarra' , 'ISCIARRA' , '515.124.4369' , '1997-02-01',  'FI_ACCOUNT' , 7700 , NULL , 108 , 7);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Jose Manuel' , 'Urman' , 'JMURMAN' , '515.124.4469' , '1998-06-03', 'FI_ACCOUNT' , 7800 , NULL , 108 , 6);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Luis' , 'Popp' , 'LPOPP' , '515.124.4567' , '1999-12-07',  'FI_ACCOUNT' , 6900 , NULL , 108 , 1);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Den' , 'Raphaely' , 'DRAPHEAL' , '515.127.4561' , '1994-11-08',  'PU_MAN' , 11000 , NULL , 100 , 3);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Alexander' , 'Khoo' , 'AKHOO' , '515.127.4562' , '1995-05-12',  'PU_CLERK' , 3100 , NULL , 114 , 8);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Shelli' , 'Baida' , 'SBAIDA' , '515.127.4563' ,'1997-12-13', 'PU_CLERK' , 2900 , NULL , 114 , 7);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Sigal' , 'Tobias' , 'STOBIAS' , '515.127.4564' , '1997-09-10', 'PU_CLERK' , 2800 , NULL , 114 , 3);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Guy' , 'Himuro' , 'GHIMURO' , '515.127.4565' , '1998-01-02',  'PU_CLERK' , 2600 , NULL , 114 , 6);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Karen' , 'Colmenares' , 'KCOLMENA' , '515.127.4566' , '1999-04-08',  'PU_CLERK' , 2500 , NULL , 114 , 1);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Matthew' , 'Weiss' , 'MWEISS' , '650.123.1234' ,'1996-07-18',  'ST_MAN' , 8000 , NULL , 100 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Adam' , 'Fripp' , 'AFRIPP' , '650.123.2234' , '1997-08-09',  'ST_MAN' , 8200 , NULL , 100 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Payam' , 'Kaufling' , 'PKAUFLIN' , '650.123.3234' ,'1995-05-01',  'ST_MAN' , 7900 , NULL , 100 , 4);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Shanta' , 'Vollman' , 'SVOLLMAN' , '650.123.4234' , '1997-10-12',  'ST_MAN' , 6500 , NULL , 100 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Kevin' , 'Mourgos' , 'KMOURGOS' , '650.123.5234' , '1999-11-12',  'ST_MAN' , 5800 , NULL , 100 , 8);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Julia' , 'Nayer' , 'JNAYER' , '650.124.1214' , '1997-07-02',  'ST_CLERK' , 3200 , NULL , 120 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Irene' , 'Mikkilineni' , 'IMIKKILI' , '650.124.1224' , '1998-11-12', 'ST_CLERK' , 2700 , NULL , 120 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('James' , 'Landry' , 'JLANDRY' , '650.124.1334' , '1999-01-02' , 'ST_CLERK' , 2400 , NULL , 120 , 9);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Steven' , 'Markle' , 'SMARKLE' , '650.124.1434' , '2000-03-04' , 'ST_CLERK' , 2200 , NULL , 120 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Laura' , 'Bissot' , 'LBISSOT' , '650.124.5234' ,'1997-09-10' , 'ST_CLERK' , 3300 , NULL , 121 , 5);
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES ('Mozhe' , 'Atkinson' , 'MATKINSO' , '650.124.6234' , '1997-10-12' , 'ST_CLERK' , 2800 , NULL , 121 , 11);

SELECT * FROM employees;
SELECT * FROM departments;
SELECT first_name, last_name, phone_number FROM employees;
SELECT first_name AS 'nombre', last_name AS 'apellido', phone_number AS 'telefono' FROM employees;
SELECT * FROM employees WHERE phone_number = '515.127.4565';
DELETE FROM employees WHERE phone_number = '515.127.4565';
SELECT * FROM employees WHERE phone_number = '515.127.4565';
SELECT * FROM employees WHERE first_name LIKE 'David';
SELECT * FROM employees WHERE first_name LIKE 'D';
SELECT * FROM employees WHERE first_name LIKE 'D%';
SELECT * FROM employees WHERE first_name LIKE 'D_n%';
SELECT * FROM employees WHERE employee_id < 10;
SELECT * FROM employees WHERE employee_id <= 10;
SELECT * FROM employees WHERE salary >= 6000 AND employee_id > 16;
SELECT * FROM employees WHERE salary >= 5000 AND salary <8000;
SELECT * FROM employees WHERE salary BETWEEN 5000 and 8000;
SELECT * FROM employees WHERE first_name = 'Ismael' AND last_name = 'Sciarra';
UPDATE employees SET first_name='David', last_name= 'Bernal González' WHERE first_name = 'Ismael' AND last_name = 'Sciarra';
SELECT * FROM employees WHERE first_name= 'David' AND last_name='Bernal González';
SELECT * FROM employees WHERE first_name = 'Ismael' AND last_name='Sciarra';
UPDATE employees SET first_name = 'David', last_name = 'Bernal González' WHERE first_name = 'Ismael' AND last_name='Sciarra';
SELECT * FROM employees WHERE first_name = 'David' AND last_name = 'Bernal González';
SELECT * FROM employees WHERE last_name = 'King' OR last_name = 'Nayer';
DELETE FROM employees WHERE last_name = 'King' OR last_name = 'Nayer';
SELECT * FROM employees WHERE last_name = 'King' OR last_name = 'Nayer';
SELECT * FROM employees WHERE manager_id = 100;
SELECT * FROM employees WHERE manager_id IN (120,121);
SELECT * FROM employees WHERE manager_id !=100;
SELECT * FROM employees WHERE manager_id <> 100;
SELECT * FROM employees WHERE manager_id NOT IN (100, 101, 102, 103, 108, 114);
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM departments;
SELECT MIN(salary) FROM employees;
SELECT * FROM employees WHERE department_id = '4';
SELECT MIN(salary) FROM employees WHERE department_id='4';
SELECT MAX(salary) FROM employees;
SELECT MAX(salary) FROM employees WHERE department_id='4';
SELECT * FROM employees WHERE department_id='4';
SELECT MAX(salary), MIN(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT AVG(salary) FROM employees WHERE department_id = '4';
SELECT SUM(salary) FROM employees;
SELECT SUM(salary) FROM employees WHERE department_id = '4';
SELECT AVG(salary), AVG(salary*1.10), AVG(salary*1.25) FROM employees;
SELECT first_name, last_name, (salary+100) FROM employees;
SELECT * FROM employees LIMIT 5;
SELECT * FROM departments LIMIT 3;
SELECT * FROM departments LIMIT 3;
SELECT DISTINCT first_name FROM employees;
SELECT * FROM employees ORDER BY salary;
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY 8 DESC;
SELECT * FROM employees ORDER BY salary ASC, department_id DESC;
SELECT department_id, MAX(salary), MIN(salary) FROM employees GROUP BY department_id;
SELECT MAX(salary) FROM employees WHERE department_id = '4';
SELECT MIN(salary) FROM employees WHERE department_id = '4';
SELECT COUNT(employee_id), department_id 
	FROM employees
    GROUP BY department_id
    HAVING COUNT(department_id)>3;
SELECT * FROM employees WHERE department_id = 1;
SELECT dep.department_id, dep.department_name, emp.first_name, emp.last_name
	FROM departments dep
    INNER JOIN employees emp
    ON dep.department_id = emp.department_id;
SELECT t1.department_id, t1.department_name, t2.first_name, t2.last_name
	FROM departments t1
    LEFT JOIN employees t2
    ON t1.department_id = t2.department_id
    WHERE t1.department_id IN (8,12,13,14,15,16);
SELECT t1.department_id, t1.department_name, t2.first_name, t2.last_name
	FROM departments t1
    RIGHT JOIN employees t2
    ON t1.department_id = t2.department_id
    WHERE t1.department_id IN (8,12,13,14,15,16);
SELECT t1.*,t2.*
	FROM departments t1
    CROSS JOIN employees t2;
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
SELECT first_name, last_name, commission_pcts, manager_id FROM employees WHERE manager_id IS NULL
UNION
SELECT first_name, last_name, commission_pcts, manager_id FROM employees WHERE commission_pct IS NULL;
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
-- Problemas NO ME VA, NO ENTIENDO QUE HACE TAMPOCO 
SELECT * FROM employees WHERE employee_id IN (SELECT employee_id FROM employees WHERE phone_number LIKE '650%');
SELECT * FROM employees WHERE employee_id =  (SELECT employee_id FROM employees WHERE phone_number LIKE '650%' LIMIT 1);
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM employees WHERE phone_number LIKE '650%');
