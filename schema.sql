
CREATE DATABASE WorkForcePro;

use WorkForcePro;

CREATE TABLE departments(
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    budget BIGINT
);

CREATE TABLE roles(
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40),
    grade CHAR(1)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    email VARCHAR(40) UNIQUE,
    phone BIGINT,
    doj DATE,
    dept_id  INT,
    role_id INT,
    supervisor_id INT,

    CONSTRAINT fk_emp_dept FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id),

    CONSTRAINT fk_emp_role FOREIGN KEY (role_id)
    REFERENCES roles(role_id),

    CONSTRAINT fk_emp_spr FOREIGN KEY (supervisor_id)
    REFERENCES employees(emp_id)
);

CREATE TABLE attendance (
    att_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    date DATE,
    status ENUM("present","absent","leave","wfh"),
    remarks TEXT,

    CONSTRAINT fk_emp_att FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);

CREATE TABLE performance_reviews(
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    reviewer_id INT,
    period DATE,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comments TEXT,

    CONSTRAINT fk_emp_per FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id),

    CONSTRAINT fk_emp_rev FOREIGN KEY (reviewer_id)
    REFERENCES employees(emp_id)
);

CREATE TABLE training_modules(
    module_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40),
    type ENUM('completed','pending','failed'),
    duration INT
);

CREATE TABLE training_enrollments(
    te_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    module_id INT,
    status ENUM("mandatory","optional"),
    completion_date DATE,

    CONSTRAINT fk_emp_twr FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id),

    CONSTRAINT fk_mod_twr FOREIGN KEY (module_id)
    REFERENCES training_modules(module_id)
);

CREATE TABLE payroll(
    pay_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    month DATE,
    basic BIGINT,
    hra BIGINT,
    deductions BIGINT,
    bonus BIGINT,
    net_salary BIGINT,

    CONSTRAINT fk_emp_pay FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);

CREATE TABLE exits(
    exit_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    exit_date DATE,
    reason TEXT,
    approval_status ENUM('completed','pending','failed'),

    CONSTRAINT fk_emp_exits FOREIGN KEY (emp_id)
    REFERENCES employees(emp_id)
);