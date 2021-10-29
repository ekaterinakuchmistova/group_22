 INSERT INTO salary (monthly_salary) VALUES (300);
INSERT INTO salary (monthly_salary) VALUES (350);
INSERT INTO salary (monthly_salary) VALUES (400);
INSERT INTO salary (monthly_salary) VALUES (500);
INSERT INTO salary (monthly_salary) VALUES (900);
INSERT INTO salary (monthly_salary) VALUES (1000);
INSERT INTO salary (monthly_salary) VALUES (1200);
INSERT INTO salary (monthly_salary) VALUES (1500);
INSERT INTO salary (monthly_salary) VALUES (2000);
INSERT INTO salary (monthly_salary) VALUES (2500);
INSERT INTO salary (monthly_salary) VALUES (2700);
INSERT INTO salary (monthly_salary) VALUES (3000);

SELECT * FROM salary;

INSERT INTO roles (role_title) VALUES ('Project Manager');
INSERT INTO roles (role_title) VALUES ('Product Manager');
INSERT INTO roles (role_title) VALUES ('Business Analyst');
INSERT INTO roles (role_title) VALUES ('System Analyst');
INSERT INTO roles (role_title) VALUES ('Team Lead');
INSERT INTO roles (role_title) VALUES ('Front-End Developer');
INSERT INTO roles (role_title) VALUES ('Back-End Developer');
INSERT INTO roles (role_title) VALUES ('QA Engineer');
INSERT INTO roles (role_title) VALUES ('Tester');
INSERT INTO roles (role_title) VALUES ('HR');

SELECT * FROM roles ;


INSERT INTO roles_salary (id_role, id_salary) VALUES ( 1, 10);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 2, 9);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 3, 8);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 4, 7);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 5, 6);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 6, 5);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 7, 4);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 8, 3);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 9, 2);
INSERT INTO roles_salary (id_role, id_salary) VALUES ( 10, 1);

SELECT * FROM roles_salary;

INSERT INTO employees (employee_name) VALUES ('Adam Snow','Melany Leem', 'Annetta Green', 'Mark Lourence', 
'Melaney Brown', 'Kevin Manster', 'Alexander Longda', 'Brad Raymond', 'Svetlana Tsoy','Rosy Callingster'
);

INSERT INTO employees (employee_name, surname) VALUES ('Adam', 'Snow');
INSERT INTO employees (employee_name, surname VALUES ('Melany', 'Leem');
INSERT INTO employees (employee_name, surname) VALUES ('Annetta' ,'Green');
INSERT INTO employees (employee_name, surname) VALUES ('Mark', 'Lourence');
INSERT INTO employees (employee_name, surname) VALUES ('Melaney', 'Brown');
INSERT INTO employees (employee_name, surname) VALUES ('Kevin', 'Manster');
INSERT INTO employees (employee_name, surname) VALUES('Alexander ', 'Longda');
INSERT INTO employees (employee_name, surname) VALUES ('Brad', 'Raymond');
INSERT INTO employees (employee_name, surname) VALUES ('Svetlana ', 'Tsoy');
INSERT INTO employees (employee_name, surname) VALUES ('Rosy', 'Callingster');
INSERT INTO employees ( employee_name, surname) VALUES ('Lana', 'Del Rey');

SELECT * FROM employees; 

INSERT INTO employees_roles (id_role, id_employee) VALUES (1, 15);
INSERT INTO employees_roles (id_role, id_employee) VALUES (2, 14);
INSERT INTO employees_roles (id_role, id_employee) VALUES (3, 13);
INSERT INTO employees_roles (id_role, id_employee) VALUES (4, 12);
INSERT INTO employees_roles (id_role, id_employee) VALUES (5, 13);
INSERT INTO employees_roles (id_role, id_employee) VALUES (6, 14);
INSERT INTO employees_roles (id_role, id_employee) VALUES (7, 15);
INSERT INTO employees_roles (id_role, id_employee) VALUES (8, 15);
INSERT INTO employees_roles (id_role, id_employee) VALUES (9, 11);
INSERT INTO employees_roles (id_role, id_employee) VALUES (10, 9);
INSERT INTO employees_roles (id_role, id_employee) VALUES (11, 8);
INSERT INTO employees_roles (id_role, id_employee) VALUES (12, 7);
INSERT INTO employees_roles (id_role, id_employee) VALUES (13, 6);
INSERT INTO employees_roles (id_role, id_employee) VALUES (14, 5);
INSERT INTO employees_roles (id_role, id_employee) VALUES (15, 1);
INSERT INTO employees_roles (id_role, id_employee) VALUES (1, 1);
INSERT INTO employees_roles (id_role, id_employee) VALUES (2, 3);
INSERT INTO employees_roles (id_role, id_employee) VALUES (3, 4);
INSERT INTO employees_roles (id_role, id_employee) VALUES (2, 5);

INSERT INTO service (service_title, price) VALUES ('Evernote', 50000);
INSERT INTO service (service_title, price) VALUES ('Artificial intelligence,', 1200000);
INSERT INTO service (service_title, price) VALUES ('Native mobile applications', 50000);
INSERT INTO service (service_title, price) VALUES ('Server Software', 170000);
INSERT INTO service (service_title, price) VALUES ('Website', 10000);
INSERT INTO service (service_title, price) VALUES ('Mobile App', 10000);
INSERT INTO service (service_title, price) VALUES ('Android', 40000);
INSERT INTO service (service_title, price) VALUES ('IOS', 13500);
INSERT INTO service (service_title, price) VALUES ('Design', 40000);
INSERT INTO service (service_title, price) VALUES ('Analysis', 5000);
SELECT * FROM service; 

INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Router', 1, 100);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'MacBook', 15, 2500);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Computer Bag', 9, 150);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Charge', 20, 200);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Lenovo', 30, 900);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Samsung', 10, 1050);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Dell', 10, 150);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Poco', 11, 400);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Hewlett', 60, 650);
INSERT INTO materials (id, material_title, amount, price)
VALUES (DEFAULT, 'Msi', 17, 500);
--SELECT * FROM materials;

INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 1, 2, 3, CURRENT_TIMESTAMP, 6);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 2, 3, 4, CURRENT_TIMESTAMP, 7);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 3, 4, 5, CURRENT_TIMESTAMP, 8);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 4, 5, 6, CURRENT_TIMESTAMP, 10);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 5, 6, 7, CURRENT_TIMESTAMP, 11);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 6, 7, 8, CURRENT_TIMESTAMP, 12);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 7, 8, 9, CURRENT_TIMESTAMP, 13);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 8, 9, 10, CURRENT_TIMESTAMP, 15);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 9, 10, 1, CURRENT_TIMESTAMP, 17);
INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager)
VALUES (DEFAULT, 10, 1, 2, CURRENT_TIMESTAMP, 21);
--SELECT * FROM claim;

INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT1');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT2');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT3');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT4');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT5');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT6');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT7');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT8');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT9');
INSERT INTO suppliers (id, supplier_name)
VALUES (DEFAULT, 'TT10');
--SELECT * FROM suppliers;


SELECT role_title, employee_name, service_title, material_title
FROM salary s
JOIN roles_salary rs ON s.id = id_salary
JOIN roles r ON r.id = rs.id_role 
JOIN employees_roles er ON r.id = er.id_role 
JOIN employees e ON e.id = id_employee
JOIN claim c ON e.id = employee_id OR e.id = sales_manager
JOIN service s2 ON s2.id = service_id
JOIN materials m ON m.id = material_id
