
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

SELECT DISTINCT e.emp_id, e.name, p.net_salary
FROM employees e
JOIN payroll p ON p.emp_id = e.emp_id
WHERE p.net_salary >
(
    SELECT AVG(p2.net_salary)
    FROM payroll p2
    JOIN employees e2 ON p2.emp_id = e2.emp_id
    WHERE e2.dept_id = e.dept_id
);

-- 18)

SELECT curr.emp_id, e.name, prev.rating AS prev_rating, curr.rating AS curr_rating
 FROM performance_reviews curr
 JOIN performance_reviews prev ON curr.emp_id = prev.emp_id
     AND curr.period > prev.period
 JOIN employees e ON curr.emp_id = e.emp_id
 WHERE curr.rating > prev.rating
 AND NOT EXISTS (
     SELECT 1 FROM performance_reviews mid
     WHERE mid.emp_id = curr.emp_id AND mid.period > prev.period AND mid.period < curr.period
 );

-- 19)

SELECT e.emp_id, e.name FROM employees e
WHERE e.emp_id IN (SELECT DISTINCT emp_id FROM training_enrollments WHERE status = 'optional')
AND e.emp_id NOT IN (SELECT DISTINCT emp_id FROM training_enrollments WHERE status = 'mandatory');

-- 20)

CREATE OR REPLACE VIEW emp_dashboard AS
 SELECT
     e.emp_id, e.name AS employee, d.name AS department, r.title AS role,
     ROUND(att.present_days * 100.0 / att.total_days, 2) AS attendance_pct,
     ROUND(pr_avg.avg_rating, 2) AS avg_rating,
     pay_latest.net_salary AS latest_salary
 FROM employees e
 JOIN departments d ON e.dept_id = d.dept_id
 JOIN roles r ON e.role_id = r.role_id
 LEFT JOIN (
     SELECT emp_id, COUNT(*) AS total_days,
            SUM(status IN ('present','wfh')) AS present_days
     FROM attendance GROUP BY emp_id
 ) att ON att.emp_id = e.emp_id
 LEFT JOIN (
     SELECT emp_id, AVG(rating) AS avg_rating
     FROM performance_reviews GROUP BY emp_id
 ) pr_avg ON pr_avg.emp_id = e.emp_id
 LEFT JOIN (
    SELECT emp_id, net_salary
     FROM payroll WHERE month = (SELECT MAX(month) FROM payroll p2 WHERE p2.emp_id = payroll.emp_id)
) pay_latest ON pay_latest.emp_id = e.emp_id;
SELECT * FROM emp_dashboard;