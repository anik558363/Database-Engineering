/*


View কী?
=> Virtual Table, jata modeay aschol data thkeay na. boronge akteay select query save kora raka hoi.


View- ar bora sobe da
- query oneak boro
- left, right joing, relationship
- data heavy
- data formate



*/


CREATE TABLE employees(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT
)


INSERT INTO employees (name, department, salary)
VALUES
('Rabbi', 'IT', 60000),
('Karim', 'HR', 40000),
('Rahim', 'IT', 70000),
('Hasan', 'Sales', 50000);

SELECT name,salary FROM employees WHERE department = 'IT';


CREATE VIEW it_employees AS
SELECT name,salary FROM employees WHERE department = 'IT';


SELECT * FROM employees;


SELECT * FROM it_employees


CREATE OR REPLACE VIEW it_employees AS
SELECT name,salary,department,id FROM employees WHERE department = 'HR';

---> udate ---> col add --> end



CREATE OR REPLACE VIEW it_employees AS
SELECT id ,name, department, salary FROM employees WHERE department = 'HR';

---> udate ---> col add --> end

DROP View it_employees;