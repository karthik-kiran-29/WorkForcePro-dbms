
INSERT INTO departments (name, budget) VALUES
('Engineering',        12000000),
('Human Resources',     3500000),
('Finance',             5000000),
('Marketing',           4000000),
('Operations',          7000000),
('Sales',               6000000),
('Legal',               2500000),
('Product',             8000000),
('Customer Support',    3000000),
('Research & Dev',     10000000);

-- ─────────────────────────────────────────────
-- 2. ROLES (12 rows)
-- ─────────────────────────────────────────────
INSERT INTO roles (title, grade) VALUES
('CEO',               'A'),
('CTO',               'A'),
('VP Engineering',    'A'),
('Engineering Manager','B'),
('Senior Engineer',   'B'),
('Junior Engineer',   'C'),
('HR Manager',        'B'),
('HR Executive',      'C'),
('Finance Manager',   'B'),
('Analyst',           'C'),
('Sales Manager',     'B'),
('Support Executive', 'D');

-- ─────────────────────────────────────────────
-- 3. EMPLOYEES (60 rows)
--    emp_id 1-3 are top-level (no supervisor)
--    emp_id 4-15 are managers (supervisor = 1/2/3)
--    emp_id 16-60 are ICs (supervisor = a manager)
-- ─────────────────────────────────────────────
INSERT INTO employees (name, email, phone, doj, dept_id, role_id, supervisor_id) VALUES
-- Top leadership (no supervisor)
('Arjun Mehta',       'arjun.mehta@wfp.com',      9000000001,'2018-01-15',1,1,NULL),
('Priya Sharma',      'priya.sharma@wfp.com',      9000000002,'2018-03-10',1,2,NULL),
('Ravi Kumar',        'ravi.kumar@wfp.com',         9000000003,'2019-06-01',5,3,NULL),

-- Managers (supervisor = 1,2,3)
('Sneha Iyer',        'sneha.iyer@wfp.com',         9000000004,'2019-07-20',1,4,2),
('Vikram Nair',       'vikram.nair@wfp.com',         9000000005,'2020-01-05',2,7,1),
('Divya Pillai',      'divya.pillai@wfp.com',        9000000006,'2020-03-15',3,9,1),
('Aditya Rao',        'aditya.rao@wfp.com',          9000000007,'2020-05-10',4,4,2),
('Meera Das',         'meera.das@wfp.com',           9000000008,'2020-07-22',6,11,3),
('Suresh Menon',      'suresh.menon@wfp.com',        9000000009,'2021-01-10',7,9,1),
('Kavya Reddy',       'kavya.reddy@wfp.com',         9000000010,'2021-03-18',8,4,2),
('Nitin Joshi',       'nitin.joshi@wfp.com',         9000000011,'2021-06-01',9,7,3),
('Pooja Bhat',        'pooja.bhat@wfp.com',          9000000012,'2021-09-14',10,4,2),
('Rahul Tiwari',      'rahul.tiwari@wfp.com',        9000000013,'2022-01-20',1,4,2),
('Ananya Singh',      'ananya.singh@wfp.com',        9000000014,'2022-04-05',5,7,3),
('Karthik Balaji',    'karthik.balaji@wfp.com',      9000000015,'2022-07-11',6,11,3),

-- Engineering employees (dept_id=1, supervisor=4 or 13)
('Amit Verma',        'amit.verma@wfp.com',          9000000016,'2022-09-01',1,5,4),
('Ritu Ghosh',        'ritu.ghosh@wfp.com',           9000000017,'2022-10-15',1,5,4),
('Sanjay Patel',      'sanjay.patel@wfp.com',         9000000018,'2023-01-10',1,6,4),
('Deepika Nanda',     'deepika.nanda@wfp.com',        9000000019,'2023-03-22',1,6,4),
('Mohit Saxena',      'mohit.saxena@wfp.com',         9000000020,'2023-05-05',1,6,13),
('Harsha Reddy',      'harsha.reddy@wfp.com',         9000000021,'2023-07-19',1,5,13),
('Lavanya Krishnan',  'lavanya.krishnan@wfp.com',     9000000022,'2023-09-01',1,6,13),
('Tarun Bajaj',       'tarun.bajaj@wfp.com',          9000000023,'2024-01-08',1,6,13),
('Swati Mishra',      'swati.mishra@wfp.com',         9000000024,'2024-02-14',1,6,4),
('Nikhil Bhatt',      'nikhil.bhatt@wfp.com',         9000000025,'2024-03-20',1,5,4),

-- HR employees (dept_id=2, supervisor=5)
('Preethi Nair',      'preethi.nair@wfp.com',         9000000026,'2021-08-01',2,8,5),
('Gaurav Sharma',     'gaurav.sharma@wfp.com',         9000000027,'2022-01-17',2,8,5),
('Shalini Gupta',     'shalini.gupta@wfp.com',         9000000028,'2023-04-05',2,8,5),
('Rohit Soni',        'rohit.soni@wfp.com',            9000000029,'2024-01-15',2,8,5),
('Tanya Khanna',      'tanya.khanna@wfp.com',          9000000030,'2024-04-10',2,8,5),

-- Finance employees (dept_id=3, supervisor=6)
('Vikas Agarwal',     'vikas.agarwal@wfp.com',         9000000031,'2021-11-01',3,10,6),
('Neha Dixit',        'neha.dixit@wfp.com',             9000000032,'2022-06-20',3,10,6),
('Aryan Kapoor',      'aryan.kapoor@wfp.com',           9000000033,'2023-02-14',3,10,6),
('Shruti Pandey',     'shruti.pandey@wfp.com',          9000000034,'2023-08-08',3,10,6),
('Manish Goel',       'manish.goel@wfp.com',            9000000035,'2024-01-22',3,10,6),

-- Marketing employees (dept_id=4, supervisor=7)
('Puja Sen',          'puja.sen@wfp.com',               9000000036,'2022-03-10',4,10,7),
('Arun Pillai',       'arun.pillai@wfp.com',            9000000037,'2022-09-25',4,10,7),
('Riya Jain',         'riya.jain@wfp.com',              9000000038,'2023-05-16',4,10,7),
('Kiran Rao',         'kiran.rao@wfp.com',              9000000039,'2024-02-28',4,10,7),

-- Sales employees (dept_id=6, supervisor=8 or 15)
('Sunil Bose',        'sunil.bose@wfp.com',             9000000040,'2021-04-05',6,10,8),
('Ankit Desai',       'ankit.desai@wfp.com',            9000000041,'2021-10-18',6,10,8),
('Pallavi Chandra',   'pallavi.chandra@wfp.com',        9000000042,'2022-02-14',6,10,15),
('Vivek Yadav',       'vivek.yadav@wfp.com',            9000000043,'2022-08-30',6,10,15),
('Ishaan Malhotra',   'ishaan.malhotra@wfp.com',        9000000044,'2023-06-12',6,10,15),
('Bhavna Mehta',      'bhavna.mehta@wfp.com',           9000000045,'2023-12-01',6,10,8),

-- Operations employees (dept_id=5, supervisor=3 or 14)
('Dhruv Saxena',      'dhruv.saxena@wfp.com',           9000000046,'2021-07-07',5,10,3),
('Kritika Patil',     'kritika.patil@wfp.com',          9000000047,'2022-05-23',5,10,14),
('Sameer Khan',       'sameer.khan@wfp.com',            9000000048,'2022-11-11',5,10,14),
('Nandini Rao',       'nandini.rao@wfp.com',            9000000049,'2023-09-19',5,10,14),

-- Support employees (dept_id=9, supervisor=11)
('Farhan Shaikh',     'farhan.shaikh@wfp.com',          9000000050,'2022-04-04',9,12,11),
('Meghna Das',        'meghna.das@wfp.com',             9000000051,'2022-08-16',9,12,11),
('Gopal Iyer',        'gopal.iyer@wfp.com',             9000000052,'2023-01-30',9,12,11),
('Preeti Nambiar',    'preeti.nambiar@wfp.com',         9000000053,'2023-07-07',9,12,11),

-- R&D employees (dept_id=10, supervisor=12)
('Akash Tomar',       'akash.tomar@wfp.com',            9000000054,'2021-02-28',10,5,12),
('Simran Kaur',       'simran.kaur@wfp.com',            9000000055,'2021-09-09',10,5,12),
('Rohan Verma',       'rohan.verma@wfp.com',            9000000056,'2022-06-15',10,5,12),
('Tanvi Shah',        'tanvi.shah@wfp.com',             9000000057,'2023-03-03',10,6,12),
('Manu Krishnan',     'manu.krishnan@wfp.com',          9000000058,'2024-01-05',10,6,12),
('Siddharth Saha',    'siddharth.saha@wfp.com',         9000000059,'2024-05-20',10,6,12),
('Jayanthi Balan',    'jayanthi.balan@wfp.com',         9000000060,'2024-06-10',10,6,12);

-- ─────────────────────────────────────────────
-- 4. ATTENDANCE (mixed statuses, ~900 rows via per-employee monthly blocks)
--    We insert records for Jan-Dec 2024 (working days ~22/month)
--    Some employees get >5 leaves in a month (satisfies Q4)
-- ─────────────────────────────────────────────

-- Helper: we insert weekly samples per employee per month
-- Format: (emp_id, date, status, remarks)

INSERT INTO attendance (emp_id, date, status, remarks) VALUES
-- ── JAN 2024 ──────────────────────────────────────────────────
(1,'2024-01-02','present','On time'),(1,'2024-01-03','present','On time'),(1,'2024-01-04','present','On time'),(1,'2024-01-05','present','On time'),(1,'2024-01-08','present','On time'),(1,'2024-01-09','present','On time'),(1,'2024-01-10','wfh','Remote work'),(1,'2024-01-11','present','On time'),(1,'2024-01-12','present','On time'),(1,'2024-01-15','present','On time'),(1,'2024-01-16','present','On time'),(1,'2024-01-17','present','On time'),(1,'2024-01-18','leave','Annual leave'),(1,'2024-01-19','leave','Annual leave'),(1,'2024-01-22','present','On time'),(1,'2024-01-23','present','On time'),(1,'2024-01-24','present','On time'),(1,'2024-01-25','present','On time'),(1,'2024-01-26','present','On time'),(1,'2024-01-29','present','On time'),(1,'2024-01-30','present','On time'),(1,'2024-01-31','present','On time'),

(2,'2024-01-02','present','On time'),(2,'2024-01-03','present','On time'),(2,'2024-01-04','wfh','Remote'),(2,'2024-01-05','present','On time'),(2,'2024-01-08','absent','Sick'),(2,'2024-01-09','absent','Sick'),(2,'2024-01-10','absent','Sick'),(2,'2024-01-11','present','On time'),(2,'2024-01-12','present','On time'),(2,'2024-01-15','leave','Annual leave'),(2,'2024-01-16','leave','Annual leave'),(2,'2024-01-17','leave','Annual leave'),(2,'2024-01-18','leave','Annual leave'),(2,'2024-01-19','leave','Annual leave'),(2,'2024-01-22','leave','Annual leave'),(2,'2024-01-23','present','On time'),(2,'2024-01-24','present','On time'),(2,'2024-01-25','present','On time'),(2,'2024-01-26','present','On time'),(2,'2024-01-29','present','On time'),(2,'2024-01-30','present','On time'),(2,'2024-01-31','present','On time'),

(16,'2024-01-02','present','On time'),(16,'2024-01-03','present','On time'),(16,'2024-01-04','present','On time'),(16,'2024-01-05','wfh','Remote'),(16,'2024-01-08','present','On time'),(16,'2024-01-09','present','On time'),(16,'2024-01-10','present','On time'),(16,'2024-01-11','absent','Unplanned'),(16,'2024-01-12','present','On time'),(16,'2024-01-15','present','On time'),(16,'2024-01-16','leave','Casual leave'),(16,'2024-01-17','leave','Casual leave'),(16,'2024-01-18','leave','Casual leave'),(16,'2024-01-19','leave','Casual leave'),(16,'2024-01-22','leave','Casual leave'),(16,'2024-01-23','leave','Casual leave'),(16,'2024-01-24','present','On time'),(16,'2024-01-25','present','On time'),(16,'2024-01-26','present','On time'),(16,'2024-01-29','present','On time'),(16,'2024-01-30','present','On time'),(16,'2024-01-31','present','On time'),

(17,'2024-01-02','present','On time'),(17,'2024-01-03','present','On time'),(17,'2024-01-04','present','On time'),(17,'2024-01-05','present','On time'),(17,'2024-01-08','present','On time'),(17,'2024-01-09','wfh','Remote'),(17,'2024-01-10','wfh','Remote'),(17,'2024-01-11','present','On time'),(17,'2024-01-12','present','On time'),(17,'2024-01-15','present','On time'),(17,'2024-01-16','present','On time'),(17,'2024-01-17','present','On time'),(17,'2024-01-18','present','On time'),(17,'2024-01-19','leave','Medical'),(17,'2024-01-22','present','On time'),(17,'2024-01-23','present','On time'),(17,'2024-01-24','present','On time'),(17,'2024-01-25','present','On time'),(17,'2024-01-26','present','On time'),(17,'2024-01-29','present','On time'),(17,'2024-01-30','present','On time'),(17,'2024-01-31','present','On time'),

(18,'2024-01-02','present','On time'),(18,'2024-01-03','absent','No show'),(18,'2024-01-04','absent','No show'),(18,'2024-01-05','leave','Sick'),(18,'2024-01-08','leave','Sick'),(18,'2024-01-09','leave','Sick'),(18,'2024-01-10','leave','Sick'),(18,'2024-01-11','leave','Sick'),(18,'2024-01-12','leave','Sick'),(18,'2024-01-15','present','On time'),(18,'2024-01-16','present','On time'),(18,'2024-01-17','present','On time'),(18,'2024-01-18','present','On time'),(18,'2024-01-19','present','On time'),(18,'2024-01-22','present','On time'),(18,'2024-01-23','wfh','Remote'),(18,'2024-01-24','present','On time'),(18,'2024-01-25','present','On time'),(18,'2024-01-26','present','On time'),(18,'2024-01-29','present','On time'),(18,'2024-01-30','present','On time'),(18,'2024-01-31','present','On time'),

-- All remaining employees Jan 2024 (mostly present/wfh, few leaves)
(3,'2024-01-02','present','On time'),(3,'2024-01-05','present','On time'),(3,'2024-01-08','present','On time'),(3,'2024-01-12','wfh','Remote'),(3,'2024-01-15','present','On time'),(3,'2024-01-19','present','On time'),(3,'2024-01-22','leave','Casual'),(3,'2024-01-26','present','On time'),(3,'2024-01-31','present','On time'),
(4,'2024-01-02','present','On time'),(4,'2024-01-05','present','On time'),(4,'2024-01-08','wfh','Remote'),(4,'2024-01-12','present','On time'),(4,'2024-01-15','present','On time'),(4,'2024-01-19','absent','Sick'),(4,'2024-01-22','present','On time'),(4,'2024-01-26','present','On time'),(4,'2024-01-31','present','On time'),
(5,'2024-01-02','present','On time'),(5,'2024-01-05','present','On time'),(5,'2024-01-08','present','On time'),(5,'2024-01-12','present','On time'),(5,'2024-01-15','wfh','Remote'),(5,'2024-01-19','present','On time'),(5,'2024-01-22','present','On time'),(5,'2024-01-26','leave','Annual'),(5,'2024-01-31','present','On time'),
(6,'2024-01-02','present','On time'),(6,'2024-01-05','wfh','Remote'),(6,'2024-01-08','present','On time'),(6,'2024-01-12','present','On time'),(6,'2024-01-15','present','On time'),(6,'2024-01-19','present','On time'),(6,'2024-01-22','absent','Sick'),(6,'2024-01-26','present','On time'),(6,'2024-01-31','present','On time'),
(7,'2024-01-02','present','On time'),(7,'2024-01-05','present','On time'),(7,'2024-01-08','present','On time'),(7,'2024-01-12','wfh','Remote'),(7,'2024-01-15','leave','Personal'),(7,'2024-01-19','present','On time'),(7,'2024-01-22','present','On time'),(7,'2024-01-26','present','On time'),(7,'2024-01-31','present','On time'),
(8,'2024-01-02','present','On time'),(8,'2024-01-05','present','On time'),(8,'2024-01-08','absent','Sick'),(8,'2024-01-12','present','On time'),(8,'2024-01-15','present','On time'),(8,'2024-01-19','wfh','Remote'),(8,'2024-01-22','present','On time'),(8,'2024-01-26','present','On time'),(8,'2024-01-31','leave','Casual'),
(9,'2024-01-02','present','On time'),(9,'2024-01-05','present','On time'),(9,'2024-01-08','present','On time'),(9,'2024-01-12','present','On time'),(9,'2024-01-15','wfh','Remote'),(9,'2024-01-19','present','On time'),(9,'2024-01-22','leave','Medical'),(9,'2024-01-26','present','On time'),(9,'2024-01-31','present','On time'),
(10,'2024-01-02','present','On time'),(10,'2024-01-05','wfh','Remote'),(10,'2024-01-08','present','On time'),(10,'2024-01-12','present','On time'),(10,'2024-01-15','present','On time'),(10,'2024-01-19','present','On time'),(10,'2024-01-22','present','On time'),(10,'2024-01-26','absent','Sick'),(10,'2024-01-31','present','On time'),
(11,'2024-01-02','present','On time'),(11,'2024-01-05','present','On time'),(11,'2024-01-08','wfh','Remote'),(11,'2024-01-12','present','On time'),(11,'2024-01-15','present','On time'),(11,'2024-01-19','present','On time'),(11,'2024-01-22','present','On time'),(11,'2024-01-26','leave','Casual'),(11,'2024-01-31','present','On time'),
(12,'2024-01-02','present','On time'),(12,'2024-01-05','present','On time'),(12,'2024-01-08','present','On time'),(12,'2024-01-12','absent','Sick'),(12,'2024-01-15','present','On time'),(12,'2024-01-19','wfh','Remote'),(12,'2024-01-22','present','On time'),(12,'2024-01-26','present','On time'),(12,'2024-01-31','present','On time'),
(13,'2024-01-02','present','On time'),(13,'2024-01-05','present','On time'),(13,'2024-01-08','present','On time'),(13,'2024-01-12','wfh','Remote'),(13,'2024-01-15','present','On time'),(13,'2024-01-19','present','On time'),(13,'2024-01-22','leave','Annual'),(13,'2024-01-26','present','On time'),(13,'2024-01-31','present','On time'),
(14,'2024-01-02','present','On time'),(14,'2024-01-05','present','On time'),(14,'2024-01-08','present','On time'),(14,'2024-01-12','present','On time'),(14,'2024-01-15','wfh','Remote'),(14,'2024-01-19','absent','Sick'),(14,'2024-01-22','present','On time'),(14,'2024-01-26','present','On time'),(14,'2024-01-31','present','On time'),
(15,'2024-01-02','present','On time'),(15,'2024-01-05','wfh','Remote'),(15,'2024-01-08','present','On time'),(15,'2024-01-12','present','On time'),(15,'2024-01-15','present','On time'),(15,'2024-01-19','present','On time'),(15,'2024-01-22','present','On time'),(15,'2024-01-26','leave','Casual'),(15,'2024-01-31','present','On time');

-- ── FEB 2024 ──────────────────────────────────────────────────
INSERT INTO attendance (emp_id, date, status, remarks) VALUES
(1,'2024-02-01','present','On time'),(1,'2024-02-02','present','On time'),(1,'2024-02-05','wfh','Remote'),(1,'2024-02-06','present','On time'),(1,'2024-02-07','present','On time'),(1,'2024-02-08','present','On time'),(1,'2024-02-09','present','On time'),(1,'2024-02-12','present','On time'),(1,'2024-02-13','present','On time'),(1,'2024-02-14','present','On time'),(1,'2024-02-15','leave','Annual'),(1,'2024-02-16','leave','Annual'),(1,'2024-02-19','leave','Annual'),(1,'2024-02-20','leave','Annual'),(1,'2024-02-21','leave','Annual'),(1,'2024-02-22','leave','Annual'),(1,'2024-02-23','present','On time'),(1,'2024-02-26','present','On time'),(1,'2024-02-27','present','On time'),(1,'2024-02-28','present','On time'),(1,'2024-02-29','present','On time'),

(2,'2024-02-01','present','On time'),(2,'2024-02-02','wfh','Remote'),(2,'2024-02-05','present','On time'),(2,'2024-02-06','present','On time'),(2,'2024-02-07','absent','Sick'),(2,'2024-02-08','present','On time'),(2,'2024-02-09','present','On time'),(2,'2024-02-12','present','On time'),(2,'2024-02-13','wfh','Remote'),(2,'2024-02-14','present','On time'),(2,'2024-02-15','present','On time'),(2,'2024-02-16','present','On time'),(2,'2024-02-19','present','On time'),(2,'2024-02-20','present','On time'),(2,'2024-02-21','leave','Casual'),(2,'2024-02-22','present','On time'),(2,'2024-02-23','present','On time'),(2,'2024-02-26','present','On time'),(2,'2024-02-27','present','On time'),(2,'2024-02-28','present','On time'),(2,'2024-02-29','present','On time'),

(16,'2024-02-01','present','On time'),(16,'2024-02-02','present','On time'),(16,'2024-02-05','present','On time'),(16,'2024-02-06','wfh','Remote'),(16,'2024-02-07','present','On time'),(16,'2024-02-08','present','On time'),(16,'2024-02-09','absent','Sick'),(16,'2024-02-12','absent','Sick'),(16,'2024-02-13','absent','Sick'),(16,'2024-02-14','absent','Sick'),(16,'2024-02-15','absent','Sick'),(16,'2024-02-16','absent','Sick'),(16,'2024-02-19','present','On time'),(16,'2024-02-20','present','On time'),(16,'2024-02-21','present','On time'),(16,'2024-02-22','present','On time'),(16,'2024-02-23','present','On time'),(16,'2024-02-26','wfh','Remote'),(16,'2024-02-27','present','On time'),(16,'2024-02-28','present','On time'),(16,'2024-02-29','present','On time'),

(17,'2024-02-01','present','On time'),(17,'2024-02-02','present','On time'),(17,'2024-02-05','present','On time'),(17,'2024-02-06','present','On time'),(17,'2024-02-07','wfh','Remote'),(17,'2024-02-08','present','On time'),(17,'2024-02-09','present','On time'),(17,'2024-02-12','present','On time'),(17,'2024-02-13','present','On time'),(17,'2024-02-14','present','On time'),(17,'2024-02-15','present','On time'),(17,'2024-02-16','present','On time'),(17,'2024-02-19','present','On time'),(17,'2024-02-20','wfh','Remote'),(17,'2024-02-21','present','On time'),(17,'2024-02-22','present','On time'),(17,'2024-02-23','present','On time'),(17,'2024-02-26','present','On time'),(17,'2024-02-27','leave','Personal'),(17,'2024-02-28','present','On time'),(17,'2024-02-29','present','On time');

-- ── MAR–DEC 2024: batch inserts per employee group ────────────
INSERT INTO attendance (emp_id, date, status, remarks) VALUES
-- March 2024
(1,'2024-03-01','present','On time'),(1,'2024-03-04','present','On time'),(1,'2024-03-05','wfh','Remote'),(1,'2024-03-11','present','On time'),(1,'2024-03-15','present','On time'),(1,'2024-03-18','leave','Annual'),(1,'2024-03-22','present','On time'),(1,'2024-03-25','present','On time'),(1,'2024-03-29','present','On time'),
(2,'2024-03-01','wfh','Remote'),(2,'2024-03-04','present','On time'),(2,'2024-03-05','present','On time'),(2,'2024-03-11','absent','Sick'),(2,'2024-03-15','present','On time'),(2,'2024-03-18','present','On time'),(2,'2024-03-22','leave','Casual'),(2,'2024-03-25','present','On time'),(2,'2024-03-29','present','On time'),
(16,'2024-03-01','present','On time'),(16,'2024-03-04','present','On time'),(16,'2024-03-07','wfh','Remote'),(16,'2024-03-11','present','On time'),(16,'2024-03-14','leave','Medical'),(16,'2024-03-18','leave','Medical'),(16,'2024-03-21','leave','Medical'),(16,'2024-03-25','present','On time'),(16,'2024-03-28','present','On time'),
(17,'2024-03-01','present','On time'),(17,'2024-03-04','present','On time'),(17,'2024-03-07','present','On time'),(17,'2024-03-11','present','On time'),(17,'2024-03-14','wfh','Remote'),(17,'2024-03-18','present','On time'),(17,'2024-03-21','present','On time'),(17,'2024-03-25','present','On time'),(17,'2024-03-28','present','On time'),
(18,'2024-03-01','absent','Sick'),(18,'2024-03-04','present','On time'),(18,'2024-03-07','present','On time'),(18,'2024-03-11','present','On time'),(18,'2024-03-14','present','On time'),(18,'2024-03-18','wfh','Remote'),(18,'2024-03-21','present','On time'),(18,'2024-03-25','leave','Casual'),(18,'2024-03-28','present','On time'),

-- April 2024
(1,'2024-04-01','present','On time'),(1,'2024-04-04','wfh','Remote'),(1,'2024-04-08','present','On time'),(1,'2024-04-12','present','On time'),(1,'2024-04-15','leave','Annual'),(1,'2024-04-19','present','On time'),(1,'2024-04-22','present','On time'),(1,'2024-04-26','present','On time'),(1,'2024-04-30','present','On time'),
(16,'2024-04-01','present','On time'),(16,'2024-04-04','present','On time'),(16,'2024-04-08','wfh','Remote'),(16,'2024-04-12','present','On time'),(16,'2024-04-15','present','On time'),(16,'2024-04-19','absent','Sick'),(16,'2024-04-22','present','On time'),(16,'2024-04-26','present','On time'),(16,'2024-04-30','present','On time'),
(19,'2024-04-01','present','On time'),(19,'2024-04-04','leave','Casual'),(19,'2024-04-08','leave','Casual'),(19,'2024-04-12','leave','Casual'),(19,'2024-04-15','leave','Casual'),(19,'2024-04-19','leave','Casual'),(19,'2024-04-22','leave','Casual'),(19,'2024-04-26','present','On time'),(19,'2024-04-30','present','On time'),

-- May–Dec 2024 sampling for key employees
(1,'2024-05-06','present','On time'),(1,'2024-05-13','present','On time'),(1,'2024-05-20','wfh','Remote'),(1,'2024-05-27','present','On time'),
(1,'2024-06-03','present','On time'),(1,'2024-06-10','leave','Annual'),(1,'2024-06-17','present','On time'),(1,'2024-06-24','present','On time'),
(1,'2024-07-01','present','On time'),(1,'2024-07-08','wfh','Remote'),(1,'2024-07-15','present','On time'),(1,'2024-07-22','present','On time'),(1,'2024-07-29','present','On time'),
(1,'2024-08-05','present','On time'),(1,'2024-08-12','present','On time'),(1,'2024-08-19','wfh','Remote'),(1,'2024-08-26','present','On time'),
(1,'2024-09-02','present','On time'),(1,'2024-09-09','present','On time'),(1,'2024-09-16','leave','Annual'),(1,'2024-09-23','present','On time'),(1,'2024-09-30','present','On time'),
(1,'2024-10-07','present','On time'),(1,'2024-10-14','wfh','Remote'),(1,'2024-10-21','present','On time'),(1,'2024-10-28','present','On time'),
(1,'2024-11-04','present','On time'),(1,'2024-11-11','present','On time'),(1,'2024-11-18','leave','Annual'),(1,'2024-11-25','present','On time'),
(1,'2024-12-02','present','On time'),(1,'2024-12-09','wfh','Remote'),(1,'2024-12-16','present','On time'),(1,'2024-12-23','present','On time'),(1,'2024-12-30','present','On time');

-- Bulk attendance for employees 3-60 across 2024 (spot monthly records)
INSERT INTO attendance (emp_id, date, status, remarks) VALUES
(3,'2024-02-05','present','On time'),(3,'2024-02-12','wfh','Remote'),(3,'2024-02-19','present','On time'),(3,'2024-02-26','present','On time'),
(3,'2024-03-04','present','On time'),(3,'2024-03-11','leave','Annual'),(3,'2024-03-18','present','On time'),(3,'2024-03-25','wfh','Remote'),
(3,'2024-04-08','present','On time'),(3,'2024-04-15','present','On time'),(3,'2024-04-22','absent','Sick'),(3,'2024-04-29','present','On time'),
(3,'2024-05-06','present','On time'),(3,'2024-05-13','wfh','Remote'),(3,'2024-05-20','present','On time'),(3,'2024-05-27','leave','Casual'),
(3,'2024-06-03','present','On time'),(3,'2024-06-10','present','On time'),(3,'2024-06-17','present','On time'),(3,'2024-06-24','wfh','Remote'),
(3,'2024-07-01','present','On time'),(3,'2024-07-08','present','On time'),(3,'2024-07-15','leave','Annual'),(3,'2024-07-22','present','On time'),(3,'2024-07-29','present','On time'),
(3,'2024-08-05','wfh','Remote'),(3,'2024-08-12','present','On time'),(3,'2024-08-19','present','On time'),(3,'2024-08-26','absent','Sick'),
(3,'2024-09-02','present','On time'),(3,'2024-09-09','present','On time'),(3,'2024-09-16','wfh','Remote'),(3,'2024-09-23','present','On time'),
(3,'2024-10-07','present','On time'),(3,'2024-10-14','leave','Casual'),(3,'2024-10-21','present','On time'),(3,'2024-10-28','present','On time'),
(3,'2024-11-04','present','On time'),(3,'2024-11-11','wfh','Remote'),(3,'2024-11-18','present','On time'),(3,'2024-11-25','present','On time'),
(3,'2024-12-02','present','On time'),(3,'2024-12-09','present','On time'),(3,'2024-12-16','leave','Annual'),(3,'2024-12-23','present','On time');

-- Employees 20-60: monthly attendance samples
INSERT INTO attendance (emp_id, date, status, remarks) VALUES
(20,'2024-01-08','present','On time'),(20,'2024-01-15','wfh','Remote'),(20,'2024-01-22','present','On time'),(20,'2024-01-29','present','On time'),
(20,'2024-02-05','present','On time'),(20,'2024-02-12','absent','Sick'),(20,'2024-02-19','present','On time'),(20,'2024-02-26','wfh','Remote'),
(20,'2024-03-04','leave','Casual'),(20,'2024-03-11','leave','Casual'),(20,'2024-03-18','leave','Casual'),(20,'2024-03-25','leave','Casual'),(20,'2024-03-28','leave','Casual'),(20,'2024-03-29','leave','Casual'),
(20,'2024-04-08','present','On time'),(20,'2024-04-15','present','On time'),(20,'2024-04-22','wfh','Remote'),(20,'2024-04-29','present','On time'),
(20,'2024-05-06','present','On time'),(20,'2024-05-13','present','On time'),(20,'2024-05-20','leave','Annual'),(20,'2024-05-27','present','On time'),
(20,'2024-06-03','wfh','Remote'),(20,'2024-06-10','present','On time'),(20,'2024-06-17','present','On time'),(20,'2024-06-24','present','On time'),
(20,'2024-07-01','present','On time'),(20,'2024-07-08','leave','Casual'),(20,'2024-07-15','present','On time'),(20,'2024-07-22','wfh','Remote'),
(20,'2024-08-05','present','On time'),(20,'2024-08-12','present','On time'),(20,'2024-08-19','absent','Sick'),(20,'2024-08-26','present','On time'),
(20,'2024-09-02','present','On time'),(20,'2024-09-09','wfh','Remote'),(20,'2024-09-16','present','On time'),(20,'2024-09-23','leave','Annual'),
(20,'2024-10-07','present','On time'),(20,'2024-10-14','present','On time'),(20,'2024-10-21','wfh','Remote'),(20,'2024-10-28','present','On time'),
(20,'2024-11-04','present','On time'),(20,'2024-11-11','leave','Casual'),(20,'2024-11-18','present','On time'),(20,'2024-11-25','present','On time'),
(20,'2024-12-02','wfh','Remote'),(20,'2024-12-09','present','On time'),(20,'2024-12-16','present','On time'),(20,'2024-12-23','present','On time');

-- Employees 21-60 abbreviated attendance
INSERT INTO attendance (emp_id, date, status, remarks) VALUES
(21,'2024-01-08','present','On time'),(21,'2024-02-05','present','On time'),(21,'2024-03-04','wfh','Remote'),(21,'2024-04-08','present','On time'),(21,'2024-05-06','leave','Annual'),(21,'2024-06-03','present','On time'),(21,'2024-07-01','present','On time'),(21,'2024-08-05','wfh','Remote'),(21,'2024-09-02','present','On time'),(21,'2024-10-07','present','On time'),(21,'2024-11-04','absent','Sick'),(21,'2024-12-02','present','On time'),
(22,'2024-01-08','present','On time'),(22,'2024-02-05','wfh','Remote'),(22,'2024-03-04','present','On time'),(22,'2024-04-08','leave','Casual'),(22,'2024-05-06','present','On time'),(22,'2024-06-03','present','On time'),(22,'2024-07-01','absent','Sick'),(22,'2024-08-05','present','On time'),(22,'2024-09-02','wfh','Remote'),(22,'2024-10-07','present','On time'),(22,'2024-11-04','present','On time'),(22,'2024-12-02','leave','Annual'),
(23,'2024-01-08','wfh','Remote'),(23,'2024-02-05','present','On time'),(23,'2024-03-04','leave','Casual'),(23,'2024-04-08','present','On time'),(23,'2024-05-06','present','On time'),(23,'2024-06-03','absent','Sick'),(23,'2024-07-01','present','On time'),(23,'2024-08-05','present','On time'),(23,'2024-09-02','leave','Annual'),(23,'2024-10-07','wfh','Remote'),(23,'2024-11-04','present','On time'),(23,'2024-12-02','present','On time'),
(24,'2024-01-08','present','On time'),(24,'2024-02-05','leave','Annual'),(24,'2024-03-04','present','On time'),(24,'2024-04-08','wfh','Remote'),(24,'2024-05-06','present','On time'),(24,'2024-06-03','present','On time'),(24,'2024-07-01','leave','Casual'),(24,'2024-08-05','present','On time'),(24,'2024-09-02','present','On time'),(24,'2024-10-07','absent','Sick'),(24,'2024-11-04','wfh','Remote'),(24,'2024-12-02','present','On time'),
(25,'2024-01-08','present','On time'),(25,'2024-02-05','present','On time'),(25,'2024-03-04','absent','Sick'),(25,'2024-04-08','present','On time'),(25,'2024-05-06','wfh','Remote'),(25,'2024-06-03','present','On time'),(25,'2024-07-01','present','On time'),(25,'2024-08-05','leave','Annual'),(25,'2024-09-02','present','On time'),(25,'2024-10-07','present','On time'),(25,'2024-11-04','wfh','Remote'),(25,'2024-12-02','present','On time'),
(26,'2024-01-08','present','On time'),(26,'2024-02-05','present','On time'),(26,'2024-03-04','wfh','Remote'),(26,'2024-04-08','leave','Casual'),(26,'2024-05-06','present','On time'),(26,'2024-06-03','absent','Sick'),(26,'2024-07-01','present','On time'),(26,'2024-08-05','present','On time'),(26,'2024-09-02','wfh','Remote'),(26,'2024-10-07','leave','Annual'),(26,'2024-11-04','present','On time'),(26,'2024-12-02','present','On time'),
(27,'2024-01-08','wfh','Remote'),(27,'2024-02-05','absent','Sick'),(27,'2024-03-04','present','On time'),(27,'2024-04-08','present','On time'),(27,'2024-05-06','leave','Casual'),(27,'2024-06-03','present','On time'),(27,'2024-07-01','wfh','Remote'),(27,'2024-08-05','present','On time'),(27,'2024-09-02','present','On time'),(27,'2024-10-07','leave','Annual'),(27,'2024-11-04','present','On time'),(27,'2024-12-02','wfh','Remote'),
(28,'2024-01-08','present','On time'),(28,'2024-02-05','present','On time'),(28,'2024-03-04','leave','Casual'),(28,'2024-04-08','wfh','Remote'),(28,'2024-05-06','present','On time'),(28,'2024-06-03','present','On time'),(28,'2024-07-01','absent','Sick'),(28,'2024-08-05','present','On time'),(28,'2024-09-02','leave','Annual'),(28,'2024-10-07','wfh','Remote'),(28,'2024-11-04','present','On time'),(28,'2024-12-02','present','On time'),
(29,'2024-01-08','present','On time'),(29,'2024-02-05','wfh','Remote'),(29,'2024-03-04','present','On time'),(29,'2024-04-08','absent','Sick'),(29,'2024-05-06','leave','Annual'),(29,'2024-06-03','present','On time'),(29,'2024-07-01','present','On time'),(29,'2024-08-05','wfh','Remote'),(29,'2024-09-02','present','On time'),(29,'2024-10-07','present','On time'),(29,'2024-11-04','leave','Casual'),(29,'2024-12-02','present','On time'),
(30,'2024-01-08','leave','Annual'),(30,'2024-02-05','present','On time'),(30,'2024-03-04','present','On time'),(30,'2024-04-08','wfh','Remote'),(30,'2024-05-06','present','On time'),(30,'2024-06-03','absent','Sick'),(30,'2024-07-01','present','On time'),(30,'2024-08-05','present','On time'),(30,'2024-09-02','wfh','Remote'),(30,'2024-10-07','present','On time'),(30,'2024-11-04','present','On time'),(30,'2024-12-02','leave','Casual'),
(31,'2024-01-08','present','On time'),(31,'2024-02-05','present','On time'),(31,'2024-03-04','leave','Casual'),(31,'2024-04-08','present','On time'),(31,'2024-05-06','wfh','Remote'),(31,'2024-06-03','present','On time'),(31,'2024-07-01','absent','Sick'),(31,'2024-08-05','present','On time'),(31,'2024-09-02','leave','Annual'),(31,'2024-10-07','present','On time'),(31,'2024-11-04','wfh','Remote'),(31,'2024-12-02','present','On time'),
(32,'2024-01-08','wfh','Remote'),(32,'2024-02-05','present','On time'),(32,'2024-03-04','present','On time'),(32,'2024-04-08','leave','Medical'),(32,'2024-05-06','present','On time'),(32,'2024-06-03','present','On time'),(32,'2024-07-01','wfh','Remote'),(32,'2024-08-05','absent','Sick'),(32,'2024-09-02','present','On time'),(32,'2024-10-07','leave','Annual'),(32,'2024-11-04','present','On time'),(32,'2024-12-02','present','On time'),
(33,'2024-01-08','present','On time'),(33,'2024-02-05','leave','Annual'),(33,'2024-03-04','wfh','Remote'),(33,'2024-04-08','present','On time'),(33,'2024-05-06','present','On time'),(33,'2024-06-03','absent','Sick'),(33,'2024-07-01','present','On time'),(33,'2024-08-05','present','On time'),(33,'2024-09-02','leave','Casual'),(33,'2024-10-07','wfh','Remote'),(33,'2024-11-04','present','On time'),(33,'2024-12-02','present','On time'),
(34,'2024-01-08','present','On time'),(34,'2024-02-05','present','On time'),(34,'2024-03-04','absent','Sick'),(34,'2024-04-08','wfh','Remote'),(34,'2024-05-06','leave','Casual'),(34,'2024-06-03','present','On time'),(34,'2024-07-01','present','On time'),(34,'2024-08-05','wfh','Remote'),(34,'2024-09-02','present','On time'),(34,'2024-10-07','present','On time'),(34,'2024-11-04','leave','Annual'),(34,'2024-12-02','present','On time'),
(35,'2024-01-08','present','On time'),(35,'2024-02-05','wfh','Remote'),(35,'2024-03-04','present','On time'),(35,'2024-04-08','leave','Casual'),(35,'2024-05-06','present','On time'),(35,'2024-06-03','present','On time'),(35,'2024-07-01','absent','Sick'),(35,'2024-08-05','present','On time'),(35,'2024-09-02','wfh','Remote'),(35,'2024-10-07','leave','Annual'),(35,'2024-11-04','present','On time'),(35,'2024-12-02','present','On time'),
(36,'2024-01-08','present','On time'),(36,'2024-02-05','present','On time'),(36,'2024-03-04','wfh','Remote'),(36,'2024-04-08','present','On time'),(36,'2024-05-06','absent','Sick'),(36,'2024-06-03','leave','Annual'),(36,'2024-07-01','present','On time'),(36,'2024-08-05','present','On time'),(36,'2024-09-02','leave','Casual'),(36,'2024-10-07','wfh','Remote'),(36,'2024-11-04','present','On time'),(36,'2024-12-02','present','On time'),
(37,'2024-01-08','wfh','Remote'),(37,'2024-02-05','absent','Sick'),(37,'2024-03-04','present','On time'),(37,'2024-04-08','leave','Casual'),(37,'2024-05-06','present','On time'),(37,'2024-06-03','wfh','Remote'),(37,'2024-07-01','present','On time'),(37,'2024-08-05','leave','Annual'),(37,'2024-09-02','present','On time'),(37,'2024-10-07','present','On time'),(37,'2024-11-04','wfh','Remote'),(37,'2024-12-02','present','On time'),
(38,'2024-01-08','present','On time'),(38,'2024-02-05','leave','Annual'),(38,'2024-03-04','present','On time'),(38,'2024-04-08','present','On time'),(38,'2024-05-06','wfh','Remote'),(38,'2024-06-03','absent','Sick'),(38,'2024-07-01','present','On time'),(38,'2024-08-05','present','On time'),(38,'2024-09-02','leave','Casual'),(38,'2024-10-07','present','On time'),(38,'2024-11-04','wfh','Remote'),(38,'2024-12-02','present','On time'),
(39,'2024-01-08','present','On time'),(39,'2024-02-05','present','On time'),(39,'2024-03-04','leave','Medical'),(39,'2024-04-08','wfh','Remote'),(39,'2024-05-06','present','On time'),(39,'2024-06-03','present','On time'),(39,'2024-07-01','leave','Casual'),(39,'2024-08-05','wfh','Remote'),(39,'2024-09-02','absent','Sick'),(39,'2024-10-07','present','On time'),(39,'2024-11-04','present','On time'),(39,'2024-12-02','leave','Annual'),
(40,'2024-01-08','present','On time'),(40,'2024-02-05','wfh','Remote'),(40,'2024-03-04','present','On time'),(40,'2024-04-08','leave','Annual'),(40,'2024-05-06','present','On time'),(40,'2024-06-03','absent','Sick'),(40,'2024-07-01','wfh','Remote'),(40,'2024-08-05','present','On time'),(40,'2024-09-02','present','On time'),(40,'2024-10-07','leave','Casual'),(40,'2024-11-04','present','On time'),(40,'2024-12-02','present','On time'),
(41,'2024-01-08','absent','Sick'),(41,'2024-02-05','present','On time'),(41,'2024-03-04','wfh','Remote'),(41,'2024-04-08','present','On time'),(41,'2024-05-06','leave','Annual'),(41,'2024-06-03','present','On time'),(41,'2024-07-01','present','On time'),(41,'2024-08-05','wfh','Remote'),(41,'2024-09-02','leave','Casual'),(41,'2024-10-07','present','On time'),(41,'2024-11-04','absent','Sick'),(41,'2024-12-02','present','On time'),
(42,'2024-01-08','present','On time'),(42,'2024-02-05','present','On time'),(42,'2024-03-04','leave','Casual'),(42,'2024-04-08','present','On time'),(42,'2024-05-06','wfh','Remote'),(42,'2024-06-03','present','On time'),(42,'2024-07-01','absent','Sick'),(42,'2024-08-05','present','On time'),(42,'2024-09-02','wfh','Remote'),(42,'2024-10-07','leave','Annual'),(42,'2024-11-04','present','On time'),(42,'2024-12-02','present','On time'),
(43,'2024-01-08','wfh','Remote'),(43,'2024-02-05','leave','Annual'),(43,'2024-03-04','present','On time'),(43,'2024-04-08','absent','Sick'),(43,'2024-05-06','present','On time'),(43,'2024-06-03','wfh','Remote'),(43,'2024-07-01','present','On time'),(43,'2024-08-05','present','On time'),(43,'2024-09-02','leave','Casual'),(43,'2024-10-07','present','On time'),(43,'2024-11-04','wfh','Remote'),(43,'2024-12-02','present','On time'),
(44,'2024-01-08','present','On time'),(44,'2024-02-05','present','On time'),(44,'2024-03-04','wfh','Remote'),(44,'2024-04-08','leave','Medical'),(44,'2024-05-06','present','On time'),(44,'2024-06-03','present','On time'),(44,'2024-07-01','wfh','Remote'),(44,'2024-08-05','leave','Annual'),(44,'2024-09-02','present','On time'),(44,'2024-10-07','absent','Sick'),(44,'2024-11-04','present','On time'),(44,'2024-12-02','present','On time'),
(45,'2024-01-08','present','On time'),(45,'2024-02-05','wfh','Remote'),(45,'2024-03-04','leave','Casual'),(45,'2024-04-08','present','On time'),(45,'2024-05-06','present','On time'),(45,'2024-06-03','absent','Sick'),(45,'2024-07-01','present','On time'),(45,'2024-08-05','wfh','Remote'),(45,'2024-09-02','present','On time'),(45,'2024-10-07','leave','Annual'),(45,'2024-11-04','present','On time'),(45,'2024-12-02','present','On time'),
(46,'2024-01-08','wfh','Remote'),(46,'2024-02-05','present','On time'),(46,'2024-03-04','present','On time'),(46,'2024-04-08','leave','Annual'),(46,'2024-05-06','absent','Sick'),(46,'2024-06-03','present','On time'),(46,'2024-07-01','wfh','Remote'),(46,'2024-08-05','present','On time'),(46,'2024-09-02','leave','Casual'),(46,'2024-10-07','present','On time'),(46,'2024-11-04','present','On time'),(46,'2024-12-02','wfh','Remote'),
(47,'2024-01-08','present','On time'),(47,'2024-02-05','absent','Sick'),(47,'2024-03-04','leave','Annual'),(47,'2024-04-08','wfh','Remote'),(47,'2024-05-06','present','On time'),(47,'2024-06-03','present','On time'),(47,'2024-07-01','leave','Casual'),(47,'2024-08-05','present','On time'),(47,'2024-09-02','wfh','Remote'),(47,'2024-10-07','present','On time'),(47,'2024-11-04','present','On time'),(47,'2024-12-02','absent','Sick'),
(48,'2024-01-08','leave','Annual'),(48,'2024-02-05','present','On time'),(48,'2024-03-04','present','On time'),(48,'2024-04-08','present','On time'),(48,'2024-05-06','wfh','Remote'),(48,'2024-06-03','leave','Casual'),(48,'2024-07-01','present','On time'),(48,'2024-08-05','present','On time'),(48,'2024-09-02','absent','Sick'),(48,'2024-10-07','wfh','Remote'),(48,'2024-11-04','leave','Annual'),(48,'2024-12-02','present','On time'),
(49,'2024-01-08','present','On time'),(49,'2024-02-05','present','On time'),(49,'2024-03-04','wfh','Remote'),(49,'2024-04-08','absent','Sick'),(49,'2024-05-06','present','On time'),(49,'2024-06-03','leave','Annual'),(49,'2024-07-01','present','On time'),(49,'2024-08-05','leave','Casual'),(49,'2024-09-02','wfh','Remote'),(49,'2024-10-07','present','On time'),(49,'2024-11-04','present','On time'),(49,'2024-12-02','present','On time'),
(50,'2024-01-08','present','On time'),(50,'2024-02-05','wfh','Remote'),(50,'2024-03-04','leave','Casual'),(50,'2024-04-08','present','On time'),(50,'2024-05-06','absent','Sick'),(50,'2024-06-03','present','On time'),(50,'2024-07-01','present','On time'),(50,'2024-08-05','leave','Annual'),(50,'2024-09-02','wfh','Remote'),(50,'2024-10-07','present','On time'),(50,'2024-11-04','present','On time'),(50,'2024-12-02','present','On time'),
(51,'2024-01-08','present','On time'),(51,'2024-02-05','present','On time'),(51,'2024-03-04','absent','Sick'),(51,'2024-04-08','wfh','Remote'),(51,'2024-05-06','leave','Annual'),(51,'2024-06-03','present','On time'),(51,'2024-07-01','present','On time'),(51,'2024-08-05','present','On time'),(51,'2024-09-02','leave','Casual'),(51,'2024-10-07','wfh','Remote'),(51,'2024-11-04','present','On time'),(51,'2024-12-02','present','On time'),
(52,'2024-01-08','wfh','Remote'),(52,'2024-02-05','leave','Annual'),(52,'2024-03-04','present','On time'),(52,'2024-04-08','present','On time'),(52,'2024-05-06','present','On time'),(52,'2024-06-03','absent','Sick'),(52,'2024-07-01','wfh','Remote'),(52,'2024-08-05','present','On time'),(52,'2024-09-02','leave','Casual'),(52,'2024-10-07','present','On time'),(52,'2024-11-04','present','On time'),(52,'2024-12-02','wfh','Remote'),
(53,'2024-01-08','present','On time'),(53,'2024-02-05','present','On time'),(53,'2024-03-04','leave','Casual'),(53,'2024-04-08','absent','Sick'),(53,'2024-05-06','wfh','Remote'),(53,'2024-06-03','present','On time'),(53,'2024-07-01','leave','Annual'),(53,'2024-08-05','present','On time'),(53,'2024-09-02','present','On time'),(53,'2024-10-07','wfh','Remote'),(53,'2024-11-04','leave','Casual'),(53,'2024-12-02','present','On time'),
(54,'2024-01-08','present','On time'),(54,'2024-02-05','wfh','Remote'),(54,'2024-03-04','present','On time'),(54,'2024-04-08','leave','Annual'),(54,'2024-05-06','present','On time'),(54,'2024-06-03','present','On time'),(54,'2024-07-01','absent','Sick'),(54,'2024-08-05','wfh','Remote'),(54,'2024-09-02','present','On time'),(54,'2024-10-07','leave','Casual'),(54,'2024-11-04','present','On time'),(54,'2024-12-02','present','On time'),
(55,'2024-01-08','leave','Annual'),(55,'2024-02-05','present','On time'),(55,'2024-03-04','wfh','Remote'),(55,'2024-04-08','present','On time'),(55,'2024-05-06','absent','Sick'),(55,'2024-06-03','present','On time'),(55,'2024-07-01','present','On time'),(55,'2024-08-05','leave','Casual'),(55,'2024-09-02','wfh','Remote'),(55,'2024-10-07','present','On time'),(55,'2024-11-04','present','On time'),(55,'2024-12-02','present','On time'),
(56,'2024-01-08','present','On time'),(56,'2024-02-05','present','On time'),(56,'2024-03-04','absent','Sick'),(56,'2024-04-08','wfh','Remote'),(56,'2024-05-06','leave','Annual'),(56,'2024-06-03','present','On time'),(56,'2024-07-01','present','On time'),(56,'2024-08-05','present','On time'),(56,'2024-09-02','leave','Casual'),(56,'2024-10-07','wfh','Remote'),(56,'2024-11-04','present','On time'),(56,'2024-12-02','absent','Sick'),
(57,'2024-01-08','wfh','Remote'),(57,'2024-02-05','leave','Annual'),(57,'2024-03-04','present','On time'),(57,'2024-04-08','absent','Sick'),(57,'2024-05-06','present','On time'),(57,'2024-06-03','wfh','Remote'),(57,'2024-07-01','present','On time'),(57,'2024-08-05','present','On time'),(57,'2024-09-02','leave','Casual'),(57,'2024-10-07','present','On time'),(57,'2024-11-04','wfh','Remote'),(57,'2024-12-02','present','On time'),
(58,'2024-01-08','present','On time'),(58,'2024-02-05','present','On time'),(58,'2024-03-04','leave','Casual'),(58,'2024-04-08','present','On time'),(58,'2024-05-06','wfh','Remote'),(58,'2024-06-03','absent','Sick'),(58,'2024-07-01','present','On time'),(58,'2024-08-05','leave','Annual'),(58,'2024-09-02','present','On time'),(58,'2024-10-07','present','On time'),(58,'2024-11-04','wfh','Remote'),(58,'2024-12-02','present','On time'),
(59,'2024-01-08','present','On time'),(59,'2024-02-05','wfh','Remote'),(59,'2024-03-04','present','On time'),(59,'2024-04-08','leave','Medical'),(59,'2024-05-06','present','On time'),(59,'2024-06-03','present','On time'),(59,'2024-07-01','wfh','Remote'),(59,'2024-08-05','absent','Sick'),(59,'2024-09-02','present','On time'),(59,'2024-10-07','leave','Annual'),(59,'2024-11-04','present','On time'),(59,'2024-12-02','present','On time'),
(60,'2024-01-08','present','On time'),(60,'2024-02-05','absent','Sick'),(60,'2024-03-04','wfh','Remote'),(60,'2024-04-08','present','On time'),(60,'2024-05-06','leave','Casual'),(60,'2024-06-03','present','On time'),(60,'2024-07-01','present','On time'),(60,'2024-08-05','wfh','Remote'),(60,'2024-09-02','leave','Annual'),(60,'2024-10-07','present','On time'),(60,'2024-11-04','present','On time'),(60,'2024-12-02','present','On time');

-- ─────────────────────────────────────────────
-- 5. PERFORMANCE REVIEWS
--    Two cycles: 2023-06-30 (mid-year) and 2023-12-31 (year-end)
--    2024-06-30 (mid) and 2024-12-31 (year-end)
--    Managers (4-15) are reviewers. Some managers have no reviews (Q2).
--    Ratings intentionally vary to support Q7, Q11, Q14, Q18.
-- ─────────────────────────────────────────────

-- Emp 13 (Rahul Tiwari, manager) has NO reviews submitted — satisfies Q2
-- Emp 15 (Karthik Balaji, manager) also no reviews submitted

INSERT INTO performance_reviews (emp_id, reviewer_id, period, rating, comments) VALUES
-- 2023 Mid-year
(16,4,'2023-06-30',3,'Good progress but needs improvement in delivery speed'),
(17,4,'2023-06-30',4,'Excellent code quality and teamwork'),
(18,4,'2023-06-30',2,'Missed several deadlines, needs mentoring'),
(19,4,'2023-06-30',3,'Meets expectations'),
(20,13,'2023-06-30',4,'Strong performer, proactive'),
(21,13,'2023-06-30',5,'Exceptional contributions to the project'),
(22,13,'2023-06-30',3,'Average performer'),
(23,13,'2023-06-30',4,'Good technical skills'),
(24,4,'2023-06-30',2,'Below expectations this period'),
(25,4,'2023-06-30',4,'Excellent senior engineer performance'),
(26,5,'2023-06-30',3,'Satisfactory HR work'),
(27,5,'2023-06-30',4,'Well-organized and efficient'),
(28,5,'2023-06-30',2,'Needs to improve communication'),
(31,6,'2023-06-30',4,'Good analytical skills'),
(32,6,'2023-06-30',3,'Meets requirements'),
(36,7,'2023-06-30',5,'Top marketing performer'),
(37,7,'2023-06-30',3,'Adequate work'),
(40,8,'2023-06-30',4,'Strong sales results'),
(41,8,'2023-06-30',4,'Consistent performer'),
(42,8,'2023-06-30',3,'Meets sales targets'),
(46,3,'2023-06-30',3,'On track with operations'),
(50,11,'2023-06-30',2,'Needs improvement in customer handling'),
(51,11,'2023-06-30',4,'Great customer satisfaction scores'),
(54,12,'2023-06-30',5,'Outstanding R&D contributions'),
(55,12,'2023-06-30',4,'Good research output'),
(56,12,'2023-06-30',3,'Average research output'),

-- 2023 Year-end
(16,4,'2023-12-31',4,'Improved delivery speed, good growth'),
(17,4,'2023-12-31',5,'Outstanding performer this year'),
(18,4,'2023-12-31',2,'Still struggling, placed on PIP'),
(19,4,'2023-12-31',3,'Stable contributor'),
(20,13,'2023-12-31',5,'Best engineer on the team'),
(21,13,'2023-12-31',5,'Consistent top performer'),
(22,13,'2023-12-31',3,'Steady but not growing'),
(23,13,'2023-12-31',5,'Stepped up in H2'),
(24,4,'2023-12-31',3,'Some improvement from H1'),
(25,4,'2023-12-31',5,'Exemplary work and leadership'),
(26,5,'2023-12-31',3,'Consistent'),
(27,5,'2023-12-31',4,'Good year overall'),
(28,5,'2023-12-31',3,'Marginally improved'),
(31,6,'2023-12-31',4,'Strong year-end output'),
(32,6,'2023-12-31',3,'Meets targets'),
(36,7,'2023-12-31',5,'Led major campaign successfully'),
(37,7,'2023-12-31',3,'Stable'),
(40,8,'2023-12-31',4,'Strong annual sales performance'),
(41,8,'2023-12-31',5,'Top sales achiever'),
(42,8,'2023-12-31',3,'Met annual quota'),
(46,3,'2023-12-31',4,'Good operational efficiency'),
(50,11,'2023-12-31',3,'Improved customer handling'),
(51,11,'2023-12-31',5,'Best support score in team'),
(54,12,'2023-12-31',5,'Landmark research published'),
(55,12,'2023-12-31',4,'Good technical paper output'),
(56,12,'2023-12-31',4,'Improved from H1'),

-- 2024 Mid-year
(16,4,'2024-06-30',4,'Consistent improvement'),
(17,4,'2024-06-30',5,'Best engineer in dept'),
(18,4,'2024-06-30',1,'Very poor, termination risk'),
(19,4,'2024-06-30',3,'No change from last year'),
(20,13,'2024-06-30',5,'Stellar performer again'),
(21,13,'2024-06-30',4,'Slight dip but still strong'),
(22,13,'2024-06-30',2,'Performance regressed'),
(23,13,'2024-06-30',5,'Exceptional mid-year'),
(24,4,'2024-06-30',4,'Clear improvement trajectory'),
(25,4,'2024-06-30',5,'Leading key architecture work'),
(26,5,'2024-06-30',4,'Excellent training coordination'),
(27,5,'2024-06-30',5,'Outstanding HR work'),
(28,5,'2024-06-30',3,'Stable'),
(31,6,'2024-06-30',5,'Led finance automation project'),
(32,6,'2024-06-30',3,'Steady state'),
(36,7,'2024-06-30',5,'Record campaign results'),
(37,7,'2024-06-30',2,'Missed several targets'),
(40,8,'2024-06-30',5,'Exceeded Q1-Q2 targets'),
(41,8,'2024-06-30',5,'Best in sales'),
(42,8,'2024-06-30',4,'Improved from last year'),
(46,3,'2024-06-30',4,'Strong ops efficiency'),
(50,11,'2024-06-30',3,'Average support quality'),
(51,11,'2024-06-30',5,'Continued excellence'),
(54,12,'2024-06-30',5,'2nd major paper published'),
(55,12,'2024-06-30',5,'Excellent R&D output'),
(56,12,'2024-06-30',4,'Good H1 research'),
(29,5,'2024-06-30',3,'Adequate performance'),
(30,5,'2024-06-30',2,'Below expectations'),
(33,6,'2024-06-30',4,'Good financial analysis'),
(34,6,'2024-06-30',3,'Meets requirements'),
(43,8,'2024-06-30',4,'Good sales results'),
(44,8,'2024-06-30',3,'On track'),
(47,14,'2024-06-30',3,'Average ops work'),
(48,14,'2024-06-30',4,'Solid operations'),
(57,12,'2024-06-30',3,'New hire progressing'),
(58,12,'2024-06-30',2,'Struggling to meet targets'),

-- 2024 Year-end
(16,4,'2024-12-31',5,'Outstanding year, promoted'),
(17,4,'2024-12-31',5,'Continued excellence'),
(18,4,'2024-12-31',1,'Terminated – see exit record'),
(19,4,'2024-12-31',3,'Stable'),
(20,13,'2024-12-31',5,'Top engineer 2 years running'),
(21,13,'2024-12-31',5,'Exceptional end to the year'),
(22,13,'2024-12-31',2,'At risk of exit'),
(23,13,'2024-12-31',5,'Record deliverables'),
(24,4,'2024-12-31',5,'Best year yet'),
(25,4,'2024-12-31',5,'Architect-level contributions'),
(26,5,'2024-12-31',4,'Strong HR leadership'),
(27,5,'2024-12-31',5,'Promoted to senior HR role'),
(28,5,'2024-12-31',3,'Marginally improved'),
(31,6,'2024-12-31',5,'Finance digitization lead'),
(32,6,'2024-12-31',4,'Good year-end push'),
(36,7,'2024-12-31',5,'Marketing leader of the year'),
(37,7,'2024-12-31',2,'Underperformer – counseled'),
(40,8,'2024-12-31',5,'Annual target 130% achieved'),
(41,8,'2024-12-31',5,'Top sales again'),
(42,8,'2024-12-31',4,'Strong year in sales'),
(46,3,'2024-12-31',5,'Delivered ops excellence'),
(50,11,'2024-12-31',3,'Consistent support'),
(51,11,'2024-12-31',5,'Outstanding support scores'),
(54,12,'2024-12-31',5,'Published 3 papers'),
(55,12,'2024-12-31',5,'Exceptional research year'),
(56,12,'2024-12-31',4,'Good year overall'),
(29,5,'2024-12-31',4,'Improved significantly'),
(30,5,'2024-12-31',3,'Steady state'),
(33,6,'2024-12-31',5,'Strong analytical work'),
(34,6,'2024-12-31',4,'Improved from H1'),
(43,8,'2024-12-31',5,'Strong year-end sales'),
(44,8,'2024-12-31',3,'Stable'),
(47,14,'2024-12-31',4,'Good H2 improvement'),
(48,14,'2024-12-31',4,'Reliable ops employee'),
(57,12,'2024-12-31',4,'Showed improvement'),
(58,12,'2024-12-31',3,'Marginal improvement');

-- ─────────────────────────────────────────────
-- 6. TRAINING MODULES (15 rows)
-- ─────────────────────────────────────────────
INSERT INTO training_modules (title, type, duration) VALUES
('Workplace Safety Fundamentals',   'completed', 4),
('Data Privacy & GDPR',             'completed', 6),
('Leadership Essentials',           'completed', 16),
('Agile & Scrum Methodology',       'completed', 8),
('Python for Data Analysis',        'pending',   12),
('Cloud Architecture (AWS)',        'pending',   20),
('Effective Communication',         'completed', 6),
('Financial Reporting Standards',   'completed', 10),
('Cybersecurity Awareness',         'completed', 4),
('Sales Techniques Advanced',       'pending',   8),
('HR Policy & Compliance',          'completed', 6),
('Machine Learning Foundations',    'failed',    24),
('Customer Experience Design',      'failed',    8),
('Project Management (PMP Prep)',   'pending',   40),
('Code Review Best Practices',      'completed', 6);

-- ─────────────────────────────────────────────
-- 7. TRAINING ENROLLMENTS
--    Q10: employees 35,39,44,49 have ZERO enrollments
--    Q19: employees 29,30,34,44 linked only to optional
-- ─────────────────────────────────────────────
INSERT INTO training_enrollments (emp_id, module_id, status, completion_date) VALUES
-- Mandatory enrollments
(1,1,'mandatory','2024-01-15'),(1,2,'mandatory','2024-02-20'),(1,3,'mandatory','2024-03-10'),
(2,1,'mandatory','2024-01-16'),(2,2,'mandatory','2024-02-22'),(2,9,'mandatory','2024-04-05'),
(3,1,'mandatory','2024-01-20'),(3,4,'mandatory','2024-03-15'),(3,9,'mandatory','2024-04-10'),
(4,1,'mandatory','2024-01-18'),(4,3,'mandatory','2024-02-25'),(4,4,'mandatory','2024-03-20'),(4,15,'mandatory','2024-05-10'),
(5,1,'mandatory','2024-01-19'),(5,7,'mandatory','2024-02-28'),(5,11,'mandatory','2024-04-15'),
(6,1,'mandatory','2024-01-21'),(6,2,'mandatory','2024-02-26'),(6,8,'mandatory','2024-04-20'),
(7,1,'mandatory','2024-01-22'),(7,3,'mandatory','2024-03-01'),(7,2,'mandatory','2024-02-27'),
(8,1,'mandatory','2024-01-23'),(8,10,'mandatory','2024-03-25'),
(9,1,'mandatory','2024-01-24'),(9,2,'mandatory','2024-03-02'),
(10,1,'mandatory','2024-01-25'),(10,3,'mandatory','2024-03-05'),(10,14,'mandatory','2024-06-01'),
(11,1,'mandatory','2024-01-26'),(11,7,'mandatory','2024-03-08'),(11,11,'mandatory','2024-04-22'),
(12,1,'mandatory','2024-01-28'),(12,4,'mandatory','2024-03-10'),(12,15,'mandatory','2024-05-20'),
(16,1,'mandatory','2024-02-01'),(16,4,'mandatory','2024-03-18'),(16,9,'mandatory','2024-04-30'),(16,15,'mandatory','2024-06-15'),
(17,1,'mandatory','2024-02-02'),(17,4,'mandatory','2024-03-19'),(17,15,'mandatory','2024-06-16'),
(18,1,'mandatory','2024-02-03'),(18,9,'mandatory','2024-04-25'),
(19,1,'mandatory','2024-02-04'),(19,4,'mandatory','2024-03-22'),
(20,1,'mandatory','2024-02-05'),(20,4,'mandatory','2024-03-23'),(20,6,'mandatory','2024-05-30'),
(21,1,'mandatory','2024-02-06'),(21,6,'mandatory','2024-06-01'),(21,15,'mandatory','2024-06-20'),
(22,1,'mandatory','2024-02-07'),(22,4,'mandatory','2024-03-25'),
(23,1,'mandatory','2024-02-08'),(23,4,'mandatory','2024-03-26'),(23,15,'mandatory','2024-06-22'),
(24,1,'mandatory','2024-02-09'),(24,9,'mandatory','2024-05-01'),
(25,1,'mandatory','2024-02-10'),(25,6,'mandatory','2024-06-05'),(25,15,'mandatory','2024-07-01'),
(26,1,'mandatory','2024-02-11'),(26,11,'mandatory','2024-04-28'),(26,7,'mandatory','2024-03-28'),
(27,1,'mandatory','2024-02-12'),(27,11,'mandatory','2024-04-29'),(27,7,'mandatory','2024-03-29'),
(28,1,'mandatory','2024-02-13'),(28,11,'mandatory','2024-05-02'),
(31,1,'mandatory','2024-02-14'),(31,8,'mandatory','2024-04-15'),(31,2,'mandatory','2024-03-10'),
(32,1,'mandatory','2024-02-15'),(32,8,'mandatory','2024-04-16'),
(33,1,'mandatory','2024-02-16'),(33,8,'mandatory','2024-04-17'),
(36,1,'mandatory','2024-02-18'),(36,7,'mandatory','2024-03-31'),
(37,1,'mandatory','2024-02-19'),(37,7,'mandatory','2024-04-01'),
(38,1,'mandatory','2024-02-20'),(38,7,'mandatory','2024-04-02'),
(40,1,'mandatory','2024-02-21'),(40,10,'mandatory','2024-05-05'),
(41,1,'mandatory','2024-02-22'),(41,10,'mandatory','2024-05-06'),
(42,1,'mandatory','2024-02-23'),(42,10,'mandatory','2024-05-07'),
(43,1,'mandatory','2024-02-24'),(43,10,'mandatory','2024-05-08'),
(45,1,'mandatory','2024-02-25'),(45,10,'mandatory','2024-05-09'),
(46,1,'mandatory','2024-02-26'),(46,4,'mandatory','2024-03-20'),
(47,1,'mandatory','2024-02-27'),(47,4,'mandatory','2024-03-21'),
(48,1,'mandatory','2024-02-28'),(48,4,'mandatory','2024-03-22'),
(50,1,'mandatory','2024-03-01'),(50,13,'mandatory','2024-05-15'),
(51,1,'mandatory','2024-03-02'),(51,13,'mandatory','2024-05-16'),
(52,1,'mandatory','2024-03-03'),(52,13,'mandatory','2024-05-17'),
(53,1,'mandatory','2024-03-04'),(53,13,'mandatory','2024-05-18'),
(54,1,'mandatory','2024-03-05'),(54,12,'mandatory','2024-05-20'),(54,6,'mandatory','2024-06-10'),
(55,1,'mandatory','2024-03-06'),(55,12,'mandatory','2024-05-21'),(55,6,'mandatory','2024-06-11'),
(56,1,'mandatory','2024-03-07'),(56,12,'mandatory','2024-05-22'),
(57,1,'mandatory','2024-03-08'),(57,12,'mandatory','2024-05-23'),
(58,1,'mandatory','2024-03-09'),(58,12,'mandatory','2024-05-24'),
(59,1,'mandatory','2024-03-10'),(59,12,'mandatory','2024-05-25'),
(60,1,'mandatory','2024-03-11'),(60,12,'mandatory','2024-05-26'),

-- Optional enrollments
(1,14,'optional','2024-07-15'),(2,14,'optional','2024-07-16'),(3,14,'optional','2024-07-17'),
(16,5,'optional','2024-07-20'),(17,5,'optional','2024-07-21'),(20,5,'optional','2024-07-22'),
(21,12,'optional','2024-08-01'),(25,12,'optional','2024-08-05'),(54,14,'optional','2024-08-10'),
(17,6,'optional','2024-09-01'),(23,5,'optional','2024-09-02'),(20,14,'optional','2024-09-05'),
(36,14,'optional','2024-09-10'),(40,14,'optional','2024-09-12'),(41,12,'optional','2024-09-15'),
-- Employees with ONLY optional (Q19)
(29,3,'optional','2024-04-01'),(29,7,'optional','2024-05-01'),
(30,7,'optional','2024-04-15'),(30,14,'optional','2024-07-01'),
(34,3,'optional','2024-04-20'),(34,14,'optional','2024-08-01');

-- Employees 35, 39, 44, 49 intentionally have NO training_enrollments (Q10)

-- ─────────────────────────────────────────────
-- 8. PAYROLL  (Jan 2024 – Dec 2024, 60 employees)
--    Net salary = basic + hra + bonus - deductions
--    Salary varies by role/grade to satisfy Q7, Q12, Q16, Q17
-- ─────────────────────────────────────────────

-- Leadership (emp 1-3)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(1,'2024-01-01',250000,100000,30000,50000,370000),(1,'2024-02-01',250000,100000,30000,50000,370000),(1,'2024-03-01',250000,100000,30000,50000,370000),(1,'2024-04-01',250000,100000,30000,50000,370000),(1,'2024-05-01',250000,100000,30000,75000,395000),(1,'2024-06-01',250000,100000,30000,50000,370000),(1,'2024-07-01',250000,100000,30000,50000,370000),(1,'2024-08-01',250000,100000,30000,50000,370000),(1,'2024-09-01',250000,100000,30000,75000,395000),(1,'2024-10-01',250000,100000,30000,50000,370000),(1,'2024-11-01',250000,100000,30000,50000,370000),(1,'2024-12-01',250000,100000,30000,100000,420000),

(2,'2024-01-01',230000,92000,28000,45000,339000),(2,'2024-02-01',230000,92000,28000,45000,339000),(2,'2024-03-01',230000,92000,28000,45000,339000),(2,'2024-04-01',230000,92000,28000,45000,339000),(2,'2024-05-01',230000,92000,28000,60000,354000),(2,'2024-06-01',230000,92000,28000,45000,339000),(2,'2024-07-01',230000,92000,28000,45000,339000),(2,'2024-08-01',230000,92000,28000,45000,339000),(2,'2024-09-01',230000,92000,28000,60000,354000),(2,'2024-10-01',230000,92000,28000,45000,339000),(2,'2024-11-01',230000,92000,28000,45000,339000),(2,'2024-12-01',230000,92000,28000,90000,384000),

(3,'2024-01-01',200000,80000,25000,40000,295000),(3,'2024-02-01',200000,80000,25000,40000,295000),(3,'2024-03-01',200000,80000,25000,40000,295000),(3,'2024-04-01',200000,80000,25000,40000,295000),(3,'2024-05-01',200000,80000,25000,55000,310000),(3,'2024-06-01',200000,80000,25000,40000,295000),(3,'2024-07-01',200000,80000,25000,40000,295000),(3,'2024-08-01',200000,80000,25000,40000,295000),(3,'2024-09-01',200000,80000,25000,55000,310000),(3,'2024-10-01',200000,80000,25000,40000,295000),(3,'2024-11-01',200000,80000,25000,40000,295000),(3,'2024-12-01',200000,80000,25000,80000,335000);

-- Managers (emp 4-15)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(4,'2024-01-01',150000,60000,20000,25000,215000),(4,'2024-02-01',150000,60000,20000,25000,215000),(4,'2024-03-01',150000,60000,20000,25000,215000),(4,'2024-04-01',150000,60000,20000,25000,215000),(4,'2024-05-01',150000,60000,20000,35000,225000),(4,'2024-06-01',150000,60000,20000,25000,215000),(4,'2024-07-01',150000,60000,20000,25000,215000),(4,'2024-08-01',150000,60000,20000,25000,215000),(4,'2024-09-01',150000,60000,20000,35000,225000),(4,'2024-10-01',150000,60000,20000,25000,215000),(4,'2024-11-01',150000,60000,20000,25000,215000),(4,'2024-12-01',150000,60000,20000,60000,250000),

(5,'2024-01-01',140000,56000,18000,22000,200000),(5,'2024-02-01',140000,56000,18000,22000,200000),(5,'2024-03-01',140000,56000,18000,22000,200000),(5,'2024-04-01',140000,56000,18000,22000,200000),(5,'2024-05-01',140000,56000,18000,30000,208000),(5,'2024-06-01',140000,56000,18000,22000,200000),(5,'2024-07-01',140000,56000,18000,22000,200000),(5,'2024-08-01',140000,56000,18000,22000,200000),(5,'2024-09-01',140000,56000,18000,30000,208000),(5,'2024-10-01',140000,56000,18000,22000,200000),(5,'2024-11-01',140000,56000,18000,22000,200000),(5,'2024-12-01',140000,56000,18000,55000,233000),

(6,'2024-01-01',145000,58000,19000,23000,207000),(6,'2024-02-01',145000,58000,19000,23000,207000),(6,'2024-03-01',145000,58000,19000,23000,207000),(6,'2024-04-01',145000,58000,19000,23000,207000),(6,'2024-05-01',145000,58000,19000,32000,216000),(6,'2024-06-01',145000,58000,19000,23000,207000),(6,'2024-07-01',145000,58000,19000,23000,207000),(6,'2024-08-01',145000,58000,19000,23000,207000),(6,'2024-09-01',145000,58000,19000,32000,216000),(6,'2024-10-01',145000,58000,19000,23000,207000),(6,'2024-11-01',145000,58000,19000,23000,207000),(6,'2024-12-01',145000,58000,19000,58000,242000),

(7,'2024-01-01',148000,59200,19500,24000,211700),(7,'2024-02-01',148000,59200,19500,24000,211700),(7,'2024-03-01',148000,59200,19500,24000,211700),(7,'2024-04-01',148000,59200,19500,24000,211700),(7,'2024-05-01',148000,59200,19500,34000,221700),(7,'2024-06-01',148000,59200,19500,24000,211700),(7,'2024-07-01',148000,59200,19500,24000,211700),(7,'2024-08-01',148000,59200,19500,24000,211700),(7,'2024-09-01',148000,59200,19500,34000,221700),(7,'2024-10-01',148000,59200,19500,24000,211700),(7,'2024-11-01',148000,59200,19500,24000,211700),(7,'2024-12-01',148000,59200,19500,56000,243700),

(8,'2024-01-01',155000,62000,21000,26000,222000),(8,'2024-02-01',155000,62000,21000,26000,222000),(8,'2024-03-01',155000,62000,21000,26000,222000),(8,'2024-04-01',155000,62000,21000,26000,222000),(8,'2024-05-01',155000,62000,21000,38000,234000),(8,'2024-06-01',155000,62000,21000,26000,222000),(8,'2024-07-01',155000,62000,21000,26000,222000),(8,'2024-08-01',155000,62000,21000,26000,222000),(8,'2024-09-01',155000,62000,21000,38000,234000),(8,'2024-10-01',155000,62000,21000,26000,222000),(8,'2024-11-01',155000,62000,21000,26000,222000),(8,'2024-12-01',155000,62000,21000,62000,258000),

(9,'2024-01-01',135000,54000,17500,21000,192500),(9,'2024-02-01',135000,54000,17500,21000,192500),(9,'2024-03-01',135000,54000,17500,21000,192500),(9,'2024-04-01',135000,54000,17500,21000,192500),(9,'2024-05-01',135000,54000,17500,28000,199500),(9,'2024-06-01',135000,54000,17500,21000,192500),(9,'2024-07-01',135000,54000,17500,21000,192500),(9,'2024-08-01',135000,54000,17500,21000,192500),(9,'2024-09-01',135000,54000,17500,28000,199500),(9,'2024-10-01',135000,54000,17500,21000,192500),(9,'2024-11-01',135000,54000,17500,21000,192500),(9,'2024-12-01',135000,54000,17500,50000,221500),

(10,'2024-01-01',160000,64000,22000,28000,230000),(10,'2024-02-01',160000,64000,22000,28000,230000),(10,'2024-03-01',160000,64000,22000,28000,230000),(10,'2024-04-01',160000,64000,22000,28000,230000),(10,'2024-05-01',160000,64000,22000,40000,242000),(10,'2024-06-01',160000,64000,22000,28000,230000),(10,'2024-07-01',160000,64000,22000,28000,230000),(10,'2024-08-01',160000,64000,22000,28000,230000),(10,'2024-09-01',160000,64000,22000,40000,242000),(10,'2024-10-01',160000,64000,22000,28000,230000),(10,'2024-11-01',160000,64000,22000,28000,230000),(10,'2024-12-01',160000,64000,22000,64000,266000),

(11,'2024-01-01',130000,52000,17000,20000,185000),(11,'2024-02-01',130000,52000,17000,20000,185000),(11,'2024-03-01',130000,52000,17000,20000,185000),(11,'2024-04-01',130000,52000,17000,20000,185000),(11,'2024-05-01',130000,52000,17000,26000,191000),(11,'2024-06-01',130000,52000,17000,20000,185000),(11,'2024-07-01',130000,52000,17000,20000,185000),(11,'2024-08-01',130000,52000,17000,20000,185000),(11,'2024-09-01',130000,52000,17000,26000,191000),(11,'2024-10-01',130000,52000,17000,20000,185000),(11,'2024-11-01',130000,52000,17000,20000,185000),(11,'2024-12-01',130000,52000,17000,48000,213000),

(12,'2024-01-01',170000,68000,23000,30000,245000),(12,'2024-02-01',170000,68000,23000,30000,245000),(12,'2024-03-01',170000,68000,23000,30000,245000),(12,'2024-04-01',170000,68000,23000,30000,245000),(12,'2024-05-01',170000,68000,23000,42000,257000),(12,'2024-06-01',170000,68000,23000,30000,245000),(12,'2024-07-01',170000,68000,23000,30000,245000),(12,'2024-08-01',170000,68000,23000,30000,245000),(12,'2024-09-01',170000,68000,23000,42000,257000),(12,'2024-10-01',170000,68000,23000,30000,245000),(12,'2024-11-01',170000,68000,23000,30000,245000),(12,'2024-12-01',170000,68000,23000,68000,283000),

(13,'2024-01-01',152000,60800,20500,26000,218300),(13,'2024-02-01',152000,60800,20500,26000,218300),(13,'2024-03-01',152000,60800,20500,26000,218300),(13,'2024-04-01',152000,60800,20500,26000,218300),(13,'2024-05-01',152000,60800,20500,36000,228300),(13,'2024-06-01',152000,60800,20500,26000,218300),(13,'2024-07-01',152000,60800,20500,26000,218300),(13,'2024-08-01',152000,60800,20500,26000,218300),(13,'2024-09-01',152000,60800,20500,36000,228300),(13,'2024-10-01',152000,60800,20500,26000,218300),(13,'2024-11-01',152000,60800,20500,26000,218300),(13,'2024-12-01',152000,60800,20500,60000,252300),

(14,'2024-01-01',142000,56800,19000,22500,202300),(14,'2024-02-01',142000,56800,19000,22500,202300),(14,'2024-03-01',142000,56800,19000,22500,202300),(14,'2024-04-01',142000,56800,19000,22500,202300),(14,'2024-05-01',142000,56800,19000,32000,211800),(14,'2024-06-01',142000,56800,19000,22500,202300),(14,'2024-07-01',142000,56800,19000,22500,202300),(14,'2024-08-01',142000,56800,19000,22500,202300),(14,'2024-09-01',142000,56800,19000,32000,211800),(14,'2024-10-01',142000,56800,19000,22500,202300),(14,'2024-11-01',142000,56800,19000,22500,202300),(14,'2024-12-01',142000,56800,19000,57000,237800),

(15,'2024-01-01',158000,63200,21500,27000,226700),(15,'2024-02-01',158000,63200,21500,27000,226700),(15,'2024-03-01',158000,63200,21500,27000,226700),(15,'2024-04-01',158000,63200,21500,27000,226700),(15,'2024-05-01',158000,63200,21500,39000,238700),(15,'2024-06-01',158000,63200,21500,27000,226700),(15,'2024-07-01',158000,63200,21500,27000,226700),(15,'2024-08-01',158000,63200,21500,27000,226700),(15,'2024-09-01',158000,63200,21500,39000,238700),(15,'2024-10-01',158000,63200,21500,27000,226700),(15,'2024-11-01',158000,63200,21500,27000,226700),(15,'2024-12-01',158000,63200,21500,63000,261700);

-- Senior Engineers (80K-110K basic)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(16,'2024-01-01',95000,38000,14000,12000,131000),(16,'2024-02-01',95000,38000,14000,12000,131000),(16,'2024-03-01',95000,38000,14000,12000,131000),(16,'2024-04-01',95000,38000,14000,12000,131000),(16,'2024-05-01',95000,38000,14000,18000,137000),(16,'2024-06-01',95000,38000,14000,12000,131000),(16,'2024-07-01',95000,38000,14000,12000,131000),(16,'2024-08-01',95000,38000,14000,12000,131000),(16,'2024-09-01',95000,38000,14000,18000,137000),(16,'2024-10-01',95000,38000,14000,12000,131000),(16,'2024-11-01',95000,38000,14000,12000,131000),(16,'2024-12-01',95000,38000,14000,38000,157000),

(17,'2024-01-01',105000,42000,16000,15000,146000),(17,'2024-02-01',105000,42000,16000,15000,146000),(17,'2024-03-01',105000,42000,16000,15000,146000),(17,'2024-04-01',105000,42000,16000,15000,146000),(17,'2024-05-01',105000,42000,16000,22000,153000),(17,'2024-06-01',105000,42000,16000,15000,146000),(17,'2024-07-01',105000,42000,16000,15000,146000),(17,'2024-08-01',105000,42000,16000,15000,146000),(17,'2024-09-01',105000,42000,16000,22000,153000),(17,'2024-10-01',105000,42000,16000,15000,146000),(17,'2024-11-01',105000,42000,16000,15000,146000),(17,'2024-12-01',105000,42000,16000,42000,173000),

(21,'2024-01-01',110000,44000,16500,18000,155500),(21,'2024-02-01',110000,44000,16500,18000,155500),(21,'2024-03-01',110000,44000,16500,18000,155500),(21,'2024-04-01',110000,44000,16500,18000,155500),(21,'2024-05-01',110000,44000,16500,25000,162500),(21,'2024-06-01',110000,44000,16500,18000,155500),(21,'2024-07-01',110000,44000,16500,18000,155500),(21,'2024-08-01',110000,44000,16500,18000,155500),(21,'2024-09-01',110000,44000,16500,25000,162500),(21,'2024-10-01',110000,44000,16500,18000,155500),(21,'2024-11-01',110000,44000,16500,18000,155500),(21,'2024-12-01',110000,44000,16500,44000,181500),

(25,'2024-01-01',108000,43200,16200,17000,152000),(25,'2024-02-01',108000,43200,16200,17000,152000),(25,'2024-03-01',108000,43200,16200,17000,152000),(25,'2024-04-01',108000,43200,16200,17000,152000),(25,'2024-05-01',108000,43200,16200,24000,159000),(25,'2024-06-01',108000,43200,16200,17000,152000),(25,'2024-07-01',108000,43200,16200,17000,152000),(25,'2024-08-01',108000,43200,16200,17000,152000),(25,'2024-09-01',108000,43200,16200,24000,159000),(25,'2024-10-01',108000,43200,16200,17000,152000),(25,'2024-11-01',108000,43200,16200,17000,152000),(25,'2024-12-01',108000,43200,16200,43000,178000);

-- Junior Engineers & Analysts (55K-80K basic)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(18,'2024-01-01',65000,26000,10000,5000,86000),(18,'2024-02-01',65000,26000,10000,5000,86000),(18,'2024-03-01',65000,26000,10000,5000,86000),(18,'2024-04-01',65000,26000,10000,5000,86000),(18,'2024-05-01',65000,26000,10000,8000,89000),(18,'2024-06-01',65000,26000,10000,5000,86000),(18,'2024-07-01',65000,26000,10000,5000,86000),(18,'2024-08-01',65000,26000,10000,5000,86000),(18,'2024-09-01',65000,26000,10000,8000,89000),(18,'2024-10-01',65000,26000,10000,5000,86000),(18,'2024-11-01',65000,26000,10000,5000,86000),(18,'2024-12-01',65000,26000,10000,15000,96000),

(19,'2024-01-01',62000,24800,9500,5000,82300),(19,'2024-02-01',62000,24800,9500,5000,82300),(19,'2024-03-01',62000,24800,9500,5000,82300),(19,'2024-04-01',62000,24800,9500,5000,82300),(19,'2024-05-01',62000,24800,9500,7000,84300),(19,'2024-06-01',62000,24800,9500,5000,82300),(19,'2024-07-01',62000,24800,9500,5000,82300),(19,'2024-08-01',62000,24800,9500,5000,82300),(19,'2024-09-01',62000,24800,9500,7000,84300),(19,'2024-10-01',62000,24800,9500,5000,82300),(19,'2024-11-01',62000,24800,9500,5000,82300),(19,'2024-12-01',62000,24800,9500,14000,91300),

(20,'2024-01-01',72000,28800,11000,8000,97800),(20,'2024-02-01',72000,28800,11000,8000,97800),(20,'2024-03-01',72000,28800,11000,8000,97800),(20,'2024-04-01',72000,28800,11000,8000,97800),(20,'2024-05-01',72000,28800,11000,12000,101800),(20,'2024-06-01',72000,28800,11000,8000,97800),(20,'2024-07-01',72000,28800,11000,8000,97800),(20,'2024-08-01',72000,28800,11000,8000,97800),(20,'2024-09-01',72000,28800,11000,12000,101800),(20,'2024-10-01',72000,28800,11000,8000,97800),(20,'2024-11-01',72000,28800,11000,8000,97800),(20,'2024-12-01',72000,28800,11000,22000,111800),

(22,'2024-01-01',60000,24000,9000,5000,80000),(22,'2024-02-01',60000,24000,9000,5000,80000),(22,'2024-03-01',60000,24000,9000,5000,80000),(22,'2024-04-01',60000,24000,9000,5000,80000),(22,'2024-05-01',60000,24000,9000,7000,82000),(22,'2024-06-01',60000,24000,9000,5000,80000),(22,'2024-07-01',60000,24000,9000,5000,80000),(22,'2024-08-01',60000,24000,9000,5000,80000),(22,'2024-09-01',60000,24000,9000,7000,82000),(22,'2024-10-01',60000,24000,9000,5000,80000),(22,'2024-11-01',60000,24000,9000,5000,80000),(22,'2024-12-01',60000,24000,9000,12000,87000),

(23,'2024-01-01',78000,31200,12000,10000,107200),(23,'2024-02-01',78000,31200,12000,10000,107200),(23,'2024-03-01',78000,31200,12000,10000,107200),(23,'2024-04-01',78000,31200,12000,10000,107200),(23,'2024-05-01',78000,31200,12000,14000,111200),(23,'2024-06-01',78000,31200,12000,10000,107200),(23,'2024-07-01',78000,31200,12000,10000,107200),(23,'2024-08-01',78000,31200,12000,10000,107200),(23,'2024-09-01',78000,31200,12000,14000,111200),(23,'2024-10-01',78000,31200,12000,10000,107200),(23,'2024-11-01',78000,31200,12000,10000,107200),(23,'2024-12-01',78000,31200,12000,25000,122200),

(24,'2024-01-01',58000,23200,8800,4500,76900),(24,'2024-02-01',58000,23200,8800,4500,76900),(24,'2024-03-01',58000,23200,8800,4500,76900),(24,'2024-04-01',58000,23200,8800,4500,76900),(24,'2024-05-01',58000,23200,8800,6500,78900),(24,'2024-06-01',58000,23200,8800,4500,76900),(24,'2024-07-01',58000,23200,8800,4500,76900),(24,'2024-08-01',58000,23200,8800,4500,76900),(24,'2024-09-01',58000,23200,8800,6500,78900),(24,'2024-10-01',58000,23200,8800,4500,76900),(24,'2024-11-01',58000,23200,8800,4500,76900),(24,'2024-12-01',58000,23200,8800,13000,85200);

-- HR Executives (emp 26-30)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(26,'2024-01-01',55000,22000,8000,5000,74000),(26,'2024-06-01',55000,22000,8000,8000,77000),(26,'2024-12-01',55000,22000,8000,15000,84000),
(27,'2024-01-01',58000,23200,8500,5500,78200),(27,'2024-06-01',58000,23200,8500,9000,81700),(27,'2024-12-01',58000,23200,8500,16000,88700),
(28,'2024-01-01',52000,20800,7800,4000,69000),(28,'2024-06-01',52000,20800,7800,6000,71000),(28,'2024-12-01',52000,20800,7800,12000,77000),
(29,'2024-01-01',54000,21600,8100,4500,72000),(29,'2024-06-01',54000,21600,8100,7000,74500),(29,'2024-12-01',54000,21600,8100,13000,80500),
(30,'2024-01-01',50000,20000,7500,3500,66000),(30,'2024-06-01',50000,20000,7500,5000,67500),(30,'2024-12-01',50000,20000,7500,10000,72500);

-- Finance Analysts (emp 31-35)
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(31,'2024-01-01',68000,27200,10200,7000,92000),(31,'2024-06-01',68000,27200,10200,11000,96000),(31,'2024-12-01',68000,27200,10200,20000,105000),
(32,'2024-01-01',63000,25200,9450,6000,84750),(32,'2024-06-01',63000,25200,9450,9000,87750),(32,'2024-12-01',63000,25200,9450,17000,95750),
(33,'2024-01-01',70000,28000,10500,7500,95000),(33,'2024-06-01',70000,28000,10500,12000,99500),(33,'2024-12-01',70000,28000,10500,22000,109500),
(34,'2024-01-01',61000,24400,9150,5500,81750),(34,'2024-06-01',61000,24400,9150,8000,84250),(34,'2024-12-01',61000,24400,9150,15000,91250),
(35,'2024-01-01',59000,23600,8850,5000,78750),(35,'2024-06-01',59000,23600,8850,7500,81250),(35,'2024-12-01',59000,23600,8850,14000,87750);

-- Marketing, Sales, Ops, Support, R&D
INSERT INTO payroll (emp_id, month, basic, hra, deductions, bonus, net_salary) VALUES
(36,'2024-01-01',72000,28800,10800,9000,99000),(36,'2024-06-01',72000,28800,10800,14000,104000),(36,'2024-12-01',72000,28800,10800,25000,115000),
(37,'2024-01-01',60000,24000,9000,5000,80000),(37,'2024-06-01',60000,24000,9000,6000,81000),(37,'2024-12-01',60000,24000,9000,10000,85000),
(38,'2024-01-01',62000,24800,9300,5500,83000),(38,'2024-06-01',62000,24800,9300,8000,85500),(38,'2024-12-01',62000,24800,9300,14000,91500),
(39,'2024-01-01',58000,23200,8700,4500,77000),(39,'2024-06-01',58000,23200,8700,7000,79500),(39,'2024-12-01',58000,23200,8700,12000,84500),
(40,'2024-01-01',75000,30000,11250,10000,103750),(40,'2024-06-01',75000,30000,11250,16000,109750),(40,'2024-12-01',75000,30000,11250,28000,121750),
(41,'2024-01-01',80000,32000,12000,12000,112000),(41,'2024-06-01',80000,32000,12000,18000,118000),(41,'2024-12-01',80000,32000,12000,30000,130000),
(42,'2024-01-01',68000,27200,10200,7000,92000),(42,'2024-06-01',68000,27200,10200,10000,95000),(42,'2024-12-01',68000,27200,10200,18000,103000),
(43,'2024-01-01',65000,26000,9750,6500,87750),(43,'2024-06-01',65000,26000,9750,10000,91250),(43,'2024-12-01',65000,26000,9750,16000,97250),
(44,'2024-01-01',62000,24800,9300,5500,83000),(44,'2024-06-01',62000,24800,9300,7500,85000),(44,'2024-12-01',62000,24800,9300,13000,90500),
(45,'2024-01-01',60000,24000,9000,5000,80000),(45,'2024-06-01',60000,24000,9000,7000,82000),(45,'2024-12-01',60000,24000,9000,12000,87000),
(46,'2024-01-01',64000,25600,9600,6000,86000),(46,'2024-06-01',64000,25600,9600,9000,89000),(46,'2024-12-01',64000,25600,9600,16000,96000),
(47,'2024-01-01',61000,24400,9150,5500,81750),(47,'2024-06-01',61000,24400,9150,8000,84250),(47,'2024-12-01',61000,24400,9150,14000,90250),
(48,'2024-01-01',63000,25200,9450,6000,84750),(48,'2024-06-01',63000,25200,9450,9000,87750),(48,'2024-12-01',63000,25200,9450,16000,95750),
(49,'2024-01-01',59000,23600,8850,5000,78750),(49,'2024-06-01',59000,23600,8850,7000,80750),(49,'2024-12-01',59000,23600,8850,13000,86750),
(50,'2024-01-01',48000,19200,7200,3500,63500),(50,'2024-06-01',48000,19200,7200,5000,65000),(50,'2024-12-01',48000,19200,7200,9000,69000),
(51,'2024-01-01',52000,20800,7800,4500,69500),(51,'2024-06-01',52000,20800,7800,7000,72000),(51,'2024-12-01',52000,20800,7800,12000,77000),
(52,'2024-01-01',49000,19600,7350,3800,65050),(52,'2024-06-01',49000,19600,7350,5500,66750),(52,'2024-12-01',49000,19600,7350,10000,71250),
(53,'2024-01-01',50000,20000,7500,4000,66500),(53,'2024-06-01',50000,20000,7500,6000,68500),(53,'2024-12-01',50000,20000,7500,11000,73500),
(54,'2024-01-01',90000,36000,13500,12000,124500),(54,'2024-06-01',90000,36000,13500,18000,130500),(54,'2024-12-01',90000,36000,13500,30000,142500),
(55,'2024-01-01',88000,35200,13200,11500,121500),(55,'2024-06-01',88000,35200,13200,17000,127000),(55,'2024-12-01',88000,35200,13200,28000,138000),
(56,'2024-01-01',82000,32800,12300,10000,112500),(56,'2024-06-01',82000,32800,12300,14000,116500),(56,'2024-12-01',82000,32800,12300,22000,124500),
(57,'2024-01-01',68000,27200,10200,7000,92000),(57,'2024-06-01',68000,27200,10200,10000,95000),(57,'2024-12-01',68000,27200,10200,16000,101000),
(58,'2024-01-01',65000,26000,9750,6000,87250),(58,'2024-06-01',65000,26000,9750,8000,89250),(58,'2024-12-01',65000,26000,9750,14000,95250),
(59,'2024-01-01',60000,24000,9000,5000,80000),(59,'2024-06-01',60000,24000,9000,7000,82000),(59,'2024-12-01',60000,24000,9000,12000,87000),
(60,'2024-01-01',58000,23200,8700,4500,78000),(60,'2024-06-01',58000,23200,8700,6500,79000),(60,'2024-12-01',58000,23200,8700,11000,83500);

-- ─────────────────────────────────────────────
-- 9. EXITS (10 rows)
--    emp 18 fired (poor performance), others resigned/retired
-- ─────────────────────────────────────────────
INSERT INTO exits (emp_id, exit_date, reason, approval_status) VALUES
(18,'2024-11-30','Terminated due to sustained poor performance and PIP failure','completed'),
(22,'2024-10-31','Resignation – accepted offer at competitor','completed'),
(37,'2024-12-15','Resignation – career break','pending'),
(30,'2024-12-31','Resignation – relocation','completed'),
(50,'2024-09-30','Contract end – not renewed','completed'),
(28,'2024-11-15','Resignation – better opportunity','pending'),
(39,'2024-12-20','Resignation – startup founder','failed'),
(47,'2025-01-31','Early retirement','pending'),
(34,'2025-02-28','Resignation – higher studies','pending'),
(58,'2024-12-31','Resignation – family reasons','completed');