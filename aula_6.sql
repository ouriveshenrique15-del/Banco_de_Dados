
 
INSERT INTO departments
(department_name, department_id, location_id, manager_id)
VALUES 
('Pesquisa', 81, null, null);

UPDATE employees 
SET salary = salary * 1.15
WHERE department_id = 60;
 

INSERT INTO hr.devs_backup
SELECT *
FROM employees
WHERE job_id = 'IT_PROG';
 

DELETE departments
FROM department_name
WHERE department_id = 81;

Start transaction;
UPDATE funcionarios
SET salario = salario * 1.5
WHERE id = 1;
ROLLBACK;