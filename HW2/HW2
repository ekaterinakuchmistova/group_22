 --1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employee_name, monthly_salary 
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id;
--2. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employee_name, monthly_salary 
FROM employees
JOIN employees_salary
ON employees.id = employees_salary.employee_id 
WHERE monthly_salary < 2000;
--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT employee_name, monthly_salary 
FROM employees
RIGHT JOIN employees_salary
ON employees.id = employees_salary.employee_id 
WHERE monthly_salary IS NULL;
--4. Вывести все зарплатные позиции  меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT employee_name, monthly_salary 
FROM employees
RIGHT JOIN  employees_salary
ON employees.id = employees_salary.employee_id
WHERE employee_name IS NULL
AND monthly_salary < 2000;
--5. Найти всех работников кому не начислена ЗП.
SELECT employee_name, monthly_salary 
FROM employees
LEFT JOIN  employees_salary
ON employees.id = employees_salary.employee_id
WHERE monthly_salary IS NULL;
--6. Вывести всех работников с названиями их должности.
SELECT employee_name, role_name
from roles_employees
full JOIN employees
on roles_employees.employee_id = employees.id
left JOIN roles
ON role_id = roles.id;
-- 7. Вывести имена и должность только Java разработчиков.
SELECT employee_name, role_name
from roles_employees
JOIN employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Java %';
--8. Вывести имена и должность только Python разработчиков.
SELECT employee_name, role_name
from roles_employees
join employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Python%';
--9. Вывести имена и должность всех QA инженеров.
SELECT employee_name, role_name
from roles_employees
JOIN employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%QA%';
-- 10. Вывести имена и должность ручных QA инженеров.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Manual QA%';
--11. Вывести имена и должность автоматизаторов QA.
SELECT employee_name, role_name
FROM roles_employees
JOIN employees
ON roles_employees.employee_id = employees.id
JOIN roles
ON role_id = roles.id
WHERE role_name LIKE '%Automation QA%';
-- 12. Вывести имена и зарплаты Junior специалистов
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id 
where role_name like '%Junior%';
 --13. Вывести имена и зарплаты Middle специалистов
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id 
where role_name like '%Middle%';
 --14. Вывести имена и зарплаты Senior специалистов
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id 
where role_name like '%Senior%';
 --15. Вывести зарплаты Java разработчиков
SELECT monthly_salary, role_name
from employees
JOIN employees_salary
on employees_salary.employee_id = employees.id
JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Java %';
 --16. Вывести зарплаты Python разработчиков
SELECT monthly_salary, role_name
from employees
JOIN employees_salary
on employees_salary.employee_id = employees.id
JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Python%';
-- 17. Вывести имена и зарплаты Junior Python разработчиков
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%Junior Python%';
 --18. Вывести имена и зарплаты Middle JS разработчиков
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%Middle JavaS%';
 --19. Вывести имена и зарплаты Senior Java разработчиков
SELECT employee_name, monthly_salary
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%Senior%' and role_name like'%Java %';
 --20. Вывести зарплаты Junior QA инженеров
select monthly_salary
from employees
JOIN employees_salary
on employees_salary.employee_id = employees.id
JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Junior%' and role_name like'%QA%';
 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from employees
JOIN employees_salary
on employees_salary.employee_id = employees.id
JOIN roles_employees
on roles_employees.employee_id = employees.id
JOIN roles
on role_id = roles.id
where role_name like '%Junior%';
 --22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%JavaS%';
 --23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';
 --24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)
from employees, employees_salary, roles_employees, roles
where employees_salary.employee_id = employees.id
and roles_employees.employee_id = employees.id
and role_id = roles.id
and role_name like '%QA%';
 --25. Вывести количество QA инженеров
select count(employee_name)
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%QA%';
 --26. Вывести количество Middle специалистов.
select count(employee_name)
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%Middle%';
-- 27. Вывести количество разработчиков
select count(employee_name)
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%developer%';
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employees
full JOIN employees_salary
on employees_salary.employee_id = employees.id
full JOIN roles_employees
on roles_employees.employee_id = employees.id
full JOIN roles
on role_id = roles.id
where role_name like '%developer%';
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary
from employees
left JOIN employees_salary
on employees_salary.employee_id = employees.id
left JOIN roles_employees
on roles_employees.employee_id = employees.id
left JOIN roles
on role_id = roles.id
-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary
from employees
left JOIN employees_salary
on employees_salary.employee_id = employees.id
left JOIN roles_employees
on roles_employees.employee_id = employees.id
left JOIN roles
on role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary
from employees
left JOIN employees_salary
on employees_salary.employee_id = employees.id
left JOIN roles_employees
on roles_employees.employee_id = employees.id
left JOIN roles
on role_id = roles.id
where monthly_salary < 2300
order by monthly_salary;
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees
left JOIN employees_salary
on employees_salary.employee_id = employees.id
left JOIN roles_employees
on roles_employees.employee_id = employees.id
left JOIN roles
on role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
