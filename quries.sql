
--- 1)

SELECT * FROM employees 
WHERE doj BETWEEN '2024-1-1' AND '2024-12-31';

-- 2)

SELECT name from employees
WHERE supervisor_id NOT EXISTS IN ( SELECT DISTINCT(reviewer_id) from performance_reviews );

-- 3)

SELECT * FROM training_modules
WHERE type='pending' AND module_id IN (SELECT distinct(module_id) from training_enrollments 
where status='mandatory');

-- 4)

SELECT YEAR(date) AS year, MONTH(date) AS month,COUNT(*) leaves FROM attendance
GROUP BY YEAR(date), MONTH(date) HAVING COUNT(*) > 5;

-- 5)

SELECT dept_id,COUNT(*) FROM employees
GROUP BY dept_id HAVING COUNT(*) > 20;

-- 6)

SELECT e.emp_id,e.name emp_name,d.name dept_name,s.name sp_name from employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN employees s ON s.supervisor_id = e.emp_id;

-- 7)

SELECT e.dept_id, count(*) FROM employees e
JOIN  performance_reviews p ON p.emp_id= e.emp_id
GROUP BY e.dept_id having count(*) > 5;

-- 8)

SELECT s.supervisor_id,count(*) from employees s
JOIN employees e ON s.supervisor_id = e.emp_id
group by s.supervisor_id HAVING COUNT(*) >1 ;

-- 9)

SELECT emp_id,name from employees
where emp_id IN (SELECT emp_id FROM payroll
WHERE deductions > (SELECT AVG(deductions) from PAYROLL));

-- 10)

SELECT emp_id,name from employees
where emp_id IN (SELECT emp_id FROM payroll
WHERE deductions > (SELECT AVG(deductions) from PAYROLL));

-- 11)

SELECT e.name,pr.rating FROM performance_reviews pr
JOIN employees e ON pr.emp_id = e.emp_id 
ORDER BY rating DESC
LIMIT 10;

-- 12)

SELECT d.name,SUM(pr.net_salary) AS expenditure FROM payroll pr
JOIN employees e ON pr.emp_id = e.emp_id
JOIN departments d ON d.dept_id - e.emp_id
GROUP BY d.name; 

--13)

SELECT e.name, e.emp_id FROM employees e
JOIN attendance a ON e.emp_id = a.emp_id
WHERE a.status != 'leave'
GROUP BY e.emp_id, e.name
HAVING COUNT(*) = (
SELECT MAX(att_count) FROM (
SELECT COUNT(*) AS att_count FROM attendance
WHERE status != 'leave'
GROUP BY emp_id
) AS max_att
);

--14)

SELECT quarter(period),AVG(rating),MAX(rating),sum(rating),MIN(rating) FROM performance_reviews
GROUP BY quarter(period);

-- 15)

SELECT tm.module_id, COUNT(te.emp_id) AS enrollment_count
FROM training_modules tm
LEFT JOIN training_enrollments te
    ON tm.module_id = te.module_id
GROUP BY tm.module_id
HAVING COUNT(te.emp_id) = 0;

-- 16)

SELECT MONTH(pr.month),count(e.emp_id),SUM(pr.net_salary) FROM payroll pr
JOIN employees e ON pr.emp_id = e.emp_id
GROUP BY MONTH(pr.month);

-- 17)



