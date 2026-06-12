
use hr;
select e.last_name, d.department_name
FROM employees e
JOIN departments d
USING (department_id);
use hr;
SELECT e.last_name, d.department_name, l.city
FROM employees e
JOIN departments d
On e.department_id = d.department_id
JOIN  locations l
ON d.location_id = l.location_id;

select d.department_name, e.last_name
FROM departments d
left join employees e
On d.department_id = e.department_id;

SELECT e.last_name, e.salary, j.job_title
FROM employees e,
     jobs j
WHERE e.salary BETWEEN j.min_salary AND j.max_salary;
 
