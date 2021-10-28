#SQL HW3

# https://drawsql.app/group_22/diagrams/hw3
![drawSQL-export-2021-10-29_00_43](https://user-images.githubusercontent.com/90832725/139316519-6dbaabc8-7b85-40cc-b1ef-d621f44c55be.png)

```sh --1. Создайте базу из представленной картинки.

--  - У каждой таблицы должно быть поле id

--  - id автоинкрементальный и является первичным ключом
```
--- 
CREATE TABLE salary (id serial PRIMARY KEY, monthly_salary int NOT NULL);

CREATE TABLE roles (id serial PRIMARY KEY, role_title varchar (60) UNIQUE NOT NULL);

CREATE TABLE roles_salary (id serial PRIMARY KEY, id_role int NOT NULL, id_salary int NOT NULL,
FOREIGN KEY (id_role)
REFERENCES roles (id),
FOREIGN KEY (id_salary)
REFERENCES salary (id) );

CREATE TABLE employees (id serial PRIMARY KEY, employee_name varchar (60) NOT NULL);

CREATE TABLE employees_roles (id serial PRIMARY KEY, id_role int NOT NULL, id_employee int NOT NULL,
FOREIGN KEY (id_role)
REFERENCES roles (id),
FOREIGN KEY (id_employee)
REFERENCES employees (id) );

CREATE TABLE Service (id serial PRIMARY KEY, service_title varchar (60) UNIQUE NOT NULL,
price int NOT Null );

CREATE TABLE materials (
id serial PRIMARY KEY,
material_title varchar (60) UNIQUE NOT NULL, amount int NOT NULL, price int NOT NULL );

CREATE TABLE claim (id serial PRIMARY KEY, service_id int NOT NULL, employee_id int NOT NULL,
material_id int NOT NULL, claim_date date NOT NULL, sales_manager int NOT NULL,
FOREIGN KEY (service_id) REFERENCES service (id),
FOREIGN KEY (employee_id) REFERENCES employees (id),
FOREIGN KEY (material_id) REFERENCES materials (id),
FOREIGN KEY (sales_manager)REFERENCES employees (id) );


---



![DBeaver 21 2 3 - public 2021-10-29 01-09-40](https://user-images.githubusercontent.com/90832725/139320263-34d04436-418d-497b-a1fe-9b71281814f8.png)
