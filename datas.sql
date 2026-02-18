
INSERT INTO departments (dept_id, name, budget) VALUES
(1, 'HR', 500000),
(2, 'Engineering', 2000000),
(3, 'Finance', 800000),
(4, 'Sales', 1200000),
(5, 'Support', 400000);

INSERT INTO roles (role_id, title, grade) VALUES
(1, 'HR Manager', 'A'),
(2, 'Software Engineer', 'B'),
(3, 'Senior Engineer', 'A'),
(4, 'Finance Analyst', 'B'),
(5, 'Sales Executive', 'C'),
(6, 'Support Agent', 'C');

INSERT INTO employees (emp_id, name, email, phone, doj, dept_id, role_id, supervisor_id) VALUES
(1, 'Amit Sharma', 'amit@corp.com', 9000011111, '2023-02-10', 2, 3, NULL),
(2, 'Neha Rao', 'neha@corp.com', 9000022222, '2024-01-15', 2, 2, 1),
(3, 'Ravi Kumar', 'ravi@corp.com', 9000033333, '2024-03-20', 2, 2, 1),
(4, 'Pooja Singh', 'pooja@corp.com', 9000044444, '2023-07-01', 1, 1, NULL),
(5, 'Karan Mehta', 'karan@corp.com', 9000055555, '2024-05-11', 4, 5, NULL),
(6, 'Anjali Verma', 'anjali@corp.com', 9000066666, '2024-06-18', 4, 5, 5),
(7, 'Suresh Iyer', 'suresh@corp.com', 9000077777, '2023-11-25', 3, 4, NULL),
(8, 'Manish Patel', 'manish@corp.com', 9000088888, '2025-01-10', 5, 6, NULL);

INSERT INTO attendance (att_id, emp_id, date, status, remarks) VALUES
(1, 2, '2024-08-01', 'present', ''),
(2, 2, '2024-08-02', 'leave', 'Sick'),
(3, 2, '2024-08-03', 'leave', 'Sick'),
(4, 2, '2024-08-04', 'leave', 'Sick'),
(5, 2, '2024-08-05', 'leave', 'Sick'),
(6, 2, '2024-08-06', 'leave', 'Sick'),
(7, 3, '2024-08-01', 'absent', ''),
(8, 3, '2024-08-02', 'present', ''),
(9, 6, '2024-08-01', 'wfh', ''),
(10, 8, '2025-01-15', 'present', '');

INSERT INTO performance_reviews (review_id, emp_id, reviewer_id, period, rating, comments) VALUES
(1, 2, 1, '2024-03-31', 2, 'Needs improvement'),
(2, 2, 1, '2024-09-30', 3, 'Improved'),
(3, 3, 1, '2024-03-31', 4, 'Good performer'),
(4, 3, 1, '2024-09-30', 5, 'Excellent'),
(5, 6, 5, '2024-06-30', 2, 'Low productivity'),
(6, 8, 4, '2025-03-31', 3, 'Average');

INSERT INTO training_modules (module_id, title, type, duration) VALUES
(1, 'Company Orientation', 'mandatory', 5),
(2, 'Advanced Java', 'mandatory', 20),
(3, 'Sales Techniques', 'optional', 10),
(4, 'Finance Compliance', 'mandatory', 8);

INSERT INTO training_enrollments (te_id, emp_id, module_id, status, completion_date) VALUES
(1, 2, 1, 'completed', '2024-01-20'),
(2, 2, 2, 'pending', NULL),
(3, 3, 1, 'completed', '2024-03-25'),
(4, 6, 3, 'completed', '2024-06-30'),
(5, 8, 1, 'pending', NULL);

INSERT INTO payroll (pay_id, emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(1, 2, '2024-08-01', 40000, 15000, 3000, 5000, 57000),
(2, 3, '2024-08-01', 45000, 18000, 2000, 6000, 67000),
(3, 6, '2024-08-01', 30000, 12000, 5000, 2000, 39000),
(4, 2, '2024-09-01', 40000, 15000, 1000, 7000, 61000),
(5, 8, '2025-01-01', 25000, 8000, 1000, 1000, 33000);

INSERT INTO exits (exit_id, emp_id, exit_date, reason, approval_status) VALUES
(1, 6, '2025-01-31', 'Performance issues', 'completed');
