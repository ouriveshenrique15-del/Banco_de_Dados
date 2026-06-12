-- Atividade 1 --
use hr;
select * from employees;
-- Atividade 2 --
select department_id,
department_name,
location_id
from departments;
-- Atividade 3 --
select job_id,
job_title,
max_salary
from jobs;
 -- Atividade 4 --
 select job_id,
 job_title,
 max_salary
 from jobs;
 -- Atividade 5 --
 select first_name,
 last_name,
 email,
 phone_number
 from employees;
 -- Atividade 6 --
 select last_name,
 salary,
500 + salary
 from employees;
 -- Atividade 7 --
 select last_name,
 salary,
 salary * 12
 from employees;
 -- Atividade 8 --
 -- Aparece resultados diferentes por conta das "()", oque estiver dentro dela tem prioridade. --
 -- Atividade 9 --
 select last_name,job_id,salary,commission_pct, salary *12* commission_pct
 from employees;
 -- Atividade 10 --
 select last_name AS 'Sobrenome', salary As 'Salário Mensal', salary * 12 'Salário Anual'
 from employees;
  -- Atividade 11 --
  select concat (first_name, ' ' , last_name, '(E-mail: ', email, ')' )  As 'Indentificação' from employees; 
  -- Atividade 12 --
  select Concat( first_name, ' Trabalha no Cargo ', job_id, ' e ganha ', salary, ' por mês.' ) As ' Apresentação do Funcionário ' from employees;
  -- Atividade 13 --
  SELECT concat(job_title, ': ', ' de ',  min_salary, ' até ',  max_salary) AS 'Faixa Salarial'
FROM jobs;
