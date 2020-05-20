%Laborator 1
%2
SELECT employee_id, last_name, salary * 12 "ANNUAL SALARY"
FROM employees;
%3 
DESC employees;
%4
SELECT *
FROM employees;
%5
SELECT employee_id, last_name, job_id
FROM employees;
%6
SELECT job_id FROM employees;
SELECT DISTINCT job_id FROM employees;
%7
SELECT last_name || ', ' || job_id "Angajat si titlul" FROM employees;
%8
%9
SELECT last_name, salary
FROM employees
WHERE salary > 2850; 
%10
SELECT last_name, DEPARTMENT_ID, employee_id
FROM employees
WHERE employee_id = 104;

%11
SELECT last_name, salary
FROM employees
WHERE salary < 1500 or salary > 2850; 

%12
SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '20-FEB-1987' and '1-MAY-1989'
ORDER BY hire_date;

%13
SELECT last_name, department_id
FROM employees
WHERE department_id IN (10, 30)
ORDER BY last_name asc;

%14
SELECT last_name|| ', Salariu: ' || salary "Angajat si Salariu", department_id
FROM employees
WHERE salary > 3500 and (department_id = 10 OR department_id = 30)
ORDER BY salary;

%15
SELECT sysdate
FROM dual;

%16
SELECT first_name, last_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY')=1987; 


%17
SELECT first_name|| ',' || last_name "Numele si prenumele", job_id, manager_id
FROM employees
WHERE manager_id is null;

%18
SELECT first_name, last_name, salary, commission_pct
FROM employees
WHERE commission_pct is not null
ORDER BY salary desc,
         commission_pct desc;
         
 
%19
SELECT first_name, last_name, salary, commission_pct
FROM employees
ORDER BY salary desc,
         commission_pct desc;        
         
%20
SELECT last_name || ' ' || first_name "Numele si prenumele"
FROM employees
WHERE LAST_NAME like '__a%';

%21
SELECT last_name || ' ' || first_name "Numele si prenumele",
department_id, manager_id
FROM employees
WHERE last_name like '%L%L%' and (department_id = 30 OR manager_id = 101);

%22
SELECT last_name, salary, job_id
FROM employees
WHERE (job_id like '%clerk%' or job_id like '%rep%') and salary not in (1000, 2000, 3000);

%23
SELECT last_name, salary, commission_pct
FROM employees
WHERE salary > salary*NVL(commission_pct,0)*5;

SELECT 5*null
FROM dual;

---
SELECT LENGTH('Informatica')
FROM dual;

---
SELECT USER  
FROM dual;

---
