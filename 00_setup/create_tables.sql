
CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id    NUMBER PRIMARY KEY,
    first_name     VARCHAR2(50) NOT NULL,
    last_name      VARCHAR2(50) NOT NULL,
    hire_date      DATE NOT NULL,
    salary         NUMBER(10,2), 
    department_id  NUMBER REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (1, 'Finance');
INSERT INTO departments VALUES (2, 'IT');
INSERT INTO departments VALUES (3, 'Human Resources');
INSERT INTO departments VALUES (4, 'Sales');

INSERT INTO employees VALUES (1, 'Eric',      'Niyonzima',  DATE '2018-03-14', 4200, 2);
INSERT INTO employees VALUES (2, 'Aline',     'Uwase',      DATE '2020-07-01', 3100, 1);
INSERT INTO employees VALUES (3, 'John',      'Mugisha',    DATE '2015-01-20', 6200, 2);
INSERT INTO employees VALUES (4, 'Grace',     'Ingabire',   DATE '2022-11-05', 2500, 3);
INSERT INTO employees VALUES (5, 'Patrick',   'Habimana',   DATE '2019-05-30', 5400, 4);
INSERT INTO employees VALUES (6, 'Sandrine',  'Mukamana',   DATE '2021-09-12', 3900, 1);
INSERT INTO employees VALUES (7, 'David',     'Byiringiro', DATE '2016-02-18', 7100, 2);
INSERT INTO employees VALUES (8, 'Claudine',  'Umutoni',    DATE '2023-04-03', 2800, 4);


INSERT INTO employees VALUES (9,  'NoSalary', 'TestCase', DATE '2020-01-01', NULL, 1);
INSERT INTO employees VALUES (10, 'NoDept',   'TestCase', DATE '2020-01-01', 3000, NULL);

COMMIT;

