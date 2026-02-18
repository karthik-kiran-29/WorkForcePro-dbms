
--- 1)

SELECT * FROM employees 
WHERE doj BETWEEN '2024-1-1' AND '2024-12-31';

-- OR 

SELECT * FROM employees 
WHERE YEAR(doj) = 2024;

-- 2)

SELECT name from employees
WHERE supervisor_id NOT IN ( SELECT DISTINCT(reviewer_id) from performance_reviews );

-- 3)

SELECT * FROM training_modules
WHERE type='pending' AND module_id IN (SELECT distinct(module_id) from training_enrollments 
where status='mandatory');

-- 4)

SELECT emp_id,COUNT(*) FROM attendance
GROUP BY emp_id HAVING COUNT(*) > 5;